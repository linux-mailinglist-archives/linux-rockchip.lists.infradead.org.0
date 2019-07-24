Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F3B173519
	for <lists+linux-rockchip@lfdr.de>; Wed, 24 Jul 2019 19:19:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vOvDvZabB5Kof94eKevZ1xG67bv1haRnBsKd+Z/hr4Q=; b=SdLSds267oSAZa
	+XVyhnrHOjn4S/Xe/a9vTuyLjpCgxbxOPTBGoQjRQ9cueJ/JY3cAtiujLwvI+G2P3a5eOg5Bxa/6W
	Dwte/LLbViB28zU0ogO8NmHahxw+oGZQc8QreJx12Wpfwd8g2iQX9JTm+5lZmutlZlbdb7KLETXkq
	Hkc8ESEkNLBARGIRa6kw1r/9IEh4UoLJT+yExedPqrI8sF2Cg46tbfYwZrYPF1dMeoY2CuOFXtgu1
	F6xLwpcyf0fjgL4j7r5HIBlBemq1gABZwmROimg+MDFSWlZkGAbX7gaCzfK8Ero9jKCkMnvyh6oao
	bnLQOEkvYKJBPVfFffHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqKut-0007CT-Eu; Wed, 24 Jul 2019 17:19:03 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqKtR-000486-8e
 for linux-rockchip@lists.infradead.org; Wed, 24 Jul 2019 17:17:35 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 3DCAD28B605
From: Ezequiel Garcia <ezequiel@collabora.com>
To: linux-media@vger.kernel.org,
	Hans Verkuil <hans.verkuil@cisco.com>
Subject: [PATCH 4/7] media: hantro: Add hantro_get_{src,dst}_buf() helpers
Date: Wed, 24 Jul 2019 14:16:59 -0300
Message-Id: <20190724171702.9449-5-ezequiel@collabora.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190724171702.9449-1-ezequiel@collabora.com>
References: <20190724171702.9449-1-ezequiel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_101734_437625_98460F47 
X-CRM114-Status: UNSURE (   8.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: fbuergisser@chromium.org, Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Heiko Stuebner <heiko@sntech.de>, Alexandre Courbot <acourbot@chromium.org>,
 Jonas Karlman <jonas@kwiboo.se>, linux-kernel@vger.kernel.org,
 Tomasz Figa <tfiga@chromium.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, kernel@collabora.com,
 Ezequiel Garcia <ezequiel@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

From: Boris Brezillon <boris.brezillon@collabora.com>

And replace all calls to v4l2_m2m_next_{src,dst}_buf() by
hantro_get_{src,dst}_buf() one.

Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
---
 drivers/staging/media/hantro/hantro.h               | 13 +++++++++++++
 drivers/staging/media/hantro/hantro_g1_mpeg2_dec.c  |  4 ++--
 drivers/staging/media/hantro/hantro_g1_vp8_dec.c    |  8 ++++----
 drivers/staging/media/hantro/hantro_h1_jpeg_enc.c   |  4 ++--
 .../staging/media/hantro/rk3399_vpu_hw_jpeg_enc.c   |  4 ++--
 .../staging/media/hantro/rk3399_vpu_hw_mpeg2_dec.c  |  4 ++--
 6 files changed, 25 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/media/hantro/hantro.h b/drivers/staging/media/hantro/hantro.h
index 81e25dfc98b7..c4c86c32ea2d 100644
--- a/drivers/staging/media/hantro/hantro.h
+++ b/drivers/staging/media/hantro/hantro.h
@@ -20,6 +20,7 @@
 #include <media/v4l2-ctrls.h>
 #include <media/v4l2-device.h>
 #include <media/v4l2-ioctl.h>
+#include <media/v4l2-mem2mem.h>
 #include <media/videobuf2-core.h>
 #include <media/videobuf2-dma-contig.h>
 
@@ -373,4 +374,16 @@ bool hantro_is_encoder_ctx(const struct hantro_ctx *ctx);
 void *hantro_get_ctrl(struct hantro_ctx *ctx, u32 id);
 dma_addr_t hantro_get_ref(struct vb2_queue *q, u64 ts);
 
+static inline struct vb2_v4l2_buffer *
+hantro_get_src_buf(struct hantro_ctx *ctx)
+{
+	return v4l2_m2m_next_src_buf(ctx->fh.m2m_ctx);
+}
+
+static inline struct vb2_v4l2_buffer *
+hantro_get_dst_buf(struct hantro_ctx *ctx)
+{
+	return v4l2_m2m_next_dst_buf(ctx->fh.m2m_ctx);
+}
+
 #endif /* HANTRO_H_ */
diff --git a/drivers/staging/media/hantro/hantro_g1_mpeg2_dec.c b/drivers/staging/media/hantro/hantro_g1_mpeg2_dec.c
index e592c1b66375..55f861e96108 100644
--- a/drivers/staging/media/hantro/hantro_g1_mpeg2_dec.c
+++ b/drivers/staging/media/hantro/hantro_g1_mpeg2_dec.c
@@ -167,8 +167,8 @@ void hantro_g1_mpeg2_dec_run(struct hantro_ctx *ctx)
 	const struct v4l2_mpeg2_picture *picture;
 	u32 reg;
 
-	src_buf = v4l2_m2m_next_src_buf(ctx->fh.m2m_ctx);
-	dst_buf = v4l2_m2m_next_dst_buf(ctx->fh.m2m_ctx);
+	src_buf = hantro_get_src_buf(ctx);
+	dst_buf = hantro_get_dst_buf(ctx);
 
 	/* Apply request controls if any */
 	v4l2_ctrl_request_setup(src_buf->vb2_buf.req_obj.req,
diff --git a/drivers/staging/media/hantro/hantro_g1_vp8_dec.c b/drivers/staging/media/hantro/hantro_g1_vp8_dec.c
index 72d983a11ca1..6032cbbecb06 100644
--- a/drivers/staging/media/hantro/hantro_g1_vp8_dec.c
+++ b/drivers/staging/media/hantro/hantro_g1_vp8_dec.c
@@ -260,7 +260,7 @@ static void cfg_parts(struct hantro_ctx *ctx,
 	u32 count = 0;
 	unsigned int i;
 
-	vb2_src = v4l2_m2m_next_src_buf(ctx->fh.m2m_ctx);
+	vb2_src = hantro_get_src_buf(ctx);
 	src_dma = vb2_dma_contig_plane_dma_addr(&vb2_src->vb2_buf, 0);
 
 	/*
@@ -391,7 +391,7 @@ static void cfg_ref(struct hantro_ctx *ctx,
 	struct vb2_v4l2_buffer *vb2_dst;
 	dma_addr_t ref;
 
-	vb2_dst = v4l2_m2m_next_dst_buf(ctx->fh.m2m_ctx);
+	vb2_dst = hantro_get_dst_buf(ctx);
 
 	ref = hantro_get_ref(cap_q, hdr->last_frame_ts);
 	if (!ref)
@@ -424,7 +424,7 @@ static void cfg_buffers(struct hantro_ctx *ctx,
 	dma_addr_t dst_dma;
 	u32 reg;
 
-	vb2_dst = v4l2_m2m_next_dst_buf(ctx->fh.m2m_ctx);
+	vb2_dst = hantro_get_dst_buf(ctx);
 
 	/* Set probability table buffer address */
 	vdpu_write_relaxed(vpu, ctx->vp8_dec.prob_tbl.dma,
@@ -453,7 +453,7 @@ void hantro_g1_vp8_dec_run(struct hantro_ctx *ctx)
 	u32 mb_width, mb_height;
 	u32 reg;
 
-	vb2_src = v4l2_m2m_next_src_buf(ctx->fh.m2m_ctx);
+	vb2_src = hantro_get_src_buf(ctx);
 	v4l2_ctrl_request_setup(vb2_src->vb2_buf.req_obj.req,
 				&ctx->ctrl_handler);
 
diff --git a/drivers/staging/media/hantro/hantro_h1_jpeg_enc.c b/drivers/staging/media/hantro/hantro_h1_jpeg_enc.c
index 0c1e3043dc7e..f5adb5cbde50 100644
--- a/drivers/staging/media/hantro/hantro_h1_jpeg_enc.c
+++ b/drivers/staging/media/hantro/hantro_h1_jpeg_enc.c
@@ -84,8 +84,8 @@ void hantro_h1_jpeg_enc_run(struct hantro_ctx *ctx)
 	struct hantro_jpeg_ctx jpeg_ctx;
 	u32 reg;
 
-	src_buf = v4l2_m2m_next_src_buf(ctx->fh.m2m_ctx);
-	dst_buf = v4l2_m2m_next_dst_buf(ctx->fh.m2m_ctx);
+	src_buf = hantro_get_src_buf(ctx);
+	dst_buf = hantro_get_dst_buf(ctx);
 
 	memset(&jpeg_ctx, 0, sizeof(jpeg_ctx));
 	jpeg_ctx.buffer = vb2_plane_vaddr(&dst_buf->vb2_buf, 0);
diff --git a/drivers/staging/media/hantro/rk3399_vpu_hw_jpeg_enc.c b/drivers/staging/media/hantro/rk3399_vpu_hw_jpeg_enc.c
index ae66354d2d93..82c5af822766 100644
--- a/drivers/staging/media/hantro/rk3399_vpu_hw_jpeg_enc.c
+++ b/drivers/staging/media/hantro/rk3399_vpu_hw_jpeg_enc.c
@@ -116,8 +116,8 @@ void rk3399_vpu_jpeg_enc_run(struct hantro_ctx *ctx)
 	struct media_request *src_req;
 	u32 reg;
 
-	src_buf = v4l2_m2m_next_src_buf(ctx->fh.m2m_ctx);
-	dst_buf = v4l2_m2m_next_dst_buf(ctx->fh.m2m_ctx);
+	src_buf = hantro_get_src_buf(ctx);
+	dst_buf = hantro_get_dst_buf(ctx);
 
 	src_req = src_buf->vb2_buf.req_obj.req;
 	v4l2_ctrl_request_setup(src_req, &ctx->ctrl_handler);
diff --git a/drivers/staging/media/hantro/rk3399_vpu_hw_mpeg2_dec.c b/drivers/staging/media/hantro/rk3399_vpu_hw_mpeg2_dec.c
index 8685bddfbcab..451bfcceadba 100644
--- a/drivers/staging/media/hantro/rk3399_vpu_hw_mpeg2_dec.c
+++ b/drivers/staging/media/hantro/rk3399_vpu_hw_mpeg2_dec.c
@@ -169,8 +169,8 @@ void rk3399_vpu_mpeg2_dec_run(struct hantro_ctx *ctx)
 	const struct v4l2_mpeg2_picture *picture;
 	u32 reg;
 
-	src_buf = v4l2_m2m_next_src_buf(ctx->fh.m2m_ctx);
-	dst_buf = v4l2_m2m_next_dst_buf(ctx->fh.m2m_ctx);
+	src_buf = hantro_get_src_buf(ctx);
+	dst_buf = hantro_get_dst_buf(ctx);
 
 	/* Apply request controls if any */
 	v4l2_ctrl_request_setup(src_buf->vb2_buf.req_obj.req,
-- 
2.22.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

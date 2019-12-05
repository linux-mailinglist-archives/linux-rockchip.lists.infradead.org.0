Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5744511429E
	for <lists+linux-rockchip@lfdr.de>; Thu,  5 Dec 2019 15:25:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9Q7575w3EkhPgUOcIAGc8JePSyWiIcYinwQlZkWGKFk=; b=I98FMeiKPvszrk
	nTPRL+k+HOBLWeSF1pB9mB9row58Pt5YAYdYOTGYFabzyaW1yvNS5lTYEuwjo5b2B1WwPLVPISQnH
	KA4rsK24ezX1lvbpt3E3iT1p5i4PNHF+a6ShXp81uYXK7wE/K83SeeE8FZ0kdZd/twXfl9lzcx07N
	Qla/fn0YuNdD2g9h6pWC5hWPQ5uGZZ4KpdBn4dO9hMRCaMcYJMYg8YRJYChi7qrS6QFl/lqcp9Wwe
	AQYycSKky3RqQk7/mjNc4mOzjE2IheXaQVQYHR5lJiwyJNkCG6nDMqWdsq0vQo6GF7QP/4MMWNKlG
	yFEKbP0vzteL/8wp9esQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ics4R-0003s1-Gt; Thu, 05 Dec 2019 14:25:31 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ics4N-0003nk-Et
 for linux-rockchip@lists.infradead.org; Thu, 05 Dec 2019 14:25:29 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 2314A292243
From: Ezequiel Garcia <ezequiel@collabora.com>
To: linux-media@vger.kernel.org
Subject: [PATCH v4 3/4] hantro: Rename {prepare, finish}_run to {start,
 end}_prepare_run
Date: Thu,  5 Dec 2019 11:24:42 -0300
Message-Id: <20191205142443.1298-4-ezequiel@collabora.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20191205142443.1298-1-ezequiel@collabora.com>
References: <20191205142443.1298-1-ezequiel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_062527_772693_05E01C6D 
X-CRM114-Status: UNSURE (   8.62  )
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
Cc: Heiko Stuebner <heiko@sntech.de>, Jonas Karlman <jonas@kwiboo.se>,
 linux-kernel@vger.kernel.org, Tomasz Figa <tfiga@chromium.org>,
 linux-rockchip@lists.infradead.org,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, kernel@collabora.com,
 Ezequiel Garcia <ezequiel@collabora.com>, Chris Healy <cphealy@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

hantro_prepare_run() and hantro_finish_run() are
slightly misleading, so let's rename it to something
a bit more clear.

Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
---
 drivers/staging/media/hantro/hantro_drv.c              | 4 ++--
 drivers/staging/media/hantro/hantro_g1_h264_dec.c      | 2 +-
 drivers/staging/media/hantro/hantro_g1_mpeg2_dec.c     | 4 ++--
 drivers/staging/media/hantro/hantro_g1_vp8_dec.c       | 4 ++--
 drivers/staging/media/hantro/hantro_h1_jpeg_enc.c      | 4 ++--
 drivers/staging/media/hantro/hantro_h264.c             | 2 +-
 drivers/staging/media/hantro/hantro_hw.h               | 4 ++--
 drivers/staging/media/hantro/rk3399_vpu_hw_jpeg_enc.c  | 4 ++--
 drivers/staging/media/hantro/rk3399_vpu_hw_mpeg2_dec.c | 4 ++--
 drivers/staging/media/hantro/rk3399_vpu_hw_vp8_dec.c   | 4 ++--
 10 files changed, 18 insertions(+), 18 deletions(-)

diff --git a/drivers/staging/media/hantro/hantro_drv.c b/drivers/staging/media/hantro/hantro_drv.c
index 26108c96b674..974ac0a11dd1 100644
--- a/drivers/staging/media/hantro/hantro_drv.c
+++ b/drivers/staging/media/hantro/hantro_drv.c
@@ -152,7 +152,7 @@ void hantro_watchdog(struct work_struct *work)
 	}
 }
 
-void hantro_prepare_run(struct hantro_ctx *ctx)
+void hantro_start_prepare_run(struct hantro_ctx *ctx)
 {
 	struct vb2_v4l2_buffer *src_buf;
 
@@ -161,7 +161,7 @@ void hantro_prepare_run(struct hantro_ctx *ctx)
 				&ctx->ctrl_handler);
 }
 
-void hantro_finish_run(struct hantro_ctx *ctx)
+void hantro_end_prepare_run(struct hantro_ctx *ctx)
 {
 	struct vb2_v4l2_buffer *src_buf;
 
diff --git a/drivers/staging/media/hantro/hantro_g1_h264_dec.c b/drivers/staging/media/hantro/hantro_g1_h264_dec.c
index 3cd40a8f0daa..887dc5210447 100644
--- a/drivers/staging/media/hantro/hantro_g1_h264_dec.c
+++ b/drivers/staging/media/hantro/hantro_g1_h264_dec.c
@@ -288,7 +288,7 @@ void hantro_g1_h264_dec_run(struct hantro_ctx *ctx)
 	set_ref(ctx);
 	set_buffers(ctx);
 
-	hantro_finish_run(ctx);
+	hantro_end_prepare_run(ctx);
 
 	/* Start decoding! */
 	vdpu_write_relaxed(vpu,
diff --git a/drivers/staging/media/hantro/hantro_g1_mpeg2_dec.c b/drivers/staging/media/hantro/hantro_g1_mpeg2_dec.c
index f3bf67d8a289..d6dde70f20b4 100644
--- a/drivers/staging/media/hantro/hantro_g1_mpeg2_dec.c
+++ b/drivers/staging/media/hantro/hantro_g1_mpeg2_dec.c
@@ -168,7 +168,7 @@ void hantro_g1_mpeg2_dec_run(struct hantro_ctx *ctx)
 	dst_buf = hantro_get_dst_buf(ctx);
 
 	/* Apply request controls if any */
-	hantro_prepare_run(ctx);
+	hantro_start_prepare_run(ctx);
 
 	slice_params = hantro_get_ctrl(ctx,
 				       V4L2_CID_MPEG_VIDEO_MPEG2_SLICE_PARAMS);
@@ -244,7 +244,7 @@ void hantro_g1_mpeg2_dec_run(struct hantro_ctx *ctx)
 					&dst_buf->vb2_buf,
 					sequence, picture, slice_params);
 
-	hantro_finish_run(ctx);
+	hantro_end_prepare_run(ctx);
 
 	reg = G1_REG_DEC_E(1);
 	vdpu_write(vpu, reg, G1_SWREG(1));
diff --git a/drivers/staging/media/hantro/hantro_g1_vp8_dec.c b/drivers/staging/media/hantro/hantro_g1_vp8_dec.c
index cad18094fee0..a2333d35305d 100644
--- a/drivers/staging/media/hantro/hantro_g1_vp8_dec.c
+++ b/drivers/staging/media/hantro/hantro_g1_vp8_dec.c
@@ -435,7 +435,7 @@ void hantro_g1_vp8_dec_run(struct hantro_ctx *ctx)
 	u32 mb_width, mb_height;
 	u32 reg;
 
-	hantro_prepare_run(ctx);
+	hantro_start_prepare_run(ctx);
 
 	hdr = hantro_get_ctrl(ctx, V4L2_CID_MPEG_VIDEO_VP8_FRAME_HEADER);
 	if (WARN_ON(!hdr))
@@ -496,7 +496,7 @@ void hantro_g1_vp8_dec_run(struct hantro_ctx *ctx)
 	cfg_ref(ctx, hdr);
 	cfg_buffers(ctx, hdr);
 
-	hantro_finish_run(ctx);
+	hantro_end_prepare_run(ctx);
 
 	vdpu_write(vpu, G1_REG_INTERRUPT_DEC_E, G1_REG_INTERRUPT);
 }
diff --git a/drivers/staging/media/hantro/hantro_h1_jpeg_enc.c b/drivers/staging/media/hantro/hantro_h1_jpeg_enc.c
index 938b48d4d3d9..0d8afc3e5d71 100644
--- a/drivers/staging/media/hantro/hantro_h1_jpeg_enc.c
+++ b/drivers/staging/media/hantro/hantro_h1_jpeg_enc.c
@@ -87,7 +87,7 @@ void hantro_h1_jpeg_enc_run(struct hantro_ctx *ctx)
 	src_buf = hantro_get_src_buf(ctx);
 	dst_buf = hantro_get_dst_buf(ctx);
 
-	hantro_prepare_run(ctx);
+	hantro_start_prepare_run(ctx);
 
 	memset(&jpeg_ctx, 0, sizeof(jpeg_ctx));
 	jpeg_ctx.buffer = vb2_plane_vaddr(&dst_buf->vb2_buf, 0);
@@ -122,7 +122,7 @@ void hantro_h1_jpeg_enc_run(struct hantro_ctx *ctx)
 		| H1_REG_ENC_PIC_INTRA
 		| H1_REG_ENC_CTRL_EN_BIT;
 
-	hantro_finish_run(ctx);
+	hantro_end_prepare_run(ctx);
 
 	vepu_write(vpu, reg, H1_REG_ENC_CTRL);
 }
diff --git a/drivers/staging/media/hantro/hantro_h264.c b/drivers/staging/media/hantro/hantro_h264.c
index 568640eab3a6..f2d3e81fb6ce 100644
--- a/drivers/staging/media/hantro/hantro_h264.c
+++ b/drivers/staging/media/hantro/hantro_h264.c
@@ -562,7 +562,7 @@ int hantro_h264_dec_prepare_run(struct hantro_ctx *ctx)
 	struct hantro_h264_dec_ctrls *ctrls = &h264_ctx->ctrls;
 	struct hantro_h264_reflist_builder reflist_builder;
 
-	hantro_prepare_run(ctx);
+	hantro_start_prepare_run(ctx);
 
 	ctrls->scaling =
 		hantro_get_ctrl(ctx, V4L2_CID_MPEG_VIDEO_H264_SCALING_MATRIX);
diff --git a/drivers/staging/media/hantro/hantro_hw.h b/drivers/staging/media/hantro/hantro_hw.h
index fa91dd1848b7..71de44bdb1e4 100644
--- a/drivers/staging/media/hantro/hantro_hw.h
+++ b/drivers/staging/media/hantro/hantro_hw.h
@@ -147,8 +147,8 @@ void hantro_watchdog(struct work_struct *work);
 void hantro_run(struct hantro_ctx *ctx);
 void hantro_irq_done(struct hantro_dev *vpu, unsigned int bytesused,
 		     enum vb2_buffer_state result);
-void hantro_prepare_run(struct hantro_ctx *ctx);
-void hantro_finish_run(struct hantro_ctx *ctx);
+void hantro_start_prepare_run(struct hantro_ctx *ctx);
+void hantro_end_prepare_run(struct hantro_ctx *ctx);
 
 void hantro_h1_jpeg_enc_run(struct hantro_ctx *ctx);
 void rk3399_vpu_jpeg_enc_run(struct hantro_ctx *ctx);
diff --git a/drivers/staging/media/hantro/rk3399_vpu_hw_jpeg_enc.c b/drivers/staging/media/hantro/rk3399_vpu_hw_jpeg_enc.c
index 067892345b5d..4c2d43fb6fd1 100644
--- a/drivers/staging/media/hantro/rk3399_vpu_hw_jpeg_enc.c
+++ b/drivers/staging/media/hantro/rk3399_vpu_hw_jpeg_enc.c
@@ -118,7 +118,7 @@ void rk3399_vpu_jpeg_enc_run(struct hantro_ctx *ctx)
 	src_buf = hantro_get_src_buf(ctx);
 	dst_buf = hantro_get_dst_buf(ctx);
 
-	hantro_prepare_run(ctx);
+	hantro_start_prepare_run(ctx);
 
 	memset(&jpeg_ctx, 0, sizeof(jpeg_ctx));
 	jpeg_ctx.buffer = vb2_plane_vaddr(&dst_buf->vb2_buf, 0);
@@ -156,6 +156,6 @@ void rk3399_vpu_jpeg_enc_run(struct hantro_ctx *ctx)
 		| VEPU_REG_ENCODE_ENABLE;
 
 	/* Kick the watchdog and start encoding */
-	hantro_finish_run(ctx);
+	hantro_end_prepare_run(ctx);
 	vepu_write(vpu, reg, VEPU_REG_ENCODE_START);
 }
diff --git a/drivers/staging/media/hantro/rk3399_vpu_hw_mpeg2_dec.c b/drivers/staging/media/hantro/rk3399_vpu_hw_mpeg2_dec.c
index b40d2cdf832f..7e9aad671489 100644
--- a/drivers/staging/media/hantro/rk3399_vpu_hw_mpeg2_dec.c
+++ b/drivers/staging/media/hantro/rk3399_vpu_hw_mpeg2_dec.c
@@ -169,7 +169,7 @@ void rk3399_vpu_mpeg2_dec_run(struct hantro_ctx *ctx)
 	src_buf = hantro_get_src_buf(ctx);
 	dst_buf = hantro_get_dst_buf(ctx);
 
-	hantro_prepare_run(ctx);
+	hantro_start_prepare_run(ctx);
 
 	slice_params = hantro_get_ctrl(ctx,
 				       V4L2_CID_MPEG_VIDEO_MPEG2_SLICE_PARAMS);
@@ -250,7 +250,7 @@ void rk3399_vpu_mpeg2_dec_run(struct hantro_ctx *ctx)
 					 sequence, picture, slice_params);
 
 	/* Kick the watchdog and start decoding */
-	hantro_finish_run(ctx);
+	hantro_end_prepare_run(ctx);
 
 	reg = vdpu_read(vpu, VDPU_SWREG(57)) | VDPU_REG_DEC_E(1);
 	vdpu_write(vpu, reg, VDPU_SWREG(57));
diff --git a/drivers/staging/media/hantro/rk3399_vpu_hw_vp8_dec.c b/drivers/staging/media/hantro/rk3399_vpu_hw_vp8_dec.c
index 76d7ed3fd69a..a4a792f00b11 100644
--- a/drivers/staging/media/hantro/rk3399_vpu_hw_vp8_dec.c
+++ b/drivers/staging/media/hantro/rk3399_vpu_hw_vp8_dec.c
@@ -513,7 +513,7 @@ void rk3399_vpu_vp8_dec_run(struct hantro_ctx *ctx)
 	u32 mb_width, mb_height;
 	u32 reg;
 
-	hantro_prepare_run(ctx);
+	hantro_start_prepare_run(ctx);
 
 	hdr = hantro_get_ctrl(ctx, V4L2_CID_MPEG_VIDEO_VP8_FRAME_HEADER);
 	if (WARN_ON(!hdr))
@@ -587,7 +587,7 @@ void rk3399_vpu_vp8_dec_run(struct hantro_ctx *ctx)
 	cfg_ref(ctx, hdr);
 	cfg_buffers(ctx, hdr);
 
-	hantro_finish_run(ctx);
+	hantro_end_prepare_run(ctx);
 
 	hantro_reg_write(vpu, &vp8_dec_start_dec, 1);
 }
-- 
2.22.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

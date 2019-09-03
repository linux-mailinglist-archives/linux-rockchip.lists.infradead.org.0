Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01C7BA726E
	for <lists+linux-rockchip@lfdr.de>; Tue,  3 Sep 2019 20:17:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6iD06ljBhJBYLIY/iInF34lleHNMvZ37z7AfRP1HW2U=; b=F0+CMKW9rxDSdI
	Ihv7mGFEEA3WmtXHsSqg5eht1n1VuAKf/nSODmXmqSgEyFM4OwRwBNMb8SF/AkkcWWe7e6IxCZ5rh
	N+aIQgbZsZgj3kgIl85Gh/x5bcp/iZNr+KXn1iPxCcEycyv0Ew4paxTM0xY23FBJ4JzU4uLbRHOWb
	RD+DnZruVWGcBbzdNwBMxCosDJxfnXtc+91YCPVIhHSJbz0tRnu+P79rEACiTFd0aCZE7JTNl5BaO
	94HtQxNYfpjr/Ict/q75H0zW4lI6GglLQwIUfrSYBYSxJ18uYXW5gZ3tWsIWsfu3PBZohMLjr99RK
	xh71/2JvMn+tm5pKg7vA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5DN2-0001qR-VD; Tue, 03 Sep 2019 18:17:37 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5DMy-0001na-99
 for linux-rockchip@lists.infradead.org; Tue, 03 Sep 2019 18:17:34 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 4FB8728A0A2
From: Ezequiel Garcia <ezequiel@collabora.com>
To: linux-media@vger.kernel.org
Subject: [PATCH 2/4] media: hantro: Simplify buffer helpers
Date: Tue,  3 Sep 2019 15:17:09 -0300
Message-Id: <20190903181711.7559-3-ezequiel@collabora.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190903181711.7559-1-ezequiel@collabora.com>
References: <20190903181711.7559-1-ezequiel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_111732_585306_7AC3748E 
X-CRM114-Status: GOOD (  14.36  )
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
 Tomasz Figa <tfiga@chromium.org>, linux-rockchip@lists.infradead.org,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, kernel@collabora.com,
 Ezequiel Garcia <ezequiel@collabora.com>, Chris Healy <cphealy@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Modify hantro_get_ref() and hantro_h264_get_ref_buf() helpers
to return the buffer DMA address, this makes the code simpler
and at the same time will allow easier enablement of the
post-processing feature.

Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
---
 drivers/staging/media/hantro/hantro.h         |  2 +-
 drivers/staging/media/hantro/hantro_drv.c     |  3 ++-
 .../staging/media/hantro/hantro_g1_h264_dec.c |  5 ++---
 .../media/hantro/hantro_g1_mpeg2_dec.c        |  7 ++-----
 .../staging/media/hantro/hantro_g1_vp8_dec.c  |  7 +++----
 drivers/staging/media/hantro/hantro_h264.c    | 19 ++++++++-----------
 drivers/staging/media/hantro/hantro_hw.h      |  4 ++--
 .../media/hantro/rk3399_vpu_hw_mpeg2_dec.c    |  7 ++-----
 .../media/hantro/rk3399_vpu_hw_vp8_dec.c      |  8 +++-----
 9 files changed, 25 insertions(+), 37 deletions(-)

diff --git a/drivers/staging/media/hantro/hantro.h b/drivers/staging/media/hantro/hantro.h
index c151133b8c86..deb90ae37859 100644
--- a/drivers/staging/media/hantro/hantro.h
+++ b/drivers/staging/media/hantro/hantro.h
@@ -367,7 +367,7 @@ static inline void hantro_reg_write(struct hantro_dev *vpu,
 bool hantro_is_encoder_ctx(const struct hantro_ctx *ctx);
 
 void *hantro_get_ctrl(struct hantro_ctx *ctx, u32 id);
-dma_addr_t hantro_get_ref(struct vb2_queue *q, u64 ts);
+dma_addr_t hantro_get_ref(struct hantro_ctx *ctx, u64 ts);
 
 static inline struct vb2_v4l2_buffer *
 hantro_get_src_buf(struct hantro_ctx *ctx)
diff --git a/drivers/staging/media/hantro/hantro_drv.c b/drivers/staging/media/hantro/hantro_drv.c
index d8b6816b643b..f550b68d46ca 100644
--- a/drivers/staging/media/hantro/hantro_drv.c
+++ b/drivers/staging/media/hantro/hantro_drv.c
@@ -43,8 +43,9 @@ void *hantro_get_ctrl(struct hantro_ctx *ctx, u32 id)
 	return ctrl ? ctrl->p_cur.p : NULL;
 }
 
-dma_addr_t hantro_get_ref(struct vb2_queue *q, u64 ts)
+dma_addr_t hantro_get_ref(struct hantro_ctx *ctx, u64 ts)
 {
+	struct vb2_queue *q = v4l2_m2m_get_dst_vq(ctx->fh.m2m_ctx);
 	struct vb2_buffer *buf;
 	int index;
 
diff --git a/drivers/staging/media/hantro/hantro_g1_h264_dec.c b/drivers/staging/media/hantro/hantro_g1_h264_dec.c
index d42c4004fe35..29130946dea4 100644
--- a/drivers/staging/media/hantro/hantro_g1_h264_dec.c
+++ b/drivers/staging/media/hantro/hantro_g1_h264_dec.c
@@ -220,10 +220,9 @@ static void set_ref(struct hantro_ctx *ctx)
 
 	/* Set up addresses of DPB buffers. */
 	for (i = 0; i < HANTRO_H264_DPB_SIZE; i++) {
-		struct vb2_buffer *buf =  hantro_h264_get_ref_buf(ctx, i);
+		dma_addr_t dma_addr = hantro_h264_get_ref_buf(ctx, i);
 
-		vdpu_write_relaxed(vpu, vb2_dma_contig_plane_dma_addr(buf, 0),
-				   G1_REG_ADDR_REF(i));
+		vdpu_write_relaxed(vpu, dma_addr, G1_REG_ADDR_REF(i));
 	}
 }
 
diff --git a/drivers/staging/media/hantro/hantro_g1_mpeg2_dec.c b/drivers/staging/media/hantro/hantro_g1_mpeg2_dec.c
index 314a72208812..f3bf67d8a289 100644
--- a/drivers/staging/media/hantro/hantro_g1_mpeg2_dec.c
+++ b/drivers/staging/media/hantro/hantro_g1_mpeg2_dec.c
@@ -105,17 +105,14 @@ hantro_g1_mpeg2_dec_set_buffers(struct hantro_dev *vpu, struct hantro_ctx *ctx,
 {
 	dma_addr_t forward_addr = 0, backward_addr = 0;
 	dma_addr_t current_addr, addr;
-	struct vb2_queue *vq;
-
-	vq = v4l2_m2m_get_dst_vq(ctx->fh.m2m_ctx);
 
 	switch (picture->picture_coding_type) {
 	case V4L2_MPEG2_PICTURE_CODING_TYPE_B:
-		backward_addr = hantro_get_ref(vq,
+		backward_addr = hantro_get_ref(ctx,
 					       slice_params->backward_ref_ts);
 		/* fall-through */
 	case V4L2_MPEG2_PICTURE_CODING_TYPE_P:
-		forward_addr = hantro_get_ref(vq,
+		forward_addr = hantro_get_ref(ctx,
 					      slice_params->forward_ref_ts);
 	}
 
diff --git a/drivers/staging/media/hantro/hantro_g1_vp8_dec.c b/drivers/staging/media/hantro/hantro_g1_vp8_dec.c
index e9d3361ed385..cad18094fee0 100644
--- a/drivers/staging/media/hantro/hantro_g1_vp8_dec.c
+++ b/drivers/staging/media/hantro/hantro_g1_vp8_dec.c
@@ -370,19 +370,18 @@ static void cfg_tap(struct hantro_ctx *ctx,
 static void cfg_ref(struct hantro_ctx *ctx,
 		    const struct v4l2_ctrl_vp8_frame_header *hdr)
 {
-	struct vb2_queue *cap_q = &ctx->fh.m2m_ctx->cap_q_ctx.q;
 	struct hantro_dev *vpu = ctx->dev;
 	struct vb2_v4l2_buffer *vb2_dst;
 	dma_addr_t ref;
 
 	vb2_dst = hantro_get_dst_buf(ctx);
 
-	ref = hantro_get_ref(cap_q, hdr->last_frame_ts);
+	ref = hantro_get_ref(ctx, hdr->last_frame_ts);
 	if (!ref)
 		ref = vb2_dma_contig_plane_dma_addr(&vb2_dst->vb2_buf, 0);
 	vdpu_write_relaxed(vpu, ref, G1_REG_ADDR_REF(0));
 
-	ref = hantro_get_ref(cap_q, hdr->golden_frame_ts);
+	ref = hantro_get_ref(ctx, hdr->golden_frame_ts);
 	WARN_ON(!ref && hdr->golden_frame_ts);
 	if (!ref)
 		ref = vb2_dma_contig_plane_dma_addr(&vb2_dst->vb2_buf, 0);
@@ -390,7 +389,7 @@ static void cfg_ref(struct hantro_ctx *ctx,
 		ref |= G1_REG_ADDR_REF_TOPC_E;
 	vdpu_write_relaxed(vpu, ref, G1_REG_ADDR_REF(4));
 
-	ref = hantro_get_ref(cap_q, hdr->alt_frame_ts);
+	ref = hantro_get_ref(ctx, hdr->alt_frame_ts);
 	WARN_ON(!ref && hdr->alt_frame_ts);
 	if (!ref)
 		ref = vb2_dma_contig_plane_dma_addr(&vb2_dst->vb2_buf, 0);
diff --git a/drivers/staging/media/hantro/hantro_h264.c b/drivers/staging/media/hantro/hantro_h264.c
index 0d758e0c0f99..2227b4e12067 100644
--- a/drivers/staging/media/hantro/hantro_h264.c
+++ b/drivers/staging/media/hantro/hantro_h264.c
@@ -537,22 +537,18 @@ static void update_dpb(struct hantro_ctx *ctx)
 	}
 }
 
-struct vb2_buffer *hantro_h264_get_ref_buf(struct hantro_ctx *ctx,
-					   unsigned int dpb_idx)
+dma_addr_t hantro_h264_get_ref_buf(struct hantro_ctx *ctx,
+				   unsigned int dpb_idx)
 {
-	struct vb2_queue *cap_q = &ctx->fh.m2m_ctx->cap_q_ctx.q;
 	struct v4l2_h264_dpb_entry *dpb = ctx->h264_dec.dpb;
-	struct vb2_buffer *buf;
-	int buf_idx = -1;
+	dma_addr_t dma_addr = 0;
 
 	if (dpb[dpb_idx].flags & V4L2_H264_DPB_ENTRY_FLAG_ACTIVE)
-		buf_idx = vb2_find_timestamp(cap_q,
-					     dpb[dpb_idx].reference_ts, 0);
+		dma_addr = hantro_get_ref(ctx, dpb[dpb_idx].reference_ts);
 
-	if (buf_idx >= 0) {
-		buf = vb2_get_buffer(cap_q, buf_idx);
-	} else {
+	if (!dma_addr) {
 		struct vb2_v4l2_buffer *dst_buf;
+		struct vb2_buffer *buf;
 
 		/*
 		 * If a DPB entry is unused or invalid, address of current
@@ -560,9 +556,10 @@ struct vb2_buffer *hantro_h264_get_ref_buf(struct hantro_ctx *ctx,
 		 */
 		dst_buf = hantro_get_dst_buf(ctx);
 		buf = &dst_buf->vb2_buf;
+		dma_addr = vb2_dma_contig_plane_dma_addr(buf, 0);
 	}
 
-	return buf;
+	return dma_addr;
 }
 
 int hantro_h264_dec_prepare_run(struct hantro_ctx *ctx)
diff --git a/drivers/staging/media/hantro/hantro_hw.h b/drivers/staging/media/hantro/hantro_hw.h
index 2fab655bf098..69b88f4d3fb3 100644
--- a/drivers/staging/media/hantro/hantro_hw.h
+++ b/drivers/staging/media/hantro/hantro_hw.h
@@ -158,8 +158,8 @@ void rk3399_vpu_jpeg_enc_run(struct hantro_ctx *ctx);
 int hantro_jpeg_enc_init(struct hantro_ctx *ctx);
 void hantro_jpeg_enc_exit(struct hantro_ctx *ctx);
 
-struct vb2_buffer *hantro_h264_get_ref_buf(struct hantro_ctx *ctx,
-					   unsigned int dpb_idx);
+dma_addr_t hantro_h264_get_ref_buf(struct hantro_ctx *ctx,
+				   unsigned int dpb_idx);
 int hantro_h264_dec_prepare_run(struct hantro_ctx *ctx);
 void hantro_g1_h264_dec_run(struct hantro_ctx *ctx);
 int hantro_h264_dec_init(struct hantro_ctx *ctx);
diff --git a/drivers/staging/media/hantro/rk3399_vpu_hw_mpeg2_dec.c b/drivers/staging/media/hantro/rk3399_vpu_hw_mpeg2_dec.c
index 263ec81f209b..b40d2cdf832f 100644
--- a/drivers/staging/media/hantro/rk3399_vpu_hw_mpeg2_dec.c
+++ b/drivers/staging/media/hantro/rk3399_vpu_hw_mpeg2_dec.c
@@ -107,17 +107,14 @@ rk3399_vpu_mpeg2_dec_set_buffers(struct hantro_dev *vpu,
 {
 	dma_addr_t forward_addr = 0, backward_addr = 0;
 	dma_addr_t current_addr, addr;
-	struct vb2_queue *vq;
-
-	vq = v4l2_m2m_get_dst_vq(ctx->fh.m2m_ctx);
 
 	switch (picture->picture_coding_type) {
 	case V4L2_MPEG2_PICTURE_CODING_TYPE_B:
-		backward_addr = hantro_get_ref(vq,
+		backward_addr = hantro_get_ref(ctx,
 					       slice_params->backward_ref_ts);
 		/* fall-through */
 	case V4L2_MPEG2_PICTURE_CODING_TYPE_P:
-		forward_addr = hantro_get_ref(vq,
+		forward_addr = hantro_get_ref(ctx,
 					      slice_params->forward_ref_ts);
 	}
 
diff --git a/drivers/staging/media/hantro/rk3399_vpu_hw_vp8_dec.c b/drivers/staging/media/hantro/rk3399_vpu_hw_vp8_dec.c
index 7d32a0283d93..76d7ed3fd69a 100644
--- a/drivers/staging/media/hantro/rk3399_vpu_hw_vp8_dec.c
+++ b/drivers/staging/media/hantro/rk3399_vpu_hw_vp8_dec.c
@@ -449,18 +449,16 @@ static void cfg_ref(struct hantro_ctx *ctx,
 {
 	struct hantro_dev *vpu = ctx->dev;
 	struct vb2_v4l2_buffer *vb2_dst;
-	struct vb2_queue *cap_q;
 	dma_addr_t ref;
 
-	cap_q = v4l2_m2m_get_vq(ctx->fh.m2m_ctx, V4L2_BUF_TYPE_VIDEO_CAPTURE);
 	vb2_dst = hantro_get_dst_buf(ctx);
 
-	ref = hantro_get_ref(cap_q, hdr->last_frame_ts);
+	ref = hantro_get_ref(ctx, hdr->last_frame_ts);
 	if (!ref)
 		ref = vb2_dma_contig_plane_dma_addr(&vb2_dst->vb2_buf, 0);
 	vdpu_write_relaxed(vpu, ref, VDPU_REG_VP8_ADDR_REF0);
 
-	ref = hantro_get_ref(cap_q, hdr->golden_frame_ts);
+	ref = hantro_get_ref(ctx, hdr->golden_frame_ts);
 	WARN_ON(!ref && hdr->golden_frame_ts);
 	if (!ref)
 		ref = vb2_dma_contig_plane_dma_addr(&vb2_dst->vb2_buf, 0);
@@ -468,7 +466,7 @@ static void cfg_ref(struct hantro_ctx *ctx,
 		ref |= VDPU_REG_VP8_GREF_SIGN_BIAS;
 	vdpu_write_relaxed(vpu, ref, VDPU_REG_VP8_ADDR_REF2_5(2));
 
-	ref = hantro_get_ref(cap_q, hdr->alt_frame_ts);
+	ref = hantro_get_ref(ctx, hdr->alt_frame_ts);
 	WARN_ON(!ref && hdr->alt_frame_ts);
 	if (!ref)
 		ref = vb2_dma_contig_plane_dma_addr(&vb2_dst->vb2_buf, 0);
-- 
2.22.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

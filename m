Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D862F4B7D3
	for <lists+linux-rockchip@lfdr.de>; Wed, 19 Jun 2019 14:16:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kHQNaWV1ODGyl5EcH+nkRDZ9Q/KydCVY8ENHPoG0wX0=; b=JMCd3ENryUBVFW
	mUCW2n1L3a3OAc3cKcd+O161j2K8Z2qq8dRY8bjqQMpWrHFHnBpsYS2OHlY+tMiiDWvPIaP1pm0Ey
	M6qWtccz4sFPtf1yF0HaNO6woTZsiICI2UY8sD6cPuw+6Y73pZUXaWYON0L2LIWOTj/2EXbwifWM7
	KnZliQxewbBWHejd1n2907RUnGWoR8N05Mhz34f0kOeO4B0Wxnazlcsi5AsenJVgqDLcqgyyq+Jp6
	7yLJ9lKcmHUVhL+bPASuL7okxao6hUeplhTdZBygSBJCXBArxvTYawSoiXx7TxRwFrE2ut+kNNfeu
	GuU48tAJiqNKgSTGQVsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdZVW-0005Kz-F8; Wed, 19 Jun 2019 12:16:06 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdZVG-00055v-HG
 for linux-rockchip@lists.infradead.org; Wed, 19 Jun 2019 12:15:54 +0000
Received: from localhost.localdomain (unknown
 [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 46D43285475;
 Wed, 19 Jun 2019 13:15:48 +0100 (BST)
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hans.verkuil@cisco.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Sakari Ailus <sakari.ailus@iki.fi>, linux-media@vger.kernel.org
Subject: [PATCH 6/9] media: hantro: Add helpers to prepare/finish a run
Date: Wed, 19 Jun 2019 14:15:37 +0200
Message-Id: <20190619121540.29320-7-boris.brezillon@collabora.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190619121540.29320-1-boris.brezillon@collabora.com>
References: <20190619121540.29320-1-boris.brezillon@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_051550_843291_5C1C1393 
X-CRM114-Status: GOOD (  13.23  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Tomasz Figa <tfiga@chromium.org>, Heiko Stuebner <heiko@sntech.de>,
 Jonas Karlman <jonas@kwiboo.se>, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 linux-kernel@vger.kernel.org, Nicolas Dufresne <nicolas@ndufresne.ca>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Andrew Morton <akpm@linux-foundation.org>, kernel@collabora.com,
 Ezequiel Garcia <ezequiel@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

And use them where appropriate.

Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
---
We might want to move those hantro_{prepare,finish}_run() calls to
device_run() and have a 2-step approach similar to cedrus (prepare +
trigger) at some point, but let's keep that for later.
---
 drivers/staging/media/hantro/hantro_drv.c     | 22 +++++++++++++++++++
 .../media/hantro/hantro_g1_mpeg2_dec.c        | 10 ++-------
 .../staging/media/hantro/hantro_g1_vp8_dec.c  |  9 ++------
 .../staging/media/hantro/hantro_h1_jpeg_enc.c |  7 ++++--
 drivers/staging/media/hantro/hantro_hw.h      |  2 ++
 .../media/hantro/rk3399_vpu_hw_jpeg_enc.c     |  8 ++-----
 .../media/hantro/rk3399_vpu_hw_mpeg2_dec.c    | 10 ++-------
 7 files changed, 37 insertions(+), 31 deletions(-)

diff --git a/drivers/staging/media/hantro/hantro_drv.c b/drivers/staging/media/hantro/hantro_drv.c
index b95f67ee3dd0..86302fb356ae 100644
--- a/drivers/staging/media/hantro/hantro_drv.c
+++ b/drivers/staging/media/hantro/hantro_drv.c
@@ -149,6 +149,28 @@ void hantro_watchdog(struct work_struct *work)
 	}
 }
 
+void hantro_prepare_run(struct hantro_ctx *ctx)
+{
+	struct vb2_v4l2_buffer *src_buf;
+
+	src_buf = hantro_get_src_buf(ctx);
+	v4l2_ctrl_request_setup(src_buf->vb2_buf.req_obj.req,
+				&ctx->ctrl_handler);
+}
+
+void hantro_finish_run(struct hantro_ctx *ctx)
+{
+	struct vb2_v4l2_buffer *src_buf;
+
+	src_buf = hantro_get_src_buf(ctx);
+	v4l2_ctrl_request_complete(src_buf->vb2_buf.req_obj.req,
+				   &ctx->ctrl_handler);
+
+	/* Kick the watchdog. */
+	schedule_delayed_work(&ctx->dev->watchdog_work,
+			      msecs_to_jiffies(2000));
+}
+
 static void device_run(void *priv)
 {
 	struct hantro_ctx *ctx = priv;
diff --git a/drivers/staging/media/hantro/hantro_g1_mpeg2_dec.c b/drivers/staging/media/hantro/hantro_g1_mpeg2_dec.c
index 55f861e96108..80f0e94f8afa 100644
--- a/drivers/staging/media/hantro/hantro_g1_mpeg2_dec.c
+++ b/drivers/staging/media/hantro/hantro_g1_mpeg2_dec.c
@@ -171,8 +171,7 @@ void hantro_g1_mpeg2_dec_run(struct hantro_ctx *ctx)
 	dst_buf = hantro_get_dst_buf(ctx);
 
 	/* Apply request controls if any */
-	v4l2_ctrl_request_setup(src_buf->vb2_buf.req_obj.req,
-				&ctx->ctrl_handler);
+	hantro_prepare_run(ctx);
 
 	slice_params = hantro_get_ctrl(ctx,
 				       V4L2_CID_MPEG_VIDEO_MPEG2_SLICE_PARAMS);
@@ -248,12 +247,7 @@ void hantro_g1_mpeg2_dec_run(struct hantro_ctx *ctx)
 					&dst_buf->vb2_buf,
 					sequence, picture, slice_params);
 
-	/* Controls no longer in-use, we can complete them */
-	v4l2_ctrl_request_complete(src_buf->vb2_buf.req_obj.req,
-				   &ctx->ctrl_handler);
-
-	/* Kick the watchdog and start decoding */
-	schedule_delayed_work(&vpu->watchdog_work, msecs_to_jiffies(2000));
+	hantro_finish_run(ctx);
 
 	reg = G1_REG_DEC_E(1);
 	vdpu_write(vpu, reg, G1_SWREG(1));
diff --git a/drivers/staging/media/hantro/hantro_g1_vp8_dec.c b/drivers/staging/media/hantro/hantro_g1_vp8_dec.c
index f406caf589ee..4b1a89dd86a9 100644
--- a/drivers/staging/media/hantro/hantro_g1_vp8_dec.c
+++ b/drivers/staging/media/hantro/hantro_g1_vp8_dec.c
@@ -476,8 +476,7 @@ void hantro_g1_vp8_dec_run(struct hantro_ctx *ctx)
 	u32 reg;
 
 	vb2_src = hantro_get_src_buf(ctx);
-	v4l2_ctrl_request_setup(vb2_src->vb2_buf.req_obj.req,
-				&ctx->ctrl_handler);
+	hantro_prepare_run(ctx);
 
 	hdr = hantro_get_ctrl(ctx, V4L2_CID_MPEG_VIDEO_VP8_FRAME_HDR);
 	if (WARN_ON(!hdr))
@@ -538,11 +537,7 @@ void hantro_g1_vp8_dec_run(struct hantro_ctx *ctx)
 	cfg_ref(ctx, hdr);
 	cfg_buffers(ctx, hdr);
 
-	/* Controls no longer in-use, we can complete them */
-	v4l2_ctrl_request_complete(vb2_src->vb2_buf.req_obj.req,
-				   &ctx->ctrl_handler);
-
-	schedule_delayed_work(&vpu->watchdog_work, msecs_to_jiffies(2000));
+	hantro_finish_run(ctx);
 
 	vdpu_write(vpu, G1_REG_INTERRUPT_DEC_E, G1_REG_INTERRUPT);
 }
diff --git a/drivers/staging/media/hantro/hantro_h1_jpeg_enc.c b/drivers/staging/media/hantro/hantro_h1_jpeg_enc.c
index f5adb5cbde50..ecd34a7db190 100644
--- a/drivers/staging/media/hantro/hantro_h1_jpeg_enc.c
+++ b/drivers/staging/media/hantro/hantro_h1_jpeg_enc.c
@@ -87,6 +87,8 @@ void hantro_h1_jpeg_enc_run(struct hantro_ctx *ctx)
 	src_buf = hantro_get_src_buf(ctx);
 	dst_buf = hantro_get_dst_buf(ctx);
 
+	hantro_prepare_run(ctx);
+
 	memset(&jpeg_ctx, 0, sizeof(jpeg_ctx));
 	jpeg_ctx.buffer = vb2_plane_vaddr(&dst_buf->vb2_buf, 0);
 	jpeg_ctx.width = ctx->dst_fmt.width;
@@ -119,7 +121,8 @@ void hantro_h1_jpeg_enc_run(struct hantro_ctx *ctx)
 		| H1_REG_ENC_CTRL_ENC_MODE_JPEG
 		| H1_REG_ENC_PIC_INTRA
 		| H1_REG_ENC_CTRL_EN_BIT;
-	/* Kick the watchdog and start encoding */
-	schedule_delayed_work(&vpu->watchdog_work, msecs_to_jiffies(2000));
+
+	hantro_finish_run(ctx);
+
 	vepu_write(vpu, reg, H1_REG_ENC_CTRL);
 }
diff --git a/drivers/staging/media/hantro/hantro_hw.h b/drivers/staging/media/hantro/hantro_hw.h
index 7849852affde..34ef24e3a9ef 100644
--- a/drivers/staging/media/hantro/hantro_hw.h
+++ b/drivers/staging/media/hantro/hantro_hw.h
@@ -97,6 +97,8 @@ void hantro_watchdog(struct work_struct *work);
 void hantro_run(struct hantro_ctx *ctx);
 void hantro_irq_done(struct hantro_dev *vpu, unsigned int bytesused,
 		     enum vb2_buffer_state result);
+void hantro_prepare_run(struct hantro_ctx *ctx);
+void hantro_finish_run(struct hantro_ctx *ctx);
 
 void hantro_h1_jpeg_enc_run(struct hantro_ctx *ctx);
 void rk3399_vpu_jpeg_enc_run(struct hantro_ctx *ctx);
diff --git a/drivers/staging/media/hantro/rk3399_vpu_hw_jpeg_enc.c b/drivers/staging/media/hantro/rk3399_vpu_hw_jpeg_enc.c
index 82c5af822766..06162f569b5e 100644
--- a/drivers/staging/media/hantro/rk3399_vpu_hw_jpeg_enc.c
+++ b/drivers/staging/media/hantro/rk3399_vpu_hw_jpeg_enc.c
@@ -113,14 +113,12 @@ void rk3399_vpu_jpeg_enc_run(struct hantro_ctx *ctx)
 	struct hantro_dev *vpu = ctx->dev;
 	struct vb2_v4l2_buffer *src_buf, *dst_buf;
 	struct hantro_jpeg_ctx jpeg_ctx;
-	struct media_request *src_req;
 	u32 reg;
 
 	src_buf = hantro_get_src_buf(ctx);
 	dst_buf = hantro_get_dst_buf(ctx);
 
-	src_req = src_buf->vb2_buf.req_obj.req;
-	v4l2_ctrl_request_setup(src_req, &ctx->ctrl_handler);
+	hantro_prepare_run(ctx);
 
 	memset(&jpeg_ctx, 0, sizeof(jpeg_ctx));
 	jpeg_ctx.buffer = vb2_plane_vaddr(&dst_buf->vb2_buf, 0);
@@ -157,9 +155,7 @@ void rk3399_vpu_jpeg_enc_run(struct hantro_ctx *ctx)
 		| VEPU_REG_ENCODE_FORMAT_JPEG
 		| VEPU_REG_ENCODE_ENABLE;
 
-	v4l2_ctrl_request_complete(src_req, &ctx->ctrl_handler);
-
 	/* Kick the watchdog and start encoding */
-	schedule_delayed_work(&vpu->watchdog_work, msecs_to_jiffies(2000));
+	hantro_finish_run(ctx);
 	vepu_write(vpu, reg, VEPU_REG_ENCODE_START);
 }
diff --git a/drivers/staging/media/hantro/rk3399_vpu_hw_mpeg2_dec.c b/drivers/staging/media/hantro/rk3399_vpu_hw_mpeg2_dec.c
index 451bfcceadba..e7ba5c0441cc 100644
--- a/drivers/staging/media/hantro/rk3399_vpu_hw_mpeg2_dec.c
+++ b/drivers/staging/media/hantro/rk3399_vpu_hw_mpeg2_dec.c
@@ -172,9 +172,7 @@ void rk3399_vpu_mpeg2_dec_run(struct hantro_ctx *ctx)
 	src_buf = hantro_get_src_buf(ctx);
 	dst_buf = hantro_get_dst_buf(ctx);
 
-	/* Apply request controls if any */
-	v4l2_ctrl_request_setup(src_buf->vb2_buf.req_obj.req,
-				&ctx->ctrl_handler);
+	hantro_prepare_run(ctx);
 
 	slice_params = hantro_get_ctrl(ctx,
 				       V4L2_CID_MPEG_VIDEO_MPEG2_SLICE_PARAMS);
@@ -254,12 +252,8 @@ void rk3399_vpu_mpeg2_dec_run(struct hantro_ctx *ctx)
 					 &dst_buf->vb2_buf,
 					 sequence, picture, slice_params);
 
-	/* Controls no longer in-use, we can complete them */
-	v4l2_ctrl_request_complete(src_buf->vb2_buf.req_obj.req,
-				   &ctx->ctrl_handler);
-
 	/* Kick the watchdog and start decoding */
-	schedule_delayed_work(&vpu->watchdog_work, msecs_to_jiffies(2000));
+	hantro_finish_run(ctx);
 
 	reg = vdpu_read(vpu, VDPU_SWREG(57)) | VDPU_REG_DEC_E(1);
 	vdpu_write(vpu, reg, VDPU_SWREG(57));
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

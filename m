Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A98B2CD0A
	for <lists+linux-rockchip@lfdr.de>; Tue, 28 May 2019 19:04:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Scg4cPiTNnPJG1zIyBiKS6qSYNgCQTQ8VZ6Vi+c9xGA=; b=CbdPxtmyGvkusv
	WYLoQk4oOVDcHKan8dTA5x3T9F9G2PrVBSMjT8j8tGNM9Bwm4nGoEx5V3guI/+BTAPFebAgxzq4uA
	227rCjBupC15U53D42oFDJ6b3TXGCeDWvDvzPzE1HgTSoq2MzFRs7O+zUH/xwSDALkXh/dSHW17iz
	mO9paOtbi6Io62jjHaZ81uCSQnDm+R3JdGNoR7nyXc5iXtKNUAeS5Kk0m1JYcbOyRKbcMFfVbXz+h
	g6E3i0a62lV0aOPHisWCQg7bv+ikcpERozwtyOqtd7pXMPfYJKNgNWxvQZ+5UmEK51kaRgO0ec08N
	Ryvpa5yZfgWMR47EO4CA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVfWS-0008QY-B3; Tue, 28 May 2019 17:04:24 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVfW5-0007yb-7a
 for linux-rockchip@lists.infradead.org; Tue, 28 May 2019 17:04:04 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 1A232284AFA
From: Ezequiel Garcia <ezequiel@collabora.com>
To: linux-media@vger.kernel.org,
	Hans Verkuil <hans.verkuil@cisco.com>
Subject: [PATCH v6 12/16] rockchip/vpu: Add support for non-standard controls
Date: Tue, 28 May 2019 14:02:28 -0300
Message-Id: <20190528170232.2091-13-ezequiel@collabora.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190528170232.2091-1-ezequiel@collabora.com>
References: <20190528170232.2091-1-ezequiel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_100402_090748_F87481A3 
X-CRM114-Status: GOOD (  15.28  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.21
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
Cc: Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Heiko Stuebner <heiko@sntech.de>, Jonas Karlman <jonas@kwiboo.se>,
 Tomasz Figa <tfiga@chromium.org>, linux-rockchip@lists.infradead.org,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, kernel@collabora.com,
 Ezequiel Garcia <ezequiel@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Rework the way controls are registered by the driver,
so it can support non-standard controls, such as those
used by stateless codecs.

Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
--
Changes from v4:
* Remove unused var in rockchip_vpu_ctrls_setup()

Changes from v3:
* None

Changes from v2:
* Got rid of unused ctrls related fields.
* Removed unndeeded is_std internal field.

 .../media/rockchip/vpu/rk3288_vpu_hw.c        |  2 +-
 .../media/rockchip/vpu/rk3399_vpu_hw.c        |  2 +-
 .../staging/media/rockchip/vpu/rockchip_vpu.h | 17 ++++++-
 .../media/rockchip/vpu/rockchip_vpu_drv.c     | 51 +++++++++++++++----
 4 files changed, 59 insertions(+), 13 deletions(-)

diff --git a/drivers/staging/media/rockchip/vpu/rk3288_vpu_hw.c b/drivers/staging/media/rockchip/vpu/rk3288_vpu_hw.c
index a874a0d83c2d..da19f1cad957 100644
--- a/drivers/staging/media/rockchip/vpu/rk3288_vpu_hw.c
+++ b/drivers/staging/media/rockchip/vpu/rk3288_vpu_hw.c
@@ -112,7 +112,7 @@ const struct rockchip_vpu_variant rk3288_vpu_variant = {
 	.enc_fmts = rk3288_vpu_enc_fmts,
 	.num_enc_fmts = ARRAY_SIZE(rk3288_vpu_enc_fmts),
 	.codec_ops = rk3288_vpu_codec_ops,
-	.codec = RK_VPU_CODEC_JPEG,
+	.codec = RK_VPU_JPEG_ENCODER,
 	.vepu_irq = rk3288_vepu_irq,
 	.init = rk3288_vpu_hw_init,
 	.clk_names = {"aclk", "hclk"},
diff --git a/drivers/staging/media/rockchip/vpu/rk3399_vpu_hw.c b/drivers/staging/media/rockchip/vpu/rk3399_vpu_hw.c
index f4effad00605..5c6c1e8b36d6 100644
--- a/drivers/staging/media/rockchip/vpu/rk3399_vpu_hw.c
+++ b/drivers/staging/media/rockchip/vpu/rk3399_vpu_hw.c
@@ -111,7 +111,7 @@ const struct rockchip_vpu_variant rk3399_vpu_variant = {
 	.enc_offset = 0x0,
 	.enc_fmts = rk3399_vpu_enc_fmts,
 	.num_enc_fmts = ARRAY_SIZE(rk3399_vpu_enc_fmts),
-	.codec = RK_VPU_CODEC_JPEG,
+	.codec = RK_VPU_JPEG_ENCODER,
 	.codec_ops = rk3399_vpu_codec_ops,
 	.vepu_irq = rk3399_vepu_irq,
 	.init = rk3399_vpu_hw_init,
diff --git a/drivers/staging/media/rockchip/vpu/rockchip_vpu.h b/drivers/staging/media/rockchip/vpu/rockchip_vpu.h
index 3d64f3e95c9b..ec7557a98583 100644
--- a/drivers/staging/media/rockchip/vpu/rockchip_vpu.h
+++ b/drivers/staging/media/rockchip/vpu/rockchip_vpu.h
@@ -34,7 +34,10 @@
 struct rockchip_vpu_ctx;
 struct rockchip_vpu_codec_ops;
 
-#define RK_VPU_CODEC_JPEG BIT(0)
+#define RK_VPU_JPEG_ENCODER	BIT(0)
+#define RK_VPU_ENCODERS		0x0000ffff
+
+#define RK_VPU_DECODERS		0xffff0000
 
 /**
  * struct rockchip_vpu_variant - information about VPU hardware variant
@@ -79,6 +82,18 @@ enum rockchip_vpu_codec_mode {
 	RK_VPU_MODE_JPEG_ENC,
 };
 
+/*
+ * struct rockchip_vpu_ctrl - helper type to declare supported controls
+ * @id:		V4L2 control ID (V4L2_CID_xxx)
+ * @codec:	codec id this control belong to (RK_VPU_JPEG_ENCODER, etc.)
+ * @cfg:	control configuration
+ */
+struct rockchip_vpu_ctrl {
+	unsigned int id;
+	unsigned int codec;
+	struct v4l2_ctrl_config cfg;
+};
+
 /*
  * struct rockchip_vpu_func - rockchip VPU functionality
  *
diff --git a/drivers/staging/media/rockchip/vpu/rockchip_vpu_drv.c b/drivers/staging/media/rockchip/vpu/rockchip_vpu_drv.c
index 0a8d7fb8903a..75104174640b 100644
--- a/drivers/staging/media/rockchip/vpu/rockchip_vpu_drv.c
+++ b/drivers/staging/media/rockchip/vpu/rockchip_vpu_drv.c
@@ -245,22 +245,51 @@ static const struct v4l2_ctrl_ops rockchip_vpu_ctrl_ops = {
 	.s_ctrl = rockchip_vpu_s_ctrl,
 };
 
+static struct rockchip_vpu_ctrl controls[] = {
+	{
+		.id = V4L2_CID_JPEG_COMPRESSION_QUALITY,
+		.codec = RK_VPU_JPEG_ENCODER,
+		.cfg = {
+			.min = 5,
+			.max = 100,
+			.step = 1,
+			.def = 50,
+		},
+	},
+};
+
 static int rockchip_vpu_ctrls_setup(struct rockchip_vpu_dev *vpu,
-				    struct rockchip_vpu_ctx *ctx)
+				    struct rockchip_vpu_ctx *ctx,
+				    int allowed_codecs)
 {
-	v4l2_ctrl_handler_init(&ctx->ctrl_handler, 1);
-	if (vpu->variant->codec & RK_VPU_CODEC_JPEG) {
-		v4l2_ctrl_new_std(&ctx->ctrl_handler, &rockchip_vpu_ctrl_ops,
-				  V4L2_CID_JPEG_COMPRESSION_QUALITY,
-				  5, 100, 1, 50);
+	int i, num_ctrls = ARRAY_SIZE(controls);
+
+	v4l2_ctrl_handler_init(&ctx->ctrl_handler, num_ctrls);
+
+	for (i = 0; i < num_ctrls; i++) {
+		if (!(allowed_codecs & controls[i].codec))
+			continue;
+		if (!controls[i].cfg.elem_size) {
+			v4l2_ctrl_new_std(&ctx->ctrl_handler,
+					  &rockchip_vpu_ctrl_ops,
+					  controls[i].id, controls[i].cfg.min,
+					  controls[i].cfg.max,
+					  controls[i].cfg.step,
+					  controls[i].cfg.def);
+		} else {
+			controls[i].cfg.id = controls[i].id;
+			v4l2_ctrl_new_custom(&ctx->ctrl_handler,
+					     &controls[i].cfg, NULL);
+		}
+
 		if (ctx->ctrl_handler.error) {
-			vpu_err("Adding JPEG control failed %d\n",
+			vpu_err("Adding control (%d) failed %d\n",
+				controls[i].id,
 				ctx->ctrl_handler.error);
 			v4l2_ctrl_handler_free(&ctx->ctrl_handler);
 			return ctx->ctrl_handler.error;
 		}
 	}
-
 	return v4l2_ctrl_handler_setup(&ctx->ctrl_handler);
 }
 
@@ -274,7 +303,7 @@ static int rockchip_vpu_open(struct file *filp)
 	struct video_device *vdev = video_devdata(filp);
 	struct rockchip_vpu_func *func = rockchip_vpu_vdev_to_func(vdev);
 	struct rockchip_vpu_ctx *ctx;
-	int ret;
+	int allowed_codecs, ret;
 
 	/*
 	 * We do not need any extra locking here, because we operate only
@@ -291,10 +320,12 @@ static int rockchip_vpu_open(struct file *filp)
 
 	ctx->dev = vpu;
 	if (func->id == MEDIA_ENT_F_PROC_VIDEO_ENCODER) {
+		allowed_codecs = vpu->variant->codec & RK_VPU_ENCODERS;
 		ctx->buf_finish = rockchip_vpu_enc_buf_finish;
 		ctx->fh.m2m_ctx = v4l2_m2m_ctx_init(vpu->m2m_dev, ctx,
 						    queue_init);
 	} else if (func->id == MEDIA_ENT_F_PROC_VIDEO_DECODER) {
+		allowed_codecs = vpu->variant->codec & RK_VPU_DECODERS;
 		ctx->buf_finish = rockchip_vpu_dec_buf_finish;
 		ctx->fh.m2m_ctx = v4l2_m2m_ctx_init(vpu->m2m_dev, ctx,
 						    queue_init);
@@ -313,7 +344,7 @@ static int rockchip_vpu_open(struct file *filp)
 
 	rockchip_vpu_reset_fmts(ctx);
 
-	ret = rockchip_vpu_ctrls_setup(vpu, ctx);
+	ret = rockchip_vpu_ctrls_setup(vpu, ctx, allowed_codecs);
 	if (ret) {
 		vpu_err("Failed to set up controls\n");
 		goto err_fh_free;
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

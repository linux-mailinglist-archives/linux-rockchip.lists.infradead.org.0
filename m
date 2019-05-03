Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E24E612CD0
	for <lists+linux-rockchip@lfdr.de>; Fri,  3 May 2019 13:47:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L9JcPBlTOeAUsWoZOO3Xl2oqAZs080fwYYkw8oqI78Y=; b=ivMs/JABwL7Oao
	IpYlIIb36z6bafeSCAqiSWfbHuXlr/eecHPu9fxDiP2LGFJJ97xaZOO2W6xWIw7NEl/EHzyoAhsUA
	X7dHTEwEbPWPE4KhQQFGehe/jXmsMP9iX0LE83vpiul1oyY9kDDbpytErVbZIGYqGvvTOtdImG4iW
	Sx+CO78cApe+nWGxGbxhsaSo6OgY/BmLjWSxwxx72JgPO43QIREEpkWRzCofI9I2g0REczLYmPwn5
	+6205C8p7cWu18HJQ1m0XKW+TE2j/4sC2oN0ulzHTMTLuJSVF86JskzefcEluA9e7vwmO8518oVIZ
	OQHeOoMmj22haMTBVaNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMWfI-00030l-0a; Fri, 03 May 2019 11:47:44 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMWf3-0002jz-M3
 for linux-rockchip@lists.infradead.org; Fri, 03 May 2019 11:47:34 +0000
Received: from localhost.localdomain (unknown
 [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 53C2028362B;
 Fri,  3 May 2019 12:47:27 +0100 (BST)
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hans.verkuil@cisco.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Sakari Ailus <sakari.ailus@iki.fi>, linux-media@vger.kernel.org
Subject: [PATCH v5 08/15] rockchip/vpu: Move encoder logic to a common place
Date: Fri,  3 May 2019 13:47:12 +0200
Message-Id: <20190503114719.28784-9-boris.brezillon@collabora.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190503114719.28784-1-boris.brezillon@collabora.com>
References: <20190503114719.28784-1-boris.brezillon@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_044730_114518_322280E6 
X-CRM114-Status: GOOD (  15.34  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Tomasz Figa <tfiga@chromium.org>, Heiko Stuebner <heiko@sntech.de>,
 Jonas Karlman <jonas@kwiboo.se>, Nicolas Dufresne <nicolas@ndufresne.ca>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org,
 Boris Brezillon <boris.brezillon@collabora.com>, kernel@collabora.com,
 Ezequiel Garcia <ezequiel@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

The V4L2/VB2 implementation for the encoder and decoder logic are very
similar, so let's rename rockchip_vpu_enc.c file into
rockchip_vpu_v4l2.c and remove the _enc_ part in objects/functions
exposed in rockchip_vpu_v4l2.h. We also rename the enc_queue_init()
function (in rockchip_vpu_drv.c) queue_init() since it will be used
to initialize both type of queues.

The implementation itself will be patched to support the decoding case
when decoder support is added.

Suggested-by: Ezequiel Garcia <ezequiel@collabora.com>
Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
---
Changes from v3:
* None

Changes from v2:
* New patch
---
 drivers/staging/media/rockchip/vpu/Makefile        |  2 +-
 .../staging/media/rockchip/vpu/rockchip_vpu_drv.c  | 14 +++++++-------
 .../{rockchip_vpu_enc.c => rockchip_vpu_v4l2.c}    | 14 +++++++-------
 .../staging/media/rockchip/vpu/rockchip_vpu_v4l2.h | 12 ++++++------
 4 files changed, 21 insertions(+), 21 deletions(-)
 rename drivers/staging/media/rockchip/vpu/{rockchip_vpu_enc.c => rockchip_vpu_v4l2.c} (97%)

diff --git a/drivers/staging/media/rockchip/vpu/Makefile b/drivers/staging/media/rockchip/vpu/Makefile
index e9d733bb7632..ae512173e7e4 100644
--- a/drivers/staging/media/rockchip/vpu/Makefile
+++ b/drivers/staging/media/rockchip/vpu/Makefile
@@ -2,7 +2,7 @@ obj-$(CONFIG_VIDEO_ROCKCHIP_VPU) += rockchip-vpu.o
 
 rockchip-vpu-y += \
 		rockchip_vpu_drv.o \
-		rockchip_vpu_enc.o \
+		rockchip_vpu_v4l2.o \
 		rk3288_vpu_hw.o \
 		rk3288_vpu_hw_jpeg_enc.o \
 		rk3399_vpu_hw.o \
diff --git a/drivers/staging/media/rockchip/vpu/rockchip_vpu_drv.c b/drivers/staging/media/rockchip/vpu/rockchip_vpu_drv.c
index 59b72245fb07..ec18578d55d7 100644
--- a/drivers/staging/media/rockchip/vpu/rockchip_vpu_drv.c
+++ b/drivers/staging/media/rockchip/vpu/rockchip_vpu_drv.c
@@ -140,7 +140,7 @@ static struct v4l2_m2m_ops vpu_m2m_ops = {
 };
 
 static int
-enc_queue_init(void *priv, struct vb2_queue *src_vq, struct vb2_queue *dst_vq)
+queue_init(void *priv, struct vb2_queue *src_vq, struct vb2_queue *dst_vq)
 {
 	struct rockchip_vpu_ctx *ctx = priv;
 	int ret;
@@ -148,7 +148,7 @@ enc_queue_init(void *priv, struct vb2_queue *src_vq, struct vb2_queue *dst_vq)
 	src_vq->type = V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE;
 	src_vq->io_modes = VB2_MMAP | VB2_DMABUF;
 	src_vq->drv_priv = ctx;
-	src_vq->ops = &rockchip_vpu_enc_queue_ops;
+	src_vq->ops = &rockchip_vpu_queue_ops;
 	src_vq->mem_ops = &vb2_dma_contig_memops;
 
 	/*
@@ -179,7 +179,7 @@ enc_queue_init(void *priv, struct vb2_queue *src_vq, struct vb2_queue *dst_vq)
 	dst_vq->type = V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE;
 	dst_vq->io_modes = VB2_MMAP | VB2_DMABUF;
 	dst_vq->drv_priv = ctx;
-	dst_vq->ops = &rockchip_vpu_enc_queue_ops;
+	dst_vq->ops = &rockchip_vpu_queue_ops;
 	dst_vq->mem_ops = &vb2_vmalloc_memops;
 	dst_vq->buf_struct_size = sizeof(struct v4l2_m2m_buffer);
 	dst_vq->timestamp_flags = V4L2_BUF_FLAG_TIMESTAMP_COPY;
@@ -260,7 +260,7 @@ static int rockchip_vpu_open(struct file *filp)
 	ctx->dev = vpu;
 	if (func->id == MEDIA_ENT_F_PROC_VIDEO_ENCODER)
 		ctx->fh.m2m_ctx = v4l2_m2m_ctx_init(vpu->m2m_dev, ctx,
-						    &enc_queue_init);
+						    queue_init);
 	else
 		ctx->fh.m2m_ctx = ERR_PTR(-ENODEV);
 	if (IS_ERR(ctx->fh.m2m_ctx)) {
@@ -273,8 +273,8 @@ static int rockchip_vpu_open(struct file *filp)
 	filp->private_data = &ctx->fh;
 	v4l2_fh_add(&ctx->fh);
 
-	rockchip_vpu_enc_reset_dst_fmt(vpu, ctx);
-	rockchip_vpu_enc_reset_src_fmt(vpu, ctx);
+	rockchip_vpu_reset_dst_fmt(vpu, ctx);
+	rockchip_vpu_reset_src_fmt(vpu, ctx);
 
 	ret = rockchip_vpu_ctrls_setup(vpu, ctx);
 	if (ret) {
@@ -487,7 +487,7 @@ static int rockchip_vpu_add_enc_func(struct rockchip_vpu_dev *vpu)
 	vfd->v4l2_dev = &vpu->v4l2_dev;
 	vfd->vfl_dir = VFL_DIR_M2M;
 	vfd->device_caps = V4L2_CAP_STREAMING | V4L2_CAP_VIDEO_M2M_MPLANE;
-	vfd->ioctl_ops = &rockchip_vpu_enc_ioctl_ops;
+	vfd->ioctl_ops = &rockchip_vpu_ioctl_ops;
 	snprintf(vfd->name, sizeof(vfd->name), "%s-enc", match->compatible);
 
 	vpu->encoder = func;
diff --git a/drivers/staging/media/rockchip/vpu/rockchip_vpu_enc.c b/drivers/staging/media/rockchip/vpu/rockchip_vpu_v4l2.c
similarity index 97%
rename from drivers/staging/media/rockchip/vpu/rockchip_vpu_enc.c
rename to drivers/staging/media/rockchip/vpu/rockchip_vpu_v4l2.c
index d2b4225516b5..3e8f6256e0ed 100644
--- a/drivers/staging/media/rockchip/vpu/rockchip_vpu_enc.c
+++ b/drivers/staging/media/rockchip/vpu/rockchip_vpu_v4l2.c
@@ -250,8 +250,8 @@ vidioc_try_fmt_out_mplane(struct file *file, void *priv, struct v4l2_format *f)
 	return 0;
 }
 
-void rockchip_vpu_enc_reset_dst_fmt(struct rockchip_vpu_dev *vpu,
-				    struct rockchip_vpu_ctx *ctx)
+void rockchip_vpu_reset_dst_fmt(struct rockchip_vpu_dev *vpu,
+				struct rockchip_vpu_ctx *ctx)
 {
 	struct v4l2_pix_format_mplane *fmt = &ctx->dst_fmt;
 
@@ -273,8 +273,8 @@ void rockchip_vpu_enc_reset_dst_fmt(struct rockchip_vpu_dev *vpu,
 		fmt->width * fmt->height * ctx->vpu_dst_fmt->max_depth;
 }
 
-void rockchip_vpu_enc_reset_src_fmt(struct rockchip_vpu_dev *vpu,
-				    struct rockchip_vpu_ctx *ctx)
+void rockchip_vpu_reset_src_fmt(struct rockchip_vpu_dev *vpu,
+				struct rockchip_vpu_ctx *ctx)
 {
 	struct v4l2_pix_format_mplane *fmt = &ctx->src_fmt;
 
@@ -373,11 +373,11 @@ vidioc_s_fmt_cap_mplane(struct file *file, void *priv, struct v4l2_format *f)
 	 * the raw format again after we return, so we don't need
 	 * anything smarter.
 	 */
-	rockchip_vpu_enc_reset_src_fmt(vpu, ctx);
+	rockchip_vpu_reset_src_fmt(vpu, ctx);
 	return 0;
 }
 
-const struct v4l2_ioctl_ops rockchip_vpu_enc_ioctl_ops = {
+const struct v4l2_ioctl_ops rockchip_vpu_ioctl_ops = {
 	.vidioc_querycap = vidioc_querycap,
 	.vidioc_enum_framesizes = vidioc_enum_framesizes,
 
@@ -561,7 +561,7 @@ static int rockchip_vpu_buf_out_validate(struct vb2_buffer *vb)
 	return 0;
 }
 
-const struct vb2_ops rockchip_vpu_enc_queue_ops = {
+const struct vb2_ops rockchip_vpu_queue_ops = {
 	.queue_setup = rockchip_vpu_queue_setup,
 	.buf_prepare = rockchip_vpu_buf_prepare,
 	.buf_queue = rockchip_vpu_buf_queue,
diff --git a/drivers/staging/media/rockchip/vpu/rockchip_vpu_v4l2.h b/drivers/staging/media/rockchip/vpu/rockchip_vpu_v4l2.h
index 50ad40dfb4f4..816bd3988218 100644
--- a/drivers/staging/media/rockchip/vpu/rockchip_vpu_v4l2.h
+++ b/drivers/staging/media/rockchip/vpu/rockchip_vpu_v4l2.h
@@ -18,12 +18,12 @@
 
 #include "rockchip_vpu.h"
 
-extern const struct v4l2_ioctl_ops rockchip_vpu_enc_ioctl_ops;
-extern const struct vb2_ops rockchip_vpu_enc_queue_ops;
+extern const struct v4l2_ioctl_ops rockchip_vpu_ioctl_ops;
+extern const struct vb2_ops rockchip_vpu_queue_ops;
 
-void rockchip_vpu_enc_reset_src_fmt(struct rockchip_vpu_dev *vpu,
-				    struct rockchip_vpu_ctx *ctx);
-void rockchip_vpu_enc_reset_dst_fmt(struct rockchip_vpu_dev *vpu,
-				    struct rockchip_vpu_ctx *ctx);
+void rockchip_vpu_reset_src_fmt(struct rockchip_vpu_dev *vpu,
+				struct rockchip_vpu_ctx *ctx);
+void rockchip_vpu_reset_dst_fmt(struct rockchip_vpu_dev *vpu,
+				struct rockchip_vpu_ctx *ctx);
 
 #endif /* ROCKCHIP_VPU_V4L2_H_ */
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

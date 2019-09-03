Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7225A7271
	for <lists+linux-rockchip@lfdr.de>; Tue,  3 Sep 2019 20:17:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=azyK5jSrXlG2StZ/+gSy2dm2ybF6y2IMiYNem6ywes8=; b=bdE3XfFADnUPgV
	iTfCK0S72iqhkoe0cfL+6YbUNhOQu5ZLHNnkztlGiMYjCn2HFNePM1wikVCDXiZecpYAtVW5OnpEp
	Msv11RKYEB8U5qeayhvSAVd313eyiPWbrXBhjk/xT66EZqpwF78KyhnysbsDZI4kGVwGW8pEDytND
	j5fydOpHx38L2Uo49nCNEE8wimNKuzBTLCVMCn562HaYI/YoFL5/fKbpDGjXC+6ZrQ5InwQQm/BU6
	COMt0e/x5EoFKuyQX3X8hTp1tDq8FJcewxEfKZqtRmzJfZGzUga74syfd3n8gl/QJ/ja9yb+gNZAE
	4TTGwZ+8Wa9qj9s+bIhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5DNA-0001wD-Lu; Tue, 03 Sep 2019 18:17:44 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5DN5-0001tA-VM
 for linux-rockchip@lists.infradead.org; Tue, 03 Sep 2019 18:17:42 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 20F2A28A0B7
From: Ezequiel Garcia <ezequiel@collabora.com>
To: linux-media@vger.kernel.org
Subject: [PATCH 4/4] media: hantro: Support color conversion via
 post-processing
Date: Tue,  3 Sep 2019 15:17:11 -0300
Message-Id: <20190903181711.7559-5-ezequiel@collabora.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190903181711.7559-1-ezequiel@collabora.com>
References: <20190903181711.7559-1-ezequiel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_111740_295065_25B78D8F 
X-CRM114-Status: GOOD (  21.90  )
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

The Hantro G1 decoder is able to enable a post-processor
on the decoding pipeline, which can be used to perform
scaling and color conversion.

The post-processor is integrated to the decoder, and it's
possible to use it in a way that is completely transparent
to the user.

This commit enables color conversion via post-processing,
which means the driver now exposes YUV packed and RGB pixel
formats, in addition to NV12.

On the YUV-to-RGB path, the post-processing pipeline
allows to modify the image contrast, brigthness and saturation,
so additional user controls are added to expose them.

Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
---
 drivers/staging/media/hantro/Makefile         |   1 +
 drivers/staging/media/hantro/hantro.h         |  23 +-
 drivers/staging/media/hantro/hantro_drv.c     |  24 +-
 .../staging/media/hantro/hantro_g1_h264_dec.c |   2 +-
 .../media/hantro/hantro_g1_mpeg2_dec.c        |   3 +-
 .../staging/media/hantro/hantro_g1_vp8_dec.c  |   2 +-
 drivers/staging/media/hantro/hantro_h264.c    |   7 +-
 drivers/staging/media/hantro/hantro_hw.h      |  11 +
 .../staging/media/hantro/hantro_postproc.c    | 316 ++++++++++++++++++
 drivers/staging/media/hantro/hantro_v4l2.c    |  21 +-
 drivers/staging/media/hantro/rk3288_vpu_hw.c  |  21 ++
 11 files changed, 420 insertions(+), 11 deletions(-)
 create mode 100644 drivers/staging/media/hantro/hantro_postproc.c

diff --git a/drivers/staging/media/hantro/Makefile b/drivers/staging/media/hantro/Makefile
index 5d6b0383d280..496b30c3c396 100644
--- a/drivers/staging/media/hantro/Makefile
+++ b/drivers/staging/media/hantro/Makefile
@@ -3,6 +3,7 @@ obj-$(CONFIG_VIDEO_HANTRO) += hantro-vpu.o
 hantro-vpu-y += \
 		hantro_drv.o \
 		hantro_v4l2.o \
+		hantro_postproc.o \
 		hantro_h1_jpeg_enc.o \
 		hantro_g1_h264_dec.o \
 		hantro_g1_mpeg2_dec.o \
diff --git a/drivers/staging/media/hantro/hantro.h b/drivers/staging/media/hantro/hantro.h
index e8872f24e351..8446a1fa9ab9 100644
--- a/drivers/staging/media/hantro/hantro.h
+++ b/drivers/staging/media/hantro/hantro.h
@@ -237,6 +237,7 @@ struct hantro_ctx {
 			  unsigned int bytesused);
 
 	const struct hantro_codec_ops *codec_ops;
+	struct hantro_postproc_ctx postproc;
 
 	/* Specific for particular codec modes. */
 	union {
@@ -250,7 +251,8 @@ struct hantro_ctx {
 /**
  * struct hantro_fmt - information about supported video formats.
  * @name:	Human readable name of the format.
- * @fourcc:	FourCC code of the format. See V4L2_PIX_FMT_*.
+ * @fourcc:	FourCC code of the post-processed format. See V4L2_PIX_FMT_*.
+ * @dec_fourcc:	FourCC code of the native format. See V4L2_PIX_FMT_*.
  * @codec_mode:	Codec mode related to this format. See
  *		enum hantro_codec_mode.
  * @header_size: Optional header size. Currently used by JPEG encoder.
@@ -261,6 +263,7 @@ struct hantro_ctx {
 struct hantro_fmt {
 	char *name;
 	u32 fourcc;
+	u32 dec_fourcc;
 	enum hantro_codec_mode codec_mode;
 	int header_size;
 	int max_depth;
@@ -387,4 +390,22 @@ hantro_h264_buffer_extra_size(unsigned int width, unsigned int height)
 	return 128 * MB_WIDTH(width) * MB_HEIGHT(height);
 }
 
+static inline bool
+hantro_use_postproc(struct hantro_ctx *ctx)
+{
+	return ctx->vpu_dst_fmt->fourcc != ctx->vpu_dst_fmt->dec_fourcc;
+}
+
+static inline dma_addr_t
+hantro_get_dec_buf_addr(struct hantro_ctx *ctx, struct vb2_buffer *vb)
+{
+	if (hantro_use_postproc(ctx))
+		return ctx->postproc.dec_q[vb->index].dma;
+	return vb2_dma_contig_plane_dma_addr(vb, 0);
+}
+
+void hantro_postproc_setup(struct hantro_ctx *ctx);
+void hantro_postproc_free(struct hantro_ctx *ctx);
+int hantro_postproc_alloc(struct hantro_ctx *ctx);
+
 #endif /* HANTRO_H_ */
diff --git a/drivers/staging/media/hantro/hantro_drv.c b/drivers/staging/media/hantro/hantro_drv.c
index f550b68d46ca..300178562014 100644
--- a/drivers/staging/media/hantro/hantro_drv.c
+++ b/drivers/staging/media/hantro/hantro_drv.c
@@ -53,7 +53,7 @@ dma_addr_t hantro_get_ref(struct hantro_ctx *ctx, u64 ts)
 	if (index < 0)
 		return 0;
 	buf = vb2_get_buffer(q, index);
-	return vb2_dma_contig_plane_dma_addr(buf, 0);
+	return hantro_get_dec_buf_addr(ctx, buf);
 }
 
 static int
@@ -165,6 +165,9 @@ void hantro_finish_run(struct hantro_ctx *ctx)
 {
 	struct vb2_v4l2_buffer *src_buf;
 
+	if (hantro_use_postproc(ctx))
+		hantro_postproc_setup(ctx);
+
 	src_buf = hantro_get_src_buf(ctx);
 	v4l2_ctrl_request_complete(src_buf->vb2_buf.req_obj.req,
 				   &ctx->ctrl_handler);
@@ -365,8 +368,9 @@ static int hantro_ctrls_setup(struct hantro_dev *vpu,
 			      int allowed_codecs)
 {
 	int i, num_ctrls = ARRAY_SIZE(controls);
+	int postproc_ctrls = (allowed_codecs & HANTRO_DECODERS) ? 3 : 0;
 
-	v4l2_ctrl_handler_init(&ctx->ctrl_handler, num_ctrls);
+	v4l2_ctrl_handler_init(&ctx->ctrl_handler, num_ctrls + postproc_ctrls);
 
 	for (i = 0; i < num_ctrls; i++) {
 		if (!(allowed_codecs & controls[i].codec))
@@ -382,6 +386,22 @@ static int hantro_ctrls_setup(struct hantro_dev *vpu,
 			return ctx->ctrl_handler.error;
 		}
 	}
+
+	/*
+	 * Add post-processing controls.
+	 * Only used if the post-processing path is enabled,
+	 * when the application sets a CAPTURE pixel format
+	 * that requires it.
+	 */
+	if (postproc_ctrls) {
+		v4l2_ctrl_new_std(&ctx->ctrl_handler, NULL,
+				  V4L2_CID_CONTRAST, -64, 64, 1, 0);
+		v4l2_ctrl_new_std(&ctx->ctrl_handler, NULL,
+				  V4L2_CID_BRIGHTNESS, -128, 127, 1, 0);
+		v4l2_ctrl_new_std(&ctx->ctrl_handler, NULL,
+				  V4L2_CID_SATURATION, -64, 128, 1, 0);
+	}
+
 	return v4l2_ctrl_handler_setup(&ctx->ctrl_handler);
 }
 
diff --git a/drivers/staging/media/hantro/hantro_g1_h264_dec.c b/drivers/staging/media/hantro/hantro_g1_h264_dec.c
index 29130946dea4..e263a6b50651 100644
--- a/drivers/staging/media/hantro/hantro_g1_h264_dec.c
+++ b/drivers/staging/media/hantro/hantro_g1_h264_dec.c
@@ -241,7 +241,7 @@ static void set_buffers(struct hantro_ctx *ctx)
 	vdpu_write_relaxed(vpu, src_dma, G1_REG_ADDR_STR);
 
 	/* Destination (decoded frame) buffer. */
-	dst_dma = vb2_dma_contig_plane_dma_addr(&dst_buf->vb2_buf, 0);
+	dst_dma = hantro_get_dec_buf_addr(ctx, &dst_buf->vb2_buf);
 	vdpu_write_relaxed(vpu, dst_dma, G1_REG_ADDR_DST);
 
 	/* Higher profiles require DMV buffer appended to reference frames. */
diff --git a/drivers/staging/media/hantro/hantro_g1_mpeg2_dec.c b/drivers/staging/media/hantro/hantro_g1_mpeg2_dec.c
index f3bf67d8a289..63fe89ef21ae 100644
--- a/drivers/staging/media/hantro/hantro_g1_mpeg2_dec.c
+++ b/drivers/staging/media/hantro/hantro_g1_mpeg2_dec.c
@@ -121,7 +121,7 @@ hantro_g1_mpeg2_dec_set_buffers(struct hantro_dev *vpu, struct hantro_ctx *ctx,
 	vdpu_write_relaxed(vpu, addr, G1_REG_RLC_VLC_BASE);
 
 	/* Destination frame buffer */
-	addr = vb2_dma_contig_plane_dma_addr(dst_buf, 0);
+	addr = hantro_get_dec_buf_addr(ctx, dst_buf);
 	current_addr = addr;
 
 	if (picture->picture_structure == PICT_BOTTOM_FIELD)
@@ -243,7 +243,6 @@ void hantro_g1_mpeg2_dec_run(struct hantro_ctx *ctx)
 	hantro_g1_mpeg2_dec_set_buffers(vpu, ctx, &src_buf->vb2_buf,
 					&dst_buf->vb2_buf,
 					sequence, picture, slice_params);
-
 	hantro_finish_run(ctx);
 
 	reg = G1_REG_DEC_E(1);
diff --git a/drivers/staging/media/hantro/hantro_g1_vp8_dec.c b/drivers/staging/media/hantro/hantro_g1_vp8_dec.c
index cad18094fee0..e708994d1aba 100644
--- a/drivers/staging/media/hantro/hantro_g1_vp8_dec.c
+++ b/drivers/staging/media/hantro/hantro_g1_vp8_dec.c
@@ -422,7 +422,7 @@ static void cfg_buffers(struct hantro_ctx *ctx,
 	}
 	vdpu_write_relaxed(vpu, reg, G1_REG_FWD_PIC(0));
 
-	dst_dma = vb2_dma_contig_plane_dma_addr(&vb2_dst->vb2_buf, 0);
+	dst_dma = hantro_get_dec_buf_addr(ctx, &vb2_dst->vb2_buf);
 	vdpu_write_relaxed(vpu, dst_dma, G1_REG_ADDR_DST);
 }
 
diff --git a/drivers/staging/media/hantro/hantro_h264.c b/drivers/staging/media/hantro/hantro_h264.c
index 2227b4e12067..d00b3096b7ae 100644
--- a/drivers/staging/media/hantro/hantro_h264.c
+++ b/drivers/staging/media/hantro/hantro_h264.c
@@ -13,6 +13,7 @@
 #include <linux/types.h>
 #include <linux/sort.h>
 #include <media/v4l2-mem2mem.h>
+#include <media/v4l2-common.h>
 
 #include "hantro.h"
 #include "hantro_hw.h"
@@ -635,7 +636,11 @@ int hantro_h264_dec_init(struct hantro_ctx *ctx)
 	tbl = priv->cpu;
 	memcpy(tbl->cabac_table, h264_cabac_table, sizeof(tbl->cabac_table));
 
-	v4l2_fill_pixfmt_mp(&pix_mp, ctx->dst_fmt.pixelformat,
+	/*
+	 * For the decoder picture size, we want the decoder
+	 * native pixel format, so we use dec_fourcc here.
+	 */
+	v4l2_fill_pixfmt_mp(&pix_mp, ctx->vpu_dst_fmt->dec_fourcc,
 			    ctx->dst_fmt.width, ctx->dst_fmt.height);
 	h264_dec->pic_size = pix_mp.plane_fmt[0].sizeimage;
 
diff --git a/drivers/staging/media/hantro/hantro_hw.h b/drivers/staging/media/hantro/hantro_hw.h
index 69b88f4d3fb3..ae1d869e7c28 100644
--- a/drivers/staging/media/hantro/hantro_hw.h
+++ b/drivers/staging/media/hantro/hantro_hw.h
@@ -28,11 +28,13 @@ struct hantro_variant;
  * @cpu:	CPU pointer to the buffer.
  * @dma:	DMA address of the buffer.
  * @size:	Size of the buffer.
+ * @attrs:	Attributes of the DMA mapping.
  */
 struct hantro_aux_buf {
 	void *cpu;
 	dma_addr_t dma;
 	size_t size;
+	unsigned long attrs;
 };
 
 /**
@@ -109,6 +111,15 @@ struct hantro_vp8_dec_hw_ctx {
 	struct hantro_aux_buf prob_tbl;
 };
 
+/**
+ * struct hantro_postproc_ctx
+ *
+ * @dec_q:		References buffers, in decoder format.
+ */
+struct hantro_postproc_ctx {
+	struct hantro_aux_buf dec_q[VB2_MAX_FRAME];
+};
+
 /**
  * struct hantro_codec_ops - codec mode specific operations
  *
diff --git a/drivers/staging/media/hantro/hantro_postproc.c b/drivers/staging/media/hantro/hantro_postproc.c
new file mode 100644
index 000000000000..17d023a253a8
--- /dev/null
+++ b/drivers/staging/media/hantro/hantro_postproc.c
@@ -0,0 +1,316 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Hantro G1 post-processor support
+ *
+ * Copyright (C) 2019 Collabora, Ltd.
+ */
+
+#include <linux/dma-mapping.h>
+#include <linux/types.h>
+
+#include "hantro.h"
+#include "hantro_hw.h"
+
+#define G1_SWREG(nr)		((nr) * 4)
+
+#define G1_REG_PP_INTERRUPT		G1_SWREG(60)
+#define    G1_REG_PP_READY_IRQ		BIT(12)
+#define    G1_REG_PP_IRQ		BIT(8)
+#define    G1_REG_PP_IRQ_DIS		BIT(4)
+#define    G1_REG_PP_PIPELINE_EN	BIT(1)
+#define    G1_REG_PP_EXTERNAL_TRIGGER	BIT(0)
+#define G1_REG_PP_DEV_CONFIG		G1_SWREG(61)
+#define     G1_REG_PP_AXI_RD_ID(v)	(((v) << 24) & GENMASK(31, 24))
+#define     G1_REG_PP_AXI_WR_ID(v)	(((v) << 16) & GENMASK(23, 16))
+#define     G1_REG_PP_INSWAP32_E(v)	((v) ? BIT(10) : 0)
+#define     G1_REG_PP_DATA_DISC_E(v)	((v) ? BIT(9) : 0)
+#define     G1_REG_PP_CLK_GATE_E(v)	((v) ? BIT(8) : 0)
+#define     G1_REG_PP_IN_ENDIAN(v)	((v) ? BIT(7) : 0)
+#define     G1_REG_PP_OUT_ENDIAN(v)	((v) ? BIT(6) : 0)
+#define     G1_REG_PP_OUTSWAP32_E(v)	((v) ? BIT(5) : 0)
+#define     G1_REG_PP_MAX_BURST(v)	(((v) << 0) & GENMASK(4, 0))
+#define G1_REG_PP_IN_LUMA_BASE		G1_SWREG(63)
+#define G1_REG_PP_IN_CB_BASE		G1_SWREG(64)
+#define G1_REG_PP_IN_CR_BASE		G1_SWREG(65)
+#define G1_REG_PP_OUT_LUMA_BASE		G1_SWREG(66)
+#define G1_REG_PP_OUT_CHROMA_BASE	G1_SWREG(67)
+#define G1_REG_PP_CONTRAST_ADJUST	G1_SWREG(68)
+#define G1_REG_PP_COLOR_CONVERSION	G1_SWREG(69)
+#define G1_REG_PP_COLOR_CONVERSION0	G1_SWREG(70)
+#define G1_REG_PP_COLOR_CONVERSION1	G1_SWREG(71)
+#define G1_REG_PP_INPUT_SIZE		G1_SWREG(72)
+#define    G1_REG_PP_INPUT_SIZE_HEIGHT(v) (((v) << 9) & GENMASK(16, 9))
+#define    G1_REG_PP_INPUT_SIZE_WIDTH(v)  (((v) << 0) & GENMASK(8, 0))
+#define G1_REG_PP_SCALING0		G1_SWREG(79)
+#define     G1_REG_PP_PADD_R(v)	(((v) << 23) & GENMASK(27, 23))
+#define     G1_REG_PP_PADD_G(v)	(((v) << 18) & GENMASK(22, 18))
+#define     G1_REG_PP_RANGEMAP_Y(v) ((v) ? BIT(31) : 0)
+#define     G1_REG_PP_RANGEMAP_C(v) ((v) ? BIT(30) : 0)
+#define     G1_REG_PP_YCBCR_RANGE(v) ((v) ? BIT(29) : 0)
+#define     G1_REG_PP_RGB_16(v) ((v) ? BIT(28) : 0)
+#define G1_REG_PP_SCALING1		G1_SWREG(80)
+#define     G1_REG_PP_PADD_B(v)	(((v) << 18) & GENMASK(22, 18))
+#define G1_REG_PP_MASK_R		G1_SWREG(82)
+#define G1_REG_PP_MASK_G		G1_SWREG(83)
+#define G1_REG_PP_MASK_B		G1_SWREG(84)
+#define G1_REG_PP_CONTROL		G1_SWREG(85)
+#define     G1_REG_PP_CONTROL_IN_FMT(v)	(((v) << 29) & GENMASK(31, 29))
+#define     G1_REG_PP_CONTROL_OUT_FMT(v) (((v) << 26) & GENMASK(28, 26))
+#define     G1_REG_PP_CONTROL_OUT_HEIGHT(v) (((v) << 15) & GENMASK(25, 15))
+#define     G1_REG_PP_CONTROL_OUT_WIDTH(v) (((v) << 4) & GENMASK(14, 4))
+#define G1_REG_PP_MASK1_ORIG_WIDTH	G1_SWREG(88)
+#define     G1_REG_PP_ORIG_WIDTH(v)	(((v) << 23) & GENMASK(31, 23))
+#define G1_REG_PP_DISPLAY_WIDTH		G1_SWREG(92)
+#define G1_REG_PP_FUSE			G1_SWREG(99)
+
+#define VPU_PP_IN_YUYV			0x0
+#define VPU_PP_IN_NV12			0x1
+#define VPU_PP_IN_YUV420		0x2
+#define VPU_PP_IN_YUV240_TILED		0x5
+#define VPU_PP_OUT_RGB			0x0
+#define VPU_PP_OUT_YUYV			0x3
+
+#define DEF_COLOR_COEFF_A 298
+#define DEF_COLOR_COEFF_B 409
+#define DEF_COLOR_COEFF_C 208
+#define DEF_COLOR_COEFF_D 100
+#define DEF_COLOR_COEFF_E 516
+
+static const struct hantro_reg reg_color_a2 = { G1_REG_PP_COLOR_CONVERSION, 18, 0x3ff };
+static const struct hantro_reg reg_color_a1 = { G1_REG_PP_COLOR_CONVERSION, 8, 0x3ff };
+static const struct hantro_reg reg_color_b = { G1_REG_PP_COLOR_CONVERSION0, 0, 0x3ff };
+static const struct hantro_reg reg_color_c = { G1_REG_PP_COLOR_CONVERSION0, 10, 0x3ff };
+static const struct hantro_reg reg_color_d = { G1_REG_PP_COLOR_CONVERSION0, 20, 0x3ff };
+static const struct hantro_reg reg_color_e = { G1_REG_PP_COLOR_CONVERSION1, 0, 0x3ff };
+static const struct hantro_reg reg_color_f = { G1_REG_PP_COLOR_CONVERSION1, 10, 0xff };
+static const struct hantro_reg reg_contrast_thr1 = { G1_REG_PP_CONTRAST_ADJUST, 24, 0xff };
+static const struct hantro_reg reg_contrast_thr2 = { G1_REG_PP_COLOR_CONVERSION, 0, 0xff };
+static const struct hantro_reg reg_contrast_off1 = { G1_REG_PP_CONTRAST_ADJUST, 0, 0x3ff };
+static const struct hantro_reg reg_contrast_off2 = { G1_REG_PP_CONTRAST_ADJUST, 10, 0x3ff };
+static const struct hantro_reg reg_ycbcr_range = { G1_REG_PP_SCALING0, 29, 0x1 };
+static const struct hantro_reg reg_pad_r = { G1_REG_PP_SCALING0, 23, 0x1f };
+static const struct hantro_reg reg_pad_g = { G1_REG_PP_SCALING0, 18, 0x1f };
+static const struct hantro_reg reg_pad_b = { G1_REG_PP_SCALING1, 18, 0x1f };
+
+static s32 hantro_postproc_get_ctrl(struct hantro_ctx *ctx, u32 id, s32 def_val)
+{
+	struct v4l2_ctrl *ctrl;
+
+	ctrl = v4l2_ctrl_find(&ctx->ctrl_handler, id);
+	if (!ctrl)
+		return def_val;
+	return v4l2_ctrl_g_ctrl(ctrl);
+}
+
+static void hantro_postproc_setup_rgb(struct hantro_ctx *ctx)
+{
+	struct hantro_dev *vpu = ctx->dev;
+	s32 thr1y, thr2y;
+	s32 thr1, thr2;
+	s32 off1, off2;
+	s32 a1, a2;
+	s32 tmp, satur;
+	s32 contrast, saturation, brightness;
+
+	contrast = hantro_postproc_get_ctrl(ctx, V4L2_CID_CONTRAST, 0);
+	brightness = hantro_postproc_get_ctrl(ctx, V4L2_CID_BRIGHTNESS, 0);
+	saturation = hantro_postproc_get_ctrl(ctx, V4L2_CID_SATURATION, 0);
+
+	if (ctx->src_fmt.quantization == V4L2_QUANTIZATION_LIM_RANGE) {
+		s32 tmp1, tmp2;
+
+		thr1 = (219 * (contrast + 128)) / 512;
+		thr1y = (219 - 2 * thr1) / 2;
+		thr2 = 219 - thr1;
+		thr2y = 219 - thr1y;
+
+		tmp1 = (thr1y * 256) / thr1;
+		tmp2 = ((thr2y - thr1y) * 256) / (thr2 - thr1);
+		off1 = ((thr1y - ((tmp2 * thr1) / 256)) * (s32)DEF_COLOR_COEFF_A) / 256;
+		off2 = ((thr2y - ((tmp1 * thr2) / 256)) * (s32)DEF_COLOR_COEFF_A) / 256;
+
+		tmp1 = (64 * (contrast + 128)) / 128;
+		tmp2 = 256 * (128 - tmp1);
+		a1 = (tmp2 + off2) / thr1;
+		a2 = a1 + (256 * (off2 - 1)) / (thr2 - thr1);
+	} else {
+		thr1 = (64 * (contrast + 128)) / 128;
+		thr1y = 128 - thr1;
+		thr2 = 256 - thr1;
+		thr2y = 256 - thr1y;
+		a1 = (thr1y * 256) / thr1;
+		a2 = ((thr2y - thr1y) * 256) / (thr2 - thr1);
+		off1 = thr1y - (a2 * thr1) / 256;
+		off2 = thr2y - (a1 * thr2) / 256;
+	}
+
+	a1 = clamp(a1, 0, 1023);
+	a2 = clamp(a2, 0, 1023);
+	thr1 = clamp(thr1, 0, 255);
+	thr2 = clamp(thr2, 0, 255);
+	off1 = clamp(off1, -512, 511);
+	off2 = clamp(off2, -512, 511);
+
+	hantro_reg_write(vpu, &reg_contrast_thr1, thr1);
+	hantro_reg_write(vpu, &reg_contrast_thr2, thr2);
+	hantro_reg_write(vpu, &reg_contrast_off1, off1);
+	hantro_reg_write(vpu, &reg_contrast_off2, off2);
+	hantro_reg_write(vpu, &reg_color_a1, a1);
+	hantro_reg_write(vpu, &reg_color_a2, a2);
+
+	/* Brightness */
+	hantro_reg_write(vpu, &reg_color_f, brightness);
+
+	/* Saturation */
+	satur = 64 + saturation;
+	tmp = (satur * (s32)DEF_COLOR_COEFF_B) / 64;
+	tmp = clamp(tmp, 0, 1023);
+	hantro_reg_write(vpu, &reg_color_b, tmp);
+
+	tmp = (satur * (s32)DEF_COLOR_COEFF_C) / 64;
+	tmp = clamp(tmp, 0, 1023);
+	hantro_reg_write(vpu, &reg_color_c, tmp);
+
+	tmp = (satur * (s32)DEF_COLOR_COEFF_D) / 64;
+	tmp = clamp(tmp, 0, 1023);
+	hantro_reg_write(vpu, &reg_color_d, tmp);
+
+	tmp = (satur * (s32)DEF_COLOR_COEFF_E) / 64;
+	tmp = clamp(tmp, 0, 1023);
+	hantro_reg_write(vpu, &reg_color_e, tmp);
+
+	/* Set RGB padding and mask */
+	switch (ctx->vpu_dst_fmt->fourcc) {
+	case V4L2_PIX_FMT_RGBX32:
+		hantro_reg_write(vpu, &reg_pad_r, 0);
+		hantro_reg_write(vpu, &reg_pad_g, 8);
+		hantro_reg_write(vpu, &reg_pad_b, 16);
+
+		vdpu_write_relaxed(vpu, 0xff000000, G1_REG_PP_MASK_R);
+		vdpu_write_relaxed(vpu, 0x00ff0000, G1_REG_PP_MASK_G);
+		vdpu_write_relaxed(vpu, 0x0000ff00, G1_REG_PP_MASK_B);
+		break;
+	case V4L2_PIX_FMT_XRGB32:
+		hantro_reg_write(vpu, &reg_pad_r, 8);
+		hantro_reg_write(vpu, &reg_pad_g, 16);
+		hantro_reg_write(vpu, &reg_pad_b, 24);
+
+		vdpu_write_relaxed(vpu, 0x00ff0000, G1_REG_PP_MASK_R);
+		vdpu_write_relaxed(vpu, 0x0000ff00, G1_REG_PP_MASK_G);
+		vdpu_write_relaxed(vpu, 0x000000ff, G1_REG_PP_MASK_B);
+		break;
+	case V4L2_PIX_FMT_XBGR32:
+		hantro_reg_write(vpu, &reg_pad_b, 0);
+		hantro_reg_write(vpu, &reg_pad_g, 8);
+		hantro_reg_write(vpu, &reg_pad_r, 16);
+
+		vdpu_write_relaxed(vpu, 0xff000000, G1_REG_PP_MASK_B);
+		vdpu_write_relaxed(vpu, 0x00ff0000, G1_REG_PP_MASK_G);
+		vdpu_write_relaxed(vpu, 0x0000ff00, G1_REG_PP_MASK_R);
+		break;
+	}
+}
+
+void hantro_postproc_setup(struct hantro_ctx *ctx)
+{
+	struct hantro_dev *vpu = ctx->dev;
+	struct vb2_v4l2_buffer *dst_buf;
+	u32 reg, src_pp_fmt, dst_pp_fmt;
+	dma_addr_t dst_dma;
+
+	/* Turn on pipeline mode. Must be done first. */
+	vdpu_write(vpu, G1_REG_PP_PIPELINE_EN, G1_REG_PP_INTERRUPT);
+
+	reg = G1_REG_PP_AXI_RD_ID(0) |
+	      G1_REG_PP_AXI_WR_ID(0) |
+	      G1_REG_PP_INSWAP32_E(1) |
+	      G1_REG_PP_OUTSWAP32_E(1) |
+	      G1_REG_PP_DATA_DISC_E(0) |
+	      G1_REG_PP_CLK_GATE_E(1) |
+	      G1_REG_PP_IN_ENDIAN(1) |
+	      G1_REG_PP_OUT_ENDIAN(1) |
+	      G1_REG_PP_MAX_BURST(16);
+	vdpu_write_relaxed(vpu, reg, G1_REG_PP_DEV_CONFIG);
+
+	/* Configure picture resolution. */
+	reg = G1_REG_PP_INPUT_SIZE_HEIGHT(MB_HEIGHT(ctx->dst_fmt.height)) |
+	      G1_REG_PP_INPUT_SIZE_WIDTH(MB_WIDTH(ctx->dst_fmt.width));
+	vdpu_write_relaxed(vpu, reg, G1_REG_PP_INPUT_SIZE);
+
+	dst_buf = v4l2_m2m_next_dst_buf(ctx->fh.m2m_ctx);
+	dst_dma = vb2_dma_contig_plane_dma_addr(&dst_buf->vb2_buf, 0);
+	vdpu_write_relaxed(vpu, dst_dma, G1_REG_PP_OUT_LUMA_BASE);
+
+	reg = (ctx->dst_fmt.quantization ==
+	       V4L2_QUANTIZATION_LIM_RANGE) ? 0 : 1;
+	hantro_reg_write(vpu, &reg_ycbcr_range, reg);
+
+	/* Clear this register before setting the RGB coefficients. */
+	vdpu_write_relaxed(vpu, 0, G1_REG_PP_SCALING1);
+
+	switch (ctx->vpu_dst_fmt->fourcc) {
+	case V4L2_PIX_FMT_YUYV:
+		dst_pp_fmt = VPU_PP_OUT_YUYV;
+		break;
+	case V4L2_PIX_FMT_RGBX32:
+	case V4L2_PIX_FMT_XRGB32:
+	case V4L2_PIX_FMT_XBGR32:
+		dst_pp_fmt = VPU_PP_OUT_RGB;
+		hantro_postproc_setup_rgb(ctx);
+		break;
+	default:
+		return;
+	}
+
+	/* Currently NV12 is the only supported input pixel format. */
+	src_pp_fmt = VPU_PP_IN_NV12;
+
+	/* Configure src/dst post-processor formats. */
+	reg = G1_REG_PP_CONTROL_IN_FMT(src_pp_fmt) |
+	      G1_REG_PP_CONTROL_OUT_FMT(dst_pp_fmt) |
+	      G1_REG_PP_CONTROL_OUT_HEIGHT(ctx->dst_fmt.height) |
+	      G1_REG_PP_CONTROL_OUT_WIDTH(ctx->dst_fmt.width);
+	vdpu_write_relaxed(vpu, reg, G1_REG_PP_CONTROL);
+
+	reg = G1_REG_PP_ORIG_WIDTH(MB_WIDTH(ctx->dst_fmt.width));
+	vdpu_write_relaxed(vpu, reg, G1_REG_PP_MASK1_ORIG_WIDTH);
+	vdpu_write_relaxed(vpu, ctx->dst_fmt.width, G1_REG_PP_DISPLAY_WIDTH);
+}
+
+void hantro_postproc_free(struct hantro_ctx *ctx)
+{
+	struct hantro_dev *vpu = ctx->dev;
+	unsigned int i;
+
+	for (i = 0; i < VB2_MAX_FRAME; ++i) {
+		struct hantro_aux_buf *priv = &ctx->postproc.dec_q[i];
+
+		if (priv->cpu) {
+			dma_free_attrs(vpu->dev, priv->size, priv->cpu,
+				       priv->dma, priv->attrs);
+			priv->cpu = NULL;
+		}
+	}
+}
+
+int hantro_postproc_alloc(struct hantro_ctx *ctx)
+{
+	struct hantro_dev *vpu = ctx->dev;
+	unsigned int i, buf_size;
+
+	buf_size = ctx->dst_fmt.plane_fmt[0].sizeimage;
+
+	for (i = 0; i < VB2_MAX_FRAME; ++i) {
+		struct hantro_aux_buf *priv = &ctx->postproc.dec_q[i];
+
+		priv->attrs = DMA_ATTR_NO_KERNEL_MAPPING |
+			      DMA_ATTR_WRITE_COMBINE |
+			      DMA_ATTR_NON_CONSISTENT;
+		priv->cpu = dma_alloc_attrs(vpu->dev, buf_size, &priv->dma,
+					    GFP_KERNEL, priv->attrs);
+		if (!priv->cpu)
+			return -ENOMEM;
+		priv->size = buf_size;
+	}
+	return 0;
+}
diff --git a/drivers/staging/media/hantro/hantro_v4l2.c b/drivers/staging/media/hantro/hantro_v4l2.c
index 59adecba0e85..37a9ba71afa6 100644
--- a/drivers/staging/media/hantro/hantro_v4l2.c
+++ b/drivers/staging/media/hantro/hantro_v4l2.c
@@ -242,9 +242,10 @@ static int vidioc_try_fmt(struct file *file, void *priv, struct v4l2_format *f,
 		/*
 		 * The H264 decoder needs extra space on the output buffers
 		 * to store motion vectors. This is needed for reference
-		 * frames.
+		 * frames and only if the format is non-post-processed (NV12).
 		 */
-		if (ctx->vpu_src_fmt->fourcc == V4L2_PIX_FMT_H264_SLICE)
+		if (ctx->vpu_src_fmt->fourcc == V4L2_PIX_FMT_H264_SLICE &&
+		    fmt->fourcc == V4L2_PIX_FMT_NV12)
 			pix_mp->plane_fmt[0].sizeimage +=
 				hantro_h264_buffer_extra_size(pix_mp->width,
 							      pix_mp->height);
@@ -634,10 +635,23 @@ static int hantro_start_streaming(struct vb2_queue *q, unsigned int count)
 
 		vpu_debug(4, "Codec mode = %d\n", codec_mode);
 		ctx->codec_ops = &ctx->dev->variant->codec_ops[codec_mode];
-		if (ctx->codec_ops->init)
+		if (ctx->codec_ops->init) {
 			ret = ctx->codec_ops->init(ctx);
+			if (ret)
+				return ret;
+		}
+
+		if (hantro_use_postproc(ctx)) {
+			ret = hantro_postproc_alloc(ctx);
+			if (ret)
+				goto err_codec_exit;
+		}
 	}
+	return ret;
 
+err_codec_exit:
+	if (ctx->codec_ops && ctx->codec_ops->exit)
+		ctx->codec_ops->exit(ctx);
 	return ret;
 }
 
@@ -664,6 +678,7 @@ static void hantro_stop_streaming(struct vb2_queue *q)
 	struct hantro_ctx *ctx = vb2_get_drv_priv(q);
 
 	if (hantro_vq_is_coded(q)) {
+		hantro_postproc_free(ctx);
 		if (ctx->codec_ops && ctx->codec_ops->exit)
 			ctx->codec_ops->exit(ctx);
 	}
diff --git a/drivers/staging/media/hantro/rk3288_vpu_hw.c b/drivers/staging/media/hantro/rk3288_vpu_hw.c
index c0bdd6c02520..18d6b725309b 100644
--- a/drivers/staging/media/hantro/rk3288_vpu_hw.c
+++ b/drivers/staging/media/hantro/rk3288_vpu_hw.c
@@ -59,6 +59,27 @@ static const struct hantro_fmt rk3288_vpu_enc_fmts[] = {
 static const struct hantro_fmt rk3288_vpu_dec_fmts[] = {
 	{
 		.fourcc = V4L2_PIX_FMT_NV12,
+		.dec_fourcc = V4L2_PIX_FMT_NV12,
+		.codec_mode = HANTRO_MODE_NONE,
+	},
+	{
+		.fourcc = V4L2_PIX_FMT_RGBX32,
+		.dec_fourcc = V4L2_PIX_FMT_NV12,
+		.codec_mode = HANTRO_MODE_NONE,
+	},
+	{
+		.fourcc = V4L2_PIX_FMT_XRGB32,
+		.dec_fourcc = V4L2_PIX_FMT_NV12,
+		.codec_mode = HANTRO_MODE_NONE,
+	},
+	{
+		.fourcc = V4L2_PIX_FMT_XBGR32,
+		.dec_fourcc = V4L2_PIX_FMT_NV12,
+		.codec_mode = HANTRO_MODE_NONE,
+	},
+	{
+		.fourcc = V4L2_PIX_FMT_YUYV,
+		.dec_fourcc = V4L2_PIX_FMT_NV12,
 		.codec_mode = HANTRO_MODE_NONE,
 	},
 	{
-- 
2.22.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

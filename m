Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1843112CD5
	for <lists+linux-rockchip@lfdr.de>; Fri,  3 May 2019 13:47:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SY5rNV6unCdlOPX0irvjBh3sc2obCQuBf3h2wbzG/RQ=; b=ZoljFSy/CLSOzl
	zF5Vyaxr2Ni+iWFMn1EyyorRQDvpOAP7QCyZAHXNfZtmEwcxRK8o+9dKhbGQKXXyuCk4Gru2JFnRX
	8qi4jiVvKJHDIECh+l+Nb3ch2iuKmvZbv/Q59iNG7es4JbLPT4toCiUQS2KjQPyPI6Q0MOCLTO3eN
	GEjSDFahL3LwRgvt2rBNdrTYdJepVyrqIHinFIFlAgZdO3axRidWaueDzLHHGpiHTnuf8GN8cHW1/
	QSaC5H43MRB9ZIAzuelRJwfSWs9k5HxAMxeKmd5DaJ9XslYva5QthI94r1R0eUFH4Fw80BwF/gL4F
	nrVh2q4DftxRfnC4+D0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMWfN-00038v-RQ; Fri, 03 May 2019 11:47:49 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMWf5-0002lo-RN
 for linux-rockchip@lists.infradead.org; Fri, 03 May 2019 11:47:42 +0000
Received: from localhost.localdomain (unknown
 [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 4253C283637;
 Fri,  3 May 2019 12:47:30 +0100 (BST)
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hans.verkuil@cisco.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Sakari Ailus <sakari.ailus@iki.fi>, linux-media@vger.kernel.org
Subject: [PATCH v5 13/15] rockchip/vpu: Add infra to support MPEG-2 decoding
Date: Fri,  3 May 2019 13:47:17 +0200
Message-Id: <20190503114719.28784-14-boris.brezillon@collabora.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190503114719.28784-1-boris.brezillon@collabora.com>
References: <20190503114719.28784-1-boris.brezillon@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_044732_392226_F2D63EA8 
X-CRM114-Status: GOOD (  18.87  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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

From: Jonas Karlman <jonas@kwiboo.se>

Only adds structs and helpers to allow supporting MPEG-2 decoding on
rockchip SoCs. Support for RK3399 and RK3288 will be added in separate
commits

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
--
Changes from v4:
* Define rockchip_vpu_get_ctrl() and rockchip_vpu_get_ref() prototypes
  in rockchip_vpu.h

Changes from v3:
* Coding style improvements (Jonas)
* Move RK3399 support in a separate commit

Changes from v2:
* Remove uneeded check from rockchip_vpu_get_ctrl.
* Use user negotiated resolution when programming the hardware.
---
 drivers/staging/media/rockchip/vpu/Makefile   |  3 +-
 .../staging/media/rockchip/vpu/rockchip_vpu.h | 12 ++++
 .../media/rockchip/vpu/rockchip_vpu_drv.c     | 30 +++++++++
 .../media/rockchip/vpu/rockchip_vpu_hw.h      | 14 +++++
 .../media/rockchip/vpu/rockchip_vpu_mpeg2.c   | 61 +++++++++++++++++++
 5 files changed, 119 insertions(+), 1 deletion(-)
 create mode 100644 drivers/staging/media/rockchip/vpu/rockchip_vpu_mpeg2.c

diff --git a/drivers/staging/media/rockchip/vpu/Makefile b/drivers/staging/media/rockchip/vpu/Makefile
index ae512173e7e4..dc963936b9f9 100644
--- a/drivers/staging/media/rockchip/vpu/Makefile
+++ b/drivers/staging/media/rockchip/vpu/Makefile
@@ -7,4 +7,5 @@ rockchip-vpu-y += \
 		rk3288_vpu_hw_jpeg_enc.o \
 		rk3399_vpu_hw.o \
 		rk3399_vpu_hw_jpeg_enc.o \
-		rockchip_vpu_jpeg.o
+		rockchip_vpu_jpeg.o \
+		rockchip_vpu_mpeg2.o
diff --git a/drivers/staging/media/rockchip/vpu/rockchip_vpu.h b/drivers/staging/media/rockchip/vpu/rockchip_vpu.h
index ec7557a98583..3093821440c0 100644
--- a/drivers/staging/media/rockchip/vpu/rockchip_vpu.h
+++ b/drivers/staging/media/rockchip/vpu/rockchip_vpu.h
@@ -27,6 +27,10 @@
 
 #define ROCKCHIP_VPU_MAX_CLOCKS		4
 
+#define MPEG2_MB_DIM			16
+#define MPEG2_MB_WIDTH(w)		DIV_ROUND_UP(w, MPEG2_MB_DIM)
+#define MPEG2_MB_HEIGHT(h)		DIV_ROUND_UP(h, MPEG2_MB_DIM)
+
 #define JPEG_MB_DIM			16
 #define JPEG_MB_WIDTH(w)		DIV_ROUND_UP(w, JPEG_MB_DIM)
 #define JPEG_MB_HEIGHT(h)		DIV_ROUND_UP(h, JPEG_MB_DIM)
@@ -37,6 +41,7 @@ struct rockchip_vpu_codec_ops;
 #define RK_VPU_JPEG_ENCODER	BIT(0)
 #define RK_VPU_ENCODERS		0x0000ffff
 
+#define RK_VPU_MPEG2_DECODER	BIT(16)
 #define RK_VPU_DECODERS		0xffff0000
 
 /**
@@ -76,10 +81,12 @@ struct rockchip_vpu_variant {
  * enum rockchip_vpu_codec_mode - codec operating mode.
  * @RK_VPU_MODE_NONE:  No operating mode. Used for RAW video formats.
  * @RK_VPU_MODE_JPEG_ENC: JPEG encoder.
+ * @RK_VPU_MODE_MPEG2_DEC: MPEG-2 decoder.
  */
 enum rockchip_vpu_codec_mode {
 	RK_VPU_MODE_NONE = -1,
 	RK_VPU_MODE_JPEG_ENC,
+	RK_VPU_MODE_MPEG2_DEC,
 };
 
 /*
@@ -190,6 +197,7 @@ struct rockchip_vpu_dev {
  *			calling v4l2_m2m_job_finish.
  * @codec_ops:		Set of operations related to codec mode.
  * @jpeg_enc:		JPEG-encoding context.
+ * @mpeg2_dec:		MPEG-2-decoding context.
  */
 struct rockchip_vpu_ctx {
 	struct rockchip_vpu_dev *dev;
@@ -215,6 +223,7 @@ struct rockchip_vpu_ctx {
 	/* Specific for particular codec modes. */
 	union {
 		struct rockchip_vpu_jpeg_enc_hw_ctx jpeg_enc;
+		struct rockchip_vpu_mpeg2_dec_hw_ctx mpeg2_dec;
 	};
 };
 
@@ -319,4 +328,7 @@ static inline u32 vdpu_read(struct rockchip_vpu_dev *vpu, u32 reg)
 
 bool rockchip_vpu_is_encoder_ctx(const struct rockchip_vpu_ctx *ctx);
 
+void *rockchip_vpu_get_ctrl(struct rockchip_vpu_ctx *ctx, u32 id);
+dma_addr_t rockchip_vpu_get_ref(struct vb2_queue *q, u64 ts);
+
 #endif /* ROCKCHIP_VPU_H_ */
diff --git a/drivers/staging/media/rockchip/vpu/rockchip_vpu_drv.c b/drivers/staging/media/rockchip/vpu/rockchip_vpu_drv.c
index 75104174640b..b94ff97451db 100644
--- a/drivers/staging/media/rockchip/vpu/rockchip_vpu_drv.c
+++ b/drivers/staging/media/rockchip/vpu/rockchip_vpu_drv.c
@@ -35,6 +35,24 @@ module_param_named(debug, rockchip_vpu_debug, int, 0644);
 MODULE_PARM_DESC(debug,
 		 "Debug level - higher value produces more verbose messages");
 
+void *rockchip_vpu_get_ctrl(struct rockchip_vpu_ctx *ctx, u32 id)
+{
+	struct v4l2_ctrl *ctrl;
+
+	ctrl = v4l2_ctrl_find(&ctx->ctrl_handler, id);
+	return ctrl ? ctrl->p_cur.p : NULL;
+}
+
+dma_addr_t rockchip_vpu_get_ref(struct vb2_queue *q, u64 ts)
+{
+	int index;
+
+	index = vb2_find_timestamp(q, ts, 0);
+	if (index >= 0)
+		return vb2_dma_contig_plane_dma_addr(q->bufs[index], 0);
+	return 0;
+}
+
 static int
 rockchip_vpu_enc_buf_finish(struct rockchip_vpu_ctx *ctx,
 			    struct vb2_buffer *buf,
@@ -255,6 +273,18 @@ static struct rockchip_vpu_ctrl controls[] = {
 			.step = 1,
 			.def = 50,
 		},
+	}, {
+		.id = V4L2_CID_MPEG_VIDEO_MPEG2_SLICE_PARAMS,
+		.codec = RK_VPU_MPEG2_DECODER,
+		.cfg = {
+			.elem_size = sizeof(struct v4l2_ctrl_mpeg2_slice_params),
+		},
+	}, {
+		.id = V4L2_CID_MPEG_VIDEO_MPEG2_QUANTIZATION,
+		.codec = RK_VPU_MPEG2_DECODER,
+		.cfg = {
+			.elem_size = sizeof(struct v4l2_ctrl_mpeg2_quantization),
+		},
 	},
 };
 
diff --git a/drivers/staging/media/rockchip/vpu/rockchip_vpu_hw.h b/drivers/staging/media/rockchip/vpu/rockchip_vpu_hw.h
index 46716d121538..1bdc5ceb956f 100644
--- a/drivers/staging/media/rockchip/vpu/rockchip_vpu_hw.h
+++ b/drivers/staging/media/rockchip/vpu/rockchip_vpu_hw.h
@@ -11,6 +11,7 @@
 
 #include <linux/interrupt.h>
 #include <linux/v4l2-controls.h>
+#include <media/mpeg2-ctrls.h>
 #include <media/videobuf2-core.h>
 
 struct rockchip_vpu_dev;
@@ -38,6 +39,14 @@ struct rockchip_vpu_jpeg_enc_hw_ctx {
 	struct rockchip_vpu_aux_buf bounce_buffer;
 };
 
+/**
+ * struct rockchip_vpu_mpeg2_dec_hw_ctx
+ * @qtable:		Quantization table
+ */
+struct rockchip_vpu_mpeg2_dec_hw_ctx {
+	struct rockchip_vpu_aux_buf qtable;
+};
+
 /**
  * struct rockchip_vpu_codec_ops - codec mode specific operations
  *
@@ -83,4 +92,9 @@ void rk3399_vpu_jpeg_enc_run(struct rockchip_vpu_ctx *ctx);
 int rockchip_vpu_jpeg_enc_init(struct rockchip_vpu_ctx *ctx);
 void rockchip_vpu_jpeg_enc_exit(struct rockchip_vpu_ctx *ctx);
 
+void rockchip_vpu_mpeg2_dec_copy_qtable(u8 *qtable,
+	const struct v4l2_ctrl_mpeg2_quantization *ctrl);
+int rockchip_vpu_mpeg2_dec_init(struct rockchip_vpu_ctx *ctx);
+void rockchip_vpu_mpeg2_dec_exit(struct rockchip_vpu_ctx *ctx);
+
 #endif /* ROCKCHIP_VPU_HW_H_ */
diff --git a/drivers/staging/media/rockchip/vpu/rockchip_vpu_mpeg2.c b/drivers/staging/media/rockchip/vpu/rockchip_vpu_mpeg2.c
new file mode 100644
index 000000000000..5a5b9ea1f6b5
--- /dev/null
+++ b/drivers/staging/media/rockchip/vpu/rockchip_vpu_mpeg2.c
@@ -0,0 +1,61 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Rockchip VPU codec driver
+ *
+ * Copyright (C) 2018 Rockchip Electronics Co., Ltd.
+ */
+
+#include "rockchip_vpu.h"
+
+static const u8 zigzag[64] = {
+	0,   1,  8, 16,  9,  2,  3, 10,
+	17, 24, 32, 25, 18, 11,  4,  5,
+	12, 19, 26, 33, 40, 48, 41, 34,
+	27, 20, 13,  6,  7, 14, 21, 28,
+	35, 42, 49, 56, 57, 50, 43, 36,
+	29, 22, 15, 23, 30, 37, 44, 51,
+	58, 59, 52, 45, 38, 31, 39, 46,
+	53, 60, 61, 54, 47, 55, 62, 63
+};
+
+void rockchip_vpu_mpeg2_dec_copy_qtable(u8 *qtable,
+	const struct v4l2_ctrl_mpeg2_quantization *ctrl)
+{
+	int i, n;
+
+	if (!qtable || !ctrl)
+		return;
+
+	for (i = 0; i < ARRAY_SIZE(zigzag); i++) {
+		n = zigzag[i];
+		qtable[n + 0] = ctrl->intra_quantiser_matrix[i];
+		qtable[n + 64] = ctrl->non_intra_quantiser_matrix[i];
+		qtable[n + 128] = ctrl->chroma_intra_quantiser_matrix[i];
+		qtable[n + 192] = ctrl->chroma_non_intra_quantiser_matrix[i];
+	}
+}
+
+int rockchip_vpu_mpeg2_dec_init(struct rockchip_vpu_ctx *ctx)
+{
+	struct rockchip_vpu_dev *vpu = ctx->dev;
+
+	ctx->mpeg2_dec.qtable.size = ARRAY_SIZE(zigzag) * 4;
+	ctx->mpeg2_dec.qtable.cpu =
+		dma_alloc_coherent(vpu->dev,
+				   ctx->mpeg2_dec.qtable.size,
+				   &ctx->mpeg2_dec.qtable.dma,
+				   GFP_KERNEL);
+	if (!ctx->mpeg2_dec.qtable.cpu)
+		return -ENOMEM;
+	return 0;
+}
+
+void rockchip_vpu_mpeg2_dec_exit(struct rockchip_vpu_ctx *ctx)
+{
+	struct rockchip_vpu_dev *vpu = ctx->dev;
+
+	dma_free_coherent(vpu->dev,
+			  ctx->mpeg2_dec.qtable.size,
+			  ctx->mpeg2_dec.qtable.cpu,
+			  ctx->mpeg2_dec.qtable.dma);
+}
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDE61189CCA
	for <lists+linux-rockchip@lfdr.de>; Wed, 18 Mar 2020 14:22:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2+tmT0DHi5CcJfwPu1Ehkyss5T/5c+7Im+GaAnAHiyg=; b=r8jlxt3xeLJGXb
	LZPUSgv2wBPhmNI+0F5Z0plP16DgvPTFTeM0JZQzI/44b3e4CP/O7992l6PU0s4fs2wppkh5BZFOA
	x6+4XHQZPC8nHGU9FQ5sAOmDYNYXl+ndvwWzqdPBJkD6gt+0rOIIq5gEpTzO3vrIM4sZ8nDBBZEU7
	kTx15MwZ9rEuPnXtwFBAxa4cvv0SrMoy7p0n0oP8+9i0lDjej275TFTFPDnVSOakdb/PGBK9ZICUy
	g5sZTxrI26ZzWxeJjzrnmLUQ7LfvmuLhMDgj+zjQ90yvLkqsil8Ht7ygHKpn2GRU0FvUMc6zsp10o
	lc2UvFRvVCHHgf/adT0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEYeD-0003Vv-W8; Wed, 18 Mar 2020 13:22:14 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEYeB-0003UJ-8t
 for linux-rockchip@lists.infradead.org; Wed, 18 Mar 2020 13:22:12 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 31F5629661C
From: Ezequiel Garcia <ezequiel@collabora.com>
To: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2 5/8] hantro: Move H264 motion vector calculation to a helper
Date: Wed, 18 Mar 2020 10:21:05 -0300
Message-Id: <20200318132108.21873-6-ezequiel@collabora.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200318132108.21873-1-ezequiel@collabora.com>
References: <20200318132108.21873-1-ezequiel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_062211_449623_59FA9A67 
X-CRM114-Status: GOOD (  10.95  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Rob Herring <robh@kernel.org>, Tomasz Figa <tfiga@chromium.org>,
 Heiko Stuebner <heiko@sntech.de>, Alexandre Courbot <acourbot@chromium.org>,
 Jonas Karlman <jonas@kwiboo.se>, Nicolas Dufresne <nicolas@ndufresne.ca>,
 Hans Verkuil <hverkuil@xs4all.nl>, Jeffrey Kardatzke <jkardatzke@chromium.org>,
 kernel@collabora.com, Ezequiel Garcia <ezequiel@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Move the extra bytes calculation that are needed for H264
motion vector to a helper. This is just a cosmetic cleanup.

Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
---
 drivers/staging/media/hantro/hantro.h      |  4 ---
 drivers/staging/media/hantro/hantro_hw.h   | 31 ++++++++++++++++++++++
 drivers/staging/media/hantro/hantro_v4l2.c | 25 ++---------------
 3 files changed, 33 insertions(+), 27 deletions(-)

diff --git a/drivers/staging/media/hantro/hantro.h b/drivers/staging/media/hantro/hantro.h
index 327ddef45345..2089f88a44a2 100644
--- a/drivers/staging/media/hantro/hantro.h
+++ b/drivers/staging/media/hantro/hantro.h
@@ -26,10 +26,6 @@
 
 #include "hantro_hw.h"
 
-#define MB_DIM			16
-#define MB_WIDTH(w)		DIV_ROUND_UP(w, MB_DIM)
-#define MB_HEIGHT(h)		DIV_ROUND_UP(h, MB_DIM)
-
 struct hantro_ctx;
 struct hantro_codec_ops;
 
diff --git a/drivers/staging/media/hantro/hantro_hw.h b/drivers/staging/media/hantro/hantro_hw.h
index 2398d4c1f207..435f30ae89fd 100644
--- a/drivers/staging/media/hantro/hantro_hw.h
+++ b/drivers/staging/media/hantro/hantro_hw.h
@@ -18,6 +18,10 @@
 
 #define DEC_8190_ALIGN_MASK	0x07U
 
+#define MB_DIM			16
+#define MB_WIDTH(w)		DIV_ROUND_UP(w, MB_DIM)
+#define MB_HEIGHT(h)		DIV_ROUND_UP(h, MB_DIM)
+
 struct hantro_dev;
 struct hantro_ctx;
 struct hantro_buf;
@@ -175,6 +179,33 @@ void hantro_g1_h264_dec_run(struct hantro_ctx *ctx);
 int hantro_h264_dec_init(struct hantro_ctx *ctx);
 void hantro_h264_dec_exit(struct hantro_ctx *ctx);
 
+static inline size_t
+hantro_h264_mv_size(unsigned int width, unsigned int height)
+{
+	/*
+	 * A decoded 8-bit 4:2:0 NV12 frame may need memory for up to
+	 * 448 bytes per macroblock with additional 32 bytes on
+	 * multi-core variants.
+	 *
+	 * The H264 decoder needs extra space on the output buffers
+	 * to store motion vectors. This is needed for reference
+	 * frames and only if the format is non-post-processed NV12.
+	 *
+	 * Memory layout is as follow:
+	 *
+	 * +---------------------------+
+	 * | Y-plane   256 bytes x MBs |
+	 * +---------------------------+
+	 * | UV-plane  128 bytes x MBs |
+	 * +---------------------------+
+	 * | MV buffer  64 bytes x MBs |
+	 * +---------------------------+
+	 * | MC sync          32 bytes |
+	 * +---------------------------+
+	 */
+	return 64 * MB_WIDTH(width) * MB_WIDTH(height) + 32;
+}
+
 void hantro_g1_mpeg2_dec_run(struct hantro_ctx *ctx);
 void rk3399_vpu_mpeg2_dec_run(struct hantro_ctx *ctx);
 void hantro_mpeg2_dec_copy_qtable(u8 *qtable,
diff --git a/drivers/staging/media/hantro/hantro_v4l2.c b/drivers/staging/media/hantro/hantro_v4l2.c
index 3142ab6697d5..458b502ff01b 100644
--- a/drivers/staging/media/hantro/hantro_v4l2.c
+++ b/drivers/staging/media/hantro/hantro_v4l2.c
@@ -273,32 +273,11 @@ static int vidioc_try_fmt(struct file *file, void *priv, struct v4l2_format *f,
 		/* Fill remaining fields */
 		v4l2_fill_pixfmt_mp(pix_mp, fmt->fourcc, pix_mp->width,
 				    pix_mp->height);
-		/*
-		 * A decoded 8-bit 4:2:0 NV12 frame may need memory for up to
-		 * 448 bytes per macroblock with additional 32 bytes on
-		 * multi-core variants.
-		 *
-		 * The H264 decoder needs extra space on the output buffers
-		 * to store motion vectors. This is needed for reference
-		 * frames and only if the format is non-post-processed NV12.
-		 *
-		 * Memory layout is as follow:
-		 *
-		 * +---------------------------+
-		 * | Y-plane   256 bytes x MBs |
-		 * +---------------------------+
-		 * | UV-plane  128 bytes x MBs |
-		 * +---------------------------+
-		 * | MV buffer  64 bytes x MBs |
-		 * +---------------------------+
-		 * | MC sync          32 bytes |
-		 * +---------------------------+
-		 */
 		if (ctx->vpu_src_fmt->fourcc == V4L2_PIX_FMT_H264_SLICE &&
 		    !hantro_needs_postproc(ctx, fmt))
 			pix_mp->plane_fmt[0].sizeimage +=
-				64 * MB_WIDTH(pix_mp->width) *
-				     MB_WIDTH(pix_mp->height) + 32;
+				hantro_h264_mv_size(pix_mp->width,
+						    pix_mp->height);
 	} else if (!pix_mp->plane_fmt[0].sizeimage) {
 		/*
 		 * For coded formats the application can specify
-- 
2.25.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D73B1932D3
	for <lists+linux-rockchip@lfdr.de>; Wed, 25 Mar 2020 22:35:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dEJqTALfTDLEijuiAJB2oor7KULptU1F2hJaTUTxqCk=; b=saFKgVCI3nVG0X
	AoDsCxilu9HIlXWGxA98lyra8AD/HRyydWcjsOBGrcCubr9G7TooMu+l6PpHpDjyONmeHgjPWTBk4
	c55d6eOkQMXR2wyX6TjgXGkLp4VdmXIVP8QxVggaYZnivrn8YOubZAJLjsMK8P+xhpyZFdaNuZo4a
	KB8MVa3ot9tzzVyAhmAWcgO8fHwzfkqOl0elxRcGnYFTiZGEbPxRCTcQDIRkr3EVOnaO7St1QSHqs
	VoXqvHNdQs66WWannXrX53TfAeOjMQv0iZ6CpbvoYQiLOI4PhwTcjDil4wj6hFXH7vt4sV18h6Xks
	IxDvFHik8WWXkJEIKbaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHDgU-0007rx-IM; Wed, 25 Mar 2020 21:35:34 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHDgQ-0007q3-GY
 for linux-rockchip@lists.infradead.org; Wed, 25 Mar 2020 21:35:32 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 0EDA1293ED0
From: Ezequiel Garcia <ezequiel@collabora.com>
To: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v3 6/7] hantro: Refactor for V4L2 API spec compliancy
Date: Wed, 25 Mar 2020 18:34:37 -0300
Message-Id: <20200325213439.16509-7-ezequiel@collabora.com>
X-Mailer: git-send-email 2.26.0.rc2
In-Reply-To: <20200325213439.16509-1-ezequiel@collabora.com>
References: <20200325213439.16509-1-ezequiel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_143530_818677_BB76998A 
X-CRM114-Status: GOOD (  12.72  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh@kernel.org>,
 Tomasz Figa <tfiga@chromium.org>, Heiko Stuebner <heiko@sntech.de>,
 Alexandre Courbot <acourbot@chromium.org>, Jonas Karlman <jonas@kwiboo.se>,
 Nicolas Dufresne <nicolas@ndufresne.ca>, Hans Verkuil <hverkuil@xs4all.nl>,
 devicetree@vger.kernel.org, Jeffrey Kardatzke <jkardatzke@chromium.org>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>, kernel@collabora.com,
 Ezequiel Garcia <ezequiel@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Refactor how S_FMT and TRY_FMT are handled, and also make sure
internal initial format and format reset are done properly.

The latter is achieved by making sure the same hantro_{set,try}_fmt
helpers are called on all paths that set the format (which is
part of the driver state).

This commit removes the following v4l2-compliance warnings:

test VIDIOC_G_FMT: OK
	fail: v4l2-test-formats.cpp(711): Video Capture Multiplanar: TRY_FMT(G_FMT) != G_FMT
test VIDIOC_TRY_FMT: FAIL
	fail: v4l2-test-formats.cpp(1116): Video Capture Multiplanar: S_FMT(G_FMT) != G_FMT
test VIDIOC_S_FMT: FAIL

Reported-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
---
 drivers/staging/media/hantro/hantro.h      |  3 +-
 drivers/staging/media/hantro/hantro_v4l2.c | 70 ++++++++++++++--------
 2 files changed, 47 insertions(+), 26 deletions(-)

diff --git a/drivers/staging/media/hantro/hantro.h b/drivers/staging/media/hantro/hantro.h
index 2089f88a44a2..3005207fc6fb 100644
--- a/drivers/staging/media/hantro/hantro.h
+++ b/drivers/staging/media/hantro/hantro.h
@@ -417,7 +417,8 @@ hantro_get_dst_buf(struct hantro_ctx *ctx)
 }
 
 static inline bool
-hantro_needs_postproc(struct hantro_ctx *ctx, const struct hantro_fmt *fmt)
+hantro_needs_postproc(const struct hantro_ctx *ctx,
+		      const struct hantro_fmt *fmt)
 {
 	return !hantro_is_encoder_ctx(ctx) && fmt->fourcc != V4L2_PIX_FMT_NV12;
 }
diff --git a/drivers/staging/media/hantro/hantro_v4l2.c b/drivers/staging/media/hantro/hantro_v4l2.c
index 458b502ff01b..f28a94e2fa93 100644
--- a/drivers/staging/media/hantro/hantro_v4l2.c
+++ b/drivers/staging/media/hantro/hantro_v4l2.c
@@ -30,6 +30,11 @@
 #include "hantro_hw.h"
 #include "hantro_v4l2.h"
 
+static int hantro_set_fmt_out(struct hantro_ctx *ctx,
+			      struct v4l2_pix_format_mplane *pix_mp);
+static int hantro_set_fmt_cap(struct hantro_ctx *ctx,
+			      struct v4l2_pix_format_mplane *pix_mp);
+
 static const struct hantro_fmt *
 hantro_get_formats(const struct hantro_ctx *ctx, unsigned int *num_fmts)
 {
@@ -227,12 +232,12 @@ static int vidioc_g_fmt_cap_mplane(struct file *file, void *priv,
 	return 0;
 }
 
-static int vidioc_try_fmt(struct file *file, void *priv, struct v4l2_format *f,
-			  bool capture)
+static int hantro_try_fmt(const struct hantro_ctx *ctx,
+			  struct v4l2_pix_format_mplane *pix_mp,
+			  enum v4l2_buf_type type)
 {
-	struct hantro_ctx *ctx = fh_to_ctx(priv);
-	struct v4l2_pix_format_mplane *pix_mp = &f->fmt.pix_mp;
 	const struct hantro_fmt *fmt, *vpu_fmt;
+	bool capture = !V4L2_TYPE_IS_OUTPUT(type);
 	bool coded;
 
 	coded = capture == hantro_is_encoder_ctx(ctx);
@@ -246,7 +251,7 @@ static int vidioc_try_fmt(struct file *file, void *priv, struct v4l2_format *f,
 	fmt = hantro_find_format(ctx, pix_mp->pixelformat);
 	if (!fmt) {
 		fmt = hantro_get_default_fmt(ctx, coded);
-		f->fmt.pix_mp.pixelformat = fmt->fourcc;
+		pix_mp->pixelformat = fmt->fourcc;
 	}
 
 	if (coded) {
@@ -294,13 +299,13 @@ static int vidioc_try_fmt(struct file *file, void *priv, struct v4l2_format *f,
 static int vidioc_try_fmt_cap_mplane(struct file *file, void *priv,
 				     struct v4l2_format *f)
 {
-	return vidioc_try_fmt(file, priv, f, true);
+	return hantro_try_fmt(fh_to_ctx(priv), &f->fmt.pix_mp, f->type);
 }
 
 static int vidioc_try_fmt_out_mplane(struct file *file, void *priv,
 				     struct v4l2_format *f)
 {
-	return vidioc_try_fmt(file, priv, f, false);
+	return hantro_try_fmt(fh_to_ctx(priv), &f->fmt.pix_mp, f->type);
 }
 
 static void
@@ -334,11 +339,12 @@ hantro_reset_encoded_fmt(struct hantro_ctx *ctx)
 	}
 
 	hantro_reset_fmt(fmt, vpu_fmt);
-	fmt->num_planes = 1;
 	fmt->width = vpu_fmt->frmsize.min_width;
 	fmt->height = vpu_fmt->frmsize.min_height;
-	fmt->plane_fmt[0].sizeimage = vpu_fmt->header_size +
-				fmt->width * fmt->height * vpu_fmt->max_depth;
+	if (hantro_is_encoder_ctx(ctx))
+		hantro_set_fmt_cap(ctx, fmt);
+	else
+		hantro_set_fmt_out(ctx, fmt);
 }
 
 static void
@@ -360,9 +366,12 @@ hantro_reset_raw_fmt(struct hantro_ctx *ctx)
 	}
 
 	hantro_reset_fmt(raw_fmt, raw_vpu_fmt);
-	v4l2_fill_pixfmt_mp(raw_fmt, raw_vpu_fmt->fourcc,
-			    encoded_fmt->width,
-			    encoded_fmt->height);
+	raw_fmt->width = encoded_fmt->width;
+	raw_fmt->width = encoded_fmt->width;
+	if (hantro_is_encoder_ctx(ctx))
+		hantro_set_fmt_out(ctx, raw_fmt);
+	else
+		hantro_set_fmt_cap(ctx, raw_fmt);
 }
 
 void hantro_reset_fmts(struct hantro_ctx *ctx)
@@ -388,15 +397,15 @@ hantro_update_requires_request(struct hantro_ctx *ctx, u32 fourcc)
 	}
 }
 
-static int
-vidioc_s_fmt_out_mplane(struct file *file, void *priv, struct v4l2_format *f)
+static int hantro_set_fmt_out(struct hantro_ctx *ctx,
+			      struct v4l2_pix_format_mplane *pix_mp)
 {
-	struct v4l2_pix_format_mplane *pix_mp = &f->fmt.pix_mp;
-	struct hantro_ctx *ctx = fh_to_ctx(priv);
-	struct vb2_queue *vq = v4l2_m2m_get_vq(ctx->fh.m2m_ctx, f->type);
+	struct vb2_queue *vq;
 	int ret;
 
-	ret = vidioc_try_fmt_out_mplane(file, priv, f);
+	vq = v4l2_m2m_get_vq(ctx->fh.m2m_ctx,
+			     V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE);
+	ret = hantro_try_fmt(ctx, pix_mp, V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE);
 	if (ret)
 		return ret;
 
@@ -458,16 +467,15 @@ vidioc_s_fmt_out_mplane(struct file *file, void *priv, struct v4l2_format *f)
 	return 0;
 }
 
-static int vidioc_s_fmt_cap_mplane(struct file *file, void *priv,
-				   struct v4l2_format *f)
+static int hantro_set_fmt_cap(struct hantro_ctx *ctx,
+			      struct v4l2_pix_format_mplane *pix_mp)
 {
-	struct v4l2_pix_format_mplane *pix_mp = &f->fmt.pix_mp;
-	struct hantro_ctx *ctx = fh_to_ctx(priv);
 	struct vb2_queue *vq;
 	int ret;
 
 	/* Change not allowed if queue is busy. */
-	vq = v4l2_m2m_get_vq(ctx->fh.m2m_ctx, f->type);
+	vq = v4l2_m2m_get_vq(ctx->fh.m2m_ctx,
+			     V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE);
 	if (vb2_is_busy(vq))
 		return -EBUSY;
 
@@ -488,7 +496,7 @@ static int vidioc_s_fmt_cap_mplane(struct file *file, void *priv,
 			return -EBUSY;
 	}
 
-	ret = vidioc_try_fmt_cap_mplane(file, priv, f);
+	ret = hantro_try_fmt(ctx, pix_mp, V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE);
 	if (ret)
 		return ret;
 
@@ -522,6 +530,18 @@ static int vidioc_s_fmt_cap_mplane(struct file *file, void *priv,
 	return 0;
 }
 
+static int
+vidioc_s_fmt_out_mplane(struct file *file, void *priv, struct v4l2_format *f)
+{
+	return hantro_set_fmt_out(fh_to_ctx(priv), &f->fmt.pix_mp);
+}
+
+static int
+vidioc_s_fmt_cap_mplane(struct file *file, void *priv, struct v4l2_format *f)
+{
+	return hantro_set_fmt_cap(fh_to_ctx(priv), &f->fmt.pix_mp);
+}
+
 const struct v4l2_ioctl_ops hantro_ioctl_ops = {
 	.vidioc_querycap = vidioc_querycap,
 	.vidioc_enum_framesizes = vidioc_enum_framesizes,
-- 
2.26.0.rc2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

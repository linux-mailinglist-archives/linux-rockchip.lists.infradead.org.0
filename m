Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 323EA1EFED0
	for <lists+linux-rockchip@lfdr.de>; Fri,  5 Jun 2020 19:27:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=u2A0i0k2RcqdfpIQbmh9fFf6e4URXwU2VENB+cHBBog=; b=gZUMuJ+9b8elksTvcOQjF9WdyK
	HjdAMPJODobjE7RcEj0A+LE1QXsEOiSi+5d/raDpmSLpOnoDHzTP6KoiHY+t1CHZmcR9rwVV08gRd
	Rz0E8Uuwu+Ia5qm6K422D8/Edhg/sBwRJ4SkU4aW/+ngubADaMammuVqLyT2lLOMoOhGjU5lhID2V
	vKpH9lT2omSQhnXer4buDJfkyZYmOyyY/m86vs4M2U1rVQy5R8sjv3CUbc1UylzT54+5MQa49fG6g
	z6EBAH4Yr26n9icissl5JZ/u6JlDGn1xv+osjMWUQoZGau2LZS7aG68IVb/QBY7arFNnpTv0WFUr8
	HMUb296g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhG7v-0001pf-AN; Fri, 05 Jun 2020 17:27:31 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhG7O-0001LB-Nq
 for linux-rockchip@lists.infradead.org; Fri, 05 Jun 2020 17:27:03 +0000
Received: from localhost.localdomain
 (p200300cb871f5b0030b619f331cc239b.dip0.t-ipconnect.de
 [IPv6:2003:cb:871f:5b00:30b6:19f3:31cc:239b])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: dafna)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 0813A2A507D;
 Fri,  5 Jun 2020 18:26:54 +0100 (BST)
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: linux-media@vger.kernel.org,
	laurent.pinchart@ideasonboard.com
Subject: [RFC v4 5/8] media: staging: rkisp1: allow quantization conversion
 from userspace for isp source pad
Date: Fri,  5 Jun 2020 19:26:22 +0200
Message-Id: <20200605172625.19777-6-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200605172625.19777-1-dafna.hirschfeld@collabora.com>
References: <20200605172625.19777-1-dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_102659_044444_B572C6CA 
X-CRM114-Status: GOOD (  17.35  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: mchehab@kernel.org, dafna.hirschfeld@collabora.com, p.zabel@pengutronix.de,
 dafna3@gmail.com, tfiga@chromium.org, hverkuil@xs4all.nl,
 linux-rockchip@lists.infradead.org, helen.koike@collabora.com,
 sakari.ailus@linux.intel.com, skhan@linuxfoundation.org, kernel@collabora.com,
 ezequiel@collabora.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

The isp entity has a hardware support to force full range quantization
for YUV formats. Use the CSC API to allow userspace to set the
quantization for YUV formats on the isp, resizer and capture entities.

- The flag V4L2_SUBDEV_MBUS_CODE_CSC_QUANTIZATION is set on
YUV formats during enumeration of the resizer and isp formats.
- The flag V4L2_FMT_FLAG_CSC_QUANTIZATION is set on the YUV formats
during enumeration of the capture formats.
- The full quantization is set on YUV formats if userspace ask it
on the entities using the flag V4L2_MBUS_FRAMEFMT_SET_CSC
for subdevices and the flag V4L2_PIX_FMT_FLAG_SET_CSC on for
the capture entity.

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
---
 drivers/staging/media/rkisp1/rkisp1-capture.c | 23 ++++++++++++-------
 drivers/staging/media/rkisp1/rkisp1-isp.c     | 22 ++++++++++++++----
 drivers/staging/media/rkisp1/rkisp1-resizer.c | 22 ++++++++++++++++++
 3 files changed, 55 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/media/rkisp1/rkisp1-capture.c b/drivers/staging/media/rkisp1/rkisp1-capture.c
index f69235f82c45..66856d5eb576 100644
--- a/drivers/staging/media/rkisp1/rkisp1-capture.c
+++ b/drivers/staging/media/rkisp1/rkisp1-capture.c
@@ -1085,8 +1085,6 @@ static void rkisp1_try_fmt(const struct rkisp1_capture *cap,
 			   const struct v4l2_format_info **fmt_info)
 {
 	const struct rkisp1_capture_config *config = cap->config;
-	struct rkisp1_capture *other_cap =
-			&cap->rkisp1->capture_devs[cap->id ^ 1];
 	const struct rkisp1_capture_fmt_cfg *fmt;
 	const struct v4l2_format_info *info;
 	const unsigned int max_widths[] = { RKISP1_RSZ_MP_SRC_MAX_WIDTH,
@@ -1108,16 +1106,21 @@ static void rkisp1_try_fmt(const struct rkisp1_capture *cap,
 	pixm->field = V4L2_FIELD_NONE;
 	pixm->colorspace = V4L2_COLORSPACE_DEFAULT;
 	pixm->ycbcr_enc = V4L2_YCBCR_ENC_DEFAULT;
+	pixm->xfer_func = V4L2_XFER_FUNC_DEFAULT;
 
 	info = rkisp1_fill_pixfmt(pixm, cap->id);
 
-	/* can not change quantization when stream-on */
-	if (other_cap->is_streaming)
-		pixm->quantization = other_cap->pix.fmt.quantization;
-	/* output full range by default, take effect in params */
-	else if (!pixm->quantization ||
-		 pixm->quantization > V4L2_QUANTIZATION_LIM_RANGE)
+	/*
+	 * isp has a feature to select between limited and full range for YUV
+	 * formats.
+	 * So we should also support it in the capture using the CSC API
+	 */
+	if (pixm->flags & V4L2_PIX_FMT_FLAG_SET_CSC &&
+	    pixm->quantization == V4L2_QUANTIZATION_FULL_RANGE &&
+	    v4l2_is_format_yuv(info))
 		pixm->quantization = V4L2_QUANTIZATION_FULL_RANGE;
+	else
+		pixm->quantization = V4L2_QUANTIZATION_DEFAULT;
 
 	if (fmt_cfg)
 		*fmt_cfg = fmt;
@@ -1152,12 +1155,16 @@ static int rkisp1_enum_fmt_vid_cap_mplane(struct file *file, void *priv,
 {
 	struct rkisp1_capture *cap = video_drvdata(file);
 	const struct rkisp1_capture_fmt_cfg *fmt = NULL;
+	const struct v4l2_format_info *info;
 
 	if (f->index >= cap->config->fmt_size)
 		return -EINVAL;
 
 	fmt = &cap->config->fmts[f->index];
 	f->pixelformat = fmt->fourcc;
+	info = v4l2_format_info(f->pixelformat);
+	if (v4l2_is_format_yuv(info))
+		f->flags = V4L2_FMT_FLAG_CSC_QUANTIZATION;
 
 	return 0;
 }
diff --git a/drivers/staging/media/rkisp1/rkisp1-isp.c b/drivers/staging/media/rkisp1/rkisp1-isp.c
index e66e87d6ea8b..28e0a3c594aa 100644
--- a/drivers/staging/media/rkisp1/rkisp1-isp.c
+++ b/drivers/staging/media/rkisp1/rkisp1-isp.c
@@ -591,6 +591,10 @@ static int rkisp1_isp_enum_mbus_code(struct v4l2_subdev *sd,
 
 		if (code->index == pos - 1) {
 			code->code = fmt->mbus_code;
+			if (fmt->pixel_enc == V4L2_PIXEL_ENC_YUV &&
+			    dir == RKISP1_DIR_SRC)
+				code->flags =
+					V4L2_SUBDEV_MBUS_CODE_CSC_QUANTIZATION;
 			return 0;
 		}
 	}
@@ -622,7 +626,6 @@ static int rkisp1_isp_init_config(struct v4l2_subdev *sd,
 					     RKISP1_ISP_PAD_SOURCE_VIDEO);
 	*src_fmt = *sink_fmt;
 	src_fmt->code = RKISP1_DEF_SRC_PAD_FMT;
-	src_fmt->quantization = V4L2_QUANTIZATION_FULL_RANGE;
 
 	src_crop = v4l2_subdev_get_try_crop(sd, cfg,
 					    RKISP1_ISP_PAD_SOURCE_VIDEO);
@@ -665,10 +668,21 @@ static void rkisp1_isp_set_src_fmt(struct rkisp1_isp *isp,
 		isp->src_fmt = mbus_info;
 	src_fmt->width  = src_crop->width;
 	src_fmt->height = src_crop->height;
-	src_fmt->quantization = format->quantization;
-	/* full range by default */
-	if (!src_fmt->quantization)
+
+	src_fmt->colorspace = V4L2_COLORSPACE_DEFAULT;
+	src_fmt->ycbcr_enc = V4L2_YCBCR_ENC_DEFAULT;
+	src_fmt->xfer_func = V4L2_XFER_FUNC_DEFAULT;
+
+	/*
+	 * The CSC API is used to allow userspace to force full
+	 * quantization on YUV formats.
+	 */
+	if (format->flags & V4L2_MBUS_FRAMEFMT_SET_CSC &&
+	    format->quantization == V4L2_QUANTIZATION_FULL_RANGE &&
+	    mbus_info->pixel_enc == V4L2_PIXEL_ENC_YUV)
 		src_fmt->quantization = V4L2_QUANTIZATION_FULL_RANGE;
+	else
+		src_fmt->quantization = V4L2_QUANTIZATION_DEFAULT;
 
 	*format = *src_fmt;
 }
diff --git a/drivers/staging/media/rkisp1/rkisp1-resizer.c b/drivers/staging/media/rkisp1/rkisp1-resizer.c
index fa28f4bd65c0..237cce9183f7 100644
--- a/drivers/staging/media/rkisp1/rkisp1-resizer.c
+++ b/drivers/staging/media/rkisp1/rkisp1-resizer.c
@@ -549,8 +549,30 @@ static void rkisp1_rsz_set_sink_fmt(struct rkisp1_resizer *rsz,
 	if (which == V4L2_SUBDEV_FORMAT_ACTIVE)
 		rsz->pixel_enc = mbus_info->pixel_enc;
 
+	sink_fmt->colorspace = V4L2_COLORSPACE_DEFAULT;
+	sink_fmt->ycbcr_enc = V4L2_YCBCR_ENC_DEFAULT;
+	sink_fmt->xfer_func = V4L2_XFER_FUNC_DEFAULT;
+
+	/*
+	 * isp has a feature to select between limited and full range for
+	 * YUV formats.
+	 * so we should support it in the resizer using the CSC API
+	 */
+
+	if (format->flags & V4L2_MBUS_FRAMEFMT_SET_CSC &&
+	    format->quantization == V4L2_QUANTIZATION_FULL_RANGE &&
+	    mbus_info->pixel_enc == V4L2_PIXEL_ENC_YUV)
+		sink_fmt->quantization = V4L2_QUANTIZATION_FULL_RANGE;
+	else
+		sink_fmt->quantization = V4L2_QUANTIZATION_DEFAULT;
+
 	/* Propagete to source pad */
 	src_fmt->code = sink_fmt->code;
+	src_fmt->field = sink_fmt->field;
+	src_fmt->colorspace = sink_fmt->colorspace;
+	src_fmt->ycbcr_enc = sink_fmt->ycbcr_enc;
+	src_fmt->xfer_func = sink_fmt->xfer_func;
+	src_fmt->quantization = sink_fmt->quantization;
 
 	sink_fmt->width = clamp_t(u32, format->width,
 				  rsz->config->min_rsz_width,
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

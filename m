Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD83E19FD94
	for <lists+linux-rockchip@lfdr.de>; Mon,  6 Apr 2020 20:52:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p4YkCUBskkffLp1LPSc4qph9N8kxw7fBfDL68Yh57hA=; b=ITron7Ie8l6/kK
	utGiIaCHHbXMkB48WTHu7UA5wiFr3WRy725VtZVMS5MdYLz4C8PucnXrT3gUPMyShMHCpY0C6MBYY
	PtzZwBjFBzA/vequpiXH13/58Miva7k2pCYkGsHCB/VNYSIc/avRWK/Wj6T+buQL07SH07VydaGke
	guiyILZuQsGiReySlBEjTOrxP/kmXUIZrE/0bJK30Ks9mehikMd31IcWknx300coVvtX5+UZTnza6
	3tuEQN43gzmDK6iSD1knrJKHlN0MHj+ReBUOupxNwxY+y0S/W8fR1oqJ8qhjzHc+RScRDTB/pP0If
	KEw/VevgSm7UkYBudTDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLWrX-000495-FY; Mon, 06 Apr 2020 18:52:47 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLWrS-00045Y-Gg
 for linux-rockchip@lists.infradead.org; Mon, 06 Apr 2020 18:52:44 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dafna) with ESMTPSA id E6A58296B38
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: linux-media@vger.kernel.org
Subject: [PATCH v3 3/3] media: staging: rkisp1: change fields names from
 fmt_type to pixel_enc
Date: Mon,  6 Apr 2020 20:52:35 +0200
Message-Id: <20200406185235.21238-4-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200406185235.21238-1-dafna.hirschfeld@collabora.com>
References: <20200406185235.21238-1-dafna.hirschfeld@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_115242_818163_7B6BD54D 
X-CRM114-Status: GOOD (  12.11  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: mchehab@kernel.org, dafna.hirschfeld@collabora.com, dafna3@gmail.com,
 hverkuil@xs4all.nl, linux-rockchip@lists.infradead.org,
 helen.koike@collabora.com, laurent.pinchart@ideasonboard.com,
 sakari.ailus@linux.intel.com, kernel@collabora.com, ezequiel@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

The fields 'fmt_type' in the structs
'rkisp1_rsz_config', 'rkisp1_isp_mbus_info' are of type
'v4l2_pixel_encoding' so it is nicer to change their name to
'pixel_enc'. Also change the define 'RKISP1_DEF_FMT_TYPE' to
'RKISP1_DEF_PIXEL_ENC'

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
---
 drivers/staging/media/rkisp1/rkisp1-capture.c |  2 +-
 drivers/staging/media/rkisp1/rkisp1-common.h  |  4 +-
 drivers/staging/media/rkisp1/rkisp1-isp.c     | 42 +++++++++----------
 drivers/staging/media/rkisp1/rkisp1-resizer.c | 12 +++---
 4 files changed, 30 insertions(+), 30 deletions(-)

diff --git a/drivers/staging/media/rkisp1/rkisp1-capture.c b/drivers/staging/media/rkisp1/rkisp1-capture.c
index 0bef5faf068e..fbf62399fe3d 100644
--- a/drivers/staging/media/rkisp1/rkisp1-capture.c
+++ b/drivers/staging/media/rkisp1/rkisp1-capture.c
@@ -1218,7 +1218,7 @@ static int rkisp1_capture_link_validate(struct media_link *link)
 		return -EPIPE;
 	}
 
-	if (cap->pix.info->pixel_enc != isp->src_fmt->fmt_type) {
+	if (cap->pix.info->pixel_enc != isp->src_fmt->pixel_enc) {
 		dev_err(cap->rkisp1->dev,
 			"format type mismatch in link '%s:%d->%s:%d'\n",
 			link->source->entity->name, link->source->index,
diff --git a/drivers/staging/media/rkisp1/rkisp1-common.h b/drivers/staging/media/rkisp1/rkisp1-common.h
index c8625747c279..2d7b7e078636 100644
--- a/drivers/staging/media/rkisp1/rkisp1-common.h
+++ b/drivers/staging/media/rkisp1/rkisp1-common.h
@@ -218,7 +218,7 @@ struct rkisp1_resizer {
 	struct media_pad pads[RKISP1_ISP_PAD_MAX];
 	struct v4l2_subdev_pad_config pad_cfg[RKISP1_ISP_PAD_MAX];
 	const struct rkisp1_rsz_config *config;
-	enum v4l2_pixel_encoding fmt_type;
+	enum v4l2_pixel_encoding pixel_enc;
 	struct mutex ops_lock;
 };
 
@@ -271,7 +271,7 @@ struct rkisp1_device {
  */
 struct rkisp1_isp_mbus_info {
 	u32 mbus_code;
-	enum v4l2_pixel_encoding fmt_type;
+	enum v4l2_pixel_encoding pixel_enc;
 	u32 mipi_dt;
 	u32 yuv_seq;
 	u8 bus_width;
diff --git a/drivers/staging/media/rkisp1/rkisp1-isp.c b/drivers/staging/media/rkisp1/rkisp1-isp.c
index 98a74603327a..dee8e96f3900 100644
--- a/drivers/staging/media/rkisp1/rkisp1-isp.c
+++ b/drivers/staging/media/rkisp1/rkisp1-isp.c
@@ -61,116 +61,116 @@
 static const struct rkisp1_isp_mbus_info rkisp1_isp_formats[] = {
 	{
 		.mbus_code	= MEDIA_BUS_FMT_YUYV8_2X8,
-		.fmt_type	= V4L2_PIXEL_ENC_YUV,
+		.pixel_enc	= V4L2_PIXEL_ENC_YUV,
 		.direction	= RKISP1_DIR_SRC,
 	}, {
 		.mbus_code	= MEDIA_BUS_FMT_SRGGB10_1X10,
-		.fmt_type	= V4L2_PIXEL_ENC_BAYER,
+		.pixel_enc	= V4L2_PIXEL_ENC_BAYER,
 		.mipi_dt	= RKISP1_CIF_CSI2_DT_RAW10,
 		.bayer_pat	= RKISP1_RAW_RGGB,
 		.bus_width	= 10,
 		.direction	= RKISP1_DIR_SINK_SRC,
 	}, {
 		.mbus_code	= MEDIA_BUS_FMT_SBGGR10_1X10,
-		.fmt_type	= V4L2_PIXEL_ENC_BAYER,
+		.pixel_enc	= V4L2_PIXEL_ENC_BAYER,
 		.mipi_dt	= RKISP1_CIF_CSI2_DT_RAW10,
 		.bayer_pat	= RKISP1_RAW_BGGR,
 		.bus_width	= 10,
 		.direction	= RKISP1_DIR_SINK_SRC,
 	}, {
 		.mbus_code	= MEDIA_BUS_FMT_SGBRG10_1X10,
-		.fmt_type	= V4L2_PIXEL_ENC_BAYER,
+		.pixel_enc	= V4L2_PIXEL_ENC_BAYER,
 		.mipi_dt	= RKISP1_CIF_CSI2_DT_RAW10,
 		.bayer_pat	= RKISP1_RAW_GBRG,
 		.bus_width	= 10,
 		.direction	= RKISP1_DIR_SINK_SRC,
 	}, {
 		.mbus_code	= MEDIA_BUS_FMT_SGRBG10_1X10,
-		.fmt_type	= V4L2_PIXEL_ENC_BAYER,
+		.pixel_enc	= V4L2_PIXEL_ENC_BAYER,
 		.mipi_dt	= RKISP1_CIF_CSI2_DT_RAW10,
 		.bayer_pat	= RKISP1_RAW_GRBG,
 		.bus_width	= 10,
 		.direction	= RKISP1_DIR_SINK_SRC,
 	}, {
 		.mbus_code	= MEDIA_BUS_FMT_SRGGB12_1X12,
-		.fmt_type	= V4L2_PIXEL_ENC_BAYER,
+		.pixel_enc	= V4L2_PIXEL_ENC_BAYER,
 		.mipi_dt	= RKISP1_CIF_CSI2_DT_RAW12,
 		.bayer_pat	= RKISP1_RAW_RGGB,
 		.bus_width	= 12,
 		.direction	= RKISP1_DIR_SINK_SRC,
 	}, {
 		.mbus_code	= MEDIA_BUS_FMT_SBGGR12_1X12,
-		.fmt_type	= V4L2_PIXEL_ENC_BAYER,
+		.pixel_enc	= V4L2_PIXEL_ENC_BAYER,
 		.mipi_dt	= RKISP1_CIF_CSI2_DT_RAW12,
 		.bayer_pat	= RKISP1_RAW_BGGR,
 		.bus_width	= 12,
 		.direction	= RKISP1_DIR_SINK_SRC,
 	}, {
 		.mbus_code	= MEDIA_BUS_FMT_SGBRG12_1X12,
-		.fmt_type	= V4L2_PIXEL_ENC_BAYER,
+		.pixel_enc	= V4L2_PIXEL_ENC_BAYER,
 		.mipi_dt	= RKISP1_CIF_CSI2_DT_RAW12,
 		.bayer_pat	= RKISP1_RAW_GBRG,
 		.bus_width	= 12,
 		.direction	= RKISP1_DIR_SINK_SRC,
 	}, {
 		.mbus_code	= MEDIA_BUS_FMT_SGRBG12_1X12,
-		.fmt_type	= V4L2_PIXEL_ENC_BAYER,
+		.pixel_enc	= V4L2_PIXEL_ENC_BAYER,
 		.mipi_dt	= RKISP1_CIF_CSI2_DT_RAW12,
 		.bayer_pat	= RKISP1_RAW_GRBG,
 		.bus_width	= 12,
 		.direction	= RKISP1_DIR_SINK_SRC,
 	}, {
 		.mbus_code	= MEDIA_BUS_FMT_SRGGB8_1X8,
-		.fmt_type	= V4L2_PIXEL_ENC_BAYER,
+		.pixel_enc	= V4L2_PIXEL_ENC_BAYER,
 		.mipi_dt	= RKISP1_CIF_CSI2_DT_RAW8,
 		.bayer_pat	= RKISP1_RAW_RGGB,
 		.bus_width	= 8,
 		.direction	= RKISP1_DIR_SINK_SRC,
 	}, {
 		.mbus_code	= MEDIA_BUS_FMT_SBGGR8_1X8,
-		.fmt_type	= V4L2_PIXEL_ENC_BAYER,
+		.pixel_enc	= V4L2_PIXEL_ENC_BAYER,
 		.mipi_dt	= RKISP1_CIF_CSI2_DT_RAW8,
 		.bayer_pat	= RKISP1_RAW_BGGR,
 		.bus_width	= 8,
 		.direction	= RKISP1_DIR_SINK_SRC,
 	}, {
 		.mbus_code	= MEDIA_BUS_FMT_SGBRG8_1X8,
-		.fmt_type	= V4L2_PIXEL_ENC_BAYER,
+		.pixel_enc	= V4L2_PIXEL_ENC_BAYER,
 		.mipi_dt	= RKISP1_CIF_CSI2_DT_RAW8,
 		.bayer_pat	= RKISP1_RAW_GBRG,
 		.bus_width	= 8,
 		.direction	= RKISP1_DIR_SINK_SRC,
 	}, {
 		.mbus_code	= MEDIA_BUS_FMT_SGRBG8_1X8,
-		.fmt_type	= V4L2_PIXEL_ENC_BAYER,
+		.pixel_enc	= V4L2_PIXEL_ENC_BAYER,
 		.mipi_dt	= RKISP1_CIF_CSI2_DT_RAW8,
 		.bayer_pat	= RKISP1_RAW_GRBG,
 		.bus_width	= 8,
 		.direction	= RKISP1_DIR_SINK_SRC,
 	}, {
 		.mbus_code	= MEDIA_BUS_FMT_YUYV8_1X16,
-		.fmt_type	= V4L2_PIXEL_ENC_YUV,
+		.pixel_enc	= V4L2_PIXEL_ENC_YUV,
 		.mipi_dt	= RKISP1_CIF_CSI2_DT_YUV422_8b,
 		.yuv_seq	= RKISP1_CIF_ISP_ACQ_PROP_YCBYCR,
 		.bus_width	= 16,
 		.direction	= RKISP1_DIR_SINK,
 	}, {
 		.mbus_code	= MEDIA_BUS_FMT_YVYU8_1X16,
-		.fmt_type	= V4L2_PIXEL_ENC_YUV,
+		.pixel_enc	= V4L2_PIXEL_ENC_YUV,
 		.mipi_dt	= RKISP1_CIF_CSI2_DT_YUV422_8b,
 		.yuv_seq	= RKISP1_CIF_ISP_ACQ_PROP_YCRYCB,
 		.bus_width	= 16,
 		.direction	= RKISP1_DIR_SINK,
 	}, {
 		.mbus_code	= MEDIA_BUS_FMT_UYVY8_1X16,
-		.fmt_type	= V4L2_PIXEL_ENC_YUV,
+		.pixel_enc	= V4L2_PIXEL_ENC_YUV,
 		.mipi_dt	= RKISP1_CIF_CSI2_DT_YUV422_8b,
 		.yuv_seq	= RKISP1_CIF_ISP_ACQ_PROP_CBYCRY,
 		.bus_width	= 16,
 		.direction	= RKISP1_DIR_SINK,
 	}, {
 		.mbus_code	= MEDIA_BUS_FMT_VYUY8_1X16,
-		.fmt_type	= V4L2_PIXEL_ENC_YUV,
+		.pixel_enc	= V4L2_PIXEL_ENC_YUV,
 		.mipi_dt	= RKISP1_CIF_CSI2_DT_YUV422_8b,
 		.yuv_seq	= RKISP1_CIF_ISP_ACQ_PROP_CRYCBY,
 		.bus_width	= 16,
@@ -288,9 +288,9 @@ static int rkisp1_config_isp(struct rkisp1_device *rkisp1)
 					    RKISP1_ISP_PAD_SINK_VIDEO,
 					    V4L2_SUBDEV_FORMAT_ACTIVE);
 
-	if (sink_fmt->fmt_type == V4L2_PIXEL_ENC_BAYER) {
+	if (sink_fmt->pixel_enc == V4L2_PIXEL_ENC_BAYER) {
 		acq_mult = 1;
-		if (src_fmt->fmt_type == V4L2_PIXEL_ENC_BAYER) {
+		if (src_fmt->pixel_enc == V4L2_PIXEL_ENC_BAYER) {
 			if (sensor->mbus.type == V4L2_MBUS_BT656)
 				isp_ctrl = RKISP1_CIF_ISP_CTRL_ISP_MODE_RAW_PICT_ITU656;
 			else
@@ -304,7 +304,7 @@ static int rkisp1_config_isp(struct rkisp1_device *rkisp1)
 			else
 				isp_ctrl = RKISP1_CIF_ISP_CTRL_ISP_MODE_BAYER_ITU601;
 		}
-	} else if (sink_fmt->fmt_type == V4L2_PIXEL_ENC_YUV) {
+	} else if (sink_fmt->pixel_enc == V4L2_PIXEL_ENC_YUV) {
 		acq_mult = 2;
 		if (sensor->mbus.type == V4L2_MBUS_CSI2_DPHY) {
 			isp_ctrl = RKISP1_CIF_ISP_CTRL_ISP_MODE_ITU601;
@@ -357,7 +357,7 @@ static int rkisp1_config_isp(struct rkisp1_device *rkisp1)
 		    RKISP1_CIF_ISP_PIC_SIZE_ERROR | RKISP1_CIF_ISP_FRAME_IN;
 	rkisp1_write(rkisp1, irq_mask, RKISP1_CIF_ISP_IMSC);
 
-	if (src_fmt->fmt_type == V4L2_PIXEL_ENC_BAYER) {
+	if (src_fmt->pixel_enc == V4L2_PIXEL_ENC_BAYER) {
 		rkisp1_params_disable(&rkisp1->params);
 	} else {
 		struct v4l2_mbus_framefmt *src_frm;
diff --git a/drivers/staging/media/rkisp1/rkisp1-resizer.c b/drivers/staging/media/rkisp1/rkisp1-resizer.c
index eaf28d421676..7b6b7ddd4169 100644
--- a/drivers/staging/media/rkisp1/rkisp1-resizer.c
+++ b/drivers/staging/media/rkisp1/rkisp1-resizer.c
@@ -14,7 +14,7 @@
 #define RKISP1_RSZ_MP_DEV_NAME	RKISP1_DRIVER_NAME "_resizer_mainpath"
 
 #define RKISP1_DEF_FMT MEDIA_BUS_FMT_YUYV8_2X8
-#define RKISP1_DEF_FMT_TYPE V4L2_PIXEL_ENC_YUV
+#define RKISP1_DEF_PIXEL_ENC V4L2_PIXEL_ENC_YUV
 
 #define RKISP1_MBUS_FMT_HDIV 2
 #define RKISP1_MBUS_FMT_VDIV 1
@@ -371,7 +371,7 @@ static void rkisp1_rsz_config(struct rkisp1_resizer *rsz,
 	src_fmt = rkisp1_rsz_get_pad_fmt(rsz, NULL, RKISP1_RSZ_PAD_SRC,
 					 V4L2_SUBDEV_FORMAT_ACTIVE);
 
-	if (rsz->fmt_type == V4L2_PIXEL_ENC_BAYER) {
+	if (rsz->pixel_enc == V4L2_PIXEL_ENC_BAYER) {
 		rkisp1_rsz_disable(rsz, when);
 		return;
 	}
@@ -384,7 +384,7 @@ static void rkisp1_rsz_config(struct rkisp1_resizer *rsz,
 	sink_c.width = sink_y.width / RKISP1_MBUS_FMT_HDIV;
 	sink_c.height = sink_y.height / RKISP1_MBUS_FMT_VDIV;
 
-	if (rsz->fmt_type == V4L2_PIXEL_ENC_YUV) {
+	if (rsz->pixel_enc == V4L2_PIXEL_ENC_YUV) {
 		struct rkisp1_capture *cap =
 			&rsz->rkisp1->capture_devs[rsz->id];
 		const struct v4l2_format_info *pixfmt_info =
@@ -498,7 +498,7 @@ static void rkisp1_rsz_set_sink_crop(struct rkisp1_resizer *rsz,
 	mbus_info = rkisp1_isp_mbus_info_get(sink_fmt->code);
 
 	if (rsz->id == RKISP1_MAINPATH &&
-	    mbus_info->fmt_type == V4L2_PIXEL_ENC_BAYER) {
+	    mbus_info->pixel_enc == V4L2_PIXEL_ENC_BAYER) {
 		sink_crop->left = 0;
 		sink_crop->top = 0;
 		sink_crop->width = sink_fmt->width;
@@ -537,7 +537,7 @@ static void rkisp1_rsz_set_sink_fmt(struct rkisp1_resizer *rsz,
 		mbus_info = rkisp1_isp_mbus_info_get(sink_fmt->code);
 	}
 	if (which == V4L2_SUBDEV_FORMAT_ACTIVE)
-		rsz->fmt_type = mbus_info->fmt_type;
+		rsz->pixel_enc = mbus_info->pixel_enc;
 
 	/* Propagete to source pad */
 	src_fmt->code = sink_fmt->code;
@@ -722,7 +722,7 @@ static int rkisp1_rsz_register(struct rkisp1_resizer *rsz)
 	pads[RKISP1_RSZ_PAD_SRC].flags = MEDIA_PAD_FL_SOURCE |
 					 MEDIA_PAD_FL_MUST_CONNECT;
 
-	rsz->fmt_type = RKISP1_DEF_FMT_TYPE;
+	rsz->pixel_enc = RKISP1_DEF_PIXEL_ENC;
 
 	mutex_init(&rsz->ops_lock);
 	ret = media_entity_pads_init(&sd->entity, 2, pads);
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

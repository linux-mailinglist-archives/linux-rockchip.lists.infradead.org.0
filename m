Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB950155421
	for <lists+linux-rockchip@lfdr.de>; Fri,  7 Feb 2020 10:00:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=myeAZy8t+1JmvTftfgcpOdAM2e/bL02U2SAtbTfqXR4=; b=P15eyLbHDMWfO1UcWxVZwmkhh4
	DyIuVJKpn1swxkNzC6WJ8/sL4mOBrfpeLPbLul8S0wISNEcJQcsBJbO8+yJDduzFyp27utoVMUkaF
	2LpiGS9+1UR2bP52YtxpWmiHE7wZwcs5zBDyHYCN+PZY9AY7oa3HddF7G2yDByG3ZApWj8Nf8O+va
	mkvtGKlUI56FuJC4H4fUW3wBhWhB7qccOKN4wxhM1WvMtIKdhaeScdtQhEyPAzr8kyWfaBpCSdc6Y
	qiIh3gcFZfmwgOmvOegdX6I5dXPoT07P0FgEkXAaCH1qiNFYiOrMYIMt+PAR6wj/8VHR8TmWl9bxW
	nrsSSZug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izzUq-0005G3-0W; Fri, 07 Feb 2020 09:00:20 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izzUj-0004xX-HO
 for linux-rockchip@lists.infradead.org; Fri, 07 Feb 2020 09:00:16 +0000
Received: from localhost.localdomain
 (p200300CB87166A00301E621E2266094E.dip0.t-ipconnect.de
 [IPv6:2003:cb:8716:6a00:301e:621e:2266:94e])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: dafna)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 6A27A295A89;
 Fri,  7 Feb 2020 09:00:06 +0000 (GMT)
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: linux-media@vger.kernel.org
Subject: [PATCH 3/4] media: staging: rkisp1: add serialization to the isp
 subdev ops
Date: Fri,  7 Feb 2020 09:59:50 +0100
Message-Id: <20200207085951.5226-4-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200207085951.5226-1-dafna.hirschfeld@collabora.com>
References: <20200207085951.5226-1-dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200207_010013_885880_5F24EE89 
X-CRM114-Status: GOOD (  13.89  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
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
Cc: mchehab@kernel.org, dafna.hirschfeld@collabora.com, dafna3@gmail.com,
 hverkuil@xs4all.nl, linux-rockchip@lists.infradead.org,
 helen.koike@collabora.com, sakari.ailus@linux.intel.com, kernel@collabora.com,
 ezequiel@collabora.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

For subdevices drivers, the drivers themself are responsible
for serializing their operations.
This patch adds serialization to the isp subdevice.

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
---
 drivers/staging/media/rkisp1/rkisp1-common.h |  2 ++
 drivers/staging/media/rkisp1/rkisp1-isp.c    | 29 ++++++++++++++------
 2 files changed, 23 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/media/rkisp1/rkisp1-common.h b/drivers/staging/media/rkisp1/rkisp1-common.h
index 4e773d611d1b..7c668ac4bdd5 100644
--- a/drivers/staging/media/rkisp1/rkisp1-common.h
+++ b/drivers/staging/media/rkisp1/rkisp1-common.h
@@ -96,6 +96,7 @@ struct rkisp1_sensor_async {
  * @sink_crop: crop for sink pad
  * @src_fmt: output format
  * @src_crop: output size
+ * @ops_lock: ops serialization
  *
  * @is_dphy_errctrl_disabled : if dphy errctrl is disabled (avoid endless interrupt)
  * @frame_sequence: used to synchronize frame_id between video devices.
@@ -107,6 +108,7 @@ struct rkisp1_isp {
 	struct v4l2_subdev_pad_config pad_cfg[RKISP1_ISP_PAD_MAX];
 	const struct rkisp1_isp_mbus_info *sink_fmt;
 	const struct rkisp1_isp_mbus_info *src_fmt;
+	struct mutex ops_lock;
 	bool is_dphy_errctrl_disabled;
 	atomic_t frame_sequence;
 };
diff --git a/drivers/staging/media/rkisp1/rkisp1-isp.c b/drivers/staging/media/rkisp1/rkisp1-isp.c
index c98e3c16f520..aa7a842f97f8 100644
--- a/drivers/staging/media/rkisp1/rkisp1-isp.c
+++ b/drivers/staging/media/rkisp1/rkisp1-isp.c
@@ -791,7 +791,9 @@ static int rkisp1_isp_get_fmt(struct v4l2_subdev *sd,
 {
 	struct rkisp1_isp *isp = container_of(sd, struct rkisp1_isp, sd);
 
+	mutex_lock(&isp->ops_lock);
 	fmt->format = *rkisp1_isp_get_pad_fmt(isp, cfg, fmt->pad, fmt->which);
+	mutex_unlock(&isp->ops_lock);
 	return 0;
 }
 
@@ -801,6 +803,7 @@ static int rkisp1_isp_set_fmt(struct v4l2_subdev *sd,
 {
 	struct rkisp1_isp *isp = container_of(sd, struct rkisp1_isp, sd);
 
+	mutex_lock(&isp->ops_lock);
 	if (fmt->pad == RKISP1_ISP_PAD_SINK_VIDEO)
 		rkisp1_isp_set_sink_fmt(isp, cfg, &fmt->format, fmt->which);
 	else if (fmt->pad == RKISP1_ISP_PAD_SOURCE_VIDEO)
@@ -809,6 +812,7 @@ static int rkisp1_isp_set_fmt(struct v4l2_subdev *sd,
 		fmt->format = *rkisp1_isp_get_pad_fmt(isp, cfg, fmt->pad,
 						      fmt->which);
 
+	mutex_unlock(&isp->ops_lock);
 	return 0;
 }
 
@@ -817,11 +821,13 @@ static int rkisp1_isp_get_selection(struct v4l2_subdev *sd,
 				    struct v4l2_subdev_selection *sel)
 {
 	struct rkisp1_isp *isp = container_of(sd, struct rkisp1_isp, sd);
+	int ret = 0;
 
 	if (sel->pad != RKISP1_ISP_PAD_SOURCE_VIDEO &&
 	    sel->pad != RKISP1_ISP_PAD_SINK_VIDEO)
 		return -EINVAL;
 
+	mutex_lock(&isp->ops_lock);
 	switch (sel->target) {
 	case V4L2_SEL_TGT_CROP_BOUNDS:
 		if (sel->pad == RKISP1_ISP_PAD_SINK_VIDEO) {
@@ -844,10 +850,10 @@ static int rkisp1_isp_get_selection(struct v4l2_subdev *sd,
 						  sel->which);
 		break;
 	default:
-		return -EINVAL;
+		ret = -EINVAL;
 	}
-
-	return 0;
+	mutex_unlock(&isp->ops_lock);
+	return ret;
 }
 
 static int rkisp1_isp_set_selection(struct v4l2_subdev *sd,
@@ -857,21 +863,23 @@ static int rkisp1_isp_set_selection(struct v4l2_subdev *sd,
 	struct rkisp1_device *rkisp1 =
 		container_of(sd->v4l2_dev, struct rkisp1_device, v4l2_dev);
 	struct rkisp1_isp *isp = container_of(sd, struct rkisp1_isp, sd);
+	int ret = 0;
 
 	if (sel->target != V4L2_SEL_TGT_CROP)
 		return -EINVAL;
 
 	dev_dbg(rkisp1->dev, "%s: pad: %d sel(%d,%d)/%dx%d\n", __func__,
 		sel->pad, sel->r.left, sel->r.top, sel->r.width, sel->r.height);
-
+	mutex_lock(&isp->ops_lock);
 	if (sel->pad == RKISP1_ISP_PAD_SINK_VIDEO)
 		rkisp1_isp_set_sink_crop(isp, cfg, &sel->r, sel->which);
 	else if (sel->pad == RKISP1_ISP_PAD_SOURCE_VIDEO)
 		rkisp1_isp_set_src_crop(isp, cfg, &sel->r, sel->which);
 	else
-		return -EINVAL;
+		ret = -EINVAL;
 
-	return 0;
+	mutex_unlock(&isp->ops_lock);
+	return ret;
 }
 
 static int rkisp1_subdev_link_validate(struct media_link *link)
@@ -948,6 +956,7 @@ static int rkisp1_isp_s_stream(struct v4l2_subdev *sd, int enable)
 {
 	struct rkisp1_device *rkisp1 =
 		container_of(sd->v4l2_dev, struct rkisp1_device, v4l2_dev);
+	struct rkisp1_isp *isp = &rkisp1->isp;
 	struct v4l2_subdev *sensor_sd;
 	int ret = 0;
 
@@ -967,16 +976,19 @@ static int rkisp1_isp_s_stream(struct v4l2_subdev *sd, int enable)
 		return -EINVAL;
 
 	atomic_set(&rkisp1->isp.frame_sequence, -1);
+	mutex_lock(&isp->ops_lock);
 	ret = rkisp1_config_cif(rkisp1);
 	if (ret)
-		return ret;
+		goto mutex_unlock;
 
 	ret = rkisp1_mipi_csi2_start(&rkisp1->isp, rkisp1->active_sensor);
 	if (ret)
-		return ret;
+		goto mutex_unlock;
 
 	rkisp1_isp_start(rkisp1);
 
+mutex_unlock:
+	mutex_unlock(&isp->ops_lock);
 	return ret;
 }
 
@@ -1036,6 +1048,7 @@ int rkisp1_isp_register(struct rkisp1_device *rkisp1,
 	isp->sink_fmt = rkisp1_isp_mbus_info_get(RKISP1_DEF_SINK_PAD_FMT);
 	isp->src_fmt = rkisp1_isp_mbus_info_get(RKISP1_DEF_SRC_PAD_FMT);
 
+	mutex_init(&isp->ops_lock);
 	ret = media_entity_pads_init(&sd->entity, RKISP1_ISP_PAD_MAX, pads);
 	if (ret)
 		return ret;
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

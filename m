Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CABE01A5E7B
	for <lists+linux-rockchip@lfdr.de>; Sun, 12 Apr 2020 14:05:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rS71/H0YWd4PIJLG5oKYaYQndgCTD/iVsLtQlqcSneM=; b=saRiY2tVfWZjh1
	vaGaf8wlCAc8gbX8NhOF4Qsmr6GpUr/j0uSZCSasUoixwjeY3EgcWMEvw0FyABKE27IHcjY0MPu51
	VIElITxrjfgtwEFr6wSPREh3oGWNpRs+ezHbie13SJUufExSGgy1C86MrPSxors5Xt9oTwSxqtIYz
	D8my+yx1iI/RIGSIs/6mTukYU8SUGMqaXxXDYkBM/HDJoDW1SwRouvxk2qpr6ggaTUhYfU+H/ORnl
	l4cNwLoBJRAmfUOB4seWfuQhWknGCXs9CQgZ9Y0BmtYIKPNC9YRu0r6X/4QLymsu/GG3XepS7ZIvN
	eWS0HBShwmA3sYcu0qRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNbMd-0007Dw-8D; Sun, 12 Apr 2020 12:05:27 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNbMV-00078p-GA
 for linux-rockchip@lists.infradead.org; Sun, 12 Apr 2020 12:05:22 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dafna) with ESMTPSA id 25E4E2A079A
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: linux-media@vger.kernel.org, dafna.hirschfeld@collabora.com,
 helen.koike@collabora.com, ezequiel@collabora.com, hverkuil@xs4all.nl,
 kernel@collabora.com, dafna3@gmail.com, laurent.pinchart@ideasonboard.com,
 linux-rockchip@lists.infradead.org, sakari.ailus@linux.intel.com
Subject: [PATCH v2 2/4] media: staging: rkisp1: rsz: remove redundant if
 statement and add inline doc
Date: Sun, 12 Apr 2020 14:05:02 +0200
Message-Id: <20200412120504.6536-3-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200412120504.6536-1-dafna.hirschfeld@collabora.com>
References: <20200412120504.6536-1-dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200412_050519_772619_260D91DC 
X-CRM114-Status: GOOD (  11.47  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

The statement "if (rsz->fmt_type == V4L2_PIXEL_ENC_YUV)"
can be removed since the value of rsz->fmt_type is either
V4L2_PIXEL_ENC_YUV or V4L2_PIXEL_ENC_BAYER and the function
returns if it is bayer. In addition some doc with clarification
is added.

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
---
 drivers/staging/media/rkisp1/rkisp1-resizer.c | 19 +++++++++++++------
 1 file changed, 13 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/media/rkisp1/rkisp1-resizer.c b/drivers/staging/media/rkisp1/rkisp1-resizer.c
index 84f23a91b0a0..c28919b9af44 100644
--- a/drivers/staging/media/rkisp1/rkisp1-resizer.c
+++ b/drivers/staging/media/rkisp1/rkisp1-resizer.c
@@ -365,12 +365,17 @@ static void rkisp1_rsz_config(struct rkisp1_resizer *rsz,
 	struct v4l2_rect sink_y, sink_c, src_y, src_c;
 	struct v4l2_mbus_framefmt *src_fmt;
 	struct v4l2_rect *sink_crop;
+	struct rkisp1_capture *cap = &rsz->rkisp1->capture_devs[rsz->id];
 
 	sink_crop = rkisp1_rsz_get_pad_crop(rsz, NULL, RKISP1_RSZ_PAD_SINK,
 					    V4L2_SUBDEV_FORMAT_ACTIVE);
 	src_fmt = rkisp1_rsz_get_pad_fmt(rsz, NULL, RKISP1_RSZ_PAD_SRC,
 					 V4L2_SUBDEV_FORMAT_ACTIVE);
 
+	/*
+	 * The resizer only works on yuv formats,
+	 * so return if it is bayer format.
+	 */
 	if (rsz->pixel_enc == V4L2_PIXEL_ENC_BAYER) {
 		rkisp1_rsz_disable(rsz, when);
 		return;
@@ -384,13 +389,15 @@ static void rkisp1_rsz_config(struct rkisp1_resizer *rsz,
 	sink_c.width = sink_y.width / RKISP1_MBUS_FMT_HDIV;
 	sink_c.height = sink_y.height / RKISP1_MBUS_FMT_VDIV;
 
-	if (rsz->pixel_enc == V4L2_PIXEL_ENC_YUV) {
-		struct rkisp1_capture *cap =
-			&rsz->rkisp1->capture_devs[rsz->id];
+	/*
+	 * The resizer is used not only to change the dimensions of the frame
+	 * but also to change the scale for YUV formats,
+	 * (4:2:2 -> 4:2:0 for example). So the width/height of the CbCr
+	 * streams should be set according to the pixel format in the capture.
+	 */
+	hdiv = cap->pix.info->hdiv;
+	vdiv = cap->pix.info->vdiv;
 
-		hdiv = cap->pix.info->hdiv;
-		vdiv = cap->pix.info->vdiv;
-	}
 	src_c.width = src_y.width / hdiv;
 	src_c.height = src_y.height / vdiv;
 
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

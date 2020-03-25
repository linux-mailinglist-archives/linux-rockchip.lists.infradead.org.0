Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 046EE1932A3
	for <lists+linux-rockchip@lfdr.de>; Wed, 25 Mar 2020 22:27:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9czVYkHcJja871ZBH7KF953UR54WVhd4UPdb1e6b4DU=; b=mBLcH+W+W/M5+A
	/S1MEkZmwqWc9/rsrcRsZ5QsWo9NwaMA5APfmAaMVhpF4gvXV5UQkc1Xa0AetLnJsGd5ao0XHflQ5
	fxaMfSlyvGCBd0S/1h4kJy3GPze2I21JQPeDMiMQkcP6r9B/wC2AuWIIrHxdwwagr9rfxdcfudjHN
	5f5G8Eu1gavsTKICxYgo4ZJ4jCu+mSRYCz+7RVFErUWYCsgcSQH785CPJ3nkH2tIT4pYdcQOCoydD
	ZZeQxQPYPWC2WLybKNHZ3u1hKkPKfa1AvGyXcveej3+LpZIqEhHgWLsYBSiyu0HxyTEwrgvr0bewm
	kEEUOoYvgop6f0wuJXIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHDYb-00043y-5B; Wed, 25 Mar 2020 21:27:25 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHDYU-0003zO-F7
 for linux-rockchip@lists.infradead.org; Wed, 25 Mar 2020 21:27:21 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dafna) with ESMTPSA id 22E39293A45
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: linux-media@vger.kernel.org, dafna.hirschfeld@collabora.com,
 helen.koike@collabora.com, ezequiel@collabora.com, hverkuil@xs4all.nl,
 kernel@collabora.com, dafna3@gmail.com, sakari.ailus@linux.intel.com,
 linux-rockchip@lists.infradead.org, mchehab@kernel.org,
 laurent.pinchart@ideasonboard.com
Subject: [PATCH 2/2] media: staging: rkisp1: add the flag
 MEDIA_PAD_FL_METADATA to the metadata pads
Date: Wed, 25 Mar 2020 22:27:04 +0100
Message-Id: <20200325212704.29862-3-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200325212704.29862-1-dafna.hirschfeld@collabora.com>
References: <20200325212704.29862-1-dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_142718_634435_AA5CB509 
X-CRM114-Status: GOOD (  10.91  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

The 4 pads of the links between kisp1_isp and the params
and stats entities transmit metadata. This patch
adds the flag MEDIA_PAD_FL_METADATA to those pads.
In addition it initializes the width and height of
the pads formats to 0 since metadata format has no
dimensions.

This fixes the TODO item:
"Fix pad format size for statistics and parameters entities."
So the patch also removes this item.

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
---
 drivers/staging/media/rkisp1/TODO            |  1 -
 drivers/staging/media/rkisp1/rkisp1-isp.c    | 10 ++++++----
 drivers/staging/media/rkisp1/rkisp1-params.c |  2 +-
 drivers/staging/media/rkisp1/rkisp1-stats.c  |  2 +-
 4 files changed, 8 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/media/rkisp1/TODO b/drivers/staging/media/rkisp1/TODO
index 0aa9877dd64a..c10e8cb4cc5a 100644
--- a/drivers/staging/media/rkisp1/TODO
+++ b/drivers/staging/media/rkisp1/TODO
@@ -1,7 +1,6 @@
 * Don't use v4l2_async_notifier_parse_fwnode_endpoints_by_port().
 e.g. isp_parse_of_endpoints in drivers/media/platform/omap3isp/isp.c
 cio2_parse_firmware in drivers/media/pci/intel/ipu3/ipu3-cio2.c.
-* Fix pad format size for statistics and parameters entities.
 * Use threaded interrupt for rkisp1_stats_isr(), remove work queue.
 * Fix checkpatch errors.
 * Make sure uapi structs have the same size and layout in 32 and 62 bits,
diff --git a/drivers/staging/media/rkisp1/rkisp1-isp.c b/drivers/staging/media/rkisp1/rkisp1-isp.c
index a41c6ff14009..bca9e3d1d94b 100644
--- a/drivers/staging/media/rkisp1/rkisp1-isp.c
+++ b/drivers/staging/media/rkisp1/rkisp1-isp.c
@@ -654,8 +654,8 @@ static int rkisp1_isp_init_config(struct v4l2_subdev *sd,
 					      RKISP1_ISP_PAD_SINK_PARAMS);
 	src_fmt = v4l2_subdev_get_try_format(sd, cfg,
 					     RKISP1_ISP_PAD_SOURCE_STATS);
-	sink_fmt->width = RKISP1_DEFAULT_WIDTH;
-	sink_fmt->height = RKISP1_DEFAULT_HEIGHT;
+	sink_fmt->width = 0;
+	sink_fmt->height = 0;
 	sink_fmt->field = V4L2_FIELD_NONE;
 	sink_fmt->code = MEDIA_BUS_FMT_FIXED;
 	*src_fmt = *sink_fmt;
@@ -1041,9 +1041,11 @@ int rkisp1_isp_register(struct rkisp1_device *rkisp1,
 
 	pads[RKISP1_ISP_PAD_SINK_VIDEO].flags = MEDIA_PAD_FL_SINK |
 						MEDIA_PAD_FL_MUST_CONNECT;
-	pads[RKISP1_ISP_PAD_SINK_PARAMS].flags = MEDIA_PAD_FL_SINK;
+	pads[RKISP1_ISP_PAD_SINK_PARAMS].flags =
+		MEDIA_PAD_FL_SINK | MEDIA_PAD_FL_METADATA;
 	pads[RKISP1_ISP_PAD_SOURCE_VIDEO].flags = MEDIA_PAD_FL_SOURCE;
-	pads[RKISP1_ISP_PAD_SOURCE_STATS].flags = MEDIA_PAD_FL_SOURCE;
+	pads[RKISP1_ISP_PAD_SOURCE_STATS].flags =
+		MEDIA_PAD_FL_SOURCE | MEDIA_PAD_FL_METADATA;
 
 	isp->sink_fmt = rkisp1_isp_mbus_info_get(RKISP1_DEF_SINK_PAD_FMT);
 	isp->src_fmt = rkisp1_isp_mbus_info_get(RKISP1_DEF_SRC_PAD_FMT);
diff --git a/drivers/staging/media/rkisp1/rkisp1-params.c b/drivers/staging/media/rkisp1/rkisp1-params.c
index 44d542caf32b..e934fab50262 100644
--- a/drivers/staging/media/rkisp1/rkisp1-params.c
+++ b/drivers/staging/media/rkisp1/rkisp1-params.c
@@ -1601,7 +1601,7 @@ int rkisp1_params_register(struct rkisp1_params *params,
 	rkisp1_init_params(params);
 	video_set_drvdata(vdev, params);
 
-	node->pad.flags = MEDIA_PAD_FL_SOURCE;
+	node->pad.flags = MEDIA_PAD_FL_SOURCE | MEDIA_PAD_FL_METADATA;
 	ret = media_entity_pads_init(&vdev->entity, 1, &node->pad);
 	if (ret)
 		goto err_release_queue;
diff --git a/drivers/staging/media/rkisp1/rkisp1-stats.c b/drivers/staging/media/rkisp1/rkisp1-stats.c
index 6dfcbdc3deb8..c54d69aea7de 100644
--- a/drivers/staging/media/rkisp1/rkisp1-stats.c
+++ b/drivers/staging/media/rkisp1/rkisp1-stats.c
@@ -481,7 +481,7 @@ int rkisp1_stats_register(struct rkisp1_stats *stats,
 	rkisp1_init_stats(stats);
 	video_set_drvdata(vdev, stats);
 
-	node->pad.flags = MEDIA_PAD_FL_SINK;
+	node->pad.flags = MEDIA_PAD_FL_SINK | MEDIA_PAD_FL_METADATA;
 	ret = media_entity_pads_init(&vdev->entity, 1, &node->pad);
 	if (ret)
 		goto err_release_queue;
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

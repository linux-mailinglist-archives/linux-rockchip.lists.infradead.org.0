Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBA221DE162
	for <lists+linux-rockchip@lfdr.de>; Fri, 22 May 2020 09:56:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=r+1/EmhOdgQZX7eWtZ8yFuIq6wXqmLRwGpTx+iv4BgQ=; b=fCGaduMXyk03paJW3lBiMQrPXS
	irHDzkMGcEAPPd0ocEm95yHTH/oJ65+LW3+CoeJwDAS68YMpKyRZxR6VhyJEJn3f6ht5DJR1YRMYk
	7GTFmt0weju47reB5RA1auQmydeYxcSN9QiE1qiBnJmet6PyIOT2NlOnf0nMnekFlnwDdhvLRpVPp
	IgV1yZWYfZOdfu3SYxuj75tNIs3VkqPmLTShGJxbnxFf5aMLHU19L19j8rJxXsBXwYMC5scRmE253
	GjBSgcVxwa5BiBu/Nt4lHRA75UO+X2s5VfLxgfifm267aVdEfSPTRiLHLf1i0aEKAH9R1KXz2+1av
	9mL/ehgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc2XR-0000nP-T0; Fri, 22 May 2020 07:56:17 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc2XL-0000ib-CC
 for linux-rockchip@lists.infradead.org; Fri, 22 May 2020 07:56:13 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dafna) with ESMTPSA id A660B2A356A
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: linux-media@vger.kernel.org,
	laurent.pinchart@ideasonboard.com
Subject: [PATCH v4 4/5] media: staging: rkisp1: cap: use
 v4l2_pipeline_stream_{enable, disable} helpers
Date: Fri, 22 May 2020 09:55:21 +0200
Message-Id: <20200522075522.6190-5-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200522075522.6190-1-dafna.hirschfeld@collabora.com>
References: <20200522075522.6190-1-dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_005611_670528_A3125008 
X-CRM114-Status: GOOD (  13.63  )
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
Cc: niklas.soderlund@ragnatech.se--annotate, mchehab@kernel.org,
 dafna.hirschfeld@collabora.com, dafna3@gmail.com, tfiga@chromium.org,
 hverkuil@xs4all.nl, linux-rockchip@lists.infradead.org,
 helen.koike@collabora.com, sakari.ailus@linux.intel.com,
 skhan@linuxfoundation.org, kernel@collabora.com, ezequiel@collabora.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

From: Helen Koike <helen.koike@collabora.com>

Use v4l2_pipeline_stream_{enable,disable} to call .s_stream()
subdevice callbacks through the pipeline.
Those helpers are called only if the other capture is not streaming.

If the other capture is streaming then he already did that for us
so we call s_stream only on the resizer that is connected to the
capture node.

Signed-off-by: Helen Koike <helen.koike@collabora.com>
Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
---
 drivers/staging/media/rkisp1/rkisp1-capture.c | 104 ++++++------------
 1 file changed, 32 insertions(+), 72 deletions(-)

diff --git a/drivers/staging/media/rkisp1/rkisp1-capture.c b/drivers/staging/media/rkisp1/rkisp1-capture.c
index 008c070373f8..d53a8549da77 100644
--- a/drivers/staging/media/rkisp1/rkisp1-capture.c
+++ b/drivers/staging/media/rkisp1/rkisp1-capture.c
@@ -806,71 +806,6 @@ static void rkisp1_return_all_buffers(struct rkisp1_capture *cap,
 	spin_unlock_irqrestore(&cap->buf.lock, flags);
 }
 
-/*
- * rkisp1_pipeline_sink_walk - Walk through the pipeline and call cb
- * @from: entity at which to start pipeline walk
- * @until: entity at which to stop pipeline walk
- *
- * Walk the entities chain starting at the pipeline video node and stop
- * all subdevices in the chain.
- *
- * If the until argument isn't NULL, stop the pipeline walk when reaching the
- * until entity. This is used to disable a partially started pipeline due to a
- * subdev start error.
- */
-static int rkisp1_pipeline_sink_walk(struct media_entity *from,
-				     struct media_entity *until,
-				     int (*cb)(struct media_entity *from,
-					       struct media_entity *curr))
-{
-	struct media_entity *entity = from;
-	struct media_pad *pad;
-	unsigned int i;
-	int ret;
-
-	while (1) {
-		pad = NULL;
-		/* Find remote source pad */
-		for (i = 0; i < entity->num_pads; i++) {
-			struct media_pad *spad = &entity->pads[i];
-
-			if (!(spad->flags & MEDIA_PAD_FL_SINK))
-				continue;
-			pad = media_entity_remote_pad(spad);
-			if (pad && is_media_entity_v4l2_subdev(pad->entity))
-				break;
-		}
-		if (!pad || !is_media_entity_v4l2_subdev(pad->entity))
-			break;
-
-		entity = pad->entity;
-		if (entity == until)
-			break;
-
-		ret = cb(from, entity);
-		if (ret)
-			return ret;
-	}
-
-	return 0;
-}
-
-static int rkisp1_pipeline_disable_cb(struct media_entity *from,
-				      struct media_entity *curr)
-{
-	struct v4l2_subdev *sd = media_entity_to_v4l2_subdev(curr);
-
-	return v4l2_subdev_call(sd, video, s_stream, false);
-}
-
-static int rkisp1_pipeline_enable_cb(struct media_entity *from,
-				     struct media_entity *curr)
-{
-	struct v4l2_subdev *sd = media_entity_to_v4l2_subdev(curr);
-
-	return v4l2_subdev_call(sd, video, s_stream, true);
-}
-
 static void rkisp1_stream_stop(struct rkisp1_capture *cap)
 {
 	int ret;
@@ -888,6 +823,36 @@ static void rkisp1_stream_stop(struct rkisp1_capture *cap)
 	}
 }
 
+static int rkisp1_s_stream_subdev(struct rkisp1_capture *cap, int enable)
+{
+	struct rkisp1_device *rkisp1 = cap->rkisp1;
+	struct rkisp1_capture *other = &rkisp1->capture_devs[cap->id ^ 1];
+	int ret;
+
+	/*
+	 * if the other capture is already streaming then we only need to
+	 * call s_stream of our reszier
+	 */
+	if (other->is_streaming) {
+		struct v4l2_subdev *rsz_sd  = &rkisp1->resizer_devs[cap->id].sd;
+
+		ret = v4l2_subdev_call(rsz_sd, video, s_stream, enable);
+		if (ret && ret != -ENOIOCTLCMD)
+			dev_err(rkisp1->dev,
+				"stream %s resizer '%s' failed (%d)\n",
+				enable ? "on" : "off", rsz_sd->name, ret);
+	} else {
+		if (enable)
+			ret = v4l2_pipeline_stream_enable(&cap->vnode.vdev);
+		else
+			ret = v4l2_pipeline_stream_disable(&cap->vnode.vdev);
+		if (ret < 0)
+			dev_err(rkisp1->dev, "stream subdevs %s failed %d\n",
+				enable ? "on" : "off", ret);
+	}
+	return ret;
+}
+
 static void rkisp1_vb2_stop_streaming(struct vb2_queue *queue)
 {
 	struct rkisp1_capture *cap = queue->drv_priv;
@@ -898,11 +863,7 @@ static void rkisp1_vb2_stop_streaming(struct vb2_queue *queue)
 	mutex_lock(&cap->rkisp1->stream_lock);
 
 	rkisp1_stream_stop(cap);
-	ret = rkisp1_pipeline_sink_walk(&node->vdev.entity, NULL,
-					rkisp1_pipeline_disable_cb);
-	if (ret)
-		dev_err(rkisp1->dev,
-			"pipeline stream-off failed error:%d\n", ret);
+	rkisp1_s_stream_subdev(cap, 0);
 
 	rkisp1_return_all_buffers(cap, VB2_BUF_STATE_ERROR);
 
@@ -986,8 +947,7 @@ rkisp1_vb2_start_streaming(struct vb2_queue *queue, unsigned int count)
 	rkisp1_stream_start(cap);
 
 	/* start sub-devices */
-	ret = rkisp1_pipeline_sink_walk(entity, NULL,
-					rkisp1_pipeline_enable_cb);
+	ret = rkisp1_s_stream_subdev(cap, 1);
 	if (ret)
 		goto err_stop_stream;
 
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

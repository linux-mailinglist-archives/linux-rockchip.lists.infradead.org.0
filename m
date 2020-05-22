Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CD4E1DE165
	for <lists+linux-rockchip@lfdr.de>; Fri, 22 May 2020 09:56:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=snbWFrNI/AQdB+wvFkX51NJGrKDZu6qwdzeZOPIjdWw=; b=LQfV1FmycUtNYuh8Z7WQwnMzKo
	EL3dNc8irNzb2Kn/bg3SWClp3V/PodikMiMwcNjgczz+NxRDHKHey0F4Q2uLedBKIxK5hXz+2nDP9
	TiT27bs7y7VworJ9mroYZPgGQvMz/C2C8spgllojIusHuV89TGGH6BuQWgMj07NQ8NH10z0fpz6EQ
	KPodsv3IQWbZdUOjuQycO18T9vxwi0HvLsemER/WdzUiC3gLqlsFhDd4uTpUXw3ygzkwXh/djPwo+
	KcLmJVWVebbHMa25fAOWFvHqL5PwJAOeQ+HfLH7oSZy4G38WLr+Ch8THPcEfPp0VPu63O1mNslRyr
	NqpDvJJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc2XW-0000sF-7d; Fri, 22 May 2020 07:56:22 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc2XN-0000jy-A8
 for linux-rockchip@lists.infradead.org; Fri, 22 May 2020 07:56:15 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dafna) with ESMTPSA id 673BE2A357F
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: linux-media@vger.kernel.org,
	laurent.pinchart@ideasonboard.com
Subject: [PATCH v4 5/5] media: vimc: use v4l2_pipeline_stream_{enable,
 disable} helpers
Date: Fri, 22 May 2020 09:55:22 +0200
Message-Id: <20200522075522.6190-6-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200522075522.6190-1-dafna.hirschfeld@collabora.com>
References: <20200522075522.6190-1-dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_005613_616185_C4C2D5AD 
X-CRM114-Status: GOOD (  13.34  )
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

Use v4l2_pipeline_stream_{enable,disable} to call .s_stream() subdevice
callbacks through the pipeline.

Tested streaming works with:

media-ctl -d /dev/media0 -V '"Sensor A":0[fmt:SBGGR8_1X8/640x480]'
media-ctl -d /dev/media0 -V '"Debayer A":0[fmt:SBGGR8_1X8/640x480]'
media-ctl -d /dev/media0 -V '"Sensor B":0[fmt:SBGGR8_1X8/640x480]'
media-ctl -d /dev/media0 -V '"Debayer B":0[fmt:SBGGR8_1X8/640x480]'
media-ctl -d /dev/media0 -V '"Scaler":0[fmt:RGB888_1X24/640x480]'
media-ctl -d /dev/media0 -V '"Scaler":0[crop:(100,50)/400x150]'
media-ctl -d /dev/media0 -V '"Scaler":1[fmt:RGB888_1X24/1920x1440]'
v4l2-ctl -d /dev/video2 -v width=1200,height=450
v4l2-ctl -d /dev/video0 -v pixelformat=BA81
v4l2-ctl -d /dev/video1 -v pixelformat=BA81
v4l2-ctl --stream-mmap --stream-count=10 -d /dev/video2 --stream-to=/tmp/test.raw

Signed-off-by: Helen Koike <helen.koike@collabora.com>
Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
---
 .../media/test-drivers/vimc/vimc-capture.c    | 31 ++++++++----
 .../media/test-drivers/vimc/vimc-streamer.c   | 49 ++-----------------
 2 files changed, 26 insertions(+), 54 deletions(-)

diff --git a/drivers/media/test-drivers/vimc/vimc-capture.c b/drivers/media/test-drivers/vimc/vimc-capture.c
index c63496b17b9a..36ba664db092 100644
--- a/drivers/media/test-drivers/vimc/vimc-capture.c
+++ b/drivers/media/test-drivers/vimc/vimc-capture.c
@@ -245,21 +245,27 @@ static int vimc_cap_start_streaming(struct vb2_queue *vq, unsigned int count)
 
 	vcap->sequence = 0;
 
-	/* Start the media pipeline */
 	ret = media_pipeline_start(entity, &vcap->stream.pipe);
-	if (ret) {
-		vimc_cap_return_all_buffers(vcap, VB2_BUF_STATE_QUEUED);
-		return ret;
-	}
+	if (ret)
+		goto err_return_all_buffers;
+
+	ret = v4l2_pipeline_stream_enable(&vcap->vdev);
+	if (ret)
+		goto err_stop_media_pipe;
 
 	ret = vimc_streamer_s_stream(&vcap->stream, &vcap->ved, 1);
-	if (ret) {
-		media_pipeline_stop(entity);
-		vimc_cap_return_all_buffers(vcap, VB2_BUF_STATE_QUEUED);
-		return ret;
-	}
+	if (ret)
+		goto err_stop_stream;
 
 	return 0;
+
+err_stop_stream:
+	v4l2_pipeline_stream_disable(&vcap->vdev);
+err_stop_media_pipe:
+	media_pipeline_stop(entity);
+err_return_all_buffers:
+	vimc_cap_return_all_buffers(vcap, VB2_BUF_STATE_QUEUED);
+	return ret;
 }
 
 /*
@@ -269,9 +275,14 @@ static int vimc_cap_start_streaming(struct vb2_queue *vq, unsigned int count)
 static void vimc_cap_stop_streaming(struct vb2_queue *vq)
 {
 	struct vimc_cap_device *vcap = vb2_get_drv_priv(vq);
+	int ret;
 
 	vimc_streamer_s_stream(&vcap->stream, &vcap->ved, 0);
 
+	ret = v4l2_pipeline_stream_disable(&vcap->vdev);
+	if (ret)
+		dev_err(vcap->ved.dev, "stream disable failed: %d\n", ret);
+
 	/* Stop the media pipeline */
 	media_pipeline_stop(&vcap->vdev.entity);
 
diff --git a/drivers/media/test-drivers/vimc/vimc-streamer.c b/drivers/media/test-drivers/vimc/vimc-streamer.c
index 65feb3c596db..c0085f4695c2 100644
--- a/drivers/media/test-drivers/vimc/vimc-streamer.c
+++ b/drivers/media/test-drivers/vimc/vimc-streamer.c
@@ -36,33 +36,6 @@ static struct media_entity *vimc_get_source_entity(struct media_entity *ent)
 	return NULL;
 }
 
-/**
- * vimc_streamer_pipeline_terminate - Disable stream in all ved in stream
- *
- * @stream: the pointer to the stream structure with the pipeline to be
- *	    disabled.
- *
- * Calls s_stream to disable the stream in each entity of the pipeline
- *
- */
-static void vimc_streamer_pipeline_terminate(struct vimc_stream *stream)
-{
-	struct vimc_ent_device *ved;
-	struct v4l2_subdev *sd;
-
-	while (stream->pipe_size) {
-		stream->pipe_size--;
-		ved = stream->ved_pipeline[stream->pipe_size];
-		stream->ved_pipeline[stream->pipe_size] = NULL;
-
-		if (!is_media_entity_v4l2_subdev(ved->ent))
-			continue;
-
-		sd = media_entity_to_v4l2_subdev(ved->ent);
-		v4l2_subdev_call(sd, video, s_stream, 0);
-	}
-}
-
 /**
  * vimc_streamer_pipeline_init - Initializes the stream structure
  *
@@ -82,27 +55,15 @@ static int vimc_streamer_pipeline_init(struct vimc_stream *stream,
 	struct media_entity *entity;
 	struct video_device *vdev;
 	struct v4l2_subdev *sd;
-	int ret = 0;
 
 	stream->pipe_size = 0;
 	while (stream->pipe_size < VIMC_STREAMER_PIPELINE_MAX_SIZE) {
 		if (!ved) {
-			vimc_streamer_pipeline_terminate(stream);
+			stream->pipe_size = 0;
 			return -EINVAL;
 		}
 		stream->ved_pipeline[stream->pipe_size++] = ved;
 
-		if (is_media_entity_v4l2_subdev(ved->ent)) {
-			sd = media_entity_to_v4l2_subdev(ved->ent);
-			ret = v4l2_subdev_call(sd, video, s_stream, 1);
-			if (ret && ret != -ENOIOCTLCMD) {
-				dev_err(ved->dev, "subdev_call error %s\n",
-					ved->ent->name);
-				vimc_streamer_pipeline_terminate(stream);
-				return ret;
-			}
-		}
-
 		entity = vimc_get_source_entity(ved->ent);
 		/* Check if the end of the pipeline was reached */
 		if (!entity) {
@@ -111,7 +72,7 @@ static int vimc_streamer_pipeline_init(struct vimc_stream *stream,
 				dev_err(ved->dev,
 					"first entity in the pipe '%s' is not a source\n",
 					ved->ent->name);
-				vimc_streamer_pipeline_terminate(stream);
+				stream->pipe_size = 0;
 				return -EPIPE;
 			}
 			return 0;
@@ -129,7 +90,7 @@ static int vimc_streamer_pipeline_init(struct vimc_stream *stream,
 		}
 	}
 
-	vimc_streamer_pipeline_terminate(stream);
+	stream->pipe_size = 0;
 	return -EINVAL;
 }
 
@@ -210,7 +171,7 @@ int vimc_streamer_s_stream(struct vimc_stream *stream,
 		if (IS_ERR(stream->kthread)) {
 			ret = PTR_ERR(stream->kthread);
 			dev_err(ved->dev, "kthread_run failed with %d\n", ret);
-			vimc_streamer_pipeline_terminate(stream);
+			stream->pipe_size = 0;
 			stream->kthread = NULL;
 			return ret;
 		}
@@ -231,7 +192,7 @@ int vimc_streamer_s_stream(struct vimc_stream *stream,
 
 		stream->kthread = NULL;
 
-		vimc_streamer_pipeline_terminate(stream);
+		stream->pipe_size = 0;
 	}
 
 	return 0;
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

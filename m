Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5681A19E061
	for <lists+linux-rockchip@lfdr.de>; Fri,  3 Apr 2020 23:33:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h+a+hiqPVRUUoZWORis10jJU0fqEkQVPXEzVJP3RbHM=; b=EdDNFbc2AO+tLu
	5OJBC9ThoWtM977O9qhByhP8odxJ4Ji+hdYZCW4VuiiDfaZ8B/13qGlYU8md/4+v4B4eSOW3qqUsf
	lvOO7HlbMj+4yaTacmS7Yu54LzZZ6ZjrvHcl9UG6ihwI+02Jp0MG1HaqB/qsN1LdIsXgYquEXDtO8
	5NIFHUZIxngPwaMhu1+4AEpEgwkCP+s3IYp2xIOT0RzE4/qv3yP2GXBzyrSTkgMjkCHEoqsKpaFJi
	Nmagu7sSF7ba2exC6AF3sErJ2IB5LDKSZ7zQRn34YXWP2HGaN9RnkbJ0JlHEeMhwG9E9F1Zt5kfiZ
	1vajA/Fpr9IvEpVt1ZtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKTwk-0006Ln-IB; Fri, 03 Apr 2020 21:33:50 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKTwg-0006K1-KG
 for linux-rockchip@lists.infradead.org; Fri, 03 Apr 2020 21:33:48 +0000
Received: from floko.floko.floko (unknown
 [IPv6:2804:431:e7cc:11ff:4f80:3de:e2b2:5c1d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: koike)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 66D34298779;
 Fri,  3 Apr 2020 22:33:40 +0100 (BST)
From: Helen Koike <helen.koike@collabora.com>
To: linux-media@vger.kernel.org
Subject: [PATCH v2 3/3] media: vimc: use v4l2_pipeline_stream_{enable,
 disable} helpers
Date: Fri,  3 Apr 2020 18:33:12 -0300
Message-Id: <20200403213312.1863876-4-helen.koike@collabora.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200403213312.1863876-1-helen.koike@collabora.com>
References: <20200403213312.1863876-1-helen.koike@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_143346_945530_EA6A284A 
X-CRM114-Status: GOOD (  15.56  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: mchehab@kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Helen Koike <helen.koike@collabora.com>,
 hans.verkuil@cisco.com, skhan@linuxfoundation.org,
 niklas.soderlund@ragnatech.se, kernel@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

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

---

Changes in v2:
- rebase on top of new helpers prototypes

 drivers/media/platform/vimc/vimc-capture.c  | 28 +++++++-----
 drivers/media/platform/vimc/vimc-streamer.c | 49 +++------------------
 2 files changed, 23 insertions(+), 54 deletions(-)

diff --git a/drivers/media/platform/vimc/vimc-capture.c b/drivers/media/platform/vimc/vimc-capture.c
index 23e740c1c5c00..2206bfdec1c32 100644
--- a/drivers/media/platform/vimc/vimc-capture.c
+++ b/drivers/media/platform/vimc/vimc-capture.c
@@ -233,21 +233,27 @@ static int vimc_cap_start_streaming(struct vb2_queue *vq, unsigned int count)
 
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
@@ -260,6 +266,8 @@ static void vimc_cap_stop_streaming(struct vb2_queue *vq)
 
 	vimc_streamer_s_stream(&vcap->stream, &vcap->ved, 0);
 
+	v4l2_pipeline_stream_disable(&vcap->vdev);
+
 	/* Stop the media pipeline */
 	media_pipeline_stop(&vcap->vdev.entity);
 
diff --git a/drivers/media/platform/vimc/vimc-streamer.c b/drivers/media/platform/vimc/vimc-streamer.c
index 65feb3c596db5..c0085f4695c2f 100644
--- a/drivers/media/platform/vimc/vimc-streamer.c
+++ b/drivers/media/platform/vimc/vimc-streamer.c
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
2.26.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

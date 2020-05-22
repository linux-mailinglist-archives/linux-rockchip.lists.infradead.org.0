Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97F6B1DE15E
	for <lists+linux-rockchip@lfdr.de>; Fri, 22 May 2020 09:56:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=nBwnUpfDeIwQdVTqCRK/kA/78b836C+I2x1XwXXjf2w=; b=iOigxMG56blLQ6noIgzHkxleKA
	x/se/x+sJqWp7iynpdpJIXpdiuVNITxapagfTi/jZebyNcDuiiy6EezEXM6sQcoB9CINIWHKjc0Fd
	6yLpQzJJpZK9ssT0GCqL7noTJkO5+Z6nM2kjVIeQX8WgzuhwhLUXAc/D8EU47+mJv+pGLPVsXD1AD
	Od6xUsLzQhb4uee2WdfUk6gniYIaY/CmcfPdB/Vz214/ubVazO5M1jk+iU6E/dSpf74nGCWEktT/p
	aokfphs0t7p4kkWQUIEl9FZOfn5mx4rZeICI+1wJNTt4dn+VRTNmpTQQSn1pAunx6XN2ZMIiEwfxH
	iodtTYRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc2XN-0000k0-UF; Fri, 22 May 2020 07:56:13 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc2XK-0000iY-Kb
 for linux-rockchip@lists.infradead.org; Fri, 22 May 2020 07:56:12 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dafna) with ESMTPSA id D13712A3550
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: linux-media@vger.kernel.org,
	laurent.pinchart@ideasonboard.com
Subject: [PATCH v4 3/5] media: staging: rkisp1: validate links before powering
 and streaming
Date: Fri, 22 May 2020 09:55:20 +0200
Message-Id: <20200522075522.6190-4-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200522075522.6190-1-dafna.hirschfeld@collabora.com>
References: <20200522075522.6190-1-dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_005610_804923_FCF5CBA2 
X-CRM114-Status: UNSURE (   8.71  )
X-CRM114-Notice: Please train this message.
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

In function rkisp1_vb2_start_streaming, the call to
media_pipeline_start should be the first thing in order
to validate the links and prevents their state from being modified
before power up and streaming.

Adjust stop streaming to the same logic, call media_pipeline_stop
after we disable streaming on the entities in the topology.

Signed-off-by: Helen Koike <helen.koike@collabora.com>
Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
---
 drivers/staging/media/rkisp1/rkisp1-capture.c | 21 ++++++++++---------
 1 file changed, 11 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/media/rkisp1/rkisp1-capture.c b/drivers/staging/media/rkisp1/rkisp1-capture.c
index f69235f82c45..008c070373f8 100644
--- a/drivers/staging/media/rkisp1/rkisp1-capture.c
+++ b/drivers/staging/media/rkisp1/rkisp1-capture.c
@@ -898,7 +898,6 @@ static void rkisp1_vb2_stop_streaming(struct vb2_queue *queue)
 	mutex_lock(&cap->rkisp1->stream_lock);
 
 	rkisp1_stream_stop(cap);
-	media_pipeline_stop(&node->vdev.entity);
 	ret = rkisp1_pipeline_sink_walk(&node->vdev.entity, NULL,
 					rkisp1_pipeline_disable_cb);
 	if (ret)
@@ -914,6 +913,8 @@ static void rkisp1_vb2_stop_streaming(struct vb2_queue *queue)
 
 	rkisp1_dummy_buf_destroy(cap);
 
+	media_pipeline_stop(&node->vdev.entity);
+
 	mutex_unlock(&cap->rkisp1->stream_lock);
 }
 
@@ -961,9 +962,15 @@ rkisp1_vb2_start_streaming(struct vb2_queue *queue, unsigned int count)
 
 	mutex_lock(&cap->rkisp1->stream_lock);
 
+	ret = media_pipeline_start(entity, &cap->rkisp1->pipe);
+	if (ret) {
+		dev_err(cap->rkisp1->dev, "start pipeline failed %d\n", ret);
+		goto err_ret_buffers;
+	}
+
 	ret = rkisp1_dummy_buf_create(cap);
 	if (ret)
-		goto err_ret_buffers;
+		goto err_pipeline_stop;
 
 	ret = pm_runtime_get_sync(cap->rkisp1->dev);
 	if (ret < 0) {
@@ -984,18 +991,10 @@ rkisp1_vb2_start_streaming(struct vb2_queue *queue, unsigned int count)
 	if (ret)
 		goto err_stop_stream;
 
-	ret = media_pipeline_start(entity, &cap->rkisp1->pipe);
-	if (ret) {
-		dev_err(cap->rkisp1->dev, "start pipeline failed %d\n", ret);
-		goto err_pipe_disable;
-	}
-
 	mutex_unlock(&cap->rkisp1->stream_lock);
 
 	return 0;
 
-err_pipe_disable:
-	rkisp1_pipeline_sink_walk(entity, NULL, rkisp1_pipeline_disable_cb);
 err_stop_stream:
 	rkisp1_stream_stop(cap);
 	v4l2_pipeline_pm_put(entity);
@@ -1003,6 +1002,8 @@ rkisp1_vb2_start_streaming(struct vb2_queue *queue, unsigned int count)
 	pm_runtime_put(cap->rkisp1->dev);
 err_destroy_dummy:
 	rkisp1_dummy_buf_destroy(cap);
+err_pipeline_stop:
+	media_pipeline_stop(entity);
 err_ret_buffers:
 	rkisp1_return_all_buffers(cap, VB2_BUF_STATE_QUEUED);
 	mutex_unlock(&cap->rkisp1->stream_lock);
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

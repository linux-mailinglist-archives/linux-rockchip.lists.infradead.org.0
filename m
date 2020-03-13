Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A43D183ECA
	for <lists+linux-rockchip@lfdr.de>; Fri, 13 Mar 2020 02:46:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l/QiDYY3PAs6aU+JHHmQiA3f9T0gKC/vVCHYmpcmyeY=; b=C0KBEfG8KfhOVo
	Ih8U19C0NCCzIkw+YAWYxCeisU+hskE2iI7wjKy1BxvGeWYB2bMJ4L40ZLHg0sZpZDNs1LwRUvn6d
	brKOzDJTTgV7dCRlkidsM7LH+5f3W/+ceLp6uhw+VMUoNB0taR7z1HqPOWjqDkqd+xK4GKNQFt7Br
	XnUGSi2anmy5zrDNnr9FOxU19GQeZCirC9gtlQyoixQgzWcSh6rZZjGrek/g5rxcV9USH93sZLBiI
	6WdnVVWyxvXvd47C70NjuUDZ6euNU2/ZMBJXD0pK2Jy0uhL3ICxEqGTsk6c93jI4Pkit1VJfoz9Is
	nXOAZafuijgciQmkfwdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCZPb-0002w1-8g; Fri, 13 Mar 2020 01:46:55 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCZPX-0002sQ-GT
 for linux-rockchip@lists.infradead.org; Fri, 13 Mar 2020 01:46:53 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: koike) with ESMTPSA id E643B28DA67
From: Helen Koike <helen.koike@collabora.com>
To: linux-media@vger.kernel.org
Subject: [PATCH 3/3] media: staging: rkisp1: cap: serialize start/stop stream
Date: Thu, 12 Mar 2020 22:46:26 -0300
Message-Id: <20200313014626.3103091-4-helen.koike@collabora.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200313014626.3103091-1-helen.koike@collabora.com>
References: <20200313014626.3103091-1-helen.koike@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_184651_696352_768115EE 
X-CRM114-Status: UNSURE (   8.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: mchehab@kernel.org, linux-kernel@vger.kernel.org, tfiga@chromium.org,
 linux-rockchip@lists.infradead.org, Helen Koike <helen.koike@collabora.com>,
 hans.verkuil@cisco.com, kernel@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

In order to support simultaneous streaming from both capture devices,
start/stop vb2 calls need to be serialized to allow multiple concurrent
calls.

This is required to synchronize who starts/stops the shared entities in
the pipeline.

Signed-off-by: Helen Koike <helen.koike@collabora.com>

---

 drivers/staging/media/rkisp1/rkisp1-capture.c | 9 +++++++++
 drivers/staging/media/rkisp1/rkisp1-common.h  | 2 ++
 drivers/staging/media/rkisp1/rkisp1-dev.c     | 2 ++
 3 files changed, 13 insertions(+)

diff --git a/drivers/staging/media/rkisp1/rkisp1-capture.c b/drivers/staging/media/rkisp1/rkisp1-capture.c
index e665381b5af0..30d7a72aa554 100644
--- a/drivers/staging/media/rkisp1/rkisp1-capture.c
+++ b/drivers/staging/media/rkisp1/rkisp1-capture.c
@@ -935,6 +935,8 @@ static void rkisp1_vb2_stop_streaming(struct vb2_queue *queue)
 	struct rkisp1_device *rkisp1 = cap->rkisp1;
 	int ret;
 
+	mutex_lock(&cap->rkisp1->stream_lock);
+
 	rkisp1_stream_stop(cap);
 	media_pipeline_stop(&node->vdev.entity);
 	ret = rkisp1_pipeline_sink_walk(&node->vdev.entity, NULL,
@@ -954,6 +956,8 @@ static void rkisp1_vb2_stop_streaming(struct vb2_queue *queue)
 		dev_err(rkisp1->dev, "power down failed error:%d\n", ret);
 
 	rkisp1_dummy_buf_destroy(cap);
+
+	mutex_unlock(&cap->rkisp1->stream_lock);
 }
 
 /*
@@ -998,6 +1002,8 @@ rkisp1_vb2_start_streaming(struct vb2_queue *queue, unsigned int count)
 	struct media_entity *entity = &cap->vnode.vdev.entity;
 	int ret;
 
+	mutex_lock(&cap->rkisp1->stream_lock);
+
 	ret = rkisp1_dummy_buf_create(cap);
 	if (ret)
 		goto err_ret_buffers;
@@ -1027,6 +1033,8 @@ rkisp1_vb2_start_streaming(struct vb2_queue *queue, unsigned int count)
 		goto err_pipe_disable;
 	}
 
+	mutex_unlock(&cap->rkisp1->stream_lock);
+
 	return 0;
 
 err_pipe_disable:
@@ -1040,6 +1048,7 @@ rkisp1_vb2_start_streaming(struct vb2_queue *queue, unsigned int count)
 	rkisp1_dummy_buf_destroy(cap);
 err_ret_buffers:
 	rkisp1_return_all_buffers(cap, VB2_BUF_STATE_QUEUED);
+	mutex_unlock(&cap->rkisp1->stream_lock);
 
 	return ret;
 }
diff --git a/drivers/staging/media/rkisp1/rkisp1-common.h b/drivers/staging/media/rkisp1/rkisp1-common.h
index 369a401b098a..f74fca3985e3 100644
--- a/drivers/staging/media/rkisp1/rkisp1-common.h
+++ b/drivers/staging/media/rkisp1/rkisp1-common.h
@@ -244,6 +244,7 @@ struct rkisp1_debug {
  * @rkisp1_capture: capture video device
  * @stats: ISP statistics output device
  * @params: ISP input parameters device
+ * @stream_lock: lock to serialize start/stop streaming in capture devices.
  */
 struct rkisp1_device {
 	void __iomem *base_addr;
@@ -263,6 +264,7 @@ struct rkisp1_device {
 	struct rkisp1_params params;
 	struct media_pipeline pipe;
 	struct vb2_alloc_ctx *alloc_ctx;
+	struct mutex stream_lock;
 	struct rkisp1_debug debug;
 };
 
diff --git a/drivers/staging/media/rkisp1/rkisp1-dev.c b/drivers/staging/media/rkisp1/rkisp1-dev.c
index 558126e66465..2977c494925f 100644
--- a/drivers/staging/media/rkisp1/rkisp1-dev.c
+++ b/drivers/staging/media/rkisp1/rkisp1-dev.c
@@ -472,6 +472,8 @@ static int rkisp1_probe(struct platform_device *pdev)
 	dev_set_drvdata(dev, rkisp1);
 	rkisp1->dev = dev;
 
+	mutex_init(&rkisp1->stream_lock);
+
 	rkisp1->base_addr = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(rkisp1->base_addr))
 		return PTR_ERR(rkisp1->base_addr);
-- 
2.25.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

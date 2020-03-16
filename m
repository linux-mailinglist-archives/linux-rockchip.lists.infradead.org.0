Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6A80187468
	for <lists+linux-rockchip@lfdr.de>; Mon, 16 Mar 2020 22:01:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ThkCDFhQAjbAaYQZftVOigotIbQwEu/w65mfOF5DqsU=; b=NUS5UQmZBTEJgv
	jgWqiBiHeLScTP2vM+zwbxb2RwJyVS4Sq7B+CqqhxUZ/x21OqHk0o8O+WfdV8qYl23WxNefoVDJrf
	XGaHMQERZY8IWUTo27EWoKQUZtXG6LlaYvqGYOA/ZNpmEs6rJLoArcshIpSJO0lohSSrRbbU3XihN
	WxlMjiOF7NEjARz3saoyTBEt4DqaHoTvmSJd9Xpd2hRexsfE/RJAfixlgy586jU0uHz6b7YngU2gx
	2BD2sEa722oASKkPnJDnT9ptvClVDlOEVvqCE3EFUI44z9/672JSNaY5QJAI4nEFhCXekSxp5Z+Uq
	YuOLqUY4gP/Hm/iIEdwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDwrA-0003nm-R8; Mon, 16 Mar 2020 21:01:04 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDwr7-0003ki-PG
 for linux-rockchip@lists.infradead.org; Mon, 16 Mar 2020 21:01:03 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: koike) with ESMTPSA id 377FC28A3BA
From: Helen Koike <helen.koike@collabora.com>
To: linux-media@vger.kernel.org
Subject: [PATCH v2 2/2] media: staging: rkisp1: cap: serialize start/stop
 stream
Date: Mon, 16 Mar 2020 18:00:44 -0300
Message-Id: <20200316210044.595312-3-helen.koike@collabora.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200316210044.595312-1-helen.koike@collabora.com>
References: <20200316210044.595312-1-helen.koike@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_140101_955377_00C533B6 
X-CRM114-Status: UNSURE (   8.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
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

Signed-off-by: Helen Koike <helen.koike@collabora.com>
---

Changes in v2:
- Rebased with media/master

 drivers/staging/media/rkisp1/rkisp1-capture.c | 9 +++++++++
 drivers/staging/media/rkisp1/rkisp1-common.h  | 2 ++
 drivers/staging/media/rkisp1/rkisp1-dev.c     | 2 ++
 3 files changed, 13 insertions(+)

diff --git a/drivers/staging/media/rkisp1/rkisp1-capture.c b/drivers/staging/media/rkisp1/rkisp1-capture.c
index 967bd05b4507..f3c4f2a198ca 100644
--- a/drivers/staging/media/rkisp1/rkisp1-capture.c
+++ b/drivers/staging/media/rkisp1/rkisp1-capture.c
@@ -927,6 +927,8 @@ static void rkisp1_vb2_stop_streaming(struct vb2_queue *queue)
 	struct rkisp1_device *rkisp1 = cap->rkisp1;
 	int ret;
 
+	mutex_lock(&cap->rkisp1->stream_lock);
+
 	rkisp1_stream_stop(cap);
 	media_pipeline_stop(&node->vdev.entity);
 	ret = rkisp1_pipeline_sink_walk(&node->vdev.entity, NULL,
@@ -943,6 +945,8 @@ static void rkisp1_vb2_stop_streaming(struct vb2_queue *queue)
 		dev_err(rkisp1->dev, "power down failed error:%d\n", ret);
 
 	rkisp1_dummy_buf_destroy(cap);
+
+	mutex_unlock(&cap->rkisp1->stream_lock);
 }
 
 /*
@@ -987,6 +991,8 @@ rkisp1_vb2_start_streaming(struct vb2_queue *queue, unsigned int count)
 	struct media_entity *entity = &cap->vnode.vdev.entity;
 	int ret;
 
+	mutex_lock(&cap->rkisp1->stream_lock);
+
 	ret = rkisp1_dummy_buf_create(cap);
 	if (ret)
 		goto err_ret_buffers;
@@ -1016,6 +1022,8 @@ rkisp1_vb2_start_streaming(struct vb2_queue *queue, unsigned int count)
 		goto err_pipe_disable;
 	}
 
+	mutex_unlock(&cap->rkisp1->stream_lock);
+
 	return 0;
 
 err_pipe_disable:
@@ -1029,6 +1037,7 @@ rkisp1_vb2_start_streaming(struct vb2_queue *queue, unsigned int count)
 	rkisp1_dummy_buf_destroy(cap);
 err_ret_buffers:
 	rkisp1_return_all_buffers(cap, VB2_BUF_STATE_QUEUED);
+	mutex_unlock(&cap->rkisp1->stream_lock);
 
 	return ret;
 }
diff --git a/drivers/staging/media/rkisp1/rkisp1-common.h b/drivers/staging/media/rkisp1/rkisp1-common.h
index b291cc60de8e..4ec5aae9694a 100644
--- a/drivers/staging/media/rkisp1/rkisp1-common.h
+++ b/drivers/staging/media/rkisp1/rkisp1-common.h
@@ -247,6 +247,7 @@ struct rkisp1_debug {
  * @rkisp1_capture: capture video device
  * @stats: ISP statistics output device
  * @params: ISP input parameters device
+ * @stream_lock: lock to serialize start/stop streaming in capture devices.
  */
 struct rkisp1_device {
 	void __iomem *base_addr;
@@ -266,6 +267,7 @@ struct rkisp1_device {
 	struct rkisp1_params params;
 	struct media_pipeline pipe;
 	struct vb2_alloc_ctx *alloc_ctx;
+	struct mutex stream_lock;
 	struct rkisp1_debug debug;
 };
 
diff --git a/drivers/staging/media/rkisp1/rkisp1-dev.c b/drivers/staging/media/rkisp1/rkisp1-dev.c
index b1b3c058e957..3e3a3925b019 100644
--- a/drivers/staging/media/rkisp1/rkisp1-dev.c
+++ b/drivers/staging/media/rkisp1/rkisp1-dev.c
@@ -471,6 +471,8 @@ static int rkisp1_probe(struct platform_device *pdev)
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

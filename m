Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE3241CF405
	for <lists+linux-rockchip@lfdr.de>; Tue, 12 May 2020 14:06:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=oEd9C170qzs7Dkk2tLkY7G0TxO78GFMJ6FUW8jaLe14=; b=jzJQ97/keGYsLP2abWaV4J4iXc
	WVTYaEO5hKTbJouNg5y6hN2NBIcxurG/vi39NsDO2+nP1NSoa9oFQ/cmnKLMyO2Pff05qteVX1nfb
	lHfuERVrmpkn/u5sahyCH/0DI2QSsO63O8RKqQj2gKEREtTZERlVPye//w1k+7f6DtWOsp838KDBj
	P3Egpa79cI5tzFOJWmjou6DD/1YTuWnqLZcM0IbgGgF+SGrNgzXhDFmchtx7VofJ6yKvNNQeP2rVu
	8HwCyxW9qLAwCRc4KtTHkQGcDXNb2EywbYQHvyZJEudvnx9MbhCDFsrNPCFPy+XegbmV/J4eMEddU
	LxFt4sxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYTg2-0004ZG-OJ; Tue, 12 May 2020 12:06:26 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYTft-0004Qi-Hx
 for linux-rockchip@lists.infradead.org; Tue, 12 May 2020 12:06:20 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dafna) with ESMTPSA id 708352A20C7
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: linux-media@vger.kernel.org
Subject: [PATCH 5/5] media: staging: rkisp1: replace workqueue with threaded
 irq for reading statistics registers
Date: Tue, 12 May 2020 14:05:22 +0200
Message-Id: <20200512120522.25960-6-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200512120522.25960-1-dafna.hirschfeld@collabora.com>
References: <20200512120522.25960-1-dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_050617_934254_FB64BE96 
X-CRM114-Status: GOOD (  18.28  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: mchehab@kernel.org, dafna.hirschfeld@collabora.com, dafna3@gmail.com,
 hverkuil@xs4all.nl, linux-rockchip@lists.infradead.org,
 helen.koike@collabora.com, laurent.pinchart@ideasonboard.com,
 sakari.ailus@linux.intel.com, kernel@collabora.com, ezequiel@collabora.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Reading the statistics registers might take too long
to run inside the irq handler. Currently it is deferred
to bottom half using workqueues. This patch replaces the
workqueue with threaded interrupts for reading the
statistics registers.

A new struct type 'rkisp1_kstats_buffer' is used as the statistics
buffers. The struct has a field 'ris' which is the flags of ready
statistics. If new statistics are ready, the irq handler sets
this variable and the frame sequence on the next available buffer
and returns IRQ_WAKE_THREAD.
Then the threaded interrupt reads the registers and calls
vb2_buffer_done.

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
---
 drivers/staging/media/rkisp1/TODO            |   1 -
 drivers/staging/media/rkisp1/rkisp1-common.h |   5 +-
 drivers/staging/media/rkisp1/rkisp1-dev.c    |   8 +-
 drivers/staging/media/rkisp1/rkisp1-isp.c    |   5 +-
 drivers/staging/media/rkisp1/rkisp1-stats.c  | 167 ++++++++-----------
 5 files changed, 76 insertions(+), 110 deletions(-)

diff --git a/drivers/staging/media/rkisp1/TODO b/drivers/staging/media/rkisp1/TODO
index c0cbec0a164d..bdb1b8f73556 100644
--- a/drivers/staging/media/rkisp1/TODO
+++ b/drivers/staging/media/rkisp1/TODO
@@ -1,5 +1,4 @@
 * Fix pad format size for statistics and parameters entities.
-* Use threaded interrupt for rkisp1_stats_isr(), remove work queue.
 * Fix checkpatch errors.
 * Review and comment every lock
 * Handle quantization
diff --git a/drivers/staging/media/rkisp1/rkisp1-common.h b/drivers/staging/media/rkisp1/rkisp1-common.h
index c635bb0a7727..c8adcdf661ab 100644
--- a/drivers/staging/media/rkisp1/rkisp1-common.h
+++ b/drivers/staging/media/rkisp1/rkisp1-common.h
@@ -190,8 +190,6 @@ struct rkisp1_stats {
 	struct list_head stat;
 	struct v4l2_format vdev_fmt;
 	bool is_streaming;
-
-	struct workqueue_struct *readout_wq;
 };
 
 /*
@@ -308,10 +306,11 @@ void rkisp1_isp_unregister(struct rkisp1_device *rkisp1);
 
 const struct rkisp1_isp_mbus_info *rkisp1_isp_mbus_info_get(u32 mbus_code);
 
+irqreturn_t rkisp1_read_stats_threaded_irq(int irq, void *ctx);
 irqreturn_t rkisp1_isp_isr(struct rkisp1_device *rkisp1);
 irqreturn_t rkisp1_mipi_isr(struct rkisp1_device *rkisp1);
 irqreturn_t rkisp1_capture_isr(struct rkisp1_device *rkisp1);
-void rkisp1_stats_isr(struct rkisp1_stats *stats, u32 isp_ris);
+irqreturn_t rkisp1_stats_isr(struct rkisp1_stats *stats, u32 isp_ris);
 void rkisp1_params_isr(struct rkisp1_device *rkisp1, u32 isp_mis);
 
 int rkisp1_capture_devs_register(struct rkisp1_device *rkisp1);
diff --git a/drivers/staging/media/rkisp1/rkisp1-dev.c b/drivers/staging/media/rkisp1/rkisp1-dev.c
index b7f43dab71c8..12e2e8559acd 100644
--- a/drivers/staging/media/rkisp1/rkisp1-dev.c
+++ b/drivers/staging/media/rkisp1/rkisp1-dev.c
@@ -405,6 +405,8 @@ irqreturn_t rkisp1_isr(int irq, void *ctx)
 	isp_ret = rkisp1_isp_isr(rkisp1);
 	mipi_ret = rkisp1_mipi_isr(rkisp1);
 
+	if (isp_ret == IRQ_WAKE_THREAD)
+		return IRQ_WAKE_THREAD;
 	if (isp_ret == IRQ_NONE && cap_ret == IRQ_NONE && mipi_ret == IRQ_NONE)
 		return IRQ_NONE;
 
@@ -490,8 +492,10 @@ static int rkisp1_probe(struct platform_device *pdev)
 	if (irq < 0)
 		return irq;
 
-	ret = devm_request_irq(dev, irq, rkisp1_isr, IRQF_SHARED,
-			       dev_driver_string(dev), dev);
+	ret = devm_request_threaded_irq(dev, irq, rkisp1_isr,
+					rkisp1_read_stats_threaded_irq,
+					IRQF_SHARED,
+					dev_driver_string(dev), dev);
 	if (ret) {
 		dev_err(dev, "request irq failed: %d\n", ret);
 		return ret;
diff --git a/drivers/staging/media/rkisp1/rkisp1-isp.c b/drivers/staging/media/rkisp1/rkisp1-isp.c
index 49b47e1734b0..09893073af00 100644
--- a/drivers/staging/media/rkisp1/rkisp1-isp.c
+++ b/drivers/staging/media/rkisp1/rkisp1-isp.c
@@ -1111,6 +1111,7 @@ static void rkisp1_isp_queue_event_sof(struct rkisp1_isp *isp)
 irqreturn_t rkisp1_isp_isr(struct rkisp1_device *rkisp1)
 {
 	u32 status, isp_err;
+	irqreturn_t ret = IRQ_HANDLED;
 
 	status = rkisp1_read(rkisp1, RKISP1_CIF_ISP_MIS);
 	if (!status)
@@ -1138,7 +1139,7 @@ irqreturn_t rkisp1_isp_isr(struct rkisp1_device *rkisp1)
 		/* New frame from the sensor received */
 		isp_ris = rkisp1_read(rkisp1, RKISP1_CIF_ISP_RIS);
 		if (isp_ris & RKISP1_STATS_MEAS_MASK)
-			rkisp1_stats_isr(&rkisp1->stats, isp_ris);
+			ret = rkisp1_stats_isr(&rkisp1->stats, isp_ris);
 	}
 
 	/*
@@ -1148,5 +1149,5 @@ irqreturn_t rkisp1_isp_isr(struct rkisp1_device *rkisp1)
 	 */
 	rkisp1_params_isr(rkisp1, status);
 
-	return IRQ_HANDLED;
+	return ret;
 }
diff --git a/drivers/staging/media/rkisp1/rkisp1-stats.c b/drivers/staging/media/rkisp1/rkisp1-stats.c
index e6fb2c5f3b3e..f5eaa81362ea 100644
--- a/drivers/staging/media/rkisp1/rkisp1-stats.c
+++ b/drivers/staging/media/rkisp1/rkisp1-stats.c
@@ -18,19 +18,9 @@
 #define RKISP1_ISP_STATS_REQ_BUFS_MIN 2
 #define RKISP1_ISP_STATS_REQ_BUFS_MAX 8
 
-enum rkisp1_isp_readout_cmd {
-	RKISP1_ISP_READOUT_MEAS,
-	RKISP1_ISP_READOUT_META,
-};
-
-struct rkisp1_isp_readout_work {
-	struct work_struct work;
-	struct rkisp1_stats *stats;
-
-	unsigned int frame_id;
-	unsigned int isp_ris;
-	enum rkisp1_isp_readout_cmd readout;
-	struct vb2_buffer *vb;
+struct rkisp1_kstats_buffer {
+	struct rkisp1_buffer buff;
+	u32 ris;
 };
 
 static int rkisp1_stats_enum_fmt_meta_cap(struct file *file, void *priv,
@@ -126,16 +116,17 @@ static int rkisp1_stats_vb2_queue_setup(struct vb2_queue *vq,
 static void rkisp1_stats_vb2_buf_queue(struct vb2_buffer *vb)
 {
 	struct vb2_v4l2_buffer *vbuf = to_vb2_v4l2_buffer(vb);
-	struct rkisp1_buffer *stats_buf =
-		container_of(vbuf, struct rkisp1_buffer, vb);
+	struct rkisp1_kstats_buffer *kstats_buf =
+		container_of(vbuf, struct rkisp1_kstats_buffer, buff.vb);
 	struct vb2_queue *vq = vb->vb2_queue;
 	struct rkisp1_stats *stats_dev = vq->drv_priv;
 	unsigned long flags;
 
-	stats_buf->vaddr[0] = vb2_plane_vaddr(vb, 0);
+	kstats_buf->buff.vaddr[0] = vb2_plane_vaddr(vb, 0);
+	kstats_buf->ris = 0;
 
 	spin_lock_irqsave(&stats_dev->stats_lock, flags);
-	list_add_tail(&stats_buf->queue, &stats_dev->stat);
+	list_add_tail(&kstats_buf->buff.queue, &stats_dev->stat);
 	spin_unlock_irqrestore(&stats_dev->stats_lock, flags);
 }
 
@@ -152,25 +143,19 @@ static int rkisp1_stats_vb2_buf_prepare(struct vb2_buffer *vb)
 static void rkisp1_stats_vb2_stop_streaming(struct vb2_queue *vq)
 {
 	struct rkisp1_stats *stats = vq->drv_priv;
-	struct rkisp1_buffer *buf;
+	struct rkisp1_kstats_buffer *buf;
 	unsigned long flags;
 	unsigned int i;
 
-	/* Make sure no new work queued in isr before draining wq */
 	spin_lock_irqsave(&stats->stats_lock, flags);
 	stats->is_streaming = false;
-	spin_unlock_irqrestore(&stats->stats_lock, flags);
-
-	drain_workqueue(stats->readout_wq);
-
-	spin_lock_irqsave(&stats->stats_lock, flags);
 	for (i = 0; i < RKISP1_ISP_STATS_REQ_BUFS_MAX; i++) {
 		if (list_empty(&stats->stat))
 			break;
 		buf = list_first_entry(&stats->stat,
-				       struct rkisp1_buffer, queue);
-		list_del(&buf->queue);
-		vb2_buffer_done(&buf->vb.vb2_buf, VB2_BUF_STATE_ERROR);
+				       struct rkisp1_kstats_buffer, buff.queue);
+		list_del(&buf->buff.queue);
+		vb2_buffer_done(&buf->buff.vb.vb2_buf, VB2_BUF_STATE_ERROR);
 	}
 	spin_unlock_irqrestore(&stats->stats_lock, flags);
 }
@@ -207,7 +192,7 @@ rkisp1_stats_init_vb2_queue(struct vb2_queue *q, struct rkisp1_stats *stats)
 	q->drv_priv = stats;
 	q->ops = &rkisp1_stats_vb2_ops;
 	q->mem_ops = &vb2_vmalloc_memops;
-	q->buf_struct_size = sizeof(struct rkisp1_buffer);
+	q->buf_struct_size = sizeof(struct rkisp1_kstats_buffer);
 	q->timestamp_flags = V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC;
 	q->lock = &node->vlock;
 
@@ -325,85 +310,81 @@ static void rkisp1_stats_get_bls_meas(struct rkisp1_stats *stats,
 	}
 }
 
-static void
-rkisp1_stats_send_measurement(struct rkisp1_stats *stats,
-			      struct rkisp1_isp_readout_work *meas_work)
+irqreturn_t rkisp1_read_stats_threaded_irq(int irq, void *ctx)
 {
+	struct device *dev = ctx;
+	struct rkisp1_device *rkisp1 = dev_get_drvdata(dev);
+	struct rkisp1_stats *stats = &rkisp1->stats;
+	struct rkisp1_kstats_buffer *kstats_buf = NULL;
 	struct rkisp1_stat_buffer *cur_stat_buf;
-	struct rkisp1_buffer *cur_buf = NULL;
-	unsigned int frame_sequence =
-		atomic_read(&stats->rkisp1->isp.frame_sequence);
-	u64 timestamp = ktime_get_ns();
 	unsigned long flags;
-
-	if (frame_sequence != meas_work->frame_id) {
-		dev_warn(stats->rkisp1->dev,
-			 "Measurement late(%d, %d)\n",
-			 frame_sequence, meas_work->frame_id);
-		frame_sequence = meas_work->frame_id;
-	}
+	u64 timestamp = ktime_get_ns();
 
 	spin_lock_irqsave(&stats->stats_lock, flags);
-	/* get one empty buffer */
-	if (!list_empty(&stats->stat)) {
-		cur_buf = list_first_entry(&stats->stat,
-					   struct rkisp1_buffer, queue);
-		list_del(&cur_buf->queue);
+	if (!stats->is_streaming) {
+		spin_unlock_irqrestore(&stats->stats_lock, flags);
+		return IRQ_HANDLED;
+	}
+	if (list_empty(&stats->stat)) {
+		spin_unlock_irqrestore(&stats->stats_lock, flags);
+		WARN("%s: threaded irq waked but there are no buffers",
+		     __func__);
+		return IRQ_HANDLED;
+	}
+	kstats_buf = list_first_entry(&stats->stat,
+				      struct rkisp1_kstats_buffer, buff.queue);
+
+	/*
+	 * each waked irq thread reads exactly one ready statistics
+	 * so it is a bug  if no statistics are ready
+	 */
+	if (!kstats_buf->ris) {
+		spin_unlock_irqrestore(&stats->stats_lock, flags);
+		WARN("%s: threaded irq waked but buffer holds no measures",
+		     __func__);
+		return IRQ_HANDLED;
 	}
+	list_del(&kstats_buf->buff.queue);
 	spin_unlock_irqrestore(&stats->stats_lock, flags);
 
-	if (!cur_buf)
-		return;
-
 	cur_stat_buf =
-		(struct rkisp1_stat_buffer *)(cur_buf->vaddr[0]);
+		(struct rkisp1_stat_buffer *)(kstats_buf->buff.vaddr[0]);
 
-	if (meas_work->isp_ris & RKISP1_CIF_ISP_AWB_DONE) {
+	if (kstats_buf->ris & RKISP1_CIF_ISP_AWB_DONE) {
 		rkisp1_stats_get_awb_meas(stats, cur_stat_buf);
 		cur_stat_buf->meas_type |= RKISP1_CIF_ISP_STAT_AWB;
 	}
 
-	if (meas_work->isp_ris & RKISP1_CIF_ISP_AFM_FIN) {
+	if (kstats_buf->ris & RKISP1_CIF_ISP_AFM_FIN) {
 		rkisp1_stats_get_afc_meas(stats, cur_stat_buf);
 		cur_stat_buf->meas_type |= RKISP1_CIF_ISP_STAT_AFM_FIN;
 	}
 
-	if (meas_work->isp_ris & RKISP1_CIF_ISP_EXP_END) {
+	if (kstats_buf->ris & RKISP1_CIF_ISP_EXP_END) {
 		rkisp1_stats_get_aec_meas(stats, cur_stat_buf);
 		rkisp1_stats_get_bls_meas(stats, cur_stat_buf);
 		cur_stat_buf->meas_type |= RKISP1_CIF_ISP_STAT_AUTOEXP;
 	}
 
-	if (meas_work->isp_ris & RKISP1_CIF_ISP_HIST_MEASURE_RDY) {
+	if (kstats_buf->ris & RKISP1_CIF_ISP_HIST_MEASURE_RDY) {
 		rkisp1_stats_get_hst_meas(stats, cur_stat_buf);
 		cur_stat_buf->meas_type |= RKISP1_CIF_ISP_STAT_HIST;
 	}
 
-	vb2_set_plane_payload(&cur_buf->vb.vb2_buf, 0,
+	vb2_set_plane_payload(&kstats_buf->buff.vb.vb2_buf, 0,
 			      sizeof(struct rkisp1_stat_buffer));
-	cur_buf->vb.sequence = frame_sequence;
-	cur_buf->vb.vb2_buf.timestamp = timestamp;
-	vb2_buffer_done(&cur_buf->vb.vb2_buf, VB2_BUF_STATE_DONE);
+	kstats_buf->buff.vb.vb2_buf.timestamp = timestamp;
+	vb2_buffer_done(&kstats_buf->buff.vb.vb2_buf, VB2_BUF_STATE_DONE);
+	return IRQ_HANDLED;
 }
 
-static void rkisp1_stats_readout_work(struct work_struct *work)
-{
-	struct rkisp1_isp_readout_work *readout_work =
-		container_of(work, struct rkisp1_isp_readout_work, work);
-	struct rkisp1_stats *stats = readout_work->stats;
-
-	if (readout_work->readout == RKISP1_ISP_READOUT_MEAS)
-		rkisp1_stats_send_measurement(stats, readout_work);
 
-	kfree(readout_work);
-}
-
-void rkisp1_stats_isr(struct rkisp1_stats *stats, u32 isp_ris)
+irqreturn_t rkisp1_stats_isr(struct rkisp1_stats *stats, u32 isp_ris)
 {
-	unsigned int frame_sequence =
-		atomic_read(&stats->rkisp1->isp.frame_sequence);
 	struct rkisp1_device *rkisp1 = stats->rkisp1;
-	struct rkisp1_isp_readout_work *work;
+	struct rkisp1_isp *isp = &rkisp1->isp;
+	struct rkisp1_kstats_buffer *buf = NULL;
+	irqreturn_t ret = IRQ_HANDLED;
 	unsigned int isp_mis_tmp = 0;
 	unsigned long flags;
 	u32 val;
@@ -417,28 +398,22 @@ void rkisp1_stats_isr(struct rkisp1_stats *stats, u32 isp_ris)
 	if (isp_mis_tmp & RKISP1_STATS_MEAS_MASK)
 		rkisp1->debug.stats_error++;
 
-	if (!stats->is_streaming)
+	if (!stats->is_streaming || !(isp_ris & RKISP1_STATS_MEAS_MASK))
 		goto unlock;
-	if (isp_ris & RKISP1_STATS_MEAS_MASK) {
-		work = kzalloc(sizeof(*work), GFP_ATOMIC);
-		if (work) {
-			INIT_WORK(&work->work,
-				  rkisp1_stats_readout_work);
-			work->readout = RKISP1_ISP_READOUT_MEAS;
-			work->stats = stats;
-			work->frame_id = frame_sequence;
-			work->isp_ris = isp_ris;
-			if (!queue_work(stats->readout_wq,
-					&work->work))
-				kfree(work);
-		} else {
-			dev_err(stats->rkisp1->dev,
-				"Could not allocate work\n");
+
+	list_for_each_entry(buf, &stats->stat, buff.queue) {
+		if (!buf->ris) {
+			buf->buff.vb.sequence =
+				atomic_read(&isp->frame_sequence);
+			buf->ris = isp_ris;
+			ret = IRQ_WAKE_THREAD;
+			break;
 		}
 	}
 
 unlock:
 	spin_unlock_irqrestore(&stats->stats_lock, flags);
+	return ret;
 }
 
 static void rkisp1_init_stats(struct rkisp1_stats *stats)
@@ -489,19 +464,8 @@ int rkisp1_stats_register(struct rkisp1_stats *stats,
 		goto err_cleanup_media_entity;
 	}
 
-	stats->readout_wq = alloc_workqueue("measurement_queue",
-					    WQ_UNBOUND | WQ_MEM_RECLAIM,
-					    1);
-
-	if (!stats->readout_wq) {
-		ret = -ENOMEM;
-		goto err_unreg_vdev;
-	}
-
 	return 0;
 
-err_unreg_vdev:
-	video_unregister_device(vdev);
 err_cleanup_media_entity:
 	media_entity_cleanup(&vdev->entity);
 err_release_queue:
@@ -515,7 +479,6 @@ void rkisp1_stats_unregister(struct rkisp1_stats *stats)
 	struct rkisp1_vdev_node *node = &stats->vnode;
 	struct video_device *vdev = &node->vdev;
 
-	destroy_workqueue(stats->readout_wq);
 	video_unregister_device(vdev);
 	media_entity_cleanup(&vdev->entity);
 	vb2_queue_release(vdev->queue);
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

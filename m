Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11CCE1BE8D
	for <lists+linux-rockchip@lfdr.de>; Mon, 13 May 2019 22:21:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t7PBr7LjoCQOqHfgQEXyqz20FjVbLujCLmi2BUk0bOc=; b=mO8mZioKPXVcZt
	sW7pJBasWO1OcuW8f6JQLaYb5QXZUo1cmBdQeK4ryAPeptb+KqXK25U0oYfLs0MEIcWOEk54xwf1z
	EMgdctJNz6K93Tz525jJzv5IHwXEdg0TSzvO9u20FNaFV+UMOg9Cm/tY7bNvD0jKoUrKmAGIWu/4U
	Pc8P28NgUPnOOqdspA2fL1hrws8tOqo+wODmVX+1CvHAJBijwlvEe28HdjozjVwAx+DjZxkGAvQVc
	SAqNOKt4nCpXCIQ/aIh40lnRbjzYAYCRo0dMRhtc1u0BMAHm2ugKQEUPFY2EmOHlwc/XCJNIR+KAG
	1H5oO6EnvgQQKVOXbSdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQHRa-000852-BP; Mon, 13 May 2019 20:21:06 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQHRP-00080c-90
 for linux-rockchip@lists.infradead.org; Mon, 13 May 2019 20:21:01 +0000
Received: by mail-pg1-x544.google.com with SMTP id c13so7352878pgt.1
 for <linux-rockchip@lists.infradead.org>; Mon, 13 May 2019 13:20:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=leVujDMTj0xRtIjTHni2T68vyCo9/+ZtwUA9W0h1xvg=;
 b=TzBw3rm5Uzlf1eQN4ygDogRI9eCgK0tH/HrGQrbnDeENT/b5X7psVKXbzu/NIJ+8g5
 43PEzYY9vLu/EPZL/Z3ZabchH0iW6ta9Tt4KwRgLtphg7iYzuTtKPNIxP2kcE5ct1buU
 BL9zOBIYSrYI6/b1IdlQWPKdroztStJquwXjY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=leVujDMTj0xRtIjTHni2T68vyCo9/+ZtwUA9W0h1xvg=;
 b=PG51MpPGeBjoNAt44FuHr4zSwucakHtx5NY7NnV4/nT6GmELoAsamIh4wCOlt82Ui3
 VaZMlMCLWOiivgOpr3hNP2JwdoEGsZLjV+nIdc8Z29N8L65rxHS2izeUNHhW/4C8DLXS
 ay+RLHdItPNtiMwibeVQrmNuDiIzInVMxZeY+b+9m3/Ei2Tv02XqU52YGEIGRoeiW1MF
 dIPFzUuijxWOZTD95xHD9Q5AaEx5rGK7QZbSO0z9pQQaW2/l8hJySSqE68RsLmMq5WTP
 p2TNUsao6K3+OA2obFJ61JuGBCCRThjYtBwwj5WM1R0tOStFZmPaoiTUe8RZcSG5fnvf
 pOJA==
X-Gm-Message-State: APjAAAWOCxiagDHtD8ELf58bkMkve3KHh38em5cx9cJ8ck6YeBMN8qcg
 4vqIikJ0oDFeDJSct3OcvKOrMQ==
X-Google-Smtp-Source: APXvYqypJfXRNBxFLFxlzzTNfhkd2BXv4vnyAkeLtglsBBqPuWU48fMWCiBiLWtiHvH8KpQxfCUl3w==
X-Received: by 2002:a62:38cc:: with SMTP id f195mr36507159pfa.15.1557778853924; 
 Mon, 13 May 2019 13:20:53 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com
 ([2620:15c:202:1:24fa:e766:52c9:e3b2])
 by smtp.gmail.com with ESMTPSA id s198sm26356597pfs.34.2019.05.13.13.20.52
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 13 May 2019 13:20:53 -0700 (PDT)
From: Douglas Anderson <dianders@chromium.org>
To: Mark Brown <broonie@kernel.org>, Benson Leung <bleung@chromium.org>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>
Subject: [PATCH v2 1/3] spi: Allow SPI devices to force transfers on a
 realtime thread
Date: Mon, 13 May 2019 13:18:23 -0700
Message-Id: <20190513201825.166969-2-dianders@chromium.org>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
In-Reply-To: <20190513201825.166969-1-dianders@chromium.org>
References: <20190513201825.166969-1-dianders@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_132058_639032_E3AAF41B 
X-CRM114-Status: GOOD (  27.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.21
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
Cc: drinkcat@chromium.org, briannorris@chromium.org,
 Douglas Anderson <dianders@chromium.org>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, mka@chromium.org,
 Guenter Roeck <groeck@chromium.org>, linux-spi@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

For communication with some SPI devices it may be necessary (for
correctness) not to get interrupted during a transfer.  One example is
the EC (Embedded Controller) on Chromebooks.  The Chrome OS EC will
drop a transfer if more than ~8ms passes between the chip select being
asserted and the transfer finishing.

The best way to make transfers to devices like this succeed is to run
the transfers at realtime priority.  ...but, since there is no easy
way in the kernel to just temporarily bump the priority of the current
thread the current best way to do this is to schedule work on another
thread and give that thread a boosted priority.

The SPI framework already has another thread and, in fact, that other
thread is already made realtime priority in some cases.  Let's add an
ability for a SPI device driver to request that this thread always be
used and that it's realtime priority.

NOTE: Forcing all transfers to the message pumping thread will add
extra overhead to each transfer.  On some systems this may lower your
overall bus throughput and may increase CPU utilization.  You only
want to use this feature when it's important that a transfer not get
interrupt once started.

Signed-off-by: Douglas Anderson <dianders@chromium.org>
---
Another option is to change this patch to allow a SPI device driver to
request that the pumping thread be realtime but not to _force_ all
messages onto that thread.  In the case of cros_ec this means a bunch
of code duplication (we need to create a thread to do basically the
same thing as the SPI core) but that would make sense if the SPI
framework doesn't expect other use cases like this and doesn't want to
carry the baggage in the SPI core.

Changes in v2:
- Now only force transfers to the thread for devices that want it.
- Squashed patch #1 and #2 together.
- Renamed variable to "force_rt_transfers".

 drivers/spi/spi.c       | 49 +++++++++++++++++++++++++++++++++--------
 include/linux/spi/spi.h |  5 +++++
 2 files changed, 45 insertions(+), 9 deletions(-)

diff --git a/drivers/spi/spi.c b/drivers/spi/spi.c
index 8eb7460dd744..911961bb230d 100644
--- a/drivers/spi/spi.c
+++ b/drivers/spi/spi.c
@@ -1217,6 +1217,7 @@ EXPORT_SYMBOL_GPL(spi_finalize_current_transfer);
  */
 static void __spi_pump_messages(struct spi_controller *ctlr, bool in_kthread)
 {
+	struct spi_message *msg;
 	unsigned long flags;
 	bool was_busy = false;
 	int ret;
@@ -1276,10 +1277,16 @@ static void __spi_pump_messages(struct spi_controller *ctlr, bool in_kthread)
 		return;
 	}
 
-	/* Extract head of queue */
-	ctlr->cur_msg =
-		list_first_entry(&ctlr->queue, struct spi_message, queue);
+	/* If device for this message needs a realtime thread; queue it */
+	msg = list_first_entry(&ctlr->queue, struct spi_message, queue);
+	if (msg->spi->force_rt_transfers & !in_kthread) {
+		kthread_queue_work(&ctlr->kworker, &ctlr->pump_messages);
+		spin_unlock_irqrestore(&ctlr->queue_lock, flags);
+		return;
+	}
 
+	/* Extract head of queue */
+	ctlr->cur_msg = msg;
 	list_del_init(&ctlr->cur_msg->queue);
 	if (ctlr->busy)
 		was_busy = true;
@@ -1364,10 +1371,32 @@ static void spi_pump_messages(struct kthread_work *work)
 	__spi_pump_messages(ctlr, true);
 }
 
-static int spi_init_queue(struct spi_controller *ctlr)
+/**
+ * spi_set_thread_rt - set the controller to pump at realtime priority
+ * @ctlr: controller to boost priority of
+ *
+ * This can be called because the controller requested realtime priority
+ * (by setting the ->rt value before calling spi_register_controller()) or
+ * because a device on the bus said that its transfers needed realtime
+ * priority.
+ *
+ * NOTE: at the moment if any device on a bus says it needs realtime then
+ * the thread will be at realtime priority for all transfers on that
+ * controller.  If this eventually becomes a problem we may see if we can
+ * find a way to boost the priority only temporarily during relevant
+ * transfers.
+ */
+static void spi_set_thread_rt(struct spi_controller *ctlr)
 {
 	struct sched_param param = { .sched_priority = MAX_RT_PRIO - 1 };
 
+	dev_info(&ctlr->dev,
+		"will run message pump with realtime priority\n");
+	sched_setscheduler(ctlr->kworker_task, SCHED_FIFO, &param);
+}
+
+static int spi_init_queue(struct spi_controller *ctlr)
+{
 	ctlr->running = false;
 	ctlr->busy = false;
 
@@ -1387,11 +1416,8 @@ static int spi_init_queue(struct spi_controller *ctlr)
 	 * request and the scheduling of the message pump thread. Without this
 	 * setting the message pump thread will remain at default priority.
 	 */
-	if (ctlr->rt) {
-		dev_info(&ctlr->dev,
-			"will run message pump with realtime priority\n");
-		sched_setscheduler(ctlr->kworker_task, SCHED_FIFO, &param);
-	}
+	if (ctlr->rt)
+		spi_set_thread_rt(ctlr);
 
 	return 0;
 }
@@ -2982,6 +3008,11 @@ int spi_setup(struct spi_device *spi)
 
 	spi_set_cs(spi, false);
 
+	if (spi->force_rt_transfers && !spi->controller->rt) {
+		spi->controller->rt = true;
+		spi_set_thread_rt(spi->controller);
+	}
+
 	dev_dbg(&spi->dev, "setup mode %d, %s%s%s%s%u bits/w, %u Hz max --> %d\n",
 			(int) (spi->mode & (SPI_CPOL | SPI_CPHA)),
 			(spi->mode & SPI_CS_HIGH) ? "cs_high, " : "",
diff --git a/include/linux/spi/spi.h b/include/linux/spi/spi.h
index 053abd22ad31..4d6ea3366480 100644
--- a/include/linux/spi/spi.h
+++ b/include/linux/spi/spi.h
@@ -109,6 +109,10 @@ void spi_statistics_add_transfer_stats(struct spi_statistics *stats,
  *	This may be changed by the device's driver, or left at the
  *	default (0) indicating protocol words are eight bit bytes.
  *	The spi_transfer.bits_per_word can override this for each transfer.
+ * @force_rt_transfers: Transfers for this device should always be done
+ *	at realtime priority. NOTE that this might add some latency in
+ *	starting the transfer (since we may need to context switch) but
+ *	once the transfer starts it will be done at high priority.
  * @irq: Negative, or the number passed to request_irq() to receive
  *	interrupts from this device.
  * @controller_state: Controller's runtime state
@@ -143,6 +147,7 @@ struct spi_device {
 	u32			max_speed_hz;
 	u8			chip_select;
 	u8			bits_per_word;
+	bool			force_rt_transfers;
 	u32			mode;
 #define	SPI_CPHA	0x01			/* clock phase */
 #define	SPI_CPOL	0x02			/* clock polarity */
-- 
2.21.0.1020.gf2820cf01a-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95C391CF3A
	for <lists+linux-rockchip@lfdr.de>; Tue, 14 May 2019 20:40:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AXCEm4iLZ31dMO6rJyI5jZIU4mTRJF3xThlFgupsjp8=; b=Am99CCGsyGvccH
	0CzND3pkHU2dbqKlwFCA+XSTSNtDZnIlL34dL5Oes3IQq05c7obXVqvuRLEh9vi+xMb86Px9rUHCX
	ZauXwUPN5mN+X+PIieJasJHnlILoxLZtV+RFfu2s4wOVSg8E9QyehG9bOgVkm9WbgXb1wpOnGcedz
	G1SBZnYdpN5kS2ppQvCcx1pXf+fFHkKKgb2vR/pvw1IFy3yeDd8o4QSViPwJKeCP96EyXl2Kt+iPc
	Iw2JoD544Kv1s4aDfyNWw5yWQuxlSv5K0/EmS72aQDDxyTRxP0ejU9EQtlTDzPqudl6DPlk6qfvcR
	ai8aaDxrnAYlvwzPwZFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQcLU-0008Fi-1q; Tue, 14 May 2019 18:40:12 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQcLP-00088D-Ob
 for linux-rockchip@lists.infradead.org; Tue, 14 May 2019 18:40:09 +0000
Received: by mail-pg1-x542.google.com with SMTP id t22so9041533pgi.10
 for <linux-rockchip@lists.infradead.org>; Tue, 14 May 2019 11:40:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0N3Ca5zISCWrqDaiQya2BHLNV2R0SKAMMpgd+oEiq7I=;
 b=M2URzQs0AsI3b7hj/0Vj5SHYRtSwsrr0sG3OGhmhmeHN8Ow93+Op1SbVcMqS5b0atL
 cvBTyv1CU0yCe7oWkFdkaHHnO9HNsHmE5XsBXiBj3DXMTAxo/EZpcQjpclcjjDIgCe1r
 OaSeG6TAiyizIYAsYeH6AQ8U9q1DUuvb5mr8U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0N3Ca5zISCWrqDaiQya2BHLNV2R0SKAMMpgd+oEiq7I=;
 b=YdeQdvuvUFKj8SN1TL6piUcjljpDE466B+SlCcZ/Mwxj7jbcTOy+1Ygh7qFHCGzDwK
 FXvU32sPEqZ/evHStSEU7wASBHyCom+KA18qthdw07LoFgnsb/5pjGe5amwzlSK+P8hJ
 exGuoqun1LRhPz6B+jB98xrzNfEzHDophxfOv12qnrGZauzdl4Wfwt6rpBONaELaApsN
 spSVQpU1MpMThcnbUCHyjyucO2nIsugJ4vXIgwVvq5KgmdiUKU4kfjoK4nMfLWAAiuPf
 9LZ2nNSGXePuBh6GUOO//6N7o9UHo9BvZD2Jzvzj94UCF+DU8hqwTWN+bQqOZwu2Scuf
 GXjA==
X-Gm-Message-State: APjAAAU/8nyMHQaSXqSRQGiQVoWCFpugMkYbhw4svWn6pPz1fFJ+wtzt
 ZB0TgxYD2gqbrsrQo4y8V4YgXATYTi8=
X-Google-Smtp-Source: APXvYqwsPRRqnqUC6zW6GwQqLExv5kHpvE8tqqm5XrxLIHYzYFDzamN9gpmiEZa+un+sigooU9QmZA==
X-Received: by 2002:a63:6e0b:: with SMTP id j11mr26476923pgc.291.1557859207212; 
 Tue, 14 May 2019 11:40:07 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com
 ([2620:15c:202:1:24fa:e766:52c9:e3b2])
 by smtp.gmail.com with ESMTPSA id 19sm19182454pgz.24.2019.05.14.11.40.06
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 14 May 2019 11:40:06 -0700 (PDT)
From: Douglas Anderson <dianders@chromium.org>
To: Mark Brown <broonie@kernel.org>, Benson Leung <bleung@chromium.org>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>
Subject: [PATCH v3 1/3] platform/chrome: cros_ec_spi: Move to real time
 priority for transfers
Date: Tue, 14 May 2019 11:39:33 -0700
Message-Id: <20190514183935.143463-2-dianders@chromium.org>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
In-Reply-To: <20190514183935.143463-1-dianders@chromium.org>
References: <20190514183935.143463-1-dianders@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_114007_808780_D35E68CD 
X-CRM114-Status: GOOD (  21.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Guenter Roeck <groeck@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

In commit 37a186225a0c ("platform/chrome: cros_ec_spi: Transfer
messages at high priority") we moved transfers to a high priority
workqueue.  This helped make them much more reliable.

...but, we still saw failures.

We were actually finding ourselves competing for time with dm-crypt
which also scheduled work on HIGHPRI workqueues.  While we can
consider reverting the change that made dm-crypt run its work at
HIGHPRI, the argument in commit a1b89132dc4f ("dm crypt: use
WQ_HIGHPRI for the IO and crypt workqueues") is somewhat compelling.
It does make sense for IO to be scheduled at a priority that's higher
than the default user priority.  It also turns out that dm-crypt isn't
alone in using high priority like this.  loop_prepare_queue() does
something similar for loopback devices.

Looking in more detail, it can be seen that the high priority
workqueue isn't actually that high of a priority.  It runs at MIN_NICE
which is _fairly_ high priority but still below all real time
priority.

Should we move cros_ec_spi to real time priority to fix our problems,
or is this just escalating a priority war?  I'll argue here that
cros_ec_spi _does_ belong at real time priority.  Specifically
cros_ec_spi actually needs to run quickly for correctness.  As I
understand this is exactly what real time priority is for.

There currently doesn't appear to be any way to use the standard
workqueue APIs with a real time priority, so we'll switch over to
using using a kthread worker.  We'll match the priority that the SPI
core uses when it wants to do things on a realtime thread and just use
"MAX_RT_PRIO - 1".

This commit plus the patch ("platform/chrome: cros_ec_spi: Request the
SPI thread be realtime") are enough to get communications very close
to 100% reliable (the only known problem left is when serial console
is turned on, which isn't something that happens in shipping devices).
Specifically this test case now passes (tested on rk3288-veyron-jerry):

  dd if=/dev/zero of=/var/log/foo.txt bs=4M count=512&
  while true; do
    ectool version > /dev/null;
  done

It should be noted that "/var/log" is encrypted (and goes through
dm-crypt) and also passes through a loopback device.

Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

Changes in v3:
- cros_ec realtime patch replaces revert; now patch #1

Changes in v2: None

 drivers/platform/chrome/cros_ec_spi.c | 88 +++++++++++++++++++++++----
 1 file changed, 77 insertions(+), 11 deletions(-)

diff --git a/drivers/platform/chrome/cros_ec_spi.c b/drivers/platform/chrome/cros_ec_spi.c
index 8e9451720e73..b89bf11dda64 100644
--- a/drivers/platform/chrome/cros_ec_spi.c
+++ b/drivers/platform/chrome/cros_ec_spi.c
@@ -13,6 +13,8 @@
 #include <linux/slab.h>
 #include <linux/spi/spi.h>
 
+#include <uapi/linux/sched/types.h>
+
 
 /* The header byte, which follows the preamble */
 #define EC_MSG_HEADER			0xec
@@ -67,12 +69,16 @@
  *      is sent when we want to turn on CS at the start of a transaction.
  * @end_of_msg_delay: used to set the delay_usecs on the spi_transfer that
  *      is sent when we want to turn off CS at the end of a transaction.
+ * @high_pri_worker: Used to give work to high_pri_thread.
+ * @high_pri_thread: We'll do our transfers here to reduce preemption problems.
  */
 struct cros_ec_spi {
 	struct spi_device *spi;
 	s64 last_transfer_ns;
 	unsigned int start_of_msg_delay;
 	unsigned int end_of_msg_delay;
+	struct kthread_worker high_pri_worker;
+	struct task_struct *high_pri_thread;
 };
 
 typedef int (*cros_ec_xfer_fn_t) (struct cros_ec_device *ec_dev,
@@ -89,7 +95,7 @@ typedef int (*cros_ec_xfer_fn_t) (struct cros_ec_device *ec_dev,
  */
 
 struct cros_ec_xfer_work_params {
-	struct work_struct work;
+	struct kthread_work work;
 	cros_ec_xfer_fn_t fn;
 	struct cros_ec_device *ec_dev;
 	struct cros_ec_command *ec_msg;
@@ -632,7 +638,7 @@ static int do_cros_ec_cmd_xfer_spi(struct cros_ec_device *ec_dev,
 	return ret;
 }
 
-static void cros_ec_xfer_high_pri_work(struct work_struct *work)
+static void cros_ec_xfer_high_pri_work(struct kthread_work *work)
 {
 	struct cros_ec_xfer_work_params *params;
 
@@ -644,12 +650,14 @@ static int cros_ec_xfer_high_pri(struct cros_ec_device *ec_dev,
 				 struct cros_ec_command *ec_msg,
 				 cros_ec_xfer_fn_t fn)
 {
-	struct cros_ec_xfer_work_params params;
-
-	INIT_WORK_ONSTACK(&params.work, cros_ec_xfer_high_pri_work);
-	params.ec_dev = ec_dev;
-	params.ec_msg = ec_msg;
-	params.fn = fn;
+	struct cros_ec_spi *ec_spi = ec_dev->priv;
+	struct cros_ec_xfer_work_params params = {
+		.work = KTHREAD_WORK_INIT(params.work,
+					  cros_ec_xfer_high_pri_work),
+		.ec_dev = ec_dev,
+		.ec_msg = ec_msg,
+		.fn = fn,
+	};
 
 	/*
 	 * This looks a bit ridiculous.  Why do the work on a
@@ -660,9 +668,8 @@ static int cros_ec_xfer_high_pri(struct cros_ec_device *ec_dev,
 	 * context switched out for too long and the EC giving up on
 	 * the transfer.
 	 */
-	queue_work(system_highpri_wq, &params.work);
-	flush_work(&params.work);
-	destroy_work_on_stack(&params.work);
+	kthread_queue_work(&ec_spi->high_pri_worker, &params.work);
+	kthread_flush_work(&params.work);
 
 	return params.ret;
 }
@@ -694,6 +701,61 @@ static void cros_ec_spi_dt_probe(struct cros_ec_spi *ec_spi, struct device *dev)
 		ec_spi->end_of_msg_delay = val;
 }
 
+static void cros_ec_spi_high_pri_release(struct device *dev, void *res)
+{
+	struct cros_ec_spi *ec_spi = *(struct cros_ec_spi **)res;
+
+	kthread_stop(ec_spi->high_pri_thread);
+	kthread_destroy_worker(&ec_spi->high_pri_worker);
+}
+
+static int cros_ec_spi_devm_high_pri_alloc(struct device *dev,
+					   struct cros_ec_spi *ec_spi)
+{
+	struct sched_param sched_priority = {
+		.sched_priority = MAX_RT_PRIO - 1,
+	};
+	struct cros_ec_spi **ptr;
+	int err = 0;
+
+	ptr = devres_alloc(cros_ec_spi_high_pri_release, sizeof(*ptr),
+			   GFP_KERNEL);
+	if (!ptr)
+		return -ENOMEM;
+	*ptr = ec_spi;
+
+	kthread_init_worker(&ec_spi->high_pri_worker);
+	ec_spi->high_pri_thread = kthread_create(kthread_worker_fn,
+						 &ec_spi->high_pri_worker,
+						 "cros_ec_spi_high_pri");
+	if (IS_ERR(ec_spi->high_pri_thread)) {
+		err = PTR_ERR(ec_spi->high_pri_thread);
+		dev_err(dev, "Can't create cros_ec high pri thread: %d\n", err);
+		goto err_worker_initted;
+	}
+
+	err = sched_setscheduler_nocheck(ec_spi->high_pri_thread,
+					 SCHED_FIFO, &sched_priority);
+	if (err) {
+		dev_err(dev, "Can't set cros_ec high pri priority: %d\n", err);
+		goto err_thread_created;
+	}
+
+	wake_up_process(ec_spi->high_pri_thread);
+
+	devres_add(dev, ptr);
+
+	return 0;
+
+err_thread_created:
+	kthread_stop(ec_spi->high_pri_thread);
+
+err_worker_initted:
+	kthread_destroy_worker(&ec_spi->high_pri_worker);
+	devres_free(ptr);
+	return err;
+}
+
 static int cros_ec_spi_probe(struct spi_device *spi)
 {
 	struct device *dev = &spi->dev;
@@ -732,6 +794,10 @@ static int cros_ec_spi_probe(struct spi_device *spi)
 
 	ec_spi->last_transfer_ns = ktime_get_ns();
 
+	err = cros_ec_spi_devm_high_pri_alloc(dev, ec_spi);
+	if (err)
+		return err;
+
 	err = cros_ec_register(ec_dev);
 	if (err) {
 		dev_err(dev, "cannot register EC\n");
-- 
2.21.0.1020.gf2820cf01a-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

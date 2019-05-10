Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B31D1A54C
	for <lists+linux-rockchip@lfdr.de>; Sat, 11 May 2019 00:35:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/JncWpzzDTiTxu9suAqTIeVItaCXeUyDL+bS0WD+/nc=; b=if5hK6UwS3+plU
	eAz5YprAM3rwcYmVsB4SGpodnoOCnbOXfcfhQ38cLg/KO6klLLxO7DwO/KQ1fYsxkRA4dttEhbtBi
	+/DfSaC78RloR/yZmoEr5BAiLfDEh/QATi+MX7Sxf/iJI1q4Yk/ajIyWofU5no2hH+WymmsTV78Sf
	9sanVYDY8+YVTE6PXVtOrfGvkfLvoFkKFGckR6/tcB0fnR+rWCiGcvpdxIIlSnjobqCz/Bp1/Zj/Z
	7DdGqkrC4/Y1KJbVMa1l/60h9OgX+zbRcBdU49CAdnRrX5mNlXz87nzMKRTebAST2BWC/RBcy+zO7
	5R5hOVd6NEcQm0xSjjFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPE6n-0005Hm-LQ; Fri, 10 May 2019 22:35:17 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPE6k-0005FN-7x
 for linux-rockchip@lists.infradead.org; Fri, 10 May 2019 22:35:15 +0000
Received: by mail-pl1-x644.google.com with SMTP id f12so1426821plt.8
 for <linux-rockchip@lists.infradead.org>; Fri, 10 May 2019 15:35:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=doCw/N2zOvYXAd8OCIMYOL6rqup36HMvttPF4EYXpko=;
 b=cRIbdkmecLpeESu4B+BXdMd9/JM9OJK8ztcaLFe9dfuxnMY+Jitael/9JVP8k60jlA
 J3wsHnI5sdOg+JWKKYo7Zyp/vf07eh6ERiK/545CGhQyN1GoTqWST1YwdnRxWiYXDoTK
 jQbAJ5dHC3nZale8aZ/S4s7YGHl3acaP8mSpE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=doCw/N2zOvYXAd8OCIMYOL6rqup36HMvttPF4EYXpko=;
 b=SP3ruBCh8nN4aDejzEckmPx9vlXvBiqM+8jvPq/1+a/odqWZEAAdf65U17UGzO4pJt
 hJlZm0bEz7qTSH9+qmw8EwKPXKUi+bsvWmBI04oRZEC7pbIxb3IlFDtjlrwXj2fgzINC
 Ee6oInMcJKaD6n0JjhimrR6/oZTxLLl+1ppWAnSyANfBR7ugkRmIzRie6QaOnYplBnP2
 fukI0kwELHwFLD8a5sTzZ5F/vQX+ewDZt56eyQlt77gwlpdNNKvR8hC6YMOomcW98hkT
 S9yyBdlxc7X7BM2jUgnE2Y2Xya+Sc+SPl2VDnF0BClKdY86f0PjEMjaWykUYa15c6xLX
 Zu0g==
X-Gm-Message-State: APjAAAUyeUiZX6IqhA7abqUX3hST/g5rV/dqmBWZr2YtgRx7xSucawpx
 VUzMSKjNReWXYaqdA1PVIjEHAg==
X-Google-Smtp-Source: APXvYqwjhDuIhNyoShQ2Zv2d4SsycWHqb30wq1IHUOoZ0rI10IRiL+YdwxPeiG1rym70fwTBAGxlng==
X-Received: by 2002:a17:902:e287:: with SMTP id
 cf7mr16084314plb.217.1557527713435; 
 Fri, 10 May 2019 15:35:13 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com
 ([2620:15c:202:1:24fa:e766:52c9:e3b2])
 by smtp.gmail.com with ESMTPSA id j6sm7689393pfe.107.2019.05.10.15.35.12
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 10 May 2019 15:35:12 -0700 (PDT)
From: Douglas Anderson <dianders@chromium.org>
To: Mark Brown <broonie@kernel.org>, Benson Leung <bleung@chromium.org>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>
Subject: [PATCH 2/4] spi: Allow SPI devices to specify that they are timing
 sensitive
Date: Fri, 10 May 2019 15:34:35 -0700
Message-Id: <20190510223437.84368-3-dianders@chromium.org>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
In-Reply-To: <20190510223437.84368-1-dianders@chromium.org>
References: <20190510223437.84368-1-dianders@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_153514_280517_D01FC588 
X-CRM114-Status: GOOD (  21.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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

If a device on the SPI bus is very sensitive to timing then it may be
necessary (for correctness) not to get interrupted during a transfer.
One example is the EC (Embedded Controller) on Chromebooks.  The
Chrome OS EC will drop a transfer if more than ~8ms passes between the
chip select being asserted and the transfer finishing.

The SPI framework already has code to handle the case where transfers
are timing senstive.  It can set its message pumping thread to
realtime to to minimize interruptions during the transfer.  However,
at the moment, this mode can only be requested by a SPI controller.
Let's allow the drivers for SPI devices to also request this mode.

NOTE: at the moment if a given device on a bus says that it's timing
sensitive then we'll pump all messages on that bus at high priority.
It is possible we might want to relax this in the future but it seems
like it should be fine for now.

Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

 drivers/spi/spi.c       | 34 ++++++++++++++++++++++++++++------
 include/linux/spi/spi.h |  3 +++
 2 files changed, 31 insertions(+), 6 deletions(-)

diff --git a/drivers/spi/spi.c b/drivers/spi/spi.c
index 0597f7086de3..d117ab3adafa 100644
--- a/drivers/spi/spi.c
+++ b/drivers/spi/spi.c
@@ -1367,10 +1367,30 @@ static void spi_pump_messages(struct kthread_work *work)
 	__spi_pump_messages(ctlr, true);
 }
 
-static int spi_init_queue(struct spi_controller *ctlr)
+/**
+ * spi_boost_thread_priority - set the controller to pump at realtime priority
+ * @ctlr: controller to boost priority of
+ *
+ * This can be called because the controller requested realtime priority
+ * (by setting the ->rt value before calling spi_register_controller()) or
+ * because a device on the bus said that its transfers were timing senstive.
+ *
+ * NOTE: at the moment if any device on a bus says it is timing sensitive then
+ * all the devices on this bus will do transfers at realtime priority.  If
+ * this eventually becomes a problem we may see if we can find a way to boost
+ * the priority only temporarily during relevant transfers.
+ */
+static void spi_boost_thread_priority(struct spi_controller *ctlr)
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
 
@@ -1390,11 +1410,8 @@ static int spi_init_queue(struct spi_controller *ctlr)
 	 * request and the scheduling of the message pump thread. Without this
 	 * setting the message pump thread will remain at default priority.
 	 */
-	if (ctlr->rt) {
-		dev_info(&ctlr->dev,
-			"will run message pump with realtime priority\n");
-		sched_setscheduler(ctlr->kworker_task, SCHED_FIFO, &param);
-	}
+	if (ctlr->rt)
+		spi_boost_thread_priority(ctlr);
 
 	return 0;
 }
@@ -2985,6 +3002,11 @@ int spi_setup(struct spi_device *spi)
 
 	spi_set_cs(spi, false);
 
+	if (spi->timing_sensitive && !spi->controller->rt) {
+		spi->controller->rt = true;
+		spi_boost_thread_priority(spi->controller);
+	}
+
 	dev_dbg(&spi->dev, "setup mode %d, %s%s%s%s%u bits/w, %u Hz max --> %d\n",
 			(int) (spi->mode & (SPI_CPOL | SPI_CPHA)),
 			(spi->mode & SPI_CS_HIGH) ? "cs_high, " : "",
diff --git a/include/linux/spi/spi.h b/include/linux/spi/spi.h
index 053abd22ad31..ef6bdd4d25f2 100644
--- a/include/linux/spi/spi.h
+++ b/include/linux/spi/spi.h
@@ -109,6 +109,8 @@ void spi_statistics_add_transfer_stats(struct spi_statistics *stats,
  *	This may be changed by the device's driver, or left at the
  *	default (0) indicating protocol words are eight bit bytes.
  *	The spi_transfer.bits_per_word can override this for each transfer.
+ * @timing_sensitive: Transfers for this device are senstive to timing
+ *	so we should do our transfer at high priority.
  * @irq: Negative, or the number passed to request_irq() to receive
  *	interrupts from this device.
  * @controller_state: Controller's runtime state
@@ -143,6 +145,7 @@ struct spi_device {
 	u32			max_speed_hz;
 	u8			chip_select;
 	u8			bits_per_word;
+	bool			timing_sensitive;
 	u32			mode;
 #define	SPI_CPHA	0x01			/* clock phase */
 #define	SPI_CPOL	0x02			/* clock polarity */
-- 
2.21.0.1020.gf2820cf01a-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

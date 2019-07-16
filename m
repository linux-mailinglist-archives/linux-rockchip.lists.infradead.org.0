Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC93A6ACFB
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 18:43:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6AjpEtCebxJYkG49fsBzpOdko4utFqQnDCuBSzkpWMI=; b=p5mDBnJI/G9zNr
	3XADiIrODq2YidHqESbEASQcc7zS5m/Wl0zP1TZm8xaUUGsCHsOQClFkrEQv4qkgafZpjAUxg1ppQ
	vgLmHUIT/ut3G9eJiZ7WgHNJP3pLuZ8G1k4sF03uWQW9Eb0MlbyNpXCD4bTH8WSDm5Uo3A7D3YqNw
	AcrxCbcuzNfv4wF0m8UnXRuk+RZZ6kuzd1QWVW54cakXnk+/9+x3eEFiC+Twf20yQrCSzOqPc0p4j
	LRZF8RqvLf8WfJQm/t02h1Bl2zoeYgat6JMSBxwhzQ0HM0xjrLkCb9vo1cQaFMoGA1uN8OZmhxyGb
	em2/sGViKyP6kMmNefYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnQXY-0000ZR-Tu; Tue, 16 Jul 2019 16:42:56 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnQXT-0000Vi-K7
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 16:42:53 +0000
Received: by mail-pf1-x443.google.com with SMTP id g2so9393267pfq.0
 for <linux-rockchip@lists.infradead.org>; Tue, 16 Jul 2019 09:42:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=eGqYmSRY0aX5Z2gwVb+ocjilcWY5xD+m3PbgEthSu3s=;
 b=J+QejSTqpqmwqp1exIlt6u/JLWNu+5jOtwHjmNNPRjpvrQsfgqWuh28+D+4+nIPO5K
 YbLtPl8q8y20WuIoPv6idr4xciiwgkEKUNejLjjYgeC/+nVUXRcivwy4+8u+9Py3LNvI
 6EqYtSULVOTa8A/l5H0GZBx0X5J2q5b6gRk8g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=eGqYmSRY0aX5Z2gwVb+ocjilcWY5xD+m3PbgEthSu3s=;
 b=hHkyKvnO4zjSEtn/FDLr3V8P2/2sMxzLxtq++H+QoFKErgK/5bdhGpbtyViaXE5Syn
 JrX/fBj4/cluWcnaLPYMF7uKUhM6xx6TeTZw31xiJabvdnyy2N68sVMbPB5NqZdJXrYl
 ozZU9Tgip69Wxqiwa2RilQ4FtnbNWG3exd9DWIm/CPLJBI7zcxOWkzdkiNZ1FgmvhKBo
 AoSVpoPJ33vJdwMetcwQ+nAtdEjVRcd0pJ/Clt/mMrUMh34FB3bmOqEYhDLnEIMlunSj
 7H5P12P4kDu4D/MZB3ZVHwQbP3kNWQESx6/GF9rq4HqkNDhTioka44VNl/6xhGp4wgOG
 Pwnw==
X-Gm-Message-State: APjAAAWevgvpfx4SiiTUGOQ//kXcDVzGWZOLMXMXnHzFpyLJwd4I+MiB
 uB9ozHyIZ105c83LMimgSniNQg==
X-Google-Smtp-Source: APXvYqzTbFdUQvee1WuiqpQUi3ryRdKOs288mKrt4jpytT3apms/GB6jRwGHlDNmWOJfHARW1woJVg==
X-Received: by 2002:a17:90a:2305:: with SMTP id
 f5mr39843967pje.128.1563295365190; 
 Tue, 16 Jul 2019 09:42:45 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com
 ([2620:15c:202:1:24fa:e766:52c9:e3b2])
 by smtp.gmail.com with ESMTPSA id r1sm25456468pfq.100.2019.07.16.09.42.44
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 16 Jul 2019 09:42:44 -0700 (PDT)
From: Douglas Anderson <dianders@chromium.org>
To: Ulf Hansson <ulf.hansson@linaro.org>, Kalle Valo <kvalo@codeaurora.org>,
 Adrian Hunter <adrian.hunter@intel.com>
Subject: [PATCH 1/2] mmc: core: Add sdio_trigger_replug() API
Date: Tue, 16 Jul 2019 09:42:08 -0700
Message-Id: <20190716164209.62320-2-dianders@chromium.org>
X-Mailer: git-send-email 2.22.0.510.g264f2c817a-goog
In-Reply-To: <20190716164209.62320-1-dianders@chromium.org>
References: <20190716164209.62320-1-dianders@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_094251_657427_EFFC9EAD 
X-CRM114-Status: GOOD (  22.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Ganapathi Bhat <gbhat@marvell.com>, Ritesh Harjani <riteshh@codeaurora.org>,
 linux-rockchip@lists.infradead.org, Xinming Hu <huxinming820@gmail.com>,
 netdev@vger.kernel.org, Brian Norris <briannorris@chromium.org>,
 linux-wireless@vger.kernel.org, Douglas Anderson <dianders@chromium.org>,
 Amitkumar Karwar <amitkarwar@gmail.com>, linux-kernel@vger.kernel.org,
 Wolfram Sang <wsa+renesas@sang-engineering.com>,
 Nishant Sarmukadam <nishants@marvell.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Avri Altman <avri.altman@wdc.com>, Jiong Wu <lohengrin1024@gmail.com>,
 linux-mmc@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>,
 =?UTF-8?q?Niklas=20S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

When using Marvell WiFi SDIO cards, it is not uncommon for Linux WiFi
driver to fully lose the communication channel to the firmware running
on the card.  Presumably the firmware on the card has a bug or two in
it and occasionally crashes.

The Marvell WiFi driver attempts to recover from this problem.
Specifically the driver has the function mwifiex_sdio_card_reset()
which is called when communcation problems are found.  That function
attempts to reset the state of things by utilizing the mmc_hw_reset()
function.

The current solution is a bit complex because the Marvell WiFi driver
needs to manually deinit and reinit the WiFi driver around the reset
call.  This means it's going through a bunch of code paths that aren't
normally tested.  However, complexity isn't our only problem.  The
other (bigger) problem is that Marvell WiFi cards are often combo
WiFi/Bluetooth cards and Bluetooth runs on a second SDIO func.  While
the WiFi driver knows that it should re-init its own state around the
mmc_hw_reset() call there is no good way to inform the Bluetooth
driver.  That means that in Linux today when you reset the Marvell
WiFi driver you lose all Bluetooth communication.  Doh!

One way to fix the above problems is to leverage a more standard way
to reset the Marvell WiFi card where we go through the same code paths
as card unplug and the card plug.  In this patch we introduce a new
API call for doing just that: sdio_trigger_replug().  This API call
will trigger an unplug of the SDIO card followed by a plug of the
card.  As part of this the card will be nicely reset.

Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

 drivers/mmc/core/core.c       | 28 ++++++++++++++++++++++++++--
 drivers/mmc/core/sdio_io.c    | 20 ++++++++++++++++++++
 include/linux/mmc/host.h      | 15 ++++++++++++++-
 include/linux/mmc/sdio_func.h |  2 ++
 4 files changed, 62 insertions(+), 3 deletions(-)

diff --git a/drivers/mmc/core/core.c b/drivers/mmc/core/core.c
index 9020cb2490f7..48a7d23aed26 100644
--- a/drivers/mmc/core/core.c
+++ b/drivers/mmc/core/core.c
@@ -2164,6 +2164,12 @@ int mmc_sw_reset(struct mmc_host *host)
 }
 EXPORT_SYMBOL(mmc_sw_reset);
 
+void mmc_trigger_replug(struct mmc_host *host)
+{
+	host->trigger_replug_state = MMC_REPLUG_STATE_UNPLUG;
+	_mmc_detect_change(host, 0, false);
+}
+
 static int mmc_rescan_try_freq(struct mmc_host *host, unsigned freq)
 {
 	host->f_init = freq;
@@ -2217,6 +2223,11 @@ int _mmc_detect_card_removed(struct mmc_host *host)
 	if (!host->card || mmc_card_removed(host->card))
 		return 1;
 
+	if (host->trigger_replug_state == MMC_REPLUG_STATE_UNPLUG) {
+		mmc_card_set_removed(host->card);
+		return 1;
+	}
+
 	ret = host->bus_ops->alive(host);
 
 	/*
@@ -2329,8 +2340,21 @@ void mmc_rescan(struct work_struct *work)
 	mmc_bus_put(host);
 
 	mmc_claim_host(host);
-	if (mmc_card_is_removable(host) && host->ops->get_cd &&
-			host->ops->get_cd(host) == 0) {
+
+	/*
+	 * Move through the state machine if we're triggering an unplug
+	 * followed by a re-plug.
+	 */
+	if (host->trigger_replug_state == MMC_REPLUG_STATE_UNPLUG) {
+		host->trigger_replug_state = MMC_REPLUG_STATE_PLUG;
+		_mmc_detect_change(host, 0, false);
+	} else if (host->trigger_replug_state == MMC_REPLUG_STATE_PLUG) {
+		host->trigger_replug_state = MMC_REPLUG_STATE_NONE;
+	}
+
+	if (host->trigger_replug_state == MMC_REPLUG_STATE_PLUG ||
+	    (mmc_card_is_removable(host) && host->ops->get_cd &&
+			host->ops->get_cd(host) == 0)) {
 		mmc_power_off(host);
 		mmc_release_host(host);
 		goto out;
diff --git a/drivers/mmc/core/sdio_io.c b/drivers/mmc/core/sdio_io.c
index 2ba00acf64e6..1c5c2a3ebe5e 100644
--- a/drivers/mmc/core/sdio_io.c
+++ b/drivers/mmc/core/sdio_io.c
@@ -811,3 +811,23 @@ void sdio_retune_release(struct sdio_func *func)
 	mmc_retune_release(func->card->host);
 }
 EXPORT_SYMBOL_GPL(sdio_retune_release);
+
+/**
+ *	sdio_trigger_replug - trigger an "unplug" + "plug" of the card
+ *	@func: SDIO function attached to host
+ *
+ *	When you call this function we will schedule events that will
+ *	make it look like the card contining the given SDIO func was
+ *	unplugged and then re-plugged-in.  This is as close as possible
+ *	to a full reset of the card that can be achieved.
+ *
+ *	NOTE: routnine will temporarily make the card look as if it is
+ *	removable even if it is marked non-removable.
+ *
+ *	This function should be called while the host is claimed.
+ */
+void sdio_trigger_replug(struct sdio_func *func)
+{
+	mmc_trigger_replug(func->card->host);
+}
+EXPORT_SYMBOL(sdio_trigger_replug);
diff --git a/include/linux/mmc/host.h b/include/linux/mmc/host.h
index a9b12322c775..e0d41a1bcf17 100644
--- a/include/linux/mmc/host.h
+++ b/include/linux/mmc/host.h
@@ -410,6 +410,12 @@ struct mmc_host {
 
 	bool			trigger_card_event; /* card_event necessary */
 
+	/* state machine for triggering unplug/replug */
+#define MMC_REPLUG_STATE_NONE	0		/* not doing unplug/replug */
+#define MMC_REPLUG_STATE_UNPLUG	1		/* do unplug next */
+#define MMC_REPLUG_STATE_PLUG	2		/* do plug next */
+	u8			trigger_replug_state;
+
 	struct mmc_card		*card;		/* device attached to this host */
 
 	wait_queue_head_t	wq;
@@ -530,7 +536,12 @@ int mmc_regulator_get_supply(struct mmc_host *mmc);
 
 static inline int mmc_card_is_removable(struct mmc_host *host)
 {
-	return !(host->caps & MMC_CAP_NONREMOVABLE);
+	/*
+	 * A non-removable card briefly looks removable if code has forced
+	 * a re-plug of the card.
+	 */
+	return host->trigger_replug_state != MMC_REPLUG_STATE_NONE ||
+		!(host->caps & MMC_CAP_NONREMOVABLE);
 }
 
 static inline int mmc_card_keep_power(struct mmc_host *host)
@@ -583,4 +594,6 @@ static inline enum dma_data_direction mmc_get_dma_dir(struct mmc_data *data)
 int mmc_send_tuning(struct mmc_host *host, u32 opcode, int *cmd_error);
 int mmc_abort_tuning(struct mmc_host *host, u32 opcode);
 
+void mmc_trigger_replug(struct mmc_host *host);
+
 #endif /* LINUX_MMC_HOST_H */
diff --git a/include/linux/mmc/sdio_func.h b/include/linux/mmc/sdio_func.h
index 5a177f7a83c3..0d6c73768ae3 100644
--- a/include/linux/mmc/sdio_func.h
+++ b/include/linux/mmc/sdio_func.h
@@ -173,4 +173,6 @@ extern void sdio_retune_crc_enable(struct sdio_func *func);
 extern void sdio_retune_hold_now(struct sdio_func *func);
 extern void sdio_retune_release(struct sdio_func *func);
 
+extern void sdio_trigger_replug(struct sdio_func *func);
+
 #endif /* LINUX_MMC_SDIO_FUNC_H */
-- 
2.22.0.510.g264f2c817a-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4467709F2
	for <lists+linux-rockchip@lfdr.de>; Mon, 22 Jul 2019 21:42:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T+UJDhS5c/f809QFwWUQ4R/+/9KnLbcClcdyqlJ/7FM=; b=C2ZyVKcJ/3w/bl
	tntm90nlJvZOS/q9lYbR2DVwljwyaLzi6O4OlKj56NqAVLUcg0wBKTZ9+jrn3yK4cDkUV61ojrEks
	fCaIfen3ukR/EYa9I5bt3jtFn3ZAnsT14hd9Wn8KHnYTUdsVeoU8e3izygUWIdjVTzEGqx7+3H0pJ
	7WMljnPkEE384MlGVfLhilhuUZjSbROi1eNhtRpmpaHjNVsFOPhHWFAbRKx+WzEQLgN5UhrigiQmH
	s66F4MZO45pCYXwbwzmR3LY57y4OmJ+FDLcAWno9lha0vDy9DKqatEqKUdaA3pwyQ/8JPqMJ8bmdb
	uVbCkRZ63kTBTOOtfDDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpeCQ-0000cs-0w; Mon, 22 Jul 2019 19:42:18 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpeBe-00007G-Ow
 for linux-rockchip@lists.infradead.org; Mon, 22 Jul 2019 19:41:32 +0000
Received: by mail-pf1-x444.google.com with SMTP id m30so17873055pff.8
 for <linux-rockchip@lists.infradead.org>; Mon, 22 Jul 2019 12:41:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=i2ydHyx146Gpo6F/4Mk5APlIfYtwAqU9vRc87LHJBOg=;
 b=AfWp26av7d1R0GVQBZqmVDo36nl/ONdvumK8cBMcUztafl3YzMOQbj4/Ut6lsbwQYy
 2IDNfw3efcHERFPIOzf68rMcvJlkJCPORgBDyZvs+wnOumbE/nmtn788576/X8Nxv7Ms
 Q04HPAwn45lcvNsj0GEKx81i8tmNcG+fCQ1vI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=i2ydHyx146Gpo6F/4Mk5APlIfYtwAqU9vRc87LHJBOg=;
 b=q4vZU+xL4q9zagN/lWFTE1xms+9Y3LpjW1lSm4jVbxk2wrxnpUr237NDlmGO1eeewF
 NQX11RqOEo4hFVLldzxOhEEvNOfeB6QwxkXdzrJxkMtj5j40iswuqTDyNCU0l9GbqE4F
 IWN4PXJK1AXAPTkv05qCCogACVBC8Z7VB0CqVHLIOOLTVuYQmPmEux3i0gJ0CC82QpxG
 Qr4q+Tk4qT0eJttuILWg2St1FSEQovsqi/4J63++7yo+YcHYK2AcHP8EWsxvloO5ZYYf
 UYSrtcWQ5X7twUtYQAuWKoLp8OOvLs2FaVMzSGP7XSLDBYyhQsv9YRXtSDANqCZLRgni
 Irww==
X-Gm-Message-State: APjAAAXXe+C6NPzGwFaks0dAljKLYfwm+oC6r1yC+GaLU8SRx4KWHUms
 va3l2m0XEaIgmstT2DrGXEM1wQ==
X-Google-Smtp-Source: APXvYqxRbyCKEUMoA0Ph44+At0UA78EhAjWJ+Hp3Q5G6AQTNXv8xUqU98puubWwzR/JltKnz8oH/pQ==
X-Received: by 2002:a63:1020:: with SMTP id f32mr43080141pgl.203.1563824490156; 
 Mon, 22 Jul 2019 12:41:30 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com
 ([2620:15c:202:1:24fa:e766:52c9:e3b2])
 by smtp.gmail.com with ESMTPSA id z4sm29838803pgp.80.2019.07.22.12.41.29
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 22 Jul 2019 12:41:29 -0700 (PDT)
From: Douglas Anderson <dianders@chromium.org>
To: Ulf Hansson <ulf.hansson@linaro.org>, Kalle Valo <kvalo@codeaurora.org>,
 Adrian Hunter <adrian.hunter@intel.com>
Subject: [PATCH v2 1/2] mmc: core: Add sdio_trigger_replug() API
Date: Mon, 22 Jul 2019 12:39:38 -0700
Message-Id: <20190722193939.125578-2-dianders@chromium.org>
X-Mailer: git-send-email 2.22.0.657.g960e92d24f-goog
In-Reply-To: <20190722193939.125578-1-dianders@chromium.org>
References: <20190722193939.125578-1-dianders@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_124130_910859_7CCD6670 
X-CRM114-Status: GOOD (  23.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 Ganapathi Bhat <gbhat@marvell.com>, Brian Norris <briannorris@chromium.org>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>,
 Xinming Hu <huxinming820@gmail.com>, netdev@vger.kernel.org,
 Andreas Fenkart <afenkart@gmail.com>, linux-wireless@vger.kernel.org,
 Douglas Anderson <dianders@chromium.org>,
 Amitkumar Karwar <amitkarwar@gmail.com>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Nishant Sarmukadam <nishants@marvell.com>,
 Matthias Kaehlcke <mka@chromium.org>, Avri Altman <avri.altman@wdc.com>,
 linux-mmc@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>,
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
Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
---

Changes in v2:
- s/routnine/routine (Brian Norris, Matthias Kaehlcke).
- s/contining/containing (Matthias Kaehlcke).
- Add Matthias Reviewed-by tag.

 drivers/mmc/core/core.c       | 28 ++++++++++++++++++++++++++--
 drivers/mmc/core/sdio_io.c    | 20 ++++++++++++++++++++
 include/linux/mmc/host.h      | 15 ++++++++++++++-
 include/linux/mmc/sdio_func.h |  2 ++
 4 files changed, 62 insertions(+), 3 deletions(-)

diff --git a/drivers/mmc/core/core.c b/drivers/mmc/core/core.c
index 221127324709..5da365b1fdb4 100644
--- a/drivers/mmc/core/core.c
+++ b/drivers/mmc/core/core.c
@@ -2161,6 +2161,12 @@ int mmc_sw_reset(struct mmc_host *host)
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
@@ -2214,6 +2220,11 @@ int _mmc_detect_card_removed(struct mmc_host *host)
 	if (!host->card || mmc_card_removed(host->card))
 		return 1;
 
+	if (host->trigger_replug_state == MMC_REPLUG_STATE_UNPLUG) {
+		mmc_card_set_removed(host->card);
+		return 1;
+	}
+
 	ret = host->bus_ops->alive(host);
 
 	/*
@@ -2326,8 +2337,21 @@ void mmc_rescan(struct work_struct *work)
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
index 2ba00acf64e6..9b96267ac855 100644
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
+ *	make it look like the card containing the given SDIO func was
+ *	unplugged and then re-plugged-in.  This is as close as possible
+ *	to a full reset of the card that can be achieved.
+ *
+ *	NOTE: routine will temporarily make the card look as if it is
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
index 4a351cb7f20f..40f21b3e6aaf 100644
--- a/include/linux/mmc/host.h
+++ b/include/linux/mmc/host.h
@@ -407,6 +407,12 @@ struct mmc_host {
 
 	bool			trigger_card_event; /* card_event necessary */
 
+	/* state machine for triggering unplug/replug */
+#define MMC_REPLUG_STATE_NONE	0		/* not doing unplug/replug */
+#define MMC_REPLUG_STATE_UNPLUG	1		/* do unplug next */
+#define MMC_REPLUG_STATE_PLUG	2		/* do plug next */
+	u8			trigger_replug_state;
+
 	struct mmc_card		*card;		/* device attached to this host */
 
 	wait_queue_head_t	wq;
@@ -527,7 +533,12 @@ int mmc_regulator_get_supply(struct mmc_host *mmc);
 
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
@@ -580,4 +591,6 @@ static inline enum dma_data_direction mmc_get_dma_dir(struct mmc_data *data)
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
2.22.0.657.g960e92d24f-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

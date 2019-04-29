Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C031EBC3
	for <lists+linux-rockchip@lfdr.de>; Mon, 29 Apr 2019 22:41:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nh1odcx6ixaBrAabxa+EaRPxO92iDnENVtp1zOTEaOc=; b=X0dUsgugMDGADs
	ju6F4pvAI5XnfwNoe08MSMqLAz7o3piqwNwWi6MQ5BiSdxvPqPhhDOg1+UPrMxJAea7md++ebouIf
	uqp8duzGS00YNJpqQZJB3LbfM3LeGJpAh3uHh3kjQAMKntGDECpfT/WE/hQlZXTzEuu37QZgyDo+8
	x3KLkXpsazvVBIudRxfPHcYPwWr5U/Rzh9M4LII8fNVOpwsc1Z3+TeBeOOImm5z1m4t/0LLJ3OU7B
	DyjQ9O8kGj4nfWGJfn0DDCTdsRJDpHNthnS4PzKEh+MnPt4gclvKcN7uXgRm09BBKeapQ5Mrz46VR
	fc5bKw6fhBKdpEsk2QgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLD5E-0001OF-OB; Mon, 29 Apr 2019 20:41:04 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLD5B-0001Nm-1g
 for linux-rockchip@lists.infradead.org; Mon, 29 Apr 2019 20:41:02 +0000
Received: by mail-pf1-x441.google.com with SMTP id j11so5889943pff.13
 for <linux-rockchip@lists.infradead.org>; Mon, 29 Apr 2019 13:41:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=B+csqpC1h5CSlLA1NqWjnmF/4a0jZaS6aN/cncxm8MA=;
 b=BGwSjyHYLdOCHtIwdkFEbtnJPjz+uu2fOaqK+U/m04kep44i0H/PcoXBw0EkUJQong
 gT5GvZr5RaIR9dAecvTpM9CmJnff4WfGjHCTMMz0pc1SZGwSG3CGKxOZ4rHlZjVDNSmy
 8xo8Qu767SFyUgNt2faC6NG4FZOl3owGi6HKg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=B+csqpC1h5CSlLA1NqWjnmF/4a0jZaS6aN/cncxm8MA=;
 b=ONxVNH16Dn9Ody34MyRv6lIubAxCSt/va7yRvwr6Xg0rFAXUB6G2jC3O4qlOblOS5X
 mwhXblhYKprWfdeMpxacT7BsDKnr28Ed9OPyVb5alze0RPbq/9koppSTb7EeYNIlesZl
 GWZl4C9LvjCUv1EpRFGZzvFYPnrzpv/LVj0Rf4tvM149K3eegqMHK0ZFFRTqbEkXBXg0
 brpOEzccQBD/Eo9JWlqaU9SV5j0Nc+Czk25H3h6EDVJCzNid/eqILtLGcDYmFI6j6v5K
 wVDoKJSA023g4m2a8LPXd3Q69pgiQWBftHDDQLQIeH2JOXkxqdyJ0jqSA25jaPBD+FoV
 aGGQ==
X-Gm-Message-State: APjAAAXDnrIaVTQPsKNQEPfjVsKRJSOY98d+1j9edadIHHZ2orudwJdb
 mPy6XxOkVbTczTfKJdIhV5vYEQ==
X-Google-Smtp-Source: APXvYqy2U93Se74A9nd5eXW/0paj+fTyvSUOEil/XLlpFfkv4hSFfOLescbkvvVARFRpXB3gCPJ50A==
X-Received: by 2002:a65:484a:: with SMTP id i10mr15499552pgs.408.1556570460478; 
 Mon, 29 Apr 2019 13:41:00 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com
 ([2620:15c:202:1:24fa:e766:52c9:e3b2])
 by smtp.gmail.com with ESMTPSA id f20sm6000264pgi.38.2019.04.29.13.40.58
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 29 Apr 2019 13:40:59 -0700 (PDT)
From: Douglas Anderson <dianders@chromium.org>
To: Jaehoon Chung <jh80.chung@samsung.com>,
 Ulf Hansson <ulf.hansson@linaro.org>, Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH v2] mmc: dw_mmc: Disable SDIO interrupts while suspended to
 fix suspend/resume
Date: Mon, 29 Apr 2019 13:40:40 -0700
Message-Id: <20190429204040.18725-1-dianders@chromium.org>
X-Mailer: git-send-email 2.21.0.593.g511ec345e18-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_134101_110775_64CFD601 
X-CRM114-Status: GOOD (  23.30  )
X-Spam-Score: -0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: heiko@sntech.de, linux-mmc@vger.kernel.org, briannorris@chromium.org,
 linux-wireless@vger.kernel.org, Douglas Anderson <dianders@chromium.org>,
 stable@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, mka@chromium.org, ryandcase@chromium.org,
 Guenter Roeck <groeck@chromium.org>,
 Emil Renner Berthing <emil.renner.berthing@gmail.com>,
 Sonny Rao <sonnyrao@chromium.org>, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Processing SDIO interrupts while dw_mmc is suspended (or partly
suspended) seems like a bad idea.  We really don't want to be
processing them until we've gotten ourselves fully powered up.

You might be wondering how it's even possible to become suspended when
an SDIO interrupt is active.  As can be seen in
dw_mci_enable_sdio_irq(), we explicitly keep dw_mmc out of runtime
suspend when the SDIO interrupt is enabled.  ...but even though we
stop normal runtime suspend transitions when SDIO interrupts are
enabled, the dw_mci_runtime_suspend() can still get called for a full
system suspend.

Let's handle all this by explicitly masking SDIO interrupts in the
suspend call and unmasking them later in the resume call.  To do this
cleanly I'll keep track of whether the client requested that SDIO
interrupts be enabled so that we can reliably restore them regardless
of whether we're masking them for one reason or another.

It should be noted that if dw_mci_enable_sdio_irq() is never called
(for instance, if we don't have an SDIO card plugged in) that
"client_sdio_enb" will always be false.  In those cases this patch
adds a tiny bit of overhead to suspend/resume (a spinlock and a
read/write of INTMASK) but other than that is a no-op.  The
SDMMC_INT_SDIO bit should always be clear and clearing it again won't
hurt.

Without this fix it can be seen that rk3288-veyron Chromebooks with
Marvell WiFi would sometimes fail to resume WiFi even after picking my
recent mwifiex patch [1].  Specifically you'd see messages like this:
  mwifiex_sdio mmc1:0001:1: Firmware wakeup failed
  mwifiex_sdio mmc1:0001:1: PREP_CMD: FW in reset state

...and tracing through the resume code in the failing cases showed
that we were processing a SDIO interrupt really early in the resume
call.

NOTE: downstream in Chrome OS 3.14 and 3.18 kernels (both of which
support the Marvell SDIO WiFi card) we had a patch ("CHROMIUM: sdio:
Defer SDIO interrupt handling until after resume") [2].  Presumably
this is the same problem that was solved by that patch.

[1] https://lkml.kernel.org/r/20190404040106.40519-1-dianders@chromium.org
[2] https://crrev.com/c/230765

Cc: <stable@vger.kernel.org> # 4.14.x
Signed-off-by: Douglas Anderson <dianders@chromium.org>
---
I didn't put any "Fixes" tag here, but presumably this could be
backported to whichever kernels folks found it useful for.  I have at
least confirmed that kernels v4.14 and v4.19 (as well as v5.1-rc2)
show the problem.  It is very easy to pick this to v4.19 and it
definitely fixes the problem there.

I haven't spent the time to pick this to 4.14 myself, but presumably
it wouldn't be too hard to backport this as far as v4.13 since that
contains commit 32dba73772f8 ("mmc: dw_mmc: Convert to use
MMC_CAP2_SDIO_IRQ_NOTHREAD for SDIO IRQs").  Prior to that it might
make sense for anyone experiencing this problem to just pick the old
CHROMIUM patch to fix them.

Changes in v2:
- Suggested 4.14+ in the stable tag (Sasha-bot)
- Extra note that this is a noop on non-SDIO (Shawn / Emil)
- Make boolean logic cleaner as per https://crrev.com/c/1586207/1
- Hopefully clear comments as per https://crrev.com/c/1586207/1

 drivers/mmc/host/dw_mmc.c | 27 +++++++++++++++++++++++----
 drivers/mmc/host/dw_mmc.h |  3 +++
 2 files changed, 26 insertions(+), 4 deletions(-)

diff --git a/drivers/mmc/host/dw_mmc.c b/drivers/mmc/host/dw_mmc.c
index 80dc2fd6576c..480067b87a94 100644
--- a/drivers/mmc/host/dw_mmc.c
+++ b/drivers/mmc/host/dw_mmc.c
@@ -1664,7 +1664,8 @@ static void dw_mci_init_card(struct mmc_host *mmc, struct mmc_card *card)
 	}
 }
 
-static void __dw_mci_enable_sdio_irq(struct dw_mci_slot *slot, int enb)
+static void __dw_mci_enable_sdio_irq(struct dw_mci_slot *slot, bool enb,
+				     bool client_requested)
 {
 	struct dw_mci *host = slot->host;
 	unsigned long irqflags;
@@ -1672,6 +1673,20 @@ static void __dw_mci_enable_sdio_irq(struct dw_mci_slot *slot, int enb)
 
 	spin_lock_irqsave(&host->irq_lock, irqflags);
 
+	/*
+	 * If we're being called directly from dw_mci_enable_sdio_irq()
+	 * (which means that the client driver actually wants to enable or
+	 * disable interrupts) then save the request.  Otherwise this
+	 * wasn't directly requested by the client and we should logically
+	 * AND it with the client request since we want to disable if
+	 * _either_ the client disabled OR we have some other reason to
+	 * disable temporarily.
+	 */
+	if (client_requested)
+		host->client_sdio_enb = enb;
+	else
+		enb &= host->client_sdio_enb;
+
 	/* Enable/disable Slot Specific SDIO interrupt */
 	int_mask = mci_readl(host, INTMASK);
 	if (enb)
@@ -1688,7 +1703,7 @@ static void dw_mci_enable_sdio_irq(struct mmc_host *mmc, int enb)
 	struct dw_mci_slot *slot = mmc_priv(mmc);
 	struct dw_mci *host = slot->host;
 
-	__dw_mci_enable_sdio_irq(slot, enb);
+	__dw_mci_enable_sdio_irq(slot, enb, true);
 
 	/* Avoid runtime suspending the device when SDIO IRQ is enabled */
 	if (enb)
@@ -1701,7 +1716,7 @@ static void dw_mci_ack_sdio_irq(struct mmc_host *mmc)
 {
 	struct dw_mci_slot *slot = mmc_priv(mmc);
 
-	__dw_mci_enable_sdio_irq(slot, 1);
+	__dw_mci_enable_sdio_irq(slot, true, false);
 }
 
 static int dw_mci_execute_tuning(struct mmc_host *mmc, u32 opcode)
@@ -2734,7 +2749,7 @@ static irqreturn_t dw_mci_interrupt(int irq, void *dev_id)
 		if (pending & SDMMC_INT_SDIO(slot->sdio_id)) {
 			mci_writel(host, RINTSTS,
 				   SDMMC_INT_SDIO(slot->sdio_id));
-			__dw_mci_enable_sdio_irq(slot, 0);
+			__dw_mci_enable_sdio_irq(slot, false, false);
 			sdio_signal_irq(slot->mmc);
 		}
 
@@ -3424,6 +3439,8 @@ int dw_mci_runtime_suspend(struct device *dev)
 {
 	struct dw_mci *host = dev_get_drvdata(dev);
 
+	__dw_mci_enable_sdio_irq(host->slot, false, false);
+
 	if (host->use_dma && host->dma_ops->exit)
 		host->dma_ops->exit(host);
 
@@ -3490,6 +3507,8 @@ int dw_mci_runtime_resume(struct device *dev)
 	/* Now that slots are all setup, we can enable card detect */
 	dw_mci_enable_cd(host);
 
+	__dw_mci_enable_sdio_irq(host->slot, true, false);
+
 	return 0;
 
 err:
diff --git a/drivers/mmc/host/dw_mmc.h b/drivers/mmc/host/dw_mmc.h
index 46e9f8ec5398..dfbace0f5043 100644
--- a/drivers/mmc/host/dw_mmc.h
+++ b/drivers/mmc/host/dw_mmc.h
@@ -127,6 +127,7 @@ struct dw_mci_dma_slave {
  * @cmd11_timer: Timer for SD3.0 voltage switch over scheme.
  * @cto_timer: Timer for broken command transfer over scheme.
  * @dto_timer: Timer for broken data transfer over scheme.
+ * @client_sdio_enb: The value last passed to enable_sdio_irq.
  *
  * Locking
  * =======
@@ -234,6 +235,8 @@ struct dw_mci {
 	struct timer_list       cmd11_timer;
 	struct timer_list       cto_timer;
 	struct timer_list       dto_timer;
+
+	bool			client_sdio_enb;
 };
 
 /* DMA ops for Internal/External DMAC interface */
-- 
2.21.0.593.g511ec345e18-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

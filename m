Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 465D845028
	for <lists+linux-rockchip@lfdr.de>; Fri, 14 Jun 2019 01:42:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=52RiunhNbCpNIGWURHFno3iC+hgFUDVfmJUU2BUxyTo=; b=bNPf9b3F5rWQDG
	0iZjNdgdNqlsgaHYA7aCdKlUJZIdciJnQl/BrCqwGHSU6quw4wrSNOTuKZ5kpUV48kosSx1+FiQeg
	OJVIswro1CJzR1sqSt4MJ01CLXSsixwpE36jERDxJVnEOgfwJ27vWE0gUctsa6MEoqz6I9KE0lnXV
	3y4YbbZuoOEZvVWRfEN/xmbnbghEyVaWBOXGsGw5xp+be450mLejwW8GhKCSEhPCr4bBqLeRQkmRD
	zA1hkfHswaCtvrwsL2mXYZNiO0elL4euTG29P/ccOwfg2Bvt6I8VfkSXdSv5Uyva/v4nUFQ+tqzUL
	RP8KZt3ybGWP2jdolA7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbZMF-0004hj-MB; Thu, 13 Jun 2019 23:42:15 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbZMB-0004e6-5V
 for linux-rockchip@lists.infradead.org; Thu, 13 Jun 2019 23:42:12 +0000
Received: by mail-pg1-x544.google.com with SMTP id s27so406655pgl.2
 for <linux-rockchip@lists.infradead.org>; Thu, 13 Jun 2019 16:42:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=VtrTSgIpf1xWm97iCxjL9r9Hr48USPFt3UpK18m2DGw=;
 b=VlbrMMDKbT4x3Yq8VVmgt3/aCuibVx46072FJZ85/2afM5Hoa9T45Tc95JV4QsjlHB
 rCVUUCDzd5r+hoHzmy89Z8rrvygMTjG//urZJ5Ek8TGoyjtalSNfqpLyR02bIOXAthdA
 Wo9gEBu1br9rAsGKlA2eFHXM1lLylkQ+rT+xI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=VtrTSgIpf1xWm97iCxjL9r9Hr48USPFt3UpK18m2DGw=;
 b=sjyi+GwCPdxLxa6U4e3qN/KjkYYC7rn5HuWfqs4/YiOa5/MVjtvb7jgnp4l9WibHuQ
 nQywkZmhUpwzD59IEznGxhTICrX6EFx1QlxYxVtGMYX+WSG6FyVo6h9upq+/yxENNjF+
 UaVC9yHElq5RO0FI2x3ohTwjniSXhgUttr5YGYz8jtMa+4n8Aai1j2cd0Y1D3QGCwSQu
 meUsLCQqKElqUwXdn73jWImQfH8podkjI0rHatH9RZ22aIbOdLQOOgDTgnVbZl0Fx913
 3slBpWSINcVSpfnPHe961FSpqDKKYoHa/glci3wWDkvhjh005Y8HULZM8OzQRZytyAPK
 ETgg==
X-Gm-Message-State: APjAAAXCK+J2AcvLNmswWDWIM/6QNE2wpxqWduCDRuYGVZTy8WmFYOSK
 +qNHtxpKbUCSuE6C7YpxyUTaRq1yn6k=
X-Google-Smtp-Source: APXvYqwOtyJFXBqMXgHurwXO78zJmhJfJcPcRJQtQzXHSDqjugUINkmcJyuTNXHTDEegD1kcT7ujFQ==
X-Received: by 2002:a17:90a:8a10:: with SMTP id
 w16mr7994113pjn.133.1560469330656; 
 Thu, 13 Jun 2019 16:42:10 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com
 ([2620:15c:202:1:24fa:e766:52c9:e3b2])
 by smtp.gmail.com with ESMTPSA id p7sm781088pfp.131.2019.06.13.16.42.09
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 13 Jun 2019 16:42:10 -0700 (PDT)
From: Douglas Anderson <dianders@chromium.org>
To: Ulf Hansson <ulf.hansson@linaro.org>, Kalle Valo <kvalo@codeaurora.org>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Arend van Spriel <arend.vanspriel@broadcom.com>
Subject: [PATCH v4 2/5] mmc: core: API to temporarily disable retuning for
 SDIO CRC errors
Date: Thu, 13 Jun 2019 16:41:50 -0700
Message-Id: <20190613234153.59309-3-dianders@chromium.org>
X-Mailer: git-send-email 2.22.0.rc2.383.gf4fbbf30c2-goog
In-Reply-To: <20190613234153.59309-1-dianders@chromium.org>
References: <20190613234153.59309-1-dianders@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_164211_216106_0382392F 
X-CRM114-Status: GOOD (  24.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-mmc@vger.kernel.org, Chi-Hsien Lin <chi-hsien.lin@cypress.com>,
 Douglas Anderson <dianders@chromium.org>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>,
 brcm80211-dev-list@cypress.com, Ritesh Harjani <riteshh@codeaurora.org>,
 briannorris@chromium.org, linux-rockchip@lists.infradead.org, mka@chromium.org,
 Naveen Gupta <naveen.gupta@cypress.com>, Shawn Lin <shawn.lin@rock-chips.com>,
 Madhan Mohan R <madhanmohan.r@cypress.com>, Double Lo <double.lo@cypress.com>,
 Avri Altman <avri.altman@wdc.com>, Wright Feng <wright.feng@cypress.com>,
 Jiong Wu <lohengrin1024@gmail.com>, Thomas Gleixner <tglx@linutronix.de>,
 Allison Randal <allison@lohutok.net>, brcm80211-dev-list.pdl@broadcom.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Normally when the MMC core sees an "-EILSEQ" error returned by a host
controller then it will trigger a retuning of the card.  This is
generally a good idea.

However, if a command is expected to sometimes cause transfer errors
then these transfer errors shouldn't cause a re-tuning.  This
re-tuning will be a needless waste of time.  One example case where a
transfer is expected to cause errors is when transitioning between
idle (sometimes referred to as "sleep" in Broadcom code) and active
state on certain Broadcom WiFi SDIO cards.  Specifically if the card
was already transitioning between states when the command was sent it
could cause an error on the SDIO bus.

Let's add an API that the SDIO function drivers can call that will
temporarily disable the auto-tuning functionality.  Then we can add a
call to this in the Broadcom WiFi driver and any other driver that
might have similar needs.

NOTE: this makes the assumption that the card is already tuned well
enough that it's OK to disable the auto-retuning during one of these
error-prone situations.  Presumably the driver code performing the
error-prone transfer knows how to recover / retry from errors.  ...and
after we can get back to a state where transfers are no longer
error-prone then we can enable the auto-retuning again.  If we truly
find ourselves in a case where the card needs to be retuned sometimes
to handle one of these error-prone transfers then we can always try a
few transfers first without auto-retuning and then re-try with
auto-retuning if the first few fail.

Without this change on rk3288-veyron-minnie I periodically see this in
the logs of a machine just sitting there idle:
  dwmmc_rockchip ff0d0000.dwmmc: Successfully tuned phase to XYZ

Fixes: bd11e8bd03ca ("mmc: core: Flag re-tuning is needed on CRC errors")
Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

Changes in v4:
- Moved to SDIO API only (Adrian, Ulf).
- Renamed to make it less generic, now retune_crc_disable (Ulf).
- Function header makes it clear host must be claimed (Ulf).
- No more WARN_ON (Ulf).

Changes in v3:
- Took out the spinlock since I believe this is all in one context.

Changes in v2:
- Updated commit message to clarify based on discussion of v1.

 drivers/mmc/core/core.c       |  5 +++--
 drivers/mmc/core/sdio_io.c    | 36 +++++++++++++++++++++++++++++++++++
 include/linux/mmc/core.h      |  2 ++
 include/linux/mmc/host.h      |  1 +
 include/linux/mmc/sdio_func.h |  3 +++
 5 files changed, 45 insertions(+), 2 deletions(-)

diff --git a/drivers/mmc/core/core.c b/drivers/mmc/core/core.c
index 6db36dc870b5..9020cb2490f7 100644
--- a/drivers/mmc/core/core.c
+++ b/drivers/mmc/core/core.c
@@ -144,8 +144,9 @@ void mmc_request_done(struct mmc_host *host, struct mmc_request *mrq)
 	int err = cmd->error;
 
 	/* Flag re-tuning needed on CRC errors */
-	if ((cmd->opcode != MMC_SEND_TUNING_BLOCK &&
-	    cmd->opcode != MMC_SEND_TUNING_BLOCK_HS200) &&
+	if (cmd->opcode != MMC_SEND_TUNING_BLOCK &&
+	    cmd->opcode != MMC_SEND_TUNING_BLOCK_HS200 &&
+	    !host->retune_crc_disable &&
 	    (err == -EILSEQ || (mrq->sbc && mrq->sbc->error == -EILSEQ) ||
 	    (mrq->data && mrq->data->error == -EILSEQ) ||
 	    (mrq->stop && mrq->stop->error == -EILSEQ)))
diff --git a/drivers/mmc/core/sdio_io.c b/drivers/mmc/core/sdio_io.c
index f79f0b0caab8..f822a9630b0e 100644
--- a/drivers/mmc/core/sdio_io.c
+++ b/drivers/mmc/core/sdio_io.c
@@ -734,3 +734,39 @@ int sdio_set_host_pm_flags(struct sdio_func *func, mmc_pm_flag_t flags)
 	return 0;
 }
 EXPORT_SYMBOL_GPL(sdio_set_host_pm_flags);
+
+/**
+ *	sdio_retune_crc_disable - temporarily disable retuning on CRC errors
+ *	@func: SDIO function attached to host
+ *
+ *	If the SDIO card is known to be in a state where it might produce
+ *	CRC errors on the bus in response to commands (like if we know it is
+ *	transitioning between power states), an SDIO function driver can
+ *	call this function to temporarily disable the SD/MMC core behavior of
+ *	triggering an automatic retuning.
+ *
+ *	This function should be called while the host is claimed and the host
+ *	should remain claimed until sdio_retune_crc_enable() is called.
+ *	Specifically, the expected sequence of calls is:
+ *	- sdio_claim_host()
+ *	- sdio_retune_crc_disable()
+ *	- some number of calls like sdio_writeb() and sdio_readb()
+ *	- sdio_release_host()
+ */
+void sdio_retune_crc_disable(struct sdio_func *func)
+{
+	func->card->host->retune_crc_disable = true;
+}
+EXPORT_SYMBOL_GPL(sdio_retune_crc_disable);
+
+/**
+ *	sdio_retune_crc_enable - reneable retuning on CRC errors
+ *	@func: SDIO function attached to host
+ *
+ *	This is the compement to sdio_retune_crc_disable().
+ */
+void sdio_retune_crc_enable(struct sdio_func *func)
+{
+	func->card->host->retune_crc_disable = false;
+}
+EXPORT_SYMBOL_GPL(sdio_retune_crc_enable);
diff --git a/include/linux/mmc/core.h b/include/linux/mmc/core.h
index 134a6483347a..02a13abf0cda 100644
--- a/include/linux/mmc/core.h
+++ b/include/linux/mmc/core.h
@@ -178,6 +178,8 @@ int mmc_wait_for_cmd(struct mmc_host *host, struct mmc_command *cmd,
 
 int mmc_hw_reset(struct mmc_host *host);
 int mmc_sw_reset(struct mmc_host *host);
+void mmc_expect_errors_begin(struct mmc_host *host);
+void mmc_expect_errors_end(struct mmc_host *host);
 void mmc_set_data_timeout(struct mmc_data *data, const struct mmc_card *card);
 
 #endif /* LINUX_MMC_CORE_H */
diff --git a/include/linux/mmc/host.h b/include/linux/mmc/host.h
index 43d0f0c496f6..ecb7972e2423 100644
--- a/include/linux/mmc/host.h
+++ b/include/linux/mmc/host.h
@@ -398,6 +398,7 @@ struct mmc_host {
 	unsigned int		retune_now:1;	/* do re-tuning at next req */
 	unsigned int		retune_paused:1; /* re-tuning is temporarily disabled */
 	unsigned int		use_blk_mq:1;	/* use blk-mq */
+	unsigned int		retune_crc_disable:1; /* don't trigger retune upon crc */
 
 	int			rescan_disable;	/* disable card detection */
 	int			rescan_entered;	/* used with nonremovable devices */
diff --git a/include/linux/mmc/sdio_func.h b/include/linux/mmc/sdio_func.h
index e9dfdd501cd1..4820e6d09dac 100644
--- a/include/linux/mmc/sdio_func.h
+++ b/include/linux/mmc/sdio_func.h
@@ -167,4 +167,7 @@ extern void sdio_f0_writeb(struct sdio_func *func, unsigned char b,
 extern mmc_pm_flag_t sdio_get_host_pm_caps(struct sdio_func *func);
 extern int sdio_set_host_pm_flags(struct sdio_func *func, mmc_pm_flag_t flags);
 
+extern void sdio_retune_crc_disable(struct sdio_func *func);
+extern void sdio_retune_crc_enable(struct sdio_func *func);
+
 #endif /* LINUX_MMC_SDIO_FUNC_H */
-- 
2.22.0.rc2.383.gf4fbbf30c2-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

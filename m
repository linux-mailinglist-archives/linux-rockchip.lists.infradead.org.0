Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D07FD3383F
	for <lists+linux-rockchip@lfdr.de>; Mon,  3 Jun 2019 20:38:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9hZZ4OfdCXlqrSM7j+pg1x/8lwHB9IpjOXrY3rDS6GE=; b=j5K/4rWkqRloAO
	Sjca1qw6EhxfSzkCqisR8EC60opO8c6KoVKCeRdurWJuAb1VMl6P2RWeF0/I1h3FNEZkxBnh5uKM+
	ddaeIR10fEkfEhCBYRzgVR5ZfOZNrXKOlN1I//YuYcsnnlPk3G8dt4UXDtIhBMOBvdUBQB0meW8tm
	j5UCg7o+2hkJw2LOl7rCRFRzMlfi1E0MRs1k4e1eW1me/vhS6CeyIAk3TmL9/JasCyuc/UTvFW6Ys
	glFZOjtGNrxt4/P3LzKT9uD/z2y8UgsH+Mnx9Lm7i/NcBGPbWsU+YF4E1pa8iGwRW6u52K8zmVNBb
	kLH7Ilopm723QPGG04Xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXrqN-0003gE-GT; Mon, 03 Jun 2019 18:38:03 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXrqJ-0003dZ-Qg
 for linux-rockchip@lists.infradead.org; Mon, 03 Jun 2019 18:38:01 +0000
Received: by mail-pg1-x544.google.com with SMTP id n2so8761329pgp.11
 for <linux-rockchip@lists.infradead.org>; Mon, 03 Jun 2019 11:37:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=CP6DRWA7LKCgGt9pwiCqtsnPv5tj+Sj41JO+48UE05Q=;
 b=j00Ayn3UyliSLQr2AD8QNJTrR+U1e6/G8QiuCYi3k/L0XGeh2RofuwkJB3FGkMGzzA
 Z1Xgqnrv/nbYZwss6HbQTGCwiXu1AsK8LXEf9ZkvQ6O13UFzooy1BBnawo61VBWR7DxD
 7VosDUdo4cA25EGkQ/BREI7rV6U3ncfZIk2lw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=CP6DRWA7LKCgGt9pwiCqtsnPv5tj+Sj41JO+48UE05Q=;
 b=MLJBeZ3F5yuAdUxnjQ2Y9goUiAJgd82WjympsFCvqGuJdq9tsAw+9V3djg3Ao0y3GO
 wbi4u4TT/nZCxhhZT6Y4PwIQ9WQWLb658g50xHSZHm8UB9mtxPtWkME04IexAa29a/ER
 RjrM+/1jZas19CqSP4O1wLaVrLdqzPYa4Dh87N1pyXv85MtqlxtzppK4cWHXXpl9tZrx
 lZJY1SmQxjaXDbUm/X7EN1Ycwqrz///q54F2grqKlwhKjalr1683KwMso09RqhMDBCoC
 MxquOX3YEpwLIPP0xjXB1BkMJ35gv8g5otuWjg/nYuqmfheg0NFHbzhu8AyBxdAOwNPt
 42RA==
X-Gm-Message-State: APjAAAVxYG1PVKVoqO/Vpf576ACWSYVZayZ9zWXsi+BWsojp9Emu1RD3
 be3KOsM5bhemIFKUCVRANb1Gdg==
X-Google-Smtp-Source: APXvYqwD8m+vFRG34kPaBeZVgclg3iOa2W61FtinNS3BojeHrk5fIHMmAA6IBO39kL8FIx182NdKuQ==
X-Received: by 2002:a17:90a:342:: with SMTP id
 2mr31042454pjf.128.1559587079247; 
 Mon, 03 Jun 2019 11:37:59 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com
 ([2620:15c:202:1:24fa:e766:52c9:e3b2])
 by smtp.gmail.com with ESMTPSA id t2sm14808969pfh.166.2019.06.03.11.37.57
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 03 Jun 2019 11:37:58 -0700 (PDT)
From: Douglas Anderson <dianders@chromium.org>
To: Ulf Hansson <ulf.hansson@linaro.org>, Kalle Valo <kvalo@codeaurora.org>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Arend van Spriel <arend.vanspriel@broadcom.com>
Subject: [PATCH v2 2/3] mmc: core: API for temporarily disabling auto-retuning
 due to errors
Date: Mon,  3 Jun 2019 11:37:39 -0700
Message-Id: <20190603183740.239031-3-dianders@chromium.org>
X-Mailer: git-send-email 2.22.0.rc1.311.g5d7573a151-goog
In-Reply-To: <20190603183740.239031-1-dianders@chromium.org>
References: <20190603183740.239031-1-dianders@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_113759_868035_950F3C07 
X-CRM114-Status: GOOD (  22.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Madhan Mohan R <madhanmohan.r@cypress.com>,
 brcm80211-dev-list.pdl@broadcom.com, linux-kernel@vger.kernel.org,
 Wolfram Sang <wsa+renesas@sang-engineering.com>, netdev@vger.kernel.org,
 Chi-Hsien Lin <chi-hsien.lin@cypress.com>, briannorris@chromium.org,
 linux-wireless@vger.kernel.org, Double Lo <double.lo@cypress.com>,
 Douglas Anderson <dianders@chromium.org>, linux-rockchip@lists.infradead.org,
 Avri Altman <avri.altman@wdc.com>, mka@chromium.org,
 Wright Feng <wright.feng@cypress.com>, linux-mmc@vger.kernel.org,
 Shawn Lin <shawn.lin@rock-chips.com>, brcm80211-dev-list@cypress.com,
 Naveen Gupta <naveen.gupta@cypress.com>
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
state on certain Broadcom WiFi cards.  Specifically if the card was
already transitioning between states when the command was sent it
could cause an error on the SDIO bus.

Let's add an API that the SDIO card drivers can call that will
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
Note that are are a whole boatload of different ways that we could
provide an API for the Broadcom WiFi SDIO driver.  This patch
illustrates one way but if maintainers feel strongly that this is too
ugly and have a better idea then I can give it a shot too.  From a
purist point of view I kinda felt that the "expect errors" really
belonged as part of the mmc_request structure, but getting it into
there meant changing a whole pile of core SD/MMC APIs.  Simply adding
it to the host seemed to match the current style better and was a less
intrusive change.

Changes in v2:
- Updated commit message to clarify based on discussion of v1.

 drivers/mmc/core/core.c  | 27 +++++++++++++++++++++++++--
 include/linux/mmc/core.h |  2 ++
 include/linux/mmc/host.h |  1 +
 3 files changed, 28 insertions(+), 2 deletions(-)

diff --git a/drivers/mmc/core/core.c b/drivers/mmc/core/core.c
index 6db36dc870b5..ba4f71aa8cd9 100644
--- a/drivers/mmc/core/core.c
+++ b/drivers/mmc/core/core.c
@@ -144,8 +144,9 @@ void mmc_request_done(struct mmc_host *host, struct mmc_request *mrq)
 	int err = cmd->error;
 
 	/* Flag re-tuning needed on CRC errors */
-	if ((cmd->opcode != MMC_SEND_TUNING_BLOCK &&
-	    cmd->opcode != MMC_SEND_TUNING_BLOCK_HS200) &&
+	if (cmd->opcode != MMC_SEND_TUNING_BLOCK &&
+	    cmd->opcode != MMC_SEND_TUNING_BLOCK_HS200 &&
+	    !host->expect_errors &&
 	    (err == -EILSEQ || (mrq->sbc && mrq->sbc->error == -EILSEQ) ||
 	    (mrq->data && mrq->data->error == -EILSEQ) ||
 	    (mrq->stop && mrq->stop->error == -EILSEQ)))
@@ -2163,6 +2164,28 @@ int mmc_sw_reset(struct mmc_host *host)
 }
 EXPORT_SYMBOL(mmc_sw_reset);
 
+void mmc_expect_errors_begin(struct mmc_host *host)
+{
+	unsigned long flags;
+
+	spin_lock_irqsave(&host->lock, flags);
+	WARN_ON(host->expect_errors);
+	host->expect_errors = true;
+	spin_unlock_irqrestore(&host->lock, flags);
+}
+EXPORT_SYMBOL_GPL(mmc_expect_errors_begin);
+
+void mmc_expect_errors_end(struct mmc_host *host)
+{
+	unsigned long flags;
+
+	spin_lock_irqsave(&host->lock, flags);
+	WARN_ON(!host->expect_errors);
+	host->expect_errors = false;
+	spin_unlock_irqrestore(&host->lock, flags);
+}
+EXPORT_SYMBOL_GPL(mmc_expect_errors_end);
+
 static int mmc_rescan_try_freq(struct mmc_host *host, unsigned freq)
 {
 	host->f_init = freq;
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
index 43d0f0c496f6..8d553fb8c834 100644
--- a/include/linux/mmc/host.h
+++ b/include/linux/mmc/host.h
@@ -398,6 +398,7 @@ struct mmc_host {
 	unsigned int		retune_now:1;	/* do re-tuning at next req */
 	unsigned int		retune_paused:1; /* re-tuning is temporarily disabled */
 	unsigned int		use_blk_mq:1;	/* use blk-mq */
+	unsigned int		expect_errors:1; /* don't trigger retune upon errors */
 
 	int			rescan_disable;	/* disable card detection */
 	int			rescan_entered;	/* used with nonremovable devices */
-- 
2.22.0.rc1.311.g5d7573a151-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCEBF398E6
	for <lists+linux-rockchip@lfdr.de>; Sat,  8 Jun 2019 00:37:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zg9THcfcGaN3jruG5eWB7rMqAVGqH5/WbQMBxwhQcsM=; b=iOIF1Z/3wo5hmq
	+i2Bldb8pxbiOyeBTFZAi9SDUzJTTIlUkYgjdVpJLMHuvXL0Hy3LEeSdohC6Cp5lHopfslEVSZPjI
	rAYeRR2GwtdeONkSQCR7veIxSEavhFNVsLbbgiYEAkMIbBXHMwB8hVqhcie0vIXIc/Mh0/YtqnY6D
	wLz3/POSe3TQyJs9oxJh4XMArUfLOCN07BOE9AmMt4vi02SXCoIAUgXst4b/RK5yx7GMl+zGZwcTy
	IlAZOkzeOPNRmMXd0F9uPTb0ukmqTrk2tY1ochUXH1+kSYvQpvMek6nqUvGpCeoYrakkztnNG0uMn
	y9iY07N2E1wvwbaioOsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZNUg-0004zM-0w; Fri, 07 Jun 2019 22:37:54 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZNUX-0004rV-S9
 for linux-rockchip@lists.infradead.org; Fri, 07 Jun 2019 22:37:47 +0000
Received: by mail-pl1-x641.google.com with SMTP id c5so1331529pll.11
 for <linux-rockchip@lists.infradead.org>; Fri, 07 Jun 2019 15:37:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=8sTKn+NeNGftSNd5KJGe8Yb4ykjEmhycPSYA44kfjJY=;
 b=Ucg5J6CS84kZYZtbBhATrQIknzmFCKsyZ7LYk+YHEeYL4wOxQCtCRSkS3wIsUeuHkJ
 /LQxRvlY2IWw8HHiKuSX9ALH8ZzfyZEB4BNOJKcdMs2xn7gjThq+DFjBPyJ8y52VaHrx
 2MH6k6VP9dROiEtG//1pGg4RL1jTW6bsCQPgg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=8sTKn+NeNGftSNd5KJGe8Yb4ykjEmhycPSYA44kfjJY=;
 b=KJabHM5GiMZYy1bENXUtfdmFz27Edkqp8aV6k9uMCILRWw9yu4mtjGdX6WKLRIhmBs
 QZNMGklzt51kNGSrOzyjtsq8UfeMAnsv6i20HfspXFNfOP3e7CFpGnIlXwk7JzxOmka6
 fWAwOlY3jmy+4UzIgWy4xJAe8ikbQ6bc2P8lmHu21bnUIw8udmZ2G34O6OSR505vH4EQ
 QvYay+Li+Mf6ABNxzdJmJjBjAY7cvzCKH0w/mQCLd8JhV/2MfcX04Fvdr8ZYZumqcO6v
 3IHrgC6O5H/WjBNfXfiXkbNxZ8IMlQLi8smbAHwljT8JOa4B3seFEKDvzYFvWSmFFdCf
 4Uwg==
X-Gm-Message-State: APjAAAXkF/FiZLsYkgpupa6B6nio9bty35+GLdSNNl2eLt62qHiofz5M
 7VJanV7i+YEFMm4ngGSqm90Gcw==
X-Google-Smtp-Source: APXvYqw1I/ZttnUQ8QkMd/Js4RpLH7dJjGMdXXIuPwxR4ePJkKWsj+UjjyQqqvZzmUs8Y7lbo3jcBw==
X-Received: by 2002:a17:902:d88e:: with SMTP id
 b14mr7328462plz.153.1559947065437; 
 Fri, 07 Jun 2019 15:37:45 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com
 ([2620:15c:202:1:24fa:e766:52c9:e3b2])
 by smtp.gmail.com with ESMTPSA id j23sm4185193pgb.63.2019.06.07.15.37.44
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 07 Jun 2019 15:37:44 -0700 (PDT)
From: Douglas Anderson <dianders@chromium.org>
To: Ulf Hansson <ulf.hansson@linaro.org>, Kalle Valo <kvalo@codeaurora.org>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Arend van Spriel <arend.vanspriel@broadcom.com>
Subject: [PATCH v3 4/5] mmc: core: Export mmc_retune_hold_now()
 mmc_retune_release()
Date: Fri,  7 Jun 2019 15:37:15 -0700
Message-Id: <20190607223716.119277-5-dianders@chromium.org>
X-Mailer: git-send-email 2.22.0.rc2.383.gf4fbbf30c2-goog
In-Reply-To: <20190607223716.119277-1-dianders@chromium.org>
References: <20190607223716.119277-1-dianders@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_153745_952791_B22B416A 
X-CRM114-Status: GOOD (  10.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Madhan Mohan R <madhanmohan.r@cypress.com>,
 brcm80211-dev-list.pdl@broadcom.com, linux-kernel@vger.kernel.org,
 Pavel Machek <pavel@ucw.cz>, Linus Walleij <linus.walleij@linaro.org>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 netdev@vger.kernel.org, Chi-Hsien Lin <chi-hsien.lin@cypress.com>,
 briannorris@chromium.org, linux-wireless@vger.kernel.org,
 Double Lo <double.lo@cypress.com>, Douglas Anderson <dianders@chromium.org>,
 Mathieu Malaterre <malat@debian.org>, linux-rockchip@lists.infradead.org,
 Tony Lindgren <tony@atomide.com>, mka@chromium.org,
 Wright Feng <wright.feng@cypress.com>, Pan Bian <bianpan2016@163.com>,
 linux-mmc@vger.kernel.org, brcm80211-dev-list@cypress.com,
 Naveen Gupta <naveen.gupta@cypress.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

We want SDIO drivers to be able to temporarily stop retuning when the
driver knows that the SDIO card is not in a state where retuning will
work (maybe because the card is asleep).  We'll move the relevant
functions to a place where drivers can call them.

NOTE: We'll leave the calls with a mmc_ prefix following the lead of
the API call mmc_hw_reset(), which is also expected to be called
directly by SDIO cards.

Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

Changes in v3:
- ("mmc: core: Export mmc_retune_hold_now() mmc_retune_release()") new for v3.

Changes in v2: None

 drivers/mmc/core/host.c  | 7 +++++++
 drivers/mmc/core/host.h  | 7 -------
 include/linux/mmc/core.h | 2 ++
 3 files changed, 9 insertions(+), 7 deletions(-)

diff --git a/drivers/mmc/core/host.c b/drivers/mmc/core/host.c
index 6a51f7a06ce7..361f4d151d20 100644
--- a/drivers/mmc/core/host.c
+++ b/drivers/mmc/core/host.c
@@ -111,6 +111,13 @@ void mmc_retune_hold(struct mmc_host *host)
 	host->hold_retune += 1;
 }
 
+void mmc_retune_hold_now(struct mmc_host *host)
+{
+	host->retune_now = 0;
+	host->hold_retune += 1;
+}
+EXPORT_SYMBOL(mmc_retune_hold_now);
+
 void mmc_retune_release(struct mmc_host *host)
 {
 	if (host->hold_retune)
diff --git a/drivers/mmc/core/host.h b/drivers/mmc/core/host.h
index 4805438c02ff..3212afc6c9fe 100644
--- a/drivers/mmc/core/host.h
+++ b/drivers/mmc/core/host.h
@@ -19,17 +19,10 @@ void mmc_unregister_host_class(void);
 void mmc_retune_enable(struct mmc_host *host);
 void mmc_retune_disable(struct mmc_host *host);
 void mmc_retune_hold(struct mmc_host *host);
-void mmc_retune_release(struct mmc_host *host);
 int mmc_retune(struct mmc_host *host);
 void mmc_retune_pause(struct mmc_host *host);
 void mmc_retune_unpause(struct mmc_host *host);
 
-static inline void mmc_retune_hold_now(struct mmc_host *host)
-{
-	host->retune_now = 0;
-	host->hold_retune += 1;
-}
-
 static inline void mmc_retune_recheck(struct mmc_host *host)
 {
 	if (host->hold_retune <= 1)
diff --git a/include/linux/mmc/core.h b/include/linux/mmc/core.h
index 02a13abf0cda..53085245383c 100644
--- a/include/linux/mmc/core.h
+++ b/include/linux/mmc/core.h
@@ -181,5 +181,7 @@ int mmc_sw_reset(struct mmc_host *host);
 void mmc_expect_errors_begin(struct mmc_host *host);
 void mmc_expect_errors_end(struct mmc_host *host);
 void mmc_set_data_timeout(struct mmc_data *data, const struct mmc_card *card);
+void mmc_retune_release(struct mmc_host *host);
+void mmc_retune_hold_now(struct mmc_host *host);
 
 #endif /* LINUX_MMC_CORE_H */
-- 
2.22.0.rc2.383.gf4fbbf30c2-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

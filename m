Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A22C94502A
	for <lists+linux-rockchip@lfdr.de>; Fri, 14 Jun 2019 01:42:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dkfoACqzxOYNMug3HIlgK3uNSTVzIFXQYjxAQNjFVPI=; b=TQvvyuGUTTilr7
	16QtVd4HtQJs6skqujWxNXvnekbb7UT0pEQPRWWlCjAWOdTuUA9s2JCEI6FSuhARG4oXp7nAmKiuW
	9SaEmowJbNHzW+FM8KLl3g46Ecvbo/6oRVkde9KatVSmOpbJcd/Ws7FXmnFx/+no5R1jQgqk3R4Xc
	PiKq6jt1vQRdDUzzENFVkaGaha0189MSxydjic6fMsO4tS3mKD3kM5bhhBFFLgbXA4Z27yPhKoI46
	A2LZqNzTJLd+Hh8oJjiQEnBamNP8Rq95XghignxqQoKWd/aW+zB2RpM/tL6xgWiwZULaNxFylZoQ7
	sB9ZCn/kAcQTcVqrEZxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbZMK-0004me-EI; Thu, 13 Jun 2019 23:42:20 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbZME-0004gC-0P
 for linux-rockchip@lists.infradead.org; Thu, 13 Jun 2019 23:42:15 +0000
Received: by mail-pf1-x442.google.com with SMTP id x15so226390pfq.0
 for <linux-rockchip@lists.infradead.org>; Thu, 13 Jun 2019 16:42:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=00LaqICpwM9YOieDteVKl28OeJvNxsjKf3w+38t5DQM=;
 b=MvLy9Z5wXSd9OviDwGx/a9f6GyaM1INYAiT0IsoEyf4KpOIaHa3eRMwuu5IO/O0HlA
 TnzMGBOrhOLake233PtHLia0lHm7DQz/GTZzDlnZYZJBJieXnzpvxpYc05eDbq1aR4A4
 uv4Ma5UYC9SOgb0nuN11vIzWnPCFi0ZY9ey8I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=00LaqICpwM9YOieDteVKl28OeJvNxsjKf3w+38t5DQM=;
 b=oXGwP5hwL1uv0YfN4YzEXyvrt0/e0v3TXxSoHveaMyn5tge9C1S45yK2kMQu5sdEh4
 AsQtIo9DJ3EsTbzRrKikdJL87bVTKdvOkQ+SMP97XU8xSzO0+ohRsOQUJ20pOhQUuLtV
 wuF70YASVLHyevQJne80DGTjtos4Sed0S3XhKmako3O+NZFi7iRFQo5+IYb8HBZ7BTrS
 QnmWmqG/0uMPTCulik4sBOaWVyz/XzK0D66xE2FQ/dNJFO2sJLTurQc/sHlklhmeK/No
 P5h1QuihrYzYdRwZB3uHR/UWWE6JIE/7Ds9DPMn02b4ot2vGcqeGrvEQe2kHLAX5stQx
 IB3A==
X-Gm-Message-State: APjAAAWmqf673+yqna0ZRHZn/7OTXngTMKs0Q0TPH7WuGmPhYlfybS3P
 WsbAzRwklc2GXpcOEVIKkKEg7g==
X-Google-Smtp-Source: APXvYqz3Xqez9uoGK3fVk6+p5Ke5NypkmIbmDEcShWic6SM+R4pi58ILoJD0wSRRnhH8nE17iF/u1w==
X-Received: by 2002:a17:90a:db42:: with SMTP id
 u2mr8109422pjx.48.1560469333161; 
 Thu, 13 Jun 2019 16:42:13 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com
 ([2620:15c:202:1:24fa:e766:52c9:e3b2])
 by smtp.gmail.com with ESMTPSA id p7sm781088pfp.131.2019.06.13.16.42.11
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 13 Jun 2019 16:42:12 -0700 (PDT)
From: Douglas Anderson <dianders@chromium.org>
To: Ulf Hansson <ulf.hansson@linaro.org>, Kalle Valo <kvalo@codeaurora.org>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Arend van Spriel <arend.vanspriel@broadcom.com>
Subject: [PATCH v4 4/5] mmc: core: Add sdio_retune_hold_now() and
 sdio_retune_release()
Date: Thu, 13 Jun 2019 16:41:52 -0700
Message-Id: <20190613234153.59309-5-dianders@chromium.org>
X-Mailer: git-send-email 2.22.0.rc2.383.gf4fbbf30c2-goog
In-Reply-To: <20190613234153.59309-1-dianders@chromium.org>
References: <20190613234153.59309-1-dianders@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_164214_059148_13E08F0E 
X-CRM114-Status: GOOD (  12.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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
Cc: Madhan Mohan R <madhanmohan.r@cypress.com>,
 brcm80211-dev-list.pdl@broadcom.com, linux-kernel@vger.kernel.org,
 Avri Altman <avri.altman@wdc.com>, netdev@vger.kernel.org,
 Chi-Hsien Lin <chi-hsien.lin@cypress.com>, briannorris@chromium.org,
 linux-wireless@vger.kernel.org, Double Lo <double.lo@cypress.com>,
 Douglas Anderson <dianders@chromium.org>, linux-rockchip@lists.infradead.org,
 mka@chromium.org, Wright Feng <wright.feng@cypress.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mmc@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>, brcm80211-dev-list@cypress.com,
 Naveen Gupta <naveen.gupta@cypress.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

We want SDIO drivers to be able to temporarily stop retuning when the
driver knows that the SDIO card is not in a state where retuning will
work (maybe because the card is asleep).  We'll move the relevant
functions to a place where drivers can call them.

Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

Changes in v4:
- Moved retune hold/release to SDIO API (Adrian).

Changes in v3:
- ("mmc: core: Export mmc_retune_hold_now() mmc_retune_release()") new for v3.

Changes in v2: None

 drivers/mmc/core/sdio_io.c    | 40 +++++++++++++++++++++++++++++++++++
 include/linux/mmc/sdio_func.h |  3 +++
 2 files changed, 43 insertions(+)

diff --git a/drivers/mmc/core/sdio_io.c b/drivers/mmc/core/sdio_io.c
index f822a9630b0e..1b6fe737bd72 100644
--- a/drivers/mmc/core/sdio_io.c
+++ b/drivers/mmc/core/sdio_io.c
@@ -15,6 +15,7 @@
 #include "sdio_ops.h"
 #include "core.h"
 #include "card.h"
+#include "host.h"
 
 /**
  *	sdio_claim_host - exclusively claim a bus for a certain SDIO function
@@ -770,3 +771,42 @@ void sdio_retune_crc_enable(struct sdio_func *func)
 	func->card->host->retune_crc_disable = false;
 }
 EXPORT_SYMBOL_GPL(sdio_retune_crc_enable);
+
+/**
+ *	sdio_retune_hold_now - start deferring retuning requests till release
+ *	@func: SDIO function attached to host
+ *
+ *	This function can be called if it's currently a bad time to do
+ *	a retune of the SDIO card.  Retune requests made during this time
+ *	will be held and we'll actually do the retune sometime after the
+ *	release.
+ *
+ *	This function could be useful if an SDIO card is in a power state
+ *	where it can respond to a small subset of commands that doesn't
+ *	include the retuning command.  Care should be taken when using
+ *	this function since (presumably) the retuning request we might be
+ *	deferring was made for a good reason.
+ *
+ *	This function should be called while the host is claimed.
+ */
+void sdio_retune_hold_now(struct sdio_func *func)
+{
+	mmc_retune_hold_now(func->card->host);
+}
+EXPORT_SYMBOL_GPL(sdio_retune_hold_now);
+
+/**
+ *	sdio_retune_release - signal that it's OK to retune now
+ *	@func: SDIO function attached to host
+ *
+ *	This is the complement to sdio_retune_hold_now().  Calling this
+ *	function won't make a retune happen right away but will allow
+ *	them to be scheduled normally.
+ *
+ *	This function should be called while the host is claimed.
+ */
+void sdio_retune_release(struct sdio_func *func)
+{
+	mmc_retune_release(func->card->host);
+}
+EXPORT_SYMBOL_GPL(sdio_retune_release);
diff --git a/include/linux/mmc/sdio_func.h b/include/linux/mmc/sdio_func.h
index 4820e6d09dac..5a177f7a83c3 100644
--- a/include/linux/mmc/sdio_func.h
+++ b/include/linux/mmc/sdio_func.h
@@ -170,4 +170,7 @@ extern int sdio_set_host_pm_flags(struct sdio_func *func, mmc_pm_flag_t flags);
 extern void sdio_retune_crc_disable(struct sdio_func *func);
 extern void sdio_retune_crc_enable(struct sdio_func *func);
 
+extern void sdio_retune_hold_now(struct sdio_func *func);
+extern void sdio_retune_release(struct sdio_func *func);
+
 #endif /* LINUX_MMC_SDIO_FUNC_H */
-- 
2.22.0.rc2.383.gf4fbbf30c2-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

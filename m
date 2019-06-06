Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0D3A375ED
	for <lists+linux-rockchip@lfdr.de>; Thu,  6 Jun 2019 16:00:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IyKg97XGsVo9dMMhMreHz9xNR6Nft17NhHmgysq7dLM=; b=e61a30QiwULWdD
	6vBnpuQdV9F2qrUX/7/ZKxiDKEEBzQMxNXyYfypSoWTe2ttt/7qAOvIe4Ae0XzIJOOZcg/IGULMEZ
	wq7TEZKlyRe0LO3uNHFvjJno8WlcDKVVKA5va8qZJRZ9z+Bbi1UM1fIA6TaiVt/23v1wHXAQKL0Nd
	E7t3gup2SBkWMANOO3j9p/PZCHzt0s+SjyGxA0ZDxzg6B29LUTDLSIfPD7ofDBeBjRiwGDckBCY0Z
	sSBZ1jvasurjX52TZo6ukCpHGQrHb91EmfWH+AahIkQrE+dETPOxtMrgnH+kDnDgTH0j9nSaOuYAP
	h0vEfAXCx3WlAiqSxzwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYswg-0004eb-08; Thu, 06 Jun 2019 14:00:46 +0000
Received: from mga11.intel.com ([192.55.52.93])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYswd-0004dW-98
 for linux-rockchip@lists.infradead.org; Thu, 06 Jun 2019 14:00:44 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Jun 2019 07:00:38 -0700
X-ExtLoop1: 1
Received: from ahunter-desktop.fi.intel.com (HELO [10.237.72.198])
 ([10.237.72.198])
 by fmsmga005.fm.intel.com with ESMTP; 06 Jun 2019 07:00:30 -0700
Subject: Re: [PATCH v2 3/3] brcmfmac: sdio: Disable auto-tuning around
 commands expected to fail
To: Douglas Anderson <dianders@chromium.org>,
 Ulf Hansson <ulf.hansson@linaro.org>, Kalle Valo <kvalo@codeaurora.org>,
 Arend van Spriel <arend.vanspriel@broadcom.com>
References: <20190603183740.239031-1-dianders@chromium.org>
 <20190603183740.239031-4-dianders@chromium.org>
From: Adrian Hunter <adrian.hunter@intel.com>
Organization: Intel Finland Oy, Registered Address: PL 281, 00181 Helsinki,
 Business Identity Code: 0357606 - 4, Domiciled in Helsinki
Message-ID: <42fc30b1-adab-7fa8-104c-cbb7855f2032@intel.com>
Date: Thu, 6 Jun 2019 16:59:17 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190603183740.239031-4-dianders@chromium.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_070043_332791_9AD85EB7 
X-CRM114-Status: GOOD (  18.73  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 brcm80211-dev-list.pdl@broadcom.com, YueHaibing <yuehaibing@huawei.com>,
 linux-kernel@vger.kernel.org, Hante Meuleman <hante.meuleman@broadcom.com>,
 netdev@vger.kernel.org, Chi-Hsien Lin <chi-hsien.lin@cypress.com>,
 briannorris@chromium.org, linux-wireless@vger.kernel.org,
 Double Lo <double.lo@cypress.com>, "David S. Miller" <davem@davemloft.net>,
 linux-rockchip@lists.infradead.org, mka@chromium.org,
 Wright Feng <wright.feng@cypress.com>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 brcm80211-dev-list@cypress.com, Naveen Gupta <naveen.gupta@cypress.com>,
 Franky Lin <franky.lin@broadcom.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On 3/06/19 9:37 PM, Douglas Anderson wrote:
> There are certain cases, notably when transitioning between sleep and
> active state, when Broadcom SDIO WiFi cards will produce errors on the
> SDIO bus.  This is evident from the source code where you can see that
> we try commands in a loop until we either get success or we've tried
> too many times.  The comment in the code reinforces this by saying
> "just one write attempt may fail"
> 
> Unfortunately these failures sometimes end up causing an "-EILSEQ"
> back to the core which triggers a retuning of the SDIO card and that
> blocks all traffic to the card until it's done.
> 
> Let's disable retuning around the commands we expect might fail.

It seems to me that re-tuning needs to be prevented before the
first access otherwise it might be attempted there, and it needs
to continue to be prevented during the transition when it might
reasonably be expected to fail.

What about something along these lines:

diff --git a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c
index 4e15ea57d4f5..d932780ef56e 100644
--- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c
+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c
@@ -664,9 +664,18 @@ brcmf_sdio_kso_control(struct brcmf_sdio *bus, bool on)
 	int err = 0;
 	int err_cnt = 0;
 	int try_cnt = 0;
+	int need_retune = 0;
+	bool retune_release = false;
 
 	brcmf_dbg(TRACE, "Enter: on=%d\n", on);
 
+	/* Cannot re-tune if device is asleep */
+	if (on) {
+		need_retune = sdio_retune_get_needed(bus->sdiodev->func1); // TODO: host->can_retune ? host->need_retune : 0
+		sdio_retune_hold_now(bus->sdiodev->func1); // TODO: add sdio_retune_hold_now()
+		retune_release = true;
+	}
+
 	wr_val = (on << SBSDIO_FUNC1_SLEEPCSR_KSO_SHIFT);
 	/* 1st KSO write goes to AOS wake up core if device is asleep  */
 	brcmf_sdiod_writeb(bus->sdiodev, SBSDIO_FUNC1_SLEEPCSR, wr_val, &err);
@@ -711,8 +720,16 @@ brcmf_sdio_kso_control(struct brcmf_sdio *bus, bool on)
 			err_cnt = 0;
 		}
 		/* bail out upon subsequent access errors */
-		if (err && (err_cnt++ > BRCMF_SDIO_MAX_ACCESS_ERRORS))
-			break;
+		if (err && (err_cnt++ > BRCMF_SDIO_MAX_ACCESS_ERRORS)) {
+			if (!retune_release)
+				break;
+			/*
+			 * Allow one more retry with re-tuning released in case
+			 * it helps.
+			 */
+			sdio_retune_release(bus->sdiodev->func1);
+			retune_release = false;
+		}
 
 		udelay(KSO_WAIT_US);
 		brcmf_sdiod_writeb(bus->sdiodev, SBSDIO_FUNC1_SLEEPCSR, wr_val,
@@ -727,6 +744,18 @@ brcmf_sdio_kso_control(struct brcmf_sdio *bus, bool on)
 	if (try_cnt > MAX_KSO_ATTEMPTS)
 		brcmf_err("max tries: rd_val=0x%x err=%d\n", rd_val, err);
 
+	if (retune_release) {
+		/*
+		 * CRC errors are not unexpected during the transition but they
+		 * also trigger re-tuning. Clear that here to avoid an
+		 * unnecessary re-tune if it wasn't already triggered to start
+		 * with.
+		 */
+		if (!need_retune)
+			sdio_retune_clear_needed(bus->sdiodev->func1); // TODO: host->need_retune = 0
+		sdio_retune_release(bus->sdiodev->func1); // TODO: add sdio_retune_release()
+	}
+
 	return err;
 }
 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D06247D33
	for <lists+linux-rockchip@lfdr.de>; Mon, 17 Jun 2019 10:34:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=54X0nuk74RzVFaXP/wSzC5OLR8MJTTGEmjY9oLyRRXg=; b=GH42QPV5OXFnOA
	2I7ZlogQ5DHBLUr+APnqbQVt/yXjupgh21fchPGMlYKFuADpkZkB0yZuBL1TFD09RdO8UmGILWtjd
	C/6as8Omv8ULWT6lUIrQ+bbB7Egzmr5CF9SrcLd/rRLKUUUWcFFhgrG+W3nJLgRBYOrDRQ5KRy1qS
	4EXZXCZxPmDSOorrvcm3X7YEzLQVy6TaUmibWIvRz6m74cNy/ptpxmT5M2r7kKhHPY4fOMQnLWekD
	xv6WNsZihmlo3LRvuTISJJyqv0a709cI5v+wJauuQ4DPLyV12PWWtkEyFQGjAjlwNm0T+AftSgHcb
	4Jyv9FJDn8rkiGREZORw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcn6B-0002S5-N6; Mon, 17 Jun 2019 08:34:43 +0000
Received: from mga02.intel.com ([134.134.136.20])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcn65-0002PO-2a
 for linux-rockchip@lists.infradead.org; Mon, 17 Jun 2019 08:34:38 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jun 2019 01:34:35 -0700
X-ExtLoop1: 1
Received: from ahunter-desktop.fi.intel.com (HELO [10.237.72.198])
 ([10.237.72.198])
 by fmsmga008.fm.intel.com with ESMTP; 17 Jun 2019 01:34:31 -0700
Subject: Re: [PATCH v4 3/5] brcmfmac: sdio: Disable auto-tuning around
 commands expected to fail
To: Douglas Anderson <dianders@chromium.org>,
 Ulf Hansson <ulf.hansson@linaro.org>, Kalle Valo <kvalo@codeaurora.org>,
 Arend van Spriel <arend.vanspriel@broadcom.com>
References: <20190613234153.59309-1-dianders@chromium.org>
 <20190613234153.59309-4-dianders@chromium.org>
From: Adrian Hunter <adrian.hunter@intel.com>
Organization: Intel Finland Oy, Registered Address: PL 281, 00181 Helsinki,
 Business Identity Code: 0357606 - 4, Domiciled in Helsinki
Message-ID: <36770536-eb30-59ba-3f4e-b3640fc27408@intel.com>
Date: Mon, 17 Jun 2019 11:33:14 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190613234153.59309-4-dianders@chromium.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_013437_241610_2BA33295 
X-CRM114-Status: GOOD (  18.23  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.20 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "David S. Miller" <davem@davemloft.net>,
 Madhan Mohan R <madhanmohan.r@cypress.com>,
 brcm80211-dev-list.pdl@broadcom.com, YueHaibing <yuehaibing@huawei.com>,
 Hante Meuleman <hante.meuleman@broadcom.com>,
 Hans de Goede <hdegoede@redhat.com>, netdev@vger.kernel.org,
 Chi-Hsien Lin <chi-hsien.lin@cypress.com>, briannorris@chromium.org,
 linux-wireless@vger.kernel.org, Double Lo <double.lo@cypress.com>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 mka@chromium.org, Wright Feng <wright.feng@cypress.com>,
 brcm80211-dev-list@cypress.com, Naveen Gupta <naveen.gupta@cypress.com>,
 Franky Lin <franky.lin@broadcom.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On 14/06/19 2:41 AM, Douglas Anderson wrote:
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
> 
> Fixes: bd11e8bd03ca ("mmc: core: Flag re-tuning is needed on CRC errors")
> Signed-off-by: Douglas Anderson <dianders@chromium.org>

Acked-by: Adrian Hunter <adrian.hunter@intel.com>

> ---
> 
> Changes in v4:
> - Adjust to API rename (Adrian, Ulf).
> 
> Changes in v3:
> - Expect errors for all of brcmf_sdio_kso_control() (Adrian).
> 
> Changes in v2: None
> 
>  drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c
> index 4a750838d8cd..ee76593259a7 100644
> --- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c
> +++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c
> @@ -667,6 +667,8 @@ brcmf_sdio_kso_control(struct brcmf_sdio *bus, bool on)
>  
>  	brcmf_dbg(TRACE, "Enter: on=%d\n", on);
>  
> +	sdio_retune_crc_disable(bus->sdiodev->func1);
> +
>  	wr_val = (on << SBSDIO_FUNC1_SLEEPCSR_KSO_SHIFT);
>  	/* 1st KSO write goes to AOS wake up core if device is asleep  */
>  	brcmf_sdiod_writeb(bus->sdiodev, SBSDIO_FUNC1_SLEEPCSR, wr_val, &err);
> @@ -727,6 +729,8 @@ brcmf_sdio_kso_control(struct brcmf_sdio *bus, bool on)
>  	if (try_cnt > MAX_KSO_ATTEMPTS)
>  		brcmf_err("max tries: rd_val=0x%x err=%d\n", rd_val, err);
>  
> +	sdio_retune_crc_enable(bus->sdiodev->func1);
> +
>  	return err;
>  }
>  
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

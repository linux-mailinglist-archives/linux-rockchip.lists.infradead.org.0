Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9802847D39
	for <lists+linux-rockchip@lfdr.de>; Mon, 17 Jun 2019 10:35:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1DY/5FRJdgdi3hTACTODOZWoyR0UpIgZRK4CGyNyvx4=; b=TNkV99z0W9xl8s
	5HKjKf66dLtw21wUk2BEh8aLWPgKyUpBuF6+YH1ZnGT2I2D/xd3Yafp8m0cNBF4sOzb4ycVkWt/EF
	sFhwLtAcyFo9CHDGSj84f0A1wVnGM9abKTE97Kzgc1znhYU4Ns0sZ6Cxf14A9v4nibf/vSJ9BhKML
	p0hob6+IQP3R8H8IOqXXeBzFGm3Sl7uVL9Az7aEsgUN3J7JuYKQkwErJHpQdcd2MlgThtbPHLa+NI
	F3FTCY8lSgoWmX5jeO9BSUHHU9zaDSv7TjCdenG1i3NMnyklMr9xjOJqP5HEMnnsXc6kTmo5vneH0
	jmxOJbxww8d6KCgEoK7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcn74-0003vE-Qd; Mon, 17 Jun 2019 08:35:39 +0000
Received: from mga06.intel.com ([134.134.136.31])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcn71-0003th-07
 for linux-rockchip@lists.infradead.org; Mon, 17 Jun 2019 08:35:36 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jun 2019 01:35:33 -0700
X-ExtLoop1: 1
Received: from ahunter-desktop.fi.intel.com (HELO [10.237.72.198])
 ([10.237.72.198])
 by fmsmga008.fm.intel.com with ESMTP; 17 Jun 2019 01:35:29 -0700
Subject: Re: [PATCH v4 4/5] mmc: core: Add sdio_retune_hold_now() and
 sdio_retune_release()
To: Douglas Anderson <dianders@chromium.org>,
 Ulf Hansson <ulf.hansson@linaro.org>, Kalle Valo <kvalo@codeaurora.org>,
 Arend van Spriel <arend.vanspriel@broadcom.com>
References: <20190613234153.59309-1-dianders@chromium.org>
 <20190613234153.59309-5-dianders@chromium.org>
From: Adrian Hunter <adrian.hunter@intel.com>
Organization: Intel Finland Oy, Registered Address: PL 281, 00181 Helsinki,
 Business Identity Code: 0357606 - 4, Domiciled in Helsinki
Message-ID: <d46161e8-cf2b-0aa0-1445-2d92580bf1a6@intel.com>
Date: Mon, 17 Jun 2019 11:34:12 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190613234153.59309-5-dianders@chromium.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_013535_094020_D95439F2 
X-CRM114-Status: GOOD (  21.98  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.31 listed in list.dnswl.org]
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
Cc: Madhan Mohan R <madhanmohan.r@cypress.com>,
 brcm80211-dev-list.pdl@broadcom.com, Avri Altman <avri.altman@wdc.com>,
 netdev@vger.kernel.org, Chi-Hsien Lin <chi-hsien.lin@cypress.com>,
 briannorris@chromium.org, linux-wireless@vger.kernel.org,
 Double Lo <double.lo@cypress.com>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, mka@chromium.org,
 Wright Feng <wright.feng@cypress.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mmc@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>, brcm80211-dev-list@cypress.com,
 Naveen Gupta <naveen.gupta@cypress.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On 14/06/19 2:41 AM, Douglas Anderson wrote:
> We want SDIO drivers to be able to temporarily stop retuning when the
> driver knows that the SDIO card is not in a state where retuning will
> work (maybe because the card is asleep).  We'll move the relevant
> functions to a place where drivers can call them.
> 
> Signed-off-by: Douglas Anderson <dianders@chromium.org>

Acked-by: Adrian Hunter <adrian.hunter@intel.com>

> ---
> 
> Changes in v4:
> - Moved retune hold/release to SDIO API (Adrian).
> 
> Changes in v3:
> - ("mmc: core: Export mmc_retune_hold_now() mmc_retune_release()") new for v3.
> 
> Changes in v2: None
> 
>  drivers/mmc/core/sdio_io.c    | 40 +++++++++++++++++++++++++++++++++++
>  include/linux/mmc/sdio_func.h |  3 +++
>  2 files changed, 43 insertions(+)
> 
> diff --git a/drivers/mmc/core/sdio_io.c b/drivers/mmc/core/sdio_io.c
> index f822a9630b0e..1b6fe737bd72 100644
> --- a/drivers/mmc/core/sdio_io.c
> +++ b/drivers/mmc/core/sdio_io.c
> @@ -15,6 +15,7 @@
>  #include "sdio_ops.h"
>  #include "core.h"
>  #include "card.h"
> +#include "host.h"
>  
>  /**
>   *	sdio_claim_host - exclusively claim a bus for a certain SDIO function
> @@ -770,3 +771,42 @@ void sdio_retune_crc_enable(struct sdio_func *func)
>  	func->card->host->retune_crc_disable = false;
>  }
>  EXPORT_SYMBOL_GPL(sdio_retune_crc_enable);
> +
> +/**
> + *	sdio_retune_hold_now - start deferring retuning requests till release
> + *	@func: SDIO function attached to host
> + *
> + *	This function can be called if it's currently a bad time to do
> + *	a retune of the SDIO card.  Retune requests made during this time
> + *	will be held and we'll actually do the retune sometime after the
> + *	release.
> + *
> + *	This function could be useful if an SDIO card is in a power state
> + *	where it can respond to a small subset of commands that doesn't
> + *	include the retuning command.  Care should be taken when using
> + *	this function since (presumably) the retuning request we might be
> + *	deferring was made for a good reason.
> + *
> + *	This function should be called while the host is claimed.
> + */
> +void sdio_retune_hold_now(struct sdio_func *func)
> +{
> +	mmc_retune_hold_now(func->card->host);
> +}
> +EXPORT_SYMBOL_GPL(sdio_retune_hold_now);
> +
> +/**
> + *	sdio_retune_release - signal that it's OK to retune now
> + *	@func: SDIO function attached to host
> + *
> + *	This is the complement to sdio_retune_hold_now().  Calling this
> + *	function won't make a retune happen right away but will allow
> + *	them to be scheduled normally.
> + *
> + *	This function should be called while the host is claimed.
> + */
> +void sdio_retune_release(struct sdio_func *func)
> +{
> +	mmc_retune_release(func->card->host);
> +}
> +EXPORT_SYMBOL_GPL(sdio_retune_release);
> diff --git a/include/linux/mmc/sdio_func.h b/include/linux/mmc/sdio_func.h
> index 4820e6d09dac..5a177f7a83c3 100644
> --- a/include/linux/mmc/sdio_func.h
> +++ b/include/linux/mmc/sdio_func.h
> @@ -170,4 +170,7 @@ extern int sdio_set_host_pm_flags(struct sdio_func *func, mmc_pm_flag_t flags);
>  extern void sdio_retune_crc_disable(struct sdio_func *func);
>  extern void sdio_retune_crc_enable(struct sdio_func *func);
>  
> +extern void sdio_retune_hold_now(struct sdio_func *func);
> +extern void sdio_retune_release(struct sdio_func *func);
> +
>  #endif /* LINUX_MMC_SDIO_FUNC_H */
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

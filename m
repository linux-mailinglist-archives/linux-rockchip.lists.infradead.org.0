Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91E66709CE
	for <lists+linux-rockchip@lfdr.de>; Mon, 22 Jul 2019 21:36:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2bYRg6dwc9TpV6Hmad09oexSDG1sWZggj7bEhaaTLoQ=; b=RyaubpENbvx0gj
	a4Z2FjMm7WUx7kY99DHKKT5sTOeaNnTxw9uBjCbV4BwXHTfZstLR6ZKJu35+DjNjumCorA9f/r5XW
	1GAsDOHjJD6R+ut4HAPpV6N0WFcES/V5G4aKPBmQPs8tdUl+zScyHm1sL/7tVTiUpSG9XPYMA/XE/
	A6ZHb+CMpLW5nWq7+zJZX7fLT0RODsUkOf9RA5peYitk+eUV1k41pabmQTL0ZdYAJbEiuwaGhsb76
	wJueRR65XFV71UlEDX7nD2EvxPSJLRj9bA6iAYMBe7Jz2hpYKdk6YvHcLSagCrBUMBjv6aH4txg4O
	5HNb8f4muJAqVcatJRYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpe6Q-0006dt-Si; Mon, 22 Jul 2019 19:36:06 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpe6K-0006cx-Iw
 for linux-rockchip@lists.infradead.org; Mon, 22 Jul 2019 19:36:02 +0000
Received: by mail-pf1-x444.google.com with SMTP id y15so17862194pfn.5
 for <linux-rockchip@lists.infradead.org>; Mon, 22 Jul 2019 12:35:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=4YCihO/7Koy2r60RFeQGQUZoQFb417pW4LHMHBlCeRo=;
 b=U9iRHTWmv+pJSdFVOWhUneFmNOOZdRWicg891weULE5j2GTGFoLwoSc+jhvtSiTs42
 0v1/dXHcWI55rINbY9BoYX6qh7lXZ/NgQDaj8TXbC0xUBjpz8UWFgiDRqI6heSRI5g8x
 6mlYyr8v6Hxk3Nj0foalQf74rQqwUeWAWz674=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=4YCihO/7Koy2r60RFeQGQUZoQFb417pW4LHMHBlCeRo=;
 b=VNUXk30SAsBFqImlt6E+QznwnKhghIQ02UiADmHCUjddX1Gc2gLy6PpNN8eBECd4XR
 G8y/B295sus5DzzslXN3fBi5hl4SsVei8QvBBPjqkiMyVp36FDoeOW2tXra9W/zitJ6U
 QItwvOcQGlAuwtD640B0H1RLC27YoJgVE4OjLx9XZvhLDAM/5U01mNv3aW2d7h+1EGPx
 n5lpcICxjxS4/i2UwE2eIdsDd6yMJYGaEZcMlfYkcH85utFlavPv4UZxmxHABBz5XCYb
 j90xgvaOvOvfpaXLPSAUa3TUBmFWams5Vn2zwKMZ0i0tgI6S5ZLy33gb51FwwMnr+T1L
 7FQg==
X-Gm-Message-State: APjAAAXLz9+6nKWorpxTl1/8uZ8TIc8sy5eD7r1GpbahQUGSFDepY/Pw
 Lfn2CngMaKvMmi7JE3G5kXSQSA==
X-Google-Smtp-Source: APXvYqy+/UnyrJ+ixuHf6Y++FFHuYLQzZqBYUYP3GyBs6c5/bt+MuYkZwR9cudKQkvHtBfCH/frckw==
X-Received: by 2002:aa7:97bb:: with SMTP id d27mr1784411pfq.93.1563824159352; 
 Mon, 22 Jul 2019 12:35:59 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
 by smtp.gmail.com with ESMTPSA id t7sm33400668pjq.15.2019.07.22.12.35.57
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 22 Jul 2019 12:35:57 -0700 (PDT)
Date: Mon, 22 Jul 2019 12:35:55 -0700
From: Matthias Kaehlcke <mka@chromium.org>
To: Douglas Anderson <dianders@chromium.org>
Subject: Re: [PATCH 1/2] mmc: core: Add sdio_trigger_replug() API
Message-ID: <20190722193555.GX250418@google.com>
References: <20190716164209.62320-1-dianders@chromium.org>
 <20190716164209.62320-2-dianders@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190716164209.62320-2-dianders@chromium.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_123600_659537_61DFEB8C 
X-CRM114-Status: GOOD (  31.58  )
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
Cc: Ganapathi Bhat <gbhat@marvell.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 linux-kernel@vger.kernel.org, Wolfram Sang <wsa+renesas@sang-engineering.com>,
 Xinming Hu <huxinming820@gmail.com>, netdev@vger.kernel.org,
 Brian Norris <briannorris@chromium.org>, linux-wireless@vger.kernel.org,
 Adrian Hunter <adrian.hunter@intel.com>,
 Amitkumar Karwar <amitkarwar@gmail.com>,
 Ritesh Harjani <riteshh@codeaurora.org>, linux-rockchip@lists.infradead.org,
 Nishant Sarmukadam <nishants@marvell.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Avri Altman <avri.altman@wdc.com>, Jiong Wu <lohengrin1024@gmail.com>,
 linux-mmc@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>,
 Niklas =?utf-8?Q?S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>,
 davem@davemloft.net, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Tue, Jul 16, 2019 at 09:42:08AM -0700, Douglas Anderson wrote:
> When using Marvell WiFi SDIO cards, it is not uncommon for Linux WiFi
> driver to fully lose the communication channel to the firmware running
> on the card.  Presumably the firmware on the card has a bug or two in
> it and occasionally crashes.
> 
> The Marvell WiFi driver attempts to recover from this problem.
> Specifically the driver has the function mwifiex_sdio_card_reset()
> which is called when communcation problems are found.  That function
> attempts to reset the state of things by utilizing the mmc_hw_reset()
> function.
> 
> The current solution is a bit complex because the Marvell WiFi driver
> needs to manually deinit and reinit the WiFi driver around the reset
> call.  This means it's going through a bunch of code paths that aren't
> normally tested.  However, complexity isn't our only problem.  The
> other (bigger) problem is that Marvell WiFi cards are often combo
> WiFi/Bluetooth cards and Bluetooth runs on a second SDIO func.  While
> the WiFi driver knows that it should re-init its own state around the
> mmc_hw_reset() call there is no good way to inform the Bluetooth
> driver.  That means that in Linux today when you reset the Marvell
> WiFi driver you lose all Bluetooth communication.  Doh!
> 
> One way to fix the above problems is to leverage a more standard way
> to reset the Marvell WiFi card where we go through the same code paths
> as card unplug and the card plug.  In this patch we introduce a new
> API call for doing just that: sdio_trigger_replug().  This API call
> will trigger an unplug of the SDIO card followed by a plug of the
> card.  As part of this the card will be nicely reset.
> 
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> ---
> 
>  drivers/mmc/core/core.c       | 28 ++++++++++++++++++++++++++--
>  drivers/mmc/core/sdio_io.c    | 20 ++++++++++++++++++++
>  include/linux/mmc/host.h      | 15 ++++++++++++++-
>  include/linux/mmc/sdio_func.h |  2 ++
>  4 files changed, 62 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/mmc/core/core.c b/drivers/mmc/core/core.c
> index 9020cb2490f7..48a7d23aed26 100644
> --- a/drivers/mmc/core/core.c
> +++ b/drivers/mmc/core/core.c
> @@ -2164,6 +2164,12 @@ int mmc_sw_reset(struct mmc_host *host)
>  }
>  EXPORT_SYMBOL(mmc_sw_reset);
>  
> +void mmc_trigger_replug(struct mmc_host *host)
> +{
> +	host->trigger_replug_state = MMC_REPLUG_STATE_UNPLUG;
> +	_mmc_detect_change(host, 0, false);
> +}
> +
>  static int mmc_rescan_try_freq(struct mmc_host *host, unsigned freq)
>  {
>  	host->f_init = freq;
> @@ -2217,6 +2223,11 @@ int _mmc_detect_card_removed(struct mmc_host *host)
>  	if (!host->card || mmc_card_removed(host->card))
>  		return 1;
>  
> +	if (host->trigger_replug_state == MMC_REPLUG_STATE_UNPLUG) {
> +		mmc_card_set_removed(host->card);
> +		return 1;
> +	}
> +
>  	ret = host->bus_ops->alive(host);
>  
>  	/*
> @@ -2329,8 +2340,21 @@ void mmc_rescan(struct work_struct *work)
>  	mmc_bus_put(host);
>  
>  	mmc_claim_host(host);
> -	if (mmc_card_is_removable(host) && host->ops->get_cd &&
> -			host->ops->get_cd(host) == 0) {
> +
> +	/*
> +	 * Move through the state machine if we're triggering an unplug
> +	 * followed by a re-plug.
> +	 */
> +	if (host->trigger_replug_state == MMC_REPLUG_STATE_UNPLUG) {
> +		host->trigger_replug_state = MMC_REPLUG_STATE_PLUG;
> +		_mmc_detect_change(host, 0, false);
> +	} else if (host->trigger_replug_state == MMC_REPLUG_STATE_PLUG) {
> +		host->trigger_replug_state = MMC_REPLUG_STATE_NONE;
> +	}
> +
> +	if (host->trigger_replug_state == MMC_REPLUG_STATE_PLUG ||
> +	    (mmc_card_is_removable(host) && host->ops->get_cd &&
> +			host->ops->get_cd(host) == 0)) {

at first I was concerned there could be race conditions with the
different invocations of mmc_rescan(), but IIUC all calls are through
the host->detect work, so only one instance should be running at any
time.

>  		mmc_power_off(host);
>  		mmc_release_host(host);
>  		goto out;
> diff --git a/drivers/mmc/core/sdio_io.c b/drivers/mmc/core/sdio_io.c
> index 2ba00acf64e6..1c5c2a3ebe5e 100644
> --- a/drivers/mmc/core/sdio_io.c
> +++ b/drivers/mmc/core/sdio_io.c
> @@ -811,3 +811,23 @@ void sdio_retune_release(struct sdio_func *func)
>  	mmc_retune_release(func->card->host);
>  }
>  EXPORT_SYMBOL_GPL(sdio_retune_release);
> +
> +/**
> + *	sdio_trigger_replug - trigger an "unplug" + "plug" of the card
> + *	@func: SDIO function attached to host
> + *
> + *	When you call this function we will schedule events that will
> + *	make it look like the card contining the given SDIO func was

nit: containing

> + *	unplugged and then re-plugged-in.  This is as close as possible
> + *	to a full reset of the card that can be achieved.
> + *
> + *	NOTE: routnine will temporarily make the card look as if it is

nit: routine

Other than the typos this looks sane to me, I don't claim to have a
deep understanding of the MMC codebase though.

Reviewed-by: Matthias Kaehlcke <mka@chromium.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

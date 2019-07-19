Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEC866ECC8
	for <lists+linux-rockchip@lfdr.de>; Sat, 20 Jul 2019 01:36:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZqGsomBjZhdoF4CMgaK/qeatL0Hf5lX4hjzqKWG6Bfs=; b=ftGF8ul1P/A+Om
	yFq+WiaT5cLsEhAoM1LHSLbXRlhQpVIxLAI/pmZlEBjxX/ME61zbj6L1f/5aQ05wuxIbXFzDKY0X7
	LRqRFU3Wkx+jHQrIDwq80ZUQoj1MkBEH12673XLSlzXEPr4/ZQ/G/RhYx2r4/E+zSH/KV4L42znpa
	SkpngLyuMP4Se1OCQe4vTeWgXk0xneGMxBHuE8SkiArM5dy/T71mZ7wNhUZUKlVnuUsUmXAo181Lm
	IEU2XTcXn0sSOThZmOC0bcUZGRVDmG+0syPC1hAaM6FbxUPGYnXvfF3OCLhHyh8FDMih1HlC6vb+V
	nAqR+oWb47OJW+Xl655g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hocQE-0007By-1e; Fri, 19 Jul 2019 23:36:18 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hocQ8-0007Ba-Dj
 for linux-rockchip@lists.infradead.org; Fri, 19 Jul 2019 23:36:13 +0000
Received: by mail-pf1-x442.google.com with SMTP id q10so14794861pff.9
 for <linux-rockchip@lists.infradead.org>; Fri, 19 Jul 2019 16:36:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=adPQzI1v5diG916E3ftdRP7KVUpoq7ni2PbSErONVno=;
 b=G3cOINU5IIalyfSzoeJGzYHjbbTayjz7uKTmRzNWMjmloTNLmboShFlXotMdaNFDe8
 LAdBksnVHUYSUdjAjmD3cROKn41n3SKUCER9oghvqyO+rKroqQj7uNodSK+RT3bUNB1S
 DXoVHjQtNrBXRF4FRkraXhiN3WesLyTqJ7RQQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=adPQzI1v5diG916E3ftdRP7KVUpoq7ni2PbSErONVno=;
 b=lYuPvsxFlZjKr5bUlsOv8m43YIzCFT5bCDyMAytgS4QIkbgp5GQSTF7fpMi4E1McyG
 gxIY7H1Jzh9Uhzr6xXflRlZB25n6BFJ1X58pSrgixR3kRcQP0sR3I3OrMIJOkTrBNS0f
 41VuAx4FSxyyfjl/HA8v+W/yjA2SHOkyU6Dva6KE4XR9gz8iN9hownsfhpjw4EBwM2A9
 ZdKCHvOkkYomT2vnItP/yb6Ns0vcaGSORM4CFx7/i5vOSR/UDVX5m2WRyJVIBiSuo+UY
 iWbmIcYykY4whXtccwro0hHCnuTefa5QEL9Dfwm7HEJFoTK0Q5+ZU/TMGMXg0zxOtrWz
 f4Ng==
X-Gm-Message-State: APjAAAVm4imStABIXs9rcqY59LA7DCkyA5/nfjO5VMunTFOprtM5/TYy
 R5dbAzhYkNq7agznOV+4uAihFA==
X-Google-Smtp-Source: APXvYqxbqPCgcMawQkjn4LpCVpIZIiiIhPeZYJ2X7r56FNvFvPhSCu3KoIIFPtYjLuP6gyd08GrXzQ==
X-Received: by 2002:a63:e54f:: with SMTP id z15mr56615815pgj.4.1563579371281; 
 Fri, 19 Jul 2019 16:36:11 -0700 (PDT)
Received: from google.com ([2620:15c:202:1:534:b7c0:a63c:460c])
 by smtp.gmail.com with ESMTPSA id a21sm38313759pfi.27.2019.07.19.16.36.08
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 19 Jul 2019 16:36:09 -0700 (PDT)
Date: Fri, 19 Jul 2019 16:36:06 -0700
From: Brian Norris <briannorris@chromium.org>
To: Douglas Anderson <dianders@chromium.org>
Subject: Re: [PATCH 2/2] mwifiex: Make use of the new sdio_trigger_replug()
 API to reset
Message-ID: <20190719233605.GA66171@google.com>
References: <20190716164209.62320-1-dianders@chromium.org>
 <20190716164209.62320-3-dianders@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190716164209.62320-3-dianders@chromium.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_163612_489662_44E5EB41 
X-CRM114-Status: GOOD (  24.59  )
X-Spam-Score: 3.6 (+++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (3.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 3.8 FSL_HELO_FAKE          No description available.
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Wolfram Sang <wsa+renesas@sang-engineering.com>,
 Xinming Hu <huxinming820@gmail.com>, netdev@vger.kernel.org,
 Andreas Fenkart <afenkart@gmail.com>, linux-wireless@vger.kernel.org,
 Adrian Hunter <adrian.hunter@intel.com>,
 Amitkumar Karwar <amitkarwar@gmail.com>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Nishant Sarmukadam <nishants@marvell.com>,
 Avri Altman <avri.altman@wdc.com>, linux-mmc@vger.kernel.org,
 davem@davemloft.net, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Doug,

On Tue, Jul 16, 2019 at 09:42:09AM -0700, Doug Anderson wrote:
> As described in the patch ("mmc: core: Add sdio_trigger_replug()
> API"), the current mwifiex_sdio_card_reset() is broken in the cases
> where we're running Bluetooth on a second SDIO func on the same card
> as WiFi.  The problem goes away if we just use the
> sdio_trigger_replug() API call.

I'm unfortunately not a good evaluator of SDIO/MMC stuff, so I'll mostly
leave that to others and assume that the "replug" description is pretty
much all I need to know.

> NOTE: Even though with this new solution there is less of a reason to
> do our work from a workqueue (the unplug / plug mechanism we're using
> is possible for a human to perform at any time so the stack is
> supposed to handle it without it needing to be called from a special
> context), we still need a workqueue because the Marvell reset function
> could called from a context where sleeping is invalid and thus we
> can't claim the host.  One example is Marvell's wakeup_timer_fn().
> 
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> ---
> 
>  drivers/net/wireless/marvell/mwifiex/sdio.c | 14 +++-----------
>  1 file changed, 3 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/net/wireless/marvell/mwifiex/sdio.c b/drivers/net/wireless/marvell/mwifiex/sdio.c
> index 24c041dad9f6..f77ad2615f08 100644
> --- a/drivers/net/wireless/marvell/mwifiex/sdio.c
> +++ b/drivers/net/wireless/marvell/mwifiex/sdio.c
> @@ -2218,14 +2218,6 @@ static void mwifiex_sdio_card_reset_work(struct mwifiex_adapter *adapter)
>  {
>  	struct sdio_mmc_card *card = adapter->card;
>  	struct sdio_func *func = card->func;
> -	int ret;
> -
> -	mwifiex_shutdown_sw(adapter);

I'm very mildly unhappy to see this driver diverge from the PCIe one
again, but the only way it makes sense to do things the same is if there
is such thing as a "function level reset" for SDIO (i.e., doesn't also
kill the Bluetooth function). But it appears we don't really have such a
thing.

> -
> -	/* power cycle the adapter */
> -	sdio_claim_host(func);
> -	mmc_hw_reset(func->card->host);
> -	sdio_release_host(func);
>  
>  	/* Previous save_adapter won't be valid after this. We will cancel

^^^ FTR, the "save_adapter" note was already obsolete as of

  cc75c577806a mwifiex: get rid of global save_adapter and sdio_work

but the clear_bit() calls were (before this patch) still useful for
other reasons.

>  	 * pending work requests.
> @@ -2233,9 +2225,9 @@ static void mwifiex_sdio_card_reset_work(struct mwifiex_adapter *adapter)
>  	clear_bit(MWIFIEX_IFACE_WORK_DEVICE_DUMP, &card->work_flags);
>  	clear_bit(MWIFIEX_IFACE_WORK_CARD_RESET, &card->work_flags);

But now, I don't think you need these clear_bit() calls any more --
you're totally destroying the card and its workqueue on remove(). (And
anyway, MWIFIEX_IFACE_WORK_CARD_RESET was just cleared by your caller.)

>  
> -	ret = mwifiex_reinit_sw(adapter);
> -	if (ret)
> -		dev_err(&func->dev, "reinit failed: %d\n", ret);
> +	sdio_claim_host(func);
> +	sdio_trigger_replug(func);
> +	sdio_release_host(func);

And...we're approximately back to where we were 4 years ago :)

commit b4336a282db86b298b70563f8ed51782b36b772c
Author: Andreas Fenkart <afenkart@gmail.com>
Date:   Thu Jul 16 18:50:01 2015 +0200

    mwifiex: sdio: reset adapter using mmc_hw_reset

Anyway, assuming the "function reset" thing isn't workable, and you drop
the clear_bit() stuff, I think this is fine:

Reviewed-by: Brian Norris <briannorris@chromium.org>

>  }
>  
>  /* This function read/write firmware */
> -- 
> 2.22.0.510.g264f2c817a-goog
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

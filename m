Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08EE845C34
	for <lists+linux-rockchip@lfdr.de>; Fri, 14 Jun 2019 14:10:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t1cch7A+Szb+0PlOVLBdUUPbxN7z26P/XfukLB6fbUM=; b=Qpm/JIqJLHcqnb
	dnT17YXWBUdayJasrJpxsDFN6xEMDJnRcFiz2+Kbea9q1z/0ua9OK+C2+jst1usgSmqhR6VGHfPxb
	J75ECsteiLsUvF2UynvWWBSuvFTCPDh6dLaZOlR+J04tq3iBwJnVfojUmLJm2s7VNJ/gV4vtSPzwD
	JPvJ2M2ZJczk9TtH2mkN0D3FJiw0YfUCODccj2xs3tn1Yy9tiwC+1r0QCo1vF92mK7tSZrz+kF8Ik
	ooK3nobExOGjHARs4WrbA0ZHxoVAQpym67bOdxEs7mnhp1wXuBghII4sn8XJidTJ0Uxrs6PMykCLg
	/LAQ5l8wI4W/dtmrREJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbl2I-0002SR-Gl; Fri, 14 Jun 2019 12:10:26 +0000
Received: from mail-vs1-xe42.google.com ([2607:f8b0:4864:20::e42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbl2F-0002Rl-A1
 for linux-rockchip@lists.infradead.org; Fri, 14 Jun 2019 12:10:24 +0000
Received: by mail-vs1-xe42.google.com with SMTP id n2so1605918vso.6
 for <linux-rockchip@lists.infradead.org>; Fri, 14 Jun 2019 05:10:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=F5D+HakwAE2WgxfHyzl83ZwTB437sX3wIDlJ8qrfryI=;
 b=igk9dt/vAQdzxT8QzdZI/Ievysa9xK3WPDJK4vcC3mDYTCNmuMk9blJgU6OL9Yc0dK
 Tio9BFMzxl///10xMQOIVDRbhF/nM/Hlu2UzObSKzWbdltAQYn565CyrftqwwoLEd33B
 Cr7ROv4Q0dHUiigBi2fHNGkoZUZUg1UIePaijaE5FoQNP4Rj7BRVnnrvi3b8R3WX/hJu
 CM8fh8LGVg8luPx2wjcpony8vE0jjzt/t5njqGuSo/mVk/E4Zw+RG33ExdPs2KeVtCjq
 cOiCldbH6KD71Pzci41unZHGuT1+Ngh7l43T59JmGfcQNXWayyQYrKADlRuNeU7nV5CB
 2Apg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=F5D+HakwAE2WgxfHyzl83ZwTB437sX3wIDlJ8qrfryI=;
 b=Mcait6OkhPY0Xbjb83/7G3Y+nJ79PotLcmRdkdo1PoyvNCk1v9F176IgPdX7+fD2+l
 fk948C5muA2g0RGZKQNxPo+UGyWolDro2E5ImVD7BhHEZ5ju0XPWsIBaGY1w0540PRrY
 0m3034EobIqUQAgm27nFnxIKDm5VRiB62YcUVR3Tl0xK4U7KAEL8RUI0mzFvEN4NXUhx
 LxkYI4wtTWGzZ39S4vKNA5843OtSPok5QSUJmd6lwaz4lAZfOTYXeE39wd00xPXEmoDf
 I7XWCo7t7aMcAchtobNWGKq4LXkfowKzDwVrhPyKRu63tAuvmlrYkJ1RkUv+k/Q0lqOg
 nr+g==
X-Gm-Message-State: APjAAAWh4WeNNTrMx6ag5gpygjuM7hqQVO/twKqFbMxWJ/B7DfhbyIiE
 dE7/EBPV3WSegrmM6qeXRLav5r7y4hjj4MCYEMQCFg==
X-Google-Smtp-Source: APXvYqydln8EpljbWUJIef2R+juyAWV3U5n+26y/5MI0AqXoz3GwtqMW3kyvstIYiC/7nRtirT+2WiUXP5SR66PbMWA=
X-Received: by 2002:a67:ed8b:: with SMTP id d11mr52752594vsp.35.1560514222446; 
 Fri, 14 Jun 2019 05:10:22 -0700 (PDT)
MIME-Version: 1.0
References: <20190613234153.59309-1-dianders@chromium.org>
 <20190613234153.59309-5-dianders@chromium.org>
In-Reply-To: <20190613234153.59309-5-dianders@chromium.org>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Fri, 14 Jun 2019 14:09:45 +0200
Message-ID: <CAPDyKFrJ4+zn7Ak0tYHkBfXUtH3N7erb5R7Q+hgugchZmCRGrw@mail.gmail.com>
Subject: Re: [PATCH v4 4/5] mmc: core: Add sdio_retune_hold_now() and
 sdio_retune_release()
To: Douglas Anderson <dianders@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_051023_352983_A135CEFB 
X-CRM114-Status: GOOD (  19.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 brcm80211-dev-list.pdl@broadcom.com,
 Arend van Spriel <arend.vanspriel@broadcom.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Avri Altman <avri.altman@wdc.com>, netdev@vger.kernel.org,
 Chi-Hsien Lin <chi-hsien.lin@cypress.com>,
 Brian Norris <briannorris@chromium.org>,
 linux-wireless <linux-wireless@vger.kernel.org>,
 Double Lo <double.lo@cypress.com>, Adrian Hunter <adrian.hunter@intel.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Matthias Kaehlcke <mka@chromium.org>, Naveen Gupta <naveen.gupta@cypress.com>,
 Wright Feng <wright.feng@cypress.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, brcm80211-dev-list@cypress.com,
 Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Fri, 14 Jun 2019 at 01:42, Douglas Anderson <dianders@chromium.org> wrote:
>
> We want SDIO drivers to be able to temporarily stop retuning when the
> driver knows that the SDIO card is not in a state where retuning will
> work (maybe because the card is asleep).  We'll move the relevant
> functions to a place where drivers can call them.
>
> Signed-off-by: Douglas Anderson <dianders@chromium.org>

This looks good to me.

BTW, seems like this series is best funneled via my mmc tree, no? In
such case, I need acks for the brcmfmac driver patches.

Kind regards
Uffe




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
>   *     sdio_claim_host - exclusively claim a bus for a certain SDIO function
> @@ -770,3 +771,42 @@ void sdio_retune_crc_enable(struct sdio_func *func)
>         func->card->host->retune_crc_disable = false;
>  }
>  EXPORT_SYMBOL_GPL(sdio_retune_crc_enable);
> +
> +/**
> + *     sdio_retune_hold_now - start deferring retuning requests till release
> + *     @func: SDIO function attached to host
> + *
> + *     This function can be called if it's currently a bad time to do
> + *     a retune of the SDIO card.  Retune requests made during this time
> + *     will be held and we'll actually do the retune sometime after the
> + *     release.
> + *
> + *     This function could be useful if an SDIO card is in a power state
> + *     where it can respond to a small subset of commands that doesn't
> + *     include the retuning command.  Care should be taken when using
> + *     this function since (presumably) the retuning request we might be
> + *     deferring was made for a good reason.
> + *
> + *     This function should be called while the host is claimed.
> + */
> +void sdio_retune_hold_now(struct sdio_func *func)
> +{
> +       mmc_retune_hold_now(func->card->host);
> +}
> +EXPORT_SYMBOL_GPL(sdio_retune_hold_now);
> +
> +/**
> + *     sdio_retune_release - signal that it's OK to retune now
> + *     @func: SDIO function attached to host
> + *
> + *     This is the complement to sdio_retune_hold_now().  Calling this
> + *     function won't make a retune happen right away but will allow
> + *     them to be scheduled normally.
> + *
> + *     This function should be called while the host is claimed.
> + */
> +void sdio_retune_release(struct sdio_func *func)
> +{
> +       mmc_retune_release(func->card->host);
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
> --
> 2.22.0.rc2.383.gf4fbbf30c2-goog
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

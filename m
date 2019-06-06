Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13E2537FC7
	for <lists+linux-rockchip@lfdr.de>; Thu,  6 Jun 2019 23:43:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uAHouKdgs6+0fO9nJSoOdcd7oMlF6jHwYyNcRyF46y4=; b=eYcBDA9ypYmEf4
	1wkMsD5nY3GjJNX7P9bZw9SXKIgD3xbQDMzzKmwGO+WeJe6El0hVsRV6khpGvxSJIuAbzuWtbEKmu
	fVO9966vUv1HJb46aawwgHL3kIKKqsknTXSAsW4NUBKnI2cKVycXWIIpqEiT/Rrzq2F9f0r5w7Xnu
	kZaXs8yVS5+Ppsn9QBeZTvGoZM2P+Jer1cWCvHL7VYu2+PJtHfDQGKUpBUECOldDl0E09F91Cr9xG
	fn9Pw5oRxcP4wYLfcSroafY+IftCvpFLBwIsNpYqmaQc22xUo80nYCcJvST3y9tUdmLkjvot8YTqu
	HSXw3ZTsks0WvEiMU/RA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hZ0Ai-0003cH-Pt; Thu, 06 Jun 2019 21:43:44 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hZ0Ae-0003bj-M7
 for linux-rockchip@lists.infradead.org; Thu, 06 Jun 2019 21:43:42 +0000
Received: by mail-io1-xd41.google.com with SMTP id e3so1384620ioc.12
 for <linux-rockchip@lists.infradead.org>; Thu, 06 Jun 2019 14:43:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+QBdyZj1I7drp/b50HZlmF43JSxnAeWa0jxxMiyIVXc=;
 b=NolPoyDjYnIQMci7PwsT9RiWgwW+ar1+vnt93teKnZ+fxxJNLXO3YLuOLArf7tOCTZ
 neucsp0wiztZ64STtyZMYnz0lS0niok/nsimcR0/BPboY/HHGPohUIqIVLGjoKryaGfk
 xdAEjhPQnEEPaLFpGW/3rtXuLULRKrkaHRARM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+QBdyZj1I7drp/b50HZlmF43JSxnAeWa0jxxMiyIVXc=;
 b=HdIOZIeNDTIb63R6jkU9CLdgGkwVYoXPhZiOuF4MOnFIwFAe7MSCY/55IXwAWkUzJW
 v4iFerNhH3UmN1GuUOdwq00kAXVKkyeU7/Xon8HkWSUk3p9zMeRsAIjZ8gStbiajcHfq
 ey5MWVVvRNlG7dVexJROpKQyEfzj5kY7uLxzgzaem15OlqHYVjaBpAakIzlOGAMb5A2J
 33gcnW1lfboY/rKCbW/v6lU2Se154nvFfJicPfHu2P17e7pBhCAAqikpc9NT5HxVD0+5
 X+rE6JiPYlFfxGx4d3PAQcGffqJq3eccu47aP6J4uhOEoBPI5vXQ7+mIQZJVeZDzJLHW
 oR5g==
X-Gm-Message-State: APjAAAVDCGKsrD2AGnKckJJhheAil+a+YAcheBoWUEwYr1P11ggyp3z8
 uGQjbxgIRv73bymjrVbLBFDaqETaKiA=
X-Google-Smtp-Source: APXvYqzV89zhVZhKTi0l+bW0dN1HzcuyqrHUfAVE36BxcANusjwzLGWfrJuYbLklu+EI0NQGHHh6hQ==
X-Received: by 2002:a6b:ef06:: with SMTP id k6mr5029436ioh.70.1559857417821;
 Thu, 06 Jun 2019 14:43:37 -0700 (PDT)
Received: from mail-io1-f47.google.com (mail-io1-f47.google.com.
 [209.85.166.47])
 by smtp.gmail.com with ESMTPSA id y18sm18817iob.64.2019.06.06.14.43.37
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Thu, 06 Jun 2019 14:43:37 -0700 (PDT)
Received: by mail-io1-f47.google.com with SMTP id k20so1398277ios.10
 for <linux-rockchip@lists.infradead.org>; Thu, 06 Jun 2019 14:43:37 -0700 (PDT)
X-Received: by 2002:a05:6602:2006:: with SMTP id
 y6mr29144619iod.218.1559857037515; 
 Thu, 06 Jun 2019 14:37:17 -0700 (PDT)
MIME-Version: 1.0
References: <20190603183740.239031-1-dianders@chromium.org>
 <20190603183740.239031-4-dianders@chromium.org>
 <42fc30b1-adab-7fa8-104c-cbb7855f2032@intel.com>
In-Reply-To: <42fc30b1-adab-7fa8-104c-cbb7855f2032@intel.com>
From: Doug Anderson <dianders@chromium.org>
Date: Thu, 6 Jun 2019 14:37:03 -0700
X-Gmail-Original-Message-ID: <CAD=FV=UPfCOr-syAbVZ-FjHQy7bgQf5BS5pdV-Bwd3hquRqEGg@mail.gmail.com>
Message-ID: <CAD=FV=UPfCOr-syAbVZ-FjHQy7bgQf5BS5pdV-Bwd3hquRqEGg@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] brcmfmac: sdio: Disable auto-tuning around
 commands expected to fail
To: Adrian Hunter <adrian.hunter@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_144340_774881_42945E9B 
X-CRM114-Status: GOOD (  32.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 brcm80211-dev-list.pdl@broadcom.com, YueHaibing <yuehaibing@huawei.com>,
 Arend van Spriel <arend.vanspriel@broadcom.com>,
 LKML <linux-kernel@vger.kernel.org>,
 Hante Meuleman <hante.meuleman@broadcom.com>, netdev <netdev@vger.kernel.org>,
 Chi-Hsien Lin <chi-hsien.lin@cypress.com>,
 Brian Norris <briannorris@chromium.org>,
 linux-wireless <linux-wireless@vger.kernel.org>,
 Double Lo <double.lo@cypress.com>, "David S. Miller" <davem@davemloft.net>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Matthias Kaehlcke <mka@chromium.org>, Naveen Gupta <naveen.gupta@cypress.com>,
 Wright Feng <wright.feng@cypress.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 brcm80211-dev-list <brcm80211-dev-list@cypress.com>,
 Kalle Valo <kvalo@codeaurora.org>, Franky Lin <franky.lin@broadcom.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi,

On Thu, Jun 6, 2019 at 7:00 AM Adrian Hunter <adrian.hunter@intel.com> wrote:
>
> On 3/06/19 9:37 PM, Douglas Anderson wrote:
> > There are certain cases, notably when transitioning between sleep and
> > active state, when Broadcom SDIO WiFi cards will produce errors on the
> > SDIO bus.  This is evident from the source code where you can see that
> > we try commands in a loop until we either get success or we've tried
> > too many times.  The comment in the code reinforces this by saying
> > "just one write attempt may fail"
> >
> > Unfortunately these failures sometimes end up causing an "-EILSEQ"
> > back to the core which triggers a retuning of the SDIO card and that
> > blocks all traffic to the card until it's done.
> >
> > Let's disable retuning around the commands we expect might fail.
>
> It seems to me that re-tuning needs to be prevented before the
> first access otherwise it might be attempted there,

By this I think you mean I wasn't starting my section early enough to
catch the "1st KSO write".  Oops.  Thanks!


> and it needs
> to continue to be prevented during the transition when it might
> reasonably be expected to fail.
>
> What about something along these lines:
>
> diff --git a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c
> index 4e15ea57d4f5..d932780ef56e 100644
> --- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c
> +++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c
> @@ -664,9 +664,18 @@ brcmf_sdio_kso_control(struct brcmf_sdio *bus, bool on)
>         int err = 0;
>         int err_cnt = 0;
>         int try_cnt = 0;
> +       int need_retune = 0;
> +       bool retune_release = false;
>
>         brcmf_dbg(TRACE, "Enter: on=%d\n", on);
>
> +       /* Cannot re-tune if device is asleep */
> +       if (on) {
> +               need_retune = sdio_retune_get_needed(bus->sdiodev->func1); // TODO: host->can_retune ? host->need_retune : 0
> +               sdio_retune_hold_now(bus->sdiodev->func1); // TODO: add sdio_retune_hold_now()
> +               retune_release = true;
> +       }

The code below still has retries even for the "!on" case.  That
implies that you could still get CRC errors from the card in the "!on"
direction too.  Any reason why we shouldn't just hold retuning even
for the !on case?


> +
>         wr_val = (on << SBSDIO_FUNC1_SLEEPCSR_KSO_SHIFT);
>         /* 1st KSO write goes to AOS wake up core if device is asleep  */
>         brcmf_sdiod_writeb(bus->sdiodev, SBSDIO_FUNC1_SLEEPCSR, wr_val, &err);
> @@ -711,8 +720,16 @@ brcmf_sdio_kso_control(struct brcmf_sdio *bus, bool on)
>                         err_cnt = 0;
>                 }
>                 /* bail out upon subsequent access errors */
> -               if (err && (err_cnt++ > BRCMF_SDIO_MAX_ACCESS_ERRORS))
> -                       break;
> +               if (err && (err_cnt++ > BRCMF_SDIO_MAX_ACCESS_ERRORS)) {
> +                       if (!retune_release)
> +                               break;
> +                       /*
> +                        * Allow one more retry with re-tuning released in case
> +                        * it helps.
> +                        */
> +                       sdio_retune_release(bus->sdiodev->func1);
> +                       retune_release = false;

I would be tempted to wait before adding this logic until we actually
see that it's needed.  Sure, doing one more transfer probably won't
really hurt, but until we know that it actually helps it seems like
we're just adding extra complexity?


> +               }
>
>                 udelay(KSO_WAIT_US);
>                 brcmf_sdiod_writeb(bus->sdiodev, SBSDIO_FUNC1_SLEEPCSR, wr_val,
> @@ -727,6 +744,18 @@ brcmf_sdio_kso_control(struct brcmf_sdio *bus, bool on)
>         if (try_cnt > MAX_KSO_ATTEMPTS)
>                 brcmf_err("max tries: rd_val=0x%x err=%d\n", rd_val, err);
>
> +       if (retune_release) {
> +               /*
> +                * CRC errors are not unexpected during the transition but they
> +                * also trigger re-tuning. Clear that here to avoid an
> +                * unnecessary re-tune if it wasn't already triggered to start
> +                * with.
> +                */
> +               if (!need_retune)
> +                       sdio_retune_clear_needed(bus->sdiodev->func1); // TODO: host->need_retune = 0
> +               sdio_retune_release(bus->sdiodev->func1); // TODO: add sdio_retune_release()
> +       }

Every time I re-look at this I have to re-figure out all the subtle
differences between the variables and functions involved here.  Let me
see if I got everything right:

* need_retune: set to 1 if we can retune and some event happened that
makes us truly believe that we need to be retuned, like we got a CRC
error or a timer expired or our host controller told us to retune.

* retune_now: set to 1 it's an OK time to be retuning.  Specifically
if retune_now is false we won't send any retuning commands but we'll
still keep track of the need to retune.

* hold_retune: If this gets set to 1 by mmc_retune_hold_now() then a
future call to mmc_retune_hold() will _not_ schedule a retune by
setting retune_now (because mmc_retune_hold() will see that
hold_retune was already 1).  ...and a future call to
mmc_retune_recheck() between mmc_hold() and mmc_release() will also
not schedule a retune because hold_retune will be 2 (or generally >
1).

---

So overall trying to summarize what I think are the differences
between your patch and my patch.

1. If we needed to re-tune _before_ calling brcmf_sdio_kso_control(),
with your patch we'll make sure that we don't actually attempt to
retune until brcmf_sdio_kso_control() finishes.

2. If we needed to retune during brcmf_sdio_kso_control() (because a
timer expired?) then we wouldn't trigger that retune while
brcmf_sdio_kso_control() is running.

In the case of dw_mmc, which I'm most familiar with, we don't have any
sort of automated or timed-based retuning.  ...so we'll only re-tune
when we see the CRC error.  If I'm understanding things correctly then
that for dw_mmc my solution and yours behave the same.  That means the
difference is how we deal with other retuning requests, either ones
that come about because of an interrupt that the host controller
provided or because of a timer.  Did I get that right?

...and I guess the reason we have to deal specially with these cases
is because any time that SDIO card is "sleeping" we don't want to
retune because it won't work.  Right?  NOTE: the solution that would
come to my mind first to solve this would be to hold the retuning for
the whole time that the card was sleeping and then release it once the
card was awake again.  ...but I guess we don't truly need to do that
because tuning only happens as a side effect of sending a command to
the card and the only command we send to the card is the "wake up"
command.  That's why your solution to hold tuning while sending the
"wake up" command works, right?

---

OK, so assuming all the above is correct, I feel like we're actually
solving two problems and in fact I believe we actually need both our
approaches to solve everything correctly.  With just your patch in
place there's a problem because we will clobber any external retuning
requests that happened while we were waking up the card.  AKA, imagine
this:

A) brcmf_sdio_kso_control(on=True) gets called; need_retune starts as 0

B) We call sdio_retune_hold_now()

C) A retuning timer goes off or the SD Host controller tells us to retune

D) We get to the end of brcmf_sdio_kso_control() and clear the "retune
needed" since need_retune was 0 at the start.

...so we dropped the retuning request from C), right?


What we truly need is:

1. CRC errors shouldn't trigger a retuning request when we're in
brcmf_sdio_kso_control()

2. A separate patch that holds any retuning requests while the SDIO
card is off.  This patch _shouldn't_ do any clearing of retuning
requests, just defer them.


Does that make sense to you?  If so, I can try to code it up...


-Doug

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16B2ADA2AD
	for <lists+linux-rockchip@lfdr.de>; Thu, 17 Oct 2019 02:27:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RifaoAKxJtJc7HSIb1+VahuvItuWld2Cnjc9IETjPXw=; b=fwkONcaCdTuzQG
	eL0uYMY7+haPHjFKFqAuQp0edLmutqyUghQZD7KtsqNiddUMxxPluw1/zVD8k96Bhj606MaXFjzMM
	lHzODXQTfChsOtCYeGl3WyRnMbTGzqIg7QyuGCXmUWrJ0BBVJrasCOHR6Rps9BgxaXNl82oPael0f
	bnsvGCSOP+xi+5l92B17MzPF9jydQlo7rpS8erB2b/qWg+pyJVt858Dv8yC46EVEhssTGrsfhtPu8
	Ys80JxTDWMdYhnLd28VmZUqlm7gU/IdmnUPc137CnEkfKAJojsOVuRiFY/G+ohNZBIm73VY8gjeKo
	ycop69Gs3TTJGih4grvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKtda-0003Bt-Jw; Thu, 17 Oct 2019 00:27:30 +0000
Received: from mail-il1-x142.google.com ([2607:f8b0:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKtdX-0003BK-2J
 for linux-rockchip@lists.infradead.org; Thu, 17 Oct 2019 00:27:28 +0000
Received: by mail-il1-x142.google.com with SMTP id a5so296829ilh.6
 for <linux-rockchip@lists.infradead.org>; Wed, 16 Oct 2019 17:27:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ssXZYIfbBoFlq5o8fLFe5texKrdyJMrZYOXv4r4D2eM=;
 b=YaFT1Q5meCXdX8c6PZ7iRxWAGR3vsMIrZ4+0Y3+B6CPkpxiLnnwfpPv58dvBDfyB+J
 5KIa35vr8kmEsKqso7MTr5vdDzYVfXdtCbpprTk3yX+Lg6zsTkplbzXvre1UnbJI6hDe
 PVkqbLvb1vrKxIFOxfVSIPBrqSFlFyecIo8f0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ssXZYIfbBoFlq5o8fLFe5texKrdyJMrZYOXv4r4D2eM=;
 b=YANMWROLZedWqAUmrhnS5OjX5a6TaGsKvC7acyhn+qTLhdgwcgEVMkJxjp0ffs8lbd
 M5aSWWsBCPCcYv9b4zMt/4pSpJKtRwBaNw5Kx4ltlYEoMpM3R9o2+/7CE0TiqZhRSf0a
 aQ4ZKeD6aKqwSo/ldlLJD2BptFuna1cwXgQ4PkLZkszttViYKujldn59MYCDhFtmg135
 NBl0E8u6QZHVgPVUImQtkBwZWv3V8a2383TtCT0Fjt5oItBv93iOOUpXYffTCNtdux/2
 xSPgkyl96BabQ3aYgjaqXsLMN2Hk4M7NK7a7qyxMifnFdK3PzHrf3p2RsfIEqZIU2696
 EWIA==
X-Gm-Message-State: APjAAAUyBPQkfxfo9BUCWkbxKLwe2DYE2STMjuSObCRPdUSoEkGT8qSQ
 OokTTfh/7JeOK6D58/cF0EswJ5+su8U=
X-Google-Smtp-Source: APXvYqwjif5SiZrSTotaHuQHASxyDVke003d5YIckK23eD+oFgSRPzboDFevJAtqNE/qqv64j1RRbA==
X-Received: by 2002:a92:3c04:: with SMTP id j4mr742006ila.120.1571272043237;
 Wed, 16 Oct 2019 17:27:23 -0700 (PDT)
Received: from mail-il1-f170.google.com (mail-il1-f170.google.com.
 [209.85.166.170])
 by smtp.gmail.com with ESMTPSA id g87sm193986ild.79.2019.10.16.17.27.23
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 16 Oct 2019 17:27:23 -0700 (PDT)
Received: by mail-il1-f170.google.com with SMTP id y5so301552ilb.5
 for <linux-rockchip@lists.infradead.org>; Wed, 16 Oct 2019 17:27:23 -0700 (PDT)
X-Received: by 2002:a92:819c:: with SMTP id q28mr703756ilk.269.1571271741101; 
 Wed, 16 Oct 2019 17:22:21 -0700 (PDT)
MIME-Version: 1.0
References: <20190722193939.125578-1-dianders@chromium.org>
 <20190722193939.125578-2-dianders@chromium.org>
 <CAPDyKFpKWo4n+nmBXVcDc4TNzFV3vc+3aeKcu_nKaB=hj=RKUQ@mail.gmail.com>
In-Reply-To: <CAPDyKFpKWo4n+nmBXVcDc4TNzFV3vc+3aeKcu_nKaB=hj=RKUQ@mail.gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Wed, 16 Oct 2019 17:22:08 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WTKy3PmMSCbjKA_Ro_MP+dFE89oCzi_Bs7YeCrcD+3Xg@mail.gmail.com>
Message-ID: <CAD=FV=WTKy3PmMSCbjKA_Ro_MP+dFE89oCzi_Bs7YeCrcD+3Xg@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] mmc: core: Add sdio_trigger_replug() API
To: Ulf Hansson <ulf.hansson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_172727_111804_E17CD4BF 
X-CRM114-Status: GOOD (  34.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:142 listed in]
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 Ganapathi Bhat <gbhat@marvell.com>, Brian Norris <briannorris@chromium.org>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>,
 Xinming Hu <huxinming820@gmail.com>, netdev <netdev@vger.kernel.org>,
 Andreas Fenkart <afenkart@gmail.com>,
 linux-wireless <linux-wireless@vger.kernel.org>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Amitkumar Karwar <amitkarwar@gmail.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Nishant Sarmukadam <nishants@marvell.com>,
 Matthias Kaehlcke <mka@chromium.org>, Avri Altman <avri.altman@wdc.com>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, "David S. Miller" <davem@davemloft.net>,
 Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi,

On Thu, Oct 10, 2019 at 7:11 AM Ulf Hansson <ulf.hansson@linaro.org> wrote:
>
> On Mon, 22 Jul 2019 at 21:41, Douglas Anderson <dianders@chromium.org> wrote:
> >
> > When using Marvell WiFi SDIO cards, it is not uncommon for Linux WiFi
> > driver to fully lose the communication channel to the firmware running
> > on the card.  Presumably the firmware on the card has a bug or two in
> > it and occasionally crashes.
> >
> > The Marvell WiFi driver attempts to recover from this problem.
> > Specifically the driver has the function mwifiex_sdio_card_reset()
> > which is called when communcation problems are found.  That function
> > attempts to reset the state of things by utilizing the mmc_hw_reset()
> > function.
> >
> > The current solution is a bit complex because the Marvell WiFi driver
> > needs to manually deinit and reinit the WiFi driver around the reset
> > call.  This means it's going through a bunch of code paths that aren't
> > normally tested.  However, complexity isn't our only problem.  The
> > other (bigger) problem is that Marvell WiFi cards are often combo
> > WiFi/Bluetooth cards and Bluetooth runs on a second SDIO func.  While
> > the WiFi driver knows that it should re-init its own state around the
> > mmc_hw_reset() call there is no good way to inform the Bluetooth
> > driver.  That means that in Linux today when you reset the Marvell
> > WiFi driver you lose all Bluetooth communication.  Doh!
>
> Thanks for a nice description to the problem!
>
> In principle it makes mmc_hw_reset() quite questionable to use for
> SDIO func drivers, at all. However, let's consider that for later.

Yeah, unless you somehow knew that your card would only have one function.


> > One way to fix the above problems is to leverage a more standard way
> > to reset the Marvell WiFi card where we go through the same code paths
> > as card unplug and the card plug.  In this patch we introduce a new
> > API call for doing just that: sdio_trigger_replug().  This API call
> > will trigger an unplug of the SDIO card followed by a plug of the
> > card.  As part of this the card will be nicely reset.
>
> I have been thinking back and forth on this, exploring various
> options, perhaps adding some callbacks that the core could invoke to
> inform the SDIO func drivers of what is going on.
>
> Although, in the end this boils done to complexity and I think your
> approach is simply the most superior in regards to this. However, I
> think there is a few things that we can do to even further simply your
> approach, let me comment on the code below.

Right.  Unplugging / re-plugging is sorta gross / inelegant, but it is
definitely simpler and nice that it doesn't add so many new code
paths.  For cases where you're just trying to re-init things with a
hammer it works pretty well.


> > Signed-off-by: Douglas Anderson <dianders@chromium.org>
> > Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
> > ---
> >
> > Changes in v2:
> > - s/routnine/routine (Brian Norris, Matthias Kaehlcke).
> > - s/contining/containing (Matthias Kaehlcke).
> > - Add Matthias Reviewed-by tag.
> >
> >  drivers/mmc/core/core.c       | 28 ++++++++++++++++++++++++++--
> >  drivers/mmc/core/sdio_io.c    | 20 ++++++++++++++++++++
> >  include/linux/mmc/host.h      | 15 ++++++++++++++-
> >  include/linux/mmc/sdio_func.h |  2 ++
> >  4 files changed, 62 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/mmc/core/core.c b/drivers/mmc/core/core.c
> > index 221127324709..5da365b1fdb4 100644
> > --- a/drivers/mmc/core/core.c
> > +++ b/drivers/mmc/core/core.c
> > @@ -2161,6 +2161,12 @@ int mmc_sw_reset(struct mmc_host *host)
> >  }
> >  EXPORT_SYMBOL(mmc_sw_reset);
> >
> > +void mmc_trigger_replug(struct mmc_host *host)
> > +{
> > +       host->trigger_replug_state = MMC_REPLUG_STATE_UNPLUG;
> > +       _mmc_detect_change(host, 0, false);
> > +}
> > +
> >  static int mmc_rescan_try_freq(struct mmc_host *host, unsigned freq)
> >  {
> >         host->f_init = freq;
> > @@ -2214,6 +2220,11 @@ int _mmc_detect_card_removed(struct mmc_host *host)
> >         if (!host->card || mmc_card_removed(host->card))
> >                 return 1;
> >
> > +       if (host->trigger_replug_state == MMC_REPLUG_STATE_UNPLUG) {
> > +               mmc_card_set_removed(host->card);
> > +               return 1;
>
> Do you really need to set state of the card to "removed"?
>
> If I understand correctly, what you need is to allow mmc_rescan() to
> run a second time, in particular for non removable cards.
>
> In that path, mmc_rescan should find the card being non-functional,
> thus it should remove it and then try to re-initialize it again. Etc.
>
> Do you want me to send a patch to show you what I mean!?

If you don't mind, that would probably be easiest.  I've totally
swapped out all of the implementation details of this from my brain
now, but if I saw a patch from you it would be easy for me to analyze
it and test it.

Thanks!

-Doug

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

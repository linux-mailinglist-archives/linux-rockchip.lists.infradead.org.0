Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30215DA814
	for <lists+linux-rockchip@lfdr.de>; Thu, 17 Oct 2019 11:11:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ryi+Pn4F7wh/1qGFxQodrqee1/+ny1P928x9U3MYxIE=; b=FatjTLbjWhzdKX
	kH97MBMvACKp7bzoIf3SftFqB8dxYCWXeQwynkdk9scIB7iic4blYKKBVRJ41dOf2SSZ7BsppZ4cQ
	JE/QNRn6IGEr63G/XC2/lPQktUybvK33m5GIY8IgmA5V2ByQSc66HMt0W4ahLnlH0Rp/1k0BZ1mRb
	JHZxOxiAwKuap0/c1R+p5g4/FfdkVQhj49+6ixmL0hniwpR5veqI7wjxAejamNrgw4SBuBYHYa1Iw
	6Q84bSoi0ZpzyuVV9XzlOEd3Q1bSPX8DVkNH60gy3OHMWNhb6ukCqcf1vDuCTH//7ky4s56Gy9Q2X
	im41v7cLnWh+MVZyk/Yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL1oG-0004fh-0s; Thu, 17 Oct 2019 09:11:04 +0000
Received: from mail-vk1-xa42.google.com ([2607:f8b0:4864:20::a42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL1oC-0004f7-3R
 for linux-rockchip@lists.infradead.org; Thu, 17 Oct 2019 09:11:01 +0000
Received: by mail-vk1-xa42.google.com with SMTP id s72so343504vkh.5
 for <linux-rockchip@lists.infradead.org>; Thu, 17 Oct 2019 02:10:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=04hgzc9qmWLKJ4qr0kQdZsxTdQTI10306q/6E8gxvtc=;
 b=AqiK/AqAzagnlRkDP5D7TqpB+zWnEWzzdcE1+ogvr7ovwCaWkS1E6dkGJIs2VYkna0
 HA4p49iuZmap9bwrWQDRVBDRirGN4C+C2Zd7u80MbHPDi5LXzDcZodamYr8fGpxOJG9+
 cQZnATF4Ea0ykf2DI2LFkN6+oO+au47cMBmY/ah6FOd0Yu8NwLdx2gXP6PK0zgfk/FVl
 d5XrEkNmgDNqjUJTKWvbkMQHDg5i7+QZcSxqmZGGzma5dZtwr+ebc4iw4oBBUKILyGwe
 5vi75QlYGSAmHTq0wmbKn0zm/loaA1/zPSK2vMr5cX+3JCAUa64xiho02j7x4kDXzF9s
 eq/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=04hgzc9qmWLKJ4qr0kQdZsxTdQTI10306q/6E8gxvtc=;
 b=QeqrqbC4iE1PiLJ5r4eAT/1xj3UP8FhhCitneLIb5F9cUpYDNK8BKnJkiWVlcnsaKF
 XQOkVfJZVJKS2iAuxSqLzbqZP99e0xyArFdOlzvYvWsHcsaxKPc7jNHZUMpScz0GKUb3
 I2qhNmlGBgegTvQpOuSjsovZmILEn4hJl2oOkxgjLhZbvjtgAT2ZxaVk9JpEKWr90eAE
 J+cW77Cr3op7Yi3Ncln76P1+iBvxrI4zV1PdETz8mDhAaooGBtQIyh6KcTtCuXcDb12u
 JukdAR5czeLjLAviE18an87OlR2gbm8uRUQSPASZlOpfFc9T1Rb2NvyyVme8rAL1mX0m
 jzrQ==
X-Gm-Message-State: APjAAAXg9f+x+JrDs7tT8bHlK6OFJtGUYHHagMxzws5XfFR/gTlJPwce
 eJPxaiu7EV6qYzymsJVCm+od9FxVaYpIOe8WwGdZnQ==
X-Google-Smtp-Source: APXvYqy6RzDXcXpkWwa0bGaEo+8n7N3C2W0z0lEf79Xa7qw1LYxocO3L07nV4sCDvLvAw7yANGge1FFEGo3O1xtTF/4=
X-Received: by 2002:a1f:2f51:: with SMTP id v78mr1342917vkv.101.1571303457218; 
 Thu, 17 Oct 2019 02:10:57 -0700 (PDT)
MIME-Version: 1.0
References: <20190722193939.125578-1-dianders@chromium.org>
 <20190722193939.125578-2-dianders@chromium.org>
 <CAPDyKFpKWo4n+nmBXVcDc4TNzFV3vc+3aeKcu_nKaB=hj=RKUQ@mail.gmail.com>
 <CAD=FV=WTKy3PmMSCbjKA_Ro_MP+dFE89oCzi_Bs7YeCrcD+3Xg@mail.gmail.com>
In-Reply-To: <CAD=FV=WTKy3PmMSCbjKA_Ro_MP+dFE89oCzi_Bs7YeCrcD+3Xg@mail.gmail.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 17 Oct 2019 11:10:21 +0200
Message-ID: <CAPDyKFrwUgi6MzyZm0VgGWOahCGW6KgGRrWC7v=KvM=vbFY4RA@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] mmc: core: Add sdio_trigger_replug() API
To: Doug Anderson <dianders@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_021100_147673_FF4E20F2 
X-CRM114-Status: GOOD (  35.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On Thu, 17 Oct 2019 at 02:22, Doug Anderson <dianders@chromium.org> wrote:
>
> Hi,
>
> On Thu, Oct 10, 2019 at 7:11 AM Ulf Hansson <ulf.hansson@linaro.org> wrote:
> >
> > On Mon, 22 Jul 2019 at 21:41, Douglas Anderson <dianders@chromium.org> wrote:
> > >
> > > When using Marvell WiFi SDIO cards, it is not uncommon for Linux WiFi
> > > driver to fully lose the communication channel to the firmware running
> > > on the card.  Presumably the firmware on the card has a bug or two in
> > > it and occasionally crashes.
> > >
> > > The Marvell WiFi driver attempts to recover from this problem.
> > > Specifically the driver has the function mwifiex_sdio_card_reset()
> > > which is called when communcation problems are found.  That function
> > > attempts to reset the state of things by utilizing the mmc_hw_reset()
> > > function.
> > >
> > > The current solution is a bit complex because the Marvell WiFi driver
> > > needs to manually deinit and reinit the WiFi driver around the reset
> > > call.  This means it's going through a bunch of code paths that aren't
> > > normally tested.  However, complexity isn't our only problem.  The
> > > other (bigger) problem is that Marvell WiFi cards are often combo
> > > WiFi/Bluetooth cards and Bluetooth runs on a second SDIO func.  While
> > > the WiFi driver knows that it should re-init its own state around the
> > > mmc_hw_reset() call there is no good way to inform the Bluetooth
> > > driver.  That means that in Linux today when you reset the Marvell
> > > WiFi driver you lose all Bluetooth communication.  Doh!
> >
> > Thanks for a nice description to the problem!
> >
> > In principle it makes mmc_hw_reset() quite questionable to use for
> > SDIO func drivers, at all. However, let's consider that for later.
>
> Yeah, unless you somehow knew that your card would only have one function.
>
>
> > > One way to fix the above problems is to leverage a more standard way
> > > to reset the Marvell WiFi card where we go through the same code paths
> > > as card unplug and the card plug.  In this patch we introduce a new
> > > API call for doing just that: sdio_trigger_replug().  This API call
> > > will trigger an unplug of the SDIO card followed by a plug of the
> > > card.  As part of this the card will be nicely reset.
> >
> > I have been thinking back and forth on this, exploring various
> > options, perhaps adding some callbacks that the core could invoke to
> > inform the SDIO func drivers of what is going on.
> >
> > Although, in the end this boils done to complexity and I think your
> > approach is simply the most superior in regards to this. However, I
> > think there is a few things that we can do to even further simply your
> > approach, let me comment on the code below.
>
> Right.  Unplugging / re-plugging is sorta gross / inelegant, but it is
> definitely simpler and nice that it doesn't add so many new code
> paths.  For cases where you're just trying to re-init things with a
> hammer it works pretty well.
>
>
> > > Signed-off-by: Douglas Anderson <dianders@chromium.org>
> > > Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
> > > ---
> > >
> > > Changes in v2:
> > > - s/routnine/routine (Brian Norris, Matthias Kaehlcke).
> > > - s/contining/containing (Matthias Kaehlcke).
> > > - Add Matthias Reviewed-by tag.
> > >
> > >  drivers/mmc/core/core.c       | 28 ++++++++++++++++++++++++++--
> > >  drivers/mmc/core/sdio_io.c    | 20 ++++++++++++++++++++
> > >  include/linux/mmc/host.h      | 15 ++++++++++++++-
> > >  include/linux/mmc/sdio_func.h |  2 ++
> > >  4 files changed, 62 insertions(+), 3 deletions(-)
> > >
> > > diff --git a/drivers/mmc/core/core.c b/drivers/mmc/core/core.c
> > > index 221127324709..5da365b1fdb4 100644
> > > --- a/drivers/mmc/core/core.c
> > > +++ b/drivers/mmc/core/core.c
> > > @@ -2161,6 +2161,12 @@ int mmc_sw_reset(struct mmc_host *host)
> > >  }
> > >  EXPORT_SYMBOL(mmc_sw_reset);
> > >
> > > +void mmc_trigger_replug(struct mmc_host *host)
> > > +{
> > > +       host->trigger_replug_state = MMC_REPLUG_STATE_UNPLUG;
> > > +       _mmc_detect_change(host, 0, false);
> > > +}
> > > +
> > >  static int mmc_rescan_try_freq(struct mmc_host *host, unsigned freq)
> > >  {
> > >         host->f_init = freq;
> > > @@ -2214,6 +2220,11 @@ int _mmc_detect_card_removed(struct mmc_host *host)
> > >         if (!host->card || mmc_card_removed(host->card))
> > >                 return 1;
> > >
> > > +       if (host->trigger_replug_state == MMC_REPLUG_STATE_UNPLUG) {
> > > +               mmc_card_set_removed(host->card);
> > > +               return 1;
> >
> > Do you really need to set state of the card to "removed"?
> >
> > If I understand correctly, what you need is to allow mmc_rescan() to
> > run a second time, in particular for non removable cards.
> >
> > In that path, mmc_rescan should find the card being non-functional,
> > thus it should remove it and then try to re-initialize it again. Etc.
> >
> > Do you want me to send a patch to show you what I mean!?
>
> If you don't mind, that would probably be easiest.  I've totally
> swapped out all of the implementation details of this from my brain
> now, but if I saw a patch from you it would be easy for me to analyze
> it and test it.

Alright, I think I owe you that because of my slow review pase. :-)

Patches are coming soon!

Kind regards
Uffe

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 968632C787
	for <lists+linux-rockchip@lfdr.de>; Tue, 28 May 2019 15:12:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dIGSlw9VWsF34OaLaRIFVWpgLF+lhBP4OlvbgLNWBjo=; b=QkFsQEc7a7LKMW
	dv9acZMH9ptlAPeO43vdm0lhodupGl3uH+SPjQaV15cYwZMhRXnM0V6V3HgNSb0fhCK25HqvQjKDP
	r2FX1YFkXvR8RwvpvFvNoBE7lgM/ysPT4UHus093TfT3bwD0TTJEHdtuaAquuyQwAugQF+kDyJb3G
	WTHvhg//jCpTUelwpxb37MXNnaiFlZgq8oLulfNWmRXhttqE3+0W2wHl24WZoKSfVyjM6idCg0q7u
	U+xEglHEaiPRwd7x6S7oo7bFWTuhgrq/wawAl7jgfGLElS5huWQrXYBhnInUxGHarMyD4xOj4ugRZ
	FA9aetmGtRzeQQk2GVLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVbto-0006HC-Ji; Tue, 28 May 2019 13:12:16 +0000
Received: from mail-vs1-xe42.google.com ([2607:f8b0:4864:20::e42])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVbtk-0006Go-Ju
 for linux-rockchip@lists.infradead.org; Tue, 28 May 2019 13:12:14 +0000
Received: by mail-vs1-xe42.google.com with SMTP id q64so20277vsd.1
 for <linux-rockchip@lists.infradead.org>; Tue, 28 May 2019 06:12:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=bC7uw0Q16zbyERQODkexpXA2Wd01jXJNxJW/+MlJ9xU=;
 b=Un77SM1w1goDa3c6DvxwIsX0kDLmOvL2Y1zimTrA14lpFXxjlDic5GclMqdJjEhLCS
 ASXMlXba2HEP51VIS0sa2KUQKpcBFRwe28efbz7agSSudIwQYmDg5LNUzt68rGp6GoWX
 r4/SdY8Gy9sMO5J94QuO3Aj6VPs8XGeLPQKcexOROzBsy9iBKT1c9FNYzKE6FqbbkiKj
 /DCEykKW1JwbkCq3eivfpJLqV/9mU1qRmkipruY61Xrl4BK4N9+DnTxYP/yq8BkSHOEs
 OVyQRhm66+p9unCSMvHzjonrl50Tsz/cSwPTVXfx15CPIJz52AOW3SGZ9dLRzKniXOjQ
 AzrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=bC7uw0Q16zbyERQODkexpXA2Wd01jXJNxJW/+MlJ9xU=;
 b=BhyA1bXW7aF9xpau10GQH72H+8R+USrKq91KPrs0dflmhkvCb/1Pd9LWlx/N+1z5yu
 NDz8Qsbz8YN/AO1Aua/f503+ED2cFPRyEDDwIuFpNQZ70y6Hmqod495/MYBsfkPtoC32
 NjG3Zj7NXLUlIVYCmTH4cOvhzqikwe/XYqr7wYund0uqAICtqYiUWcBvfM4ulI2IRCb1
 vbWu85e0QAH/b+DjBK0cqu3VuBm2EwguGmq4iQLPY8pxdvUH6/oYnU89f1PEJ26xtcOY
 YcTf+jtUpFU/o27ew9VEea5NVjQied4T2IGAT5hebrMAAtoscisOC+xoYewkCP7kM/rL
 giFQ==
X-Gm-Message-State: APjAAAWeCi5TXGlGUzGX+v9+VIimOw0+vzUppv0YVPfGw/hFMY60+M2u
 TPsikqET+a73O2i1OZxAM/stHZqctc57WXXczwCNYw==
X-Google-Smtp-Source: APXvYqwTe3cBfi7yoieBrPEOzAHDsyDItiIt5TIFzafoyt6gFPbn2plZTRIfhuSVs5s07ZrfzfqOfiGH6UOFacw77v8=
X-Received: by 2002:a67:ebc5:: with SMTP id y5mr72159764vso.34.1559049131411; 
 Tue, 28 May 2019 06:12:11 -0700 (PDT)
MIME-Version: 1.0
References: <20190429204040.18725-1-dianders@chromium.org>
 <CAD=FV=WEDkufoEUYv9U+c+Y_bm8MYEWS25n63vUeNG0LLCFnuw@mail.gmail.com>
In-Reply-To: <CAD=FV=WEDkufoEUYv9U+c+Y_bm8MYEWS25n63vUeNG0LLCFnuw@mail.gmail.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 28 May 2019 15:11:34 +0200
Message-ID: <CAPDyKFoKN2zUNvDkgciO6r_ohdh2Vaj5qQaAPwMq21y02XAK8A@mail.gmail.com>
Subject: Re: [PATCH v2] mmc: dw_mmc: Disable SDIO interrupts while suspended
 to fix suspend/resume
To: Doug Anderson <dianders@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_061212_675328_43500DE3 
X-CRM114-Status: GOOD (  31.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Linux MMC List <linux-mmc@vger.kernel.org>,
 Shawn Lin <shawn.lin@rock-chips.com>, Brian Norris <briannorris@chromium.org>,
 linux-wireless <linux-wireless@vger.kernel.org>,
 LKML <linux-kernel@vger.kernel.org>, "# 4.0+" <stable@vger.kernel.org>,
 Jaehoon Chung <jh80.chung@samsung.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Matthias Kaehlcke <mka@chromium.org>, Ryan Case <ryandcase@chromium.org>,
 Guenter Roeck <groeck@chromium.org>,
 Emil Renner Berthing <emil.renner.berthing@gmail.com>,
 Sonny Rao <sonnyrao@chromium.org>, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Mon, 20 May 2019 at 20:41, Doug Anderson <dianders@chromium.org> wrote:
>
> Hi,
>
> On Mon, Apr 29, 2019 at 1:41 PM Douglas Anderson <dianders@chromium.org> wrote:
> >
> > Processing SDIO interrupts while dw_mmc is suspended (or partly
> > suspended) seems like a bad idea.  We really don't want to be
> > processing them until we've gotten ourselves fully powered up.
> >
> > You might be wondering how it's even possible to become suspended when
> > an SDIO interrupt is active.  As can be seen in
> > dw_mci_enable_sdio_irq(), we explicitly keep dw_mmc out of runtime
> > suspend when the SDIO interrupt is enabled.  ...but even though we
> > stop normal runtime suspend transitions when SDIO interrupts are
> > enabled, the dw_mci_runtime_suspend() can still get called for a full
> > system suspend.
> >
> > Let's handle all this by explicitly masking SDIO interrupts in the
> > suspend call and unmasking them later in the resume call.  To do this
> > cleanly I'll keep track of whether the client requested that SDIO
> > interrupts be enabled so that we can reliably restore them regardless
> > of whether we're masking them for one reason or another.
> >
> > It should be noted that if dw_mci_enable_sdio_irq() is never called
> > (for instance, if we don't have an SDIO card plugged in) that
> > "client_sdio_enb" will always be false.  In those cases this patch
> > adds a tiny bit of overhead to suspend/resume (a spinlock and a
> > read/write of INTMASK) but other than that is a no-op.  The
> > SDMMC_INT_SDIO bit should always be clear and clearing it again won't
> > hurt.
> >
> > Without this fix it can be seen that rk3288-veyron Chromebooks with
> > Marvell WiFi would sometimes fail to resume WiFi even after picking my
> > recent mwifiex patch [1].  Specifically you'd see messages like this:
> >   mwifiex_sdio mmc1:0001:1: Firmware wakeup failed
> >   mwifiex_sdio mmc1:0001:1: PREP_CMD: FW in reset state
> >
> > ...and tracing through the resume code in the failing cases showed
> > that we were processing a SDIO interrupt really early in the resume
> > call.
> >
> > NOTE: downstream in Chrome OS 3.14 and 3.18 kernels (both of which
> > support the Marvell SDIO WiFi card) we had a patch ("CHROMIUM: sdio:
> > Defer SDIO interrupt handling until after resume") [2].  Presumably
> > this is the same problem that was solved by that patch.
> >
> > [1] https://lkml.kernel.org/r/20190404040106.40519-1-dianders@chromium.org
> > [2] https://crrev.com/c/230765
> >
> > Cc: <stable@vger.kernel.org> # 4.14.x
> > Signed-off-by: Douglas Anderson <dianders@chromium.org>
> > ---
> > I didn't put any "Fixes" tag here, but presumably this could be
> > backported to whichever kernels folks found it useful for.  I have at
> > least confirmed that kernels v4.14 and v4.19 (as well as v5.1-rc2)
> > show the problem.  It is very easy to pick this to v4.19 and it
> > definitely fixes the problem there.
> >
> > I haven't spent the time to pick this to 4.14 myself, but presumably
> > it wouldn't be too hard to backport this as far as v4.13 since that
> > contains commit 32dba73772f8 ("mmc: dw_mmc: Convert to use
> > MMC_CAP2_SDIO_IRQ_NOTHREAD for SDIO IRQs").  Prior to that it might
> > make sense for anyone experiencing this problem to just pick the old
> > CHROMIUM patch to fix them.
> >
> > Changes in v2:
> > - Suggested 4.14+ in the stable tag (Sasha-bot)
> > - Extra note that this is a noop on non-SDIO (Shawn / Emil)
> > - Make boolean logic cleaner as per https://crrev.com/c/1586207/1
> > - Hopefully clear comments as per https://crrev.com/c/1586207/1
> >
> >  drivers/mmc/host/dw_mmc.c | 27 +++++++++++++++++++++++----
> >  drivers/mmc/host/dw_mmc.h |  3 +++
> >  2 files changed, 26 insertions(+), 4 deletions(-)
>
> Ulf: are you the right person to land this?  With 5.2-rc1 out it might
> be a good time for it?  To refresh your memory about this patch:
>
> * Patch v1 was posted back on April 10th [1] so we're at about 1.5
> months of time for people to comment about it now.  Should be more
> than enough.

Apologize for the delay, not sure why this has slipped through my
filters. Anyway, let me have a look at it now.

>
> * Shawn Lin saw it and didn't hate it.  He had some confusion about
> how it worked and I've hopefully alleviated via extra comments / text.
>
> * Emil Renner Berthing thought it caused a regression for him but then
> tested further and was convinced that it didn't.  This is extra
> confirmation that someone other than me did try the patch and found it
> to not break things.  ;-)
>
> * It has been reviewed by Guenter Roeck (in v2)

One question, I am guessing you are considering
https://lkml.org/lkml/2019/5/17/761 as the long term solution, and
thus $subject patch should go as fix+stable? No?

>
> [1] https://lkml.kernel.org/r/20190410221237.160856-1-dianders@chromium.org
>
>
> -Doug

Kind regards
Uffe

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

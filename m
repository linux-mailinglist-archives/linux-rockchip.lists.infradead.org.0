Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F3F02C8EF
	for <lists+linux-rockchip@lfdr.de>; Tue, 28 May 2019 16:38:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JPwqhCmOZHlhC9/l/YWb+0ByV3QyffFOU0JEzT3sLWQ=; b=YpaQekKttpFhQH
	i2YRhahl8SB62MijDDP4rERwMzRRM9d9CAOFqncHd7G14OEQDcNgibB/9NBcu3D0e8dRKUJ3tpWeV
	4gPd1nlB7pe6XDXUPcaq3uOPCDoP+dZw10EHP4nWngDpmsDxIzJIiqKxKxqog09JslauYO/bl7B8H
	TOJDmjH7E+Fbo2zwIoToOORft1u725xte6/R/C11fueTKLBEbShLEdJcQYGI6+X2LyHCxFcJ5NSIg
	O0h2U59sKqiwDjOsqXw91j2JbwnzOI9Zqd3wrB9WzHsBncWGG1BoitO0eAETx90tCnKZHxdbLfOsd
	KvkPI7nYv37TZYZVbIqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVdFP-0008NE-Gb; Tue, 28 May 2019 14:38:39 +0000
Received: from mail-vk1-xa42.google.com ([2607:f8b0:4864:20::a42])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVdFM-0008M6-1q
 for linux-rockchip@lists.infradead.org; Tue, 28 May 2019 14:38:37 +0000
Received: by mail-vk1-xa42.google.com with SMTP id k1so4727611vkb.2
 for <linux-rockchip@lists.infradead.org>; Tue, 28 May 2019 07:38:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xoaLrOaVKIM8ESM/O0FPRf0nY0zEO7GufQin910pcKk=;
 b=irftUQkii/33TKs92nEGhu6oEm/EW/DyqkbJsM8saeMvXwkfZS4WGQ/dEu6pFb6gGg
 0d1zWvIPJGBgIBmCeReqSQgMzYAPsgVxJF2pBEkSYRpOkTQBLERmkeYhgvUWbzeITOcZ
 DQFrs7MUbN0sMHD30cVrw4wDXvPXgNm24GlwI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xoaLrOaVKIM8ESM/O0FPRf0nY0zEO7GufQin910pcKk=;
 b=M1QgBDes3kGhyrk1Zcqrwws/sbptFBMCl/36xae4EFr5gLVd8Pvy1tKIeuwLNuQ/dE
 FjpqpNxe1+ZxTNBe5hTzgSLcj4MXGQTnzIKI9CiqHx9jqBzHkNpACjGjPj2xrBianPtE
 LmLnKJyBdoKgA0falXri0+t2B+GVQ3dfH9et/PpuUCxzRawVZOFCRHnu9wwkRVKp/+0h
 cgiVVZ4o3dv0fuWEdfwLV3Iz65enLDec0Aw6tt1h+rnT0eGytD/JQP+Y8uNXP50FbN5z
 uMjKhBxe4WqIl3EGnGVet28YCTj1z8nQFFUw3B3X1NLrUPFbxbY5wa74UYWQhcHBuYfi
 PA4Q==
X-Gm-Message-State: APjAAAUl0ptJLTM2wtbmSdeTc5kaU74mtNBkGODwoGqG39SrKU95BPCv
 oTVXQqYAf8KYQegQdoxfraU5nIS7EME=
X-Google-Smtp-Source: APXvYqyszNO1SGcUCnLg4EuerlvWA07VW4SZbH8iKGhsoFATex7wCRoX2mwXa//HcXuQYHpNAjoh2Q==
X-Received: by 2002:a1f:b911:: with SMTP id j17mr25780504vkf.25.1559054312807; 
 Tue, 28 May 2019 07:38:32 -0700 (PDT)
Received: from mail-ua1-f51.google.com (mail-ua1-f51.google.com.
 [209.85.222.51])
 by smtp.gmail.com with ESMTPSA id e76sm15983662vke.54.2019.05.28.07.38.26
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Tue, 28 May 2019 07:38:29 -0700 (PDT)
Received: by mail-ua1-f51.google.com with SMTP id u4so1698480uau.10
 for <linux-rockchip@lists.infradead.org>; Tue, 28 May 2019 07:38:26 -0700 (PDT)
X-Received: by 2002:ab0:4a97:: with SMTP id s23mr27884679uae.19.1559054305839; 
 Tue, 28 May 2019 07:38:25 -0700 (PDT)
MIME-Version: 1.0
References: <20190429204040.18725-1-dianders@chromium.org>
 <CAD=FV=WEDkufoEUYv9U+c+Y_bm8MYEWS25n63vUeNG0LLCFnuw@mail.gmail.com>
 <CAPDyKFoKN2zUNvDkgciO6r_ohdh2Vaj5qQaAPwMq21y02XAK8A@mail.gmail.com>
In-Reply-To: <CAPDyKFoKN2zUNvDkgciO6r_ohdh2Vaj5qQaAPwMq21y02XAK8A@mail.gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Tue, 28 May 2019 07:38:14 -0700
X-Gmail-Original-Message-ID: <CAD=FV=VqqDK6SLC_1_cFUjjEdTNUU09GJi4ZEMNwt_mgjnVRdg@mail.gmail.com>
Message-ID: <CAD=FV=VqqDK6SLC_1_cFUjjEdTNUU09GJi4ZEMNwt_mgjnVRdg@mail.gmail.com>
Subject: Re: [PATCH v2] mmc: dw_mmc: Disable SDIO interrupts while suspended
 to fix suspend/resume
To: Ulf Hansson <ulf.hansson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_073836_126703_996A92FB 
X-CRM114-Status: GOOD (  36.92  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Hi,

On Tue, May 28, 2019 at 6:12 AM Ulf Hansson <ulf.hansson@linaro.org> wrote:
>
> On Mon, 20 May 2019 at 20:41, Doug Anderson <dianders@chromium.org> wrote:
> >
> > Hi,
> >
> > On Mon, Apr 29, 2019 at 1:41 PM Douglas Anderson <dianders@chromium.org> wrote:
> > >
> > > Processing SDIO interrupts while dw_mmc is suspended (or partly
> > > suspended) seems like a bad idea.  We really don't want to be
> > > processing them until we've gotten ourselves fully powered up.
> > >
> > > You might be wondering how it's even possible to become suspended when
> > > an SDIO interrupt is active.  As can be seen in
> > > dw_mci_enable_sdio_irq(), we explicitly keep dw_mmc out of runtime
> > > suspend when the SDIO interrupt is enabled.  ...but even though we
> > > stop normal runtime suspend transitions when SDIO interrupts are
> > > enabled, the dw_mci_runtime_suspend() can still get called for a full
> > > system suspend.
> > >
> > > Let's handle all this by explicitly masking SDIO interrupts in the
> > > suspend call and unmasking them later in the resume call.  To do this
> > > cleanly I'll keep track of whether the client requested that SDIO
> > > interrupts be enabled so that we can reliably restore them regardless
> > > of whether we're masking them for one reason or another.
> > >
> > > It should be noted that if dw_mci_enable_sdio_irq() is never called
> > > (for instance, if we don't have an SDIO card plugged in) that
> > > "client_sdio_enb" will always be false.  In those cases this patch
> > > adds a tiny bit of overhead to suspend/resume (a spinlock and a
> > > read/write of INTMASK) but other than that is a no-op.  The
> > > SDMMC_INT_SDIO bit should always be clear and clearing it again won't
> > > hurt.
> > >
> > > Without this fix it can be seen that rk3288-veyron Chromebooks with
> > > Marvell WiFi would sometimes fail to resume WiFi even after picking my
> > > recent mwifiex patch [1].  Specifically you'd see messages like this:
> > >   mwifiex_sdio mmc1:0001:1: Firmware wakeup failed
> > >   mwifiex_sdio mmc1:0001:1: PREP_CMD: FW in reset state
> > >
> > > ...and tracing through the resume code in the failing cases showed
> > > that we were processing a SDIO interrupt really early in the resume
> > > call.
> > >
> > > NOTE: downstream in Chrome OS 3.14 and 3.18 kernels (both of which
> > > support the Marvell SDIO WiFi card) we had a patch ("CHROMIUM: sdio:
> > > Defer SDIO interrupt handling until after resume") [2].  Presumably
> > > this is the same problem that was solved by that patch.
> > >
> > > [1] https://lkml.kernel.org/r/20190404040106.40519-1-dianders@chromium.org
> > > [2] https://crrev.com/c/230765
> > >
> > > Cc: <stable@vger.kernel.org> # 4.14.x
> > > Signed-off-by: Douglas Anderson <dianders@chromium.org>
> > > ---
> > > I didn't put any "Fixes" tag here, but presumably this could be
> > > backported to whichever kernels folks found it useful for.  I have at
> > > least confirmed that kernels v4.14 and v4.19 (as well as v5.1-rc2)
> > > show the problem.  It is very easy to pick this to v4.19 and it
> > > definitely fixes the problem there.
> > >
> > > I haven't spent the time to pick this to 4.14 myself, but presumably
> > > it wouldn't be too hard to backport this as far as v4.13 since that
> > > contains commit 32dba73772f8 ("mmc: dw_mmc: Convert to use
> > > MMC_CAP2_SDIO_IRQ_NOTHREAD for SDIO IRQs").  Prior to that it might
> > > make sense for anyone experiencing this problem to just pick the old
> > > CHROMIUM patch to fix them.
> > >
> > > Changes in v2:
> > > - Suggested 4.14+ in the stable tag (Sasha-bot)
> > > - Extra note that this is a noop on non-SDIO (Shawn / Emil)
> > > - Make boolean logic cleaner as per https://crrev.com/c/1586207/1
> > > - Hopefully clear comments as per https://crrev.com/c/1586207/1
> > >
> > >  drivers/mmc/host/dw_mmc.c | 27 +++++++++++++++++++++++----
> > >  drivers/mmc/host/dw_mmc.h |  3 +++
> > >  2 files changed, 26 insertions(+), 4 deletions(-)
> >
> > Ulf: are you the right person to land this?  With 5.2-rc1 out it might
> > be a good time for it?  To refresh your memory about this patch:
> >
> > * Patch v1 was posted back on April 10th [1] so we're at about 1.5
> > months of time for people to comment about it now.  Should be more
> > than enough.
>
> Apologize for the delay, not sure why this has slipped through my
> filters. Anyway, let me have a look at it now.

No worries.  If there's something better I can do in the future to
avoid problems, please let me know.


> > * Shawn Lin saw it and didn't hate it.  He had some confusion about
> > how it worked and I've hopefully alleviated via extra comments / text.
> >
> > * Emil Renner Berthing thought it caused a regression for him but then
> > tested further and was convinced that it didn't.  This is extra
> > confirmation that someone other than me did try the patch and found it
> > to not break things.  ;-)
> >
> > * It has been reviewed by Guenter Roeck (in v2)
>
> One question, I am guessing you are considering
> https://lkml.org/lkml/2019/5/17/761 as the long term solution, and
> thus $subject patch should go as fix+stable? No?

No, the two problems are completely separate.  ${SUBJECT} patch deals
with full system suspend/resume.  I originally reproduced the problems
on a device with Marvell WiFi, though it could possibly affect
Broadcom parts on dw_mmc too.  ${SUBJECT} patch is ready to land on
mainline Linux at your leisure.  Also: in case you didn't notice
(since it didn't thread properly for me), Shawn Lin gave it a reviewed
by [1].

The patch you refer to [2] is related to something akin to an idle
state (more like Runtime PM) and only affects Broadcom parts.  Also
the Broadcom issue ought to happen across all host controllers (AKA
not just dw_mmc).

[1] https://lkml.kernel.org/r/982ffba1-c599-e73d-e5e0-b1be5668851c@rock-chips.com
[2] https://lkml.org/lkml/2019/5/17/761

-Doug

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

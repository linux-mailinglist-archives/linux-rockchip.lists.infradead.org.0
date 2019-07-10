Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3E1B64D75
	for <lists+linux-rockchip@lfdr.de>; Wed, 10 Jul 2019 22:22:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R57pX6yt/SaXgMIiP52LnorvV4l4s36M7Gd/zT6sIJg=; b=N2XwdtIlw4ZGVw
	so/GMLCBdr64wdr0WfRaBhvpTOIIyxy0x2Oas9Mk8Xp54r6EnoumQ4az91AlHB0UZVG5w5BNqYPws
	Ds+veB8F07RKrr5rnkmGGZsBnkTSWyKsK6VHois3iHN44c27ZawOkIooaeoR4hbuE5icI6/CNveaX
	smvU8w0O2xX/4m4dg8V5H0Mf5ISddCU+XHQfz6lvAN0KgmLzzQ/JFz2s7LLcPHFJJXzzadxIxTPDD
	4slcOk4tiT5stHddCMP1Kh1diVL40Gu7iBs9jkoDEgwoWXBQNpuhZ154PJbOeo/FWj5SoeASZOu4N
	IYQq4SLdf9SfMSPwEosw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlJ6Z-0008I3-Mw; Wed, 10 Jul 2019 20:22:20 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlJ6V-0008H6-8N
 for linux-rockchip@lists.infradead.org; Wed, 10 Jul 2019 20:22:17 +0000
Received: by mail-io1-xd42.google.com with SMTP id k8so7652328iot.1
 for <linux-rockchip@lists.infradead.org>; Wed, 10 Jul 2019 13:22:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=DlFRlvlH9bN0SYpSDNk4APXnCg4d/CNCqu9ZPK+njpg=;
 b=Ugp7S7GFWdWPqCLlfCk+lMD6r2Vg7SKm/PaJOARJkx7lubIx1VUsoQQeklzDVBe/5O
 dOlmTOahKL1oFh+CKCrVBRY+ZaLF7YKnqm+F2oVkHTvC7JiAcNI6xgGAeo/miO9eMT2T
 4VgFxIdDMYWHgNraVouGl6QVmCdZ4+fCMklhQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DlFRlvlH9bN0SYpSDNk4APXnCg4d/CNCqu9ZPK+njpg=;
 b=CDS14LEoKksLD/8LIRVtbuQZQhVpFO2kR8aPoc5mgpFpV9lUEJYHuUD4jbHqUriCqo
 Zp4xA+VmIqW1GfsuspBiPTjdaW4h6sNinlzT+E6pGUByWm+7/4GoQ4KPu96L+HYS7MhK
 zFahovDX7tjwdo8/3MGu3MVjYKzH5MqjrE6wM6zpK/+T6yLb13B4+c+kwe6TkV7EcTj5
 z6glI2zLaXXQlng2H/w2VwNizIC02VwTnUNTihp4t5MMmo2RBULw9PiHkoGFQ1nm11eE
 QAJdDdumyZ1w+FrZlOAioaFiFwdCaLiN0bNWNDzaUgycyspzUMPRnHr4nChiZnyVgtum
 4i9A==
X-Gm-Message-State: APjAAAWbMU5QBTnZy/DqDpujC7JY1v2rhDWpZaSYgdKpCinDByIoSbCZ
 qwHgmcwL8rAeoTacKmvUvJYmwCtDqB4=
X-Google-Smtp-Source: APXvYqzUy2r7RfSHFPoYfOQltmf3O8dQDLAP/0h6UKG+vfYu3DzEtUjvAjBmQEx8rzB/qfFAGDy1yA==
X-Received: by 2002:a02:cd82:: with SMTP id l2mr37058247jap.96.1562790131609; 
 Wed, 10 Jul 2019 13:22:11 -0700 (PDT)
Received: from mail-io1-f44.google.com (mail-io1-f44.google.com.
 [209.85.166.44])
 by smtp.gmail.com with ESMTPSA id e22sm2298231iob.66.2019.07.10.13.22.09
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Wed, 10 Jul 2019 13:22:09 -0700 (PDT)
Received: by mail-io1-f44.google.com with SMTP id m24so7633942ioo.2
 for <linux-rockchip@lists.infradead.org>; Wed, 10 Jul 2019 13:22:09 -0700 (PDT)
X-Received: by 2002:a5d:885a:: with SMTP id t26mr11784877ios.218.1562790128781; 
 Wed, 10 Jul 2019 13:22:08 -0700 (PDT)
MIME-Version: 1.0
References: <20190708195613.205729-1-dianders@chromium.org>
 <CAJKOXPf9OTPaheUdiZtaDGU0sE2vsdRiLx5nptMt_EVKU7GObA@mail.gmail.com>
 <CAD=FV=WquwqKjUKh5=M6tbTrD3svVTGWLU3iSTzD-uXBX73YWA@mail.gmail.com>
 <CAD=FV=X=RALazfX+vjQ7E-JmVu6xqDWCad5hPF+gNtHCuvZMTA@mail.gmail.com>
In-Reply-To: <CAD=FV=X=RALazfX+vjQ7E-JmVu6xqDWCad5hPF+gNtHCuvZMTA@mail.gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Wed, 10 Jul 2019 13:21:57 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WL_Hy78REn+0CMOjYgPcuDcN1w-+94QD9HHJraQBNj4g@mail.gmail.com>
Message-ID: <CAD=FV=WL_Hy78REn+0CMOjYgPcuDcN1w-+94QD9HHJraQBNj4g@mail.gmail.com>
Subject: Re: [PATCH] mmc: dw_mmc: Fix occasional hang after tuning on eMMC
To: Krzysztof Kozlowski <krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_132215_299449_C5CB0168 
X-CRM114-Status: GOOD (  29.30  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Ulf Hansson <ulf.hansson@linaro.org>,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 Brian Norris <briannorris@chromium.org>,
 Linux MMC List <linux-mmc@vger.kernel.org>,
 LKML <linux-kernel@vger.kernel.org>, Jaehoon Chung <jh80.chung@samsung.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Matthias Kaehlcke <mka@chromium.org>, Guenter Roeck <groeck@chromium.org>,
 Alim Akhtar <alim.akhtar@gmail.com>, Sonny Rao <sonnyrao@chromium.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi,

On Tue, Jul 9, 2019 at 3:02 PM Doug Anderson <dianders@chromium.org> wrote:
>
> Hi,
>
> On Tue, Jul 9, 2019 at 9:38 AM Doug Anderson <dianders@chromium.org> wrote:
> >
> > Hi,
> >
> > On Tue, Jul 9, 2019 at 2:07 AM Krzysztof Kozlowski <krzk@kernel.org> wrote:
> > >
> > > On Tue, 9 Jul 2019 at 00:48, Douglas Anderson <dianders@chromium.org> wrote:
> > > >
> > > > In commit 46d179525a1f ("mmc: dw_mmc: Wait for data transfer after
> > > > response errors.") we fixed a tuning-induced hang that I saw when
> > > > stress testing tuning on certain SD cards.  I won't re-hash that whole
> > > > commit, but the summary is that as a normal part of tuning you need to
> > > > deal with transfer errors and there were cases where these transfer
> > > > errors was putting my system into a bad state causing all future
> > > > transfers to fail.  That commit fixed handling of the transfer errors
> > > > for me.
> > > >
> > > > In downstream Chrome OS my fix landed and had the same behavior for
> > > > all SD/MMC commands.  However, it looks like when the commit landed
> > > > upstream we limited it to only SD tuning commands.  Presumably this
> > > > was to try to get around problems that Alim Akhtar reported on exynos
> > > > [1].
> > > >
> > > > Unfortunately while stress testing reboots (and suspend/resume) on
> > > > some rk3288-based Chromebooks I found the same problem on the eMMC on
> > > > some of my Chromebooks (the ones with Hynix eMMC).  Since the eMMC
> > > > tuning command is different (MMC_SEND_TUNING_BLOCK_HS200
> > > > vs. MMC_SEND_TUNING_BLOCK) we were basically getting back into the
> > > > same situation.
> > > >
> > > > I'm hoping that whatever problems exynos was having in the past are
> > > > somehow magically fixed now and we can make the behavior the same for
> > > > all commands.
> > > >
> > > > [1] https://lkml.kernel.org/r/CAGOxZ53WfNbaMe0_AM0qBqU47kAfgmPBVZC8K8Y-_J3mDMqW4A@mail.gmail.com
> > > >
> > > > Fixes: 46d179525a1f ("mmc: dw_mmc: Wait for data transfer after response errors.")
> > > > Signed-off-by: Douglas Anderson <dianders@chromium.org>
> > > > Cc: Marek Szyprowski <m.szyprowski@samsung.com>
> > > > Cc: Alim Akhtar <alim.akhtar@gmail.com>
> > > > Cc: Enric Balletbo i Serra <enric.balletbo@collabora.com>
> > > > ---
> > > > Marek (or anyone else using exynos): is it easy for you to test this
> > > > and check if things are still broken when we land this patch?  If so,
> > > > I guess we could have a quirk to have different behavior for just
> > > > Rockchip SoCs but I'd rather avoid that if possible.
> > > >
> > > > NOTE: I'm not hoping totally in vain here.  It is possible that some
> > > > of the CTO/DTO timers that landed could be the magic that would get
> > > > exynos unstuck.
> > >
> > > I have eMMC module attached to Odroid U3 (Exynos4412,
> > > samsung,exynos4412-dw-mshc). What is the testing procedure? With your
> > > patch it boots fine:
> > > [    3.698637] mmc_host mmc1: Bus speed (slot 0) = 50000000Hz (slot
> > > req 52000000Hz, actual 50000000HZ div = 0)
> > > [    3.703900] mmc1: new DDR MMC card at address 0001
> > > [    3.728458] mmcblk1: mmc1:0001 008G92 7.28 GiB
> >
> > To really test it, it'd be nice to see some HS200 eMMC cards enumerate
> > OK.  Specifically the patch adjusts the error handling and the place
> > where that happens mostly is during tuning.
> >
> > I'll also try to find some time today to check a peach_pit or a
> > peach_pi.  I think I saw one in the pile near my desk so if it isn't
> > in too bad of a shape I can give mainline a shot on it.
>
> OK, I managed to get an exynos5800-peach-pi up and running.  I put my
> patch in place and am currently at 45 reboots and counting w/ no
> problems.

In case it helps, I made it through 2379 more reboots on my peach_pi
w/ no hangs.  I'm putting the device back in mothball now.  :-P  I
didn't go back and try to reproduce the original problems so I guess I
can't assert with 100% authority that the original issue is gone, but
my testing combined with Enric's seems like things are working fine.

-Doug

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

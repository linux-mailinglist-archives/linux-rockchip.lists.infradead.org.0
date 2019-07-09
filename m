Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17F4363D87
	for <lists+linux-rockchip@lfdr.de>; Tue,  9 Jul 2019 23:48:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EbmxQTNCkJMPBgmVsCizxtK+pk0w79RlyY2cVPtvFg4=; b=Gym5QtZDUPCLFN
	C9r/riBZVqhUeL2KJek6w4qNOv8ZMZLQa2gP/VUEY9BFVoDYu97nS/fPi0QFCFcho3b4LB3H7WpZ+
	XM54sgTCRn4X332fXOZwlxjB1/fOKIlBstqv2jlJflzkLnkVo3S2NlDO9TUn3CzZTYbWu9JlnQcG5
	Trv1MFvvRmsL+2F2fwfPrGrkdnE18MXO4lPN+KL41a/RZCLXqn4U+K44CmAhmoPgONHCKE1BxsTO4
	u2rkNWAZz0Vs60agnO9d5WEUmBM1Es44CY7idZRpn+fujmu/6rqR7Gt54e/Zml12t9K3VklIlASgb
	uh054kJIaYyAxV2J8w1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkxyV-00089C-FI; Tue, 09 Jul 2019 21:48:35 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkxyS-00088Z-Dt
 for linux-rockchip@lists.infradead.org; Tue, 09 Jul 2019 21:48:34 +0000
Received: by mail-qt1-x841.google.com with SMTP id h24so266750qto.0
 for <linux-rockchip@lists.infradead.org>; Tue, 09 Jul 2019 14:48:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=pObonpCVhBSmmiSRgLF61Ki0eXVsuxi+cPBVrWAPOgE=;
 b=WuGNttqWLWY2ZilDDq/cmXWwieqNlqYaoKgGTV0hs6MhLCzsar9IieghREaCh12pYO
 mcSt3MXg/FQYOVdTIgRq0nWk69auT0nVFM8ENzugPJBpWwUvOlEc4qdUXsFnytl52WPD
 fnyQQ34giXP4UTEt3hul2/BNMfkG9JnY9IOuYkleXLWm2gzUkV+4fti5PAkbjdTpmLHg
 LSfhIRit46IAjUz16kYPCPSxwvr6J3u3V3sskmTndoVu+bktVyIuaQjEuURE5ivelgmw
 wQsqDZ+0b+cILcmlUzAdcrWl+Chr4ij+F9O7xc33ez5NfLN4VxHvSftK6Pxlrk4JyX+z
 GjtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=pObonpCVhBSmmiSRgLF61Ki0eXVsuxi+cPBVrWAPOgE=;
 b=VesteJw26PQAblHJ6GEyDUzgIgGWD1WNT0T8NXHOfGApXIlZmCJXjkMTq3wh5Wamqn
 OFMg94iYHJ4Z/t3VwYmQvkQTpLT59Ay04pEkqeKkXcM3q8Hb5AEGVIPEkG68w5jWQzAX
 XjmPxNmVOiMYMFsqV/PGlL8b+SN6+SAnR9a/d/ELSFPgvFQ7m8k5FJi0AGwmHwvWWVyc
 QQbF8l9ZDdy0+a6Y3I7TtngIWoY3dL1h8g1OapL/5JosiAU0F03StxV8BfqtFSPX9ssB
 zTChIGps4ra8sv9OsonIVdoMUztJEMaywjo/6NAqZdIKTB/iDT5JzG1dm7z7JKTEXej5
 siAw==
X-Gm-Message-State: APjAAAXHb+FgRK6ekppMzYVZRX7a41XZvPV5H7w8UBRwSOx3aHRKhDVg
 nBwmTe8FVyA51M+63iaA4laTogvOKf/j1Yyb8sw=
X-Google-Smtp-Source: APXvYqyywjCWmRSpegmDraZaGC6H19pvew0Xiws8Ie8gSnqctiNwYxTuBCPdVFk8g5+yZmE855EOfG09T0cwXg0mVKw=
X-Received: by 2002:ac8:1c2d:: with SMTP id a42mr20603885qtk.311.1562708910876; 
 Tue, 09 Jul 2019 14:48:30 -0700 (PDT)
MIME-Version: 1.0
References: <20190708195613.205729-1-dianders@chromium.org>
 <CAJKOXPf9OTPaheUdiZtaDGU0sE2vsdRiLx5nptMt_EVKU7GObA@mail.gmail.com>
 <CAD=FV=WquwqKjUKh5=M6tbTrD3svVTGWLU3iSTzD-uXBX73YWA@mail.gmail.com>
In-Reply-To: <CAD=FV=WquwqKjUKh5=M6tbTrD3svVTGWLU3iSTzD-uXBX73YWA@mail.gmail.com>
From: Enric Balletbo Serra <eballetbo@gmail.com>
Date: Tue, 9 Jul 2019 23:48:19 +0200
Message-ID: <CAFqH_52Vhonb0ui5eXVHtyt+3td=_9pLZBWTBsHBgt34bX=H+Q@mail.gmail.com>
Subject: Re: [PATCH] mmc: dw_mmc: Fix occasional hang after tuning on eMMC
To: Doug Anderson <dianders@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_144832_471539_55826F17 
X-CRM114-Status: GOOD (  28.50  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (eballetbo[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 Brian Norris <briannorris@chromium.org>,
 Linux MMC List <linux-mmc@vger.kernel.org>,
 LKML <linux-kernel@vger.kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Jaehoon Chung <jh80.chung@samsung.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Matthias Kaehlcke <mka@chromium.org>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Guenter Roeck <groeck@chromium.org>, Sonny Rao <sonnyrao@chromium.org>,
 Alim Akhtar <alim.akhtar@gmail.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi,

Missatge de Doug Anderson <dianders@chromium.org> del dia dt., 9 de
jul. 2019 a les 18:38:
>
> Hi,
>
> On Tue, Jul 9, 2019 at 2:07 AM Krzysztof Kozlowski <krzk@kernel.org> wrote:
> >
> > On Tue, 9 Jul 2019 at 00:48, Douglas Anderson <dianders@chromium.org> wrote:
> > >
> > > In commit 46d179525a1f ("mmc: dw_mmc: Wait for data transfer after
> > > response errors.") we fixed a tuning-induced hang that I saw when
> > > stress testing tuning on certain SD cards.  I won't re-hash that whole
> > > commit, but the summary is that as a normal part of tuning you need to
> > > deal with transfer errors and there were cases where these transfer
> > > errors was putting my system into a bad state causing all future
> > > transfers to fail.  That commit fixed handling of the transfer errors
> > > for me.
> > >
> > > In downstream Chrome OS my fix landed and had the same behavior for
> > > all SD/MMC commands.  However, it looks like when the commit landed
> > > upstream we limited it to only SD tuning commands.  Presumably this
> > > was to try to get around problems that Alim Akhtar reported on exynos
> > > [1].
> > >
> > > Unfortunately while stress testing reboots (and suspend/resume) on
> > > some rk3288-based Chromebooks I found the same problem on the eMMC on
> > > some of my Chromebooks (the ones with Hynix eMMC).  Since the eMMC
> > > tuning command is different (MMC_SEND_TUNING_BLOCK_HS200
> > > vs. MMC_SEND_TUNING_BLOCK) we were basically getting back into the
> > > same situation.
> > >
> > > I'm hoping that whatever problems exynos was having in the past are
> > > somehow magically fixed now and we can make the behavior the same for
> > > all commands.
> > >
> > > [1] https://lkml.kernel.org/r/CAGOxZ53WfNbaMe0_AM0qBqU47kAfgmPBVZC8K8Y-_J3mDMqW4A@mail.gmail.com
> > >
> > > Fixes: 46d179525a1f ("mmc: dw_mmc: Wait for data transfer after response errors.")
> > > Signed-off-by: Douglas Anderson <dianders@chromium.org>
> > > Cc: Marek Szyprowski <m.szyprowski@samsung.com>
> > > Cc: Alim Akhtar <alim.akhtar@gmail.com>
> > > Cc: Enric Balletbo i Serra <enric.balletbo@collabora.com>
> > > ---
> > > Marek (or anyone else using exynos): is it easy for you to test this
> > > and check if things are still broken when we land this patch?  If so,
> > > I guess we could have a quirk to have different behavior for just
> > > Rockchip SoCs but I'd rather avoid that if possible.
> > >
> > > NOTE: I'm not hoping totally in vain here.  It is possible that some
> > > of the CTO/DTO timers that landed could be the magic that would get
> > > exynos unstuck.
> >
> > I have eMMC module attached to Odroid U3 (Exynos4412,
> > samsung,exynos4412-dw-mshc). What is the testing procedure? With your
> > patch it boots fine:
> > [    3.698637] mmc_host mmc1: Bus speed (slot 0) = 50000000Hz (slot
> > req 52000000Hz, actual 50000000HZ div = 0)
> > [    3.703900] mmc1: new DDR MMC card at address 0001
> > [    3.728458] mmcblk1: mmc1:0001 008G92 7.28 GiB
>
> To really test it, it'd be nice to see some HS200 eMMC cards enumerate
> OK.  Specifically the patch adjusts the error handling and the place
> where that happens mostly is during tuning.
>
> I'll also try to find some time today to check a peach_pit or a
> peach_pi.  I think I saw one in the pile near my desk so if it isn't
> in too bad of a shape I can give mainline a shot on it.
>

I did a normal boot on peach_pi [1] and odroidxu3 [2] with that patch
applied, and the eMMC attached on both was detected as

 [    2.294798] mmc0: new HS400 MMC card at address 0001

I can do some stress tests tomorrow on those boards if that helps.

Cheers,
~ Enric

[1] https://storage.kernelci.org/chrome-platform/for-kernelci/ib-mfd-cros-v5.3-87-g0fe7e9d7d5a3/arm/multi_v7_defconfig/gcc-8/lab-collabora/boot-exynos5800-peach-pi.html
[2] https://storage.kernelci.org/chrome-platform/for-kernelci/ib-mfd-cros-v5.3-87-g0fe7e9d7d5a3/arm/multi_v7_defconfig/gcc-8/lab-collabora/boot-exynos5422-odroidxu3.html

> -Doug
>
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

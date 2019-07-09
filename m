Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1521463DB1
	for <lists+linux-rockchip@lfdr.de>; Wed, 10 Jul 2019 00:02:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ug6ORR01RYXoySCrQ4aI3xQ38lCwfns5OAqyIKgrbHc=; b=b5qZgfb09KaWLx
	bqyL4qCa7hzlSBgkrKPvUii/zXFm0gU2KUtgg4jD/mlJSzqK44cOP3E+YPp7/KWig5mcx/YKv+oda
	O52pl/AfOdEnsVTeuMGo7gYaTtpSS36p067xXw1ZnyPpW4Vd5VDGvu2oa5HXmsBlmFBg5aUtgpmdE
	MN7+RBZmKymi5n+GdDAxLDp9c0eAd5axsbyG004WXnmOnnFch8HujHAZCrHy14y+Ys1LlEaEe9ZAb
	R8cDbLbeMbs5LA+ZetkEisuoO80Ew4oAg7SzKgr0iyLaOw/k2fXCoSZbA2/WddcykjWFv9rn2aSOt
	5QiQ29UGpFpa//gWOcfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkyC3-0005DJ-87; Tue, 09 Jul 2019 22:02:35 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkyBy-0005CJ-S6
 for linux-rockchip@lists.infradead.org; Tue, 09 Jul 2019 22:02:32 +0000
Received: by mail-io1-xd44.google.com with SMTP id g20so249458ioc.12
 for <linux-rockchip@lists.infradead.org>; Tue, 09 Jul 2019 15:02:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=sE4NKAsAUCBrOoJJlQGFGONnI25LZ8VJyW5bZdMAldA=;
 b=csEtg0QR+7h5Gms4ZYWjqF1SrCZe0wKysQfyLsB5y2lFOJxjevCLZfeRa9DK5bpmpD
 siDpAUzlzE7pPEuUM9r1j2bufy9VDkW5gxslxUPS4Rr+7buWtm59AWt9VzJD4SA6ehz3
 ZcNR1AM/nPga438L7EN2nlmhgUyNIts8v+NYk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=sE4NKAsAUCBrOoJJlQGFGONnI25LZ8VJyW5bZdMAldA=;
 b=pDUOTTc4GK4ImaUJqbl80G8X7rfM/JmXpQtWcHrqXA96lsc43r775UnqdDDFELVTpb
 OP6MaBGmBG1siou60EWuJaDWGpDTX/q7vVXYlPEJIOUwgp+n5Qmq8f0C6n4/jRQL5NEr
 tIC3cDHkemNACaJZd+CkydHBCv9n6nqv+3GHDLHY/KqEHJGF1yZMVnZLf4w/2xSO0DHZ
 kY9ULbNQZ8sBAOM/zSkjH239UD0WvvcoHaBRys9Oi7LJvh9VzslJ0vlAWD0ATuqyFfru
 4YDWmhSKyK99c36X6PCGOVMhshZz2fDbeUIQJCDTX12lbr/ohWPcKHfMi0UhPR3/F/8v
 nJnw==
X-Gm-Message-State: APjAAAXNTFY8dCLs/rWOxcWrufvjGbEdownQmxBa7YzNQ5B3wCJZnMcM
 IKRtLtee80dhRP8DzVFn5QdbSNS6Qxg=
X-Google-Smtp-Source: APXvYqzc2mo+jTZuuPN9dUIwtmKEgPs3hILe7LmGhSPDJcRttsxa3gvUJYO8xKbW6HJYU/JYGT+wfg==
X-Received: by 2002:a5d:8890:: with SMTP id d16mr24900757ioo.274.1562709746103; 
 Tue, 09 Jul 2019 15:02:26 -0700 (PDT)
Received: from mail-io1-f47.google.com (mail-io1-f47.google.com.
 [209.85.166.47])
 by smtp.gmail.com with ESMTPSA id b14sm61391iod.33.2019.07.09.15.02.25
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Tue, 09 Jul 2019 15:02:25 -0700 (PDT)
Received: by mail-io1-f47.google.com with SMTP id h6so302885iom.7
 for <linux-rockchip@lists.infradead.org>; Tue, 09 Jul 2019 15:02:25 -0700 (PDT)
X-Received: by 2002:a5e:8f08:: with SMTP id c8mr2673410iok.52.1562709744643;
 Tue, 09 Jul 2019 15:02:24 -0700 (PDT)
MIME-Version: 1.0
References: <20190708195613.205729-1-dianders@chromium.org>
 <CAJKOXPf9OTPaheUdiZtaDGU0sE2vsdRiLx5nptMt_EVKU7GObA@mail.gmail.com>
 <CAD=FV=WquwqKjUKh5=M6tbTrD3svVTGWLU3iSTzD-uXBX73YWA@mail.gmail.com>
In-Reply-To: <CAD=FV=WquwqKjUKh5=M6tbTrD3svVTGWLU3iSTzD-uXBX73YWA@mail.gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Tue, 9 Jul 2019 15:02:13 -0700
X-Gmail-Original-Message-ID: <CAD=FV=X=RALazfX+vjQ7E-JmVu6xqDWCad5hPF+gNtHCuvZMTA@mail.gmail.com>
Message-ID: <CAD=FV=X=RALazfX+vjQ7E-JmVu6xqDWCad5hPF+gNtHCuvZMTA@mail.gmail.com>
Subject: Re: [PATCH] mmc: dw_mmc: Fix occasional hang after tuning on eMMC
To: Krzysztof Kozlowski <krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_150230_940530_CD594C12 
X-CRM114-Status: GOOD (  28.27  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On Tue, Jul 9, 2019 at 9:38 AM Doug Anderson <dianders@chromium.org> wrote:
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

OK, I managed to get an exynos5800-peach-pi up and running.  I put my
patch in place and am currently at 45 reboots and counting w/ no
problems.

NOTE: in my case I actually had to disable "hs400" mode on my peach-pi
but that's because the board I dug up was an early version of the
board that didn't have the strobe line connected.  However, Alim's
earlier reports of problems were with hs200 anyway and hs200 still
executes the tuning plenty of times.  His reports of problems also
said that he had problems after just a few boots.

So I'll assert that whatever problems were present 4 years ago have
indeed gone away.  I'll leave rebooting happening overnight just in
case, but otherwise I'll assert that this is fine.


-Doug

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

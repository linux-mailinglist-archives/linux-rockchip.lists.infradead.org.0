Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5887121F37
	for <lists+linux-rockchip@lfdr.de>; Tue, 17 Dec 2019 01:08:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UbZMqfzeM+LONSdjz69GkfGrk1k5LGyW9cmC2Jo9MQs=; b=ViDfbh5VU2AKNS
	PtGirx0EslFHfbQue0P7b0ntjdvuydEo8SYMvd8cSQFoXMTEYQtC7eQh55wSTJEGpaYyOF+EfdUaH
	f0GuroAOXA9h8qtTM5SAPVH5f/xJkF/lUbQZTwHcxQHdcP7JrrtBqSG2FAlG5YpSDZfr/Jd26igzu
	7tFnRf5kCukg4XUr9mLrBwOG+fA7eVQ8H21YZhvvqn0kEczeio7hLWbv2Be5shkcrDOTiGB1toUhY
	LG9fyRBELX8CFXQHds/w3a/a81/QWKuXyHDPT2QvnSfhBU9vfQjAYuGtmL7eiQMiBUzjddI6RG2Zd
	tOrc+HXwi+er4O0Z0tGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ih0Pw-0005Pi-Hr; Tue, 17 Dec 2019 00:08:48 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ih0Pt-0005PK-0R
 for linux-rockchip@lists.infradead.org; Tue, 17 Dec 2019 00:08:46 +0000
Received: by mail-io1-xd43.google.com with SMTP id k24so7371270ioc.4
 for <linux-rockchip@lists.infradead.org>; Mon, 16 Dec 2019 16:08:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=dwZ3AcnTBQ28nJN51stCAhZ95AFZOrQo6pEdFmYHvWk=;
 b=oYq4HNUKFOf9/7j0uKcIs7SryzuQ8y4simLaoxDczAwBenaH6YErxmMyLAq0bK3XCD
 PMW9ODSGe9K7iaJ8ie+n4HMBwyhn+FyaA6OzLVUNmAmvRTdg++fa8VrMy5VZXzMuP8jR
 Zdauzy0aLchy5kDrwsTWI7/ZflWrfFYv323zILAke+/u4ocJY1L+uIgkNDkTNKXgN6zI
 qGzPZFyA32JpQ9Uij+ACa31wph2uNKhrjvaTstG8TrBfELFXv2fxOGLiMyHAFSYmo61n
 5zZ0IZqBXOqavvC1WWUoZYA3Isn7ydoQ8Q4+Yov/YzG/xWtJRL7WJUC60wQh0/WJ9402
 X7OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dwZ3AcnTBQ28nJN51stCAhZ95AFZOrQo6pEdFmYHvWk=;
 b=QUHFE+pzOPUk6aH18ZqYcRK1EO9Svj+M3WgO0/n062zAhl9RjAV4Iw4phh2gKo2L55
 KC7yrXyS7aC4HE3QQTOi5SoJH/jAK8CJMtDdsqrwRlJhFnm407VU/HHNHV7RPrK75BEY
 ZhfpZ10bswn3lfnIsXT1V7EDjFv0qk1WpF43MhDfVRvfVSvJFOJ69/ss0zVXsu+pEKtv
 kIddeHIhKnyNLU44VBsyuQgdX3OykH+6bKgrUCiKQ7+RUFkzi5IyjrEC9v6jlulr9t5Q
 BL438mtarSV9BGajumLKxAL3NLoXM+ZOMf6yInes0sPE7QkD+Fkcowz4CfPCKTr3uyvY
 Oc0g==
X-Gm-Message-State: APjAAAVzo02bX6N25EyThiNXt9268uTcz8UY4JKXaHmbAS37gZXzPlp4
 d6ky9bgvBoKTQGivC51GmzGJ7ZDmYeGn0g6i0kM=
X-Google-Smtp-Source: APXvYqz/NhneasvOmRKmNOgigyn1brjYBnpS85lUIlHqZWs1givSMqQNUWoo0IUhJYhpTbnvXrnLkRhVW0BLQ2Uxsyw=
X-Received: by 2002:a02:3089:: with SMTP id q131mr7916853jaq.30.1576541323436; 
 Mon, 16 Dec 2019 16:08:43 -0800 (PST)
MIME-Version: 1.0
References: <cover.1575932654.git.robin.murphy@arm.com>
 <20191216111219.GB2369@dell>
 <3c78d334-9110-e88c-84d0-2f41c28a6317@web.de>
In-Reply-To: <3c78d334-9110-e88c-84d0-2f41c28a6317@web.de>
From: Anand Moon <linux.amoon@gmail.com>
Date: Tue, 17 Dec 2019 05:38:31 +0530
Message-ID: <CANAwSgSfA9pMQxmvkAfDfH_wsBovc9hCivoo_YU1+ZMOD0OuYg@mail.gmail.com>
Subject: Re: [PATCH 0/4] mfd: RK8xx tidyup
To: Soeren Moch <smoch@web.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_160845_081244_A2057DED 
X-CRM114-Status: GOOD (  24.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (linux.amoon[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Daniel Schultz <d.schultz@phytec.de>, Heiko Stuebner <heiko@sntech.de>,
 Lee Jones <lee.jones@linaro.org>, Linux Kernel <linux-kernel@vger.kernel.org>,
 linux-rockchip@lists.infradead.org, Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi All,

On Tue, 17 Dec 2019 at 05:00, Soeren Moch <smoch@web.de> wrote:
>
> On 16.12.19 12:12, Lee Jones wrote:
> > On Tue, 10 Dec 2019, Robin Murphy wrote:
> >
> >> Hi all,
> >>
> >> In trying to debug suspend issues on my RK3328 box, I was looking at
> >> how the RK8xx driver handles the RK805 sleep pin, and frankly the whole
> >> driver seemed untidy enough to warrant some cleanup and minor fixes
> >> before going any further. I've based the series on top of Soeren's
> >> "mfd: rk808: Always use poweroff when requested" patch[1].
> >>
> >> Note that I've only had time to build-test these patches so far, but I
> >> wanted to share them early for the sake of discussion in response to
> >> the other thread[2].
> >>
> >> Robin.
> >>
> >> [1] https://patchwork.kernel.org/patch/11279249/
> >> [2] https://patchwork.kernel.org/cover/11276945/
> >>
> >> Robin Murphy (4):
> >>   mfd: rk808: Set global instance unconditionally
> >>   mfd: rk808: Always register syscore ops
> >>   mfd: rk808: Reduce shutdown duplication
> >>   mfd: rk808: Convert RK805 to syscore/PM ops
> >>
> >>  drivers/mfd/rk808.c       | 122 ++++++++++++++++----------------------
> >>  include/linux/mfd/rk808.h |   2 -
> >>  2 files changed, 50 insertions(+), 74 deletions(-)
> > Not sure what's happening with these (competing?) patch-sets.  I'm not
> > planning on getting involved until you guys have arrived at and agreed
> > upon a single solution.
> >
> My understanding is like this:
>
> The patch [1] fixes power-off to use the method requested in the
> devicetree. This patch series on top of that cleans up the rk808
> power-off code, which perfectly makes sense for me. I think these 2
> patch series are not controversial as such.
>
> And then we have the series [2], which is a mix of
> - some clean-up
> - converting the existing code to use syscon_shutdown for actual power-off
>
> Robin, Heiko, and myself agree that the shutdown method introduced in
> [2] is fundamentally wrong. All syscon_shutdown methods of all
> registered syscons have to run before the actual shutdown, what is
> triggered in pm_power_off. This is how it works now, and what is the
> right way to do it. Patch series [2] breaks this promise since it does
> the actual shutdown in the middle of the chain of syscon_shutdown handlers.
>
> In the discussion about series [2] Anand repeatedly talks about restart
> problems. But this rk808 mfd driver is not involved in restart, also
> patch series [2]
> does not change that. So I cannot see what should be the point here.
>
Sorry I dont have any expert knowledge on this, so continue on best approach..

> There was an earlier attempt [3] to enhance this rk808 mfd driver for
> restart. I'm not sure, however, what happened to this. For me it could
> make sense to reimplement such restart functionality on top of this
> "mfd: RK8xx tidyup" series.
>
> Regards,
> Soeren
>
> [3] https://lore.kernel.org/patchwork/patch/934323/
>
>

-Anand

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8500D11DD30
	for <lists+linux-rockchip@lfdr.de>; Fri, 13 Dec 2019 05:40:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hwnzUlBctDo1m+utKcchoT99fzcyLVH/qWs6q8/oTA0=; b=YBw7ouwV51e2oe
	RckZSIxWxp0NnoVMaxFZ+vks/PrSI5kTuRucZ3faKqSSMXY0mpC0gYwSfnitRfZnH8tz5z1LV63cK
	4WzOIRkPJf/3WKosU1D0W+A7rKklWUUSTSeIxhL5ksOwms0ve2OM0hMaU0hjevANLQdBf5XDbQonH
	+aHpKVYyRwOTVJ15D481m924WwOAdBFwKfAzOiW1ocA5r8UzszsJcz64ihP8J1Xrks37A/404Qy18
	mOI7t8vO0THwCmNdwo/pmXIUAvv+164dv8/jQhv3yHCnM0T2tb9hoWzkBi45HbxZBzBqsR7LEIxWY
	M/RDCqpsjE7s64DEbNDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifckI-0005eW-QC; Fri, 13 Dec 2019 04:40:06 +0000
Received: from mail-vs1-xe42.google.com ([2607:f8b0:4864:20::e42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifckE-00056y-0r
 for linux-rockchip@lists.infradead.org; Fri, 13 Dec 2019 04:40:03 +0000
Received: by mail-vs1-xe42.google.com with SMTP id b79so682927vsd.9
 for <linux-rockchip@lists.infradead.org>; Thu, 12 Dec 2019 20:40:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=verdurent-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=CxeVqN7WWZohGfBayl/KWuS+nYYVkIE8W26755ehKCA=;
 b=Xd8DQt15TEBmxWpqEeFCaZoe21s55+mSfnHvGFbeg9bLiJ4j2h7SwH/XTEnp71SZ73
 ZycLWokcoyu6sa1FpY+Cp/3bpEv6zhBoxym148EovHuBbxuNKgMQ3HWQ4/pGAW/uLys1
 EjlFXNvx268C+i6hj8eUxzu6EhiaZpm2FXPGeQisLNs1x9n9fA+S4tIy/K9NHr8HqDul
 i+xP23j6KawDG6n3PHOzmU5XCvlvLmK+bI73YmqPxIqiqX2mHYKcgr5vWMpd4/8+P5kD
 QBDviVVz2Bm3DBv/4SWXC7IX0nsU58spJx/zGps/ni5b++qgOVZ8QyJDKph5jCvl/hXk
 VqiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=CxeVqN7WWZohGfBayl/KWuS+nYYVkIE8W26755ehKCA=;
 b=aUzkENHhHBWIWq4c1FHkPRTpiuOgm4XdlSx+SxfE4y/Bu6Vk09Pf+wACHg58XACOD8
 k04ix1EHy6LrmVvV7J/kWt8OS3trfncjC1UwSrXmf6OxtVGxMTlr6071SR5o9b7uEzzO
 GvMcVfFBCFEmDlZNaZMn88dXDSGGGfms0GLt4qfaLfQPho8VoZtv0iLod0DUPcht+9J2
 gNJEDTK0HTpac5VdAd8W2ikVwyxm1rdBdGtQfS25b+Y6xY9Ysbcnn/ySlkWaCfvZZonz
 XPf0EyX4hQXHYg0kMpCpzXhi6rbQXv3y3mv0F+mR+hv6PtWil+M1i0yKvEVVxL+nICKu
 +HEg==
X-Gm-Message-State: APjAAAWyji3sgWjBEVK27ybfordnT9Rul+h9BKApwuraIvNVp5cMGyMp
 gDTdC9e5724jl+WGdOt+VqobjuUTn7Xxkfo7O/swPA==
X-Google-Smtp-Source: APXvYqxUYboYxgAx3u/cwl+SWhpsV25Tto1uX65RitUNLoAbztqqRzfRir+y4ljY/5uoG9B0ULKQhDBoKIKecfbYkX0=
X-Received: by 2002:a67:fb41:: with SMTP id e1mr9415848vsr.159.1576212000836; 
 Thu, 12 Dec 2019 20:40:00 -0800 (PST)
MIME-Version: 1.0
References: <20191212061702.BFE2D6E85603@corona.crabdance.com>
 <CAHLCerOHjAEEA1BpUqPdZvFwHMy11SqC+ZtjdFyManu7iOpBXA@mail.gmail.com>
 <20191212232859.E09FC6E85603@corona.crabdance.com>
 <CAHLCerN9jc94ydKKoaDZPoTy=LmVZti6UUpND5aK3FMzTkCmoA@mail.gmail.com>
In-Reply-To: <CAHLCerN9jc94ydKKoaDZPoTy=LmVZti6UUpND5aK3FMzTkCmoA@mail.gmail.com>
From: Amit Kucheria <amit.kucheria@verdurent.com>
Date: Fri, 13 Dec 2019 10:09:49 +0530
Message-ID: <CAHLCerMf1nbuxjZz81QnE6jXeQ5UvB=R18SDu69cE9Q6rQp8+w@mail.gmail.com>
Subject: Re: [RESEND PATCH] thermal: rockchip: enable hwmon
To: schaecsn@gmx.net, jdelvare@suse.com, linux@roeck-us.net
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_204002_072995_2D478107 
X-CRM114-Status: GOOD (  15.17  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Heiko Stuebner <heiko@sntech.de>, Linux PM list <linux-pm@vger.kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 LKML <linux-kernel@vger.kernel.org>, Eduardo Valentin <edubezval@gmail.com>,
 linux-rockchip@lists.infradead.org, Zhang Rui <rui.zhang@intel.com>,
 lakml <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Fix Guenter's email.

On Fri, Dec 13, 2019 at 10:08 AM Amit Kucheria
<amit.kucheria@verdurent.com> wrote:
>
> Hi Stefan,
>
> On Fri, Dec 13, 2019 at 4:59 AM Stefan Schaeckeler <schaecsn@gmx.net> wrote:
> >
> > Hello Amit,
> >
> > > On Thu, Dec 12, 2019 at 11:47 AM Stefan Schaeckeler <schaecsn@gmx.net> wrote:
> > > >
> > > > By default, of-based thermal drivers do not enable hwmon.
> > > > Explicitly enable hwmon for both, the soc and gpu temperature
> > > > sensor.
> > >
> > > Is there any reason you need to expose this in hwmon?
> >
> > Why hwmon:
> >
> > The soc embedds temperature sensors and hwmon is the standard way to expose
> > sensors.
>
> Let me rephrase - is there something in the hwmon subsystem that is
> needed that isn't provided by the thermal subsystem inside
> /sys/class/thermal?
>
> > Sensors exposed by hwmon are automagically found by userland clients. Users
> > want to run sensors(1) and expect them to show up.
> >
>
> That is a good point. In which case, I wonder if we should just fix
> this in of-thermal.c instead of requiring individual drivers to do
> write boilerplate code. I'm thinking of a flag that the driver could
> set to enable the thermal_hwmon interface for of-thermal drivers.
>
> > Why in rockchip_thermal.c:
> >
> > drivers/thermal/ provides a high-level hwmon api in thermal_hwmon.[hc] which is
> > used by at least these thermal drivers: rcar_gen3_thermal.c, rcar_thermal.c,
> > st/stm_thermal.c, and broadcom/bcm2835_thermal.c. I want to hook up
> > rockchip_thermal.c exactly the same way.
> >
> > Apparently, other architectures hook up the cpu temperature sensors to hwmon
> > elsewhere. Most seem to do this in hwmon/, e.g. hwmon/coretemp.c. These drivers
> > are written from scratch. Utilizing thermal_hwmon.[ch] for chips which have
> > already drivers in drivers/thermal/ seems to be more elegant.
> >
> >  Stefan

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

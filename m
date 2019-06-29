Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B02B5ABAB
	for <lists+linux-rockchip@lfdr.de>; Sat, 29 Jun 2019 16:10:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tYrz0Maydb1+5/tD7wDblq7IQp1D2lzHiaBKJx1VD60=; b=VGgG2HZUTkNEF9
	eqNZPL7HnB5yCRI05XuTqLwIvxCrcgY61E6mCQo8uUZuOr7jYQuGJ0re3CcQpuvr5ylgCmJBoeaCI
	EispQ9XeYuhKr/ftirWOntNZLuaROh64nSZCXA1Inwm89wc5I7dS1+/nNZtolZhVHGkQFgzsi6pqZ
	4+oegKX5vqHE7IJrytBrf0aj3qJl4RFK+m47+dt7X0TdTEJrd/XVDhjN0txOfuvEx1TeNSiJFOxcF
	qXZTUuQraLWA/AJT0/SNYu+FIrs+IUblaiJN88Wxtc7awNgU5mezOpuPWQuNg6MdsDRfroj5op6Fl
	bJY36KsSzELWrs1YhZ1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhE36-0001iZ-Ra; Sat, 29 Jun 2019 14:09:52 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhE33-0001hW-05; Sat, 29 Jun 2019 14:09:50 +0000
Received: from ip5f5a6320.dynamic.kabel-deutschland.de ([95.90.99.32]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hhE2n-00029i-Fh; Sat, 29 Jun 2019 16:09:33 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Sam Ravnborg <sam@ravnborg.org>
Subject: Re: [PATCH v5 0/7] drm/panel: simple: Add mode support to devicetree
Date: Sat, 29 Jun 2019 16:09:32 +0200
Message-ID: <2169143.hEFa8b2HQR@diego>
In-Reply-To: <20190628171342.GA2238@ravnborg.org>
References: <20190401171724.215780-1-dianders@chromium.org>
 <CAD=FV=Vi2C7s2oWBDD0n+HK=_SuBYhRM9saMK-y6Qa0+k-g17w@mail.gmail.com>
 <20190628171342.GA2238@ravnborg.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190629_070949_190260_1E215212 
X-CRM114-Status: GOOD (  16.21  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Brian Norris <briannorris@chromium.org>, David Airlie <airlied@linux.ie>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Doug Anderson <dianders@chromium.org>, Rob Herring <robh+dt@kernel.org>,
 LKML <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Thierry Reding <thierry.reding@gmail.com>, Sean Paul <seanpaul@chromium.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Enric =?ISO-8859-1?Q?Balletb=F2?= <enric.balletbo@collabora.com>,
 Klaus Goger <klaus.goger@theobroma-systems.com>,
 Ezequiel Garcia <ezequiel@collabora.com>, Matthias Kaehlcke <mka@chromium.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Sam,

Am Freitag, 28. Juni 2019, 19:13:42 CEST schrieb Sam Ravnborg:
> Hi Doug.
> 
> > Sam: Oh!  I hadn't noticed that you've been added as a panel
> > maintainer in commit ef0db94f94a0 ("MAINTAINERS: Add Sam as reviewer
> > for drm/panel").  Does that mean you are able to provide some advice
> > for how to land this series?
> Reviewer only, not maintainer....
> 
> It is on my TODO list for the weekend to go through the patch set in
> details and provide feedback. I have read them before, but I miss to do
> a more detailed read through.
> 
> But I cannot apply this unless Thierry or one of the DRM maintainers
> ack it.
> We simply need someone with a better general knowledge of DRM to ack it
> than I have.

So Thierry was able to look at the patches yesterday it seems and has Acked
all the relevant ones. As a drm-misc-contributor I could also apply them
myself, but now don't want to preempt any additional comments you might
have ;-) . So I guess my question would be if you still want to do a review
or if I should apply them.


In any case, I'd like to take the actual dts patches (patches 3+6+7 if
I'm not mistaken) through my tree up to arm-soc after the fact, to
prevent conflicts.

Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

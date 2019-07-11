Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32BD86600E
	for <lists+linux-rockchip@lfdr.de>; Thu, 11 Jul 2019 21:39:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WjVThYux37hmFl2WhbnMCg6fd5GMYS9lH3kOQG9y8Iw=; b=OYAaskcoJJafiH
	e3CsY3CAfK1aXlvk2ZpzvJJInTTbcsjgZaaCLUPlAzioiez1QOZHuAWp9sBRuH6glZewT7q2qO3VA
	Tlku392PyVBivFQhH0KGWeX+Wd+WtDohIkv0G8XVSUG+2soEGkdnVaCxNRBCNBzLvRcaYL3iFvedc
	ulnqznn+El2Zf0PC1np4hNGeW2pPyz2BLm+WPr6r/uar5QMSsVdVVQmcPoMGPGSBT34k2SwfVkHcN
	5PTZDPb/5gHankr3tLbdztSBzBU3nWKNcX4DYDBQxg55ECa1nDQRMDGnGEUzHUCPNcK6TuMW9Glts
	Ocnt0cljL/QKXRExe/fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hleuF-0002nh-Aa; Thu, 11 Jul 2019 19:39:03 +0000
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hleuB-0002nE-Hq
 for linux-rockchip@lists.infradead.org; Thu, 11 Jul 2019 19:39:00 +0000
Received: from ravnborg.org (unknown [158.248.194.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk4.altibox.net (Postfix) with ESMTPS id DC24D803F1;
 Thu, 11 Jul 2019 21:38:56 +0200 (CEST)
Date: Thu, 11 Jul 2019 21:38:55 +0200
From: Sam Ravnborg <sam@ravnborg.org>
To: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH v5 2/7] drm/panel: simple: Add ability to override
 typical timing
Message-ID: <20190711193855.GB5912@ravnborg.org>
References: <20190401171724.215780-1-dianders@chromium.org>
 <20190401171724.215780-3-dianders@chromium.org>
 <20190630202246.GB15102@ravnborg.org>
 <CAD=FV=V_wTD1xpkXRe-z2HsZ8QXKq7jmq8CsfhMnFxi-5XDJjw@mail.gmail.com>
 <20190708175007.GA3511@ravnborg.org>
 <CAD=FV=XnDTKkscdCwFE1137aX6pTtv=5zqXf=yqcnchpZpt5_Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAD=FV=XnDTKkscdCwFE1137aX6pTtv=5zqXf=yqcnchpZpt5_Q@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=VcLZwmh9 c=1 sm=1 tr=0
 a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
 a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=kj9zAlcOel0A:10
 a=Xl9dLsEvoqQTC_bOKBsA:9 a=CjuIK1q_8ugA:10
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_123859_767219_37BFB8B8 
X-CRM114-Status: GOOD (  15.27  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [109.247.116.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>, Jeffy Chen <jeffy.chen@rock-chips.com>,
 LKML <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Thierry Reding <thierry.reding@gmail.com>, Sean Paul <seanpaul@chromium.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Enric =?iso-8859-1?Q?Balletb=F2?= <enric.balletbo@collabora.com>,
 =?iso-8859-1?Q?St=E9phane?= Marchesin <marcheu@chromium.org>,
 Ezequiel Garcia <ezequiel@collabora.com>, Matthias Kaehlcke <mka@chromium.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Doug.

> > > > > @@ -91,6 +92,8 @@ struct panel_simple {
> > > > >       struct i2c_adapter *ddc;
> > > > >
> > > > >       struct gpio_desc *enable_gpio;
> > > > > +
> > > > > +     struct drm_display_mode override_mode;
> > > > I fail to see where this poiter is assigned.
> > >
> > > In panel_simple_parse_override_mode().  Specifically:
> > >
> > > drm_display_mode_from_videomode(&vm, &panel->override_mode);
> >
> > The above code-snippet is only called in the panel has specified display
> > timings using display_timings - it is not called when display_mode is
> > used.
> > So override_mode is only assigned in some cases and not all cases.
> > This needs to be fixed so we do not reference override_mode unless
> > it is set.
> 
> I'm afraid I'm not following you here.

> 
> * override_mode is a structure that's directly part of "struct panel_simple".
I had somehow confused myself to think this was a pointer.
And you are right that override_mode is properly initialized when the
structure is allocated.

Sorry for not reading the code and your replies carefully enough.

	Sam

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

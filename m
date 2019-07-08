Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79224627C7
	for <lists+linux-rockchip@lfdr.de>; Mon,  8 Jul 2019 19:56:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UZ3k9m1E0UxKwXoNJAu/FFxB1+vvj4IiReIS5Se3ncU=; b=FZus7OGW39rPND
	lP6OhmlWSTe6QJAztGOH+YBEbxzsjGWSL5MZ9DNv9SK74aRbXh47hlxtMN9zy+UWwEbIszHyDcnlF
	qVAydf1cEdgrbbX1YwT9xA5Q065vjnWDnUmiSw3J/GqYto2h7ZtKXydbke/VT9QQSigJIIE0jys8/
	AHrQXsKgjMP7mPSWGK9+9K+UjQWxnJgRdAPrac25CbvKK55Z571JunNcTAou98hXkmuUA/8Zro3k1
	cUJ39E1whYdDbxLQIYnzh8XXJoF32Q7kVya//ruMXHWjhUZ/EiWL0/z1oR9xeIVEdBRnQvUVI3Eb3
	J3+vU6codJ6BzfHt+xyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkXs6-0005DG-GB; Mon, 08 Jul 2019 17:56:14 +0000
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkXs2-0005Cf-3K
 for linux-rockchip@lists.infradead.org; Mon, 08 Jul 2019 17:56:11 +0000
Received: from ravnborg.org (unknown [158.248.194.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk4.altibox.net (Postfix) with ESMTPS id B2E35803AA;
 Mon,  8 Jul 2019 19:56:07 +0200 (CEST)
Date: Mon, 8 Jul 2019 19:56:06 +0200
From: Sam Ravnborg <sam@ravnborg.org>
To: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH v5 2/7] drm/panel: simple: Add ability to override
 typical timing
Message-ID: <20190708175606.GB3511@ravnborg.org>
References: <20190401171724.215780-1-dianders@chromium.org>
 <20190401171724.215780-3-dianders@chromium.org>
 <20190630202246.GB15102@ravnborg.org>
 <20190630205514.GA17046@ravnborg.org>
 <CAD=FV=WH4kmhQA0kbKcAUx=oOeqTZiQOFCXYpVWwq+mG7Y7ofA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAD=FV=WH4kmhQA0kbKcAUx=oOeqTZiQOFCXYpVWwq+mG7Y7ofA@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=VcLZwmh9 c=1 sm=1 tr=0
 a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
 a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=kj9zAlcOel0A:10 a=7gkXJVJtAAAA:8
 a=LBenJKLw8faiQqQJsPgA:9 a=IF-Cv_vKzCxN9PTp:21 a=nRygc59OdNG9nXZ-:21
 a=CjuIK1q_8ugA:10 a=E9Po1WZjFZOl8hwRPBS3:22
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_105610_504408_4AF87806 
X-CRM114-Status: GOOD (  24.71  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [109.247.116.15 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org,
 =?iso-8859-1?Q?St=E9phane?= Marchesin <marcheu@chromium.org>,
 David Airlie <airlied@linux.ie>, Jeffy Chen <jeffy.chen@rock-chips.com>,
 LKML <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>, Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Enric =?iso-8859-1?Q?Balletb=F2?= <enric.balletbo@collabora.com>,
 Sean Paul <seanpaul@chromium.org>, Ezequiel Garcia <ezequiel@collabora.com>,
 Matthias Kaehlcke <mka@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Mon, Jul 01, 2019 at 09:39:06AM -0700, Doug Anderson wrote:
> Hi,
> 
> On Sun, Jun 30, 2019 at 1:55 PM Sam Ravnborg <sam@ravnborg.org> wrote:
> >
> > Hi Douglas.
> >
> > > > +
> > > > +   /* Only add timings if override was not there or failed to validate */
> > > > +   if (num == 0 && panel->desc->num_timings)
> > > > +           num = panel_simple_get_timings_modes(panel);
> > > > +
> > > > +   /*
> > > > +    * Only add fixed modes if timings/override added no mode.
> > >
> > > This part I fail to understand.
> > > If we have a panel where we in panel-simple have specified the timings,
> > > and done so using display_timing so with proper {min, typ, max} then it
> > > should be perfectly legal to specify a more precise variant in the DT
> > > file.
> > > Or what did I miss here?
> >
> > Got it now.
> > If display_mode is used for timings this is what you call "fixed mode".
> > Hmm, if I got confused someone else may also be confused by this naming.
> 
> The name "fixed mode" comes from the old code, though I guess in the
> old code it used to refer to a mode that came from either the
> display_timing or the display_mode.
> 
> How about if I call it "panel_simple_get_from_fixed_display_mode"?
> ...or if you have another suggestion feel free to chime in.
What we really want to distingush here is the use of display_mode
and display_timings (if I got the names right).
That display_mode specify a fixed timing and display_timing specify
a valid range is something in the semantics of the two types.
So naming that refer to display_mode versus display_timing will make the
code simpler to understand. and then a nice comment that when
display_mode
is used one looses the possibility to use override_mode.
That would be fine to have in the struct in the driver.

> NOTE: Since this feedback is minor and this patch has been outstanding
> for a while (and is blocking other work), I am assuming that the best
> path forward is for Heiko to land this patch with Thierry's Ack and
> I'll send a follow-up.  Please yell if you disagree.
Let's give the patches a spin more as we have passed the possibility for
the current merge window.

I am on vacation at the moment and thus slow in responses, but will be back
at the home office next week and will be more responsive again.

	Sam - who is enjoying the alps in Austria

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

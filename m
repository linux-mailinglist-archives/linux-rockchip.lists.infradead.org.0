Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12A1565FEC
	for <lists+linux-rockchip@lfdr.de>; Thu, 11 Jul 2019 21:17:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4BIyeaCVupFRIaTykc7ahWpo/EMzZcVPyMfA5YK8ifc=; b=GPm1dzTLw7+ESP
	ASSjlx6VEU6romtfJTgTvFqQJk8ZvdK6vwjFtFNYUwgVQE6wt/e5DcmBmkNLa5KZHK4gkAfbqARB9
	u5Js5+8FUZAZJrM0stqJBQxZJ6TDTTC5lXp+engbygoTAOGXy/ltXjlPGhUKLC9WyL3GDSiJtIyEf
	6bPReNxHh3ABcG/OZLeURS/4jHzKN3iyuy/5lHo5ezqsQz3p6rRroIS5Aj2AOHDFzpoOnrbv8OTR+
	pObCzHeY36SuSQpekWhoAGf3uqkI0lItz33Q2QIklHlor8SRyt6Usq68vJAn3EKxYcImIqpzTW1im
	6mgQO9NaIA5p2Ggrye7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hleZ8-0003hE-7m; Thu, 11 Jul 2019 19:17:14 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hleZ1-0003gJ-Fk
 for linux-rockchip@lists.infradead.org; Thu, 11 Jul 2019 19:17:09 +0000
Received: by mail-ot1-x344.google.com with SMTP id j19so7017648otq.2
 for <linux-rockchip@lists.infradead.org>; Thu, 11 Jul 2019 12:17:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=eUSi3tY9WQJoS1EY1aQXpWympsTqMdn0wVqqZqVdQVk=;
 b=camATY/NzLRiATqzHBSW98RoE1F6AG2h2nePD+8Gk0Wz6ld60tDwdfxnWllAlmsPC7
 gJvgepZ+57xnsETY8vt58D4GWCUEFDBocuGs4tVA5m/lyEVEiVpjJJ5HTFryb0qLF467
 hp15q3BDSM1b8agHxbKLbt1CgRB79eLzxHwwQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=eUSi3tY9WQJoS1EY1aQXpWympsTqMdn0wVqqZqVdQVk=;
 b=BF6NnA6pERleaZp36lBC24ZRuUDwPmRzOoDW83d5FcATDKvJ3/3r9OKdbbgjnLouj0
 PGeLPKYndpjyre0A/zQduWbveQTzL2+KSxmsVAkCNT+PsXsXJ6iE+QiGiS7ZqrQhcC9y
 He22KgSWQgVC9fKxYRI3z62hKVjaDoQ1lJsCQZWJoXDmHUjjUwiUw4yRHifqlsp+SGr+
 q1HciAJFY8inSdys+KoKaIG+vU3ZPXqw5caE3btA/MsvRQdiUqDiVun+QwG59m2h5va+
 O6TX7haOXWx7KjDEMeakfkBgBl3u8G27dnymGlVgqUEC507UHMhODI9hH4uzcD5gzUIT
 51mA==
X-Gm-Message-State: APjAAAWZgFGKWKEDSvO3vldM0jml+UDqPRCPATjoOCU+Rdn2fuzwBcB4
 xxh4FWVDLNiVb7gQjJaoHhIZmcM1/ZdXoKqJVe0mxQ==
X-Google-Smtp-Source: APXvYqyT3azAYT1KYEzwCu0KzckgoxzeydeLtzUfvllYHq5t/nPXgLIPQhVx2K9uef+PQK+83q8EDA+oX8va/BDSf+w=
X-Received: by 2002:a9d:27c3:: with SMTP id c61mr4626820otb.291.1562872621393; 
 Thu, 11 Jul 2019 12:17:01 -0700 (PDT)
MIME-Version: 1.0
References: <20190401171724.215780-1-dianders@chromium.org>
 <20190401171724.215780-3-dianders@chromium.org>
 <20190630202246.GB15102@ravnborg.org>
 <20190630205514.GA17046@ravnborg.org>
 <CAD=FV=WH4kmhQA0kbKcAUx=oOeqTZiQOFCXYpVWwq+mG7Y7ofA@mail.gmail.com>
 <20190708175606.GB3511@ravnborg.org>
 <CAD=FV=VdkPLwyGhSnrHCcduQAPwby35Mqhk_r=O595bMoMT=6w@mail.gmail.com>
In-Reply-To: <CAD=FV=VdkPLwyGhSnrHCcduQAPwby35Mqhk_r=O595bMoMT=6w@mail.gmail.com>
From: Sean Paul <seanpaul@chromium.org>
Date: Thu, 11 Jul 2019 15:16:50 -0400
Message-ID: <CAEqLBR=jmc1zs75vfVP2b4d4dpLJjNpUX=5W5AYyCtCoLvK59A@mail.gmail.com>
Subject: Re: [PATCH v5 2/7] drm/panel: simple: Add ability to override typical
 timing
To: Doug Anderson <dianders@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_121707_555435_1AB21521 
X-CRM114-Status: GOOD (  35.08  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, David Airlie <airlied@linux.ie>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 Jeffy Chen <jeffy.chen@rock-chips.com>, LKML <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>, Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 =?UTF-8?Q?Enric_Balletb=C3=B2?= <enric.balletbo@collabora.com>,
 =?UTF-8?Q?St=C3=A9phane_Marchesin?= <marcheu@chromium.org>,
 Sam Ravnborg <sam@ravnborg.org>, Matthias Kaehlcke <mka@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Wed, Jul 10, 2019 at 6:56 PM Doug Anderson <dianders@chromium.org> wrote:
>
> Hi,
>
> On Mon, Jul 8, 2019 at 10:56 AM Sam Ravnborg <sam@ravnborg.org> wrote:
> >
> > On Mon, Jul 01, 2019 at 09:39:06AM -0700, Doug Anderson wrote:
> > > Hi,
> > >
> > > On Sun, Jun 30, 2019 at 1:55 PM Sam Ravnborg <sam@ravnborg.org> wrote:
> > > >
> > > > Hi Douglas.
> > > >
> > > > > > +
> > > > > > +   /* Only add timings if override was not there or failed to validate */
> > > > > > +   if (num == 0 && panel->desc->num_timings)
> > > > > > +           num = panel_simple_get_timings_modes(panel);
> > > > > > +
> > > > > > +   /*
> > > > > > +    * Only add fixed modes if timings/override added no mode.
> > > > >
> > > > > This part I fail to understand.
> > > > > If we have a panel where we in panel-simple have specified the timings,
> > > > > and done so using display_timing so with proper {min, typ, max} then it
> > > > > should be perfectly legal to specify a more precise variant in the DT
> > > > > file.
> > > > > Or what did I miss here?
> > > >
> > > > Got it now.
> > > > If display_mode is used for timings this is what you call "fixed mode".
> > > > Hmm, if I got confused someone else may also be confused by this naming.
> > >
> > > The name "fixed mode" comes from the old code, though I guess in the
> > > old code it used to refer to a mode that came from either the
> > > display_timing or the display_mode.
> > >
> > > How about if I call it "panel_simple_get_from_fixed_display_mode"?
> > > ...or if you have another suggestion feel free to chime in.
> > What we really want to distingush here is the use of display_mode
> > and display_timings (if I got the names right).
> > That display_mode specify a fixed timing and display_timing specify
> > a valid range is something in the semantics of the two types.
> > So naming that refer to display_mode versus display_timing will make the
> > code simpler to understand. and then a nice comment that when
> > display_mode
> > is used one looses the possibility to use override_mode.
> > That would be fine to have in the struct in the driver.
>
> OK, I can change the names here and try to find a good place to add a comment.
>
>
> > > NOTE: Since this feedback is minor and this patch has been outstanding
> > > for a while (and is blocking other work), I am assuming that the best
> > > path forward is for Heiko to land this patch with Thierry's Ack and
> > > I'll send a follow-up.  Please yell if you disagree.
> > Let's give the patches a spin more as we have passed the possibility for
> > the current merge window.
>
> Any way I can convince you to change your mind here?  There are no
> functional changes requested so far in your feedback and no bugs--it's
> just a few variable names and comments.  By landing the existing
> patches as-is:
>
> 1. We stop spamming all the people CCed on this whole series (which
> includes device tree patches) that might be interested in the series
> as a whole but aren't interested in details.
>
> 2. We can debate the bikeshed-type issues on their own merit and I
> don't have to debate removing existing Acks / Reviewed-by / Tested-by
> tags as I make changes.
>
> 3. Even if it's not a good time to land the patches right now we know
> that these patches will be ready to land as soon as the window opens.
> As I mentioned earlier these patches are blocking other work [1] and
> landing that patch is actually preventing Matthias from submitting
> another series of patches to add support for rk3288-veyron-tiger and
> rk3288-veyron-fievel.  Certainly I know that upstream doesn't make a
> policy of landing things just to suit the timelines of a downstream
> project, but in this case there seems very little downsides to landing
> the existing patches and taking a later cleanup patch.
>

[sending from my @chromium.org address so any appearance of bias is
explicit :) ]

Agree with Doug here, the naming and casting discussion is pretty
subjective and non-functional. We've got an Ack from Thierry and a
Review from Boris (both seasoned drm_panel'ers), this patch has been
sitting in review for a while. Let's not let the perfect be the enemy
of the good.

Sean

>
> > I am on vacation at the moment and thus slow in responses, but will be back
> > at the home office next week and will be more responsive again.
> >
> >         Sam - who is enjoying the alps in Austria
>
> Hope you have had a great vacation!
>
> [1] https://lkml.kernel.org/r/20190625222629.154619-1-mka@chromium.org
>
> -Doug

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

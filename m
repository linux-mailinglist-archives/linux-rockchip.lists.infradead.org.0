Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F63164F03
	for <lists+linux-rockchip@lfdr.de>; Thu, 11 Jul 2019 00:57:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xxbcZcYqjpO+9eu2XxDydG7rS5Rvd4iEnNqdWXZtBw0=; b=pBnPB7eipdEM9U
	LuOQZGs49NB8rtLeRzsZpmUuB6I7Aw5ZrECqxHJrBOWfubXHheQ9yyoaJEsDqbpGISx3j+pfq1+yf
	Z6j8HW7EMAMNJV5AcWh1N6ZNyMir7GjaioaadP2bGGAitosxs4Now+W54M+q+PZC2REalq9t7MidQ
	lLCOkuYgv9RiyA/tpkkFmqYfkt4FrcqbsOYJiL2/aTOdA+2OlVOzMlWgr6apRroXLTTYVeeJc+Vo/
	+/7JtVzSeNbuio0g6BYO+FeAuB1btuXIJ20QjiiFJnWPgZtKFGgTDaDpDpJZ1vdMrC6stAQI/oHQs
	mFgTrfAgcA7OkAjUzz+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlLWI-0007J4-5c; Wed, 10 Jul 2019 22:57:02 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlLWD-0007I9-Kf
 for linux-rockchip@lists.infradead.org; Wed, 10 Jul 2019 22:56:59 +0000
Received: by mail-io1-xd43.google.com with SMTP id s7so8306508iob.11
 for <linux-rockchip@lists.infradead.org>; Wed, 10 Jul 2019 15:56:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wvZvVibciLuoN0XPHn1GQTPO0jZSmghihu4pRgb43gE=;
 b=Hqkoo2XXLEooMC5VZ+gOGg3gxQkocTVvzTmDsnDANF3OvZLlo/WQja4ye0rFzpf83e
 shsMhGUJvVUA4YU0xi/vv+i+XuO2LxUMqoRYnyGtJibDxbKwyeL16AR1P0KokEbKVpus
 TtaPbc8kH0P9xgP/1HkX6qrifSz9Mm/YfZAik=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wvZvVibciLuoN0XPHn1GQTPO0jZSmghihu4pRgb43gE=;
 b=a6OgOKZmAIy7z2Zorl5ekS1ydTzl081ht2ETIA2iVupGfY173wJxCsLWDww73oKepo
 Hz8J5o7DzuZwSanoSUAQdsNWlC7wBHPUOgh9aleWWohizsanwtAMMXsufhz/gKP4hfkB
 avWkKJbdaB/5Jod3itNOYPLdU9H9jpB7sfzeD+2vrJS/Jmx1xjtOB2qUALFdBm2Z3gaR
 XqZ7vrbP1gKgPaDxKCmNOO64NsE0YWBrQNAeZUwMNGmZuyt4wqILns+/xPQOme0qWZXi
 tKM04Y5b3izQT2tAGD+pHNBXDYzIYZWzdWSe3K1Rns2XR2ZWXisPv9TWHaylb+8NlvyR
 Um1w==
X-Gm-Message-State: APjAAAVbbMKJjqfdRUfnQRIY0IFw/y3LNqpkI6m6mTlHAiYXiIwN89z7
 GzeCUn1s26EZb6pgZTNSnMacuiBDDQ0=
X-Google-Smtp-Source: APXvYqyLOFSLHJzs4TaHB0pCsiZ2/0NUKusCu35J3GzW/qKh0NjCxp8VvAS8gQj6xm2XkEmahromEQ==
X-Received: by 2002:a6b:6516:: with SMTP id z22mr644276iob.7.1562799414299;
 Wed, 10 Jul 2019 15:56:54 -0700 (PDT)
Received: from mail-io1-f49.google.com (mail-io1-f49.google.com.
 [209.85.166.49])
 by smtp.gmail.com with ESMTPSA id p3sm3959160iom.7.2019.07.10.15.56.51
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Wed, 10 Jul 2019 15:56:52 -0700 (PDT)
Received: by mail-io1-f49.google.com with SMTP id q22so8388155iog.4
 for <linux-rockchip@lists.infradead.org>; Wed, 10 Jul 2019 15:56:51 -0700 (PDT)
X-Received: by 2002:a5e:c241:: with SMTP id w1mr670314iop.58.1562799411159;
 Wed, 10 Jul 2019 15:56:51 -0700 (PDT)
MIME-Version: 1.0
References: <20190401171724.215780-1-dianders@chromium.org>
 <20190401171724.215780-3-dianders@chromium.org>
 <20190630202246.GB15102@ravnborg.org>
 <20190630205514.GA17046@ravnborg.org>
 <CAD=FV=WH4kmhQA0kbKcAUx=oOeqTZiQOFCXYpVWwq+mG7Y7ofA@mail.gmail.com>
 <20190708175606.GB3511@ravnborg.org>
In-Reply-To: <20190708175606.GB3511@ravnborg.org>
From: Doug Anderson <dianders@chromium.org>
Date: Wed, 10 Jul 2019 15:56:39 -0700
X-Gmail-Original-Message-ID: <CAD=FV=VdkPLwyGhSnrHCcduQAPwby35Mqhk_r=O595bMoMT=6w@mail.gmail.com>
Message-ID: <CAD=FV=VdkPLwyGhSnrHCcduQAPwby35Mqhk_r=O595bMoMT=6w@mail.gmail.com>
Subject: Re: [PATCH v5 2/7] drm/panel: simple: Add ability to override typical
 timing
To: Sam Ravnborg <sam@ravnborg.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_155657_704308_B72E288C 
X-CRM114-Status: GOOD (  31.45  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
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
Cc: devicetree@vger.kernel.org,
 =?UTF-8?Q?St=C3=A9phane_Marchesin?= <marcheu@chromium.org>,
 David Airlie <airlied@linux.ie>, Jeffy Chen <jeffy.chen@rock-chips.com>,
 LKML <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>, Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 =?UTF-8?Q?Enric_Balletb=C3=B2?= <enric.balletbo@collabora.com>,
 Sean Paul <seanpaul@chromium.org>, Ezequiel Garcia <ezequiel@collabora.com>,
 Matthias Kaehlcke <mka@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi,

On Mon, Jul 8, 2019 at 10:56 AM Sam Ravnborg <sam@ravnborg.org> wrote:
>
> On Mon, Jul 01, 2019 at 09:39:06AM -0700, Doug Anderson wrote:
> > Hi,
> >
> > On Sun, Jun 30, 2019 at 1:55 PM Sam Ravnborg <sam@ravnborg.org> wrote:
> > >
> > > Hi Douglas.
> > >
> > > > > +
> > > > > +   /* Only add timings if override was not there or failed to validate */
> > > > > +   if (num == 0 && panel->desc->num_timings)
> > > > > +           num = panel_simple_get_timings_modes(panel);
> > > > > +
> > > > > +   /*
> > > > > +    * Only add fixed modes if timings/override added no mode.
> > > >
> > > > This part I fail to understand.
> > > > If we have a panel where we in panel-simple have specified the timings,
> > > > and done so using display_timing so with proper {min, typ, max} then it
> > > > should be perfectly legal to specify a more precise variant in the DT
> > > > file.
> > > > Or what did I miss here?
> > >
> > > Got it now.
> > > If display_mode is used for timings this is what you call "fixed mode".
> > > Hmm, if I got confused someone else may also be confused by this naming.
> >
> > The name "fixed mode" comes from the old code, though I guess in the
> > old code it used to refer to a mode that came from either the
> > display_timing or the display_mode.
> >
> > How about if I call it "panel_simple_get_from_fixed_display_mode"?
> > ...or if you have another suggestion feel free to chime in.
> What we really want to distingush here is the use of display_mode
> and display_timings (if I got the names right).
> That display_mode specify a fixed timing and display_timing specify
> a valid range is something in the semantics of the two types.
> So naming that refer to display_mode versus display_timing will make the
> code simpler to understand. and then a nice comment that when
> display_mode
> is used one looses the possibility to use override_mode.
> That would be fine to have in the struct in the driver.

OK, I can change the names here and try to find a good place to add a comment.


> > NOTE: Since this feedback is minor and this patch has been outstanding
> > for a while (and is blocking other work), I am assuming that the best
> > path forward is for Heiko to land this patch with Thierry's Ack and
> > I'll send a follow-up.  Please yell if you disagree.
> Let's give the patches a spin more as we have passed the possibility for
> the current merge window.

Any way I can convince you to change your mind here?  There are no
functional changes requested so far in your feedback and no bugs--it's
just a few variable names and comments.  By landing the existing
patches as-is:

1. We stop spamming all the people CCed on this whole series (which
includes device tree patches) that might be interested in the series
as a whole but aren't interested in details.

2. We can debate the bikeshed-type issues on their own merit and I
don't have to debate removing existing Acks / Reviewed-by / Tested-by
tags as I make changes.

3. Even if it's not a good time to land the patches right now we know
that these patches will be ready to land as soon as the window opens.
As I mentioned earlier these patches are blocking other work [1] and
landing that patch is actually preventing Matthias from submitting
another series of patches to add support for rk3288-veyron-tiger and
rk3288-veyron-fievel.  Certainly I know that upstream doesn't make a
policy of landing things just to suit the timelines of a downstream
project, but in this case there seems very little downsides to landing
the existing patches and taking a later cleanup patch.


> I am on vacation at the moment and thus slow in responses, but will be back
> at the home office next week and will be more responsive again.
>
>         Sam - who is enjoying the alps in Austria

Hope you have had a great vacation!

[1] https://lkml.kernel.org/r/20190625222629.154619-1-mka@chromium.org

-Doug

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

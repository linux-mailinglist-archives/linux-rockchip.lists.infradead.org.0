Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 080A864EBD
	for <lists+linux-rockchip@lfdr.de>; Thu, 11 Jul 2019 00:40:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dr7mPTLJ6vLRgAqpljKb4HOVhFWSfhSw01YUpN9NiZc=; b=DDkk4fL08MEUuq
	FqGItp0QUfJDDzHWGoPh1+bmxqnRgHSXPPFmQACpOVLYoS2VhCxiKysoNaoBRZUtGg0hq+F5Y5vWf
	BZZHT1F8Q6K8EuOM8D32J7jZ3ks+HAZ4JnnzP5zcjYJu+/9WJ8qdIcgDds5wEOoh7Iw0yYk0P9Z4K
	2KqrS4h/74ltgWuN+XsQh2UKuozXys5ZanVOpuXmdhEiJ8tuM7+yybNoaAOTOQG9z6XHszOLC00ze
	5hFkGRnLGEXhtdEC9VktMQKsKW6hig4M3hI3RGMsLi/GjKYS/h1LWlaoZMa9z1uqYdQmBlawdf0UQ
	80ZfpkVbsGiXftj0upAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlLG5-0002uh-1o; Wed, 10 Jul 2019 22:40:17 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlLFy-0002tq-0G
 for linux-rockchip@lists.infradead.org; Wed, 10 Jul 2019 22:40:11 +0000
Received: by mail-io1-xd41.google.com with SMTP id j5so4089973ioj.8
 for <linux-rockchip@lists.infradead.org>; Wed, 10 Jul 2019 15:40:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=h1QrIpFdh5rLkTKFlCHaduUWYuYcrWpgjVEeSTaTyVo=;
 b=i5KPrHovfkqkwkajM2OJwC/MI8IVo3lIvSf1xBkUaMHWuUyWkij1QldVl9kX/GMlE1
 DNsrFiTH/7r6LswYJlPb1030krcbMTp9icHuWypgydw+2C+kuV72UBpH6KFLdct9hP6R
 bfQOoNSN7axemJnh/3RbdCrrYZ6IDuOtjaP+w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=h1QrIpFdh5rLkTKFlCHaduUWYuYcrWpgjVEeSTaTyVo=;
 b=XWtOEJjlF2MOMcXksCJiPuSht7Ma1D9BAkchi4SfRcnoq3pHSyST2lHmmUz/JgVJEP
 JklVuD15bGg24Y20tcOBqm+S8O0P2wU7ZhA9a2zwxP76cWtjj0DJaNcg4YMJVQ9XPCoC
 e5RRhrkdDpayR2diKWJ4Zt3ksz8gISZAfDOvKItYWTItR0MkeUt3rk9OAreOjxT6fT8x
 g/K9Uvbg67IKjq8E1mGunPtW/ZbmjMhD7kzl5ggzqMK9UEHxo8dlWvu1EyVPuadE54G8
 M1a8S3RVwSTediMmhIAlSETzWsC4zHyGxEYXQZVSJBDm1+DYPlFHvuz1Xd7D0n4AmB5q
 dNzg==
X-Gm-Message-State: APjAAAXtouHFykoMJ1Ao0a8epkWy+IuD+PXTGEOGcmQ/tBwu0rEjJfSL
 P24gEXTJ1+3CSBo8UDCTgUwhy03JJLo=
X-Google-Smtp-Source: APXvYqypDFsIMywP748/ViH7CzgDBYWaQzpUwD9lvQTHKuBHqnjzWk7eQyPDugD4RiUVoEzjwKLxHw==
X-Received: by 2002:a6b:b593:: with SMTP id e141mr573861iof.203.1562798408446; 
 Wed, 10 Jul 2019 15:40:08 -0700 (PDT)
Received: from mail-io1-f44.google.com (mail-io1-f44.google.com.
 [209.85.166.44])
 by smtp.gmail.com with ESMTPSA id h8sm3710155ioq.61.2019.07.10.15.40.05
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Wed, 10 Jul 2019 15:40:05 -0700 (PDT)
Received: by mail-io1-f44.google.com with SMTP id j5so4089677ioj.8
 for <linux-rockchip@lists.infradead.org>; Wed, 10 Jul 2019 15:40:05 -0700 (PDT)
X-Received: by 2002:a02:c6a9:: with SMTP id o9mr688304jan.90.1562798405041;
 Wed, 10 Jul 2019 15:40:05 -0700 (PDT)
MIME-Version: 1.0
References: <20190401171724.215780-1-dianders@chromium.org>
 <20190401171724.215780-3-dianders@chromium.org>
 <20190630202246.GB15102@ravnborg.org>
 <CAD=FV=V_wTD1xpkXRe-z2HsZ8QXKq7jmq8CsfhMnFxi-5XDJjw@mail.gmail.com>
 <20190708175007.GA3511@ravnborg.org>
In-Reply-To: <20190708175007.GA3511@ravnborg.org>
From: Doug Anderson <dianders@chromium.org>
Date: Wed, 10 Jul 2019 15:39:52 -0700
X-Gmail-Original-Message-ID: <CAD=FV=XnDTKkscdCwFE1137aX6pTtv=5zqXf=yqcnchpZpt5_Q@mail.gmail.com>
Message-ID: <CAD=FV=XnDTKkscdCwFE1137aX6pTtv=5zqXf=yqcnchpZpt5_Q@mail.gmail.com>
Subject: Re: [PATCH v5 2/7] drm/panel: simple: Add ability to override typical
 timing
To: Sam Ravnborg <sam@ravnborg.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_154010_075528_DAAD3A0E 
X-CRM114-Status: GOOD (  23.64  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
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
Cc: devicetree@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>, Jeffy Chen <jeffy.chen@rock-chips.com>,
 LKML <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Thierry Reding <thierry.reding@gmail.com>, Sean Paul <seanpaul@chromium.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 =?UTF-8?Q?Enric_Balletb=C3=B2?= <enric.balletbo@collabora.com>,
 =?UTF-8?Q?St=C3=A9phane_Marchesin?= <marcheu@chromium.org>,
 Ezequiel Garcia <ezequiel@collabora.com>, Matthias Kaehlcke <mka@chromium.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Sam,

On Mon, Jul 8, 2019 at 10:50 AM Sam Ravnborg <sam@ravnborg.org> wrote:
>
> Hi Dough.
>
> On Mon, Jul 01, 2019 at 09:39:24AM -0700, Doug Anderson wrote:
> > Hi,
> >
> > On Sun, Jun 30, 2019 at 1:22 PM Sam Ravnborg <sam@ravnborg.org> wrote:
> > >
> > > > @@ -91,6 +92,8 @@ struct panel_simple {
> > > >       struct i2c_adapter *ddc;
> > > >
> > > >       struct gpio_desc *enable_gpio;
> > > > +
> > > > +     struct drm_display_mode override_mode;
> > > I fail to see where this poiter is assigned.
> >
> > In panel_simple_parse_override_mode().  Specifically:
> >
> > drm_display_mode_from_videomode(&vm, &panel->override_mode);
>
> The above code-snippet is only called in the panel has specified display
> timings using display_timings - it is not called when display_mode is
> used.
> So override_mode is only assigned in some cases and not all cases.
> This needs to be fixed so we do not reference override_mode unless
> it is set.

I'm afraid I'm not following you here.

* override_mode is a structure that's directly part of "struct panel_simple".

* The panel is allocated in panel_simple_probe() with devm_kzalloc().

* The "z" in kzalloc means that this memory will be zero-initialized.

From the points above, "override_mode" will always be set to
something.  If we didn't run "drm_display_mode_from_videomode(&vm,
&panel->override_mode);" then we know the entire override_mode
structure will be zero.

While it took a while for me to get used to it, the kernel convention
is to rely on zero-initialization and not to explicitly init things to
zero.  As an example of this being codified in the source, you can see
that "checkpatch.pl" will yell at you for a similar thing: "do not
initialise globals to 0".


> > > @@ -152,6 +162,44 @@ static int panel_simple_get_fixed_modes(struct panel_simple *panel)
> > > >               num++;
> > > >       }
> > > >
> > > > +     return num;
> > > > +}
> > > > +
> > > > +static int panel_simple_get_non_edid_modes(struct panel_simple *panel)
> > > > +{
> > > > +     struct drm_connector *connector = panel->base.connector;
> > > > +     struct drm_device *drm = panel->base.drm;
> > > > +     struct drm_display_mode *mode;
> > > > +     bool has_override = panel->override_mode.type;
> > > This looks suspicious.
> > > panel->override_mode.type is an unsigned int that may have a number of
> > > bits set.
> > > So the above code implicitly convert a .type != 0 to a true.
> > > This can be expressed in a much more reader friendly way.
> >
> > You would suggest that I add a boolean field to a structure to
> > indicate whether an override mode is present?
> A simple  bool has_override = panel->override_mode.type != 0;
> would do the trick here.
> Then there is no hidden conversion from int to a bool.

I will change this to "panel->override_mode.type != 0" if you're
really sure, but this seems both against the general Linux style
feedback I've received over the years (though there is definitely not
100% consistency) and also against the local convention in this file.
Examples in this file of treating ints as bools without an explicit
"!= 0":

* panel_simple_get_fixed_modes checks "if (panel->desc->bus_format)"
* panel_simple_disable checks "if (p->desc->delay.disable)"
* panel_simple_unprepare checks "if (p->desc->delay.unprepare)"
* panel_simple_prepare checks "if (delay)"
* panel_simple_enable checks "if (p->desc->delay.enable)"

...and, although slightly different, pointers in this file are checked
for NULL vs. non-NULL without an explicit "== NULL".

Of course just because all the other examples in the file do it one
way doesn't mean that new code has to do it another way, but I wanted
to be really sure you wanted me to go against the existing convention
before changing this.


> But as override_mode can be NULL something more needs to be done.

I'm afraid I don't understand how override_mode can be NULL since it's
not a pointer.  Can you clarify?


-Doug

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

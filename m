Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6350B5C163
	for <lists+linux-rockchip@lfdr.de>; Mon,  1 Jul 2019 18:45:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sbGxF855RRpJ2WHzKRDhZ0WA8qGqcEAwdeQ+FWRUR5w=; b=bSJN8oRdeAOnjw
	jfmip1l3DyuuGXJCgEYbFy+qm8t+e8jNmLlVPs1Pdg0ziKpM/iTEQ0bMUXG14CP0YF+1sfnNjposp
	rpwz03euViGDxjHV49mSiXXqpAc3kPJoJryG/0tlhfnISrWSnzdAg0GC78cgvoMmjj6GfuEAW91Tb
	ihsp6zUnzWHf1B6aMQkA8oc25iH0rljK39FV8SsgBtHTmImIuQDRHRnd2OPqMKdGouDkkdf2PJ1s5
	RncxPvpMMNBrMsRqiaiczo0zxO52uuIhZJbCX0ir60Pg9EOdhXVxqw48Yt1saS1KQY+lpOR4gYSJy
	w4YVmRNNOEiFCwZbGaaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhzQk-0000i0-7m; Mon, 01 Jul 2019 16:45:26 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhzQg-0000h5-4s
 for linux-rockchip@lists.infradead.org; Mon, 01 Jul 2019 16:45:23 +0000
Received: by mail-io1-xd41.google.com with SMTP id e5so30325275iok.4
 for <linux-rockchip@lists.infradead.org>; Mon, 01 Jul 2019 09:45:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=p18mI6/20bFKypRld06SAfi0/go3QKljAqtkFENCpmc=;
 b=BLEh6NVQjzd/lDI/fhA9TxE0gONI1OE1ADRQfc/gHNWpXo0HGOhu11uzc9cS4nskJy
 U57jmZFkZcXb1fIUlf4tYzexTdASwXIKatQvOJc6tPxJz4k+kmXspvtvNIYo2Vm4puH4
 on/9bZA0CjrU7ISIb0+QA7DfGck8w2sNeSdeQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=p18mI6/20bFKypRld06SAfi0/go3QKljAqtkFENCpmc=;
 b=XKA5MeUrTUuD3avCEx2GglK5VmCN5wN5WzDaobsT44kLVCew/RIXu1xnyNTBgREVmR
 mUKRwdSpdZMbLRNXGzXQrLWHJRutvdpIMu74/BT4MyLIUNbaF3mXCVIEdj2xt3RoDQVp
 IETaViwbD1W/of0E45d2bU1bjrZO3EZtla6Ibqpsu0CZAPndmBLjJ50VUD9ShFQEbrSR
 XFku0/t2vltJUF87VCK+Z2lfmlMPhtjd8qJbTT2KF/t9oc7lsN9QwEYN9PuKkuR3h6Yt
 IaK7ls+eRSDX0SnA0cR0kD+GDajjgFThUhR7jvb5T2hJuKsYOdgPi1VCv6tUqtkPhO0o
 a0jA==
X-Gm-Message-State: APjAAAWPBuXr0shTes2xyRzlFYdsQ1gjgb4vu9n3+IisKvcHGCJg+XQI
 f/5arc6Vt5VnAuOv6iAVUaNp42rkacw=
X-Google-Smtp-Source: APXvYqxTxmbxptMil6Ok0vhVVK9xfxQu2aseNqo6QF7W/ZV0xzRlsvwcfW+jxs+6hmPk35FPhIGApg==
X-Received: by 2002:a6b:fb02:: with SMTP id h2mr19729221iog.289.1561999518423; 
 Mon, 01 Jul 2019 09:45:18 -0700 (PDT)
Received: from mail-io1-f45.google.com (mail-io1-f45.google.com.
 [209.85.166.45])
 by smtp.gmail.com with ESMTPSA id p3sm12697401iog.70.2019.07.01.09.45.18
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Mon, 01 Jul 2019 09:45:18 -0700 (PDT)
Received: by mail-io1-f45.google.com with SMTP id n5so30293675ioc.7
 for <linux-rockchip@lists.infradead.org>; Mon, 01 Jul 2019 09:45:18 -0700 (PDT)
X-Received: by 2002:a5e:c241:: with SMTP id w1mr5709959iop.58.1561999176456;
 Mon, 01 Jul 2019 09:39:36 -0700 (PDT)
MIME-Version: 1.0
References: <20190401171724.215780-1-dianders@chromium.org>
 <20190401171724.215780-3-dianders@chromium.org>
 <20190630202246.GB15102@ravnborg.org>
In-Reply-To: <20190630202246.GB15102@ravnborg.org>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 1 Jul 2019 09:39:24 -0700
X-Gmail-Original-Message-ID: <CAD=FV=V_wTD1xpkXRe-z2HsZ8QXKq7jmq8CsfhMnFxi-5XDJjw@mail.gmail.com>
Message-ID: <CAD=FV=V_wTD1xpkXRe-z2HsZ8QXKq7jmq8CsfhMnFxi-5XDJjw@mail.gmail.com>
Subject: Re: [PATCH v5 2/7] drm/panel: simple: Add ability to override typical
 timing
To: Sam Ravnborg <sam@ravnborg.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_094522_220313_15F9D52F 
X-CRM114-Status: GOOD (  25.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Hi,

On Sun, Jun 30, 2019 at 1:22 PM Sam Ravnborg <sam@ravnborg.org> wrote:
>
> > @@ -91,6 +92,8 @@ struct panel_simple {
> >       struct i2c_adapter *ddc;
> >
> >       struct gpio_desc *enable_gpio;
> > +
> > +     struct drm_display_mode override_mode;
> I fail to see where this poiter is assigned.

In panel_simple_parse_override_mode().  Specifically:

drm_display_mode_from_videomode(&vm, &panel->override_mode);


> @@ -152,6 +162,44 @@ static int panel_simple_get_fixed_modes(struct panel_simple *panel)
> >               num++;
> >       }
> >
> > +     return num;
> > +}
> > +
> > +static int panel_simple_get_non_edid_modes(struct panel_simple *panel)
> > +{
> > +     struct drm_connector *connector = panel->base.connector;
> > +     struct drm_device *drm = panel->base.drm;
> > +     struct drm_display_mode *mode;
> > +     bool has_override = panel->override_mode.type;
> This looks suspicious.
> panel->override_mode.type is an unsigned int that may have a number of
> bits set.
> So the above code implicitly convert a .type != 0 to a true.
> This can be expressed in a much more reader friendly way.

You would suggest that I add a boolean field to a structure to
indicate whether an override mode is present?  I will certainly do
that if you're sure that's what you want, but my understanding of the
convention for much of the kernel is that you generally rely on
structures being zero-initialized and then (assuming that zero isn't a
valid value) it's safe to confirm they've been initialized by seeing
that they're non-zero.

In this case panel_simple_parse_override_mode() will _definitely_ set
a non-zero value for this field in the case that it ran to completion.
...and, even further, the end of that function has a WARN_ON() if it
doesn't.

Any chance you missed reading panel_simple_parse_override_mode() in
the original patch?


> And on top of this, I cannot see that panel->override_mode points to a
> valid instance of display_mode, at least not always.

override_mode isn't a pointer, right?  It's a structure straight in
the panel.  So all its fields will be initted to 0 by the kzalloc in
panel_simple_probe().  If the type is non-zero then we know
panel_simple_parse_override_mode() finished to completion.


> > @@ -268,7 +316,7 @@ static int panel_simple_get_modes(struct drm_panel *panel)
> >       }
> >
> >       /* add hard-coded panel modes */
> > -     num += panel_simple_get_fixed_modes(p);
> > +     num += panel_simple_get_non_edid_modes(p);
> >
> >       return num;
> >  }
> > @@ -299,10 +347,58 @@ static const struct drm_panel_funcs panel_simple_funcs = {
> >       .get_timings = panel_simple_get_timings,
> >  };
> >
> > +#define PANEL_SIMPLE_BOUNDS_CHECK(to_check, bounds, field) \
> > +     (to_check->field.typ >= bounds->field.min && \
> > +      to_check->field.typ <= bounds->field.max)
> > +static void panel_simple_parse_override_mode(struct device *dev,
> > +                                          struct panel_simple *panel,
> > +                                          const struct display_timing *ot)
> > +{
> > +     const struct panel_desc *desc = panel->desc;
> > +     struct videomode vm;
> > +     unsigned int i;
> > +
> > +     if (WARN_ON(desc->num_modes)) {
> > +             dev_err(dev, "Reject override mode: panel has a fixed mode\n");
> > +             return;
> > +     }
> > +     if (WARN_ON(!desc->num_timings)) {
> > +             dev_err(dev, "Reject override mode: no timings specified\n");
> > +             return;
> > +     }
> > +
> > +     for (i = 0; i < panel->desc->num_timings; i++) {
> > +             const struct display_timing *dt = &panel->desc->timings[i];
> > +
> > +             if (!PANEL_SIMPLE_BOUNDS_CHECK(ot, dt, hactive) ||
> > +                 !PANEL_SIMPLE_BOUNDS_CHECK(ot, dt, hfront_porch) ||
> > +                 !PANEL_SIMPLE_BOUNDS_CHECK(ot, dt, hback_porch) ||
> > +                 !PANEL_SIMPLE_BOUNDS_CHECK(ot, dt, hsync_len) ||
> > +                 !PANEL_SIMPLE_BOUNDS_CHECK(ot, dt, vactive) ||
> > +                 !PANEL_SIMPLE_BOUNDS_CHECK(ot, dt, vfront_porch) ||
> > +                 !PANEL_SIMPLE_BOUNDS_CHECK(ot, dt, vback_porch) ||
> > +                 !PANEL_SIMPLE_BOUNDS_CHECK(ot, dt, vsync_len))
> > +                     continue;
> > +
> > +             if (ot->flags != dt->flags)
> > +                     continue;
> The binding do not say anything about flags. Is this check really
> needed?

Flags here is an implementation detail of the Linux driver and the
bindings are supposed to be Linux-agnostic.  The bindings started out
talking about lots of stuff that happened in the driver and I was told
to take all those out.  ;-)

Specifically note that flags here holds whether we have specified a
positive or negative for hsync or vsync.  These are the "hsync-active"
and "vsync-active" properties of the panel bindings.  Take a look at
of_parse_display_timing().

...so to summarize the flags here is just a different set of
properties to check like the checks above.


> > +
> > +             videomode_from_timing(ot, &vm);
> > +             drm_display_mode_from_videomode(&vm, &panel->override_mode);
>
> > +             panel->override_mode.type |= DRM_MODE_TYPE_DRIVER |
> > +                                          DRM_MODE_TYPE_PREFERRED;
> > +             break;
> > +     }
> > +
> > +     if (WARN_ON(!panel->override_mode.type))
> > +             dev_err(dev, "Reject override mode: No display_timing found\n");
> > +}
> > +
> >  static int panel_simple_probe(struct device *dev, const struct panel_desc *desc)
> >  {
> >       struct device_node *backlight, *ddc;
> >       struct panel_simple *panel;
> > +     struct display_timing dt;
> >       int err;
> >
> >       panel = devm_kzalloc(dev, sizeof(*panel), GFP_KERNEL);
> > @@ -348,6 +444,9 @@ static int panel_simple_probe(struct device *dev, const struct panel_desc *desc)
> >               }
> >       }
> >
> > +     if (!of_get_display_timing(dev->of_node, "panel-timing", &dt))
> > +             panel_simple_parse_override_mode(dev, panel, &dt);
> > +
> Naming bike-shedding.
> With the new node name, the function name
> panel_simple_parse_override_mode() could use an update.
> Maybe: panel_simple_parse_panel_timing_node()

Happy to change the name to panel_simple_parse_panel_timing_node().

---

Summary of the above:

* Unless you say otherwise, I will leave the check of "type != 0" and
not introduce a new boolean.

* Only action request is rename of panel_simple_parse_override_mode()
to panel_simple_parse_panel_timing_node()

NOTE: Since this feedback is minor and this patch has been outstanding
for a while (and is blocking other work), I am assuming that the best
path forward is for Heiko to land this patch with Thierry's Ack and
I'll send a follow-up.  Please yell if you disagree.  I'll respond to
each of your emails separately and then wait for your response before
sending the follow-up series.


-Doug

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

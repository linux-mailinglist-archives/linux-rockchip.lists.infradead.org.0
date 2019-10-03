Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF429CAE58
	for <lists+linux-rockchip@lfdr.de>; Thu,  3 Oct 2019 20:37:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iDRSnTI9fz8Joz6B5gB1DvYoYSnrPZr0aHz+S3ta2/0=; b=IRWCR/rocblj28
	jv2T75jtJtxQGptWSICOFQ/2+0Ii5x5OjJEFQicl+5LjU6UoUv1cjdlz8zEj5x8A5HOh3TjXxOgbY
	KwROxQ7lev+JKpYDHDln8lc8wNu+pNxOJBjfZM3oGfRkkYoyPK7BzA61ZdDOYWBUa/JDSzDKhRQ7H
	iFNOh/atpezfON5fYRsw01Wkx6Qt+A+n+Psg7iHPk/UEu82SBBhZkvGfnleW5SKj6MrzHLgRk23Np
	5/KL7fGNpkU6VR3Oi/cGeQn08nzN9padq0PsVSs6Ek6lMp1SyCLVCq2JtqvHvxTZPMHyP7fW95wsY
	hyoelFs5Uek9nkQpCiDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iG5yv-00064Y-9N; Thu, 03 Oct 2019 18:37:41 +0000
Received: from mail-yb1-xb42.google.com ([2607:f8b0:4864:20::b42])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iG5yr-00063R-EX
 for linux-rockchip@lists.infradead.org; Thu, 03 Oct 2019 18:37:39 +0000
Received: by mail-yb1-xb42.google.com with SMTP id f1so1248695ybq.11
 for <linux-rockchip@lists.infradead.org>; Thu, 03 Oct 2019 11:37:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=XRve0gQAap+NyS4R5cGqN5gZf1m0JfC50dL6OWcjlS8=;
 b=VFo/UhVWMJ46I+cw8Cqf4FdNEV4cUHIYDpmGpjsQ26GGF2iKhzVRWx3+nkaiBylKwM
 /5BiWDSWgpJcU4GvVXK9NdlhlVJEMUOb9A0RWAy6F8hbpo+eArV78k4Z1Ounrc7vXUGk
 mckllj7uM9HsQdbUyP3dd6MTIs7PcCQHm3NVn3Odlrnxsk/n2Dan3pNWRFbJHT7CP0D9
 bX8s+n4Nsh8bNCNJ9zmOAd5MweqxxTLYguBsfaSxInIYkBu4AyjcAhxNEj2aMkVDI/4B
 lJkWAqrdqUWWItoCpFD6FwiGtxlW90tlSGeRHNBTrzbN5Mcoik8k3sdlkoYXgw5i0IW6
 8iPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=XRve0gQAap+NyS4R5cGqN5gZf1m0JfC50dL6OWcjlS8=;
 b=YLY1DKtiYfj2JCvYFiLwLrtAMUdnswmQjciUwQhfutS11ZXFNlp/YklS2t4fdBxmCH
 L4+pL6Le4ZvddM4xoYI6kT3oCwpBn4V/sL3KGIRClz9MfjVKTiH+ojVJ/lYmMcMoZCeM
 rMXY5iFSFYCD8edTUQ6Y9PgyRu6PDfBQMMG8ipYLTulUavxMiMBicWBw7/S5AF7VaGMv
 nizLl6iCE0g47BPGvqhZ4OupV5YqMxcMa9qyYqv50VSgJ2dnmC334a0FNUfRQ6ePMQY5
 GJowJZqUzX/CSanzYqwLtu/uwa5HzEDC0UGptST/ua2YsAbgdNl10V2Y1jFOIpAB/CUJ
 bcUQ==
X-Gm-Message-State: APjAAAW2K+JI11I2h0fLu5efI50dky+GkUZPvk82qrxglJj35/nOwfRr
 QscN0Q+WenEGSx0x89XGH0p5fmOBFfDIpKiJsmIhrA==
X-Google-Smtp-Source: APXvYqwarBwi4Z2CGTBW+OLutBFjri+qnC5uPYU8hnI80vZSHK7FDugxSGkwK64f3/0mTlnN+9FiUKkb+Jlw2NrF/ME=
X-Received: by 2002:a25:2548:: with SMTP id l69mr6812439ybl.159.1570127855623; 
 Thu, 03 Oct 2019 11:37:35 -0700 (PDT)
MIME-Version: 1.0
References: <20191003102003.1.Ib233b3e706cf6317858384264d5b0ed35657456e@changeid>
In-Reply-To: <20191003102003.1.Ib233b3e706cf6317858384264d5b0ed35657456e@changeid>
From: Sean Paul <sean@poorly.run>
Date: Thu, 3 Oct 2019 14:36:58 -0400
Message-ID: <CAMavQKKTdsJmVy1wz8K66qyZ_iONqStM8JXJwX=9XspVAKT28A@mail.gmail.com>
Subject: Re: [PATCH] drm/rockchip: Round up _before_ giving to the clock
 framework
To: Douglas Anderson <dianders@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_113737_518572_EDB949A5 
X-CRM114-Status: GOOD (  31.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Heiko Stuebner <heiko@sntech.de>, David Airlie <airlied@linux.ie>,
 LKML <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, Tomasz Figa <tfiga@chromium.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Matthias Kaehlcke <mka@chromium.org>, Sean Paul <seanpaul@chromium.org>,
 ryandcase@chromium.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Thu, Oct 3, 2019 at 1:20 PM Douglas Anderson <dianders@chromium.org> wrote:
>
> I'm embarassed to say that even though I've touched
> vop_crtc_mode_fixup() twice and I swear I tested it, there's still a
> stupid glaring bug in it.  Specifically, on veyron_minnie (with all
> the latest display timings) we want to be setting our pixel clock to
> 66,666,666.67 Hz and we tell userspace that's what we set, but we're
> actually choosing 66,000,000 Hz.  This is confirmed by looking at the
> clock tree.
>
> The problem is that in drm_display_mode_from_videomode() we convert
> from Hz to kHz with:
>
>   dmode->clock = vm->pixelclock / 1000;
>
> ...so when the device tree specifies a clock of 66666667 for the panel
> then DRM translates that to 66666000.  The clock framework will always
> pick a clock that is _lower_ than the one requested, so it will refuse
> to pick 66666667 and we'll end up at 66000000.
>
> While we could try to fix drm_display_mode_from_videomode() to round
> to the nearest kHz and it would fix our problem,

I got a bit confused reading this and Doug straightened me out in a
sideband conversation.

To summarize, the drm_display_mode_from_videomode() call referenced
above is from panel-simple, and this downslotting is specific to
rockchip's clock driver. So I've asked to clarify these 2 points so
it's clear from the commit message that this patch is the best
solution. With that addressed,

Reviewed-by: Sean Paul <seanpaul@chromium.org>


> it wouldn't help if
> the clock we actually needed was 60,000,001 Hz.  We could
> alternatively have DRM always round up, but maybe this would break
> someone else who already baked in the assumption that DRM rounds down.
>
> Let's solve this by just adding 999 Hz before calling
> clk_round_rate().  This should be safe and work everywhere.
>
> NOTE: if this is picked to stable, it's probably easiest to first pick
> commit 527e4ca3b6d1 ("drm/rockchip: Base adjustments of the mode based
> on prev adjustments") which shouldn't hurt in stable.
>
> Fixes: b59b8de31497 ("drm/rockchip: return a true clock rate to adjusted_mode")
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> ---
>
>  drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 37 +++++++++++++++++++--
>  1 file changed, 34 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> index 613404f86668..84e3decb17b1 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> @@ -1040,10 +1040,41 @@ static bool vop_crtc_mode_fixup(struct drm_crtc *crtc,
>                                 struct drm_display_mode *adjusted_mode)
>  {
>         struct vop *vop = to_vop(crtc);
> +       unsigned long rate;
>
> -       adjusted_mode->clock =
> -               DIV_ROUND_UP(clk_round_rate(vop->dclk,
> -                                           adjusted_mode->clock * 1000), 1000);
> +       /*
> +        * Clock craziness.
> +        *
> +        * Key points:
> +        *
> +        * - DRM works in in kHz.
> +        * - Clock framework works in Hz.
> +        * - Rockchip's clock driver picks the clock rate that is the
> +        *   same _OR LOWER_ than the one requested.
> +        *
> +        * Action plan:
> +        *
> +        * 1. When DRM gives us a mode, we should add 999 Hz to it.  That way
> +        *    if the clock we need is 60000001 Hz (~60 MHz) and DRM tells us to
> +        *    make 60000 kHz then the clock framework will actually give us
> +        *    the right clock.
> +        *
> +        *    NOTE: if the PLL (maybe through a divider) could actually make
> +        *    a clock rate 999 Hz higher instead of the one we want then this
> +        *    could be a problem.  Unfortunately there's not much we can do
> +        *    since it's baked into DRM to use kHz.  It shouldn't matter in
> +        *    practice since Rockchip PLLs are controlled by tables and
> +        *    even if there is a divider in the middle I wouldn't expect PLL
> +        *    rates in the table that are just a few kHz different.
> +        *
> +        * 2. Get the clock framework to round the rate for us to tell us
> +        *    what it will actually make.
> +        *
> +        * 3. Store the rounded up rate so that we don't need to worry about
> +        *    this in the actual clk_set_rate().
> +        */
> +       rate = clk_round_rate(vop->dclk, adjusted_mode->clock * 1000 + 999);
> +       adjusted_mode->clock = DIV_ROUND_UP(rate, 1000);
>
>         return true;
>  }
> --
> 2.23.0.444.g18eeb5a265-goog
>
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

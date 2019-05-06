Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6020F147E5
	for <lists+linux-rockchip@lfdr.de>; Mon,  6 May 2019 11:56:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pXnJghAXsKIRWvtwQEeOD3q/9D1zpcShrO9bl7RErx0=; b=FKM1mix3D9vDQb
	no3uejnLe2ju/SrsbXHjBSXbuTTEroW6D85gVh1yf4MmsSL6ZDA/DXW705pNE7bZ1Gai0vkg+/M3/
	TxNyQgNIkRJ3i4RlUygn9Xjnz8zGo49usPzhVsO5CVhax8ft9wIgThrQQi5bMXGFQuoqpo7y7kxy0
	g0GZN9qv1qLJ/bHoNafh2E5Jxx6Uos6xE4oEU0MD8Edm3e0OCtcP4DY9eFZJzs3i5bIysMZSVr3Po
	exZRZMN3cXfsw3tiQnTekfOTeZqVwGFY3mnSY1UPmYUPHNFwAc8e4zR8oD3STlTg+bSNLqChw686D
	bU8tOiZppdlLjkv8JkQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNaMb-000264-PG; Mon, 06 May 2019 09:56:49 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNaMN-0001xS-S2
 for linux-rockchip@lists.infradead.org; Mon, 06 May 2019 09:56:38 +0000
Received: by mail-io1-xd44.google.com with SMTP id v9so6718438ion.11
 for <linux-rockchip@lists.infradead.org>; Mon, 06 May 2019 02:56:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GKysu+ggf2+uQ2eAYt5TABC1hM3kbCmZ2bSj1OoK+OM=;
 b=MhppLfhCXW0INxzbxBlzLRgcumDMA+umn+ZIMi6q0SEj+gA8/uRdEhMghQ4vKoYlde
 wny1k8TC8SRS3s4LbUOF7CBlrkRiJGnGlgqons8KzzHCVS0QGRKKj7maoD8EyAmx/H/P
 ZQzliTixtkHeJsxdpySNWEHEBjUraQGgGtZIs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GKysu+ggf2+uQ2eAYt5TABC1hM3kbCmZ2bSj1OoK+OM=;
 b=TPNPYl1f3mK0tAnfJNdqS7fNVpxrzeGnCKWsGn56lEve7ZE5/SRfh3J3fK/E1dI6g2
 1SQkiLLWp+kiv0CaIWruyQP+6ImchOsRYnvVqm1LUOmAHsnWu9Engpp8dlGd+7/2GJUJ
 fkKOApO/eFcQSweneAQUbpqq3rvmHp4Sxg4XUGvfJZ66g7J6HWt6hsJwY7E54w5hWepk
 bD6I22uKDvOLDmv0XCq5h8jd2zskpBUP3Ee6i3MbOlF85FRB3qwsDK2SXYoMgZHKAnIv
 rUbK5yoFtN+c7GYBhI29ohAjzcMv72eRPa43AVJIgQfFIAlHN8XZWmsBj4qCQ605HjAc
 xxew==
X-Gm-Message-State: APjAAAUTTRwQXR6Udr6eUcNUjCLw3xL/FefXXUkALOzR5h0ZZSIDkNb6
 32jmsZeopazt0DA/u32jE8wXRHRLq+6Q547dy6UDPQ==
X-Google-Smtp-Source: APXvYqxnO2dIWJ1E/SWJUjsbW7VCI6mmCoIsPzRHG8r3fnfPHd+tzQrIUou2K1SZ7cU+q2Nd+dainfJ8cFKvythXg7c=
X-Received: by 2002:a6b:bb82:: with SMTP id l124mr2188291iof.252.1557136594368; 
 Mon, 06 May 2019 02:56:34 -0700 (PDT)
MIME-Version: 1.0
References: <20190501121448.3812-1-jagan@amarulasolutions.com>
 <20190501193429.GA9075@ravnborg.org>
In-Reply-To: <20190501193429.GA9075@ravnborg.org>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Mon, 6 May 2019 15:26:22 +0530
Message-ID: <CAMty3ZAfwVyvmAmenhrQHJcy3eq-Yb61a4WLop_8jS-7vM940A@mail.gmail.com>
Subject: Re: [PATCH 1/2] drm/panel: simple: Add FriendlyELEC HD702E 800x1280
 LCD panel
To: Sam Ravnborg <sam@ravnborg.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_025636_406380_7CAA8BAE 
X-CRM114-Status: GOOD (  24.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.21
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>, linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Sam,

On Thu, May 2, 2019 at 1:04 AM Sam Ravnborg <sam@ravnborg.org> wrote:
>
> Hi Jagan
>
> On Wed, May 01, 2019 at 05:44:47PM +0530, Jagan Teki wrote:
> > HD702E lcd is FriendlyELEC developed eDP LCD panel with 800x1280
> > resolution. It has built in Goodix, GT9271 captive touchscreen
> > with backlight adjustable via PWM.
> >
> > Add support for it.
> >
> > Cc: Thierry Reding <thierry.reding@gmail.com>
> > Cc: Sam Ravnborg <sam@ravnborg.org>
> > Cc: David Airlie <airlied@linux.ie>
> > Cc: Daniel Vetter <daniel@ffwll.ch>
> > Cc: dri-devel@lists.freedesktop.org
> > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
>
> Please submit the binding in a separate patch as per
> Documentation/devicetree/bindings/submitting-patches.txt

Hmm.. prepared like this initially but few of my patches were combined
earlier even-though I sent it separately. anyway let me separate it
again.

>
> The binding looks like it is compatible with common-panel and
> simple-panel - please say so in the bindings.
> See for example the last few binding documents added to the kernel tree.

Correct, will update.

>
> > ---
> >  .../display/panel/friendlyarm,hd702e.txt      | 29 +++++++++++++++++++
> >  drivers/gpu/drm/panel/panel-simple.c          | 26 +++++++++++++++++
> >  2 files changed, 55 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/display/panel/friendlyarm,hd702e.txt
> >
> > diff --git a/Documentation/devicetree/bindings/display/panel/friendlyarm,hd702e.txt b/Documentation/devicetree/bindings/display/panel/friendlyarm,hd702e.txt
> > new file mode 100644
> > index 000000000000..67349d7f79be
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/display/panel/friendlyarm,hd702e.txt
> > @@ -0,0 +1,29 @@
> > +FriendlyELEC HD702E 800x1280 LCD panel
> > +
> > +HD702E lcd is FriendlyELEC developed eDP LCD panel with 800x1280
> > +resolution. It has built in Goodix, GT9271 captive touchscreen
> > +with backlight adjustable via PWM.
> > +
> > +Required properties:
> > +- compatible: should be "friendlyarm,hd702e"
> > +- power-supply: regulator to provide the supply voltage
> > +
> > +Optional properties:
> > +- backlight: phandle of the backlight device attached to the panel
> > +
> > +Optional nodes:
> > +- Video port for LCD panel input.
> > +
> > +Example:
> > +
> > +     panel {
> > +             compatible ="friendlyarm,hd702e";
> > +             backlight = <&backlight>;
> > +             power-supply = <&vcc3v3_sys>;
> > +
> > +             port {
> > +                     panel_in_edp: endpoint {
> > +                             remote-endpoint = <&edp_out_panel>;
> > +                     };
> > +             };
> > +     };
> > diff --git a/drivers/gpu/drm/panel/panel-simple.c b/drivers/gpu/drm/panel/panel-simple.c
> > index 9e8218f6a3f2..9db3c0c65ef2 100644
> > --- a/drivers/gpu/drm/panel/panel-simple.c
> > +++ b/drivers/gpu/drm/panel/panel-simple.c
> > @@ -1184,6 +1184,29 @@ static const struct panel_desc foxlink_fl500wvr00_a0t = {
> >       .bus_format = MEDIA_BUS_FMT_RGB888_1X24,
> >  };
> >
> > +static const struct drm_display_mode friendlyarm_hd702e_mode = {
> > +     .clock          = 67185,
> > +     .hdisplay       = 800,
> > +     .hsync_start    = 800 + 20,
> > +     .hsync_end      = 800 + 20 + 24,
> > +     .htotal         = 800 + 20 + 24 + 20,
> > +     .vdisplay       = 1280,
> > +     .vsync_start    = 1280 + 4,
> > +     .vsync_end      = 1280 + 4 + 8,
> > +     .vtotal         = 1280 + 4 + 8 + 4,
> > +     .vrefresh       = 60,
> > +     .flags          = DRM_MODE_FLAG_NVSYNC | DRM_MODE_FLAG_NHSYNC,
> > +};
> > +
> > +static const struct panel_desc friendlyarm_hd702e = {
> > +     .modes = &friendlyarm_hd702e_mode,
> > +     .num_modes = 1,
> > +     .size = {
> > +             .width  = 94,
> > +             .height = 151,
> > +     },
> > +};
> As I read the datasheet then this panel needs at least a prepare delay
> of 10 ms (it says > 10 ms from VGH until Data).
> And then we also know that VGH shall be valid at least 10 ms after DVDD
> so prepare is likely 20 ms.
>
> Based on datasheet found here:
> https://pan.baidu.com/s/1geEfBLh/
>
> Please evaluate all delays.

This part I'm unclear, I tried to get the datasheet of this but
couldn't find it either. I have a reference for these FriendlyELEC
panels from https://github.com/friendlyarm/kernel-rockchip/blob/nanopi4-linux-v4.4.y/drivers/gpu/drm/panel/panel-friendlyelec.c
but they are not using any of these delays.

>
> > +
> >  static const struct drm_display_mode giantplus_gpg482739qs5_mode = {
> >       .clock = 9000,
> >       .hdisplay = 480,
> > @@ -2634,6 +2657,9 @@ static const struct of_device_id platform_of_match[] = {
> >       }, {
> >               .compatible = "edt,etm0700g0edh6",
> >               .data = &edt_etm0700g0bdh6,
> > +     }, {
> > +             .compatible = "friendlyarm,hd702e",
> > +             .data = &friendlyarm_hd702e,
> >       }, {
> >               .compatible = "foxlink,fl500wvr00-a0t",
> >               .data = &foxlink_fl500wvr00_a0t,
>
> Add these in sorted order.
> "fox" is before "fri"

True, will sort it.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

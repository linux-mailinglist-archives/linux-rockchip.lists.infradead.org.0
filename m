Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 700905D746
	for <lists+linux-rockchip@lfdr.de>; Tue,  2 Jul 2019 22:14:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GK3aUrUM/JXftAB8AROtIqufzbY0p0PhfX9NoP9aQEA=; b=NsQ6IltoSo0RoL
	PW/GdmM6EPQWQ9RPu/NG4j3xo23WgdDQxFQ8fhJboSplH621jRWnLxkQvhRU5sztMFgbEPdSuWVwB
	BQo8AhQWhl4tSIjhc8H8IXu2BSoanIGjDMFhIZgC064iyhNMnZzTs0sBqoLgH3Jt64uqLvQezD2Za
	9+EPlx7vsqXXFf+Wdl+IaM0nYGtGrEwJDE7r+Z4H3VM5cO3Zy0BLPCY5kjgawXb6k0bENOtJpKs4u
	Rrv1JzHN+c88Zeqq6z+aCRrjtcGoB4QTrDEQKd64M2kuGz6KMuk5QuEE2f8c00Dkj8ttrw2J8j85j
	ZxQjGnGPOiZnYpXkr+7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiPAq-0001mN-9J; Tue, 02 Jul 2019 20:14:44 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiPAm-0001m0-U6
 for linux-rockchip@lists.infradead.org; Tue, 02 Jul 2019 20:14:42 +0000
Received: by mail-io1-xd43.google.com with SMTP id i10so26317217iol.13
 for <linux-rockchip@lists.infradead.org>; Tue, 02 Jul 2019 13:14:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6suCIUcpnxYWLx0u7rAt8YHu7DyHRein/0Ku8MDeQrw=;
 b=MyF13COg8Z9CREi9V7uwtNZ+RQgUSogpyqwer+wxMaRNlPvmTJ3LJUiyv1bRH2HNg4
 UdgEbOWphL591zLtGdaR5I4Nw4e1exGSG3CgmWGSsfGiRRfTC+NEd9mUTlTTIUs2/NJT
 WoMG2zeqsWqlC36tyRgV6MVFaOJ16SDyDjBSU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6suCIUcpnxYWLx0u7rAt8YHu7DyHRein/0Ku8MDeQrw=;
 b=L7qlc9O4bgt8ET3BgfTF1fcu8qICfe+H+bq4NypF6uS7LZK2wqEYkE7PG6nGveJQzy
 7aOv3zvbSDHPOOM5hHwfazA26YxMGGmMDAYTu6WOPuCNwFA8e8g4jZWpbjBOq41qRc7a
 XB8XLE5IAUzKgGdjri1+44qwm1CSoLlJuASVldeP0LRkKIuLbD2opQuOEOPp97J//P67
 xyKTpyMlic6hv7057rkiEanwraVVTiH0D59WYJwqfWvaJyLuOSx9FurO9ndC5TIoNMah
 pKgjYVwOxNLhGqvouoJCKyGMTkijD+IRzVpzNq4PVs40Spt3RiTph+Gsqq/h6tpVmMiE
 sZ/A==
X-Gm-Message-State: APjAAAWgHIHC597/mo4+5SbXNPdkxgzdvm6zUQ7vCUq8m3leRFgDY7B9
 Tr6YQAsIkcfNxcyP1RaFxP+UCT2+jSw=
X-Google-Smtp-Source: APXvYqyCYPOP/7bW9cp+fZP0v+TEle4Ho1GuxIsqqze/Lmwgy+SHGXmfz1uUa3enTmQFemaBZcS5jw==
X-Received: by 2002:a02:a38d:: with SMTP id y13mr20618103jak.68.1562098479159; 
 Tue, 02 Jul 2019 13:14:39 -0700 (PDT)
Received: from mail-io1-f49.google.com (mail-io1-f49.google.com.
 [209.85.166.49])
 by smtp.gmail.com with ESMTPSA id z1sm13574134ioh.52.2019.07.02.13.14.37
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Tue, 02 Jul 2019 13:14:38 -0700 (PDT)
Received: by mail-io1-f49.google.com with SMTP id w25so40090478ioc.8
 for <linux-rockchip@lists.infradead.org>; Tue, 02 Jul 2019 13:14:37 -0700 (PDT)
X-Received: by 2002:a02:aa1d:: with SMTP id r29mr15652512jam.127.1562098477589; 
 Tue, 02 Jul 2019 13:14:37 -0700 (PDT)
MIME-Version: 1.0
References: <20190621211346.1324-1-ezequiel@collabora.com>
 <3c68bf286d8b75ac339df0eab43d276667e073c2.camel@collabora.com>
In-Reply-To: <3c68bf286d8b75ac339df0eab43d276667e073c2.camel@collabora.com>
From: Doug Anderson <dianders@chromium.org>
Date: Tue, 2 Jul 2019 13:14:24 -0700
X-Gmail-Original-Message-ID: <CAD=FV=UK3bpyvvFQtsvUtWHun_bfxb25R0bLyg=WJz+yHz5kvg@mail.gmail.com>
Message-ID: <CAD=FV=UK3bpyvvFQtsvUtWHun_bfxb25R0bLyg=WJz+yHz5kvg@mail.gmail.com>
Subject: Re: [PATCH v2 0/3] RK3288 Gamma LUT
To: Ezequiel Garcia <ezequiel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_131441_000151_660E541A 
X-CRM114-Status: GOOD (  21.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Jacopo Mondi <jacopo@jmondi.org>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Sandy Huang <hjc@rock-chips.com>, dri-devel <dri-devel@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Sean Paul <seanpaul@chromium.org>, Rob Herring <robh+dt@kernel.org>,
 kernel@collabora.com, Ilia Mirkin <imirkin@alum.mit.edu>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi,

On Tue, Jul 2, 2019 at 4:26 AM Ezequiel Garcia <ezequiel@collabora.com> wrote:
>
> Hi Heiko,
>
> On Fri, 2019-06-21 at 18:13 -0300, Ezequiel Garcia wrote:
> > Let's support Gamma LUT configuration on RK3288 SoCs.
> >
> > In order to do so, this series adds a new and optional
> > address resource.
> >
> > A separate address resource is required because on this RK3288,
> > the LUT address is after the MMU address, which is requested
> > by the iommu driver. This prevents the DRM driver
> > from requesting an entire register space.
> >
> > The current implementation works for RGB 10-bit tables, as that
> > is what seems to work on RK3288.
> >
> > This has been tested on a Rock2 Square board, using
> > a hacked 'modetest' tool, with legacy and atomic APIs.
> >
> > Thanks,
> > Eze
> >
> > Changes from v1:
> > * drop explicit linear LUT after finding a proper
> >   way to disable gamma correction.
> > * avoid setting gamma is the CRTC is not active.
> > * s/int/unsigned int as suggested by Jacopo.
> > * only enable color management and set gamma size
> >   if gamma LUT is supported, suggested by Doug.
> > * drop the reg-names usage, and instead just use indexed reg
> >   specifiers, suggested by Doug.
> >
> > Changes from RFC:
> > * Request (an optional) address resource for the LUT.
> > * Add devicetree changes.
> > * Drop support for RK3399, which doesn't seem to work
> >   out of the box and needs more research.
> > * Support pass-thru setting when GAMMA_LUT is NULL.
> > * Add a check for the gamma size, as suggested by Ilia.
> > * Move gamma setting to atomic_commit_tail, as pointed
> >   out by Jacopo/Laurent, is the correct way.
> >
> > Ezequiel Garcia (3):
> >   dt-bindings: display: rockchip: document VOP gamma LUT address
> >   drm/rockchip: Add optional support for CRTC gamma LUT
> >   ARM: dts: rockchip: Add RK3288 VOP gamma LUT address
> >
> >  .../display/rockchip/rockchip-vop.txt         |   6 +-
> >  arch/arm/boot/dts/rk3288.dtsi                 |   4 +-
> >  drivers/gpu/drm/rockchip/rockchip_drm_fb.c    |   3 +
> >  drivers/gpu/drm/rockchip/rockchip_drm_vop.c   | 114 ++++++++++++++++++
> >  drivers/gpu/drm/rockchip/rockchip_drm_vop.h   |   7 ++
> >  drivers/gpu/drm/rockchip/rockchip_vop_reg.c   |   2 +
> >  6 files changed, 133 insertions(+), 3 deletions(-)

I will note that I can confirm that the "gamma_test" app present on
Chrome OS can be shown to work with this series, both on eDP and HDMI.
I see a nice shiny RGB pattern on the screen.  Thus:

Tested-by: Douglas Anderson <dianders@chromium.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

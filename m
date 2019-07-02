Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C087A5CE5D
	for <lists+linux-rockchip@lfdr.de>; Tue,  2 Jul 2019 13:26:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u/PmFD8yjDibcIJ4ly97elXgp8155RiQfnuZIdwiIaE=; b=HUhOUM7y0/b2fy
	tldkEeYRp1y9md9lh1n5Xlq5MavOYBfTGNuVBBD5PXA6LP05C/ZaE0zLax6fW4wr7/EZZrlhaJC/c
	Oj55nPVNqr6ZSgzmTyJvZl69muYbmyimV/XyvJVB8CZ82fgMtgW+DDBHBdK04MI5UQGlta5Je21HI
	G8rwn9BIRWeEmb4LDV3oqrK9vG5bOpEHStdFgfF7xRXtU+7yoF87Jp0Usgfeg9BfhL8merP7PWLsq
	OA1SZu8YOu7FX9bpTxlzQSe5U7KSb5qPr23n0R2l3dyS0sxW3YOvygZYf75JmpVJUtI+CAQ/1ll6b
	8R8fMUs2mGGqpkihGXxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiGvo-0007X1-MA; Tue, 02 Jul 2019 11:26:41 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiGvl-0007Vs-7C
 for linux-rockchip@lists.infradead.org; Tue, 02 Jul 2019 11:26:38 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id B0A022852D9
Message-ID: <3c68bf286d8b75ac339df0eab43d276667e073c2.camel@collabora.com>
Subject: Re: [PATCH v2 0/3] RK3288 Gamma LUT
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Date: Tue, 02 Jul 2019 08:26:22 -0300
In-Reply-To: <20190621211346.1324-1-ezequiel@collabora.com>
References: <20190621211346.1324-1-ezequiel@collabora.com>
Organization: Collabora
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_042637_387167_CC5F10EE 
X-CRM114-Status: GOOD (  17.02  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
 Jacopo Mondi <jacopo@jmondi.org>, Rob Herring <robh+dt@kernel.org>,
 linux-kernel@vger.kernel.org, Sandy Huang <hjc@rock-chips.com>,
 dri-devel@lists.freedesktop.org, Douglas Anderson <dianders@chromium.org>,
 linux-rockchip@lists.infradead.org,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Sean Paul <seanpaul@chromium.org>, kernel@collabora.com,
 Ilia Mirkin <imirkin@alum.mit.edu>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Heiko,

On Fri, 2019-06-21 at 18:13 -0300, Ezequiel Garcia wrote:
> Let's support Gamma LUT configuration on RK3288 SoCs.
> 
> In order to do so, this series adds a new and optional
> address resource.
>     
> A separate address resource is required because on this RK3288,
> the LUT address is after the MMU address, which is requested
> by the iommu driver. This prevents the DRM driver
> from requesting an entire register space.
> 
> The current implementation works for RGB 10-bit tables, as that
> is what seems to work on RK3288.
> 
> This has been tested on a Rock2 Square board, using
> a hacked 'modetest' tool, with legacy and atomic APIs. 
> 
> Thanks,
> Eze
> 
> Changes from v1:
> * drop explicit linear LUT after finding a proper
>   way to disable gamma correction.
> * avoid setting gamma is the CRTC is not active.
> * s/int/unsigned int as suggested by Jacopo.
> * only enable color management and set gamma size
>   if gamma LUT is supported, suggested by Doug.
> * drop the reg-names usage, and instead just use indexed reg
>   specifiers, suggested by Doug.
> 
> Changes from RFC:
> * Request (an optional) address resource for the LUT.
> * Add devicetree changes.
> * Drop support for RK3399, which doesn't seem to work
>   out of the box and needs more research.
> * Support pass-thru setting when GAMMA_LUT is NULL.
> * Add a check for the gamma size, as suggested by Ilia.
> * Move gamma setting to atomic_commit_tail, as pointed
>   out by Jacopo/Laurent, is the correct way.
> 
> Ezequiel Garcia (3):
>   dt-bindings: display: rockchip: document VOP gamma LUT address
>   drm/rockchip: Add optional support for CRTC gamma LUT
>   ARM: dts: rockchip: Add RK3288 VOP gamma LUT address
> 
>  .../display/rockchip/rockchip-vop.txt         |   6 +-
>  arch/arm/boot/dts/rk3288.dtsi                 |   4 +-
>  drivers/gpu/drm/rockchip/rockchip_drm_fb.c    |   3 +
>  drivers/gpu/drm/rockchip/rockchip_drm_vop.c   | 114 ++++++++++++++++++
>  drivers/gpu/drm/rockchip/rockchip_drm_vop.h   |   7 ++
>  drivers/gpu/drm/rockchip/rockchip_vop_reg.c   |   2 +
>  6 files changed, 133 insertions(+), 3 deletions(-)
> 

Any other feedback on this series? If you are happy with the approach now,
I am wondering if you can take it or if it's way too late.

Thanks,
Eze



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

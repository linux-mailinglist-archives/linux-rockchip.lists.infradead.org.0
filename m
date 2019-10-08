Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FC2CD0141
	for <lists+linux-rockchip@lfdr.de>; Tue,  8 Oct 2019 21:33:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hR5ihoMJDzmf6JMjSJgH/6zf08iK5gLboxlguQxwSQg=; b=rzwvGW/LjIZeLa
	Q7CtKKvg/xIqq/mLVkITHh7vtzNZlms7Dh7yav0P/aPWNHQ6nTdGlAUOqJrjYqpOfWrHIuMGJ4zwD
	bH/0p8S6efSyrzzXWFFPpBpQ1r5GgKhKEkOv0rV3TlE6OwvEotJZcKE/VBz2qzbEtsedfF19clpGM
	9ti4zXNhNYv552QuI2xNuM1ddedZ8aL6IorjCgcbNrfPoiIlnDrlH0RMnHdAX6BNdieb7mpN833/K
	8zft3vWujeW38/xjqMphGLXBXm187g1cvvUk7LpS7XpJ0iBqQiAdnqpKPlRIfWWRsO8DPHVN9FnxU
	mJpkstgfRtn4qIF2tSzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHvF0-0003K3-6A; Tue, 08 Oct 2019 19:33:50 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHvEw-0003Jf-Cm
 for linux-rockchip@lists.infradead.org; Tue, 08 Oct 2019 19:33:48 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id B055128EB3B
Message-ID: <9cdd23c20ed91d4c4654aaae27d8c3addfd9af3f.camel@collabora.com>
Subject: Re: [PATCH v3 3/5] drm/rockchip: Add optional support for CRTC
 gamma LUT
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Sean Paul <sean@poorly.run>
Date: Tue, 08 Oct 2019 16:33:35 -0300
In-Reply-To: <dad6ee9aa3699af0f794f467224a8a01798d86b2.camel@collabora.com>
References: <20190930222802.32088-1-ezequiel@collabora.com>
 <20190930222802.32088-4-ezequiel@collabora.com>
 <20191007185432.GG126146@art_vandelay>
 <dad6ee9aa3699af0f794f467224a8a01798d86b2.camel@collabora.com>
Organization: Collabora
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_123346_695204_710D1313 
X-CRM114-Status: GOOD (  29.19  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Jacopo Mondi <jacopo@jmondi.org>,
 Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
 linux-kernel@vger.kernel.org, Sandy Huang <hjc@rock-chips.com>,
 dri-devel@lists.freedesktop.org, Douglas Anderson <dianders@chromium.org>,
 linux-rockchip@lists.infradead.org,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Sean Paul <seanpaul@chromium.org>, Rob Herring <robh+dt@kernel.org>,
 Jacopo Mondi <jacopo+renesas@jmondi.org>, kernel@collabora.com,
 Ilia Mirkin <imirkin@alum.mit.edu>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Tue, 2019-10-08 at 16:23 -0300, Ezequiel Garcia wrote:
> Hello Sean,
> 
> On Mon, 2019-10-07 at 14:54 -0400, Sean Paul wrote:
> > On Mon, Sep 30, 2019 at 07:28:00PM -0300, Ezequiel Garcia wrote:
> > > Add an optional CRTC gamma LUT support, and enable it on RK3288.
> > > This is currently enabled via a separate address resource,
> > > which needs to be specified in the devicetree.
> > > 
> > > The address resource is required because on some SoCs, such as
> > > RK3288, the LUT address is after the MMU address, and the latter
> > > is supported by a different driver. This prevents the DRM driver
> > > from requesting an entire register space.
> > > 
> > > The current implementation works for RGB 10-bit tables, as that
> > > is what seems to work on RK3288.
> > > 
> > > Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> > > Reviewed-by: Douglas Anderson <dianders@chromium.org>
> > > Reviewed-by: Jacopo Mondi <jacopo+renesas@jmondi.org>
> > > ---
> > > Changes from v2:
> > > * None.
> > > 
> > > Changes from v1:
> > > * drop explicit linear LUT after finding a proper
> > >   way to disable gamma correction.
> > > * avoid setting gamma is the CRTC is not active.
> > > * s/int/unsigned int as suggested by Jacopo.
> > > * only enable color management and set gamma size
> > >   if gamma LUT is supported, suggested by Doug.
> > > * drop the reg-names usage, and instead just use indexed reg
> > >   specifiers, suggested by Doug.
> > > 
> > > Changes from RFC:
> > > * Request (an optional) address resource for the LUT.
> > > * Drop support for RK3399, which doesn't seem to work
> > >   out of the box and needs more research.
> > > * Support pass-thru setting when GAMMA_LUT is NULL.
> > > * Add a check for the gamma size, as suggested by Ilia.
> > > * Move gamma setting to atomic_commit_tail, as pointed
> > >   out by Jacopo/Laurent, is the correct way.
> > > ---
> > >  drivers/gpu/drm/rockchip/rockchip_drm_fb.c  |   3 +
> > >  drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 114 ++++++++++++++++++++
> > >  drivers/gpu/drm/rockchip/rockchip_drm_vop.h |   7 ++
> > >  drivers/gpu/drm/rockchip/rockchip_vop_reg.c |   2 +
> > >  4 files changed, 126 insertions(+)
> > > 
> > > diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_fb.c b/drivers/gpu/drm/rockchip/rockchip_drm_fb.c
> > > index dba352ec0ee3..fd1d987698ab 100644
> > > --- a/drivers/gpu/drm/rockchip/rockchip_drm_fb.c
> > > +++ b/drivers/gpu/drm/rockchip/rockchip_drm_fb.c
> > > @@ -17,6 +17,7 @@
> > >  #include "rockchip_drm_drv.h"
> > >  #include "rockchip_drm_fb.h"
> > >  #include "rockchip_drm_gem.h"
> > > +#include "rockchip_drm_vop.h"
> > >  
> > >  static const struct drm_framebuffer_funcs rockchip_drm_fb_funcs = {
> > >  	.destroy       = drm_gem_fb_destroy,
> > > @@ -112,6 +113,8 @@ rockchip_atomic_helper_commit_tail_rpm(struct drm_atomic_state *old_state)
> > >  
> > >  	drm_atomic_helper_commit_modeset_disables(dev, old_state);
> > >  
> > > +	rockchip_drm_vop_gamma_set(old_state);
> > > +
> > 
> > Instead of duplicating the commit_tail helper, could you just implement
> > .atomic_begin() and call this from there? I think the only hitch is if you
> > need this to be completed before crtc->atomic_enable(), at which point you
> > might need to call it from vop_crtc_atomic_enable() and then detect that in
> > atomic_begin()
> > 
> 
> I think moving this to .atomic_begin might be enough. Let me send a new
> series and we can see how that goes.
> 

Oh, before going forward, pleaste note that the first iteration
of this patch (as noted in the changelog) was applying the gamma lut
on .atomic_flush. However, Laurent and Jacopo pointed out that
it might add some tearing to do so, and that's why it was moved
to commit_tail.

I have to admit I'm not too sure about the difference between
applying this gamma LUT on atomic_begin or atomic_flush,
perhaps you can clarify that?

Thanks!
Ezequiel 



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

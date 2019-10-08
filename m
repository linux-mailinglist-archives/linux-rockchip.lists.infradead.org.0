Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABAB3D0323
	for <lists+linux-rockchip@lfdr.de>; Tue,  8 Oct 2019 23:55:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XffryKA25mDhv2265RIQkSQ2WrG9XthHL61e7a6MJJY=; b=MjItx3UXvWKpt1
	B/OPfsl5yLlYMZD1epTugujmywENpuLqMnnSZsEvAVVbeBy/B9W/XFe6UAkEUYg5Lb0n5eYguudeG
	g8yimJrfV+Z1CA2xxQe4A4G5vvP/vPjo1thIiiKZwCMo2uFNyeRdlU2W7OA9dLAZa3i4VkBnUWiSx
	ulwn6WzpePQZy0M4Zvq4fzvLvM8bmeDHkCXYwGDrxJFbhP0uFmyw13Gbn/Pj1324bZHJC1T/TcHrC
	4nKFbsGEpSvNQloIMffHL6nkH/MyxSQfsthh1CfY5R1EGnHiqzVwGCU8bb/aW+8LmV49kaZY2/j5S
	6o53gaNY5zo8qsYuxlng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHxSR-0005El-4P; Tue, 08 Oct 2019 21:55:51 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHxSN-0005E7-UR
 for linux-rockchip@lists.infradead.org; Tue, 08 Oct 2019 21:55:49 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id A5CDD28D7B3
Message-ID: <d37e781548fbcb1cb891d681b322645b7af7f01b.camel@collabora.com>
Subject: Re: [PATCH v3 3/5] drm/rockchip: Add optional support for CRTC
 gamma LUT
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Sean Paul <sean@poorly.run>
Date: Tue, 08 Oct 2019 18:55:34 -0300
In-Reply-To: <20191008200339.GD85762@art_vandelay>
References: <20190930222802.32088-1-ezequiel@collabora.com>
 <20190930222802.32088-4-ezequiel@collabora.com>
 <20191007185432.GG126146@art_vandelay>
 <dad6ee9aa3699af0f794f467224a8a01798d86b2.camel@collabora.com>
 <9cdd23c20ed91d4c4654aaae27d8c3addfd9af3f.camel@collabora.com>
 <20191008200339.GD85762@art_vandelay>
Organization: Collabora
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_145548_242744_A30E8608 
X-CRM114-Status: GOOD (  34.41  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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

On Tue, 2019-10-08 at 16:03 -0400, Sean Paul wrote:
> On Tue, Oct 08, 2019 at 04:33:35PM -0300, Ezequiel Garcia wrote:
> > On Tue, 2019-10-08 at 16:23 -0300, Ezequiel Garcia wrote:
> > > Hello Sean,
> > > 
> > > On Mon, 2019-10-07 at 14:54 -0400, Sean Paul wrote:
> > > > On Mon, Sep 30, 2019 at 07:28:00PM -0300, Ezequiel Garcia wrote:
> > > > > Add an optional CRTC gamma LUT support, and enable it on RK3288.
> > > > > This is currently enabled via a separate address resource,
> > > > > which needs to be specified in the devicetree.
> > > > > 
> > > > > The address resource is required because on some SoCs, such as
> > > > > RK3288, the LUT address is after the MMU address, and the latter
> > > > > is supported by a different driver. This prevents the DRM driver
> > > > > from requesting an entire register space.
> > > > > 
> > > > > The current implementation works for RGB 10-bit tables, as that
> > > > > is what seems to work on RK3288.
> > > > > 
> > > > > Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> > > > > Reviewed-by: Douglas Anderson <dianders@chromium.org>
> > > > > Reviewed-by: Jacopo Mondi <jacopo+renesas@jmondi.org>
> > > > > ---
> > > > > Changes from v2:
> > > > > * None.
> > > > > 
> > > > > Changes from v1:
> > > > > * drop explicit linear LUT after finding a proper
> > > > >   way to disable gamma correction.
> > > > > * avoid setting gamma is the CRTC is not active.
> > > > > * s/int/unsigned int as suggested by Jacopo.
> > > > > * only enable color management and set gamma size
> > > > >   if gamma LUT is supported, suggested by Doug.
> > > > > * drop the reg-names usage, and instead just use indexed reg
> > > > >   specifiers, suggested by Doug.
> > > > > 
> > > > > Changes from RFC:
> > > > > * Request (an optional) address resource for the LUT.
> > > > > * Drop support for RK3399, which doesn't seem to work
> > > > >   out of the box and needs more research.
> > > > > * Support pass-thru setting when GAMMA_LUT is NULL.
> > > > > * Add a check for the gamma size, as suggested by Ilia.
> > > > > * Move gamma setting to atomic_commit_tail, as pointed
> > > > >   out by Jacopo/Laurent, is the correct way.
> > > > > ---
> > > > >  drivers/gpu/drm/rockchip/rockchip_drm_fb.c  |   3 +
> > > > >  drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 114 ++++++++++++++++++++
> > > > >  drivers/gpu/drm/rockchip/rockchip_drm_vop.h |   7 ++
> > > > >  drivers/gpu/drm/rockchip/rockchip_vop_reg.c |   2 +
> > > > >  4 files changed, 126 insertions(+)
> > > > > 
> > > > > diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_fb.c b/drivers/gpu/drm/rockchip/rockchip_drm_fb.c
> > > > > index dba352ec0ee3..fd1d987698ab 100644
> > > > > --- a/drivers/gpu/drm/rockchip/rockchip_drm_fb.c
> > > > > +++ b/drivers/gpu/drm/rockchip/rockchip_drm_fb.c
> > > > > @@ -17,6 +17,7 @@
> > > > >  #include "rockchip_drm_drv.h"
> > > > >  #include "rockchip_drm_fb.h"
> > > > >  #include "rockchip_drm_gem.h"
> > > > > +#include "rockchip_drm_vop.h"
> > > > >  
> > > > >  static const struct drm_framebuffer_funcs rockchip_drm_fb_funcs = {
> > > > >  	.destroy       = drm_gem_fb_destroy,
> > > > > @@ -112,6 +113,8 @@ rockchip_atomic_helper_commit_tail_rpm(struct drm_atomic_state *old_state)
> > > > >  
> > > > >  	drm_atomic_helper_commit_modeset_disables(dev, old_state);
> > > > >  
> > > > > +	rockchip_drm_vop_gamma_set(old_state);
> > > > > +
> > > > 
> > > > Instead of duplicating the commit_tail helper, could you just implement
> > > > .atomic_begin() and call this from there? I think the only hitch is if you
> > > > need this to be completed before crtc->atomic_enable(), at which point you
> > > > might need to call it from vop_crtc_atomic_enable() and then detect that in
> > > > atomic_begin()
> > > > 
> > > 
> > > I think moving this to .atomic_begin might be enough. Let me send a new
> > > series and we can see how that goes.
> > > 
> > 
> > Oh, before going forward, pleaste note that the first iteration
> > of this patch (as noted in the changelog) was applying the gamma lut
> > on .atomic_flush. However, Laurent and Jacopo pointed out that
> > it might add some tearing to do so, and that's why it was moved
> > to commit_tail.
> > 
> > I have to admit I'm not too sure about the difference between
> > applying this gamma LUT on atomic_begin or atomic_flush,
> > perhaps you can clarify that?
> 
> The only difference between what you have now and calling it in atomic_begin
> is that as you have it now, it's set before crtc->atomic_enable() is called.
> I think in order to address Ville's concerns on the other patch, you'll need
> to set it the lut in .atomic_enable() anyways, so here's what I would suggest:
> 
> - Set the LUT in .atomic_enable() wherever it makes sense (you have it at the
>   start now)
> - Add an .atomic_begin() implementation and check state->color_mgmt_changed and
>   state->active_changed. color_mgmt_changed && !active_changed, set the lut
> - Remove patches 1 & 5
> 
> ...I think :-)
> 

OK, that helped! Patches in 3...2...

Regards,
Ezequiel


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

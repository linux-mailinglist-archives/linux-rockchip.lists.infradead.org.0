Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4161949897
	for <lists+linux-rockchip@lfdr.de>; Tue, 18 Jun 2019 07:15:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VRAsEbBFMT8++2yHG1TZKrszk/PPt5RSzOMHuWDcHOw=; b=XNKOoOLG41Ld3w
	2bxWU1uQK8BqiSzTZfne1C7garCwnBgVXqvMmRf9C+OiiKBQ+l/6TVDyp7JlIsnVZfOtG23O3F6om
	Nb3fzpmmIEPvwELK8SNwGZsGx0VnZ5wW0OqPFHQscowop46Jfj0u/+4b9U8CSf5MbmcnUjCPx2U7N
	Y9pErbCC2Jj++6XSJVsPrei3nlf267tY7DW2bWvaOI0KmT0spkVCguiueWyGDY3cwPoZlweyciwNH
	X9Z3Oj5QgF9807cMWVg1yGplIu2iungXNIUrfe2oJZ7BoWj0s61cj13PEsBB2Slo1DOcfXcpv7IZn
	p3WVCgYarfioIJLE6vsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hd6TK-0003Ud-Pk; Tue, 18 Jun 2019 05:15:54 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hd6TG-0003Tk-AH
 for linux-rockchip@lists.infradead.org; Tue, 18 Jun 2019 05:15:52 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id A672E260A33
Message-ID: <5d2391b3a1e718933c17be60d3b8e84d4bfa1a94.camel@collabora.com>
Subject: Re: [RFC/WIP] drm/rockchip: Support CRTC gamma LUT
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Jacopo Mondi <jacopo@jmondi.org>
Date: Tue, 18 Jun 2019 02:15:38 -0300
In-Reply-To: <20190617100600.y6ytaueego6eelxz@uno.localdomain>
References: <20190613192244.5447-1-ezequiel@collabora.com>
 <20190617100600.y6ytaueego6eelxz@uno.localdomain>
Organization: Collabora
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_221551_563422_106C9029 
X-CRM114-Status: GOOD (  22.04  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
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
Cc: Douglas Anderson <dianders@chromium.org>, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Sean Paul <seanpaul@chromium.org>, kernel@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Mon, 2019-06-17 at 12:06 +0200, Jacopo Mondi wrote:
> Hi Ezequiel,
>    one small question, as I'm working on supporting gamma LUT for
> rcar-du as well, and there's one point not totally clear to me
> 
> 
> On Thu, Jun 13, 2019 at 04:22:44PM -0300, Ezequiel Garcia wrote:
> > Add CRTC gamma LUT configuration on RK3288 and RK3399.
> > 
> > Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> > ---
> > This patch seems to work well on RK3288, but produces
> > a distorted output on RK3399. I was hoping
> > someone could have any idea, so we can support both
> > platforms.
> > 
> >  drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 87 +++++++++++++++++++++
> >  drivers/gpu/drm/rockchip/rockchip_drm_vop.h |  2 +
> >  drivers/gpu/drm/rockchip/rockchip_vop_reg.c |  4 +
> >  drivers/gpu/drm/rockchip/rockchip_vop_reg.h |  1 +
> >  4 files changed, 94 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> > index 12ed5265a90b..8381679c1045 100644
> > --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> > +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> > @@ -38,6 +38,8 @@
> >  #include "rockchip_drm_vop.h"
> >  #include "rockchip_rgb.h"
> > 
> > +#define VOP_GAMMA_LUT_SIZE 1024
> > +
> >  #define VOP_WIN_SET(vop, win, name, v) \
> >  		vop_reg_set(vop, &win->phy->name, win->base, ~0, v, #name)
> >  #define VOP_SCL_SET(vop, win, name, v) \
> > @@ -137,6 +139,7 @@ struct vop {
> > 
> >  	uint32_t *regsbak;
> >  	void __iomem *regs;
> > +	void __iomem *lut_regs;
> > 
> >  	/* physical map length of vop register */
> >  	uint32_t len;
> > @@ -1153,6 +1156,46 @@ static void vop_wait_for_irq_handler(struct vop *vop)
> >  	synchronize_irq(vop->irq);
> >  }
> > 
> > +static bool vop_dsp_lut_is_enable(struct vop *vop)
> > +{
> > +	return vop_read_reg(vop, 0, &vop->data->common->dsp_lut_en);
> > +}
> > +
> > +static void vop_crtc_gamma_set(struct vop *vop, struct drm_crtc *crtc,
> > +			       struct drm_crtc_state *state)
> > +{
> > +	struct drm_color_lut *lut;
> > +	int i, idle, ret;
> > +
> > +	if (!state->gamma_lut)
> > +		return;
> > +	lut = state->gamma_lut->data;
> > +
> > +	spin_lock(&vop->reg_lock);
> > +	VOP_REG_SET(vop, common, dsp_lut_en, 0);
> > +	vop_cfg_done(vop);
> > +	spin_unlock(&vop->reg_lock);
> > +
> > +	ret = readx_poll_timeout(vop_dsp_lut_is_enable, vop,
> > +			   idle, !idle, 5, 10 * 30000);
> > +	if (ret)
> > +		return;
> > +
> > +	spin_lock(&vop->reg_lock);
> > +	for (i = 0; i < crtc->gamma_size; i++) {
> > +		u32 word;
> > +
> > +		word = (drm_color_lut_extract(lut[i].red, 10) << 20) |
> > +		       (drm_color_lut_extract(lut[i].green, 10) << 10) |
> > +			drm_color_lut_extract(lut[i].blue, 10);
> > +		writel(word, vop->lut_regs + i * 4);
> > +	}
> > +
> > +	VOP_REG_SET(vop, common, dsp_lut_en, 1);
> > +	vop_cfg_done(vop);
> > +	spin_unlock(&vop->reg_lock);
> > +}
> > +
> >  static void vop_crtc_atomic_flush(struct drm_crtc *crtc,
> >  				  struct drm_crtc_state *old_crtc_state)
> >  {
> > @@ -1201,6 +1244,9 @@ static void vop_crtc_atomic_flush(struct drm_crtc *crtc,
> >  		drm_flip_work_queue(&vop->fb_unref_work, old_plane_state->fb);
> >  		set_bit(VOP_PENDING_FB_UNREF, &vop->pending);
> >  	}
> > +
> > +	if (vop->lut_regs && crtc->state->color_mgmt_changed)
> > +		vop_crtc_gamma_set(vop, crtc, crtc->state);
> 
> Which one is the right point when to call LUT update functions?
> 
> I initially added my callback in atomic_flush as you did here, mostly
> because I've found examples in other drivers in drm and went in
> cargo cult mode. I've been then suggested by Laurent that atomic_flush()
> might not be the right place where to do so, as it gets called after
> the plane updates (iirc, the DRM atomic API is not something I'm that
> familiar with yet).
> 
> So I moved my LUT update function in the atomic_commit_tail callback,
> which is meant to actually commit a CRTC to the hw.
> 
> What's your opinion on this?
> 

I have to admit this is not exactly clear to me either.

Let me make sure I understand the issue. You are concerned about
getting some tearing if the CRTC gamma LUT is affected
in the atomic_flush?

If that's the case, it shouldn't be too hard to confirm (I think).

Thanks,
Eze


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

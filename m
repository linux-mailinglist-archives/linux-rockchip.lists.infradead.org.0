Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCF0E4ECC5
	for <lists+linux-rockchip@lfdr.de>; Fri, 21 Jun 2019 18:00:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N+2lR9CIXXtYpmxy9sRz/vZyTCkyUytHJYv1wwTQtFE=; b=h4zivSRfmoS1i+
	cpJwFLHMX2gU/ETwxjUxtzxsbSnyGHlDdDcpRtn69HDd1mVmgqbHYtwXbd0Nsh6zAI89wSRZj2pyU
	eqrwCBXMo02EMfS71+HUznt4bqJfITHrB764iwmNwLULxwJ6ZBIhPd/RDPpZ8cDziFAIC3HYemAgU
	ilR5Z9RNmPJNrfM0iYmmf2raaN4Jt2zLyDxbpGSFPbXOO2cV+qT/V4KMQElTXOG4C64BfoETv/sNr
	IJif3GiVry8e4GNIq3PjIMqBY99AcBQcmHceEPwhAWQyRkwcvtzVQSK+zAh9OHZQa12/6nL0v+8d7
	ozseCr7R1xpw7KMIKnHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heLxc-0008LW-0C; Fri, 21 Jun 2019 16:00:20 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heLwX-00066a-D5
 for linux-rockchip@lists.infradead.org; Fri, 21 Jun 2019 15:59:15 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 48D9A260D87
Message-ID: <436fb5679ee8e1356a81d4224befa318778e71ac.camel@collabora.com>
Subject: Re: [PATCH 2/3] drm/rockchip: Add optional support for CRTC gamma LUT
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Jacopo Mondi <jacopo@jmondi.org>
Date: Fri, 21 Jun 2019 12:59:02 -0300
In-Reply-To: <20190621082222.4j3oghm7oevgt32n@uno.localdomain>
References: <20190618213406.7667-1-ezequiel@collabora.com>
 <20190618213406.7667-3-ezequiel@collabora.com>
 <20190621082222.4j3oghm7oevgt32n@uno.localdomain>
Organization: Collabora
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_085913_892773_1269A2D5 
X-CRM114-Status: GOOD (  35.43  )
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
 Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
 linux-kernel@vger.kernel.org, Sandy Huang <hjc@rock-chips.com>,
 dri-devel@lists.freedesktop.org, Douglas Anderson <dianders@chromium.org>,
 linux-rockchip@lists.infradead.org,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Sean Paul <seanpaul@chromium.org>, Rob Herring <robh+dt@kernel.org>,
 kernel@collabora.com, Ilia Mirkin <imirkin@alum.mit.edu>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Jacopo,

Thanks for the review.

On Fri, 2019-06-21 at 10:22 +0200, Jacopo Mondi wrote:
> Hi Ezequiel,
>    just a few minor comments. Thanks for this new iteration.
> 
> On Tue, Jun 18, 2019 at 06:34:05PM -0300, Ezequiel Garcia wrote:
> > Add an optional CRTC gamma LUT support, and enable it on RK3288.
> > This is currently enabled via a separate address resource,
> > which needs to be specified in the devicetree.
> > 
> > The address resource is required because on some SoCs, such as
> > RK3288, the LUT address is after the MMU address, and the latter
> > is supported by a different driver. This prevents the DRM driver
> > from requesting an entire register space.
> > 
> > The current implementation works for RGB 10-bit tables, as that
> > is what seems to work on RK3288.
> > 
> > Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> > ---
> > Changes from RFC:
> > * Request (an optional) address resource for the LUT.
> > * Drop support for RK3399, which doesn't seem to work
> >   out of the box and needs more research.
> > * Support pass-thru setting when GAMMA_LUT is NULL.
> > * Add a check for the gamma size, as suggested by Ilia.
> > * Move gamma setting to atomic_commit_tail, as pointed
> >   out by Jacopo/Laurent, is the correct way.
> > ---
> >  drivers/gpu/drm/rockchip/rockchip_drm_fb.c  |   3 +
> >  drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 106 ++++++++++++++++++++
> >  drivers/gpu/drm/rockchip/rockchip_drm_vop.h |   7 ++
> >  drivers/gpu/drm/rockchip/rockchip_vop_reg.c |   2 +
> >  4 files changed, 118 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_fb.c b/drivers/gpu/drm/rockchip/rockchip_drm_fb.c
> > index 1c69066b6894..bf9ad6240971 100644
> > --- a/drivers/gpu/drm/rockchip/rockchip_drm_fb.c
> > +++ b/drivers/gpu/drm/rockchip/rockchip_drm_fb.c
> > @@ -16,6 +16,7 @@
> >  #include "rockchip_drm_fb.h"
> >  #include "rockchip_drm_gem.h"
> >  #include "rockchip_drm_psr.h"
> > +#include "rockchip_drm_vop.h"
> > 
> >  static int rockchip_drm_fb_dirty(struct drm_framebuffer *fb,
> >  				 struct drm_file *file,
> > @@ -128,6 +129,8 @@ rockchip_atomic_helper_commit_tail_rpm(struct drm_atomic_state *old_state)
> > 
> >  	drm_atomic_helper_commit_modeset_disables(dev, old_state);
> > 
> > +	rockchip_drm_vop_gamma_set(old_state);
> > +
> >  	drm_atomic_helper_commit_modeset_enables(dev, old_state);
> > 
> >  	drm_atomic_helper_commit_planes(dev, old_state,
> > diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> > index 12ed5265a90b..5b6edbe2673f 100644
> > --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> > +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> > @@ -137,6 +137,7 @@ struct vop {
> > 
> >  	uint32_t *regsbak;
> >  	void __iomem *regs;
> > +	void __iomem *lut_regs;
> > 
> >  	/* physical map length of vop register */
> >  	uint32_t len;
> > @@ -1153,6 +1154,94 @@ static void vop_wait_for_irq_handler(struct vop *vop)
> >  	synchronize_irq(vop->irq);
> >  }
> > 
> > +static bool vop_dsp_lut_is_enable(struct vop *vop)
> > +{
> > +	return vop_read_reg(vop, 0, &vop->data->common->dsp_lut_en);
> > +}
> > +
> > +static void vop_crtc_write_gamma_lut(struct vop *vop, struct drm_crtc *crtc)
> > +{
> > +	struct drm_color_lut *lut = crtc->state->gamma_lut->data;
> > +	int i;
> 
> unsigned i
> 

Sure, my bad.

> > +
> > +	for (i = 0; i < crtc->gamma_size; i++) {
> > +		u32 word;
> 
> here and below you could declare and initialize in one line. Matter of
> tastes, up to you.
> 
> > +
> > +		word = (drm_color_lut_extract(lut[i].red, 10) << 20) |
> > +		       (drm_color_lut_extract(lut[i].green, 10) << 10) |
> > +			drm_color_lut_extract(lut[i].blue, 10);
> > +		writel(word, vop->lut_regs + i * 4);
> > +	}
> > +}
> > +
> > +static void vop_crtc_gamma_set(struct vop *vop, struct drm_crtc *crtc,
> > +			       struct drm_crtc_state *old_state)
> > +{
> > +	int idle, ret, i;
> 
> idle and i could be unsigned
> 

Ditto.

> > +
> > +	spin_lock(&vop->reg_lock);
> > +	VOP_REG_SET(vop, common, dsp_lut_en, 0);
> > +	vop_cfg_done(vop);
> > +	spin_unlock(&vop->reg_lock);
> > +
> > +	ret = readx_poll_timeout(vop_dsp_lut_is_enable, vop,
> > +			   idle, !idle, 5, 30 * 1000);
> > +	if (ret)
> > +		return;
> > +
> > +	spin_lock(&vop->reg_lock);
> > +
> > +	if (crtc->state->gamma_lut) {
> > +		if (!old_state->gamma_lut || (crtc->state->gamma_lut->base.id !=
> > +					      old_state->gamma_lut->base.id))
> > +			vop_crtc_write_gamma_lut(vop, crtc);
> > +	} else {
> 
> i could also be declared here...
> 
> > +		for (i = 0; i < crtc->gamma_size; i++) {
> > +			u32 word;
> > +
> > +			word = (i << 20) | (i << 10) | i;
> > +			writel(word, vop->lut_regs + i * 4);
> > +		}
> 
> I might be confused, but are you here configuring a linear LUT table?
> Isn't this equivalent to have it disabled?
> 

Like I replied Ilia, I couldn't find a way to disable gamma correction.

However, after some more experiments, seems I could and so we can
drop this linear table.

> > +	}
> > +
> > +	VOP_REG_SET(vop, common, dsp_lut_en, 1);
> > +	vop_cfg_done(vop);
> > +	spin_unlock(&vop->reg_lock);
> > +}
> > +
> > +static int vop_crtc_atomic_check(struct drm_crtc *crtc,
> > +				   struct drm_crtc_state *crtc_state)
> > +{
> > +	struct vop *vop = to_vop(crtc);
> > +
> > +	if (vop->lut_regs && crtc_state->color_mgmt_changed &&
> > +	    crtc_state->gamma_lut) {
> > +		int len;
> > +
> > +		len = drm_color_lut_size(crtc_state->gamma_lut);
> > +		if (len != crtc->gamma_size) {
> 
> Don't you accept LUT tables whose size is < that the maximum
> crtc->gamma_size ?
> 

Well, the hardware expects a 1024 LUT (because the format is RGB 10-bit).

If we accept smaller tables, the kernel would have to interpolate,
which I think it's nasty and not too useful.

Let's leave this to userspace.

> > +			DRM_DEBUG_KMS("Invalid LUT size; got %d, expected %d\n",
> > +				      len, crtc->gamma_size);
> > +			return -EINVAL;
> > +		}
> > +	}
> 
> Most (but not all) functions in this file have an empty line before the
> return closing the function.
> 

Ditto.

> > +	return 0;
> > +}
> > +
> > +void rockchip_drm_vop_gamma_set(struct drm_atomic_state *state)
> > +{
> > +	struct drm_crtc_state *old_crtc_state;
> > +	struct drm_crtc *crtc;
> > +	int i;
> 
> unsigned i ?
> 

Ditto.

> I'm glad you've been able to verify atomic_flush was not the right
> place where to update the LUT tables, as my testing is limited to
> run kms++ tests and I didn't notice any particular artifact. Thanks
> for checking!
> 

Well, I just added a mdelay in the gamma_set function to simulate
an artifact. With this implementation, and using the atomic API,
even with the delay, the result rendered is atomic :-)

Thanks again,
Ezequiel


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

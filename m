Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5353D1D9C
	for <lists+linux-rockchip@lfdr.de>; Thu, 10 Oct 2019 02:46:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9ZDH6R3U16iRBAuH6VZJh7VTjPhil226Vw5Sylpfc5I=; b=Q24bunDnR4kvdb
	IG2ZXCmIo409Xd19RSNXzdgdNSOhCApilRdRyj1RQEOADGPYWCMq2DvPUUvXPvyKGc+VAhwitFRsY
	jla6qnX97sCfd/Vy7SHZCNC6dfof2Y3sY+7waoGEbLxi9dLJIhwGlLx32Zaq6WzESKz7+sm6qAz+N
	tUVyPEd2uUn3joHbJIoK9tuByPRWfA22taHFlWvOTxdsYPgQIHmehNB2wGvKrZj6p/O651XO7DxcH
	8woorxZ05KhwCYEFlRdEIl3a4IK46Eo0CEeZlY8+JK/NbmwT+r/tb8+pjRWRo08h+6LC0McwMmT13
	hO0xQjUjeqybbVSei/IQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIMao-0004KB-Bz; Thu, 10 Oct 2019 00:46:10 +0000
Received: from mail-vs1-xe43.google.com ([2607:f8b0:4864:20::e43])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIMak-0004Je-SJ
 for linux-rockchip@lists.infradead.org; Thu, 10 Oct 2019 00:46:08 +0000
Received: by mail-vs1-xe43.google.com with SMTP id z14so2736447vsz.13
 for <linux-rockchip@lists.infradead.org>; Wed, 09 Oct 2019 17:46:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vanguardiasur-com-ar.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Jd6zv/jgUFv6Uo+8CynzJPGldhXHqgBv+Ky1v1k+Nuk=;
 b=iscNzzWLWcx0oCVq1jhdfQtsoDvqWFROyVb3ddID00ajMaSJM0Zy1lVPyfOO2TRGhU
 KLMncCT2yWC8FBys7/HgUv++l0GbRIAaSK0/gpNiFDWrcEyIz2N20E4LETCqJxFmjPn9
 g3ToYb+fEXGn1OUznhDaoTDSDZPmasSagoHCYHJoit7KuaiEYCwaYT/GYYVQZOFboT7U
 t95ukRhgcbt9VKjrrzQIAdIb92yS7W1Wlmq+4UIYcBc27Z4biow8ODlLc1BMw5rRWwka
 ahAt9hZoSKvavOjpNaYlfE5orR49QfNrLA9aQK7oLCrKK2rd/xB6H4HJ42U8pSifyIzT
 4wcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Jd6zv/jgUFv6Uo+8CynzJPGldhXHqgBv+Ky1v1k+Nuk=;
 b=F6Ba8gIE0OHpL6VPVaFa+NEc1c1tgwbHOq4tqLKhQ9x6TpStcNR1c9yw36udkTP79c
 w0jEWW9hrLNGOR0N460cHdJFn4tKbI1FAFT4LRLbgptF7TljfpGs5KVsgqULCT/H4u2S
 /1gfIeOpuPukmSgiAMyCq7No+A3HZmtTWVwLOvn7i3m0tJyVXtTVpf8MeGA6bdi9WRA+
 LWkNdDrXzbedLcLynNoBYmCp44xSCUCElIJ8Wb7Si2WYeR0RBdkrR2dlC0YRFdu1B0k4
 z/4ZNu7zE9jq7ZCouSyjrvyAqfEozQDhjwXqIF8KuF1LypRj/s5wvn9S5fc3SkJfZWZW
 KxaA==
X-Gm-Message-State: APjAAAWK+lxGRSRRdsZliBXk+Ru2SoTV0IrvEV2HThJkp8/VxsqCuFq6
 r/6IeUqGU88L0iC9ozuzPnfWLkgfNfeEsNn325/Vmg==
X-Google-Smtp-Source: APXvYqy0hr+gzGjZPMkosJiHcRGhgxWhmhs8dGdGo9Ng0LSLTb9Rzsa72w7qjVcDpCLRLk6Q2CTmValXnPQLm0zjvv4=
X-Received: by 2002:a05:6102:115c:: with SMTP id
 j28mr3730813vsg.105.1570668365198; 
 Wed, 09 Oct 2019 17:46:05 -0700 (PDT)
MIME-Version: 1.0
References: <20191008230038.24037-1-ezequiel@collabora.com>
 <20191008230038.24037-3-ezequiel@collabora.com>
 <20191009180136.GE85762@art_vandelay>
In-Reply-To: <20191009180136.GE85762@art_vandelay>
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Date: Wed, 9 Oct 2019 21:45:54 -0300
Message-ID: <CAAEAJfDP0PsGAoRfGyDyWj7DxgP6nwwwA1_gwLQuVy-fRDa-UA@mail.gmail.com>
Subject: Re: [PATCH v4 2/3] drm/rockchip: Add optional support for CRTC gamma
 LUT
To: Sean Paul <sean@poorly.run>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_174607_096404_81140FBA 
X-CRM114-Status: GOOD (  37.31  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Douglas Anderson <dianders@chromium.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Sean Paul <seanpaul@chromium.org>, kernel@collabora.com,
 Ezequiel Garcia <ezequiel@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hello Sean,

Thanks for the thourough review.

On Wed, 9 Oct 2019 at 15:01, Sean Paul <sean@poorly.run> wrote:
>
> On Tue, Oct 08, 2019 at 08:00:37PM -0300, Ezequiel Garcia wrote:
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
>
> Hey Ezequiel,
> Just a few comments on the actual content of the patch as opposed to my higher
> level comments yesterday. I think we're almost there, thanks for sticking this
> out!
>
> > ---
> > Changes from v3:
> > * Move to atomic_enable and atomic_begin,
> >   as discussed with Sean Paul.
> > * Dropped the Reviewed-bys.
> > Changes from v2:
> > * None.
> > Changes from v1:
> > * drop explicit linear LUT after finding a proper
> >   way to disable gamma correction.
> > * avoid setting gamma is the CRTC is not active.
> > * s/int/unsigned int as suggested by Jacopo.
> > * only enable color management and set gamma size
> >   if gamma LUT is supported, suggested by Doug.
> > * drop the reg-names usage, and instead just use indexed reg
> >   specifiers, suggested by Doug.
> > Changes from RFC:
> > * Request (an optional) address resource for the LUT.
> > * Drop support for RK3399, which doesn't seem to work
> >   out of the box and needs more research.
> > * Support pass-thru setting when GAMMA_LUT is NULL.
> > * Add a check for the gamma size, as suggested by Ilia.
> > * Move gamma setting to atomic_commit_tail, as pointed
> >   out by Jacopo/Laurent, is the correct way.
> > ---
> >  drivers/gpu/drm/rockchip/rockchip_drm_fb.c  |   1 +
> >  drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 125 ++++++++++++++++++++
> >  drivers/gpu/drm/rockchip/rockchip_drm_vop.h |   5 +
> >  drivers/gpu/drm/rockchip/rockchip_vop_reg.c |   2 +
> >  4 files changed, 133 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_fb.c b/drivers/gpu/drm/rockchip/rockchip_drm_fb.c
> > index ca01234c037c..697ee04b85cf 100644
> > --- a/drivers/gpu/drm/rockchip/rockchip_drm_fb.c
> > +++ b/drivers/gpu/drm/rockchip/rockchip_drm_fb.c
> > @@ -17,6 +17,7 @@
> >  #include "rockchip_drm_drv.h"
> >  #include "rockchip_drm_fb.h"
> >  #include "rockchip_drm_gem.h"
> > +#include "rockchip_drm_vop.h"
>
> Leftover from the previous version?
>

Yup.

> >
> >  static const struct drm_framebuffer_funcs rockchip_drm_fb_funcs = {
> >       .destroy       = drm_gem_fb_destroy,
> > diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> > index 613404f86668..85c1269a1218 100644
> > --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> > +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> > @@ -139,6 +139,7 @@ struct vop {
> >
> >       uint32_t *regsbak;
> >       void __iomem *regs;
> > +     void __iomem *lut_regs;
> >
> >       /* physical map length of vop register */
> >       uint32_t len;
> > @@ -1048,6 +1049,84 @@ static bool vop_crtc_mode_fixup(struct drm_crtc *crtc,
> >       return true;
> >  }
> >
> > +static bool vop_dsp_lut_is_enable(struct vop *vop)
>
> *enabled
>

Good catch.

> > +{
> > +     return vop_read_reg(vop, 0, &vop->data->common->dsp_lut_en);
> > +}
> > +
> > +static void vop_crtc_write_gamma_lut(struct vop *vop, struct drm_crtc *crtc)
> > +{
> > +     struct drm_color_lut *lut = crtc->state->gamma_lut->data;
> > +     unsigned int i;
> > +
> > +     for (i = 0; i < crtc->gamma_size; i++) {
> > +             u32 word;
> > +
> > +             word = (drm_color_lut_extract(lut[i].red, 10) << 20) |
> > +                    (drm_color_lut_extract(lut[i].green, 10) << 10) |
> > +                     drm_color_lut_extract(lut[i].blue, 10);
> > +             writel(word, vop->lut_regs + i * 4);
> > +     }
> > +}
> > +
> > +static void vop_crtc_gamma_set(struct vop *vop, struct drm_crtc *crtc,
> > +                            struct drm_crtc_state *old_crtc_state)
> > +{
> > +     unsigned int idle;
> > +     int ret;
> > +
>
> How about:
>
>         if (!vop->lut_regs)
>                 return;
>
> here and then you can remove that condition above the 2 callsites
>

Yes, sounds good.

> > +     /*
> > +      * In order to write the LUT to the internal memory,
> > +      * we need to first make sure the dsp_lut_en bit is cleared.
> > +      */
> > +     spin_lock(&vop->reg_lock);
> > +     VOP_REG_SET(vop, common, dsp_lut_en, 0);
> > +     vop_cfg_done(vop);
> > +     spin_unlock(&vop->reg_lock);
> > +
> > +     /*
> > +      * If the CRTC is not active, dsp_lut_en will not get cleared.
> > +      * Apparently we still need to do the above step to for
> > +      * gamma correction to be disabled.
> > +      */
> > +     if (!crtc->state->active)
> > +             return;
> > +

I have realized that the above might no longer be needed,
given we are now using atomic_enable and atomic_begin.

Not sure if the CRTC is supposed to clear its GAMMA
when disabled.

> > +     ret = readx_poll_timeout(vop_dsp_lut_is_enable, vop,
> > +                              idle, !idle, 5, 30 * 1000);
> > +     if (ret) {
> > +             DRM_DEV_ERROR(vop->dev, "display LUT RAM enable timeout!\n");
> > +             return;
> > +     }
> > +
> > +     if (crtc->state->gamma_lut &&
> > +        (!old_crtc_state->gamma_lut || (crtc->state->gamma_lut->base.id !=
> > +                                     old_crtc_state->gamma_lut->base.id))) {
>
> Silly question, but isn't the second part of this check redundant since you need
> color_mgmt_changed || active_changed to get into this function?
>
> So maybe invert the conditional here and exit early (to save a level of
> indentation in the block below):
>

I took this from malidp_atomic_commit_update_gamma. I _believe_
the rational for this is that color_mgmt_changed can be set by re-setting
the gamma property, to the same property. But I admit I haven't
tested it's the case.

OTOH, it won't really affect much to re-write the table, if the user
requested a change.

>         if (!crtc->state->gamma_lut)
>                 return;
>

In any case, inverting the condition makes sense.

>         spin_lock(&vop->reg_lock);
>
>         vop_crtc_write_gamma_lut(vop, crtc);
>         VOP_REG_SET(vop, common, dsp_lut_en, 1);
>         vop_cfg_done(vop);
>
>         spin_unlock(&vop->reg_lock);
>
> > +
> > +             spin_lock(&vop->reg_lock);
> > +
> > +             vop_crtc_write_gamma_lut(vop, crtc);
> > +             VOP_REG_SET(vop, common, dsp_lut_en, 1);
> > +             vop_cfg_done(vop);
> > +
> > +             spin_unlock(&vop->reg_lock);
> > +     }
> > +}
> > +
> > +static void vop_crtc_atomic_begin(struct drm_crtc *crtc,
> > +                                struct drm_crtc_state *old_crtc_state)
> > +{
> > +     struct vop *vop = to_vop(crtc);
> > +
> > +     /*
> > +      * Only update GAMMA if the 'active' flag is not changed,
> > +      * otherwise it's updated by .atomic_enable.
> > +      */
> > +     if (vop->lut_regs && crtc->state->color_mgmt_changed &&
> > +         !crtc->state->active_changed)
> > +             vop_crtc_gamma_set(vop, crtc, old_crtc_state);
> > +}
> > +
> >  static void vop_crtc_atomic_enable(struct drm_crtc *crtc,
> >                                  struct drm_crtc_state *old_state)
> >  {
> > @@ -1075,6 +1154,14 @@ static void vop_crtc_atomic_enable(struct drm_crtc *crtc,
> >               return;
> >       }
> >
> > +     /*
> > +      * If we have a GAMMA LUT in the state, then let's make sure
> > +      * it's updated. We might be coming out of suspend,
> > +      * which means the LUT internal memory needs to be re-written.
> > +      */
> > +     if (vop->lut_regs && crtc->state->gamma_lut)
> > +             vop_crtc_gamma_set(vop, crtc, old_state);
> > +
> >       mutex_lock(&vop->vop_lock);
> >
> >       WARN_ON(vop->event);
> > @@ -1191,6 +1278,26 @@ static void vop_wait_for_irq_handler(struct vop *vop)
> >       synchronize_irq(vop->irq);
> >  }
> >
> > +static int vop_crtc_atomic_check(struct drm_crtc *crtc,
> > +                              struct drm_crtc_state *crtc_state)
> > +{
> > +     struct vop *vop = to_vop(crtc);
> > +
> > +     if (vop->lut_regs && crtc_state->color_mgmt_changed &&
> > +         crtc_state->gamma_lut) {
> > +             unsigned int len;
> > +
> > +             len = drm_color_lut_size(crtc_state->gamma_lut);
> > +             if (len != crtc->gamma_size) {
> > +                     DRM_DEBUG_KMS("Invalid LUT size; got %d, expected %d\n",
> > +                                   len, crtc->gamma_size);
> > +                     return -EINVAL;
> > +             }
>
> Overflow is avoided in drm_mode_gamma_set_ioctl(), so I don't think you need
> this function.
>

But that only applies to the legacy path. Isn't this needed to ensure
a gamma blob
has the right size?

Thanks,
Ezequiel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

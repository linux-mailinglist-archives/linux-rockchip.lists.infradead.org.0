Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F3D14EC92
	for <lists+linux-rockchip@lfdr.de>; Fri, 21 Jun 2019 17:53:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q4fJFGrjwn7HCwwRaxXjwTGYfG3Y68PIoTSSrWu0IaE=; b=t0wR6xEA/SpmPd
	hXoNBTdJRC2VfZVEmlUIjtueJyLpJj+41N1lEyhaP085Qde9gcAIWUFEOcB4G4rexC2G66MBftVFx
	cicuOAd+hc+ixa5eDxccKy3N0TgQMH5ETdMsk0ss4YkFF5MC1mHnsB87fKj46vA8eda7POdJSZieU
	dqX1KOyWq5ppstI2lBlJEyBzr21EtK6cekmGMq0bxFF7mtU+0bNM/j3OWUwIwoIZvHYWybRDljpq8
	3ybr58hkZid2MUv5pZRjsdIGzAblHxbPJPGKcFQbTHumKlFUe2sNGlxC+wEw07igtymPhpYxcAoxW
	F7gvp2LEzo51eA+jnvnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heLqe-0003FS-Rs; Fri, 21 Jun 2019 15:53:08 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heLqZ-0003EH-W6
 for linux-rockchip@lists.infradead.org; Fri, 21 Jun 2019 15:53:05 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id DBBF1270B16
Message-ID: <33068f355edfaabb1c60d5e16a219a058a489531.camel@collabora.com>
Subject: Re: [PATCH 2/3] drm/rockchip: Add optional support for CRTC gamma LUT
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Doug Anderson <dianders@chromium.org>
Date: Fri, 21 Jun 2019 12:52:51 -0300
In-Reply-To: <CAD=FV=XoKNA4aW2LT7g8K2t+ABwgt=QJGAyiet1-Gyz3CgWmvg@mail.gmail.com>
References: <20190618213406.7667-1-ezequiel@collabora.com>
 <20190618213406.7667-3-ezequiel@collabora.com>
 <CAD=FV=XoKNA4aW2LT7g8K2t+ABwgt=QJGAyiet1-Gyz3CgWmvg@mail.gmail.com>
Organization: Collabora
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_085304_303028_F5D86449 
X-CRM114-Status: GOOD (  23.71  )
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
 Sandy Huang <hjc@rock-chips.com>, dri-devel <dri-devel@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>, "open list:ARM/Rockchip
 SoC..." <linux-rockchip@lists.infradead.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Sean Paul <seanpaul@chromium.org>, Rob Herring <robh+dt@kernel.org>,
 kernel@collabora.com, Ilia Mirkin <imirkin@alum.mit.edu>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Thu, 2019-06-20 at 10:25 -0700, Doug Anderson wrote:
> Hi,
> 
> On Tue, Jun 18, 2019 at 2:43 PM Ezequiel Garcia <ezequiel@collabora.com> wrote:
> > +static void vop_crtc_gamma_set(struct vop *vop, struct drm_crtc *crtc,
> > +                              struct drm_crtc_state *old_state)
> > +{
> > +       int idle, ret, i;
> > +
> > +       spin_lock(&vop->reg_lock);
> > +       VOP_REG_SET(vop, common, dsp_lut_en, 0);
> > +       vop_cfg_done(vop);
> > +       spin_unlock(&vop->reg_lock);
> > +
> > +       ret = readx_poll_timeout(vop_dsp_lut_is_enable, vop,
> > +                          idle, !idle, 5, 30 * 1000);
> > +       if (ret)
> 
> Worth an error message?
> 

Sure.

> 
> > @@ -1205,6 +1294,7 @@ static void vop_crtc_atomic_flush(struct drm_crtc *crtc,
> > 
> >  static const struct drm_crtc_helper_funcs vop_crtc_helper_funcs = {
> >         .mode_fixup = vop_crtc_mode_fixup,
> > +       .atomic_check = vop_crtc_atomic_check,
> 
> At first I was worried that there was a bug here since in the context
> of dw_hdmi (an encoder) adding ".atomic_check" caused ".mode_fixup" to
> stop getting called as per mode_fixup() in
> "drivers/gpu/drm/drm_atomic_helper.c".
> 
> ...but it seems like it's OK for CRTCs, so I think we're fine.
> 
> 
> > @@ -1323,6 +1413,7 @@ static const struct drm_crtc_funcs vop_crtc_funcs = {
> >         .disable_vblank = vop_crtc_disable_vblank,
> >         .set_crc_source = vop_crtc_set_crc_source,
> >         .verify_crc_source = vop_crtc_verify_crc_source,
> > +       .gamma_set = drm_atomic_helper_legacy_gamma_set,
> 
> Are there any issues in adding this ".gamma_set" property even though
> we may or may not actually have the ability to set the gamma
> (depending on whether or not the LUT register range was provided in
> the device tree)?  I am a DRM noob but
> drm_atomic_helper_legacy_gamma_set() is not a trivial little function
> and now we'll be running it in some cases where we don't actually have
> gamma.
> 
> I also notice that there's at least one bit of code that seems to
> check if ".gamma_set" is NULL.  ...and if it is, it'll return -ENOSYS
> right away.  Do we still properly return -ENOSYS on devices that don't
> have the register range?
> 
> It seems like the absolute safest would be to have two copies of this
> struct: one used for VOPs that have the range and one for VOPs that
> don't.
> 
> ...but possibly I'm just paranoid and as I've said I'm a clueless
> noob.  If someone says it's fine to always provide the .gamma_set
> property that's fine too.
> 

Provided we do the suggestion below (setting gamma_size and enabling
color management) when lut_regs is set, then I think we are fine.

Before this change:

* GAMMA_LUT property doesn't exist, and so can't be set.
* DRM_IOCTL_MODE_SETGAMMA (legacy) return ENOSYS.

After this change, on platforms that doesn't support this:

* GAMMA_LUT property doesn't exist, and so can't be set.
* DRM_IOCTL_MODE_SETGAMMA (legacy) return EINVAL.

The only difference is the ENOSYS/EINVAL errno, which I doubt
will regress anything.

I don't think this difference deserves assigning (the legacy)
.gamma_set hook conditionally, which would make the
implementation too ugly.

> 
> >  static void vop_fb_unref_worker(struct drm_flip_work *work, void *val)
> > @@ -1480,6 +1571,10 @@ static int vop_create_crtc(struct vop *vop)
> >                 goto err_cleanup_planes;
> > 
> >         drm_crtc_helper_add(crtc, &vop_crtc_helper_funcs);
> > +       if (vop_data->lut_size) {
> > +               drm_mode_crtc_set_gamma_size(crtc, vop_data->lut_size);
> > +               drm_crtc_enable_color_mgmt(crtc, 0, false, vop_data->lut_size);
> 
> Should we only do the above calls if we successfully mapped the resources?
> 

Yes, totally. See above.

> 
> > @@ -1776,6 +1871,17 @@ static int vop_bind(struct device *dev, struct device *master, void *data)
> >         if (IS_ERR(vop->regs))
> >                 return PTR_ERR(vop->regs);
> > 
> > +       res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "lut");
> 
> As per comments in the bindings, shouldn't use the name "lut" but
> should just pick resource #1.

Yes.

Thanks a lot for the review,
Ezequiel


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

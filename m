Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC45E4ADC1
	for <lists+linux-rockchip@lfdr.de>; Wed, 19 Jun 2019 00:18:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JyvHselRXUGVq8ckfUayuurp8gilKso06C0J0xzoYiQ=; b=TRcm3PT+NnrQYz
	SSjpMh+pZLgCfMYBhb23MN3iS3WYyOOK9bIubE5LIvw+Y56qdMKjpVHNXALQSE+o2Vkqw+EUyEmig
	IAn7DsHf6cjQZaL38IX1dfn1J2KKi8+XzS52LkuAnFrL7ghrmVg767U2KIg/4frhgDxjIAySiJcF0
	Hq5vkDUz9YIlhDdvLxt7Ua4Vx0wE8BPoNwHl/sTsOzPjYG0t0eEWHy6oKpGzZd8u7LbPUm3XhKkrA
	Lg1EB+jZYdh/G19zfdRQqXq1DnCyNfcKgexGG7qJBjCgAALsEG+7FmUoewhl/PCyGtAnJZM3Hr9P8
	0kf5kQPlKSmvoO1ffW/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdMQe-0002Gz-TC; Tue, 18 Jun 2019 22:18:12 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdMQa-0002GO-S8
 for linux-rockchip@lists.infradead.org; Tue, 18 Jun 2019 22:18:10 +0000
Received: from ip5f5a6320.dynamic.kabel-deutschland.de ([95.90.99.32]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hdMQS-0003J3-UP; Wed, 19 Jun 2019 00:18:00 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Ezequiel Garcia <ezequiel@collabora.com>
Subject: Re: [PATCH 2/3] drm/rockchip: Add optional support for CRTC gamma LUT
Date: Wed, 19 Jun 2019 00:18:00 +0200
Message-ID: <31857290.5uKucqQp3M@diego>
In-Reply-To: <20372cd5e56d67b8e896c2d94b3d0d136cc2886e.camel@collabora.com>
References: <20190618213406.7667-1-ezequiel@collabora.com>
 <CAKb7UvgvY0tJDV9A=4+8=iqraziyt8SGF-QrX=M8jz+R+5JC=A@mail.gmail.com>
 <20372cd5e56d67b8e896c2d94b3d0d136cc2886e.camel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_151809_061258_9084089F 
X-CRM114-Status: GOOD (  25.93  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, Jacopo Mondi <jacopo@jmondi.org>,
 Rob Herring <robh+dt@kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 Sandy Huang <hjc@rock-chips.com>, dri-devel <dri-devel@lists.freedesktop.org>,
 Douglas Anderson <dianders@chromium.org>, linux-rockchip@lists.infradead.org,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Sean Paul <seanpaul@chromium.org>, kernel@collabora.com,
 Ilia Mirkin <imirkin@alum.mit.edu>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Mittwoch, 19. Juni 2019, 00:09:57 CEST schrieb Ezequiel Garcia:
> On Tue, 2019-06-18 at 17:47 -0400, Ilia Mirkin wrote:
> > On Tue, Jun 18, 2019 at 5:43 PM Ezequiel Garcia <ezequiel@collabora.com> wrote:
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
> > > ---
> > > Changes from RFC:
> > > * Request (an optional) address resource for the LUT.
> > > * Drop support for RK3399, which doesn't seem to work
> > >   out of the box and needs more research.
> > > * Support pass-thru setting when GAMMA_LUT is NULL.
> > > * Add a check for the gamma size, as suggested by Ilia.
> > > * Move gamma setting to atomic_commit_tail, as pointed
> > >   out by Jacopo/Laurent, is the correct way.
> > > ---
> > > diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> > > index 12ed5265a90b..5b6edbe2673f 100644
> > > --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> > > +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> > > +static void vop_crtc_gamma_set(struct vop *vop, struct drm_crtc *crtc,
> > > +                              struct drm_crtc_state *old_state)
> > > +{
> > > +       int idle, ret, i;
> > > +
> > > +       spin_lock(&vop->reg_lock);
> > > +       VOP_REG_SET(vop, common, dsp_lut_en, 0);
> > > +       vop_cfg_done(vop);
> > > +       spin_unlock(&vop->reg_lock);
> > > +
> > > +       ret = readx_poll_timeout(vop_dsp_lut_is_enable, vop,
> > > +                          idle, !idle, 5, 30 * 1000);
> > > +       if (ret)
> > > +               return;
> > > +
> > > +       spin_lock(&vop->reg_lock);
> > > +
> > > +       if (crtc->state->gamma_lut) {
> > > +               if (!old_state->gamma_lut || (crtc->state->gamma_lut->base.id !=
> > > +                                             old_state->gamma_lut->base.id))
> > > +                       vop_crtc_write_gamma_lut(vop, crtc);
> > > +       } else {
> > > +               for (i = 0; i < crtc->gamma_size; i++) {
> > > +                       u32 word;
> > > +
> > > +                       word = (i << 20) | (i << 10) | i;
> > > +                       writel(word, vop->lut_regs + i * 4);
> > > +               }
> > 
> > Note - I'm not in any way familiar with the hardware, so take with a
> > grain of salt --
> > 
> > Could you just leave dsp_lut_en turned off in this case?
> > 
> 
> That was the first thing I tried :-)
> 
> It seems dsp_lut_en is not to enable the CRTC gamma LUT stage,
> but to enable writing the gamma LUT to the internal RAM.

I guess that warants a code comment stating this, so we don't end
up with well-meant cleanup patches in the future :-) .


> 
> And the specs list no register to enable/disable the gamma LUT.
> 
> Thanks!
> Eze
> 
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

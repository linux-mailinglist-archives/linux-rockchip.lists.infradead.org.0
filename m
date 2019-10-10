Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B93D9D2E3F
	for <lists+linux-rockchip@lfdr.de>; Thu, 10 Oct 2019 18:01:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X3AlhoNySGBi58BeFgh8GOKGoWDUhW/b+1yLC4V9RGA=; b=nBMox3i6cRGBDG
	UJwOymPfUxVx6UAbXrH3mI5agcFhdSqwM6r9EwDirU4+nKiOj0mfZ+rqyr6hYIGo2U+lsIFaguEkR
	iGodrgEcDDBGFU7l3sgtrvhdSXU7noAfzU5yu9FJfJzrDbOLHHQ6lZOqRKW09XcUhjJNCJwQCcuWq
	9o85cgHPTci55wE3iYK6T7TvNGgcu40Askplh7ieDsh/8LwMV6N3ASyGcG11vyx7izD6ULhbCdG/m
	a8CMFQGW5DxvI1soe95Easi2G1tYzzWLfErHEyluBGSqOvcTJ+8XTtnd57woHd4om8xTNhFbFUZ8f
	vSQ5PrTr/bSyXpzV2gaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIasJ-0008Su-Av; Thu, 10 Oct 2019 16:01:11 +0000
Received: from mail-yw1-xc43.google.com ([2607:f8b0:4864:20::c43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIasC-0008Rb-EI
 for linux-rockchip@lists.infradead.org; Thu, 10 Oct 2019 16:01:09 +0000
Received: by mail-yw1-xc43.google.com with SMTP id m7so2356704ywe.4
 for <linux-rockchip@lists.infradead.org>; Thu, 10 Oct 2019 09:01:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=HQEwz99zPiBamssWYWO0fAnZk+5TRNulHyEfs6Nv7lQ=;
 b=T9ZeEHxgqp5RV8yKHwcvwPSxswMi3KrhA4RVWCWl1lX1KjOUzEzDxOFiBlk6Vjdvxi
 3CujVBdI37VPSKl11epmWWNLz5LJZFZfRCT8hkIlKvDnlK5bg/GNSqGP/TPg6e0JNj9Y
 1+YjwZc8P6H9Ms9ISF+33kFd8cR+Td+TXJICnLRVjIkuV8dtzGUv19F+CrD/DhXRGFFI
 gBAXTZzCMiOoNFBdKUlWPc6VdOjjTmqKqdysQs8qyJZnPepivh3XXztUJCaDIO5VR9q9
 wTmKBBK1RBIBUUECFCk2yaZ/0qzpMqCyPj8YoFtpQXBLSjC3+h7A7PfVmLB+AsQbzo1p
 JSZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=HQEwz99zPiBamssWYWO0fAnZk+5TRNulHyEfs6Nv7lQ=;
 b=lsN2OCtpBKebwtYhUytqIuO0b8Nr/+NdraTJbyjLj1Xr2t9Ze9XdlLygyNgqRortAt
 WT3Mxe6GeKmdKE0Wm4GgMx10/w/cm9/CiYa2VDmPvuuFe3EMu0kOOK1mxHW7+v8nWDxo
 MJ2Ajvh7LJ+5AMnp5WDezFCvOEd+g+OEsZfX4+EZ8+MYGN9c+GjHZTaccI0mzwCuvz6x
 w6CrZZ6QKJoavly5E9bf2oyWYpBmuiQy6Qr5mS69eyHDHsPq6Nf2TfrL5vSwNjZNnCtY
 WuEX2zrc3EfXY3UYlGdNBK5OcrmxCKxej4fKFwmC2it/o7sS+PuU7/vmH5GJsDv6t0yR
 eWJA==
X-Gm-Message-State: APjAAAVnmqENr5u3zYrsFveRIqTE/ZCsRemnu0AtS0Ujq4b4tgrYFxel
 /EEZ5aVTD5ZtEz7lPIz2fkJTcQ==
X-Google-Smtp-Source: APXvYqxb64hp70dOFquHDwL8UKJFaRPdNP3F40h8/gcrg8O/05QjvwiergM305REWF9FAzhZBio0IA==
X-Received: by 2002:a81:ee11:: with SMTP id l17mr7691414ywm.72.1570723261755; 
 Thu, 10 Oct 2019 09:01:01 -0700 (PDT)
Received: from localhost ([2620:0:1013:11:89c6:2139:5435:371d])
 by smtp.gmail.com with ESMTPSA id p204sm1555743ywp.110.2019.10.10.09.00.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Oct 2019 09:00:59 -0700 (PDT)
Date: Thu, 10 Oct 2019 12:00:59 -0400
From: Sean Paul <sean@poorly.run>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Subject: Re: [PATCH v4 2/3] drm/rockchip: Add optional support for CRTC gamma
 LUT
Message-ID: <20191010160059.GJ85762@art_vandelay>
References: <20191008230038.24037-1-ezequiel@collabora.com>
 <20191008230038.24037-3-ezequiel@collabora.com>
 <20191009180136.GE85762@art_vandelay>
 <CAAEAJfDP0PsGAoRfGyDyWj7DxgP6nwwwA1_gwLQuVy-fRDa-UA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAAEAJfDP0PsGAoRfGyDyWj7DxgP6nwwwA1_gwLQuVy-fRDa-UA@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_090106_374342_966FF5CF 
X-CRM114-Status: GOOD (  23.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Sean Paul <sean@poorly.run>,
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


/snip

> > > +static void vop_crtc_write_gamma_lut(struct vop *vop, struct drm_crtc *crtc)
> > > +{
> > > +     struct drm_color_lut *lut = crtc->state->gamma_lut->data;
> > > +     unsigned int i;
> > > +
> > > +     for (i = 0; i < crtc->gamma_size; i++) {
> > > +             u32 word;
> > > +
> > > +             word = (drm_color_lut_extract(lut[i].red, 10) << 20) |
> > > +                    (drm_color_lut_extract(lut[i].green, 10) << 10) |
> > > +                     drm_color_lut_extract(lut[i].blue, 10);
> > > +             writel(word, vop->lut_regs + i * 4);
> > > +     }
> > > +}
> > > +
> > > +static void vop_crtc_gamma_set(struct vop *vop, struct drm_crtc *crtc,
> > > +                            struct drm_crtc_state *old_crtc_state)
> > > +{
> > > +     unsigned int idle;
> > > +     int ret;
> > > +
> >
> > How about:
> >
> >         if (!vop->lut_regs)
> >                 return;
> >
> > here and then you can remove that condition above the 2 callsites
> >
> 
> Yes, sounds good.
> 
> > > +     /*
> > > +      * In order to write the LUT to the internal memory,
> > > +      * we need to first make sure the dsp_lut_en bit is cleared.
> > > +      */
> > > +     spin_lock(&vop->reg_lock);
> > > +     VOP_REG_SET(vop, common, dsp_lut_en, 0);
> > > +     vop_cfg_done(vop);
> > > +     spin_unlock(&vop->reg_lock);
> > > +
> > > +     /*
> > > +      * If the CRTC is not active, dsp_lut_en will not get cleared.
> > > +      * Apparently we still need to do the above step to for
> > > +      * gamma correction to be disabled.
> > > +      */
> > > +     if (!crtc->state->active)
> > > +             return;
> > > +
> 
> I have realized that the above might no longer be needed,
> given we are now using atomic_enable and atomic_begin.
> 
> Not sure if the CRTC is supposed to clear its GAMMA
> when disabled.
> 

Yep, good catch. Since we use commit_tail_rpm, atomic_begin won't be called in
the disable path.

> > > +     ret = readx_poll_timeout(vop_dsp_lut_is_enable, vop,
> > > +                              idle, !idle, 5, 30 * 1000);
> > > +     if (ret) {
> > > +             DRM_DEV_ERROR(vop->dev, "display LUT RAM enable timeout!\n");
> > > +             return;
> > > +     }
> > > +
> > > +     if (crtc->state->gamma_lut &&
> > > +        (!old_crtc_state->gamma_lut || (crtc->state->gamma_lut->base.id !=
> > > +                                     old_crtc_state->gamma_lut->base.id))) {
> >
> > Silly question, but isn't the second part of this check redundant since you need
> > color_mgmt_changed || active_changed to get into this function?
> >
> > So maybe invert the conditional here and exit early (to save a level of
> > indentation in the block below):
> >
> 
> I took this from malidp_atomic_commit_update_gamma. I _believe_
> the rational for this is that color_mgmt_changed can be set by re-setting
> the gamma property, to the same property. But I admit I haven't
> tested it's the case.
> 
> OTOH, it won't really affect much to re-write the table, if the user
> requested a change.
> 

color_mgmt_changed is based on the output of drm_property_replace_blob() which
should return false if the blob is unchanged. So I don't think that case is
possible. 

Taking this a step further, this check could even be damaging since something
in the atomic check path could set color_mgmt_changed in order to explicitly
trigger a lut write and we'd be skipping it with the id check.


> >         if (!crtc->state->gamma_lut)
> >                 return;
> >
> 
> In any case, inverting the condition makes sense.
> 
> >         spin_lock(&vop->reg_lock);
> >
> >         vop_crtc_write_gamma_lut(vop, crtc);
> >         VOP_REG_SET(vop, common, dsp_lut_en, 1);
> >         vop_cfg_done(vop);
> >
> >         spin_unlock(&vop->reg_lock);
> >
> > > +
> > > +             spin_lock(&vop->reg_lock);
> > > +
> > > +             vop_crtc_write_gamma_lut(vop, crtc);
> > > +             VOP_REG_SET(vop, common, dsp_lut_en, 1);
> > > +             vop_cfg_done(vop);
> > > +
> > > +             spin_unlock(&vop->reg_lock);
> > > +     }
> > > +}

/snip

> > > +static int vop_crtc_atomic_check(struct drm_crtc *crtc,
> > > +                              struct drm_crtc_state *crtc_state)
> > > +{
> > > +     struct vop *vop = to_vop(crtc);
> > > +
> > > +     if (vop->lut_regs && crtc_state->color_mgmt_changed &&
> > > +         crtc_state->gamma_lut) {
> > > +             unsigned int len;
> > > +
> > > +             len = drm_color_lut_size(crtc_state->gamma_lut);
> > > +             if (len != crtc->gamma_size) {
> > > +                     DRM_DEBUG_KMS("Invalid LUT size; got %d, expected %d\n",
> > > +                                   len, crtc->gamma_size);
> > > +                     return -EINVAL;
> > > +             }
> >
> > Overflow is avoided in drm_mode_gamma_set_ioctl(), so I don't think you need
> > this function.
> >
> 
> But that only applies to the legacy path. Isn't this needed to ensure
> a gamma blob
> has the right size?

Yeah, good point, we check the element size in the atomic path, but not the max
size. I haven't looked at enough color lut stuff to have an opinion whether this
check would be useful in a helper function or not, something to consider, I
suppose.

Sean

> 
> Thanks,
> Ezequiel

-- 
Sean Paul, Software Engineer, Google / Chromium OS

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

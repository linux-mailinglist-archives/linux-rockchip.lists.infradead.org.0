Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DB90FC3C0
	for <lists+linux-rockchip@lfdr.de>; Thu, 14 Nov 2019 11:12:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wcWpQlCymmwVq20AzZysmLrzdegMHdBS5db+wAsdikQ=; b=FgEQ1CTCGRD2iT
	sQlTvRPVNRX5ZkuZgGy/nNB1OTYDtSvof5FLQMuxUac/S0abZMthG6vOn6kUPVNLTIa1X9yTZMp7w
	TDJ6faqvm/zzY6W9DYFqsUoaWA++elQwWIPoXGPaj+630bFefQgh8oDEXOz5jrAXLg4zI41f5zgtj
	bb6CfnnmGWoZlVYM36JwWY9X5QDNWHTDewRKnH5J52THJTj+QVSUFIYv+yXTJn6vkHzCIFxcSKGS3
	KzXIah/EujDv57t2p2pO3ErX2XrbhHoSACAiBoeMI7CDRZvKQkAIx8uCb4VfFC0bFdELQlaxGtmNJ
	JYP7JAs+vUNTaGNLhnWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVC76-0005JJ-6q; Thu, 14 Nov 2019 10:12:32 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVC70-0005IW-J8
 for linux-rockchip@lists.infradead.org; Thu, 14 Nov 2019 10:12:30 +0000
Received: by mail-oi1-x244.google.com with SMTP id n16so4782304oig.2
 for <linux-rockchip@lists.infradead.org>; Thu, 14 Nov 2019 02:12:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=czlgr7HU7Vvx1oz4YcL++jzJA41dhdHs3kwlTjDH3Qw=;
 b=jpVFC4gQHpnv2YRlpGvWyK5thx10fVRT+NQ3I0g6embi2RjqIxz0KiDcsJHGE9FKKV
 XEd1fe7T42B0VbI/Sj0u4wiKaYiYYlVO7HnMjRht9+3fpuNNuKYKHo1YO9L/idn9N9km
 ECq1Z+iwWU4/kfrNW/BypQ3FUhA1jnsvoOet8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=czlgr7HU7Vvx1oz4YcL++jzJA41dhdHs3kwlTjDH3Qw=;
 b=JN7Fo+1u71O9CiQc6l7HvPyvQc31dq7+++gaXpZD/uTTwUa9fE+mSWpnH+YvNGkkII
 zWBelrasB6XR0YWmqDN9I3GhAvKdPwMg9xbrLhGjMxMeRJ7LSjygs/pJPqqlINO3QJ5R
 mjitmcr2aHs8hRbTmnRLanc/v91DrSCT6Ul+ktEQQHu5gytOqEY1TW/S1TFcPC5AOnRb
 Pv2l0ssplmZWozNyazhyv9IU2PJLRNDuQbtkggx9FKm7aQySe5N0OoVxY9am2XlO7pGe
 fChOMwhtOwwb5GLxQtdg5B92fGlh7dBeZyTXcskVnAW5q2v7oN+x2yqEXt4Ms7wkiycf
 IcQQ==
X-Gm-Message-State: APjAAAWWiwkR21PxR1roKAkYsEXYRx5G/osvF/1U1VPQ7OKyUCvhRva2
 2sUQ9grhjF2kI6tReMYcQu4WhTasMs8KQ6/TAk9KKw==
X-Google-Smtp-Source: APXvYqyM/a5Zkj393VW+Fl4/5pJ3GUCJw7Qd7KGh/KDrgVKYT73ao2RaSpKSdAA1ee8O2esuBU+/ytVhjYH3QpsBRWw=
X-Received: by 2002:aca:39d7:: with SMTP id g206mr2666631oia.101.1573726344499; 
 Thu, 14 Nov 2019 02:12:24 -0800 (PST)
MIME-Version: 1.0
References: <2485717.1SzL54aMiy@e123338-lin>
 <20191104221228.3588-1-andrzej.p@collabora.com>
 <20191104221228.3588-4-andrzej.p@collabora.com>
 <20191108160954.GA17321@arm.com>
 <20191113020146.GB2746@jamwan02-TSP300>
 <20191113113954.GN23790@phenom.ffwll.local>
 <20191114015220.GA16456@jamwan02-TSP300>
In-Reply-To: <20191114015220.GA16456@jamwan02-TSP300>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Thu, 14 Nov 2019 11:12:13 +0100
Message-ID: <CAKMK7uH06iu9OTz-1ZTbv6oVBHtBojSQE6sUu1GWfWk1om8LQQ@mail.gmail.com>
Subject: Re: [PATCHv2 3/4] drm/komeda: use afbc helpers
To: "james qian wang (Arm Technology China)" <james.qian.wang@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_021226_691415_9447F884 
X-CRM114-Status: GOOD (  31.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: nd <nd@arm.com>, Mihail Atanassov <Mihail.Atanassov@arm.com>,
 "kernel@collabora.com" <kernel@collabora.com>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>, Liviu Dudau <Liviu.Dudau@arm.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Sandy Huang <hjc@rock-chips.com>, Maxime Ripard <mripard@kernel.org>,
 Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 Ayan Halder <Ayan.Halder@arm.com>, Sean Paul <sean@poorly.run>,
 Brian Starkey <Brian.Starkey@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Thu, Nov 14, 2019 at 2:52 AM james qian wang (Arm Technology China)
<james.qian.wang@arm.com> wrote:
> On Wed, Nov 13, 2019 at 12:39:54PM +0100, Daniel Vetter wrote:
> > On Wed, Nov 13, 2019 at 02:01:53AM +0000, james qian wang (Arm Technology China) wrote:
> > > On Fri, Nov 08, 2019 at 04:09:54PM +0000, Ayan Halder wrote:
> > > > On Mon, Nov 04, 2019 at 11:12:27PM +0100, Andrzej Pietrasiewicz wrote:
> > > > > There are afbc helpers available.
> > > > >
> > > > > Signed-off-by: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
> > > > > ---
> > > > >  .../arm/display/komeda/komeda_format_caps.h   |  1 -
> > > > >  .../arm/display/komeda/komeda_framebuffer.c   | 44 +++++++------------
> > > > >  2 files changed, 17 insertions(+), 28 deletions(-)
> > > > >
> > > > > diff --git a/drivers/gpu/drm/arm/display/komeda/komeda_format_caps.h b/drivers/gpu/drm/arm/display/komeda/komeda_format_caps.h
> > > > > index 32273cf18f7c..607eea80e60c 100644
> > > > > --- a/drivers/gpu/drm/arm/display/komeda/komeda_format_caps.h
> > > > > +++ b/drivers/gpu/drm/arm/display/komeda/komeda_format_caps.h
> > > > > @@ -33,7 +33,6 @@
> > > > >
> > > > >  #define AFBC_TH_LAYOUT_ALIGNMENT       8
> > > > >  #define AFBC_HEADER_SIZE               16
> > > > > -#define AFBC_SUPERBLK_ALIGNMENT                128
> > > > >  #define AFBC_SUPERBLK_PIXELS           256
> > > > >  #define AFBC_BODY_START_ALIGNMENT      1024
> > > > >  #define AFBC_TH_BODY_START_ALIGNMENT   4096
> > > > > diff --git a/drivers/gpu/drm/arm/display/komeda/komeda_framebuffer.c b/drivers/gpu/drm/arm/display/komeda/komeda_framebuffer.c
> > > > > index 1b01a625f40e..e9c87551a5b8 100644
> > > > > --- a/drivers/gpu/drm/arm/display/komeda/komeda_framebuffer.c
> > > > > +++ b/drivers/gpu/drm/arm/display/komeda/komeda_framebuffer.c
> > > > > @@ -4,6 +4,7 @@
> > > > >   * Author: James.Qian.Wang <james.qian.wang@arm.com>
> > > > >   *
> > > > >   */
> > > > > +#include <drm/drm_afbc.h>
> > > > >  #include <drm/drm_device.h>
> > > > >  #include <drm/drm_fb_cma_helper.h>
> > > > >  #include <drm/drm_gem.h>
> > > > > @@ -43,8 +44,7 @@ komeda_fb_afbc_size_check(struct komeda_fb *kfb, struct drm_file *file,
> > > > >         struct drm_framebuffer *fb = &kfb->base;
> > > > >         const struct drm_format_info *info = fb->format;
> > > > >         struct drm_gem_object *obj;
> > > > > -       u32 alignment_w = 0, alignment_h = 0, alignment_header, n_blocks, bpp;
> > > > > -       u64 min_size;
> > > > > +       u32 alignment_w = 0, alignment_h = 0, alignment_header, bpp;
> > > > >
> > > > >         obj = drm_gem_object_lookup(file, mode_cmd->handles[0]);
> > > > >         if (!obj) {
> > > > > @@ -52,19 +52,15 @@ komeda_fb_afbc_size_check(struct komeda_fb *kfb, struct drm_file *file,
> > > > >                 return -ENOENT;
> > > > >         }
> > > > >
> > > > > -       switch (fb->modifier & AFBC_FORMAT_MOD_BLOCK_SIZE_MASK) {
> > > > > -       case AFBC_FORMAT_MOD_BLOCK_SIZE_32x8:
> > > > > -               alignment_w = 32;
> > > > > -               alignment_h = 8;
> > > > > -               break;
> > > > > -       case AFBC_FORMAT_MOD_BLOCK_SIZE_16x16:
> > > > > -               alignment_w = 16;
> > > > > -               alignment_h = 16;
> > > > > -               break;
> > > > > -       default:
> > > > > -               WARN(1, "Invalid AFBC_FORMAT_MOD_BLOCK_SIZE: %lld.\n",
> > > > > -                    fb->modifier & AFBC_FORMAT_MOD_BLOCK_SIZE_MASK);
> > > > > -               break;
> > > > > +       if (!drm_afbc_get_superblk_wh(fb->modifier, &alignment_w, &alignment_h))
> > > > > +               return -EINVAL;
> > > > > +
> > > > > +       if ((alignment_w != 16 || alignment_h != 16) &&
> > > > > +           (alignment_w != 32 || alignment_h != 8)) {
> > > > > +               DRM_DEBUG_KMS("Unsupported afbc tile w/h [%d/%d]\n",
> > > > > +                             alignment_w, alignment_h);
> > > > > +
> > > > > +               return -EINVAL;
> > > > To be honest, the previous code looks much more readable
> > > > >         }
> > > > >
> > > > >         /* tiled header afbc */
> > > > > @@ -84,20 +80,14 @@ komeda_fb_afbc_size_check(struct komeda_fb *kfb, struct drm_file *file,
> > > > >                 goto check_failed;
> > > > >         }
> > > > >
> > > > > -       n_blocks = (kfb->aligned_w * kfb->aligned_h) / AFBC_SUPERBLK_PIXELS;
> > > > > -       kfb->offset_payload = ALIGN(n_blocks * AFBC_HEADER_SIZE,
> > > > > -                                   alignment_header);
> > > > > -
> > > > >         bpp = komeda_get_afbc_format_bpp(info, fb->modifier);
> > > > > -       kfb->afbc_size = kfb->offset_payload + n_blocks *
> > > > > -                        ALIGN(bpp * AFBC_SUPERBLK_PIXELS / 8,
> > > > > -                              AFBC_SUPERBLK_ALIGNMENT);
> > > > > -       min_size = kfb->afbc_size + fb->offsets[0];
> > > > > -       if (min_size > obj->size) {
> > > > > -               DRM_DEBUG_KMS("afbc size check failed, obj_size: 0x%zx. min_size 0x%llx.\n",
> > > > > -                             obj->size, min_size);
> > > > We need kfb->offset_payload and kfb->afbc_size to set some registers
> > > > in d71_layer_update(). At this moment I feel like punching myself for
> > > > making the suggestion to consider abstracting some of the komeda's afbc
> > > > checks. To me it does not look like komeda(in the current shape) can take
> > > > much advantage of the generic _afbc_fb_check() function (as was suggested
> > > > previously by Danvet).
> > > >
> > > > However, I will let james.qian.wang@arm.com,
> > > > Mihail.Atanassov@arm.com, Ben.Davis@arm.com comment here to see if
> > > > there could be a way of abstracting the afbc bits from komeda.
> > > >
> > >
> > > Hi all:
> > >
> > > Since the current generic drm_afbc helpers only support afbc_1.1, but
> > > komeda needs support both afbc1.1/1.2, so I think we can:
> > > - Add afbc1.2 support to drm afbc helpers.
> > > - for the afbc_payload_offset, can we add this member to
> > >   drm_framebuffer ?
> > > - The aligned_w/h are important for afbc, so can we have them in
> > >   drm_framebuffer ?
> >
> > How expensive is it to recompute these from a struct drm_framebuffer?
> >
> > I'd just go with one function which computes all these derived values, and
> > stuffs them into a struct drm_afbc. Then drivers call that once or so.
> >
>
> A struct drm_afbc, good idea, I like it. :-)
>
> and we can compute it when do the afbc size check like
>
>   drm_afbc_check_fb_size(..., &komeda_fb->drm_afbc);

Discussed this also with Andrzej on irc on where exactly to place
stuff. I think ideally we'd be able to get rid of the custom
malidp_fb_create completely, and komeda should also be able to get rid
of most of the open-coded checks (it's largely reinveting
drm_gem_fb_create_with_funcs, imo better to just call that first, then
then do a few more calls of the specific things you need to have
computed in addition).
-Daniel

>
> Thanks.
> James
>
> > For reworking drm_framebuffer itself I think it's probably a bit too
> > earlier. And if we do it, we should maybe go a bit more bold, aiming to
> > property-fy all the framebuffer settings, maybe even making it extensible,
> > and have drivers handle a corresponding drm_framebuffer_state.
> >
> > A third option would be to create a drm_afbc_framebuffer which embeds
> > drm_framebuffer and which drivers would need to use. But also feels a bit
> > like too much churn. Recomputing should be quick enough and much easier.
> > -Daniel
> >
> > >
> > > Thanks
> > > James
> > >
> > > > Thanks anyways for taking a stab at this.
> > > > -Ayan
> > > > > +
> > > > > +       if (!drm_afbc_check_fb_size(mode_cmd->pitches[0], bpp,
> > > > > +                                   mode_cmd->width, mode_cmd->height,
> > > > > +                                   alignment_w, alignment_h,
> > > > > +                                   obj->size, mode_cmd->offsets[0],
> > > > > +                                   AFBC_SUPERBLK_ALIGNMENT))
> > > > >                 goto check_failed;
> > > > > -       }
> > > > >
> > > > >         fb->obj[0] = obj;
> > > > >         return 0;
> > > > > --
> > > > > 2.17.1
> >
> > --
> > Daniel Vetter
> > Software Engineer, Intel Corporation
> > http://blog.ffwll.ch



-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

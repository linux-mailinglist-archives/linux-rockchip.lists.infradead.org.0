Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F02E4FAFD4
	for <lists+linux-rockchip@lfdr.de>; Wed, 13 Nov 2019 12:40:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1iWfJsFNV90bX7D1GzScLLNvP5g9QLaIveDoivmnGWw=; b=eBZA8CyoPleynx
	B6PqubPyjk/XvJaSamZU6EdRq3nnTvs5uGY9l8vXXRPpGgAsyBhEEJPOZEh1k8GicF7Uy/3zbKKY9
	dJz9cT9e1L0BjcyDDDYhyI+WCP18kypSNJ5KXqJJaDgQJieGB5DwK2JLqkGG/nBGC7kyQ63NbjHbv
	Av8I2fc21sutCGrC/QRbnYkBV0yiX1zqmaUf2tcfb/F5pTVLa84yQOk4WS2Ur4yr9oDlx9MZG+bcN
	kg0NHry9eovG5EJ14OXhA1AM8ZozuyRHq3y9IrYVxE7GQ0VuOmh42TrL5wQh5Tb70n0A4BcECoebn
	CUzaySdKJBQVVgRJdLZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUr0F-0001bT-L5; Wed, 13 Nov 2019 11:40:03 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUr0B-0001TN-Pw
 for linux-rockchip@lists.infradead.org; Wed, 13 Nov 2019 11:40:02 +0000
Received: by mail-wm1-x344.google.com with SMTP id a17so4692675wmb.0
 for <linux-rockchip@lists.infradead.org>; Wed, 13 Nov 2019 03:39:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=bq2qqZ+oRNm6IhsGbtwHKkXsgoKbiieO+lh693Hy/5A=;
 b=jVf25n0VkCSWVBetXRGkI3EPM9F5+MCLmEplwI6oPgBrr6YR94FijjSpwZk5Fqjocs
 19ZrJtUO/NL+Z42kVkMFlb6cUhCVfQE8xSNHgKfHyqVGqcSSHAgTZyrajx7hdYyNlghV
 Hw03iSa6FUoVIPSWzJc/45rfmX44rQCR9MLU4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=bq2qqZ+oRNm6IhsGbtwHKkXsgoKbiieO+lh693Hy/5A=;
 b=aYcUscl/FzYD+8HE5ZBCv9OEM0TcxmWb/ikQykwfBm+TC9Of3nHuyopomb/rVTcmXw
 sITd9nCNm2sb0iD/aV6yxQhSB6rG8NPM5oaihGWdd0umicZZ8pP6utxfuVD2mFr1HzC9
 xTR9uD8KpH3yLKNHZODbK+q04XKUHYwvYkcY7CAhCfstQuRHjKhYUmLwpO09Rusv4EYY
 FD529lTHXAFdIqcEqKZo2K/NfoP+KxKtm0oagePX58Y5JnqL0TyXx4g2cy4Hp+OLA5TR
 WwRy9MVhePmMjYijyVKR7Y8vHMu6ypV0dJOHsB07lQQ0j7SyonTc85Jro9jxUM4JD8Ef
 qBdg==
X-Gm-Message-State: APjAAAVnuO5FxVIkuxCZOqGxIfp5Ep5YXZDvXNZsVmxALFaNTf7yAoHs
 ly6SZyWOzLaYy+su+4UDvpic4A==
X-Google-Smtp-Source: APXvYqw2osMighHWX0smB/bHd/0+vzAZloHlG9oAPkIM5DdQ/SxmcjE8Rggd1q4hePOK/L9F/YQMrA==
X-Received: by 2002:a05:600c:cb:: with SMTP id u11mr2304359wmm.5.1573645197535; 
 Wed, 13 Nov 2019 03:39:57 -0800 (PST)
Received: from phenom.ffwll.local (212-51-149-96.fiber7.init7.net.
 [212.51.149.96])
 by smtp.gmail.com with ESMTPSA id w4sm1793035wmi.39.2019.11.13.03.39.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Nov 2019 03:39:56 -0800 (PST)
Date: Wed, 13 Nov 2019 12:39:54 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: "james qian wang (Arm Technology China)" <james.qian.wang@arm.com>
Subject: Re: [PATCHv2 3/4] drm/komeda: use afbc helpers
Message-ID: <20191113113954.GN23790@phenom.ffwll.local>
References: <2485717.1SzL54aMiy@e123338-lin>
 <20191104221228.3588-1-andrzej.p@collabora.com>
 <20191104221228.3588-4-andrzej.p@collabora.com>
 <20191108160954.GA17321@arm.com>
 <20191113020146.GB2746@jamwan02-TSP300>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191113020146.GB2746@jamwan02-TSP300>
X-Operating-System: Linux phenom 5.2.0-3-amd64 
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_033959_901694_D5FF0508 
X-CRM114-Status: GOOD (  25.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>, Liviu Dudau <Liviu.Dudau@arm.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Sandy Huang <hjc@rock-chips.com>, Maxime Ripard <mripard@kernel.org>,
 Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel@ffwll.ch>, Ayan Halder <Ayan.Halder@arm.com>,
 Sean Paul <sean@poorly.run>, Brian Starkey <Brian.Starkey@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Wed, Nov 13, 2019 at 02:01:53AM +0000, james qian wang (Arm Technology China) wrote:
> On Fri, Nov 08, 2019 at 04:09:54PM +0000, Ayan Halder wrote:
> > On Mon, Nov 04, 2019 at 11:12:27PM +0100, Andrzej Pietrasiewicz wrote:
> > > There are afbc helpers available.
> > > 
> > > Signed-off-by: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
> > > ---
> > >  .../arm/display/komeda/komeda_format_caps.h   |  1 -
> > >  .../arm/display/komeda/komeda_framebuffer.c   | 44 +++++++------------
> > >  2 files changed, 17 insertions(+), 28 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/arm/display/komeda/komeda_format_caps.h b/drivers/gpu/drm/arm/display/komeda/komeda_format_caps.h
> > > index 32273cf18f7c..607eea80e60c 100644
> > > --- a/drivers/gpu/drm/arm/display/komeda/komeda_format_caps.h
> > > +++ b/drivers/gpu/drm/arm/display/komeda/komeda_format_caps.h
> > > @@ -33,7 +33,6 @@
> > >  
> > >  #define AFBC_TH_LAYOUT_ALIGNMENT	8
> > >  #define AFBC_HEADER_SIZE		16
> > > -#define AFBC_SUPERBLK_ALIGNMENT		128
> > >  #define AFBC_SUPERBLK_PIXELS		256
> > >  #define AFBC_BODY_START_ALIGNMENT	1024
> > >  #define AFBC_TH_BODY_START_ALIGNMENT	4096
> > > diff --git a/drivers/gpu/drm/arm/display/komeda/komeda_framebuffer.c b/drivers/gpu/drm/arm/display/komeda/komeda_framebuffer.c
> > > index 1b01a625f40e..e9c87551a5b8 100644
> > > --- a/drivers/gpu/drm/arm/display/komeda/komeda_framebuffer.c
> > > +++ b/drivers/gpu/drm/arm/display/komeda/komeda_framebuffer.c
> > > @@ -4,6 +4,7 @@
> > >   * Author: James.Qian.Wang <james.qian.wang@arm.com>
> > >   *
> > >   */
> > > +#include <drm/drm_afbc.h>
> > >  #include <drm/drm_device.h>
> > >  #include <drm/drm_fb_cma_helper.h>
> > >  #include <drm/drm_gem.h>
> > > @@ -43,8 +44,7 @@ komeda_fb_afbc_size_check(struct komeda_fb *kfb, struct drm_file *file,
> > >  	struct drm_framebuffer *fb = &kfb->base;
> > >  	const struct drm_format_info *info = fb->format;
> > >  	struct drm_gem_object *obj;
> > > -	u32 alignment_w = 0, alignment_h = 0, alignment_header, n_blocks, bpp;
> > > -	u64 min_size;
> > > +	u32 alignment_w = 0, alignment_h = 0, alignment_header, bpp;
> > >  
> > >  	obj = drm_gem_object_lookup(file, mode_cmd->handles[0]);
> > >  	if (!obj) {
> > > @@ -52,19 +52,15 @@ komeda_fb_afbc_size_check(struct komeda_fb *kfb, struct drm_file *file,
> > >  		return -ENOENT;
> > >  	}
> > >  
> > > -	switch (fb->modifier & AFBC_FORMAT_MOD_BLOCK_SIZE_MASK) {
> > > -	case AFBC_FORMAT_MOD_BLOCK_SIZE_32x8:
> > > -		alignment_w = 32;
> > > -		alignment_h = 8;
> > > -		break;
> > > -	case AFBC_FORMAT_MOD_BLOCK_SIZE_16x16:
> > > -		alignment_w = 16;
> > > -		alignment_h = 16;
> > > -		break;
> > > -	default:
> > > -		WARN(1, "Invalid AFBC_FORMAT_MOD_BLOCK_SIZE: %lld.\n",
> > > -		     fb->modifier & AFBC_FORMAT_MOD_BLOCK_SIZE_MASK);
> > > -		break;
> > > +	if (!drm_afbc_get_superblk_wh(fb->modifier, &alignment_w, &alignment_h))
> > > +		return -EINVAL;
> > > +
> > > +	if ((alignment_w != 16 || alignment_h != 16) &&
> > > +	    (alignment_w != 32 || alignment_h != 8)) {
> > > +		DRM_DEBUG_KMS("Unsupported afbc tile w/h [%d/%d]\n",
> > > +			      alignment_w, alignment_h);
> > > +
> > > +		return -EINVAL;
> > To be honest, the previous code looks much more readable
> > >  	}
> > >  
> > >  	/* tiled header afbc */
> > > @@ -84,20 +80,14 @@ komeda_fb_afbc_size_check(struct komeda_fb *kfb, struct drm_file *file,
> > >  		goto check_failed;
> > >  	}
> > >  
> > > -	n_blocks = (kfb->aligned_w * kfb->aligned_h) / AFBC_SUPERBLK_PIXELS;
> > > -	kfb->offset_payload = ALIGN(n_blocks * AFBC_HEADER_SIZE,
> > > -				    alignment_header);
> > > -
> > >  	bpp = komeda_get_afbc_format_bpp(info, fb->modifier);
> > > -	kfb->afbc_size = kfb->offset_payload + n_blocks *
> > > -			 ALIGN(bpp * AFBC_SUPERBLK_PIXELS / 8,
> > > -			       AFBC_SUPERBLK_ALIGNMENT);
> > > -	min_size = kfb->afbc_size + fb->offsets[0];
> > > -	if (min_size > obj->size) {
> > > -		DRM_DEBUG_KMS("afbc size check failed, obj_size: 0x%zx. min_size 0x%llx.\n",
> > > -			      obj->size, min_size);
> > We need kfb->offset_payload and kfb->afbc_size to set some registers
> > in d71_layer_update(). At this moment I feel like punching myself for
> > making the suggestion to consider abstracting some of the komeda's afbc
> > checks. To me it does not look like komeda(in the current shape) can take
> > much advantage of the generic _afbc_fb_check() function (as was suggested
> > previously by Danvet).
> > 
> > However, I will let james.qian.wang@arm.com,
> > Mihail.Atanassov@arm.com, Ben.Davis@arm.com comment here to see if
> > there could be a way of abstracting the afbc bits from komeda.
> >
> 
> Hi all:
> 
> Since the current generic drm_afbc helpers only support afbc_1.1, but
> komeda needs support both afbc1.1/1.2, so I think we can:
> - Add afbc1.2 support to drm afbc helpers.
> - for the afbc_payload_offset, can we add this member to
>   drm_framebuffer ?
> - The aligned_w/h are important for afbc, so can we have them in
>   drm_framebuffer ?  

How expensive is it to recompute these from a struct drm_framebuffer?

I'd just go with one function which computes all these derived values, and
stuffs them into a struct drm_afbc. Then drivers call that once or so.

For reworking drm_framebuffer itself I think it's probably a bit too
earlier. And if we do it, we should maybe go a bit more bold, aiming to
property-fy all the framebuffer settings, maybe even making it extensible,
and have drivers handle a corresponding drm_framebuffer_state.

A third option would be to create a drm_afbc_framebuffer which embeds
drm_framebuffer and which drivers would need to use. But also feels a bit
like too much churn. Recomputing should be quick enough and much easier.
-Daniel

> 
> Thanks
> James
> 
> > Thanks anyways for taking a stab at this.
> > -Ayan
> > > +
> > > +	if (!drm_afbc_check_fb_size(mode_cmd->pitches[0], bpp,
> > > +				    mode_cmd->width, mode_cmd->height,
> > > +				    alignment_w, alignment_h,
> > > +				    obj->size, mode_cmd->offsets[0],
> > > +				    AFBC_SUPERBLK_ALIGNMENT))
> > >  		goto check_failed;
> > > -	}
> > >  
> > >  	fb->obj[0] = obj;
> > >  	return 0;
> > > -- 
> > > 2.17.1

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

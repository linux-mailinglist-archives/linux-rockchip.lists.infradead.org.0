Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35EE8D01E1
	for <lists+linux-rockchip@lfdr.de>; Tue,  8 Oct 2019 22:03:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2jBryGZ4MEAPL7QA5d9HW/1CLLMP4vteEaNB4BjTt0s=; b=Y5IXA6kS+edGAZ
	R0HUsOdmw0C2PEzy8ki1vCmt4o0GB7OCt0NEnFg74XPGrTqlb/ZtXJWnY8cT4S7iN2F5q7Gqjke86
	d9M2P69W+0VF7CRHjk+3Sho+Rus7zH5X7CKcGnJAMYEdzQHTlXe3kAjSMzysF3gtzTpkPDLN56TJR
	oawct7zLbxNP1g7V/HX3WUGsmI1rCJj+crfjcJg89bNbRcgb3cFcGO+nDgbzBjaeL3yZBgw0YEbLi
	SdartlK5DaW8sV3L3T88X5ooRC4SwFzBKwgWLuwhZjdLWOXsg5SwdLMywsos+BOVSCsCgxO8nwit2
	CvTtnH8OgHBWKNmPjLZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHvi0-0006HY-QN; Tue, 08 Oct 2019 20:03:48 +0000
Received: from mail-yw1-xc42.google.com ([2607:f8b0:4864:20::c42])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHvhx-0006GS-Gq
 for linux-rockchip@lists.infradead.org; Tue, 08 Oct 2019 20:03:47 +0000
Received: by mail-yw1-xc42.google.com with SMTP id r134so6909583ywg.2
 for <linux-rockchip@lists.infradead.org>; Tue, 08 Oct 2019 13:03:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=4CE1BxrYmt8bIJQ4ee/mv7sHVSkIz9neBXcllQM3bao=;
 b=UBp5dI6/eg+7xME26slfmNl99bWpkkf6SBDDeSqgT2/f7har5/CI1SF6tqgtOrxW/t
 IfvCN+hBCTQpIZF9DJh97Rlw5ZdpCQYiK+XnRcq8i1tn1sU0XyS+FlUlIdNMdN59t0Ky
 ZOCA7LcugGMWfPlYJ0INKOVVaRHSYD9+FCnzHxJP3NYVDQU8TR4qGjPeNp8prA1VN1Lf
 9cMpkppFnDHSlEo6kJE1tox3bRFQ+SG3GhAzOXZTgqr+7zO4TrIftJc1wYsqcCFER43Z
 z6nvtZlJUwgYuFtC1Y6PDxHHJIPgb8qVdFLmjISYRBvmHX67DlZv7S01ESzvXnkAccEo
 Qoxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=4CE1BxrYmt8bIJQ4ee/mv7sHVSkIz9neBXcllQM3bao=;
 b=RLjTWmKPwBPTyhHec1IQ52fGesOLufk/rUbI8GiinuRJM3kDap+IXNBlFkW6gfhDig
 aTd9gfIkNxm/M7EsBX4B/C6WbIxK7/ulut2qxeHK2AEFjY1Cm23H+ASp/KkvpZOCSOLT
 jffxLE0oSV8HUOquRXE3835da+yp2wLM2ElsPG4i0CQL5EhuYz099YCPZeHgi/Qv8i7d
 SbQ1+jNG+AQ5G8oOkvInIje97nlZ+ioVr6bUm1iCJeUi/tysKTJpsBQ/B17+HKZ/cmkf
 nuGQqV3kGuuZPAZ5NJ4N0gKLbvOvoKuKHv1VMDRuAsC6Rofk3rSTtmPmxptD0alla1oF
 sKVQ==
X-Gm-Message-State: APjAAAVMciBUXUW2KirXt1y4Y/hXbO9jKptlx2bn5hl2yboY/a+qzghB
 QsaoFST1/RhLvxNDzjtmQPx/Nw==
X-Google-Smtp-Source: APXvYqx7YYibEGvaoohfIoxEc2sHRClCB8jQgphg6W4QPuB8xNYmRba4UMcQGm26BNKAAtz04sl2sA==
X-Received: by 2002:a81:4f0b:: with SMTP id d11mr71977ywb.109.1570565020219;
 Tue, 08 Oct 2019 13:03:40 -0700 (PDT)
Received: from localhost ([2620:0:1013:11:89c6:2139:5435:371d])
 by smtp.gmail.com with ESMTPSA id u67sm7785ywf.44.2019.10.08.13.03.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Oct 2019 13:03:39 -0700 (PDT)
Date: Tue, 8 Oct 2019 16:03:39 -0400
From: Sean Paul <sean@poorly.run>
To: Ezequiel Garcia <ezequiel@collabora.com>
Subject: Re: [PATCH v3 3/5] drm/rockchip: Add optional support for CRTC gamma
 LUT
Message-ID: <20191008200339.GD85762@art_vandelay>
References: <20190930222802.32088-1-ezequiel@collabora.com>
 <20190930222802.32088-4-ezequiel@collabora.com>
 <20191007185432.GG126146@art_vandelay>
 <dad6ee9aa3699af0f794f467224a8a01798d86b2.camel@collabora.com>
 <9cdd23c20ed91d4c4654aaae27d8c3addfd9af3f.camel@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9cdd23c20ed91d4c4654aaae27d8c3addfd9af3f.camel@collabora.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_130345_572126_A62F34ED 
X-CRM114-Status: GOOD (  34.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Jacopo Mondi <jacopo@jmondi.org>,
 Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
 linux-kernel@vger.kernel.org, Sandy Huang <hjc@rock-chips.com>,
 dri-devel@lists.freedesktop.org, Douglas Anderson <dianders@chromium.org>,
 linux-rockchip@lists.infradead.org,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Sean Paul <seanpaul@chromium.org>, Rob Herring <robh+dt@kernel.org>,
 Jacopo Mondi <jacopo+renesas@jmondi.org>, kernel@collabora.com,
 Sean Paul <sean@poorly.run>, Ilia Mirkin <imirkin@alum.mit.edu>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Tue, Oct 08, 2019 at 04:33:35PM -0300, Ezequiel Garcia wrote:
> On Tue, 2019-10-08 at 16:23 -0300, Ezequiel Garcia wrote:
> > Hello Sean,
> > 
> > On Mon, 2019-10-07 at 14:54 -0400, Sean Paul wrote:
> > > On Mon, Sep 30, 2019 at 07:28:00PM -0300, Ezequiel Garcia wrote:
> > > > Add an optional CRTC gamma LUT support, and enable it on RK3288.
> > > > This is currently enabled via a separate address resource,
> > > > which needs to be specified in the devicetree.
> > > > 
> > > > The address resource is required because on some SoCs, such as
> > > > RK3288, the LUT address is after the MMU address, and the latter
> > > > is supported by a different driver. This prevents the DRM driver
> > > > from requesting an entire register space.
> > > > 
> > > > The current implementation works for RGB 10-bit tables, as that
> > > > is what seems to work on RK3288.
> > > > 
> > > > Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> > > > Reviewed-by: Douglas Anderson <dianders@chromium.org>
> > > > Reviewed-by: Jacopo Mondi <jacopo+renesas@jmondi.org>
> > > > ---
> > > > Changes from v2:
> > > > * None.
> > > > 
> > > > Changes from v1:
> > > > * drop explicit linear LUT after finding a proper
> > > >   way to disable gamma correction.
> > > > * avoid setting gamma is the CRTC is not active.
> > > > * s/int/unsigned int as suggested by Jacopo.
> > > > * only enable color management and set gamma size
> > > >   if gamma LUT is supported, suggested by Doug.
> > > > * drop the reg-names usage, and instead just use indexed reg
> > > >   specifiers, suggested by Doug.
> > > > 
> > > > Changes from RFC:
> > > > * Request (an optional) address resource for the LUT.
> > > > * Drop support for RK3399, which doesn't seem to work
> > > >   out of the box and needs more research.
> > > > * Support pass-thru setting when GAMMA_LUT is NULL.
> > > > * Add a check for the gamma size, as suggested by Ilia.
> > > > * Move gamma setting to atomic_commit_tail, as pointed
> > > >   out by Jacopo/Laurent, is the correct way.
> > > > ---
> > > >  drivers/gpu/drm/rockchip/rockchip_drm_fb.c  |   3 +
> > > >  drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 114 ++++++++++++++++++++
> > > >  drivers/gpu/drm/rockchip/rockchip_drm_vop.h |   7 ++
> > > >  drivers/gpu/drm/rockchip/rockchip_vop_reg.c |   2 +
> > > >  4 files changed, 126 insertions(+)
> > > > 
> > > > diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_fb.c b/drivers/gpu/drm/rockchip/rockchip_drm_fb.c
> > > > index dba352ec0ee3..fd1d987698ab 100644
> > > > --- a/drivers/gpu/drm/rockchip/rockchip_drm_fb.c
> > > > +++ b/drivers/gpu/drm/rockchip/rockchip_drm_fb.c
> > > > @@ -17,6 +17,7 @@
> > > >  #include "rockchip_drm_drv.h"
> > > >  #include "rockchip_drm_fb.h"
> > > >  #include "rockchip_drm_gem.h"
> > > > +#include "rockchip_drm_vop.h"
> > > >  
> > > >  static const struct drm_framebuffer_funcs rockchip_drm_fb_funcs = {
> > > >  	.destroy       = drm_gem_fb_destroy,
> > > > @@ -112,6 +113,8 @@ rockchip_atomic_helper_commit_tail_rpm(struct drm_atomic_state *old_state)
> > > >  
> > > >  	drm_atomic_helper_commit_modeset_disables(dev, old_state);
> > > >  
> > > > +	rockchip_drm_vop_gamma_set(old_state);
> > > > +
> > > 
> > > Instead of duplicating the commit_tail helper, could you just implement
> > > .atomic_begin() and call this from there? I think the only hitch is if you
> > > need this to be completed before crtc->atomic_enable(), at which point you
> > > might need to call it from vop_crtc_atomic_enable() and then detect that in
> > > atomic_begin()
> > > 
> > 
> > I think moving this to .atomic_begin might be enough. Let me send a new
> > series and we can see how that goes.
> > 
> 
> Oh, before going forward, pleaste note that the first iteration
> of this patch (as noted in the changelog) was applying the gamma lut
> on .atomic_flush. However, Laurent and Jacopo pointed out that
> it might add some tearing to do so, and that's why it was moved
> to commit_tail.
> 
> I have to admit I'm not too sure about the difference between
> applying this gamma LUT on atomic_begin or atomic_flush,
> perhaps you can clarify that?

The only difference between what you have now and calling it in atomic_begin
is that as you have it now, it's set before crtc->atomic_enable() is called.
I think in order to address Ville's concerns on the other patch, you'll need
to set it the lut in .atomic_enable() anyways, so here's what I would suggest:

- Set the LUT in .atomic_enable() wherever it makes sense (you have it at the
  start now)
- Add an .atomic_begin() implementation and check state->color_mgmt_changed and
  state->active_changed. color_mgmt_changed && !active_changed, set the lut
- Remove patches 1 & 5

...I think :-)

Sean

> 
> Thanks!
> Ezequiel 
> 
> 

-- 
Sean Paul, Software Engineer, Google / Chromium OS

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

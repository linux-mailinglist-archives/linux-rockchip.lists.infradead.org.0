Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9905CD2E83
	for <lists+linux-rockchip@lfdr.de>; Thu, 10 Oct 2019 18:23:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dB9JjR/SO8KLdBLhrk0mE1Heo4cQnb2KLke2l/Nes/g=; b=OGZv+QquvuTTkF
	VKjtsUWUIiFejl2uw3PW0ER226MCp1fJaxyLoxLK9IxuU7UcibkjMeSwrVdmjbzkBpxeXbgiznXpS
	KzN3WJcyjimQeyW7yszULSNn/mas3etZsXSf2ESxakSy4X6skc56bPms6DAnLBmZfLV3oijN0APYf
	yuw8Il8jNV7BYI/nhkl+Ygbmt5pAL7iXUoJePMvarSiG431rDCTYp04waGCD6DFzSf6XtPkqz2Dqz
	x6g3iK2hwB+2WTvxLdqLiW/h9RYtstuPu2I2w/wMF3bAHh04YeMDAqpJ/WmtaMTjAa1a7XAiB4Lrz
	uIN38G31ysu2d5F2KeaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIbDm-0001b1-Av; Thu, 10 Oct 2019 16:23:22 +0000
Received: from mail-vk1-f194.google.com ([209.85.221.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIbDj-0001Zo-8G
 for linux-rockchip@lists.infradead.org; Thu, 10 Oct 2019 16:23:20 +0000
Received: by mail-vk1-f194.google.com with SMTP id s72so1484197vkh.5
 for <linux-rockchip@lists.infradead.org>; Thu, 10 Oct 2019 09:23:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KBjP/c0OKbAYMhFk+/MWcTlhvk8Dj6HOEt+fBr53HAk=;
 b=k4dOlZu/lIEO1c3x97kTdZcRjBs+E4cT5FyT2qiJoju3fzj+e+5QSzjTHMwpplDKnJ
 lbSdVrZqOFapaGTAnRtvqv0fmS48Os2O5oKdqTTDuVBWXpgfBPRJGD0s01P+oZav+/uo
 4zakkc72HBMmCySuS+Pw6sSPNYpU1VxR3hgJ8SACv2c0mT/hryVA4QYYXfgaTHFj5pGZ
 sjC1wsmtgj9TWN10xwmuTcGs2GWUyXAWHwu9aGwm965d84TJfiXDaMI6xej5g1x0BgBD
 8u3fyIc0LgL+Ory1GSwzXLMfCHV/935aDnVRsD6z/g/9kHQlJJ0TjA2qmjLcolvHWFnz
 LusQ==
X-Gm-Message-State: APjAAAVFaL/YmF1YAyBHQjh64LupqlqxTPv8RKogFaqDDU97MWB1eugm
 E5tF4hx2c+G6Ve9OiFnLfCF2jKND2RcxWqVUN8A=
X-Google-Smtp-Source: APXvYqxR5nObCEPHTyxfZVEjMwGluSVjyDTAju7pr0IKOuLXRkT9sFsva0PDisUmx53NIWYO7d0j9h/xhWamFO8Of1Y=
X-Received: by 2002:a1f:3811:: with SMTP id f17mr5853576vka.56.1570724597472; 
 Thu, 10 Oct 2019 09:23:17 -0700 (PDT)
MIME-Version: 1.0
References: <20191008230038.24037-1-ezequiel@collabora.com>
 <20191008230038.24037-3-ezequiel@collabora.com>
 <20191009180136.GE85762@art_vandelay>
 <CAAEAJfDP0PsGAoRfGyDyWj7DxgP6nwwwA1_gwLQuVy-fRDa-UA@mail.gmail.com>
 <20191010160059.GJ85762@art_vandelay>
In-Reply-To: <20191010160059.GJ85762@art_vandelay>
From: Ilia Mirkin <imirkin@alum.mit.edu>
Date: Thu, 10 Oct 2019 12:23:05 -0400
Message-ID: <CAKb7UvhWWYcpmyMZgerdJiG=sZjQUBVkeEwev+PdYzBW6+xsbQ@mail.gmail.com>
Subject: Re: [PATCH v4 2/3] drm/rockchip: Add optional support for CRTC gamma
 LUT
To: Sean Paul <sean@poorly.run>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_092319_294578_377B634A 
X-CRM114-Status: GOOD (  14.85  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.194 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.194 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (ibmirkin[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
 Rob Herring <robh+dt@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Douglas Anderson <dianders@chromium.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Sean Paul <seanpaul@chromium.org>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, kernel@collabora.com,
 Ezequiel Garcia <ezequiel@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Thu, Oct 10, 2019 at 12:01 PM Sean Paul <sean@poorly.run> wrote:
> > > > +static int vop_crtc_atomic_check(struct drm_crtc *crtc,
> > > > +                              struct drm_crtc_state *crtc_state)
> > > > +{
> > > > +     struct vop *vop = to_vop(crtc);
> > > > +
> > > > +     if (vop->lut_regs && crtc_state->color_mgmt_changed &&
> > > > +         crtc_state->gamma_lut) {
> > > > +             unsigned int len;
> > > > +
> > > > +             len = drm_color_lut_size(crtc_state->gamma_lut);
> > > > +             if (len != crtc->gamma_size) {
> > > > +                     DRM_DEBUG_KMS("Invalid LUT size; got %d, expected %d\n",
> > > > +                                   len, crtc->gamma_size);
> > > > +                     return -EINVAL;
> > > > +             }
> > >
> > > Overflow is avoided in drm_mode_gamma_set_ioctl(), so I don't think you need
> > > this function.
> > >
> >
> > But that only applies to the legacy path. Isn't this needed to ensure
> > a gamma blob
> > has the right size?
>
> Yeah, good point, we check the element size in the atomic path, but not the max
> size. I haven't looked at enough color lut stuff to have an opinion whether this
> check would be useful in a helper function or not, something to consider, I
> suppose.

Some implementations support multiple sizes (e.g. 256 and 1024) but
not anything in between. It would be difficult to expose this
generically, I would imagine. The 256 size is kind of special, since
basically all legacy usage assumes that 256 is the one true quantity
of LUT entries...

  -ilia

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

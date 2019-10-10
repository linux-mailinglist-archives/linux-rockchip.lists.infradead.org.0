Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08E11D2FAF
	for <lists+linux-rockchip@lfdr.de>; Thu, 10 Oct 2019 19:36:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EvpzAYzhzpTmvGb2u88cUridZORMpuhsAauQatV6pug=; b=sMUp6YCQpWAXHB
	F8f4H3X0pR03uKnf3qrIf8bd3z/z/lBequbEREU+Fu0/Rk2RWoMFfzRREOQ++lk5TQG4U26DSTFlo
	ieI8YDMVTqERFsoJP0/0HI2NvShZc62V7JsQKQO7v8BNPr2tfgVRZkhprEreuaKwA5XGlmqv65v3R
	o7HHeYwtk3kowEA4yFGTEzz4os2gLBVYcBX5T1BYcXA6OONThhlEfbXrK8VtOlvaQbePPG3E3H5KK
	TDkDjC5dUJ7FmYD7dhibZJRPeYgzk9D/I5TM1h9uZiIB5EP/12TfNV1fCGpPP0Waay0GHvwSaseF1
	IqG3Ee3/KnfTIBjilNNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIcMK-0008It-GK; Thu, 10 Oct 2019 17:36:16 +0000
Received: from mga05.intel.com ([192.55.52.43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIcMH-0008Hs-Ff
 for linux-rockchip@lists.infradead.org; Thu, 10 Oct 2019 17:36:14 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Oct 2019 10:36:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,281,1566889200"; d="scan'208";a="200538447"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 10 Oct 2019 10:36:08 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 10 Oct 2019 20:36:07 +0300
Date: Thu, 10 Oct 2019 20:36:07 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ilia Mirkin <imirkin@alum.mit.edu>
Subject: Re: [PATCH v4 2/3] drm/rockchip: Add optional support for CRTC gamma
 LUT
Message-ID: <20191010173607.GH1208@intel.com>
References: <20191008230038.24037-1-ezequiel@collabora.com>
 <20191008230038.24037-3-ezequiel@collabora.com>
 <20191009180136.GE85762@art_vandelay>
 <CAAEAJfDP0PsGAoRfGyDyWj7DxgP6nwwwA1_gwLQuVy-fRDa-UA@mail.gmail.com>
 <20191010160059.GJ85762@art_vandelay>
 <CAKb7UvhWWYcpmyMZgerdJiG=sZjQUBVkeEwev+PdYzBW6+xsbQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKb7UvhWWYcpmyMZgerdJiG=sZjQUBVkeEwev+PdYzBW6+xsbQ@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_103613_541801_FA9449AA 
X-CRM114-Status: GOOD (  18.85  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.43 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
 Ezequiel Garcia <ezequiel@collabora.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Douglas Anderson <dianders@chromium.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>, Sean Paul <seanpaul@chromium.org>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Boris Brezillon <boris.brezillon@collabora.com>, kernel@collabora.com,
 Sean Paul <sean@poorly.run>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Thu, Oct 10, 2019 at 12:23:05PM -0400, Ilia Mirkin wrote:
> On Thu, Oct 10, 2019 at 12:01 PM Sean Paul <sean@poorly.run> wrote:
> > > > > +static int vop_crtc_atomic_check(struct drm_crtc *crtc,
> > > > > +                              struct drm_crtc_state *crtc_state)
> > > > > +{
> > > > > +     struct vop *vop =3D to_vop(crtc);
> > > > > +
> > > > > +     if (vop->lut_regs && crtc_state->color_mgmt_changed &&
> > > > > +         crtc_state->gamma_lut) {
> > > > > +             unsigned int len;
> > > > > +
> > > > > +             len =3D drm_color_lut_size(crtc_state->gamma_lut);
> > > > > +             if (len !=3D crtc->gamma_size) {
> > > > > +                     DRM_DEBUG_KMS("Invalid LUT size; got %d, ex=
pected %d\n",
> > > > > +                                   len, crtc->gamma_size);
> > > > > +                     return -EINVAL;
> > > > > +             }
> > > >
> > > > Overflow is avoided in drm_mode_gamma_set_ioctl(), so I don't think=
 you need
> > > > this function.
> > > >
> > >
> > > But that only applies to the legacy path. Isn't this needed to ensure
> > > a gamma blob
> > > has the right size?
> >
> > Yeah, good point, we check the element size in the atomic path, but not=
 the max
> > size. I haven't looked at enough color lut stuff to have an opinion whe=
ther this
> > check would be useful in a helper function or not, something to conside=
r, I
> > suppose.
> =

> Some implementations support multiple sizes (e.g. 256 and 1024) but
> not anything in between. It would be difficult to expose this
> generically, I would imagine.
> The 256 size is kind of special, since
> basically all legacy usage assumes that 256 is the one true quantity
> of LUT entries...

What we do currently in i915 is:
crtc->gamma_size =3D 256
GAMMA_LUT_SIZE =3D platform specific (256, 129, 257, 2^10, or 2^18+1 (lol))
DEGAMMA_LUT_SIZE =3D platform specific (0, 33, 65, or 2^10)

i915 will accept:
- gamma lut of size 256, iff ctm=3D=3DNULL and degamma=3D=3DNULL (the so
  called "legacy gamma" mode)
- (de)gamma_lut of size (DE)GAMMA_LUT_SIZE if it passes the
  checks done by drm_color_lut_check()

Ie. just one or two gamma modes per platform is exposed. And that's
about all we can do with the current uapi even though our hardware
supports many more modes.

The resulting precision, interpolation vs. truncation behaviour,
and handling of out of gamut values are all totally unspecified
and userspace just has to make a guess.

We also cheat with the 2^10 sized LUTs a bit due to the hw sharing
the same LUT for gamma and degamma, and so if you enable both at
the same time we throw away every second entry and each stage
only gets a 2^9 entry LUT in the end.

Oh and for the 2^18+1 monstrosity we cheat even more and
throw away ~99.8% of the entries :(


This here was my idea for extending the uapi so that we
could expose the full hw capabilities and let userspace
decide which mode suits it best without having to guess
what it'll get:
https://github.com/vsyrjala/linux/commits/gamma_mode_prop

Maybe in a few years I'll find time to get back to it...

-- =

Ville Syrj=E4l=E4
Intel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

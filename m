Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5B99F2910
	for <lists+linux-rockchip@lfdr.de>; Thu,  7 Nov 2019 09:27:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/68tbfy1x1h3q1tlpS+5sHDY3JbwyJn54KNaNCw6Uag=; b=WwDn10GzIw+d22
	DL2QxOc6+u3K0JvCFmNf8k72/ne7GhbMld/PB1WS/PMh/YYjY3QzhiINpEcVRrGFlsfG2W8tJnLbZ
	k5e6Gcx3drN1st1XMz/15J2eDpv4PUcISRrlv+Ht7Bcg38SDS4M7mS+wBimk4bzLGzNXUhwuU9Rm8
	BZSlZIBwB49PBSHbZuOkIDVI9Ehvuw+DoH97Gy+BYOLeCH06SFeIWaZMbMHSwBrMDkzVjsmXeffeU
	dP9IQYAcIEiTW3CmrJM1+kpUOVdpWsrk7YZmcDv+PMs8AIm8sXczzyjJtsq7/opIPx9Iw8yzRKc8I
	VO1XDjKtgF632UKf5YxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSd8n-0001e9-Ba; Thu, 07 Nov 2019 08:27:41 +0000
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSd8k-0001do-Qc
 for linux-rockchip@lists.infradead.org; Thu, 07 Nov 2019 08:27:40 +0000
Received: by mail-wr1-x42c.google.com with SMTP id a15so1920402wrf.9
 for <linux-rockchip@lists.infradead.org>; Thu, 07 Nov 2019 00:27:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=h4K7TfJavvavtarTw//D0rJYwTw3W9sc+VxHibBMIh0=;
 b=eOmVSaD7IS19hDgEpPxBVKet3+9nAmXbB4y8KiLMpRA/go9xNdbDgH3c6a+CYSLMdE
 fmzo/om/CvQPeSGdxroqImiXi2JTjr+YL9qJAlPdSg+cvagFRrs90p0HH3qLPvssLpRS
 4NM1IxbQG9CWMN8mQS+vA4gNXZhBDUvpQTyXE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to:user-agent;
 bh=h4K7TfJavvavtarTw//D0rJYwTw3W9sc+VxHibBMIh0=;
 b=czaAcG11T2KMEyAibRtt3Op6gwEVMACmBggHsiDJgFMm2QejxgCgHaB3N9O2yw0CbT
 5UrBvY4MxJr2YiKn0yAfrozJlscJSevAd77JycHQm6XWrcMpNrN9eklnMBNmUuF+AiQB
 S6zNkO0PQwqfcZ9IVigUS0SMytbDA9r0YbSTx05EMeF/JRyEoIjCTrxdpTno0IpVJCda
 xzFI9uf3qYHhLDwv14atjFIlF70JC4TOEmTc+eWGXYpdZQE3pfr4ZHyZq+gDoGLQlS2T
 psXG8y72YULU2B+uEgDJFcC6cqPT71cbwMTqki+7J2LRuwyM4ZX575B6Y11NU11bpinp
 gkxg==
X-Gm-Message-State: APjAAAUFg1O30svBpE4ZefJ3afZE7/X9weRtCSgK/NTugofEZ4wbTXMH
 gsZUZTeDc1szcWESOkqIbD14hf/oS50=
X-Google-Smtp-Source: APXvYqw9LlvGfiySmP5xOuhfh34kHBu0sjeBpgLZBX2QP9XgxvtQK1pzXbNC7BGKJ59VBjSTUXb0Ug==
X-Received: by 2002:a5d:62cd:: with SMTP id o13mr1663268wrv.367.1573115256958; 
 Thu, 07 Nov 2019 00:27:36 -0800 (PST)
Received: from phenom.ffwll.local (212-51-149-96.fiber7.init7.net.
 [212.51.149.96])
 by smtp.gmail.com with ESMTPSA id h140sm1564232wme.22.2019.11.07.00.27.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 Nov 2019 00:27:35 -0800 (PST)
Date: Thu, 7 Nov 2019 09:27:33 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
Subject: Re: [PATCHv2 1/4] drm/arm: Factor out generic afbc helpers
Message-ID: <20191107082733.GI23790@phenom.ffwll.local>
References: <2485717.1SzL54aMiy@e123338-lin>
 <20191104221228.3588-1-andrzej.p@collabora.com>
 <20191104221228.3588-2-andrzej.p@collabora.com>
 <20191105092232.GV10326@phenom.ffwll.local>
 <d4828420-6109-ff93-e0da-d0493cf3aef5@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d4828420-6109-ff93-e0da-d0493cf3aef5@collabora.com>
X-Operating-System: Linux phenom 5.2.0-3-amd64 
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_002738_916204_5521E525 
X-CRM114-Status: GOOD (  17.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:42c listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: kernel@collabora.com, Mihail Atanassov <mihail.atanassov@arm.com>,
 David Airlie <airlied@linux.ie>, Liviu Dudau <liviu.dudau@arm.com>,
 dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 James Wang <james.qian.wang@arm.com>, Daniel Vetter <daniel@ffwll.ch>,
 Ayan Halder <Ayan.Halder@arm.com>, Sean Paul <sean@poorly.run>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Wed, Nov 06, 2019 at 01:45:05PM +0100, Andrzej Pietrasiewicz wrote:
> Hi Daniel,
> =

> Thank you for review,
> =

> W dniu 05.11.2019 o=A010:22, Daniel Vetter pisze:
> > On Mon, Nov 04, 2019 at 11:12:25PM +0100, Andrzej Pietrasiewicz wrote:
> > > These are useful for other users of afbc, e.g. rockchip.
> > > =

> =

> <snip>
> =

> > > +
> > > +bool drm_afbc_check_fb_size_ret(u32 pitch, int bpp,
> > > +				u32 w, u32 h, u32 superblk_w, u32 superblk_h,
> > > +				size_t size, u32 offset, u32 hdr_align,
> > > +				u32 *payload_off, u32 *total_size)
> > > +{
> > > +	int n_superblks =3D 0;
> > > +	u32 superblk_sz =3D 0;
> > > +	u32 afbc_size =3D 0;
> > > +
> > > +	n_superblks =3D (w / superblk_w) * (h / superblk_h);
> > > +	superblk_sz =3D (bpp * superblk_w * superblk_h) / BITS_PER_BYTE;
> > > +	afbc_size =3D ALIGN(n_superblks * AFBC_HEADER_SIZE, hdr_align);
> > > +	*payload_off =3D afbc_size;
> > > +
> > > +	afbc_size +=3D n_superblks * ALIGN(superblk_sz, AFBC_SUPERBLK_ALIGN=
MENT);
> > > +	*total_size =3D afbc_size + offset;
> > > +
> > > +	if ((w * bpp) !=3D (pitch * BITS_PER_BYTE)) {
> > > +		DRM_DEBUG_KMS("Invalid value of (pitch * BITS_PER_BYTE) (=3D%u) sh=
ould be same as width (=3D%u) * bpp (=3D%u)\n",
> > > +			      pitch * BITS_PER_BYTE, w, bpp
> > > +		);
> > > +		return false;
> > > +	}
> > > +
> > > +	if (size < afbc_size) {
> > > +		DRM_DEBUG_KMS("buffer size (%zu) too small for AFBC buffer size =
=3D %u\n",
> > > +			      size, afbc_size
> > > +		);
> > > +
> > > +		return false;
> > > +	}
> > > +
> > > +	return true;
> > > +}
> > > +EXPORT_SYMBOL(drm_afbc_check_fb_size_ret);
> > > +
> > > +bool drm_afbc_check_fb_size(u32 pitch, int bpp,
> > > +			    u32 w, u32 h, u32 superblk_w, u32 superblk_h,
> > > +			    size_t size, u32 offset, u32 hdr_align)
> > > +{
> > > +	u32 payload_offset, total_size;
> > > +
> > > +	return drm_afbc_check_fb_size_ret(pitch, bpp, w, h,
> > > +					  superblk_w, superblk_h,
> > > +					  size, offset, hdr_align,
> > > +					  &payload_offset, &total_size);
> > > +}
> > > +EXPORT_SYMBOL(drm_afbc_check_fb_size);
> > =

> > Why don't we have one overall "check afbc parameters against buffer"
> > function?
> > =

> =

> I noticed that different drivers have different needs (malidp
> and rockchip are kind of similar, but komeda is a bit different).
> That is why the helpers are only building blocks out of which
> each driver builds its own checking logic. In particular komeda
> wants some by-products of the check stored in its internal data
> structures, hence drm_afbc_check_fb_size_ret() and its wrapper
> drm_afbc_check_fb_size() which ignores the "out" parameters.
> =

> If I wanted to create one overall "check afbc parameters" I'd have
> to come up with a way to pass driver-specific requirements to it
> and then inside the function have some logic to decide what to
> check against what. Do you think it is worth it?

Hm I figured there's at least two parts of this:
- Generic checking of afbc against the fb parameters, i.e. is it big
  enough, correctly aligned, all that.
- Additional driver checks, which might need some of the same parameters
  again.

The idea behind asking for the first part is that maybe we should put that
into the core as part of the addfb checks (like we do for the tiled NV12
thing already). Then drivers only need to do additional checks on top for
their specific constraints. For that you could expose some helpers ofc (to
get the payload_offset and anything else computed you might need).

But the basic drm_afbc_check_fb_size() should imo be done unconditionally
for any afbc modifier. To make sure we don't have lots of drivers with
different bugs in that thing.
-Daniel
-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

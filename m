Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B348DF35C1
	for <lists+linux-rockchip@lfdr.de>; Thu,  7 Nov 2019 18:32:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n2SyGkl6KTEhRfxIOUBwztgPMRpFEk4gqziQB59zvM0=; b=aFKUAqRAJXBO7/
	GkA4zlFTWT9Jk26FGLEif46cs+xB5q6m2YpmRqyj6r1MRA9H26VxcTQFVbhnaALvlPnt5bxSBe0MZ
	Cl0LIX/NJFNxrK/OKolghmMuVV0lFfaMEgT/7tbp7Fed4+wSt20YzNGJulzH3lGmUxTAu2n8AS/VF
	/fM2hzkOQuO2+HEdwTefyBvEqezuu1UowXar9xNhEPWeOqAoEDoMhUXy27X3ZF5EHslsSlAHlqv07
	M4ddwnXki9I4ZNJ82xYCy0AQ25VkFgUDnmJ22/8P+Dlf62b8zymotBbt9yPjzJw85zyhBSoTy9NKf
	Bwh9ESTlqKR4hR+ToyXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSldu-0007fY-9Z; Thu, 07 Nov 2019 17:32:22 +0000
Received: from mail-oi1-x243.google.com ([2607:f8b0:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSldo-0007Sj-Dh
 for linux-rockchip@lists.infradead.org; Thu, 07 Nov 2019 17:32:20 +0000
Received: by mail-oi1-x243.google.com with SMTP id k2so2658286oij.12
 for <linux-rockchip@lists.infradead.org>; Thu, 07 Nov 2019 09:32:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=vO5scbPntdvTwbmVN1SqSeIdkQXibVZTIEcjTrQJNIw=;
 b=Ed7nOdKkOTTNnsVoWaY3ujByhBnOMvc6K4MyK7oHzZ7gaIeBQnTP9Xx/rCvGmevvsO
 7LsRGWLWXQFQTTaVTnrNeUkG36CQO2sl5NFJsbZWpCuViFyMBgRUZEHuDaZz417rXRBw
 kniCv5ejqRGUvf1By4mF5EJ0x+PbiLqAQQFHc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=vO5scbPntdvTwbmVN1SqSeIdkQXibVZTIEcjTrQJNIw=;
 b=kddTSANNjuva+om+NIIpH3BQyu0iwt1ElHVCa6bq+YzajYgG5YuZiYUwTBVOeMCgIl
 wte82kexW+mA9T1ZJn5QeopWAN9bFlRJi6uEGqEVKSFBAEUoqVaQZYZkmPKuWQWYm3Nt
 AJntCoA35gxPNR+sSPVg2idqQtGsUpL17esrUICQgjGNXN9mclyym32JrlMvvWWEk+7g
 uo0hr6P9TCcl4xTAEVkA3saSixB7Rol4LJgkx52q9R2KStUA2CumKpOQZrr9ZGe8rHLQ
 PWR07fUaiys8Q7GJKLhJmDhm4LP9jIq/2ewcXLwX371U4eMdWkWNcreK/QMG6IFJ+tW8
 L06w==
X-Gm-Message-State: APjAAAWGuqykNQVtpT4jopUN2aAYfF1TIRJump8s2OtCFj/SJ+wiVkBH
 AWrEL+RZ+li98ChPH3mO3dlX41akD6B8iDNU22drEg==
X-Google-Smtp-Source: APXvYqwwgves8FRDGr5iPlVQRhXMzm7w8peZPUEqdFinvoU3EwZuswOD2+4Ijgdnn9DLOQomMnFU8fD0000eQZXLaKU=
X-Received: by 2002:aca:3889:: with SMTP id f131mr4553470oia.14.1573147933726; 
 Thu, 07 Nov 2019 09:32:13 -0800 (PST)
MIME-Version: 1.0
References: <2485717.1SzL54aMiy@e123338-lin>
 <20191104221228.3588-1-andrzej.p@collabora.com>
 <20191104221228.3588-2-andrzej.p@collabora.com>
 <f4aa14e89852c9ef46ade10e8eccdb66b1adc052.camel@collabora.com>
 <20191107171959.esg2dh6dw6i2lfst@DESKTOP-E1NTVVP.localdomain>
In-Reply-To: <20191107171959.esg2dh6dw6i2lfst@DESKTOP-E1NTVVP.localdomain>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Thu, 7 Nov 2019 18:32:01 +0100
Message-ID: <CAKMK7uGDqS2ygHjmbTS0rjgYx0LJ9-hAmOvYqEoi7z4TSHY-rA@mail.gmail.com>
Subject: Re: [PATCHv2 1/4] drm/arm: Factor out generic afbc helpers
To: Brian Starkey <Brian.Starkey@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_093218_403020_41FCCF51 
X-CRM114-Status: GOOD (  40.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Ayan Halder <Ayan.Halder@arm.com>,
 "kernel@collabora.com" <kernel@collabora.com>,
 Daniel Stone <daniels@collabora.com>, David Airlie <airlied@linux.ie>,
 Liviu Dudau <Liviu.Dudau@arm.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Sandy Huang <hjc@rock-chips.com>, Maxime Ripard <mripard@kernel.org>,
 Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 "james qian wang \(Arm Technology China\)" <james.qian.wang@arm.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 Mihail Atanassov <Mihail.Atanassov@arm.com>, Sean Paul <sean@poorly.run>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Thu, Nov 7, 2019 at 6:20 PM Brian Starkey <Brian.Starkey@arm.com> wrote:
>
> Hi Daniel,
>
> On Tue, Nov 05, 2019 at 11:26:36PM +0000, Daniel Stone wrote:
> > Hi Andrzej,
> > Thanks for taking this on! It's looking better than v1 for sure. A few
> > things below:
> >
> > On Mon, 2019-11-04 at 23:12 +0100, Andrzej Pietrasiewicz wrote:
> > > +bool drm_afbc_check_offset(struct drm_device *dev,
> > > +                      const struct drm_mode_fb_cmd2 *mode_cmd)
> > > +{
> > > +   if (mode_cmd->offsets[0] != 0) {
> > > +           DRM_DEBUG_KMS("AFBC buffers' plane offset should be
> > > 0\n");
> > > +           return false;
> > > +   }
> > > +
> > > +   return true;
> > > +}
> > > +EXPORT_SYMBOL_GPL(drm_afbc_check_offset);
> >
> > Is this actually universally true? If the offset is sufficiently
> > aligned for (e.g.) DMA transfers to succeed, is there any reason why it
> > must be zero?
> >
> > > +bool drm_afbc_check_size_align(struct drm_device *dev,
> > > +                          const struct drm_mode_fb_cmd2 *mode_cmd)
> > > +{
> > > +   switch (mode_cmd->modifier[0] &
> > > AFBC_FORMAT_MOD_BLOCK_SIZE_MASK) {
> > > +   case AFBC_FORMAT_MOD_BLOCK_SIZE_16x16:
> > > +           if ((mode_cmd->width % 16) || (mode_cmd->height % 16))
> > > {
> >
> > This is a dealbreaker for many resolutions: for example, 1366x768 isn't
> > cleanly divisible by 16 in width. So this means that we would have to
> > either use a larger buffer and crop, or scale, or something.
> >
> > No userspace is prepared to align fb width/height to tile dimensions
> > like this, so this check will basically fail everywhere.
> >
> > However, overallocation relative to the declared width/height isn't a
> > problem at all. In order to deal with horizontal alignment, you simply
> > need to ensure that the stride is a multiple of the tile width; for
> > vertical arrangement, that the buffer is large enough to contain
> > sufficient 'lines' to the next tile boundary.
> >
> > i.e. rather than checking width/height, you should check:
> >   * fb_stride >= (ALIGN(fb_width, tile_width), bpp)
> >   * buf_size >= fb_stride * ALIGN(fb_height, tile_height)
>
> Well, sort of.
>
> I agree with you that for horizontal padding, we can indeed use pitch.
>
> However, the AFBC decoder(s) need to know exactly what the total
> _allocated_ size in pixels of the buffer is - as this influences the
> header size, and we need to know the header size to know where it ends
> and the body begins.
>
> I see a couple of possible ways forwards:
>
>  - Keep it as-is. The restrictive checks ensure that there's no
>    ambiguity and we use the fb width/height to determine the real
>    allocated width/height. Userspace needs to be AFBC-aware and set up
>    plane cropping to handle the alignment differences.
>
>  - Use pitch to determine the "real" width, and internally in the
>    kernel align height up to the next alignment boundary. This works
>    OK, so long as there's no additional padding at the bottom of the
>    buffer. This would work, but I can't figure a way to check/enforce
>    that there's no additional padding at the bottom.
>
>  - Something else...
>
> The checks as-implemented were deliberately conservative, and don't
> preclude doing some relaxation in the future.
>
> On Android, gralloc is used to store the "real" allocated width/height
> and this is used to set up the DRM API appropriately.

Fake stride + real visible h/w in the drmfb. Because that's how it
works with all the tiled formats already, and expecting userspace to
fudge this all correctly seems very backwards to me. In a way we had
that entire fake stride discussion already for the block size format
stuff already, but now in a different flavour.

Also I think that's more reasons why this should be no-opt-outable
code that's done for all drivers when we check framebuffers in addfb.
Plus then some helpers to get at computed values for any framebuffer
we know to be valid.
-Daniel

> > This may force us to do some silly cropping games inside the Rockchip
> > KMS driver, but I feel it beats the alternative of breaking userspace.
>
> Well, nothing's going to get broken - it's just perhaps not ready to
> turn on AFBC yet.
>
> >
> > > +                   DRM_DEBUG_KMS(
> > > +                           "AFBC buffer must be aligned to 16
> > > pixels\n"
> > > +                   );
> > > +                   return false;
> > > +           }
> > > +           break;
> > > +   case AFBC_FORMAT_MOD_BLOCK_SIZE_32x8:
> > > +           /* fall through */
> >
> > It's also incongruous that 32x8 is unsupported here, but has a section
> > in get_superblk_wh; please harmonise them so this section either does
> > the checks as above, or that get_superblk_wh doesn't support 32x8
> > either.
> >
> > > +bool drm_afbc_check_fb_size_ret(u32 pitch, int bpp,
> > > +                           u32 w, u32 h, u32 superblk_w, u32
> > > superblk_h,
> > > +                           size_t size, u32 offset, u32 hdr_align,
> > > +                           u32 *payload_off, u32 *total_size)
> > > +{
> > > +   int n_superblks = 0;
> > > +   u32 superblk_sz = 0;
> > > +   u32 afbc_size = 0;
> >
> > Please don't initialise the above three variables, given that you go on
> > to immediately change their values. In this case, initialising to zero
> > can only hide legitimate uninitialised-variable-use warnings.
> >
> > > +   n_superblks = (w / superblk_w) * (h / superblk_h);
> > > +   superblk_sz = (bpp * superblk_w * superblk_h) / BITS_PER_BYTE;
> > > +   afbc_size = ALIGN(n_superblks * AFBC_HEADER_SIZE, hdr_align);
> > > +   *payload_off = afbc_size;
> > > +
> > > +   afbc_size += n_superblks * ALIGN(superblk_sz,
> > > AFBC_SUPERBLK_ALIGNMENT);
> > > +   *total_size = afbc_size + offset;
> >
> > Generally these are referred to as 'tiles' rather than 'superblocks',
> > given that I would only expect one superblock per buffer, but if that's
> > the terminology AFBC uses then it might be better to stick with it.
> >
> > > +   if ((w * bpp) != (pitch * BITS_PER_BYTE)) {
> > > +           DRM_DEBUG_KMS("Invalid value of (pitch * BITS_PER_BYTE)
> > > (=%u) should be same as width (=%u) * bpp (=%u)\n",
> > > +                         pitch * BITS_PER_BYTE, w, bpp
> > > +           );
> > > +           return false;
> > > +   }
> >
> > Having a too-small pitch is obviously a problem and we should reject
> > it. But is having a too-large pitch really a problem; does it need to
> > be an exact match, or can we support the case where the pitch is too
> > large but also tile-aligned? If we can, it would be very good to
> > support that.
>
> The reason for forcing it to be exact is as I said above - we _must_
> know what the "real" width and height is. Implementing this check to
> force (pitch == width * bpp) ensures that, and also leaves the option
> for us to relax to allow a larger pitch (as above) if that was the
> preferred approach for alignment.
>
> In general the current checks are deliberately designed to leave the
> door open for future improvements without breaking anything.
>
> Cheers,
> -Brian
>
> >
> > Cheers,
> > Daniel
> >
> IMPORTANT NOTICE: The contents of this email and any attachments are confidential and may also be privileged. If you are not the intended recipient, please notify the sender immediately and do not disclose the contents to any other person, use it for any purpose, or store or copy the information in any medium. Thank you.



-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

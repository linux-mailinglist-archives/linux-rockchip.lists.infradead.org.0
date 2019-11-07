Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03DD4F3893
	for <lists+linux-rockchip@lfdr.de>; Thu,  7 Nov 2019 20:28:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ABFNZ3bjnZlYnXie41YZRMZI9Q9RVdVrKmWmCk4QBoU=; b=KXqvxc1dEk+SfV
	yPThE5O8Ikgaq6pE+x3aDxHSBj1t/O0Iri+bPHOS6valK8DtqER4O3Zw/iA+BGX3T6xxllHgl9gTi
	uDihpQ0OksIMExsyAaYW8oEBHNDQxKa0ixadWk10Qx/drOVq3aBlfggWNvoQWpBnuIC4cklWxMAqd
	58sv/GQK5lUcsj9ZQhCOxNr89p5ORqIkcwZ0Q8tcwjBP2MiJHnx8fZVt2ksEZBQs8WgelXrF2ZpaM
	YbVEVvN0uVFO6eIYtzV7+CmOQnOWKQ7Qj5IucjxxA0g9CvL35rZYCcMwXN6gCCctT/wS5+34a2Ii8
	hrAQHLL91gLjV97TsZAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSnS4-00038H-Qb; Thu, 07 Nov 2019 19:28:16 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSnS1-00037d-Nq
 for linux-rockchip@lists.infradead.org; Thu, 07 Nov 2019 19:28:15 +0000
Received: by mail-wr1-x444.google.com with SMTP id i10so4385486wrs.7
 for <linux-rockchip@lists.infradead.org>; Thu, 07 Nov 2019 11:28:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=mrJbFsG26WxiuRoGxthQxKUPYzYBiO3Xm64sbegSKQg=;
 b=O0LEflQ5hhn3quHvH/WMN+9HsyladGANX/0xmrNUkPDrrd0gp5/ZtcpX20zBTOOg5Q
 zCdB+6N+j9RKGRtaY3RzFwX/jhTsFNPft2lQXjyyON9scQ4xh22ZgpCdOQqJ8I+sS8JD
 D4+/aoM1WhmScrOkMaH7Y8vXtar/3U3NSTF+s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=mrJbFsG26WxiuRoGxthQxKUPYzYBiO3Xm64sbegSKQg=;
 b=DzpMyJpfx/tbaHFcs2Bb9QCjACO9J/jMUZLldo31PMQroLO5gXxJ7+wlfdTAVcxyLT
 XC/ehrs79zDqy5YemTp6tgjQEiylPcwfHzyBYcCsTaJOWfXsgoGUbc9aN/lY7lkjCWwH
 aGlWg6XmETFa/84SFWIFv50MJTJchbgPRzcq4dF/FUpMKUF+ehhzWBQgbAngOQDQA7eu
 21uJ4MSBnUBtAMc7DaTjiiH+tIevs00UYa7uJoEowLcTX2KyyN54qiEvZ2zCK3CyowNb
 bCgfTCjHQPWgnUep48B/ii+WXO5YKRWTUU9SP0fihXil1XQWg/XlmiSGui25kpY1NOoj
 SIeQ==
X-Gm-Message-State: APjAAAVzLC5o54x2DDQS0RmpXmwWglpa0gOi4w+YQp5xB+FTWGmiPh8I
 rpuoBRhZx76FWS2URBKU2Qlqdg==
X-Google-Smtp-Source: APXvYqx0oxfXr1s5qWRdrXlQcggOo7slJAhfsTydgZ4s2hFuIkJrey+W6D8fWl4+qFbHGXGkyYd1Qg==
X-Received: by 2002:a5d:690a:: with SMTP id t10mr4613684wru.31.1573154891670; 
 Thu, 07 Nov 2019 11:28:11 -0800 (PST)
Received: from phenom.ffwll.local (212-51-149-96.fiber7.init7.net.
 [212.51.149.96])
 by smtp.gmail.com with ESMTPSA id i18sm3389142wrx.14.2019.11.07.11.28.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 Nov 2019 11:28:10 -0800 (PST)
Date: Thu, 7 Nov 2019 20:28:08 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Brian Starkey <Brian.Starkey@arm.com>
Subject: Re: [PATCHv2 1/4] drm/arm: Factor out generic afbc helpers
Message-ID: <20191107192808.GS23790@phenom.ffwll.local>
References: <2485717.1SzL54aMiy@e123338-lin>
 <20191104221228.3588-1-andrzej.p@collabora.com>
 <20191104221228.3588-2-andrzej.p@collabora.com>
 <f4aa14e89852c9ef46ade10e8eccdb66b1adc052.camel@collabora.com>
 <20191107171959.esg2dh6dw6i2lfst@DESKTOP-E1NTVVP.localdomain>
 <CAKMK7uGDqS2ygHjmbTS0rjgYx0LJ9-hAmOvYqEoi7z4TSHY-rA@mail.gmail.com>
 <20191107174913.yme5kd6iva2kc7hw@DESKTOP-E1NTVVP.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191107174913.yme5kd6iva2kc7hw@DESKTOP-E1NTVVP.localdomain>
X-Operating-System: Linux phenom 5.2.0-3-amd64 
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_112813_778568_9BC09704 
X-CRM114-Status: GOOD (  44.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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
Cc: nd <nd@arm.com>, Ayan Halder <Ayan.Halder@arm.com>,
 "kernel@collabora.com" <kernel@collabora.com>,
 Daniel Stone <daniels@collabora.com>, David Airlie <airlied@linux.ie>,
 Liviu Dudau <Liviu.Dudau@arm.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Sandy Huang <hjc@rock-chips.com>, Maxime Ripard <mripard@kernel.org>,
 Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 "james qian wang \(Arm Technology China\)" <james.qian.wang@arm.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel@ffwll.ch>, Mihail Atanassov <Mihail.Atanassov@arm.com>,
 Sean Paul <sean@poorly.run>,
 Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Thu, Nov 07, 2019 at 05:49:14PM +0000, Brian Starkey wrote:
> Hi Daniel,
> 
> On Thu, Nov 07, 2019 at 06:32:01PM +0100, Daniel Vetter wrote:
> > On Thu, Nov 7, 2019 at 6:20 PM Brian Starkey <Brian.Starkey@arm.com> wrote:
> > >
> > > Hi Daniel,
> > >
> > > On Tue, Nov 05, 2019 at 11:26:36PM +0000, Daniel Stone wrote:
> > > > Hi Andrzej,
> > > > Thanks for taking this on! It's looking better than v1 for sure. A few
> > > > things below:
> > > >
> > > > On Mon, 2019-11-04 at 23:12 +0100, Andrzej Pietrasiewicz wrote:
> > > > > +bool drm_afbc_check_offset(struct drm_device *dev,
> > > > > +                      const struct drm_mode_fb_cmd2 *mode_cmd)
> > > > > +{
> > > > > +   if (mode_cmd->offsets[0] != 0) {
> > > > > +           DRM_DEBUG_KMS("AFBC buffers' plane offset should be
> > > > > 0\n");
> > > > > +           return false;
> > > > > +   }
> > > > > +
> > > > > +   return true;
> > > > > +}
> > > > > +EXPORT_SYMBOL_GPL(drm_afbc_check_offset);
> > > >
> > > > Is this actually universally true? If the offset is sufficiently
> > > > aligned for (e.g.) DMA transfers to succeed, is there any reason why it
> > > > must be zero?
> > > >
> > > > > +bool drm_afbc_check_size_align(struct drm_device *dev,
> > > > > +                          const struct drm_mode_fb_cmd2 *mode_cmd)
> > > > > +{
> > > > > +   switch (mode_cmd->modifier[0] &
> > > > > AFBC_FORMAT_MOD_BLOCK_SIZE_MASK) {
> > > > > +   case AFBC_FORMAT_MOD_BLOCK_SIZE_16x16:
> > > > > +           if ((mode_cmd->width % 16) || (mode_cmd->height % 16))
> > > > > {
> > > >
> > > > This is a dealbreaker for many resolutions: for example, 1366x768 isn't
> > > > cleanly divisible by 16 in width. So this means that we would have to
> > > > either use a larger buffer and crop, or scale, or something.
> > > >
> > > > No userspace is prepared to align fb width/height to tile dimensions
> > > > like this, so this check will basically fail everywhere.
> > > >
> > > > However, overallocation relative to the declared width/height isn't a
> > > > problem at all. In order to deal with horizontal alignment, you simply
> > > > need to ensure that the stride is a multiple of the tile width; for
> > > > vertical arrangement, that the buffer is large enough to contain
> > > > sufficient 'lines' to the next tile boundary.
> > > >
> > > > i.e. rather than checking width/height, you should check:
> > > >   * fb_stride >= (ALIGN(fb_width, tile_width), bpp)
> > > >   * buf_size >= fb_stride * ALIGN(fb_height, tile_height)
> > >
> > > Well, sort of.
> > >
> > > I agree with you that for horizontal padding, we can indeed use pitch.
> > >
> > > However, the AFBC decoder(s) need to know exactly what the total
> > > _allocated_ size in pixels of the buffer is - as this influences the
> > > header size, and we need to know the header size to know where it ends
> > > and the body begins.
> > >
> > > I see a couple of possible ways forwards:
> > >
> > >  - Keep it as-is. The restrictive checks ensure that there's no
> > >    ambiguity and we use the fb width/height to determine the real
> > >    allocated width/height. Userspace needs to be AFBC-aware and set up
> > >    plane cropping to handle the alignment differences.
> > >
> > >  - Use pitch to determine the "real" width, and internally in the
> > >    kernel align height up to the next alignment boundary. This works
> > >    OK, so long as there's no additional padding at the bottom of the
> > >    buffer. This would work, but I can't figure a way to check/enforce
> > >    that there's no additional padding at the bottom.
> > >
> > >  - Something else...
> > >
> > > The checks as-implemented were deliberately conservative, and don't
> > > preclude doing some relaxation in the future.
> > >
> > > On Android, gralloc is used to store the "real" allocated width/height
> > > and this is used to set up the DRM API appropriately.
> > 
> > Fake stride + real visible h/w in the drmfb. Because that's how it
> > works with all the tiled formats already, and expecting userspace to
> > fudge this all correctly seems very backwards to me. In a way we had
> > that entire fake stride discussion already for the block size format
> > stuff already, but now in a different flavour.
> 
> Fake stride - like I said, no problem; sounds good. That solves one
> dimension.
> 
> So do you have a proposal for how we determine what the allocated
> height is in that case? I don't really see a way.

Could you compute the height by looking at the buffer size? Or does that
not help since the header stuff is generally rather small?

Otherwise I guess just round up height and hope it works. If we run into a
use-case where that doesn't work anymore somehow, then we get to rev all
the afbc modifiers and make them 2 planes. With that there's no such issue
anymore (which is why the intel compressed stuff has 2 planes).
-Daniel


> Thanks,
> -Brian
> 
> > 
> > Also I think that's more reasons why this should be no-opt-outable
> > code that's done for all drivers when we check framebuffers in addfb.
> > Plus then some helpers to get at computed values for any framebuffer
> > we know to be valid.
> > -Daniel
> > 
> > > > This may force us to do some silly cropping games inside the Rockchip
> > > > KMS driver, but I feel it beats the alternative of breaking userspace.
> > >
> > > Well, nothing's going to get broken - it's just perhaps not ready to
> > > turn on AFBC yet.
> > >
> > > >
> > > > > +                   DRM_DEBUG_KMS(
> > > > > +                           "AFBC buffer must be aligned to 16
> > > > > pixels\n"
> > > > > +                   );
> > > > > +                   return false;
> > > > > +           }
> > > > > +           break;
> > > > > +   case AFBC_FORMAT_MOD_BLOCK_SIZE_32x8:
> > > > > +           /* fall through */
> > > >
> > > > It's also incongruous that 32x8 is unsupported here, but has a section
> > > > in get_superblk_wh; please harmonise them so this section either does
> > > > the checks as above, or that get_superblk_wh doesn't support 32x8
> > > > either.
> > > >
> > > > > +bool drm_afbc_check_fb_size_ret(u32 pitch, int bpp,
> > > > > +                           u32 w, u32 h, u32 superblk_w, u32
> > > > > superblk_h,
> > > > > +                           size_t size, u32 offset, u32 hdr_align,
> > > > > +                           u32 *payload_off, u32 *total_size)
> > > > > +{
> > > > > +   int n_superblks = 0;
> > > > > +   u32 superblk_sz = 0;
> > > > > +   u32 afbc_size = 0;
> > > >
> > > > Please don't initialise the above three variables, given that you go on
> > > > to immediately change their values. In this case, initialising to zero
> > > > can only hide legitimate uninitialised-variable-use warnings.
> > > >
> > > > > +   n_superblks = (w / superblk_w) * (h / superblk_h);
> > > > > +   superblk_sz = (bpp * superblk_w * superblk_h) / BITS_PER_BYTE;
> > > > > +   afbc_size = ALIGN(n_superblks * AFBC_HEADER_SIZE, hdr_align);
> > > > > +   *payload_off = afbc_size;
> > > > > +
> > > > > +   afbc_size += n_superblks * ALIGN(superblk_sz,
> > > > > AFBC_SUPERBLK_ALIGNMENT);
> > > > > +   *total_size = afbc_size + offset;
> > > >
> > > > Generally these are referred to as 'tiles' rather than 'superblocks',
> > > > given that I would only expect one superblock per buffer, but if that's
> > > > the terminology AFBC uses then it might be better to stick with it.
> > > >
> > > > > +   if ((w * bpp) != (pitch * BITS_PER_BYTE)) {
> > > > > +           DRM_DEBUG_KMS("Invalid value of (pitch * BITS_PER_BYTE)
> > > > > (=%u) should be same as width (=%u) * bpp (=%u)\n",
> > > > > +                         pitch * BITS_PER_BYTE, w, bpp
> > > > > +           );
> > > > > +           return false;
> > > > > +   }
> > > >
> > > > Having a too-small pitch is obviously a problem and we should reject
> > > > it. But is having a too-large pitch really a problem; does it need to
> > > > be an exact match, or can we support the case where the pitch is too
> > > > large but also tile-aligned? If we can, it would be very good to
> > > > support that.
> > >
> > > The reason for forcing it to be exact is as I said above - we _must_
> > > know what the "real" width and height is. Implementing this check to
> > > force (pitch == width * bpp) ensures that, and also leaves the option
> > > for us to relax to allow a larger pitch (as above) if that was the
> > > preferred approach for alignment.
> > >
> > > In general the current checks are deliberately designed to leave the
> > > door open for future improvements without breaking anything.
> > >
> > > Cheers,
> > > -Brian
> > >
> > > >
> > > > Cheers,
> > > > Daniel
> > > >
> > > IMPORTANT NOTICE: The contents of this email and any attachments are confidential and may also be privileged. If you are not the intended recipient, please notify the sender immediately and do not disclose the contents to any other person, use it for any purpose, or store or copy the information in any medium. Thank you.
> 
> Not sure how that snuck in.
> 
> > 
> > 
> > 
> > -- 
> > Daniel Vetter
> > Software Engineer, Intel Corporation
> > +41 (0) 79 365 57 48 - http://blog.ffwll.ch

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

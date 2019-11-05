Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B5A6F0A2F
	for <lists+linux-rockchip@lfdr.de>; Wed,  6 Nov 2019 00:27:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t5KRMwwAYS37a7Afe6+0c6WZ69ADIg0JPIffIwQmyE4=; b=Y01Etk6Lryb+8V
	ioGq+nz/zB83sARJKLd52wLhHbkQZC2LNA+rFZqOh37VnuVuYM4ya5SKD7bzS8UTFCXmqcno8+f+m
	svE/9/aDB76PgmDbjwIsHX+t9Wcb0BRpK2rXuOwXQ0Y3dhCLTl8ODjv0AuahoX4lQ1Oa5hjZgpfrj
	f9ECHEL9L30HQbVKwgo3hD3EZHkuYidG9qMIvie5rikxZlsfQzXZyTV23hHd1CVEaKLI/TvRo0CvQ
	jewqEkueu62QqjXRICDmOUq+1XQSjZaByCiJJ6GVuIh3fqu5T2PaPHz8vTn43MLg42hzSJF7xSrqk
	cDBjsEflEI6E29j4AVvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS8Dw-0005WT-GC; Tue, 05 Nov 2019 23:26:56 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS8Ds-0005Vi-S2
 for linux-rockchip@lists.infradead.org; Tue, 05 Nov 2019 23:26:54 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: daniels) with ESMTPSA id A791D28A0C9
Message-ID: <f4aa14e89852c9ef46ade10e8eccdb66b1adc052.camel@collabora.com>
Subject: Re: [PATCHv2 1/4] drm/arm: Factor out generic afbc helpers
From: Daniel Stone <daniels@collabora.com>
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>, 
 dri-devel@lists.freedesktop.org
Date: Tue, 05 Nov 2019 23:26:36 +0000
In-Reply-To: <20191104221228.3588-2-andrzej.p@collabora.com>
References: <2485717.1SzL54aMiy@e123338-lin>
 <20191104221228.3588-1-andrzej.p@collabora.com>
 <20191104221228.3588-2-andrzej.p@collabora.com>
Organization: Collabora
User-Agent: Evolution 3.34.1 (by Flathub.org) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_152653_165294_A335B94F 
X-CRM114-Status: GOOD (  15.63  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Ayan Halder <Ayan.Halder@arm.com>, kernel@collabora.com,
 Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Liviu Dudau <liviu.dudau@arm.com>, Sandy Huang <hjc@rock-chips.com>,
 Maxime Ripard <mripard@kernel.org>, linux-rockchip@lists.infradead.org,
 James Wang <james.qian.wang@arm.com>, Daniel Vetter <daniel@ffwll.ch>,
 Mihail Atanassov <mihail.atanassov@arm.com>, Sean Paul <sean@poorly.run>,
 Brian Starkey <brian.starkey@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Andrzej,
Thanks for taking this on! It's looking better than v1 for sure. A few
things below:

On Mon, 2019-11-04 at 23:12 +0100, Andrzej Pietrasiewicz wrote:
> +bool drm_afbc_check_offset(struct drm_device *dev,
> +			   const struct drm_mode_fb_cmd2 *mode_cmd)
> +{
> +	if (mode_cmd->offsets[0] != 0) {
> +		DRM_DEBUG_KMS("AFBC buffers' plane offset should be
> 0\n");
> +		return false;
> +	}
> +
> +	return true;
> +}
> +EXPORT_SYMBOL_GPL(drm_afbc_check_offset);

Is this actually universally true? If the offset is sufficiently
aligned for (e.g.) DMA transfers to succeed, is there any reason why it
must be zero?

> +bool drm_afbc_check_size_align(struct drm_device *dev,
> +			       const struct drm_mode_fb_cmd2 *mode_cmd)
> +{
> +	switch (mode_cmd->modifier[0] &
> AFBC_FORMAT_MOD_BLOCK_SIZE_MASK) {
> +	case AFBC_FORMAT_MOD_BLOCK_SIZE_16x16:
> +		if ((mode_cmd->width % 16) || (mode_cmd->height % 16))
> {

This is a dealbreaker for many resolutions: for example, 1366x768 isn't
cleanly divisible by 16 in width. So this means that we would have to
either use a larger buffer and crop, or scale, or something.

No userspace is prepared to align fb width/height to tile dimensions
like this, so this check will basically fail everywhere.

However, overallocation relative to the declared width/height isn't a
problem at all. In order to deal with horizontal alignment, you simply
need to ensure that the stride is a multiple of the tile width; for
vertical arrangement, that the buffer is large enough to contain
sufficient 'lines' to the next tile boundary.

i.e. rather than checking width/height, you should check:
  * fb_stride >= (ALIGN(fb_width, tile_width), bpp)
  * buf_size >= fb_stride * ALIGN(fb_height, tile_height)

This may force us to do some silly cropping games inside the Rockchip
KMS driver, but I feel it beats the alternative of breaking userspace.

> +			DRM_DEBUG_KMS(
> +				"AFBC buffer must be aligned to 16
> pixels\n"
> +			);
> +			return false;
> +		}
> +		break;
> +	case AFBC_FORMAT_MOD_BLOCK_SIZE_32x8:
> +		/* fall through */

It's also incongruous that 32x8 is unsupported here, but has a section
in get_superblk_wh; please harmonise them so this section either does
the checks as above, or that get_superblk_wh doesn't support 32x8
either.

> +bool drm_afbc_check_fb_size_ret(u32 pitch, int bpp,
> +				u32 w, u32 h, u32 superblk_w, u32
> superblk_h,
> +				size_t size, u32 offset, u32 hdr_align,
> +				u32 *payload_off, u32 *total_size)
> +{
> +	int n_superblks = 0;
> +	u32 superblk_sz = 0;
> +	u32 afbc_size = 0;

Please don't initialise the above three variables, given that you go on
to immediately change their values. In this case, initialising to zero
can only hide legitimate uninitialised-variable-use warnings.

> +	n_superblks = (w / superblk_w) * (h / superblk_h);
> +	superblk_sz = (bpp * superblk_w * superblk_h) / BITS_PER_BYTE;
> +	afbc_size = ALIGN(n_superblks * AFBC_HEADER_SIZE, hdr_align);
> +	*payload_off = afbc_size;
> +
> +	afbc_size += n_superblks * ALIGN(superblk_sz,
> AFBC_SUPERBLK_ALIGNMENT);
> +	*total_size = afbc_size + offset;

Generally these are referred to as 'tiles' rather than 'superblocks',
given that I would only expect one superblock per buffer, but if that's
the terminology AFBC uses then it might be better to stick with it.

> +	if ((w * bpp) != (pitch * BITS_PER_BYTE)) {
> +		DRM_DEBUG_KMS("Invalid value of (pitch * BITS_PER_BYTE)
> (=%u) should be same as width (=%u) * bpp (=%u)\n",
> +			      pitch * BITS_PER_BYTE, w, bpp
> +		);
> +		return false;
> +	}

Having a too-small pitch is obviously a problem and we should reject
it. But is having a too-large pitch really a problem; does it need to
be an exact match, or can we support the case where the pitch is too
large but also tile-aligned? If we can, it would be very good to
support that.

Cheers,
Daniel


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2031EF88E
	for <lists+linux-rockchip@lfdr.de>; Tue,  5 Nov 2019 10:22:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iwk0NsRQyyTJM1knDAFOhhAuEywgLQmDuzbF5VOofU0=; b=j4xhzOxmWVPA86
	liSatyMK02ctNlgBGmeaK5EEtseGDnJbIM2SoUHAHs/n7PedDRDrsbQcv4vKuwiXeAK4D7Ppm2O58
	amlc/X+iL01f7ofEVRMj5rCXByTD2o2mksq9qd+Eha4+EJG2o86b8lJLJJpCAeT71PnHoCIREWhFv
	0HKBo0aoIMfLc0pSCSVGhiErySEQ+g8wn8RDqCwFdCKggcAQf/GMKMZev6OmuFUpM+r9t9UEPFelM
	s8e5S1/SpjiAmcyqa1hiWCCnlqxZmsk1ShGP6fStDT5S8exN2YsdL9nr8CQPrEsjZr1MexYcQWj6z
	IMAeLCUcqVyHCO2xnBXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRv2v-00089U-03; Tue, 05 Nov 2019 09:22:41 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRv2q-00088B-VN
 for linux-rockchip@lists.infradead.org; Tue, 05 Nov 2019 09:22:38 +0000
Received: by mail-wr1-x442.google.com with SMTP id a15so20414967wrf.9
 for <linux-rockchip@lists.infradead.org>; Tue, 05 Nov 2019 01:22:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=dhhFQFANzkhuP+gMUtwIkvRqzgzLOBc4vJe8iVs7oJk=;
 b=Y0qGpoz8mkc6J0X/PqzWaaCLuNLlWUIbCAkoMiLkv3gys/w9JI+u2wmPeYNXfboyfG
 vfyoeBtHOKmoXYJg2kq22Ft8MCgjg52amGWaQpUaYjHrJYnasD9ETDfDOr3P2YGbaNez
 F2NcPjJ1OwGFGuLHZ74+rD7HJ8yiouP2kDx6o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=dhhFQFANzkhuP+gMUtwIkvRqzgzLOBc4vJe8iVs7oJk=;
 b=h31c44yAhCGDscU7G9ZxEKHbQDnYuWLdzZC2cDapyPY4bS9RkjZ/rTSdsBrMAxOdh8
 NmFCtyk+I/35NeiKIgZLC9lJZIkrKhOajR7mSon+voioIXl9JMpBkssRuJ2zCOke8dkP
 QA+KBRV5xFHBV8zJBPZ3YOEk/9gHth9VpEbMmO/mrqgNj2O9yWnM9tXqvQIN4Gz/yMND
 TWnyL3DNmZHyHgfQd8u3WJOq4JEADGgEltWau9i8moQDhspjzVuuI4xFGt7HC0+tyY+K
 3an/Hpl4lY4yyX3KsqPAAuv2NSQs/MfwYuuuEqG2RwYmFr1fS/yavcE6hTBYf/fxr0B0
 Bp4w==
X-Gm-Message-State: APjAAAVTdE4wp1meu6CDq1UAYXXud8f5zLugOP7wMnKe6TWTWxllR7ud
 2/u8r+6gIx2EMJOQXsnLex5usA==
X-Google-Smtp-Source: APXvYqw1fhnZQh98L21ByS1ImN6jwY+FRTTUBBiSwczQc7jjm3kUijPvUQkoSUHSOjIlN4DJC8Z5+w==
X-Received: by 2002:adf:a31a:: with SMTP id c26mr585188wrb.330.1572945755013; 
 Tue, 05 Nov 2019 01:22:35 -0800 (PST)
Received: from phenom.ffwll.local (212-51-149-96.fiber7.init7.net.
 [212.51.149.96])
 by smtp.gmail.com with ESMTPSA id y16sm10350169wro.25.2019.11.05.01.22.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Nov 2019 01:22:34 -0800 (PST)
Date: Tue, 5 Nov 2019 10:22:32 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
Subject: Re: [PATCHv2 1/4] drm/arm: Factor out generic afbc helpers
Message-ID: <20191105092232.GV10326@phenom.ffwll.local>
References: <2485717.1SzL54aMiy@e123338-lin>
 <20191104221228.3588-1-andrzej.p@collabora.com>
 <20191104221228.3588-2-andrzej.p@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191104221228.3588-2-andrzej.p@collabora.com>
X-Operating-System: Linux phenom 5.2.0-3-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_012237_078897_03951B46 
X-CRM114-Status: GOOD (  21.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Ayan Halder <Ayan.Halder@arm.com>, kernel@collabora.com,
 Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>, Liviu Dudau <liviu.dudau@arm.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Sandy Huang <hjc@rock-chips.com>, Maxime Ripard <mripard@kernel.org>,
 linux-rockchip@lists.infradead.org, James Wang <james.qian.wang@arm.com>,
 dri-devel@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>,
 Mihail Atanassov <mihail.atanassov@arm.com>, Sean Paul <sean@poorly.run>,
 Brian Starkey <brian.starkey@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Mon, Nov 04, 2019 at 11:12:25PM +0100, Andrzej Pietrasiewicz wrote:
> These are useful for other users of afbc, e.g. rockchip.
> 
> Signed-off-by: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
> ---
>  drivers/gpu/drm/Kconfig     |   8 +++
>  drivers/gpu/drm/Makefile    |   1 +
>  drivers/gpu/drm/arm/Kconfig |   1 +
>  drivers/gpu/drm/drm_afbc.c  | 129 ++++++++++++++++++++++++++++++++++++
>  include/drm/drm_afbc.h      |  36 ++++++++++
>  5 files changed, 175 insertions(+)
>  create mode 100644 drivers/gpu/drm/drm_afbc.c
>  create mode 100644 include/drm/drm_afbc.h
> 
> diff --git a/drivers/gpu/drm/Kconfig b/drivers/gpu/drm/Kconfig
> index 36357a36a281..ae1ca5e02bfe 100644
> --- a/drivers/gpu/drm/Kconfig
> +++ b/drivers/gpu/drm/Kconfig
> @@ -205,6 +205,14 @@ config DRM_SCHED
>  	tristate
>  	depends on DRM
>  
> +config DRM_AFBC
> +	tristate
> +	depends on DRM
> +	help
> +	  AFBC is a proprietary lossless image compression protocol and format.
> +	  It provides fine-grained random access and minimizes the amount of
> +	  data transferred between IP blocks.

Uh a module option for 2 functions ... seems like massive overkill. Please
just put that into existing format helpers instead.

What's missing otoh is kernel doc for these.

> +
>  source "drivers/gpu/drm/i2c/Kconfig"
>  
>  source "drivers/gpu/drm/arm/Kconfig"
> diff --git a/drivers/gpu/drm/Makefile b/drivers/gpu/drm/Makefile
> index 9f1c7c486f88..3a5d092ea514 100644
> --- a/drivers/gpu/drm/Makefile
> +++ b/drivers/gpu/drm/Makefile
> @@ -31,6 +31,7 @@ drm-$(CONFIG_OF) += drm_of.o
>  drm-$(CONFIG_AGP) += drm_agpsupport.o
>  drm-$(CONFIG_DEBUG_FS) += drm_debugfs.o drm_debugfs_crc.o
>  drm-$(CONFIG_DRM_LOAD_EDID_FIRMWARE) += drm_edid_load.o
> +drm-$(CONFIG_DRM_AFBC) += drm_afbc.o
>  
>  drm_vram_helper-y := drm_gem_vram_helper.o \
>  		     drm_vram_helper_common.o
> diff --git a/drivers/gpu/drm/arm/Kconfig b/drivers/gpu/drm/arm/Kconfig
> index a204103b3efb..25c3dc408cda 100644
> --- a/drivers/gpu/drm/arm/Kconfig
> +++ b/drivers/gpu/drm/arm/Kconfig
> @@ -29,6 +29,7 @@ config DRM_MALI_DISPLAY
>  	select DRM_KMS_HELPER
>  	select DRM_KMS_CMA_HELPER
>  	select DRM_GEM_CMA_HELPER
> +	select DRM_AFBC
>  	select VIDEOMODE_HELPERS
>  	help
>  	  Choose this option if you want to compile the ARM Mali Display
> diff --git a/drivers/gpu/drm/drm_afbc.c b/drivers/gpu/drm/drm_afbc.c
> new file mode 100644
> index 000000000000..010ca9eb0480
> --- /dev/null
> +++ b/drivers/gpu/drm/drm_afbc.c
> @@ -0,0 +1,129 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * (C) 2019 Collabora Ltd.
> + *
> + * author: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
> + *
> + */
> +#include <linux/module.h>
> +
> +#include <drm/drm_afbc.h>
> +#include <drm/drm_device.h>
> +#include <drm/drm_fourcc.h>
> +#include <drm/drm_gem.h>
> +#include <drm/drm_mode.h>
> +#include <drm/drm_print.h>
> +
> +#define AFBC_HEADER_SIZE		16
> +
> +bool drm_afbc_check_offset(struct drm_device *dev,
> +			   const struct drm_mode_fb_cmd2 *mode_cmd)
> +{
> +	if (mode_cmd->offsets[0] != 0) {
> +		DRM_DEBUG_KMS("AFBC buffers' plane offset should be 0\n");
> +		return false;
> +	}
> +
> +	return true;
> +}
> +EXPORT_SYMBOL_GPL(drm_afbc_check_offset);
> +
> +bool drm_afbc_check_size_align(struct drm_device *dev,
> +			       const struct drm_mode_fb_cmd2 *mode_cmd)
> +{
> +	switch (mode_cmd->modifier[0] & AFBC_FORMAT_MOD_BLOCK_SIZE_MASK) {
> +	case AFBC_FORMAT_MOD_BLOCK_SIZE_16x16:
> +		if ((mode_cmd->width % 16) || (mode_cmd->height % 16)) {
> +			DRM_DEBUG_KMS(
> +				"AFBC buffer must be aligned to 16 pixels\n"
> +			);
> +			return false;
> +		}
> +		break;
> +	case AFBC_FORMAT_MOD_BLOCK_SIZE_32x8:
> +		/* fall through */
> +	case AFBC_FORMAT_MOD_BLOCK_SIZE_64x4:
> +		/* fall through */
> +	case AFBC_FORMAT_MOD_BLOCK_SIZE_32x8_64x4:
> +		/* fall through */
> +	default:
> +		DRM_DEBUG_KMS("Unsupported AFBC block size\n");
> +		return false;
> +	}
> +
> +	return true;
> +}
> +EXPORT_SYMBOL_GPL(drm_afbc_check_size_align);
> +
> +bool drm_afbc_get_superblk_wh(u64 modifier, u32 *w, u32 *h)
> +{
> +	switch (modifier & AFBC_FORMAT_MOD_BLOCK_SIZE_MASK) {
> +	case AFBC_FORMAT_MOD_BLOCK_SIZE_16x16:
> +		*w = 16;
> +		*h = 16;
> +		break;
> +	case AFBC_FORMAT_MOD_BLOCK_SIZE_32x8:
> +		*w = 32;
> +		*h = 8;
> +		break;
> +	case AFBC_FORMAT_MOD_BLOCK_SIZE_64x4:
> +		/* fall through */
> +	case AFBC_FORMAT_MOD_BLOCK_SIZE_32x8_64x4:
> +		/* fall through */
> +	default:
> +		DRM_DEBUG_KMS("Invalid AFBC_FORMAT_MOD_BLOCK_SIZE: %lld.\n",
> +			      modifier & AFBC_FORMAT_MOD_BLOCK_SIZE_MASK);
> +		return false;
> +	}
> +	return true;
> +}
> +EXPORT_SYMBOL_GPL(drm_afbc_get_superblk_wh);
> +
> +bool drm_afbc_check_fb_size_ret(u32 pitch, int bpp,
> +				u32 w, u32 h, u32 superblk_w, u32 superblk_h,
> +				size_t size, u32 offset, u32 hdr_align,
> +				u32 *payload_off, u32 *total_size)
> +{
> +	int n_superblks = 0;
> +	u32 superblk_sz = 0;
> +	u32 afbc_size = 0;
> +
> +	n_superblks = (w / superblk_w) * (h / superblk_h);
> +	superblk_sz = (bpp * superblk_w * superblk_h) / BITS_PER_BYTE;
> +	afbc_size = ALIGN(n_superblks * AFBC_HEADER_SIZE, hdr_align);
> +	*payload_off = afbc_size;
> +
> +	afbc_size += n_superblks * ALIGN(superblk_sz, AFBC_SUPERBLK_ALIGNMENT);
> +	*total_size = afbc_size + offset;
> +
> +	if ((w * bpp) != (pitch * BITS_PER_BYTE)) {
> +		DRM_DEBUG_KMS("Invalid value of (pitch * BITS_PER_BYTE) (=%u) should be same as width (=%u) * bpp (=%u)\n",
> +			      pitch * BITS_PER_BYTE, w, bpp
> +		);
> +		return false;
> +	}
> +
> +	if (size < afbc_size) {
> +		DRM_DEBUG_KMS("buffer size (%zu) too small for AFBC buffer size = %u\n",
> +			      size, afbc_size
> +		);
> +
> +		return false;
> +	}
> +
> +	return true;
> +}
> +EXPORT_SYMBOL(drm_afbc_check_fb_size_ret);
> +
> +bool drm_afbc_check_fb_size(u32 pitch, int bpp,
> +			    u32 w, u32 h, u32 superblk_w, u32 superblk_h,
> +			    size_t size, u32 offset, u32 hdr_align)
> +{
> +	u32 payload_offset, total_size;
> +
> +	return drm_afbc_check_fb_size_ret(pitch, bpp, w, h,
> +					  superblk_w, superblk_h,
> +					  size, offset, hdr_align,
> +					  &payload_offset, &total_size);
> +}
> +EXPORT_SYMBOL(drm_afbc_check_fb_size);

Why don't we have one overall "check afbc parameters against buffer"
function?

Also would be kinda neat if we could wire up that check code directly into
core addfb2 code, since afbc is a cross driver standard, everyone will
have to use the same code. Doing it that way would also solve your
kerneldoc need (since core code checks it directly). We already have an
example for the tiled nv12 format, which is also checked in core.

Cheers, Daniel

> diff --git a/include/drm/drm_afbc.h b/include/drm/drm_afbc.h
> new file mode 100644
> index 000000000000..b28ae2849f96
> --- /dev/null
> +++ b/include/drm/drm_afbc.h
> @@ -0,0 +1,36 @@
> +/* SPDX-License-Identifier: GPL-2.0+ */
> +/*
> + * (C) 2019 Collabora Ltd.
> + *
> + * author: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
> + *
> + */
> +#ifndef __DRM_AFBC_H__
> +#define __DRM_AFBC_H__
> +
> +#include <linux/types.h>
> +
> +struct drm_device;
> +struct drm_mode_fb_cmd2;
> +struct drm_gem_object;
> +
> +#define AFBC_SUPERBLK_ALIGNMENT		128
> +
> +bool drm_afbc_check_offset(struct drm_device *dev,
> +			   const struct drm_mode_fb_cmd2 *mode_cmd);
> +
> +bool drm_afbc_check_size_align(struct drm_device *dev,
> +			       const struct drm_mode_fb_cmd2 *mode_cmd);
> +
> +bool drm_afbc_check_fb_size_ret(u32 pitch, int bpp,
> +				u32 w, u32 h, u32 superblk_w, u32 superblk_h,
> +				size_t size, u32 offset, u32 hdr_align,
> +				u32 *payload_off, u32 *total_size);
> +
> +bool drm_afbc_check_fb_size(u32 pitch, int bpp,
> +			    u32 w, u32 h, u32 superblk_w, u32 superblk_h,
> +			    size_t size, u32 offset, u32 hdr_align);
> +
> +bool drm_afbc_get_superblk_wh(u64 modifier, u32 *w, u32 *h);
> +
> +#endif /* __DRM_AFBC_H__ */
> -- 
> 2.17.1
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

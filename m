Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E06B41FC9D3
	for <lists+linux-rockchip@lfdr.de>; Wed, 17 Jun 2020 11:28:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8gZrEz9x+yRS8coTfzJzbLy66qHLCiyMz/+rrxEnuzM=; b=NvwdN0wo7ZiLAu
	IwU0IGl8JNe8XWNg8AGhzG8kdf4l7zn1KIxfxtF3hxXcXsrDCqPzwvF87yq/KG/9agyoSXgAend+g
	s9mFGruqSl3/iBzv+ZqpQ4xmPoAmQ29fhMbbqXNwXgh1cLW5Q2dXaNrwXTFSUnZYlscpgLC8QesXz
	UTedjlvPyqdkgxiRO7rbvJ/+7+mT9y11Aqoh2Iw+xF+tuuF/L8G5r8PHNs0Z8FGGS1wP8NmHFOb8z
	so47KIJYVyi51uhq0ohnENsYXYv0b28pXdNi6Q/HqyH2B8HnQVfnnhO0Tzw1B2tVdVX6k35VTC41k
	ttlBKsmOPzcSJlNJLi6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlUMW-0003g2-54; Wed, 17 Jun 2020 09:28:04 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlUMT-0003fQ-AF
 for linux-rockchip@lists.infradead.org; Wed, 17 Jun 2020 09:28:02 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1jlUMF-0006WM-DR; Wed, 17 Jun 2020 11:27:47 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Jonas Karlman <jonas@kwiboo.se>
Subject: Re: [PATCH 2/2] drm: rockchip: add NV15 and NV20 support
Date: Wed, 17 Jun 2020 11:27:46 +0200
Message-ID: <19910776.xcDMAuBTMJ@diego>
In-Reply-To: <20200607202521.18438-3-jonas@kwiboo.se>
References: <20200607202521.18438-1-jonas@kwiboo.se>
 <20200607202521.18438-3-jonas@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_022801_355283_5F707245 
X-CRM114-Status: GOOD (  15.71  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@linux.ie>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Sandy Huang <hjc@rock-chips.com>, Maxime Ripard <mripard@kernel.org>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 dri-devel@lists.freedesktop.org, Thomas Zimmermann <tzimmermann@suse.de>,
 Brian Starkey <brian.starkey@arm.com>, Ben Davis <ben.davis@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Sonntag, 7. Juni 2020, 22:25:26 CEST schrieb Jonas Karlman:
> Add support for displaying 10-bit 4:2:0 and 4:2:2 formats produced by the
> Rockchip Video Decoder on RK322X, RK3288, RK3328, RK3368 and RK3399.
> 
> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>

> ---
>  drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 27 ++++++++++++++++--
>  drivers/gpu/drm/rockchip/rockchip_drm_vop.h |  1 +
>  drivers/gpu/drm/rockchip/rockchip_vop_reg.c | 31 +++++++++++++++++----
>  3 files changed, 51 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> index 33463b79a37b..13a0682d438b 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> @@ -261,6 +261,17 @@ static bool has_rb_swapped(uint32_t format)
>  	}
>  }
>  
> +static bool is_fmt_10(uint32_t format)
> +{
> +	switch (format) {
> +	case DRM_FORMAT_NV15:
> +	case DRM_FORMAT_NV20:
> +		return true;
> +	default:
> +		return false;
> +	}
> +}
> +
>  static enum vop_data_format vop_convert_format(uint32_t format)
>  {
>  	switch (format) {
> @@ -276,8 +287,10 @@ static enum vop_data_format vop_convert_format(uint32_t format)
>  	case DRM_FORMAT_BGR565:
>  		return VOP_FMT_RGB565;
>  	case DRM_FORMAT_NV12:
> +	case DRM_FORMAT_NV15:
>  		return VOP_FMT_YUV420SP;
>  	case DRM_FORMAT_NV16:
> +	case DRM_FORMAT_NV20:
>  		return VOP_FMT_YUV422SP;
>  	case DRM_FORMAT_NV24:
>  		return VOP_FMT_YUV444SP;
> @@ -922,7 +935,12 @@ static void vop_plane_atomic_update(struct drm_plane *plane,
>  	dsp_sty = dest->y1 + crtc->mode.vtotal - crtc->mode.vsync_start;
>  	dsp_st = dsp_sty << 16 | (dsp_stx & 0xffff);
>  
> -	offset = (src->x1 >> 16) * fb->format->cpp[0];
> +	if (fb->format->block_w[0])
> +		offset = (src->x1 >> 16) * fb->format->char_per_block[0] /
> +			 fb->format->block_w[0];
> +	else
> +		offset = (src->x1 >> 16) * fb->format->cpp[0];
> +
>  	offset += (src->y1 >> 16) * fb->pitches[0];
>  	dma_addr = rk_obj->dma_addr + offset + fb->offsets[0];
>  
> @@ -948,6 +966,7 @@ static void vop_plane_atomic_update(struct drm_plane *plane,
>  	}
>  
>  	VOP_WIN_SET(vop, win, format, format);
> +	VOP_WIN_SET(vop, win, fmt_10, is_fmt_10(fb->format->format));
>  	VOP_WIN_SET(vop, win, yrgb_vir, DIV_ROUND_UP(fb->pitches[0], 4));
>  	VOP_WIN_SET(vop, win, yrgb_mst, dma_addr);
>  	VOP_WIN_YUV2YUV_SET(vop, win_yuv2yuv, y2r_en, is_yuv);
> @@ -964,7 +983,11 @@ static void vop_plane_atomic_update(struct drm_plane *plane,
>  		uv_obj = fb->obj[1];
>  		rk_uv_obj = to_rockchip_obj(uv_obj);
>  
> -		offset = (src->x1 >> 16) * bpp / hsub;
> +		if (fb->format->block_w[1])
> +			offset = (src->x1 >> 16) * bpp /
> +				 fb->format->block_w[1] / hsub;
> +		else
> +			offset = (src->x1 >> 16) * bpp / hsub;
>  		offset += (src->y1 >> 16) * fb->pitches[1] / vsub;
>  
>  		dma_addr = rk_uv_obj->dma_addr + offset + fb->offsets[1];
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.h b/drivers/gpu/drm/rockchip/rockchip_drm_vop.h
> index d03bdb531ef2..db1138da2bd4 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.h
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.h
> @@ -154,6 +154,7 @@ struct vop_win_phy {
>  	struct vop_reg enable;
>  	struct vop_reg gate;
>  	struct vop_reg format;
> +	struct vop_reg fmt_10;
>  	struct vop_reg rb_swap;
>  	struct vop_reg act_info;
>  	struct vop_reg dsp_info;
> diff --git a/drivers/gpu/drm/rockchip/rockchip_vop_reg.c b/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
> index 2413deded22c..503736c8b6c4 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
> @@ -50,6 +50,22 @@ static const uint32_t formats_win_full[] = {
>  	DRM_FORMAT_NV24,
>  };
>  
> +static const uint32_t formats_win_full_10[] = {
> +	DRM_FORMAT_XRGB8888,
> +	DRM_FORMAT_ARGB8888,
> +	DRM_FORMAT_XBGR8888,
> +	DRM_FORMAT_ABGR8888,
> +	DRM_FORMAT_RGB888,
> +	DRM_FORMAT_BGR888,
> +	DRM_FORMAT_RGB565,
> +	DRM_FORMAT_BGR565,
> +	DRM_FORMAT_NV12,
> +	DRM_FORMAT_NV16,
> +	DRM_FORMAT_NV24,
> +	DRM_FORMAT_NV15,
> +	DRM_FORMAT_NV20,
> +};
> +
>  static const uint64_t format_modifiers_win_full[] = {
>  	DRM_FORMAT_MOD_LINEAR,
>  	DRM_FORMAT_MOD_INVALID,
> @@ -570,11 +586,12 @@ static const struct vop_scl_regs rk3288_win_full_scl = {
>  
>  static const struct vop_win_phy rk3288_win01_data = {
>  	.scl = &rk3288_win_full_scl,
> -	.data_formats = formats_win_full,
> -	.nformats = ARRAY_SIZE(formats_win_full),
> +	.data_formats = formats_win_full_10,
> +	.nformats = ARRAY_SIZE(formats_win_full_10),
>  	.format_modifiers = format_modifiers_win_full,
>  	.enable = VOP_REG(RK3288_WIN0_CTRL0, 0x1, 0),
>  	.format = VOP_REG(RK3288_WIN0_CTRL0, 0x7, 1),
> +	.fmt_10 = VOP_REG(RK3288_WIN0_CTRL0, 0x1, 4),
>  	.rb_swap = VOP_REG(RK3288_WIN0_CTRL0, 0x1, 12),
>  	.act_info = VOP_REG(RK3288_WIN0_ACT_INFO, 0x1fff1fff, 0),
>  	.dsp_info = VOP_REG(RK3288_WIN0_DSP_INFO, 0x0fff0fff, 0),
> @@ -704,11 +721,12 @@ static const struct vop_intr rk3368_vop_intr = {
>  
>  static const struct vop_win_phy rk3368_win01_data = {
>  	.scl = &rk3288_win_full_scl,
> -	.data_formats = formats_win_full,
> -	.nformats = ARRAY_SIZE(formats_win_full),
> +	.data_formats = formats_win_full_10,
> +	.nformats = ARRAY_SIZE(formats_win_full_10),
>  	.format_modifiers = format_modifiers_win_full,
>  	.enable = VOP_REG(RK3368_WIN0_CTRL0, 0x1, 0),
>  	.format = VOP_REG(RK3368_WIN0_CTRL0, 0x7, 1),
> +	.fmt_10 = VOP_REG(RK3368_WIN0_CTRL0, 0x1, 4),
>  	.rb_swap = VOP_REG(RK3368_WIN0_CTRL0, 0x1, 12),
>  	.x_mir_en = VOP_REG(RK3368_WIN0_CTRL0, 0x1, 21),
>  	.y_mir_en = VOP_REG(RK3368_WIN0_CTRL0, 0x1, 22),
> @@ -853,11 +871,12 @@ static const struct vop_win_yuv2yuv_data rk3399_vop_big_win_yuv2yuv_data[] = {
>  
>  static const struct vop_win_phy rk3399_win01_data = {
>  	.scl = &rk3288_win_full_scl,
> -	.data_formats = formats_win_full,
> -	.nformats = ARRAY_SIZE(formats_win_full),
> +	.data_formats = formats_win_full_10,
> +	.nformats = ARRAY_SIZE(formats_win_full_10),
>  	.format_modifiers = format_modifiers_win_full_afbc,
>  	.enable = VOP_REG(RK3288_WIN0_CTRL0, 0x1, 0),
>  	.format = VOP_REG(RK3288_WIN0_CTRL0, 0x7, 1),
> +	.fmt_10 = VOP_REG(RK3288_WIN0_CTRL0, 0x1, 4),
>  	.rb_swap = VOP_REG(RK3288_WIN0_CTRL0, 0x1, 12),
>  	.y_mir_en = VOP_REG(RK3288_WIN0_CTRL0, 0x1, 22),
>  	.act_info = VOP_REG(RK3288_WIN0_ACT_INFO, 0x1fff1fff, 0),
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

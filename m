Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41750CEC39
	for <lists+linux-rockchip@lfdr.de>; Mon,  7 Oct 2019 20:54:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lA71qhqbPUHSDaHuzStinxGlrgLHU4axsm6VvhKbJUI=; b=F+3uiYv4AzNY0U
	QCiZNvjE/HfiGHGnS3KA0Hf47Iz2oxv9y1QsDRiIgFx9VZYQQuckQXVqVZ5v+rkMCmEQt6cgKmVrY
	eWVNqBp6YlRolXZ7jnSDgHKvBH45ohmZZ/S7+ibqXz8r/MCSjoZywRGWc7aC/4Ega8G7n0RXCXxdN
	Z8Lfj1gsVal5VF4UeFnskCzJmOH9AsK2EWi4cbwiA6HTZAGH+xtDC82NGBwQnmiozq77iPUC8wgLC
	jIeU7Xp2jVvM9yq+0UmNJHiRCzRMp+5nqEpO3zFfVTHSqp6+wTtCR4kFEhnG4dliQDlJNFCEUTBGL
	24GtYaimfmXXzXTwyQOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHY9X-0002UW-3M; Mon, 07 Oct 2019 18:54:39 +0000
Received: from mail-yw1-xc41.google.com ([2607:f8b0:4864:20::c41])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHY9T-0002Tw-Gv
 for linux-rockchip@lists.infradead.org; Mon, 07 Oct 2019 18:54:37 +0000
Received: by mail-yw1-xc41.google.com with SMTP id x65so5501048ywf.12
 for <linux-rockchip@lists.infradead.org>; Mon, 07 Oct 2019 11:54:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Aj4vcoOg0dwdokvnUBNVkpJXe0uXbLOHYfh/uNrfaCw=;
 b=cMT4VHRRnHSXRWHoNCug7fER8Py8Lbml/Ll9B7zwj3FCWkdN7tS09fR5QjEP2qV2p/
 egVAp2n1Vp7hpX3tnYuPXzK0PEfxhR0gjOgJF4LzSs3QWySrBDxw3j8w8FL/v1av9fKs
 BwarlOE8GOKXzsV7EvBPsH9NXMv+0ttwek8PpovTAWYH4IFJ5cqkt/P1W8jxqaq7XAbx
 E8fwptUQlw53XGyazQKBhmD3iCoBepbQ58SYdE/5G6CCiTm5H9C6srkAcx+n/oYcQoyn
 5uX+YwHexk3G2fjs9TZ14pSgcobSYHnnBIDh/rqXj3RvHXKfKGnqX/QEC94E1XqLimo9
 4dNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Aj4vcoOg0dwdokvnUBNVkpJXe0uXbLOHYfh/uNrfaCw=;
 b=Hob97UoDRU7Kl8K5ZuijPE8zTtL2zsuRB+dp7pVUidbCWqJO2DNwaa77qjr2Qe1+Pr
 NiGxXdmv8fYFnPDi0gDllJ1qeZA3ridMagWIbltkTMm+2bEFOJtkY0OGSanupIXpr7BD
 t50A7Jy/OvHtGhH5XcNRsansSpbrNh4KF/lqk/eBki5H3wU1zgaOSrEpKS2ORp4aK/fI
 X8zDOMqL9Sz+b7Q6/s+Qo7uFg42dvrKgNS0gnSwzp4u2vgYN8Rqpfc7xHeYswRI9Qwae
 Ggj8RLBkt9CUUtNun9KbT7O8k1yVlaVpTRwpABQWxVfSl4tfq0Abja2buE3H+cKySFaH
 tcZg==
X-Gm-Message-State: APjAAAVYfEVaYFebjUpQtiCR7Gw5fmSjyUNYAJdwoLLhdsWTAphYRhej
 dQoA3kxuvseCJNc1IMgG2wIb0g==
X-Google-Smtp-Source: APXvYqymF7YdrZM/kieO24PLf48bd1P/PT6S6AEypJmCHJQsCFeaAJ7SftOBGKNWzxPbYKXAPoUveA==
X-Received: by 2002:a81:50c5:: with SMTP id
 e188mr22239675ywb.340.1570474474209; 
 Mon, 07 Oct 2019 11:54:34 -0700 (PDT)
Received: from localhost ([2620:0:1013:11:89c6:2139:5435:371d])
 by smtp.gmail.com with ESMTPSA id a64sm3990691ywe.92.2019.10.07.11.54.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Oct 2019 11:54:33 -0700 (PDT)
Date: Mon, 7 Oct 2019 14:54:32 -0400
From: Sean Paul <sean@poorly.run>
To: Ezequiel Garcia <ezequiel@collabora.com>
Subject: Re: [PATCH v3 3/5] drm/rockchip: Add optional support for CRTC gamma
 LUT
Message-ID: <20191007185432.GG126146@art_vandelay>
References: <20190930222802.32088-1-ezequiel@collabora.com>
 <20190930222802.32088-4-ezequiel@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190930222802.32088-4-ezequiel@collabora.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_115435_615419_8924DD84 
X-CRM114-Status: GOOD (  31.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Ilia Mirkin <imirkin@alum.mit.edu>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Mon, Sep 30, 2019 at 07:28:00PM -0300, Ezequiel Garcia wrote:
> Add an optional CRTC gamma LUT support, and enable it on RK3288.
> This is currently enabled via a separate address resource,
> which needs to be specified in the devicetree.
> 
> The address resource is required because on some SoCs, such as
> RK3288, the LUT address is after the MMU address, and the latter
> is supported by a different driver. This prevents the DRM driver
> from requesting an entire register space.
> 
> The current implementation works for RGB 10-bit tables, as that
> is what seems to work on RK3288.
> 
> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> Reviewed-by: Douglas Anderson <dianders@chromium.org>
> Reviewed-by: Jacopo Mondi <jacopo+renesas@jmondi.org>
> ---
> Changes from v2:
> * None.
> 
> Changes from v1:
> * drop explicit linear LUT after finding a proper
>   way to disable gamma correction.
> * avoid setting gamma is the CRTC is not active.
> * s/int/unsigned int as suggested by Jacopo.
> * only enable color management and set gamma size
>   if gamma LUT is supported, suggested by Doug.
> * drop the reg-names usage, and instead just use indexed reg
>   specifiers, suggested by Doug.
> 
> Changes from RFC:
> * Request (an optional) address resource for the LUT.
> * Drop support for RK3399, which doesn't seem to work
>   out of the box and needs more research.
> * Support pass-thru setting when GAMMA_LUT is NULL.
> * Add a check for the gamma size, as suggested by Ilia.
> * Move gamma setting to atomic_commit_tail, as pointed
>   out by Jacopo/Laurent, is the correct way.
> ---
>  drivers/gpu/drm/rockchip/rockchip_drm_fb.c  |   3 +
>  drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 114 ++++++++++++++++++++
>  drivers/gpu/drm/rockchip/rockchip_drm_vop.h |   7 ++
>  drivers/gpu/drm/rockchip/rockchip_vop_reg.c |   2 +
>  4 files changed, 126 insertions(+)
> 
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_fb.c b/drivers/gpu/drm/rockchip/rockchip_drm_fb.c
> index dba352ec0ee3..fd1d987698ab 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_fb.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_fb.c
> @@ -17,6 +17,7 @@
>  #include "rockchip_drm_drv.h"
>  #include "rockchip_drm_fb.h"
>  #include "rockchip_drm_gem.h"
> +#include "rockchip_drm_vop.h"
>  
>  static const struct drm_framebuffer_funcs rockchip_drm_fb_funcs = {
>  	.destroy       = drm_gem_fb_destroy,
> @@ -112,6 +113,8 @@ rockchip_atomic_helper_commit_tail_rpm(struct drm_atomic_state *old_state)
>  
>  	drm_atomic_helper_commit_modeset_disables(dev, old_state);
>  
> +	rockchip_drm_vop_gamma_set(old_state);
> +

Instead of duplicating the commit_tail helper, could you just implement
.atomic_begin() and call this from there? I think the only hitch is if you
need this to be completed before crtc->atomic_enable(), at which point you
might need to call it from vop_crtc_atomic_enable() and then detect that in
atomic_begin()

That would prevent the revert in patch 1 and keep rockchip on the helper train.

Sean

>  	drm_atomic_helper_commit_modeset_enables(dev, old_state);
>  
>  	drm_atomic_helper_commit_planes(dev, old_state,
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> index 2f821c58007c..3a49794c6a43 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> @@ -141,6 +141,7 @@ struct vop {
>  
>  	uint32_t *regsbak;
>  	void __iomem *regs;
> +	void __iomem *lut_regs;
>  
>  	/* physical map length of vop register */
>  	uint32_t len;
> @@ -1193,6 +1194,102 @@ static void vop_wait_for_irq_handler(struct vop *vop)
>  	synchronize_irq(vop->irq);
>  }
>  
> +static bool vop_dsp_lut_is_enable(struct vop *vop)
> +{
> +	return vop_read_reg(vop, 0, &vop->data->common->dsp_lut_en);
> +}
> +
> +static void vop_crtc_write_gamma_lut(struct vop *vop, struct drm_crtc *crtc)
> +{
> +	struct drm_color_lut *lut = crtc->state->gamma_lut->data;
> +	unsigned int i;
> +
> +	for (i = 0; i < crtc->gamma_size; i++) {
> +		u32 word;
> +
> +		word = (drm_color_lut_extract(lut[i].red, 10) << 20) |
> +		       (drm_color_lut_extract(lut[i].green, 10) << 10) |
> +			drm_color_lut_extract(lut[i].blue, 10);
> +		writel(word, vop->lut_regs + i * 4);
> +	}
> +}
> +
> +static void vop_crtc_gamma_set(struct vop *vop, struct drm_crtc *crtc,
> +			       struct drm_crtc_state *old_state)
> +{
> +	unsigned int idle;
> +	int ret;
> +
> +	/*
> +	 * In order to write the LUT to the internal RAM memory,
> +	 * we need to first make sure the dsp_lut_en bit is cleared.
> +	 */
> +	spin_lock(&vop->reg_lock);
> +	VOP_REG_SET(vop, common, dsp_lut_en, 0);
> +	vop_cfg_done(vop);
> +	spin_unlock(&vop->reg_lock);
> +
> +	/*
> +	 * If the CRTC is not active, dsp_lut_en will not get cleared.
> +	 * Apparently we still need to do the above step to for
> +	 * gamma correction to be disabled.
> +	 */
> +	if (!crtc->state->active)
> +		return;
> +
> +	ret = readx_poll_timeout(vop_dsp_lut_is_enable, vop,
> +				 idle, !idle, 5, 30 * 1000);
> +	if (ret) {
> +		DRM_DEV_ERROR(vop->dev, "display LUT RAM enable timeout!\n");
> +		return;
> +	}
> +
> +	spin_lock(&vop->reg_lock);
> +
> +	if (crtc->state->gamma_lut &&
> +	   (!old_state->gamma_lut || (crtc->state->gamma_lut->base.id !=
> +				      old_state->gamma_lut->base.id)))
> +		vop_crtc_write_gamma_lut(vop, crtc);
> +
> +	VOP_REG_SET(vop, common, dsp_lut_en, 1);
> +	vop_cfg_done(vop);
> +	spin_unlock(&vop->reg_lock);
> +}
> +
> +static int vop_crtc_atomic_check(struct drm_crtc *crtc,
> +				 struct drm_crtc_state *crtc_state)
> +{
> +	struct vop *vop = to_vop(crtc);
> +
> +	if (vop->lut_regs && crtc_state->color_mgmt_changed &&
> +	    crtc_state->gamma_lut) {
> +		unsigned int len;
> +
> +		len = drm_color_lut_size(crtc_state->gamma_lut);
> +		if (len != crtc->gamma_size) {
> +			DRM_DEBUG_KMS("Invalid LUT size; got %d, expected %d\n",
> +				      len, crtc->gamma_size);
> +			return -EINVAL;
> +		}
> +	}
> +
> +	return 0;
> +}
> +
> +void rockchip_drm_vop_gamma_set(struct drm_atomic_state *state)
> +{
> +	struct drm_crtc_state *old_crtc_state;
> +	struct drm_crtc *crtc;
> +	unsigned int i;
> +
> +	for_each_old_crtc_in_state(state, crtc, old_crtc_state, i) {
> +		struct vop *vop = to_vop(crtc);
> +
> +		if (vop->lut_regs && crtc->state->color_mgmt_changed)
> +			vop_crtc_gamma_set(vop, crtc, old_crtc_state);
> +	}
> +}
> +
>  static void vop_crtc_atomic_flush(struct drm_crtc *crtc,
>  				  struct drm_crtc_state *old_crtc_state)
>  {
> @@ -1245,6 +1342,7 @@ static void vop_crtc_atomic_flush(struct drm_crtc *crtc,
>  
>  static const struct drm_crtc_helper_funcs vop_crtc_helper_funcs = {
>  	.mode_fixup = vop_crtc_mode_fixup,
> +	.atomic_check = vop_crtc_atomic_check,
>  	.atomic_flush = vop_crtc_atomic_flush,
>  	.atomic_enable = vop_crtc_atomic_enable,
>  	.atomic_disable = vop_crtc_atomic_disable,
> @@ -1363,6 +1461,7 @@ static const struct drm_crtc_funcs vop_crtc_funcs = {
>  	.disable_vblank = vop_crtc_disable_vblank,
>  	.set_crc_source = vop_crtc_set_crc_source,
>  	.verify_crc_source = vop_crtc_verify_crc_source,
> +	.gamma_set = drm_atomic_helper_legacy_gamma_set,
>  };
>  
>  static void vop_fb_unref_worker(struct drm_flip_work *work, void *val)
> @@ -1520,6 +1619,10 @@ static int vop_create_crtc(struct vop *vop)
>  		goto err_cleanup_planes;
>  
>  	drm_crtc_helper_add(crtc, &vop_crtc_helper_funcs);
> +	if (vop->lut_regs) {
> +		drm_mode_crtc_set_gamma_size(crtc, vop_data->lut_size);
> +		drm_crtc_enable_color_mgmt(crtc, 0, false, vop_data->lut_size);
> +	}
>  
>  	/*
>  	 * Create drm_planes for overlay windows with possible_crtcs restricted
> @@ -1825,6 +1928,17 @@ static int vop_bind(struct device *dev, struct device *master, void *data)
>  	if (IS_ERR(vop->regs))
>  		return PTR_ERR(vop->regs);
>  
> +	res = platform_get_resource(pdev, IORESOURCE_MEM, 1);
> +	if (res) {
> +		if (!vop_data->lut_size) {
> +			DRM_DEV_ERROR(dev, "no gamma LUT size defined\n");
> +			return -EINVAL;
> +		}
> +		vop->lut_regs = devm_ioremap_resource(dev, res);
> +		if (IS_ERR(vop->lut_regs))
> +			return PTR_ERR(vop->lut_regs);
> +	}
> +
>  	vop->regsbak = devm_kzalloc(dev, vop->len, GFP_KERNEL);
>  	if (!vop->regsbak)
>  		return -ENOMEM;
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.h b/drivers/gpu/drm/rockchip/rockchip_drm_vop.h
> index 2149a889c29d..bd1bcd5a14e9 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.h
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.h
> @@ -7,6 +7,8 @@
>  #ifndef _ROCKCHIP_DRM_VOP_H
>  #define _ROCKCHIP_DRM_VOP_H
>  
> +#include <drm/drm_atomic.h>
> +
>  /*
>   * major: IP major version, used for IP structure
>   * minor: big feature change under same structure
> @@ -67,6 +69,7 @@ struct vop_common {
>  	struct vop_reg dither_down_mode;
>  	struct vop_reg dither_down_en;
>  	struct vop_reg dither_up;
> +	struct vop_reg dsp_lut_en;
>  	struct vop_reg gate_en;
>  	struct vop_reg mmu_en;
>  	struct vop_reg out_mode;
> @@ -170,6 +173,7 @@ struct vop_data {
>  	const struct vop_win_yuv2yuv_data *win_yuv2yuv;
>  	const struct vop_win_data *win;
>  	unsigned int win_size;
> +	unsigned int lut_size;
>  
>  #define VOP_FEATURE_OUTPUT_RGB10	BIT(0)
>  #define VOP_FEATURE_INTERNAL_RGB	BIT(1)
> @@ -373,4 +377,7 @@ static inline int scl_vop_cal_lb_mode(int width, bool is_yuv)
>  }
>  
>  extern const struct component_ops vop_component_ops;
> +
> +void rockchip_drm_vop_gamma_set(struct drm_atomic_state *state);
> +
>  #endif /* _ROCKCHIP_DRM_VOP_H */
> diff --git a/drivers/gpu/drm/rockchip/rockchip_vop_reg.c b/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
> index d1494be14471..42ddcb698c82 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
> @@ -598,6 +598,7 @@ static const struct vop_common rk3288_common = {
>  	.dither_down_en = VOP_REG(RK3288_DSP_CTRL1, 0x1, 2),
>  	.pre_dither_down = VOP_REG(RK3288_DSP_CTRL1, 0x1, 1),
>  	.dither_up = VOP_REG(RK3288_DSP_CTRL1, 0x1, 6),
> +	.dsp_lut_en = VOP_REG(RK3288_DSP_CTRL1, 0x1, 0),
>  	.data_blank = VOP_REG(RK3288_DSP_CTRL0, 0x1, 19),
>  	.dsp_blank = VOP_REG(RK3288_DSP_CTRL0, 0x3, 18),
>  	.out_mode = VOP_REG(RK3288_DSP_CTRL0, 0xf, 0),
> @@ -646,6 +647,7 @@ static const struct vop_data rk3288_vop = {
>  	.output = &rk3288_output,
>  	.win = rk3288_vop_win_data,
>  	.win_size = ARRAY_SIZE(rk3288_vop_win_data),
> +	.lut_size = 1024,
>  };
>  
>  static const int rk3368_vop_intrs[] = {
> -- 
> 2.22.0
> 

-- 
Sean Paul, Software Engineer, Google / Chromium OS

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

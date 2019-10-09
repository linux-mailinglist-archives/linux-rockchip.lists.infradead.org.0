Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92368D1745
	for <lists+linux-rockchip@lfdr.de>; Wed,  9 Oct 2019 20:01:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y2q8ilTeKWctVtus9uoxXhAxPGh2k0IJDJ/l31a+sSE=; b=kxisaVubrVm0YL
	yxm2TpXY0POwN9yNkVzQl4c+UdEbfOuSTEstRR0U6FskJJdcXTUVNMPD5a/rGrKdPBA3Fx/Jk9VxO
	qVgFpk4wRI9ipZz9sf1RvWHp9VRMQclkhDUhIA6R9b0nwnG3T/rJ/z+YGkHvXJuyNqbClxO4g1VIK
	RnwQl0I9bmKfVpUi3DQbm6ZMBdSJqQJ/rOKS22kZqzSFAZ6SWsBO014u5qxbodKpSkpENCNDKcnuy
	MczIpuJO31M038egfqOweE03GOkKCh6cARcFLEACsUW58LbM5oNCXzXi/nmC8vZTFVdYzIyipMd61
	9fNmTbiWhNP+UfuucTnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIGHP-0003pU-9Q; Wed, 09 Oct 2019 18:01:43 +0000
Received: from mail-yw1-xc44.google.com ([2607:f8b0:4864:20::c44])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIGHL-0003od-8L
 for linux-rockchip@lists.infradead.org; Wed, 09 Oct 2019 18:01:41 +0000
Received: by mail-yw1-xc44.google.com with SMTP id e205so1143687ywc.7
 for <linux-rockchip@lists.infradead.org>; Wed, 09 Oct 2019 11:01:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=LPpUEhvI0bZLulxcrYkJkJ+lzun+XdvU2Vu2WdYuTZ8=;
 b=Mo8DsmcHaLz/rLTG5gAbMv+WtBU6RbT7m0NFsa48euU4QA+SuseWLHbHwPylfwayco
 M/Yr7IHTlccuL9lu8o/8+2M3kaef5OvBEm1SQvP1wLme8dkhyeFW/qsY6GvhmSva68Y6
 bc+fzbIwBExkDXCRGaTrkqxFHKyrx67WeiVUhSGqTlsg45vTrRadR3merjczwrJneBr8
 X797Xyc6qUk9Yck2wwHXqzy3pfntOZQOc6NtRqcZjpkERd4qX1ujnfRW3jvAPbV1QhgS
 BEKLE+uzattujw/kl25/EXpRjtwKKk3K8Sxsnz2zhoYxcEH5c1iZqZ8gpizr6wmk3pjB
 buRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=LPpUEhvI0bZLulxcrYkJkJ+lzun+XdvU2Vu2WdYuTZ8=;
 b=fo8tIeImeduiZVJtFkGaRvmq1jrIHPusRM2KmAI3f6RTqf351dTO7uhZ1bhR89JqDq
 tiU3d4cR56v90EhMyhXxO6apvVk9Qb2C4ckaxQDtQaa9Mjs5PVN5/ik/FEKw+jkBgKMv
 wlxCFO3P7A2dNhZyLQxNRMP+VVeF+45+LYwEcX92ulcf/dnCM2GD3sEaJjBpxaAS+6+Y
 0WXIuVFoBhC2pxHqeezKP2JoqFIflVYYrRWgA5kMsBvbWA5PqUrggclkJ4ip3rkOnXsM
 izCMO/b1DJ36SCcMRQhdDlpW4dgyIvPBkzag36+JrfAOnXk8OWXexWrHtBh/bbP9Leds
 uoMQ==
X-Gm-Message-State: APjAAAWw+dqwwHCm4b8VB6SUDpHp89uVsxWu1IlVeYYby4E32H2yq1dL
 jQbCPxWOUxebh9iWNRjwy4ihZA==
X-Google-Smtp-Source: APXvYqzYhTtEeQRFIlqmr4bznvStGp8OA+0qf0t+kkKg6OBbjK6o3CGLYEsImZFw98cQN67OtAF/Mg==
X-Received: by 2002:a0d:da42:: with SMTP id c63mr3944761ywe.47.1570644097911; 
 Wed, 09 Oct 2019 11:01:37 -0700 (PDT)
Received: from localhost ([2620:0:1013:11:89c6:2139:5435:371d])
 by smtp.gmail.com with ESMTPSA id 12sm792691ywu.59.2019.10.09.11.01.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Oct 2019 11:01:37 -0700 (PDT)
Date: Wed, 9 Oct 2019 14:01:36 -0400
From: Sean Paul <sean@poorly.run>
To: Ezequiel Garcia <ezequiel@collabora.com>
Subject: Re: [PATCH v4 2/3] drm/rockchip: Add optional support for CRTC gamma
 LUT
Message-ID: <20191009180136.GE85762@art_vandelay>
References: <20191008230038.24037-1-ezequiel@collabora.com>
 <20191008230038.24037-3-ezequiel@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191008230038.24037-3-ezequiel@collabora.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_110139_361915_B3013404 
X-CRM114-Status: GOOD (  32.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Jacopo Mondi <jacopo@jmondi.org>,
 Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
 linux-kernel@vger.kernel.org, Sandy Huang <hjc@rock-chips.com>,
 dri-devel@lists.freedesktop.org, Douglas Anderson <dianders@chromium.org>,
 linux-rockchip@lists.infradead.org,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Sean Paul <seanpaul@chromium.org>, Rob Herring <robh+dt@kernel.org>,
 kernel@collabora.com, Ilia Mirkin <imirkin@alum.mit.edu>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Tue, Oct 08, 2019 at 08:00:37PM -0300, Ezequiel Garcia wrote:
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

Hey Ezequiel,
Just a few comments on the actual content of the patch as opposed to my higher
level comments yesterday. I think we're almost there, thanks for sticking this
out!

> ---
> Changes from v3:
> * Move to atomic_enable and atomic_begin,
>   as discussed with Sean Paul.
> * Dropped the Reviewed-bys.
> Changes from v2:
> * None.
> Changes from v1:
> * drop explicit linear LUT after finding a proper
>   way to disable gamma correction.
> * avoid setting gamma is the CRTC is not active.
> * s/int/unsigned int as suggested by Jacopo.
> * only enable color management and set gamma size
>   if gamma LUT is supported, suggested by Doug.
> * drop the reg-names usage, and instead just use indexed reg
>   specifiers, suggested by Doug.
> Changes from RFC:
> * Request (an optional) address resource for the LUT.
> * Drop support for RK3399, which doesn't seem to work
>   out of the box and needs more research.
> * Support pass-thru setting when GAMMA_LUT is NULL.
> * Add a check for the gamma size, as suggested by Ilia.
> * Move gamma setting to atomic_commit_tail, as pointed
>   out by Jacopo/Laurent, is the correct way.
> ---
>  drivers/gpu/drm/rockchip/rockchip_drm_fb.c  |   1 +
>  drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 125 ++++++++++++++++++++
>  drivers/gpu/drm/rockchip/rockchip_drm_vop.h |   5 +
>  drivers/gpu/drm/rockchip/rockchip_vop_reg.c |   2 +
>  4 files changed, 133 insertions(+)
> 
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_fb.c b/drivers/gpu/drm/rockchip/rockchip_drm_fb.c
> index ca01234c037c..697ee04b85cf 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_fb.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_fb.c
> @@ -17,6 +17,7 @@
>  #include "rockchip_drm_drv.h"
>  #include "rockchip_drm_fb.h"
>  #include "rockchip_drm_gem.h"
> +#include "rockchip_drm_vop.h"

Leftover from the previous version?

>  
>  static const struct drm_framebuffer_funcs rockchip_drm_fb_funcs = {
>  	.destroy       = drm_gem_fb_destroy,
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> index 613404f86668..85c1269a1218 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> @@ -139,6 +139,7 @@ struct vop {
>  
>  	uint32_t *regsbak;
>  	void __iomem *regs;
> +	void __iomem *lut_regs;
>  
>  	/* physical map length of vop register */
>  	uint32_t len;
> @@ -1048,6 +1049,84 @@ static bool vop_crtc_mode_fixup(struct drm_crtc *crtc,
>  	return true;
>  }
>  
> +static bool vop_dsp_lut_is_enable(struct vop *vop)

*enabled

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
> +			       struct drm_crtc_state *old_crtc_state)
> +{
> +	unsigned int idle;
> +	int ret;
> +

How about:

        if (!vop->lut_regs)
                return;

here and then you can remove that condition above the 2 callsites

> +	/*
> +	 * In order to write the LUT to the internal memory,
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
> +	if (crtc->state->gamma_lut &&
> +	   (!old_crtc_state->gamma_lut || (crtc->state->gamma_lut->base.id !=
> +					old_crtc_state->gamma_lut->base.id))) {

Silly question, but isn't the second part of this check redundant since you need 
color_mgmt_changed || active_changed to get into this function?

So maybe invert the conditional here and exit early (to save a level of
indentation in the block below):

        if (!crtc->state->gamma_lut)
                return;

        spin_lock(&vop->reg_lock);

        vop_crtc_write_gamma_lut(vop, crtc);
        VOP_REG_SET(vop, common, dsp_lut_en, 1);
        vop_cfg_done(vop);

        spin_unlock(&vop->reg_lock);

> +
> +		spin_lock(&vop->reg_lock);
> +
> +		vop_crtc_write_gamma_lut(vop, crtc);
> +		VOP_REG_SET(vop, common, dsp_lut_en, 1);
> +		vop_cfg_done(vop);
> +
> +		spin_unlock(&vop->reg_lock);
> +	}
> +}
> +
> +static void vop_crtc_atomic_begin(struct drm_crtc *crtc,
> +				   struct drm_crtc_state *old_crtc_state)
> +{
> +	struct vop *vop = to_vop(crtc);
> +
> +	/*
> +	 * Only update GAMMA if the 'active' flag is not changed,
> +	 * otherwise it's updated by .atomic_enable.
> +	 */
> +	if (vop->lut_regs && crtc->state->color_mgmt_changed &&
> +	    !crtc->state->active_changed)
> +		vop_crtc_gamma_set(vop, crtc, old_crtc_state);
> +}
> +
>  static void vop_crtc_atomic_enable(struct drm_crtc *crtc,
>  				   struct drm_crtc_state *old_state)
>  {
> @@ -1075,6 +1154,14 @@ static void vop_crtc_atomic_enable(struct drm_crtc *crtc,
>  		return;
>  	}
>  
> +	/*
> +	 * If we have a GAMMA LUT in the state, then let's make sure
> +	 * it's updated. We might be coming out of suspend,
> +	 * which means the LUT internal memory needs to be re-written.
> +	 */
> +	if (vop->lut_regs && crtc->state->gamma_lut)
> +		vop_crtc_gamma_set(vop, crtc, old_state);
> +
>  	mutex_lock(&vop->vop_lock);
>  
>  	WARN_ON(vop->event);
> @@ -1191,6 +1278,26 @@ static void vop_wait_for_irq_handler(struct vop *vop)
>  	synchronize_irq(vop->irq);
>  }
>  
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

Overflow is avoided in drm_mode_gamma_set_ioctl(), so I don't think you need
this function.

Sean

> +	}
> +
> +	return 0;
> +}
> +
>  static void vop_crtc_atomic_flush(struct drm_crtc *crtc,
>  				  struct drm_crtc_state *old_crtc_state)
>  {
> @@ -1243,6 +1350,8 @@ static void vop_crtc_atomic_flush(struct drm_crtc *crtc,
>  
>  static const struct drm_crtc_helper_funcs vop_crtc_helper_funcs = {
>  	.mode_fixup = vop_crtc_mode_fixup,
> +	.atomic_check = vop_crtc_atomic_check,
> +	.atomic_begin = vop_crtc_atomic_begin,
>  	.atomic_flush = vop_crtc_atomic_flush,
>  	.atomic_enable = vop_crtc_atomic_enable,
>  	.atomic_disable = vop_crtc_atomic_disable,
> @@ -1361,6 +1470,7 @@ static const struct drm_crtc_funcs vop_crtc_funcs = {
>  	.disable_vblank = vop_crtc_disable_vblank,
>  	.set_crc_source = vop_crtc_set_crc_source,
>  	.verify_crc_source = vop_crtc_verify_crc_source,
> +	.gamma_set = drm_atomic_helper_legacy_gamma_set,
>  };
>  
>  static void vop_fb_unref_worker(struct drm_flip_work *work, void *val)
> @@ -1518,6 +1628,10 @@ static int vop_create_crtc(struct vop *vop)
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
> @@ -1822,6 +1936,17 @@ static int vop_bind(struct device *dev, struct device *master, void *data)
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
> index 2149a889c29d..8192c90d48c4 100644
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
> @@ -373,4 +377,5 @@ static inline int scl_vop_cal_lb_mode(int width, bool is_yuv)
>  }
>  
>  extern const struct component_ops vop_component_ops;
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

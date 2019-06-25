Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB99F525DF
	for <lists+linux-rockchip@lfdr.de>; Tue, 25 Jun 2019 10:04:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=56pypNjBFuCgTjLsdtSIAUngAX+H9bkkXmJ8qokUQEc=; b=aNbMv0Gl4CN2Tcw8G9VVxTuHC
	E0K+U+yhtp6dZaz99h/ULzEr0Bp5UdoFROlMIasxwz+xGFJycsRL+oYxo2F0vo/p+3R0fEXQIXpYy
	tpvmMh0ktSFVMzhJPtCaDI+o2vhqpURPjxOHuCvqy2phEYJi72Dwg0F0g7i5c2l/4ZxtDDc/dumUp
	A6h51iKnLBAKYbbuumHUy/emV1rxJHQ22WQclzB0IPePrPs1E4WK4BDFNLjnKdKEyOOhJ0Bjfbc5t
	p+ba69omZDNG4hKw7wgUMUyDKL2o9Sp6OkqAGXQN/rTZHuEe447fdw81SCtj2IVH+7ge5vXE2S6G6
	4tq60+U7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfgRN-0007gI-7t; Tue, 25 Jun 2019 08:04:33 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfgRI-0007fd-8z
 for linux-rockchip@lists.infradead.org; Tue, 25 Jun 2019 08:04:30 +0000
Received: from uno.localdomain (2-224-242-101.ip172.fastwebnet.it
 [2.224.242.101]) (Authenticated sender: jacopo@jmondi.org)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 4DA1F240021;
 Tue, 25 Jun 2019 08:04:10 +0000 (UTC)
Date: Tue, 25 Jun 2019 10:05:26 +0200
From: Jacopo Mondi <jacopo@jmondi.org>
To: Ezequiel Garcia <ezequiel@collabora.com>
Subject: Re: [PATCH v2 2/3] drm/rockchip: Add optional support for CRTC gamma
 LUT
Message-ID: <20190625080526.osfzjb32pt6f5pxu@uno.localdomain>
References: <20190621211346.1324-1-ezequiel@collabora.com>
 <20190621211346.1324-3-ezequiel@collabora.com>
MIME-Version: 1.0
In-Reply-To: <20190621211346.1324-3-ezequiel@collabora.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_010428_634223_0144C836 
X-CRM114-Status: GOOD (  28.96  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>, linux-kernel@vger.kernel.org,
 Sandy Huang <hjc@rock-chips.com>, dri-devel@lists.freedesktop.org,
 Douglas Anderson <dianders@chromium.org>, linux-rockchip@lists.infradead.org,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Sean Paul <seanpaul@chromium.org>, Rob Herring <robh+dt@kernel.org>,
 kernel@collabora.com, Ilia Mirkin <imirkin@alum.mit.edu>
Content-Type: multipart/mixed; boundary="===============4410409787594165786=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org


--===============4410409787594165786==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="rltoquubbfop2tn7"
Content-Disposition: inline


--rltoquubbfop2tn7
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

Hi Ezequiel,

On Fri, Jun 21, 2019 at 06:13:45PM -0300, Ezequiel Garcia wrote:
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
> ---
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
> index 1c69066b6894..bf9ad6240971 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_fb.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_fb.c
> @@ -16,6 +16,7 @@
>  #include "rockchip_drm_fb.h"
>  #include "rockchip_drm_gem.h"
>  #include "rockchip_drm_psr.h"
> +#include "rockchip_drm_vop.h"
>
>  static int rockchip_drm_fb_dirty(struct drm_framebuffer *fb,
>  				 struct drm_file *file,
> @@ -128,6 +129,8 @@ rockchip_atomic_helper_commit_tail_rpm(struct drm_atomic_state *old_state)
>
>  	drm_atomic_helper_commit_modeset_disables(dev, old_state);
>
> +	rockchip_drm_vop_gamma_set(old_state);
> +
>  	drm_atomic_helper_commit_modeset_enables(dev, old_state);
>
>  	drm_atomic_helper_commit_planes(dev, old_state,
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> index 12ed5265a90b..cfa70773a9bc 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> @@ -137,6 +137,7 @@ struct vop {
>
>  	uint32_t *regsbak;
>  	void __iomem *regs;
> +	void __iomem *lut_regs;
>
>  	/* physical map length of vop register */
>  	uint32_t len;
> @@ -1153,6 +1154,102 @@ static void vop_wait_for_irq_handler(struct vop *vop)
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

Did you mean "dsp_lut_en will not get enabled" ?

Beacuse I see dsp_lut_en being set to 0, and not activated if
!crtc->state->active. Am I confused?

Apart from that:
Reviewed-by: Jacopo Mondi <jacopo+renesas@jmondi.org>

Thanks
   j

> +	 * Apparently we still need to do the above step to for
> +	 * gamma correction to be disabled.
> +	 */
> +	if (!crtc->state->active)
> +		return;
> +
> +	ret = readx_poll_timeout(vop_dsp_lut_is_enable, vop,
> +			   idle, !idle, 5, 30 * 1000);
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
> +				   struct drm_crtc_state *crtc_state)
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
> @@ -1205,6 +1302,7 @@ static void vop_crtc_atomic_flush(struct drm_crtc *crtc,
>
>  static const struct drm_crtc_helper_funcs vop_crtc_helper_funcs = {
>  	.mode_fixup = vop_crtc_mode_fixup,
> +	.atomic_check = vop_crtc_atomic_check,
>  	.atomic_flush = vop_crtc_atomic_flush,
>  	.atomic_enable = vop_crtc_atomic_enable,
>  	.atomic_disable = vop_crtc_atomic_disable,
> @@ -1323,6 +1421,7 @@ static const struct drm_crtc_funcs vop_crtc_funcs = {
>  	.disable_vblank = vop_crtc_disable_vblank,
>  	.set_crc_source = vop_crtc_set_crc_source,
>  	.verify_crc_source = vop_crtc_verify_crc_source,
> +	.gamma_set = drm_atomic_helper_legacy_gamma_set,
>  };
>
>  static void vop_fb_unref_worker(struct drm_flip_work *work, void *val)
> @@ -1480,6 +1579,10 @@ static int vop_create_crtc(struct vop *vop)
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
> @@ -1776,6 +1879,17 @@ static int vop_bind(struct device *dev, struct device *master, void *data)
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
> index 7b9c74750f6d..30d49eff3670 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
> @@ -593,6 +593,7 @@ static const struct vop_common rk3288_common = {
>  	.dither_down_en = VOP_REG(RK3288_DSP_CTRL1, 0x1, 2),
>  	.pre_dither_down = VOP_REG(RK3288_DSP_CTRL1, 0x1, 1),
>  	.dither_up = VOP_REG(RK3288_DSP_CTRL1, 0x1, 6),
> +	.dsp_lut_en = VOP_REG(RK3288_DSP_CTRL1, 0x1, 0),
>  	.data_blank = VOP_REG(RK3288_DSP_CTRL0, 0x1, 19),
>  	.dsp_blank = VOP_REG(RK3288_DSP_CTRL0, 0x3, 18),
>  	.out_mode = VOP_REG(RK3288_DSP_CTRL0, 0xf, 0),
> @@ -641,6 +642,7 @@ static const struct vop_data rk3288_vop = {
>  	.output = &rk3288_output,
>  	.win = rk3288_vop_win_data,
>  	.win_size = ARRAY_SIZE(rk3288_vop_win_data),
> +	.lut_size = 1024,
>  };
>
>  static const int rk3368_vop_intrs[] = {
> --
> 2.20.1
>

--rltoquubbfop2tn7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEtcQ9SICaIIqPWDjAcjQGjxahVjwFAl0R1cUACgkQcjQGjxah
VjxEsA//WWN38GEWFA1feOeQTUdnz0REX2tU9aaBlaSs4roaEUz8mnbHhQfYsnLI
g7P5e5NHlHAXIiKNEP5RudE+ffw21x1fWfZLrdj6wJphjiFL1GnNnERpqvp3LpN3
57u5h37fZL9kEBfXr0jGaSKS5j6UZsfvC2nai2fOeEtUZ4UrrAZTGcSvVXMFOuMI
p+vYastQLxgNr2GWkFxtXBQZ1petIIBkAlJYi8nhdKBxNTVbTK2F434iThrvZqsM
40DhFFulWBJqsADrLUpQvF5v2GdBNXIoaGb5qiWkJvii3a2L3xdbtpF6QIJMe/Tt
HxmpG4fKwQ/ZQ8vUYTgmOJ+Pw+rE9KWMy+3lErcT4FDIQkxzTQWeO/dOp/g7N7I5
NaORLP/CLCiq66ijmhFk64iV28CHcJbcP1mLTV1Zes0pr5aW9hf9OG1HjrBkRwuc
xXydPt6dOCUYTrzF21o/8Lv5KgXY72/EnFMs2H5cxEJarFqHtsX1L7ZfHHVJ+tnN
Cn/UuXmaF+m9/I7httvbHegMBRekW2pWq0Ei5C8oKDyAP2dcuEQDKsfEZzzvwZom
wqJwC3R3fbaPYDnIXyLQgncjRrakoI643lFWSHoJqRw8I/CS/nGNqyZz9/vsYN83
VJTe816NCO2Crgvw5SYygsUotCMMg6fWojiUPfLIMjJQHr4MCQQ=
=QmDy
-----END PGP SIGNATURE-----

--rltoquubbfop2tn7--


--===============4410409787594165786==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4410409787594165786==--


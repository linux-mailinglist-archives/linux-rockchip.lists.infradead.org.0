Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 640ED17C7E9
	for <lists+linux-rockchip@lfdr.de>; Fri,  6 Mar 2020 22:35:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1OhiNNJDEZvzzY2OTifxR1Ews+edW/Q5lJ8n2W2GGwU=; b=UGRDyz5kZGGlb8
	2DxYWfePlw0sfXJCjtRZoUqIw8h3QtxYhpSHxkyZ/pCw4MBtwO4AbQQqZ/YkQFaKzV0YhMFRNohBe
	V1W2t4un/aeZLGtzqAmAPCcK16kPccUSKJIF1hfyHFxDe9ls8ObmgNqwaPt2KvWlFJOmjzL2ZSWpl
	UP+hvW8IIMpUSgEJ5UzY9Qv9ugGyGqqCe96gel3DUkxOhSH1nf4avTy54LJ80m0iJ740mxRmyQ4P1
	ctoLriV8dmvaGjLS0gaqdv/LwDjRhAtWXt75ayvNTWwNE6lf8Khtps8NHhMfyUhYWNw0sTXIfsN5x
	7xXMTF6RnGxs3c6m/Q+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAKd0-0004jr-Ae; Fri, 06 Mar 2020 21:35:30 +0000
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAKcv-0004ia-NX; Fri, 06 Mar 2020 21:35:28 +0000
Received: from ravnborg.org (unknown [158.248.194.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk3.altibox.net (Postfix) with ESMTPS id C48062001E;
 Fri,  6 Mar 2020 22:35:20 +0100 (CET)
Date: Fri, 6 Mar 2020 22:35:19 +0100
From: Sam Ravnborg <sam@ravnborg.org>
To: Thomas Zimmermann <tzimmermann@suse.de>
Subject: Re: [PATCH 05/22] drm/gma500: Use simple encoder
Message-ID: <20200306213519.GD17369@ravnborg.org>
References: <20200305155950.2705-1-tzimmermann@suse.de>
 <20200305155950.2705-6-tzimmermann@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200305155950.2705-6-tzimmermann@suse.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=eMA9ckh1 c=1 sm=1 tr=0
 a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
 a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=kj9zAlcOel0A:10 a=7gkXJVJtAAAA:8
 a=WhbsdxYEUz5OCNYPzC0A:9 a=CjuIK1q_8ugA:10 a=E9Po1WZjFZOl8hwRPBS3:22
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_133526_313211_8E05BAC3 
X-CRM114-Status: GOOD (  19.40  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [109.247.116.14 listed in list.dnswl.org]
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
Cc: hamohammed.sa@gmail.com, alexandre.belloni@bootlin.com, heiko@sntech.de,
 airlied@linux.ie, stefan@agner.ch, linux@armlinux.org.uk, paul@crapouillou.net,
 eric@anholt.net, thierry.reding@gmail.com, krzk@kernel.org, festevam@gmail.com,
 sebastian.reichel@collabora.com, linux-samsung-soc@vger.kernel.org,
 jy0922.shim@samsung.com, hjc@rock-chips.com, tomi.valkeinen@ti.com,
 abrodkin@synopsys.com, kong.kongxinwei@hisilicon.com,
 patrik.r.jakobsson@gmail.com, jonathanh@nvidia.com, xinliang.liu@linaro.org,
 ludovic.desroches@microchip.com, kgene@kernel.org, linux-imx@nxp.com,
 ck.hu@mediatek.com, linux-rockchip@lists.infradead.org,
 virtualization@lists.linux-foundation.org, linux-tegra@vger.kernel.org,
 p.zabel@pengutronix.de, puck.chen@hisilicon.com, s.hauer@pengutronix.de,
 alison.wang@nxp.com, maarten.lankhorst@linux.intel.com, mripard@kernel.org,
 inki.dae@samsung.com, john.stultz@linaro.org, jsarha@ti.com,
 matthias.bgg@gmail.com, wens@csie.org, kernel@pengutronix.de,
 jernej.skrabec@siol.net, kraxel@redhat.com, rodrigosiqueiramelo@gmail.com,
 bbrezillon@kernel.org, jingoohan1@gmail.com, dri-devel@lists.freedesktop.org,
 sw0312.kim@samsung.com, nicolas.ferre@microchip.com, kyungmin.park@samsung.com,
 kieran.bingham+renesas@ideasonboard.com, daniel@ffwll.ch,
 zourongrong@gmail.com, linux-mediatek@lists.infradead.org, shawnguo@kernel.org,
 laurent.pinchart@ideasonboard.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Thomas.

On Thu, Mar 05, 2020 at 04:59:33PM +0100, Thomas Zimmermann wrote:
> The gma500 driver uses empty implementations for some of its encoders.
> Replace the code with the generic simple encoder.
This parts looks good.


> As a side effect, the
> patch also removes an indirection in the encoder setup for Medfield.

I failed to see where this was done. Maybe too late for me to review
patches, so I will stop now.


No matter - patch is:
Acked-by: Sam Ravnborg <sam@ravnborg.org>

> 
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> ---
>  drivers/gpu/drm/gma500/cdv_intel_crt.c     | 14 +++-----------
>  drivers/gpu/drm/gma500/cdv_intel_dp.c      | 16 +++-------------
>  drivers/gpu/drm/gma500/cdv_intel_hdmi.c    |  4 ++--
>  drivers/gpu/drm/gma500/cdv_intel_lvds.c    | 17 +++--------------
>  drivers/gpu/drm/gma500/mdfld_dsi_dpi.c     |  7 +++----
>  drivers/gpu/drm/gma500/mdfld_output.h      |  1 -
>  drivers/gpu/drm/gma500/mdfld_tmd_vid.c     |  6 ------
>  drivers/gpu/drm/gma500/mdfld_tpo_vid.c     |  6 ------
>  drivers/gpu/drm/gma500/oaktrail_hdmi.c     | 14 ++------------
>  drivers/gpu/drm/gma500/oaktrail_lvds.c     |  5 +++--
>  drivers/gpu/drm/gma500/psb_intel_drv.h     |  1 -
>  drivers/gpu/drm/gma500/psb_intel_lvds.c    | 18 +++---------------
>  drivers/gpu/drm/gma500/tc35876x-dsi-lvds.c |  5 -----
>  13 files changed, 22 insertions(+), 92 deletions(-)
> 
> diff --git a/drivers/gpu/drm/gma500/cdv_intel_crt.c b/drivers/gpu/drm/gma500/cdv_intel_crt.c
> index 29c36d63b20e..88535f5aacc5 100644
> --- a/drivers/gpu/drm/gma500/cdv_intel_crt.c
> +++ b/drivers/gpu/drm/gma500/cdv_intel_crt.c
> @@ -28,6 +28,8 @@
>  #include <linux/i2c.h>
>  #include <linux/pm_runtime.h>
>  
> +#include <drm/drm_simple_kms_helper.h>
> +
>  #include "cdv_device.h"
>  #include "intel_bios.h"
>  #include "power.h"
> @@ -237,15 +239,6 @@ static const struct drm_connector_helper_funcs
>  	.best_encoder = gma_best_encoder,
>  };
>  
> -static void cdv_intel_crt_enc_destroy(struct drm_encoder *encoder)
> -{
> -	drm_encoder_cleanup(encoder);
> -}
> -
> -static const struct drm_encoder_funcs cdv_intel_crt_enc_funcs = {
> -	.destroy = cdv_intel_crt_enc_destroy,
> -};
> -
>  void cdv_intel_crt_init(struct drm_device *dev,
>  			struct psb_intel_mode_device *mode_dev)
>  {
> @@ -271,8 +264,7 @@ void cdv_intel_crt_init(struct drm_device *dev,
>  		&cdv_intel_crt_connector_funcs, DRM_MODE_CONNECTOR_VGA);
>  
>  	encoder = &gma_encoder->base;
> -	drm_encoder_init(dev, encoder,
> -		&cdv_intel_crt_enc_funcs, DRM_MODE_ENCODER_DAC, NULL);
> +	drm_simple_encoder_init(dev, encoder, DRM_MODE_ENCODER_DAC);
>  
>  	gma_connector_attach_encoder(gma_connector, gma_encoder);
>  
> diff --git a/drivers/gpu/drm/gma500/cdv_intel_dp.c b/drivers/gpu/drm/gma500/cdv_intel_dp.c
> index 5772b2dce0d6..13947ec06dbb 100644
> --- a/drivers/gpu/drm/gma500/cdv_intel_dp.c
> +++ b/drivers/gpu/drm/gma500/cdv_intel_dp.c
> @@ -32,6 +32,7 @@
>  #include <drm/drm_crtc.h>
>  #include <drm/drm_crtc_helper.h>
>  #include <drm/drm_dp_helper.h>
> +#include <drm/drm_simple_kms_helper.h>
>  
>  #include "gma_display.h"
>  #include "psb_drv.h"
> @@ -1908,11 +1909,6 @@ cdv_intel_dp_destroy(struct drm_connector *connector)
>  	kfree(connector);
>  }
>  
> -static void cdv_intel_dp_encoder_destroy(struct drm_encoder *encoder)
> -{
> -	drm_encoder_cleanup(encoder);
> -}
> -
>  static const struct drm_encoder_helper_funcs cdv_intel_dp_helper_funcs = {
>  	.dpms = cdv_intel_dp_dpms,
>  	.mode_fixup = cdv_intel_dp_mode_fixup,
> @@ -1935,11 +1931,6 @@ static const struct drm_connector_helper_funcs cdv_intel_dp_connector_helper_fun
>  	.best_encoder = gma_best_encoder,
>  };
>  
> -static const struct drm_encoder_funcs cdv_intel_dp_enc_funcs = {
> -	.destroy = cdv_intel_dp_encoder_destroy,
> -};
> -
> -
>  static void cdv_intel_dp_add_properties(struct drm_connector *connector)
>  {
>  	cdv_intel_attach_force_audio_property(connector);
> @@ -2016,8 +2007,7 @@ cdv_intel_dp_init(struct drm_device *dev, struct psb_intel_mode_device *mode_dev
>  	encoder = &gma_encoder->base;
>  
>  	drm_connector_init(dev, connector, &cdv_intel_dp_connector_funcs, type);
> -	drm_encoder_init(dev, encoder, &cdv_intel_dp_enc_funcs,
> -			 DRM_MODE_ENCODER_TMDS, NULL);
> +	drm_simple_encoder_init(dev, encoder, DRM_MODE_ENCODER_TMDS);
>  
>  	gma_connector_attach_encoder(gma_connector, gma_encoder);
>  
> @@ -2120,7 +2110,7 @@ cdv_intel_dp_init(struct drm_device *dev, struct psb_intel_mode_device *mode_dev
>  		if (ret == 0) {
>  			/* if this fails, presume the device is a ghost */
>  			DRM_INFO("failed to retrieve link info, disabling eDP\n");
> -			cdv_intel_dp_encoder_destroy(encoder);
> +			drm_encoder_cleanup(encoder);
>  			cdv_intel_dp_destroy(connector);
>  			goto err_priv;
>  		} else {
> diff --git a/drivers/gpu/drm/gma500/cdv_intel_hdmi.c b/drivers/gpu/drm/gma500/cdv_intel_hdmi.c
> index 1711a41acc16..0d12c6ffbc40 100644
> --- a/drivers/gpu/drm/gma500/cdv_intel_hdmi.c
> +++ b/drivers/gpu/drm/gma500/cdv_intel_hdmi.c
> @@ -32,6 +32,7 @@
>  #include <drm/drm.h>
>  #include <drm/drm_crtc.h>
>  #include <drm/drm_edid.h>
> +#include <drm/drm_simple_kms_helper.h>
>  
>  #include "cdv_device.h"
>  #include "psb_drv.h"
> @@ -311,8 +312,7 @@ void cdv_hdmi_init(struct drm_device *dev,
>  			   &cdv_hdmi_connector_funcs,
>  			   DRM_MODE_CONNECTOR_DVID);
>  
> -	drm_encoder_init(dev, encoder, &psb_intel_lvds_enc_funcs,
> -			 DRM_MODE_ENCODER_TMDS, NULL);
> +	drm_simple_encoder_init(dev, encoder, DRM_MODE_ENCODER_TMDS);
>  
>  	gma_connector_attach_encoder(gma_connector, gma_encoder);
>  	gma_encoder->type = INTEL_OUTPUT_HDMI;
> diff --git a/drivers/gpu/drm/gma500/cdv_intel_lvds.c b/drivers/gpu/drm/gma500/cdv_intel_lvds.c
> index ea0a5d9a0acc..18de10e9ff9a 100644
> --- a/drivers/gpu/drm/gma500/cdv_intel_lvds.c
> +++ b/drivers/gpu/drm/gma500/cdv_intel_lvds.c
> @@ -12,6 +12,8 @@
>  #include <linux/i2c.h>
>  #include <linux/pm_runtime.h>
>  
> +#include <drm/drm_simple_kms_helper.h>
> +
>  #include "cdv_device.h"
>  #include "intel_bios.h"
>  #include "power.h"
> @@ -499,16 +501,6 @@ static const struct drm_connector_funcs cdv_intel_lvds_connector_funcs = {
>  	.destroy = cdv_intel_lvds_destroy,
>  };
>  
> -
> -static void cdv_intel_lvds_enc_destroy(struct drm_encoder *encoder)
> -{
> -	drm_encoder_cleanup(encoder);
> -}
> -
> -static const struct drm_encoder_funcs cdv_intel_lvds_enc_funcs = {
> -	.destroy = cdv_intel_lvds_enc_destroy,
> -};
> -
>  /*
>   * Enumerate the child dev array parsed from VBT to check whether
>   * the LVDS is present.
> @@ -616,10 +608,7 @@ void cdv_intel_lvds_init(struct drm_device *dev,
>  			   &cdv_intel_lvds_connector_funcs,
>  			   DRM_MODE_CONNECTOR_LVDS);
>  
> -	drm_encoder_init(dev, encoder,
> -			 &cdv_intel_lvds_enc_funcs,
> -			 DRM_MODE_ENCODER_LVDS, NULL);
> -
> +	drm_simple_encoder_init(dev, encoder, DRM_MODE_ENCODER_LVDS);
>  
>  	gma_connector_attach_encoder(gma_connector, gma_encoder);
>  	gma_encoder->type = INTEL_OUTPUT_LVDS;
> diff --git a/drivers/gpu/drm/gma500/mdfld_dsi_dpi.c b/drivers/gpu/drm/gma500/mdfld_dsi_dpi.c
> index d4c65f268922..aa5aa293ddb6 100644
> --- a/drivers/gpu/drm/gma500/mdfld_dsi_dpi.c
> +++ b/drivers/gpu/drm/gma500/mdfld_dsi_dpi.c
> @@ -27,6 +27,8 @@
>  
>  #include <linux/delay.h>
>  
> +#include <drm/drm_simple_kms_helper.h>
> +
>  #include "mdfld_dsi_dpi.h"
>  #include "mdfld_dsi_pkg_sender.h"
>  #include "mdfld_output.h"
> @@ -993,10 +995,7 @@ struct mdfld_dsi_encoder *mdfld_dsi_dpi_init(struct drm_device *dev,
>  	/*create drm encoder object*/
>  	connector = &dsi_connector->base.base;
>  	encoder = &dpi_output->base.base.base;
> -	drm_encoder_init(dev,
> -			encoder,
> -			p_funcs->encoder_funcs,
> -			DRM_MODE_ENCODER_LVDS, NULL);
> +	drm_simple_encoder_init(dev, encoder, DRM_MODE_ENCODER_LVDS);
>  	drm_encoder_helper_add(encoder,
>  				p_funcs->encoder_helper_funcs);
>  
> diff --git a/drivers/gpu/drm/gma500/mdfld_output.h b/drivers/gpu/drm/gma500/mdfld_output.h
> index ab2b27c0f037..17a944d70add 100644
> --- a/drivers/gpu/drm/gma500/mdfld_output.h
> +++ b/drivers/gpu/drm/gma500/mdfld_output.h
> @@ -51,7 +51,6 @@ struct panel_info {
>  };
>  
>  struct panel_funcs {
> -	const struct drm_encoder_funcs *encoder_funcs;
>  	const struct drm_encoder_helper_funcs *encoder_helper_funcs;
>  	struct drm_display_mode * (*get_config_mode)(struct drm_device *);
>  	int (*get_panel_info)(struct drm_device *, int, struct panel_info *);
> diff --git a/drivers/gpu/drm/gma500/mdfld_tmd_vid.c b/drivers/gpu/drm/gma500/mdfld_tmd_vid.c
> index 49c92debb7b2..25e897b98f86 100644
> --- a/drivers/gpu/drm/gma500/mdfld_tmd_vid.c
> +++ b/drivers/gpu/drm/gma500/mdfld_tmd_vid.c
> @@ -188,13 +188,7 @@ static const struct drm_encoder_helper_funcs
>  	.commit = mdfld_dsi_dpi_commit,
>  };
>  
> -/*TPO DPI encoder funcs*/
> -static const struct drm_encoder_funcs mdfld_tpo_dpi_encoder_funcs = {
> -	.destroy = drm_encoder_cleanup,
> -};
> -
>  const struct panel_funcs mdfld_tmd_vid_funcs = {
> -	.encoder_funcs = &mdfld_tpo_dpi_encoder_funcs,
>  	.encoder_helper_funcs = &mdfld_tpo_dpi_encoder_helper_funcs,
>  	.get_config_mode = &tmd_vid_get_config_mode,
>  	.get_panel_info = tmd_vid_get_panel_info,
> diff --git a/drivers/gpu/drm/gma500/mdfld_tpo_vid.c b/drivers/gpu/drm/gma500/mdfld_tpo_vid.c
> index a9420bf9a419..11845978fb0a 100644
> --- a/drivers/gpu/drm/gma500/mdfld_tpo_vid.c
> +++ b/drivers/gpu/drm/gma500/mdfld_tpo_vid.c
> @@ -76,13 +76,7 @@ static const struct drm_encoder_helper_funcs
>  	.commit = mdfld_dsi_dpi_commit,
>  };
>  
> -/*TPO DPI encoder funcs*/
> -static const struct drm_encoder_funcs mdfld_tpo_dpi_encoder_funcs = {
> -	.destroy = drm_encoder_cleanup,
> -};
> -
>  const struct panel_funcs mdfld_tpo_vid_funcs = {
> -	.encoder_funcs = &mdfld_tpo_dpi_encoder_funcs,
>  	.encoder_helper_funcs = &mdfld_tpo_dpi_encoder_helper_funcs,
>  	.get_config_mode = &tpo_vid_get_config_mode,
>  	.get_panel_info = tpo_vid_get_panel_info,
> diff --git a/drivers/gpu/drm/gma500/oaktrail_hdmi.c b/drivers/gpu/drm/gma500/oaktrail_hdmi.c
> index f4370232767d..b25086f252ae 100644
> --- a/drivers/gpu/drm/gma500/oaktrail_hdmi.c
> +++ b/drivers/gpu/drm/gma500/oaktrail_hdmi.c
> @@ -27,6 +27,7 @@
>  #include <linux/delay.h>
>  
>  #include <drm/drm.h>
> +#include <drm/drm_simple_kms_helper.h>
>  
>  #include "psb_drv.h"
>  #include "psb_intel_drv.h"
> @@ -620,15 +621,6 @@ static const struct drm_connector_funcs oaktrail_hdmi_connector_funcs = {
>  	.destroy = oaktrail_hdmi_destroy,
>  };
>  
> -static void oaktrail_hdmi_enc_destroy(struct drm_encoder *encoder)
> -{
> -	drm_encoder_cleanup(encoder);
> -}
> -
> -static const struct drm_encoder_funcs oaktrail_hdmi_enc_funcs = {
> -	.destroy = oaktrail_hdmi_enc_destroy,
> -};
> -
>  void oaktrail_hdmi_init(struct drm_device *dev,
>  					struct psb_intel_mode_device *mode_dev)
>  {
> @@ -651,9 +643,7 @@ void oaktrail_hdmi_init(struct drm_device *dev,
>  			   &oaktrail_hdmi_connector_funcs,
>  			   DRM_MODE_CONNECTOR_DVID);
>  
> -	drm_encoder_init(dev, encoder,
> -			 &oaktrail_hdmi_enc_funcs,
> -			 DRM_MODE_ENCODER_TMDS, NULL);
> +	drm_simple_encoder_init(dev, encoder, DRM_MODE_ENCODER_TMDS);
>  
>  	gma_connector_attach_encoder(gma_connector, gma_encoder);
>  
> diff --git a/drivers/gpu/drm/gma500/oaktrail_lvds.c b/drivers/gpu/drm/gma500/oaktrail_lvds.c
> index 582e09597500..2828360153d1 100644
> --- a/drivers/gpu/drm/gma500/oaktrail_lvds.c
> +++ b/drivers/gpu/drm/gma500/oaktrail_lvds.c
> @@ -13,6 +13,8 @@
>  
>  #include <asm/intel-mid.h>
>  
> +#include <drm/drm_simple_kms_helper.h>
> +
>  #include "intel_bios.h"
>  #include "power.h"
>  #include "psb_drv.h"
> @@ -311,8 +313,7 @@ void oaktrail_lvds_init(struct drm_device *dev,
>  			   &psb_intel_lvds_connector_funcs,
>  			   DRM_MODE_CONNECTOR_LVDS);
>  
> -	drm_encoder_init(dev, encoder, &psb_intel_lvds_enc_funcs,
> -			 DRM_MODE_ENCODER_LVDS, NULL);
> +	drm_simple_encoder_init(dev, encoder, DRM_MODE_ENCODER_LVDS);
>  
>  	gma_connector_attach_encoder(gma_connector, gma_encoder);
>  	gma_encoder->type = INTEL_OUTPUT_LVDS;
> diff --git a/drivers/gpu/drm/gma500/psb_intel_drv.h b/drivers/gpu/drm/gma500/psb_intel_drv.h
> index 16c6136f778b..fb601983cef0 100644
> --- a/drivers/gpu/drm/gma500/psb_intel_drv.h
> +++ b/drivers/gpu/drm/gma500/psb_intel_drv.h
> @@ -252,7 +252,6 @@ extern int psb_intel_lvds_set_property(struct drm_connector *connector,
>  					struct drm_property *property,
>  					uint64_t value);
>  extern void psb_intel_lvds_destroy(struct drm_connector *connector);
> -extern const struct drm_encoder_funcs psb_intel_lvds_enc_funcs;
>  
>  /* intel_gmbus.c */
>  extern void gma_intel_i2c_reset(struct drm_device *dev);
> diff --git a/drivers/gpu/drm/gma500/psb_intel_lvds.c b/drivers/gpu/drm/gma500/psb_intel_lvds.c
> index afaebab7bc17..063c66bb946d 100644
> --- a/drivers/gpu/drm/gma500/psb_intel_lvds.c
> +++ b/drivers/gpu/drm/gma500/psb_intel_lvds.c
> @@ -11,6 +11,8 @@
>  #include <linux/i2c.h>
>  #include <linux/pm_runtime.h>
>  
> +#include <drm/drm_simple_kms_helper.h>
> +
>  #include "intel_bios.h"
>  #include "power.h"
>  #include "psb_drv.h"
> @@ -621,18 +623,6 @@ const struct drm_connector_funcs psb_intel_lvds_connector_funcs = {
>  	.destroy = psb_intel_lvds_destroy,
>  };
>  
> -
> -static void psb_intel_lvds_enc_destroy(struct drm_encoder *encoder)
> -{
> -	drm_encoder_cleanup(encoder);
> -}
> -
> -const struct drm_encoder_funcs psb_intel_lvds_enc_funcs = {
> -	.destroy = psb_intel_lvds_enc_destroy,
> -};
> -
> -
> -
>  /**
>   * psb_intel_lvds_init - setup LVDS connectors on this device
>   * @dev: drm device
> @@ -683,9 +673,7 @@ void psb_intel_lvds_init(struct drm_device *dev,
>  			   &psb_intel_lvds_connector_funcs,
>  			   DRM_MODE_CONNECTOR_LVDS);
>  
> -	drm_encoder_init(dev, encoder,
> -			 &psb_intel_lvds_enc_funcs,
> -			 DRM_MODE_ENCODER_LVDS, NULL);
> +	drm_simple_encoder_init(dev, encoder, DRM_MODE_ENCODER_LVDS);
>  
>  	gma_connector_attach_encoder(gma_connector, gma_encoder);
>  	gma_encoder->type = INTEL_OUTPUT_LVDS;
> diff --git a/drivers/gpu/drm/gma500/tc35876x-dsi-lvds.c b/drivers/gpu/drm/gma500/tc35876x-dsi-lvds.c
> index 9e8224456ea2..f7e121f4c609 100644
> --- a/drivers/gpu/drm/gma500/tc35876x-dsi-lvds.c
> +++ b/drivers/gpu/drm/gma500/tc35876x-dsi-lvds.c
> @@ -765,12 +765,7 @@ static const struct drm_encoder_helper_funcs tc35876x_encoder_helper_funcs = {
>  	.commit = mdfld_dsi_dpi_commit,
>  };
>  
> -static const struct drm_encoder_funcs tc35876x_encoder_funcs = {
> -	.destroy = drm_encoder_cleanup,
> -};
> -
>  const struct panel_funcs mdfld_tc35876x_funcs = {
> -	.encoder_funcs = &tc35876x_encoder_funcs,
>  	.encoder_helper_funcs = &tc35876x_encoder_helper_funcs,
>  	.get_config_mode = tc35876x_get_config_mode,
>  	.get_panel_info = tc35876x_get_panel_info,
> -- 
> 2.25.1

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52C5B17C7DA
	for <lists+linux-rockchip@lfdr.de>; Fri,  6 Mar 2020 22:28:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eGoi7nzk5ZfS4DRX/uk1Csm+nHIVQNX5fJRDTE36g1E=; b=MPMWCcT4A8Tkkf
	0Fmj1apYxbBJMgUjEKBWwli6DKVfgKwcMu0Ruhkgj1897+MP66zHYhI8o8cV+jfzhOHKpOWK6BGYM
	i5FRhfNNsdB2qN6X4j/w9FgoURT0ftvINOIbWp9gKyvgPClsx+b7lJEgTRy7z82lgxgHUaOYB8wMZ
	MnjEAo5nuQEfMEmWWh0qWR+lfn90bMFNOoowlnoNNTX+VjbIVGkvEPirNSrQLY6W1+fsB41wt5XJd
	lsLRMYe34auGPY7YEEDjRL7kTZ2G987MRWiVfeMmU9+Pk5fIbNz7wGbgxPGGcmwRyh6AdFKzTtZ3M
	0z3yseAnDYogacwGaVmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAKW3-0001zD-DS; Fri, 06 Mar 2020 21:28:19 +0000
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAKVy-0001xw-FZ; Fri, 06 Mar 2020 21:28:16 +0000
Received: from ravnborg.org (unknown [158.248.194.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk3.altibox.net (Postfix) with ESMTPS id 9D6222001E;
 Fri,  6 Mar 2020 22:28:10 +0100 (CET)
Date: Fri, 6 Mar 2020 22:28:09 +0100
From: Sam Ravnborg <sam@ravnborg.org>
To: Thomas Zimmermann <tzimmermann@suse.de>
Subject: Re: [PATCH 03/22] drm/exynos: Use simple encoder
Message-ID: <20200306212809.GC17369@ravnborg.org>
References: <20200305155950.2705-1-tzimmermann@suse.de>
 <20200305155950.2705-4-tzimmermann@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200305155950.2705-4-tzimmermann@suse.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=eMA9ckh1 c=1 sm=1 tr=0
 a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
 a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=kj9zAlcOel0A:10 a=7gkXJVJtAAAA:8
 a=c5m9ZR8XE5dJf7741e4A:9 a=CjuIK1q_8ugA:10 a=E9Po1WZjFZOl8hwRPBS3:22
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_132814_882912_2D4AF015 
X-CRM114-Status: GOOD (  15.00  )
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

On Thu, Mar 05, 2020 at 04:59:31PM +0100, Thomas Zimmermann wrote:
> The exynos driver uses empty implementations for its encoders. Replace
> the code with the generic simple encoder.
> 
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>

Acked-by: Sam Ravnborg <sam@ravnborg.org>

> ---
>  drivers/gpu/drm/exynos/exynos_dp.c       | 8 ++------
>  drivers/gpu/drm/exynos/exynos_drm_dpi.c  | 8 ++------
>  drivers/gpu/drm/exynos/exynos_drm_dsi.c  | 8 ++------
>  drivers/gpu/drm/exynos/exynos_drm_vidi.c | 8 ++------
>  drivers/gpu/drm/exynos/exynos_hdmi.c     | 8 ++------
>  5 files changed, 10 insertions(+), 30 deletions(-)
> 
> diff --git a/drivers/gpu/drm/exynos/exynos_dp.c b/drivers/gpu/drm/exynos/exynos_dp.c
> index d23d3502ca91..a61482af2998 100644
> --- a/drivers/gpu/drm/exynos/exynos_dp.c
> +++ b/drivers/gpu/drm/exynos/exynos_dp.c
> @@ -25,6 +25,7 @@
>  #include <drm/drm_panel.h>
>  #include <drm/drm_print.h>
>  #include <drm/drm_probe_helper.h>
> +#include <drm/drm_simple_kms_helper.h>
>  #include <drm/exynos_drm.h>
>  
>  #include "exynos_drm_crtc.h"
> @@ -135,10 +136,6 @@ static const struct drm_encoder_helper_funcs exynos_dp_encoder_helper_funcs = {
>  	.disable = exynos_dp_nop,
>  };
>  
> -static const struct drm_encoder_funcs exynos_dp_encoder_funcs = {
> -	.destroy = drm_encoder_cleanup,
> -};
> -
>  static int exynos_dp_dt_parse_panel(struct exynos_dp_device *dp)
>  {
>  	int ret;
> @@ -174,8 +171,7 @@ static int exynos_dp_bind(struct device *dev, struct device *master, void *data)
>  			return ret;
>  	}
>  
> -	drm_encoder_init(drm_dev, encoder, &exynos_dp_encoder_funcs,
> -			 DRM_MODE_ENCODER_TMDS, NULL);
> +	drm_simple_encoder_init(drm_dev, encoder, DRM_MODE_ENCODER_TMDS);
>  
>  	drm_encoder_helper_add(encoder, &exynos_dp_encoder_helper_funcs);
>  
> diff --git a/drivers/gpu/drm/exynos/exynos_drm_dpi.c b/drivers/gpu/drm/exynos/exynos_drm_dpi.c
> index 43fa0f26c052..7ba5354e7d94 100644
> --- a/drivers/gpu/drm/exynos/exynos_drm_dpi.c
> +++ b/drivers/gpu/drm/exynos/exynos_drm_dpi.c
> @@ -14,6 +14,7 @@
>  #include <drm/drm_panel.h>
>  #include <drm/drm_print.h>
>  #include <drm/drm_probe_helper.h>
> +#include <drm/drm_simple_kms_helper.h>
>  
>  #include <video/of_videomode.h>
>  #include <video/videomode.h>
> @@ -149,10 +150,6 @@ static const struct drm_encoder_helper_funcs exynos_dpi_encoder_helper_funcs = {
>  	.disable = exynos_dpi_disable,
>  };
>  
> -static const struct drm_encoder_funcs exynos_dpi_encoder_funcs = {
> -	.destroy = drm_encoder_cleanup,
> -};
> -
>  enum {
>  	FIMD_PORT_IN0,
>  	FIMD_PORT_IN1,
> @@ -201,8 +198,7 @@ int exynos_dpi_bind(struct drm_device *dev, struct drm_encoder *encoder)
>  {
>  	int ret;
>  
> -	drm_encoder_init(dev, encoder, &exynos_dpi_encoder_funcs,
> -			 DRM_MODE_ENCODER_TMDS, NULL);
> +	drm_simple_encoder_init(dev, encoder, DRM_MODE_ENCODER_TMDS);
>  
>  	drm_encoder_helper_add(encoder, &exynos_dpi_encoder_helper_funcs);
>  
> diff --git a/drivers/gpu/drm/exynos/exynos_drm_dsi.c b/drivers/gpu/drm/exynos/exynos_drm_dsi.c
> index 669d3857502a..2986c93382e0 100644
> --- a/drivers/gpu/drm/exynos/exynos_drm_dsi.c
> +++ b/drivers/gpu/drm/exynos/exynos_drm_dsi.c
> @@ -30,6 +30,7 @@
>  #include <drm/drm_panel.h>
>  #include <drm/drm_print.h>
>  #include <drm/drm_probe_helper.h>
> +#include <drm/drm_simple_kms_helper.h>
>  
>  #include "exynos_drm_crtc.h"
>  #include "exynos_drm_drv.h"
> @@ -1524,10 +1525,6 @@ static const struct drm_encoder_helper_funcs exynos_dsi_encoder_helper_funcs = {
>  	.disable = exynos_dsi_disable,
>  };
>  
> -static const struct drm_encoder_funcs exynos_dsi_encoder_funcs = {
> -	.destroy = drm_encoder_cleanup,
> -};
> -
>  MODULE_DEVICE_TABLE(of, exynos_dsi_of_match);
>  
>  static int exynos_dsi_host_attach(struct mipi_dsi_host *host,
> @@ -1705,8 +1702,7 @@ static int exynos_dsi_bind(struct device *dev, struct device *master,
>  	struct drm_bridge *in_bridge;
>  	int ret;
>  
> -	drm_encoder_init(drm_dev, encoder, &exynos_dsi_encoder_funcs,
> -			 DRM_MODE_ENCODER_TMDS, NULL);
> +	drm_simple_encoder_init(drm_dev, encoder, DRM_MODE_ENCODER_TMDS);
>  
>  	drm_encoder_helper_add(encoder, &exynos_dsi_encoder_helper_funcs);
>  
> diff --git a/drivers/gpu/drm/exynos/exynos_drm_vidi.c b/drivers/gpu/drm/exynos/exynos_drm_vidi.c
> index b320b3a21ad4..282467121699 100644
> --- a/drivers/gpu/drm/exynos/exynos_drm_vidi.c
> +++ b/drivers/gpu/drm/exynos/exynos_drm_vidi.c
> @@ -14,6 +14,7 @@
>  #include <drm/drm_atomic_helper.h>
>  #include <drm/drm_edid.h>
>  #include <drm/drm_probe_helper.h>
> +#include <drm/drm_simple_kms_helper.h>
>  #include <drm/drm_vblank.h>
>  #include <drm/exynos_drm.h>
>  
> @@ -369,10 +370,6 @@ static const struct drm_encoder_helper_funcs exynos_vidi_encoder_helper_funcs =
>  	.disable = exynos_vidi_disable,
>  };
>  
> -static const struct drm_encoder_funcs exynos_vidi_encoder_funcs = {
> -	.destroy = drm_encoder_cleanup,
> -};
> -
>  static int vidi_bind(struct device *dev, struct device *master, void *data)
>  {
>  	struct vidi_context *ctx = dev_get_drvdata(dev);
> @@ -406,8 +403,7 @@ static int vidi_bind(struct device *dev, struct device *master, void *data)
>  		return PTR_ERR(ctx->crtc);
>  	}
>  
> -	drm_encoder_init(drm_dev, encoder, &exynos_vidi_encoder_funcs,
> -			 DRM_MODE_ENCODER_TMDS, NULL);
> +	drm_simple_encoder_init(drm_dev, encoder, DRM_MODE_ENCODER_TMDS);
>  
>  	drm_encoder_helper_add(encoder, &exynos_vidi_encoder_helper_funcs);
>  
> diff --git a/drivers/gpu/drm/exynos/exynos_hdmi.c b/drivers/gpu/drm/exynos/exynos_hdmi.c
> index 3e5f1a77286d..302ffda5f297 100644
> --- a/drivers/gpu/drm/exynos/exynos_hdmi.c
> +++ b/drivers/gpu/drm/exynos/exynos_hdmi.c
> @@ -38,6 +38,7 @@
>  #include <drm/drm_edid.h>
>  #include <drm/drm_print.h>
>  #include <drm/drm_probe_helper.h>
> +#include <drm/drm_simple_kms_helper.h>
>  
>  #include "exynos_drm_crtc.h"
>  #include "regs-hdmi.h"
> @@ -1559,10 +1560,6 @@ static const struct drm_encoder_helper_funcs exynos_hdmi_encoder_helper_funcs =
>  	.disable	= hdmi_disable,
>  };
>  
> -static const struct drm_encoder_funcs exynos_hdmi_encoder_funcs = {
> -	.destroy = drm_encoder_cleanup,
> -};
> -
>  static void hdmi_audio_shutdown(struct device *dev, void *data)
>  {
>  	struct hdmi_context *hdata = dev_get_drvdata(dev);
> @@ -1851,8 +1848,7 @@ static int hdmi_bind(struct device *dev, struct device *master, void *data)
>  
>  	hdata->phy_clk.enable = hdmiphy_clk_enable;
>  
> -	drm_encoder_init(drm_dev, encoder, &exynos_hdmi_encoder_funcs,
> -			 DRM_MODE_ENCODER_TMDS, NULL);
> +	drm_simple_encoder_init(drm_dev, encoder, DRM_MODE_ENCODER_TMDS);
>  
>  	drm_encoder_helper_add(encoder, &exynos_hdmi_encoder_helper_funcs);
>  
> -- 
> 2.25.1

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

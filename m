Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1B001746F2
	for <lists+linux-rockchip@lfdr.de>; Sat, 29 Feb 2020 13:57:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FFWKjKpTff0fDOeWBxVqM3cRZPRqro+/RboRW7/r7CI=; b=OoWfG3WAYVRsHL
	mGLBx8yWWeAylTQkZZxdp4ToTeThk72ENU9VTUWOHLtQR2ZQnOINzoSHozM5d33pyxvuF1slnJeah
	YBlaiawHE7ghx9wGCzqlLZpukMnBYrlYqFIXzbuQhcfmLw05i8bdicyQZB8fylC3sKFuwqKUZYiQn
	gTK1k7lyyWVnImHexMv/GzSzpMceGyN0y83Q8DwpuaXA8TYTlxut/RXdhJGczIawSFXDnnJKM6xHn
	hHLhY7KvNDdChZ+cutTFBUfQZNS28HYsBqf+42VXULfZiFrxs5vE8rM4ETbiXuBivBBA0Fx2uWANW
	Tn+QWNWAUpT3H+9UO2uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j81gS-0002oV-J6; Sat, 29 Feb 2020 12:57:32 +0000
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j81gP-0002o9-9H
 for linux-rockchip@lists.infradead.org; Sat, 29 Feb 2020 12:57:30 +0000
Received: from ravnborg.org (unknown [158.248.194.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk3.altibox.net (Postfix) with ESMTPS id 132D320023;
 Sat, 29 Feb 2020 13:57:27 +0100 (CET)
Date: Sat, 29 Feb 2020 13:57:25 +0100
From: Sam Ravnborg <sam@ravnborg.org>
To: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH v2 3/3] drm/panel: add panel driver for Elida KD35T133
 panels
Message-ID: <20200229125725.GC5447@ravnborg.org>
References: <20200225093913.415844-1-heiko@sntech.de>
 <20200225093913.415844-3-heiko@sntech.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200225093913.415844-3-heiko@sntech.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=eMA9ckh1 c=1 sm=1 tr=0
 a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
 a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=kj9zAlcOel0A:10 a=NXpJzYs8AAAA:8
 a=7gkXJVJtAAAA:8 a=zCkcj9i8kGs0GUICEK4A:9 a=CjuIK1q_8ugA:10
 a=cwV61pgf2j4Cq8VD9hE_:22 a=E9Po1WZjFZOl8hwRPBS3:22
 a=pHzHmUro8NiASowvMSCR:22 a=nt3jZW36AmriUCFCBwmW:22
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200229_045729_685991_D44DE203 
X-CRM114-Status: GOOD (  19.38  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [109.247.116.14 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, thierry.reding@gmail.com, robin.murphy@arm.com,
 christoph.muellner@theobroma-systems.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Heiko.

On Tue, Feb 25, 2020 at 10:39:13AM +0100, Heiko Stuebner wrote:
> From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> 
> Panel driver for the KD35T133 display from Elida, used for example
> in the rk3326-based Odroid Go Advance handheld.
> 
> changes in v2:
> - rename dsi_generic_write_seq macro to dsi_dcs_write_seq to honor
>   the underlying mipi_dsi_dcs_write (Robin)
> 
> Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>

Driver looks good. One small nit.
With or without this addressed:
Reviewed-by: Sam Ravnborg <sam@ravnborg.org>

Until we have the vendor prefix applied I cannot apply
the binding and thus this driver.
Ping me when we have the vendor prefix applied.

	Sam

> ---
>  drivers/gpu/drm/panel/Kconfig                |  10 +
>  drivers/gpu/drm/panel/Makefile               |   1 +
>  drivers/gpu/drm/panel/panel-elida-kd35t133.c | 352 +++++++++++++++++++
>  3 files changed, 363 insertions(+)
>  create mode 100644 drivers/gpu/drm/panel/panel-elida-kd35t133.c
> 
> diff --git a/drivers/gpu/drm/panel/Kconfig b/drivers/gpu/drm/panel/Kconfig
> index db7ba062027e..56149fdbdf53 100644
> --- a/drivers/gpu/drm/panel/Kconfig
> +++ b/drivers/gpu/drm/panel/Kconfig
> @@ -50,6 +50,16 @@ config DRM_PANEL_SIMPLE
>  	  that it can be automatically turned off when the panel goes into a
>  	  low power state.
>  
> +config DRM_PANEL_ELIDA_KD35T133
> +	tristate "Elida KD35T133 panel driver"
> +	depends on OF
> +	depends on DRM_MIPI_DSI
> +	depends on BACKLIGHT_CLASS_DEVICE
> +	help
> +	  Say Y here if you want to enable support for the Elida
> +	  KD35T133 controller for 320x480 LCD panels with MIPI-DSI
> +	  system interfaces.
> +
>  config DRM_PANEL_FEIYANG_FY07024DI26A30D
>  	tristate "Feiyang FY07024DI26A30-D MIPI-DSI LCD panel"
>  	depends on OF
> diff --git a/drivers/gpu/drm/panel/Makefile b/drivers/gpu/drm/panel/Makefile
> index 276907410a45..63189c015ba5 100644
> --- a/drivers/gpu/drm/panel/Makefile
> +++ b/drivers/gpu/drm/panel/Makefile
> @@ -3,6 +3,7 @@ obj-$(CONFIG_DRM_PANEL_ARM_VERSATILE) += panel-arm-versatile.o
>  obj-$(CONFIG_DRM_PANEL_BOE_HIMAX8279D) += panel-boe-himax8279d.o
>  obj-$(CONFIG_DRM_PANEL_LVDS) += panel-lvds.o
>  obj-$(CONFIG_DRM_PANEL_SIMPLE) += panel-simple.o
> +obj-$(CONFIG_DRM_PANEL_ELIDA_KD35T133) += panel-elida-kd35t133.o
>  obj-$(CONFIG_DRM_PANEL_FEIYANG_FY07024DI26A30D) += panel-feiyang-fy07024di26a30d.o
>  obj-$(CONFIG_DRM_PANEL_ILITEK_IL9322) += panel-ilitek-ili9322.o
>  obj-$(CONFIG_DRM_PANEL_ILITEK_ILI9881C) += panel-ilitek-ili9881c.o
> diff --git a/drivers/gpu/drm/panel/panel-elida-kd35t133.c b/drivers/gpu/drm/panel/panel-elida-kd35t133.c
> new file mode 100644
> index 000000000000..424fb3998d2f
> --- /dev/null
> +++ b/drivers/gpu/drm/panel/panel-elida-kd35t133.c
> @@ -0,0 +1,352 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Elida kd35t133 5.5" MIPI-DSI panel driver
> + * Copyright (C) 2020 Theobroma Systems Design und Consulting GmbH
> + *
> + * based on
> + *
> + * Rockteck jh057n00900 5.5" MIPI-DSI panel driver
> + * Copyright (C) Purism SPC 2019
> + */
> +
> +#include <drm/drm_mipi_dsi.h>
> +#include <drm/drm_modes.h>
> +#include <drm/drm_panel.h>
> +#include <drm/drm_print.h>
> +
> +#include <video/display_timing.h>
> +#include <video/mipi_display.h>
> +
> +#include <linux/delay.h>
> +#include <linux/gpio/consumer.h>
> +#include <linux/media-bus-format.h>
> +#include <linux/module.h>
> +#include <linux/of.h>
> +#include <linux/regulator/consumer.h>

We usually order this:

#include <linux/*>

#include <video/*>

#include <drm/*>

And sorted within each block as you already did.

> +
> +/* Manufacturer specific Commands send via DSI */
> +#define KD35T133_CMD_INTERFACEMODECTRL		0xb0
> +#define KD35T133_CMD_FRAMERATECTRL		0xb1
> +#define KD35T133_CMD_DISPLAYINVERSIONCTRL	0xb4
> +#define KD35T133_CMD_DISPLAYFUNCTIONCTRL	0xb6
> +#define KD35T133_CMD_POWERCONTROL1		0xc0

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

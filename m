Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 868A01BC14D
	for <lists+linux-rockchip@lfdr.de>; Tue, 28 Apr 2020 16:30:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xdQQlzgXomolhLy4JF8MJLoXEs1jO3XtO+Usb7GmieY=; b=M+EB7nnqf3s7Gh
	pMt+CwiYGLs1A8iFjBsJJEuAs9WEK0S3DlKStRLJjhbdfvdqkdP3cu9/XLjLX1KgrhGZqceEZG+qn
	+yjUHkiXoYBNRi/Sab5nmz7cyYBioYv/L72nPoYcvxy9v6LDTw/OAhr4WL5KPmyFHFJUMSpaiB/dz
	0GYbF4du0f1IW8votJnNd1Lh1OhHY9MF+0Ya0qnaapZK+IIARttG2fYdyLroFfbcZwHtS0I9Jyvqy
	S1TeQJS5sopGmBsPDUpMYAHwbTm5iHCM4sz4cd8+zKLCBWNbb7ys2ZaFPWHEU2wv/+gOIkgFb/wPJ
	tbO1ROQHdtwhj6SmyBJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTRFy-0004BX-72; Tue, 28 Apr 2020 14:30:42 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTRFr-00047a-EO
 for linux-rockchip@lists.infradead.org; Tue, 28 Apr 2020 14:30:38 +0000
Received: by mail-wr1-x442.google.com with SMTP id x18so24885999wrq.2
 for <linux-rockchip@lists.infradead.org>; Tue, 28 Apr 2020 07:30:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=qTOroKk/ah9yUs+gkFHw1Mx3AJZbVefPGidJMBUj57A=;
 b=RKTirAr69c2ZzxNvvJ3beT0OxhPWjdUZDALeE/sJZqF0arveeTnPKU/9lN0KN2ppb5
 DKQ2Ly/d2fRwObu9bdIKgbWc8OnSWCcpevoSNxLiwfBvTf7wf5HXRdMT/Z+qGxuKEAJe
 fT0QtuvsjlnGA6DKPExO1+Wd/ExMtA94xdsTc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to;
 bh=qTOroKk/ah9yUs+gkFHw1Mx3AJZbVefPGidJMBUj57A=;
 b=mrRse4q6Mh54r18cpOR+n472Iz1QPkC/WyOcSeDzIe3UOSu/SMODygz1vLkhQEM6jb
 znoCMA+cVYn/Gl01+A8DX6WafZMpGP0oqcP7VLl+Xj9gloYi0z5eWOZbFs85L1BieVtX
 iY8d8rxi0xUfRB7vuLuLopqqKlRvzyytSmcOtc4vP8njdDOQxvuoOHC1zDguNPlonpc3
 jg+fLumcsUEi+eF9UDucDawDB+U9bjFEU7b+jmG880z1jReKIidDAzHLuuxIbnv5LJV/
 3wRcWre58zQEKZxg1ffWq5cHYkbV0S26GaXoLlxRSUJ2500pYRGNZn4H8OyrEH3rUbRJ
 Jvew==
X-Gm-Message-State: AGi0Pub6ZaJ/G9Jg7V5OvpZxMVJCW4g00+HCHhPOXGvczE8Fr3flnwxx
 Zr88kkHNoW9GshJEsolzRlWKMg==
X-Google-Smtp-Source: APiQypIskit1uZ7ZOogO5ZBZDAOZ7BSskEIT76hg0PiBOa5mUJwZ8SJChk/N3vWKKGhM4aYGPrt09g==
X-Received: by 2002:a5d:4252:: with SMTP id s18mr32815016wrr.367.1588084234034; 
 Tue, 28 Apr 2020 07:30:34 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id f63sm3469525wma.47.2020.04.28.07.30.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Apr 2020 07:30:33 -0700 (PDT)
Date: Tue, 28 Apr 2020 16:30:30 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: Re: [PATCH v7 4/8] drm: imx: Add i.MX 6 MIPI DSI host platform driver
Message-ID: <20200428143030.GN3456981@phenom.ffwll.local>
Mail-Followup-To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Adrian Ratiu <adrian.ratiu@collabora.com>,
 devicetree@vger.kernel.org,
 Jernej Skrabec <jernej.skrabec@siol.net>,
 Adrian Pop <pop.adrian61@gmail.com>,
 Jonas Karlman <jonas@kwiboo.se>,
 Martyn Welch <martyn.welch@collabora.com>,
 Sjoerd Simons <sjoerd.simons@collabora.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Andrzej Hajda <a.hajda@samsung.com>,
 linux-rockchip@lists.infradead.org, linux-imx@nxp.com,
 Arnaud Ferraris <arnaud.ferraris@collabora.com>,
 kernel@collabora.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org,
 Emil Velikov <emil.velikov@collabora.com>
References: <20200421161610.1501827-1-adrian.ratiu@collabora.com>
 <20200421161610.1501827-5-adrian.ratiu@collabora.com>
 <20200422010727.GM5983@pendragon.ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200422010727.GM5983@pendragon.ideasonboard.com>
X-Operating-System: Linux phenom 5.3.0-3-amd64 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_073035_624248_8EBF1B5A 
X-CRM114-Status: GOOD (  32.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 Jernej Skrabec <jernej.skrabec@siol.net>, Adrian Pop <pop.adrian61@gmail.com>,
 Jonas Karlman <jonas@kwiboo.se>, Martyn Welch <martyn.welch@collabora.com>,
 Adrian Ratiu <adrian.ratiu@collabora.com>,
 Sjoerd Simons <sjoerd.simons@collabora.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Andrzej Hajda <a.hajda@samsung.com>,
 linux-imx@nxp.com, linux-rockchip@lists.infradead.org, kernel@collabora.com,
 linux-stm32@st-md-mailman.stormreply.com,
 Arnaud Ferraris <arnaud.ferraris@collabora.com>,
 Emil Velikov <emil.velikov@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Wed, Apr 22, 2020 at 04:07:27AM +0300, Laurent Pinchart wrote:
> Hi Adrian,
> 
> On Tue, Apr 21, 2020 at 07:16:06PM +0300, Adrian Ratiu wrote:
> > This adds support for the Synopsis DesignWare MIPI DSI v1.01 host
> > controller which is embedded in i.MX 6 SoCs.
> > 
> > Based on following patches, but updated/extended to work with existing
> > support found in the kernel:
> > 
> > - drm: imx: Support Synopsys DesignWare MIPI DSI host controller
> >   Signed-off-by: Liu Ying <Ying.Liu@freescale.com>
> > 
> > Cc: Fabio Estevam <festevam@gmail.com>
> > Cc: Enric Balletbo Serra <eballetbo@gmail.com>
> > Reviewed-by: Emil Velikov <emil.velikov@collabora.com>
> > Tested-by: Adrian Pop <pop.adrian61@gmail.com>
> > Tested-by: Arnaud Ferraris <arnaud.ferraris@collabora.com>
> > Signed-off-by: Sjoerd Simons <sjoerd.simons@collabora.com>
> > Signed-off-by: Martyn Welch <martyn.welch@collabora.com>
> > Signed-off-by: Adrian Ratiu <adrian.ratiu@collabora.com>
> > ---
> > Changes since v6:
> >   - Replaced custom noop encoder with the simple drm encoder (Enric)
> >   - Added CONFIG_DRM_IMX6_MIPI_DSI depends on CONFIG_OF (Enric)
> >   - Dropped imx_mipi_dsi_register() because now it only creates the
> >   dummy encoder which can easily be done directly in imx_dsi_bind()
> > 
> > Changes since v5:
> >   - Reword to remove unrelated device tree patch mention (Fabio)
> >   - Move pllref_clk enable/disable to bind/unbind (Ezequiel)
> >   - Fix freescale.com -> nxp.com email addresses (Fabio)
> >   - Also added myself as module author (Fabio)
> >   - Use DRM_DEV_* macros for consistency, print more error msg
> > 
> > Changes since v4:
> >   - Split off driver-specific configuration of phy timings due
> >   to new upstream API.
> >   - Move regmap infrastructure logic to separate commit (Ezequiel)
> >   - Move dsi v1.01 layout addition to a separate commit (Ezequiel)
> >   - Minor warnings and driver name fixes
> > 
> > Changes since v3:
> >   - Renamed platform driver to reflect it's i.MX6 only. (Fabio)
> > 
> > Changes since v2:
> >   - Fixed commit tags. (Emil)
> > 
> > Changes since v1:
> >   - Moved register definitions & regmap initialization into bridge
> >   module. Platform drivers get the regmap via plat_data after
> >   calling the bridge probe. (Emil)
> > ---
> >  drivers/gpu/drm/imx/Kconfig            |   8 +
> >  drivers/gpu/drm/imx/Makefile           |   1 +
> >  drivers/gpu/drm/imx/dw_mipi_dsi-imx6.c | 391 +++++++++++++++++++++++++
> >  3 files changed, 400 insertions(+)
> >  create mode 100644 drivers/gpu/drm/imx/dw_mipi_dsi-imx6.c
> > 
> > diff --git a/drivers/gpu/drm/imx/Kconfig b/drivers/gpu/drm/imx/Kconfig
> > index 207bf7409dfba..0dffc72df7922 100644
> > --- a/drivers/gpu/drm/imx/Kconfig
> > +++ b/drivers/gpu/drm/imx/Kconfig
> > @@ -39,3 +39,11 @@ config DRM_IMX_HDMI
> >  	depends on DRM_IMX
> >  	help
> >  	  Choose this if you want to use HDMI on i.MX6.
> > +
> > +config DRM_IMX6_MIPI_DSI
> > +	tristate "Freescale i.MX6 DRM MIPI DSI"
> > +	select DRM_DW_MIPI_DSI
> > +	depends on DRM_IMX
> > +	depends on OF
> > +	help
> > +	  Choose this if you want to use MIPI DSI on i.MX6.
> > diff --git a/drivers/gpu/drm/imx/Makefile b/drivers/gpu/drm/imx/Makefile
> > index 21cdcc2faabc8..9a7843c593478 100644
> > --- a/drivers/gpu/drm/imx/Makefile
> > +++ b/drivers/gpu/drm/imx/Makefile
> > @@ -9,3 +9,4 @@ obj-$(CONFIG_DRM_IMX_TVE) += imx-tve.o
> >  obj-$(CONFIG_DRM_IMX_LDB) += imx-ldb.o
> >  
> >  obj-$(CONFIG_DRM_IMX_HDMI) += dw_hdmi-imx.o
> > +obj-$(CONFIG_DRM_IMX6_MIPI_DSI) += dw_mipi_dsi-imx6.o
> > diff --git a/drivers/gpu/drm/imx/dw_mipi_dsi-imx6.c b/drivers/gpu/drm/imx/dw_mipi_dsi-imx6.c
> > new file mode 100644
> > index 0000000000000..f8a0a4fe16e21
> > --- /dev/null
> > +++ b/drivers/gpu/drm/imx/dw_mipi_dsi-imx6.c
> > @@ -0,0 +1,391 @@
> > +// SPDX-License-Identifier: GPL-2.0+
> > +/*
> > + * i.MX6 drm driver - MIPI DSI Host Controller
> > + *
> > + * Copyright (C) 2011-2015 Freescale Semiconductor, Inc.
> > + * Copyright (C) 2019-2020 Collabora, Ltd.
> > + */
> > +
> > +#include <linux/clk.h>
> > +#include <linux/component.h>
> > +#include <linux/mfd/syscon.h>
> > +#include <linux/mfd/syscon/imx6q-iomuxc-gpr.h>
> > +#include <linux/module.h>
> > +#include <linux/of_device.h>
> > +#include <linux/regmap.h>
> > +#include <linux/videodev2.h>
> > +#include <drm/bridge/dw_mipi_dsi.h>
> > +#include <drm/drm_crtc_helper.h>
> > +#include <drm/drm_mipi_dsi.h>
> > +#include <drm/drm_of.h>
> > +#include <drm/drm_print.h>
> > +
> > +#include "imx-drm.h"
> > +
> > +#define DSI_PWR_UP			0x04
> > +#define RESET				0
> > +#define POWERUP				BIT(0)
> > +
> > +#define DSI_PHY_IF_CTRL			0x5c
> > +#define PHY_IF_CTRL_RESET		0x0
> > +
> > +#define DSI_PHY_TST_CTRL0		0x64
> > +#define PHY_TESTCLK			BIT(1)
> > +#define PHY_UNTESTCLK			0
> > +#define PHY_TESTCLR			BIT(0)
> > +#define PHY_UNTESTCLR			0
> > +
> > +#define DSI_PHY_TST_CTRL1		0x68
> > +#define PHY_TESTEN			BIT(16)
> > +#define PHY_UNTESTEN			0
> > +#define PHY_TESTDOUT(n)			(((n) & 0xff) << 8)
> > +#define PHY_TESTDIN(n)			(((n) & 0xff) << 0)
> > +
> > +struct imx_mipi_dsi {
> > +	struct drm_encoder encoder;
> > +	struct device *dev;
> > +	struct regmap *mux_sel;
> > +	struct dw_mipi_dsi *mipi_dsi;
> > +	struct clk *pllref_clk;
> > +
> > +	void __iomem *base;
> > +	unsigned int lane_mbps;
> > +};
> > +
> > +struct dphy_pll_testdin_map {
> > +	unsigned int max_mbps;
> > +	u8 testdin;
> > +};
> > +
> > +/* The table is based on 27MHz DPHY pll reference clock. */
> > +static const struct dphy_pll_testdin_map dptdin_map[] = {
> > +	{160, 0x04}, {180, 0x24}, {200, 0x44}, {210, 0x06},
> > +	{240, 0x26}, {250, 0x46}, {270, 0x08}, {300, 0x28},
> > +	{330, 0x48}, {360, 0x2a}, {400, 0x4a}, {450, 0x0c},
> > +	{500, 0x2c}, {550, 0x0e}, {600, 0x2e}, {650, 0x10},
> > +	{700, 0x30}, {750, 0x12}, {800, 0x32}, {850, 0x14},
> > +	{900, 0x34}, {950, 0x54}, {1000, 0x74}
> > +};
> > +
> > +static inline struct imx_mipi_dsi *enc_to_dsi(struct drm_encoder *enc)
> > +{
> > +	return container_of(enc, struct imx_mipi_dsi, encoder);
> > +}
> > +
> > +static void imx_mipi_dsi_set_ipu_di_mux(struct imx_mipi_dsi *dsi, int ipu_di)
> > +{
> > +	regmap_update_bits(dsi->mux_sel, IOMUXC_GPR3,
> > +			   IMX6Q_GPR3_MIPI_MUX_CTL_MASK,
> > +			   ipu_di << IMX6Q_GPR3_MIPI_MUX_CTL_SHIFT);
> > +}
> > +
> > +static bool imx_mipi_dsi_encoder_mode_fixup(struct drm_encoder *encoder,
> > +					    const struct drm_display_mode *mode,
> > +					    struct drm_display_mode *adj_mode)
> > +{
> > +	return true;
> > +}
> > +
> > +static int imx_mipi_dsi_encoder_atomic_check(struct drm_encoder *encoder,
> > +					     struct drm_crtc_state *crtc_state,
> > +					     struct drm_connector_state *conn)
> > +{
> > +	struct imx_crtc_state *imx_crtc_state = to_imx_crtc_state(crtc_state);
> > +
> > +	/* The following values are taken from dw_hdmi_imx_atomic_check */
> > +	imx_crtc_state->bus_format = MEDIA_BUS_FMT_RGB888_1X24;
> > +	imx_crtc_state->di_hsync_pin = 2;
> > +	imx_crtc_state->di_vsync_pin = 3;
> > +
> > +	return 0;
> > +}
> 
> No encoder functions please. This should be a bridge driver, the encoder
> should be created by the i.MX display controller driver itself. As that
> would require quite a bit of refactoring I'm OK having an encoder here
> for the meantime, but it should be a dummy one, without any operation.

+1 on this, came to say the same. This seems to duplicate the dw-hdmi
design, where the code organization is a bit a mess, with some parts in
drm/bridge, and some parts in each drm_device driver. Plus drm_encoder in
there on top.

If we want to continue with the drm_bridge abstraction for these kind of
drivers then imo we need:

- to make drm_bridge the actual abstraction, no leaking back&forth between
  the bridge chip and the overall drm_device side of things.

- move _all_ dw-mipi-dsi related code into drm/bridge

- for the platform specific binding stuff I think drm/bridge/dw-mipi-dsi
  directory, which contains the main driver, plus a file each for the
  imx/stm/whatever platform bindings sounds like a reasonable layout.

If that doesn't work, then I think dw-mipi-dsi isn't really a bridge
driver with clear encapsulation, but instead should be structured as a
helper library to implement a drm_encoder. And no drm_bridge.

And yes the exact same problem exists with dw-hdmi. That's the reason why
I've started to look into these, it's not really a code pattern we should
repeat imo.

Cheers, Daniel

> 
> > +
> > +static void imx_mipi_dsi_encoder_commit(struct drm_encoder *encoder)
> > +{
> > +	struct imx_mipi_dsi *dsi = enc_to_dsi(encoder);
> > +	int mux = drm_of_encoder_active_port_id(dsi->dev->of_node, encoder);
> > +
> > +	imx_mipi_dsi_set_ipu_di_mux(dsi, mux);
> > +}
> > +
> > +static void imx_mipi_dsi_encoder_disable(struct drm_encoder *encoder)
> > +{
> > +}
> > +
> > +static const struct drm_encoder_helper_funcs imx_mipi_dsi_encoder_helpers = {
> > +	.mode_fixup = imx_mipi_dsi_encoder_mode_fixup,
> > +	.commit = imx_mipi_dsi_encoder_commit,
> > +	.disable = imx_mipi_dsi_encoder_disable,
> > +	.atomic_check = imx_mipi_dsi_encoder_atomic_check,
> > +};
> > +
> > +static enum drm_mode_status imx_mipi_dsi_mode_valid(void *priv_data,
> > +					const struct drm_display_mode *mode)
> > +{
> > +	/*
> > +	 * The VID_PKT_SIZE field in the DSI_VID_PKT_CFG
> > +	 * register is 11-bit.
> > +	 */
> > +	if (mode->hdisplay > 0x7ff)
> > +		return MODE_BAD_HVALUE;
> > +
> > +	/*
> > +	 * The V_ACTIVE_LINES field in the DSI_VTIMING_CFG
> > +	 * register is 11-bit.
> > +	 */
> > +	if (mode->vdisplay > 0x7ff)
> > +		return MODE_BAD_VVALUE;
> > +
> > +	return MODE_OK;
> > +}
> > +
> > +
> > +static unsigned int max_mbps_to_testdin(unsigned int max_mbps)
> > +{
> > +	unsigned int i;
> > +
> > +	for (i = 0; i < ARRAY_SIZE(dptdin_map); i++)
> > +		if (dptdin_map[i].max_mbps == max_mbps)
> > +			return dptdin_map[i].testdin;
> > +
> > +	return -EINVAL;
> > +}
> > +
> > +static inline void dsi_write(struct imx_mipi_dsi *dsi, u32 reg, u32 val)
> > +{
> > +	writel(val, dsi->base + reg);
> > +}
> > +
> > +static int imx_mipi_dsi_phy_init(void *priv_data)
> > +{
> > +	struct imx_mipi_dsi *dsi = priv_data;
> > +	int testdin;
> > +
> > +	testdin = max_mbps_to_testdin(dsi->lane_mbps);
> > +	if (testdin < 0) {
> > +		DRM_DEV_ERROR(dsi->dev,
> > +			      "failed to get testdin for %dmbps lane clock\n",
> > +			      dsi->lane_mbps);
> > +		return testdin;
> > +	}
> > +
> > +	dsi_write(dsi, DSI_PHY_IF_CTRL, PHY_IF_CTRL_RESET);
> > +	dsi_write(dsi, DSI_PWR_UP, POWERUP);
> > +
> > +	dsi_write(dsi, DSI_PHY_TST_CTRL0, PHY_UNTESTCLK | PHY_UNTESTCLR);
> > +	dsi_write(dsi, DSI_PHY_TST_CTRL1, PHY_TESTEN | PHY_TESTDOUT(0) |
> > +		  PHY_TESTDIN(0x44));
> > +	dsi_write(dsi, DSI_PHY_TST_CTRL0, PHY_TESTCLK | PHY_UNTESTCLR);
> > +	dsi_write(dsi, DSI_PHY_TST_CTRL0, PHY_UNTESTCLK | PHY_UNTESTCLR);
> > +	dsi_write(dsi, DSI_PHY_TST_CTRL1, PHY_UNTESTEN | PHY_TESTDOUT(0) |
> > +		  PHY_TESTDIN(testdin));
> > +	dsi_write(dsi, DSI_PHY_TST_CTRL0, PHY_TESTCLK | PHY_UNTESTCLR);
> > +	dsi_write(dsi, DSI_PHY_TST_CTRL0, PHY_UNTESTCLK | PHY_UNTESTCLR);
> > +
> > +	return 0;
> > +}
> > +
> > +static int imx_mipi_dsi_get_lane_mbps(void *priv_data,
> > +				      const struct drm_display_mode *mode,
> > +				      unsigned long mode_flags, u32 lanes,
> > +				      u32 format, unsigned int *lane_mbps)
> > +{
> > +	struct imx_mipi_dsi *dsi = priv_data;
> > +	int bpp;
> > +	unsigned int i, target_mbps, mpclk;
> > +	unsigned long pllref;
> > +
> > +	bpp = mipi_dsi_pixel_format_to_bpp(format);
> > +	if (bpp < 0) {
> > +		DRM_DEV_ERROR(dsi->dev, "failed to get bpp for format %d: %d\n",
> > +			      format, bpp);
> > +		return bpp;
> > +	}
> > +
> > +	pllref = clk_get_rate(dsi->pllref_clk);
> > +	if (pllref != 27000000)
> > +		DRM_WARN("DSI pllref_clk not set to 27Mhz\n");
> > +
> > +	mpclk = DIV_ROUND_UP(mode->clock, MSEC_PER_SEC);
> > +	if (mpclk) {
> > +		/* take 1/0.7 blanking overhead into consideration */
> > +		target_mbps = (mpclk * (bpp / lanes) * 10) / 7;
> > +	} else {
> > +		DRM_DEV_ERROR(dsi->dev, "use default 1Gbps DPHY pll clock\n");
> > +		target_mbps = 1000;
> > +	}
> > +
> > +	DRM_DEV_DEBUG(dsi->dev, "target pllref_clk frequency is %uMbps\n",
> > +		      target_mbps);
> > +
> > +	for (i = 0; i < ARRAY_SIZE(dptdin_map); i++) {
> > +		if (target_mbps < dptdin_map[i].max_mbps) {
> > +			*lane_mbps = dptdin_map[i].max_mbps;
> > +			dsi->lane_mbps = *lane_mbps;
> > +			DRM_DEV_DEBUG(dsi->dev,
> > +				      "real pllref_clk frequency is %uMbps\n",
> > +				      *lane_mbps);
> > +			return 0;
> > +		}
> > +	}
> > +
> > +	DRM_DEV_ERROR(dsi->dev, "DPHY clock frequency %uMbps is out of range\n",
> > +		      target_mbps);
> > +
> > +	return -EINVAL;
> > +}
> > +
> > +static int
> > +dw_mipi_dsi_phy_get_timing(void *priv_data, unsigned int lane_mbps,
> > +			   struct dw_mipi_dsi_dphy_timing *timing)
> > +{
> > +	timing->clk_hs2lp = 0x40;
> > +	timing->clk_lp2hs = 0x40;
> > +	timing->data_hs2lp = 0x40;
> > +	timing->data_lp2hs = 0x40;
> > +
> > +	return 0;
> > +}
> > +
> > +static const struct dw_mipi_dsi_phy_ops dw_mipi_dsi_imx6_phy_ops = {
> > +	.init = imx_mipi_dsi_phy_init,
> > +	.get_lane_mbps = imx_mipi_dsi_get_lane_mbps,
> > +	.get_timing = dw_mipi_dsi_phy_get_timing,
> > +};
> > +
> > +static struct dw_mipi_dsi_plat_data imx6q_mipi_dsi_drv_data = {
> > +	.max_data_lanes = 2,
> > +	.mode_valid = imx_mipi_dsi_mode_valid,
> > +	.phy_ops = &dw_mipi_dsi_imx6_phy_ops,
> > +};
> > +
> > +static const struct of_device_id imx_dsi_dt_ids[] = {
> > +	{
> > +		.compatible = "fsl,imx6q-mipi-dsi",
> > +		.data = &imx6q_mipi_dsi_drv_data,
> > +	},
> > +	{ /* sentinel */ }
> > +};
> > +MODULE_DEVICE_TABLE(of, imx_dsi_dt_ids);
> > +
> > +static int imx_mipi_dsi_bind(struct device *dev, struct device *master,
> > +			     void *data)
> > +{
> > +	struct imx_mipi_dsi *dsi = dev_get_drvdata(dev);
> > +	struct drm_device *drm = data;
> > +	int ret;
> > +
> > +	ret = clk_prepare_enable(dsi->pllref_clk);
> > +	if (ret) {
> > +		DRM_DEV_ERROR(dev, "Failed to enable pllref_clk: %d\n", ret);
> > +		return ret;
> > +	}
> > +
> > +	ret = imx_drm_create_encoder(drm, &dsi->encoder, dsi->dev->of_node);
> > +	if (ret) {
> > +		DRM_DEV_ERROR(dsi->dev, "failed to create drm encoder\n");
> > +		return ret;
> > +	}
> > +
> > +	drm_encoder_helper_add(&dsi->encoder, &imx_mipi_dsi_encoder_helpers);
> > +
> > +	ret = dw_mipi_dsi_bind(dsi->mipi_dsi, &dsi->encoder);
> > +	if (ret) {
> > +		DRM_DEV_ERROR(dev, "Failed to bind: %d\n", ret);
> > +		return ret;
> > +	}
> > +
> > +	return 0;
> > +}
> > +
> > +static void imx_mipi_dsi_unbind(struct device *dev, struct device *master,
> > +				void *data)
> > +{
> > +	struct imx_mipi_dsi *dsi = dev_get_drvdata(dev);
> > +
> > +	dw_mipi_dsi_unbind(dsi->mipi_dsi);
> > +
> > +	clk_disable_unprepare(dsi->pllref_clk);
> > +}
> > +
> > +static const struct component_ops imx_mipi_dsi_ops = {
> > +	.bind	= imx_mipi_dsi_bind,
> > +	.unbind	= imx_mipi_dsi_unbind,
> > +};
> > +
> > +static int imx_mipi_dsi_probe(struct platform_device *pdev)
> > +{
> > +	struct device *dev = &pdev->dev;
> > +	const struct of_device_id *of_id = of_match_device(imx_dsi_dt_ids, dev);
> > +	struct dw_mipi_dsi_plat_data *pdata = (struct dw_mipi_dsi_plat_data *) of_id->data;
> > +	struct imx_mipi_dsi *dsi;
> > +	struct resource *res;
> > +	int ret;
> > +
> > +	dsi = devm_kzalloc(dev, sizeof(*dsi), GFP_KERNEL);
> > +	if (!dsi)
> > +		return -ENOMEM;
> > +
> > +	dsi->dev = dev;
> > +
> > +	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> > +	dsi->base = devm_ioremap_resource(dev, res);
> > +	if (IS_ERR(dsi->base)) {
> > +		ret = PTR_ERR(dsi->base);
> > +		DRM_DEV_ERROR(dev, "Unable to get dsi registers: %d\n", ret);
> > +		return ret;
> > +	}
> > +
> > +	dsi->pllref_clk = devm_clk_get(dev, "ref");
> > +	if (IS_ERR(dsi->pllref_clk)) {
> > +		ret = PTR_ERR(dsi->pllref_clk);
> > +		DRM_DEV_ERROR(dev, "Unable to get pllref_clk: %d\n", ret);
> > +		return ret;
> > +	}
> > +
> > +	dsi->mux_sel = syscon_regmap_lookup_by_phandle(dev->of_node, "fsl,gpr");
> > +	if (IS_ERR(dsi->mux_sel)) {
> > +		ret = PTR_ERR(dsi->mux_sel);
> > +		DRM_DEV_ERROR(dev, "Failed to get GPR regmap: %d\n", ret);
> > +		return ret;
> > +	}
> > +
> > +	dev_set_drvdata(dev, dsi);
> > +
> > +	imx6q_mipi_dsi_drv_data.base = dsi->base;
> > +	imx6q_mipi_dsi_drv_data.priv_data = dsi;
> > +
> > +	dsi->mipi_dsi = dw_mipi_dsi_probe(pdev, pdata);
> > +	if (IS_ERR(dsi->mipi_dsi)) {
> > +		ret = PTR_ERR(dsi->mipi_dsi);
> > +		DRM_DEV_ERROR(dev, "Failed to probe DW DSI host: %d\n", ret);
> > +		goto err_clkdisable;
> > +	}
> > +
> > +	return component_add(&pdev->dev, &imx_mipi_dsi_ops);
> > +
> > +err_clkdisable:
> > +	clk_disable_unprepare(dsi->pllref_clk);
> > +	return ret;
> > +}
> > +
> > +static int imx_mipi_dsi_remove(struct platform_device *pdev)
> > +{
> > +	component_del(&pdev->dev, &imx_mipi_dsi_ops);
> > +	return 0;
> > +}
> > +
> > +static struct platform_driver imx_mipi_dsi_driver = {
> > +	.probe		= imx_mipi_dsi_probe,
> > +	.remove		= imx_mipi_dsi_remove,
> > +	.driver		= {
> > +		.of_match_table = imx_dsi_dt_ids,
> > +		.name	= "dw-mipi-dsi-imx6",
> > +	},
> > +};
> > +module_platform_driver(imx_mipi_dsi_driver);
> > +
> > +MODULE_DESCRIPTION("i.MX6 MIPI DSI host controller driver");
> > +MODULE_AUTHOR("Liu Ying <victor.liu@nxp.com>");
> > +MODULE_AUTHOR("Adrian Ratiu <adrian.ratiu@collabora.com>");
> > +MODULE_LICENSE("GPL");
> > -- 
> > 2.26.0
> > 
> 
> -- 
> Regards,
> 
> Laurent Pinchart
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

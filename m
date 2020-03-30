Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F49D197AEE
	for <lists+linux-rockchip@lfdr.de>; Mon, 30 Mar 2020 13:37:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VC8H4vCV/n3gKEy9KszpWA2gT7BpxXvY5NlQMZeufpY=; b=nJUscbn3PSWe+U
	/CxLa6lMlI7LKB1E1ziGn+suOjXGQvlikXwuzARoRruiz5RFoQpBsXTr0KXH88BBn/8OFmqLMJ+kH
	exlpE26eA6Khnrfepi6JyV9VmUgRD+XMR7FTecpJs0OsehHqtjlyMnuyisbNcTYg8e0lpftrUTxUb
	AN1Bat41kedVXFU/vSUDfYJII42CqeFyJXjNEWudoMM4aPYETydQCHFgMbxjNtTS28JpzCv7rqbUl
	ETEriCLzj4x8udNh4jpTuf3qacrbQwbF+JRoncimw+P5Lc2/z0vWGgFdXpFrq32IwhhjeIniaL5gy
	zVNhPmi0BMX1bd77pJ4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIsj6-00029G-0U; Mon, 30 Mar 2020 11:37:08 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIsh0-0007TS-UB; Mon, 30 Mar 2020 11:35:01 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: aratiu) with ESMTPSA id 128DB29260A
From: Adrian Ratiu <adrian.ratiu@collabora.com>
To: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH v5 4/5] drm: imx: Add i.MX 6 MIPI DSI host platform driver
Date: Mon, 30 Mar 2020 14:35:41 +0300
Message-Id: <20200330113542.181752-5-adrian.ratiu@collabora.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200330113542.181752-1-adrian.ratiu@collabora.com>
References: <20200330113542.181752-1-adrian.ratiu@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_043459_279473_4923ED2F 
X-CRM114-Status: GOOD (  20.61  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Jernej Skrabec <jernej.skrabec@siol.net>,
 Sjoerd Simons <sjoerd.simons@collabora.com>,
 Andrzej Hajda <a.hajda@samsung.com>, Martyn Welch <martyn.welch@collabora.com>,
 Jonas Karlman <jonas@kwiboo.se>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Emil Velikov <emil.velikov@collabora.com>,
 linux-rockchip@lists.infradead.org, linux-imx@nxp.com, kernel@collabora.com,
 Fabio Estevam <festevam@gmail.com>, linux-stm32@st-md-mailman.stormreply.com,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

This adds support for the Synopsis DesignWare MIPI DSI v1.01 host
controller which is embedded in i.MX 6 SoCs.

Based on following patches, but updated/extended to work with existing
support found in the kernel:

- drm: imx: Support Synopsys DesignWare MIPI DSI host controller
  Signed-off-by: Liu Ying <Ying.Liu@freescale.com>

- ARM: dtsi: imx6qdl: Add support for MIPI DSI host controller
  Signed-off-by: Liu Ying <Ying.Liu@freescale.com>

Cc: Fabio Estevam <festevam@gmail.com>
Reviewed-by: Emil Velikov <emil.velikov@collabora.com>
Signed-off-by: Sjoerd Simons <sjoerd.simons@collabora.com>
Signed-off-by: Martyn Welch <martyn.welch@collabora.com>
Signed-off-by: Adrian Ratiu <adrian.ratiu@collabora.com>
---
Changes since v4:
  - Split off driver-specific configuration of phy timings due
  to new upstream API.
  - Move regmap infrastructure logic to separate commit (Ezequiel)
  - Move dsi v1.01 layout addition to a separate commit (Ezequiel)
  - Minor warnings and driver name fixes

Changes since v3:
  - Renamed platform driver to reflect it's i.MX6 only. (Fabio)

Changes since v2:
  - Fixed commit tags. (Emil)

Changes since v1:
  - Moved register definitions & regmap initialization into bridge
  module. Platform drivers get the regmap via plat_data after
  calling the bridge probe. (Emil)
---
 drivers/gpu/drm/imx/Kconfig            |   7 +
 drivers/gpu/drm/imx/Makefile           |   1 +
 drivers/gpu/drm/imx/dw_mipi_dsi-imx6.c | 399 +++++++++++++++++++++++++
 3 files changed, 407 insertions(+)
 create mode 100644 drivers/gpu/drm/imx/dw_mipi_dsi-imx6.c

diff --git a/drivers/gpu/drm/imx/Kconfig b/drivers/gpu/drm/imx/Kconfig
index 207bf7409dfb..b49e70e7f0fd 100644
--- a/drivers/gpu/drm/imx/Kconfig
+++ b/drivers/gpu/drm/imx/Kconfig
@@ -39,3 +39,10 @@ config DRM_IMX_HDMI
 	depends on DRM_IMX
 	help
 	  Choose this if you want to use HDMI on i.MX6.
+
+config DRM_IMX6_MIPI_DSI
+	tristate "Freescale i.MX6 DRM MIPI DSI"
+	select DRM_DW_MIPI_DSI
+	depends on DRM_IMX
+	help
+	  Choose this if you want to use MIPI DSI on i.MX6.
diff --git a/drivers/gpu/drm/imx/Makefile b/drivers/gpu/drm/imx/Makefile
index 21cdcc2faabc..9a7843c59347 100644
--- a/drivers/gpu/drm/imx/Makefile
+++ b/drivers/gpu/drm/imx/Makefile
@@ -9,3 +9,4 @@ obj-$(CONFIG_DRM_IMX_TVE) += imx-tve.o
 obj-$(CONFIG_DRM_IMX_LDB) += imx-ldb.o
 
 obj-$(CONFIG_DRM_IMX_HDMI) += dw_hdmi-imx.o
+obj-$(CONFIG_DRM_IMX6_MIPI_DSI) += dw_mipi_dsi-imx6.o
diff --git a/drivers/gpu/drm/imx/dw_mipi_dsi-imx6.c b/drivers/gpu/drm/imx/dw_mipi_dsi-imx6.c
new file mode 100644
index 000000000000..56b17d8670a2
--- /dev/null
+++ b/drivers/gpu/drm/imx/dw_mipi_dsi-imx6.c
@@ -0,0 +1,399 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * i.MX6 drm driver - MIPI DSI Host Controller
+ *
+ * Copyright (C) 2011-2015 Freescale Semiconductor, Inc.
+ */
+
+#include <linux/clk.h>
+#include <linux/component.h>
+#include <linux/mfd/syscon.h>
+#include <linux/mfd/syscon/imx6q-iomuxc-gpr.h>
+#include <linux/module.h>
+#include <linux/of_device.h>
+#include <linux/regmap.h>
+#include <linux/videodev2.h>
+#include <drm/bridge/dw_mipi_dsi.h>
+#include <drm/drm_crtc_helper.h>
+#include <drm/drm_mipi_dsi.h>
+#include <drm/drm_of.h>
+#include <drm/drm_print.h>
+
+#include "imx-drm.h"
+
+#define DSI_PWR_UP			0x04
+#define RESET				0
+#define POWERUP				BIT(0)
+
+#define DSI_PHY_IF_CTRL			0x5c
+#define PHY_IF_CTRL_RESET		0x0
+
+#define DSI_PHY_TST_CTRL0		0x64
+#define PHY_TESTCLK			BIT(1)
+#define PHY_UNTESTCLK			0
+#define PHY_TESTCLR			BIT(0)
+#define PHY_UNTESTCLR			0
+
+#define DSI_PHY_TST_CTRL1		0x68
+#define PHY_TESTEN			BIT(16)
+#define PHY_UNTESTEN			0
+#define PHY_TESTDOUT(n)			(((n) & 0xff) << 8)
+#define PHY_TESTDIN(n)			(((n) & 0xff) << 0)
+
+struct imx_mipi_dsi {
+	struct drm_encoder encoder;
+	struct device *dev;
+	struct regmap *mux_sel;
+	struct dw_mipi_dsi *mipi_dsi;
+	struct clk *pllref_clk;
+
+	void __iomem *base;
+	unsigned int lane_mbps;
+};
+
+struct dphy_pll_testdin_map {
+	unsigned int max_mbps;
+	u8 testdin;
+};
+
+/* The table is based on 27MHz DPHY pll reference clock. */
+static const struct dphy_pll_testdin_map dptdin_map[] = {
+	{160, 0x04}, {180, 0x24}, {200, 0x44}, {210, 0x06},
+	{240, 0x26}, {250, 0x46}, {270, 0x08}, {300, 0x28},
+	{330, 0x48}, {360, 0x2a}, {400, 0x4a}, {450, 0x0c},
+	{500, 0x2c}, {550, 0x0e}, {600, 0x2e}, {650, 0x10},
+	{700, 0x30}, {750, 0x12}, {800, 0x32}, {850, 0x14},
+	{900, 0x34}, {950, 0x54}, {1000, 0x74}
+};
+
+static inline struct imx_mipi_dsi *enc_to_dsi(struct drm_encoder *enc)
+{
+	return container_of(enc, struct imx_mipi_dsi, encoder);
+}
+
+static void imx_mipi_dsi_set_ipu_di_mux(struct imx_mipi_dsi *dsi, int ipu_di)
+{
+	regmap_update_bits(dsi->mux_sel, IOMUXC_GPR3,
+			   IMX6Q_GPR3_MIPI_MUX_CTL_MASK,
+			   ipu_di << IMX6Q_GPR3_MIPI_MUX_CTL_SHIFT);
+}
+
+static const struct drm_encoder_funcs imx_mipi_dsi_encoder_funcs = {
+	.destroy = imx_drm_encoder_destroy,
+};
+
+static bool imx_mipi_dsi_encoder_mode_fixup(struct drm_encoder *encoder,
+					    const struct drm_display_mode *mode,
+					    struct drm_display_mode *adj_mode)
+{
+	return true;
+}
+
+static int imx_mipi_dsi_encoder_atomic_check(struct drm_encoder *encoder,
+					     struct drm_crtc_state *crtc_state,
+					     struct drm_connector_state *conn)
+{
+	struct imx_crtc_state *imx_crtc_state = to_imx_crtc_state(crtc_state);
+
+	/* The following values are taken from dw_hdmi_imx_atomic_check */
+	imx_crtc_state->bus_format = MEDIA_BUS_FMT_RGB888_1X24;
+	imx_crtc_state->di_hsync_pin = 2;
+	imx_crtc_state->di_vsync_pin = 3;
+
+	return 0;
+}
+
+static void imx_mipi_dsi_encoder_commit(struct drm_encoder *encoder)
+{
+	struct imx_mipi_dsi *dsi = enc_to_dsi(encoder);
+	int mux = drm_of_encoder_active_port_id(dsi->dev->of_node, encoder);
+
+	imx_mipi_dsi_set_ipu_di_mux(dsi, mux);
+}
+
+static void imx_mipi_dsi_encoder_disable(struct drm_encoder *encoder)
+{
+}
+
+static const struct drm_encoder_helper_funcs imx_mipi_dsi_encoder_helpers = {
+	.mode_fixup = imx_mipi_dsi_encoder_mode_fixup,
+	.commit = imx_mipi_dsi_encoder_commit,
+	.disable = imx_mipi_dsi_encoder_disable,
+	.atomic_check = imx_mipi_dsi_encoder_atomic_check,
+};
+
+static int imx_mipi_dsi_register(struct drm_device *drm,
+				 struct imx_mipi_dsi *dsi)
+{
+	int ret;
+
+	ret = imx_drm_encoder_parse_of(drm, &dsi->encoder, dsi->dev->of_node);
+	if (ret)
+		return ret;
+
+	drm_encoder_helper_add(&dsi->encoder,
+			       &imx_mipi_dsi_encoder_helpers);
+	drm_encoder_init(drm, &dsi->encoder, &imx_mipi_dsi_encoder_funcs,
+			 DRM_MODE_ENCODER_DSI, NULL);
+	return 0;
+}
+
+static enum drm_mode_status imx_mipi_dsi_mode_valid(void *priv_data,
+					const struct drm_display_mode *mode)
+{
+	/*
+	 * The VID_PKT_SIZE field in the DSI_VID_PKT_CFG
+	 * register is 11-bit.
+	 */
+	if (mode->hdisplay > 0x7ff)
+		return MODE_BAD_HVALUE;
+
+	/*
+	 * The V_ACTIVE_LINES field in the DSI_VTIMING_CFG
+	 * register is 11-bit.
+	 */
+	if (mode->vdisplay > 0x7ff)
+		return MODE_BAD_VVALUE;
+
+	return MODE_OK;
+}
+
+
+static unsigned int max_mbps_to_testdin(unsigned int max_mbps)
+{
+	unsigned int i;
+
+	for (i = 0; i < ARRAY_SIZE(dptdin_map); i++)
+		if (dptdin_map[i].max_mbps == max_mbps)
+			return dptdin_map[i].testdin;
+
+	return -EINVAL;
+}
+
+static inline void dsi_write(struct imx_mipi_dsi *dsi, u32 reg, u32 val)
+{
+	writel(val, dsi->base + reg);
+}
+
+static int imx_mipi_dsi_phy_init(void *priv_data)
+{
+	struct imx_mipi_dsi *dsi = priv_data;
+	int testdin;
+
+	testdin = max_mbps_to_testdin(dsi->lane_mbps);
+	if (testdin < 0) {
+		dev_err(dsi->dev,
+			"failed to get testdin for %dmbps lane clock\n",
+			dsi->lane_mbps);
+		return testdin;
+	}
+
+	dsi_write(dsi, DSI_PHY_IF_CTRL, PHY_IF_CTRL_RESET);
+	dsi_write(dsi, DSI_PWR_UP, POWERUP);
+
+	dsi_write(dsi, DSI_PHY_TST_CTRL0, PHY_UNTESTCLK | PHY_UNTESTCLR);
+	dsi_write(dsi, DSI_PHY_TST_CTRL1, PHY_TESTEN | PHY_TESTDOUT(0) |
+		  PHY_TESTDIN(0x44));
+	dsi_write(dsi, DSI_PHY_TST_CTRL0, PHY_TESTCLK | PHY_UNTESTCLR);
+	dsi_write(dsi, DSI_PHY_TST_CTRL0, PHY_UNTESTCLK | PHY_UNTESTCLR);
+	dsi_write(dsi, DSI_PHY_TST_CTRL1, PHY_UNTESTEN | PHY_TESTDOUT(0) |
+		  PHY_TESTDIN(testdin));
+	dsi_write(dsi, DSI_PHY_TST_CTRL0, PHY_TESTCLK | PHY_UNTESTCLR);
+	dsi_write(dsi, DSI_PHY_TST_CTRL0, PHY_UNTESTCLK | PHY_UNTESTCLR);
+
+	return 0;
+}
+
+static int imx_mipi_dsi_get_lane_mbps(void *priv_data,
+				      const struct drm_display_mode *mode,
+				      unsigned long mode_flags, u32 lanes,
+				      u32 format, unsigned int *lane_mbps)
+{
+	struct imx_mipi_dsi *dsi = priv_data;
+	int bpp;
+	unsigned int i, target_mbps, mpclk;
+	unsigned long pllref;
+
+	bpp = mipi_dsi_pixel_format_to_bpp(format);
+	if (bpp < 0) {
+		dev_err(dsi->dev, "failed to get bpp for pixel format %d\n",
+			format);
+		return bpp;
+	}
+
+	pllref = clk_get_rate(dsi->pllref_clk);
+	if (pllref != 27000000)
+		dev_warn(dsi->dev, "expect 27MHz DPHY pll reference clock\n");
+
+	mpclk = DIV_ROUND_UP(mode->clock, MSEC_PER_SEC);
+	if (mpclk) {
+		/* take 1/0.7 blanking overhead into consideration */
+		target_mbps = (mpclk * (bpp / lanes) * 10) / 7;
+	} else {
+		dev_dbg(dsi->dev, "use default 1Gbps DPHY pll clock\n");
+		target_mbps = 1000;
+	}
+
+	dev_dbg(dsi->dev, "target DPHY pll clock frequency is %uMbps\n",
+		target_mbps);
+
+	for (i = 0; i < ARRAY_SIZE(dptdin_map); i++) {
+		if (target_mbps < dptdin_map[i].max_mbps) {
+			*lane_mbps = dptdin_map[i].max_mbps;
+			dsi->lane_mbps = *lane_mbps;
+			dev_dbg(dsi->dev,
+				"real DPHY pll clock frequency is %uMbps\n",
+				*lane_mbps);
+			return 0;
+		}
+	}
+
+	dev_err(dsi->dev, "DPHY clock frequency %uMbps is out of range\n",
+		target_mbps);
+
+	return -EINVAL;
+}
+
+static int
+dw_mipi_dsi_phy_get_timing(void *priv_data, unsigned int lane_mbps,
+                          struct dw_mipi_dsi_dphy_timing *timing)
+{
+       timing->clk_hs2lp = 0x40;
+       timing->clk_lp2hs = 0x40;
+       timing->data_hs2lp = 0x40;
+       timing->data_lp2hs = 0x40;
+
+       return 0;
+}
+
+static const struct dw_mipi_dsi_phy_ops dw_mipi_dsi_imx6_phy_ops = {
+	.init = imx_mipi_dsi_phy_init,
+	.get_lane_mbps = imx_mipi_dsi_get_lane_mbps,
+	.get_timing = dw_mipi_dsi_phy_get_timing,
+};
+
+static struct dw_mipi_dsi_plat_data imx6q_mipi_dsi_drv_data = {
+	.max_data_lanes = 2,
+	.mode_valid = imx_mipi_dsi_mode_valid,
+	.phy_ops = &dw_mipi_dsi_imx6_phy_ops,
+};
+
+static const struct of_device_id imx_dsi_dt_ids[] = {
+	{
+		.compatible = "fsl,imx6q-mipi-dsi",
+		.data = &imx6q_mipi_dsi_drv_data,
+	},
+	{ /* sentinel */ }
+};
+MODULE_DEVICE_TABLE(of, imx_dsi_dt_ids);
+
+static int imx_mipi_dsi_bind(struct device *dev, struct device *master,
+			     void *data)
+{
+	struct imx_mipi_dsi *dsi = dev_get_drvdata(dev);
+	struct drm_device *drm = data;
+	int ret;
+
+	ret = imx_mipi_dsi_register(drm, dsi);
+	if (ret)
+		return ret;
+
+	ret = dw_mipi_dsi_bind(dsi->mipi_dsi, &dsi->encoder);
+	if (ret)
+		return ret;
+
+	return 0;
+}
+
+static void imx_mipi_dsi_unbind(struct device *dev, struct device *master,
+				void *data)
+{
+	struct imx_mipi_dsi *dsi = dev_get_drvdata(dev);
+
+	return dw_mipi_dsi_unbind(dsi->mipi_dsi);
+}
+
+static const struct component_ops imx_mipi_dsi_ops = {
+	.bind	= imx_mipi_dsi_bind,
+	.unbind	= imx_mipi_dsi_unbind,
+};
+
+static int imx_mipi_dsi_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	const struct of_device_id *of_id = of_match_device(imx_dsi_dt_ids, dev);
+	struct dw_mipi_dsi_plat_data *pdata = (struct dw_mipi_dsi_plat_data*) of_id->data;
+	struct imx_mipi_dsi *dsi;
+	struct resource *res;
+	int ret;
+
+	dsi = devm_kzalloc(dev, sizeof(*dsi), GFP_KERNEL);
+	if (!dsi)
+		return -ENOMEM;
+
+	dsi->dev = dev;
+
+	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
+	dsi->base = devm_ioremap_resource(dev, res);
+	if (IS_ERR(dsi->base)) {
+		DRM_DEV_ERROR(dev, "Unable to get dsi registers\n");
+		return PTR_ERR(dsi->base);
+	}
+
+	dsi->pllref_clk = devm_clk_get(dev, "ref");
+	if (IS_ERR(dsi->pllref_clk)) {
+		ret = PTR_ERR(dsi->pllref_clk);
+		dev_dbg(dev, "%s: Unable to get pll reference clock: %d\n",
+			__func__, ret);
+		return ret;
+	}
+
+	ret = clk_prepare_enable(dsi->pllref_clk);
+	if (ret) {
+		dev_err(dev, "%s: Failed to enable pllref_clk\n", __func__);
+		return ret;
+	}
+
+	dsi->mux_sel = syscon_regmap_lookup_by_phandle(dev->of_node, "fsl,gpr");
+	if (IS_ERR(dsi->mux_sel)) {
+		ret = PTR_ERR(dsi->mux_sel);
+		dev_err(dev, "%s: Failed to get GPR regmap: %d\n",
+			__func__, ret);
+		return ret;
+	}
+
+	dev_set_drvdata(dev, dsi);
+
+	imx6q_mipi_dsi_drv_data.base = dsi->base;
+	imx6q_mipi_dsi_drv_data.priv_data = dsi;
+
+	dsi->mipi_dsi = dw_mipi_dsi_probe(pdev, pdata);
+	if (IS_ERR(dsi->mipi_dsi)) {
+		ret = PTR_ERR(dsi->mipi_dsi);
+		dev_dbg(dev, "%s: Unable to probe DW DSI host device: %d\n",
+			__func__, ret);
+		return -ENODEV;
+	}
+
+	return component_add(&pdev->dev, &imx_mipi_dsi_ops);
+}
+
+static int imx_mipi_dsi_remove(struct platform_device *pdev)
+{
+	component_del(&pdev->dev, &imx_mipi_dsi_ops);
+	return 0;
+}
+
+static struct platform_driver imx_mipi_dsi_driver = {
+	.probe		= imx_mipi_dsi_probe,
+	.remove		= imx_mipi_dsi_remove,
+	.driver		= {
+		.of_match_table = imx_dsi_dt_ids,
+		.name	= "dw-mipi-dsi-imx6",
+	},
+};
+module_platform_driver(imx_mipi_dsi_driver);
+
+MODULE_DESCRIPTION("i.MX6 MIPI DSI host controller driver");
+MODULE_AUTHOR("Liu Ying <Ying.Liu@freescale.com>");
+MODULE_LICENSE("GPL");
-- 
2.26.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

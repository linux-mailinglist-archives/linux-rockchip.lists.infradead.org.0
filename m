Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA827116EFB
	for <lists+linux-rockchip@lfdr.de>; Mon,  9 Dec 2019 15:32:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tf0xt4z8YCZ60gmxXhBNdsmucdXqJcUzlEr97aeXvAM=; b=HfSA+LRSVvp9J7
	pG1lX3GjRhnyPhau1xl4C8sl/6bkAAAnIDXcgCgLvQWdss1Id7aPA/17dgcGnNaoOnVzlTx2WJQXa
	MC5/bMg+5NurbRWcF9J+grH+nVtV17dZ+Yl9WbqNbPwfvJMykHPvHglRK8SUBNgZOBdhncc/eXeU0
	SBicubc33+h5DktteU86yis6SwqAuU7uUjOhIQnD1Q0J81m6/P3dfwnBY2+ZBflTl7ewIsdpZ9OJj
	WmMW1UNQ/yPVEHzYEIXeHDSIdWOUPleRGrj1K+Tjldzn7Fk+S0g6DpEXh4A+fQFfquzf4D9O2cUoe
	F17vI0azZu/B29Zx9HZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieK5V-0006jM-La; Mon, 09 Dec 2019 14:32:37 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieK5R-0006fZ-1X
 for linux-rockchip@lists.infradead.org; Mon, 09 Dec 2019 14:32:34 +0000
Received: from ip5f5a6266.dynamic.kabel-deutschland.de ([95.90.98.102]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1ieK59-0000zC-VB; Mon, 09 Dec 2019 15:32:16 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: a.hajda@samsung.com
Subject: [PATCH v5 4/6] drm/rockchip: add ability to handle external dphys in
 mipi-dsi
Date: Mon,  9 Dec 2019 15:31:28 +0100
Message-Id: <20191209143130.4553-5-heiko@sntech.de>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191209143130.4553-1-heiko@sntech.de>
References: <20191209143130.4553-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_063233_232100_1B3BC7EB 
X-CRM114-Status: GOOD (  17.90  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: bivvy.bi@rock-chips.com, jernej.skrabec@siol.net, xzy.xu@rock-chips.com,
 heiko@sntech.de, kuninori.morimoto.gx@renesas.com, jonas@kwiboo.se,
 sean@poorly.run, narmstrong@baylibre.com, philippe.cornu@st.com,
 dri-devel@lists.freedesktop.org, hjc@rock-chips.com, yannick.fertre@st.com,
 linux-rockchip@lists.infradead.org, nickey.yang@rock-chips.com,
 eddie.cai@rock-chips.com, Laurent.pinchart@ideasonboard.com,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>, sam@ravnborg.org,
 christoph.muellner@theobroma-systems.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>

While the common case is that the dsi controller uses an internal dphy,
accessed through the phy registers inside the dsi controller, there is
also the possibility to use a separate dphy from a different vendor.

One such case is the Rockchip px30 that uses a Innosilicon Mipi dphy,
so add the support for handling such a constellation, including the pll
also getting generated inside that external phy.

changes in v5:
- rebased on top of 5.5-rc1
- merged with dsi timing change to prevent ordering conflicts

Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
---
 .../gpu/drm/rockchip/dw-mipi-dsi-rockchip.c   | 68 +++++++++++++++++--
 1 file changed, 64 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
index 9406effe8077..f16bd1e9b633 100644
--- a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
@@ -12,6 +12,7 @@
 #include <linux/mfd/syscon.h>
 #include <linux/module.h>
 #include <linux/of_device.h>
+#include <linux/phy/phy.h>
 #include <linux/pm_runtime.h>
 #include <linux/regmap.h>
 
@@ -223,6 +224,10 @@ struct dw_mipi_dsi_rockchip {
 	bool is_slave;
 	struct dw_mipi_dsi_rockchip *slave;
 
+	/* optional external dphy */
+	struct phy *phy;
+	union phy_configure_opts phy_opts;
+
 	unsigned int lane_mbps; /* per lane */
 	u16 input_div;
 	u16 feedback_div;
@@ -359,6 +364,9 @@ static int dw_mipi_dsi_phy_init(void *priv_data)
 	struct dw_mipi_dsi_rockchip *dsi = priv_data;
 	int ret, i, vco;
 
+	if (dsi->phy)
+		return 0;
+
 	/*
 	 * Get vco from frequency(lane_mbps)
 	 * vco	frequency table
@@ -467,6 +475,28 @@ static int dw_mipi_dsi_phy_init(void *priv_data)
 	return ret;
 }
 
+static void dw_mipi_dsi_phy_power_on(void *priv_data)
+{
+	struct dw_mipi_dsi_rockchip *dsi = priv_data;
+	int ret;
+
+	ret = phy_set_mode(dsi->phy, PHY_MODE_MIPI_DPHY);
+	if (ret) {
+		DRM_DEV_ERROR(dsi->dev, "failed to set phy mode: %d\n", ret);
+		return;
+	}
+
+	phy_configure(dsi->phy, &dsi->phy_opts);
+	phy_power_on(dsi->phy);
+}
+
+static void dw_mipi_dsi_phy_power_off(void *priv_data)
+{
+	struct dw_mipi_dsi_rockchip *dsi = priv_data;
+
+	phy_power_off(dsi->phy);
+}
+
 static int
 dw_mipi_dsi_get_lane_mbps(void *priv_data, const struct drm_display_mode *mode,
 			  unsigned long mode_flags, u32 lanes, u32 format,
@@ -504,6 +534,17 @@ dw_mipi_dsi_get_lane_mbps(void *priv_data, const struct drm_display_mode *mode,
 				      "DPHY clock frequency is out of range\n");
 	}
 
+	/* for external phy only a the mipi_dphy_config is necessary */
+	if (dsi->phy) {
+		phy_mipi_dphy_get_default_config(mode->clock * 1000 * 10 / 8,
+						 bpp, lanes,
+						 &dsi->phy_opts.mipi_dphy);
+		dsi->lane_mbps = target_mbps;
+		*lane_mbps = dsi->lane_mbps;
+
+		return 0;
+	}
+
 	fin = clk_get_rate(dsi->pllref_clk);
 	fout = target_mbps * USEC_PER_SEC;
 
@@ -638,6 +679,8 @@ dw_mipi_dsi_phy_get_timing(void *priv_data, unsigned int lane_mbps,
 
 static const struct dw_mipi_dsi_phy_ops dw_mipi_dsi_rockchip_phy_ops = {
 	.init = dw_mipi_dsi_phy_init,
+	.power_on = dw_mipi_dsi_phy_power_on,
+	.power_off = dw_mipi_dsi_phy_power_off,
 	.get_lane_mbps = dw_mipi_dsi_get_lane_mbps,
 	.get_timing = dw_mipi_dsi_phy_get_timing,
 };
@@ -998,12 +1041,29 @@ static int dw_mipi_dsi_rockchip_probe(struct platform_device *pdev)
 		return -EINVAL;
 	}
 
+	/* try to get a possible external dphy */
+	dsi->phy = devm_phy_optional_get(dev, "dphy");
+	if (IS_ERR(dsi->phy)) {
+		ret = PTR_ERR(dsi->phy);
+		DRM_DEV_ERROR(dev, "failed to get mipi dphy: %d\n", ret);
+		return ret;
+	}
+
 	dsi->pllref_clk = devm_clk_get(dev, "ref");
 	if (IS_ERR(dsi->pllref_clk)) {
-		ret = PTR_ERR(dsi->pllref_clk);
-		DRM_DEV_ERROR(dev,
-			      "Unable to get pll reference clock: %d\n", ret);
-		return ret;
+		if (dsi->phy) {
+			/*
+			 * if external phy is present, pll will be
+			 * generated there.
+			 */
+			dsi->pllref_clk = NULL;
+		} else {
+			ret = PTR_ERR(dsi->pllref_clk);
+			DRM_DEV_ERROR(dev,
+				      "Unable to get pll reference clock: %d\n",
+				      ret);
+			return ret;
+		}
 	}
 
 	if (dsi->cdata->flags & DW_MIPI_NEEDS_PHY_CFG_CLK) {
-- 
2.24.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

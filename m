Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABE4E108C76
	for <lists+linux-rockchip@lfdr.de>; Mon, 25 Nov 2019 12:01:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4HgJiEvPSGJPG8KNvwm+gHqD7uQ/rgH65WjUxiEWE7o=; b=h7UlJUABcSpZ4z
	jcJ/lkGFRLzeyb483HntMxtZ3gCi/D4mZEBaQ5Vj+1xuhRv6QClFkWKk9bSCPewejAdhmJg6M5bTJ
	UtPjbvPHuc1vpPtTTr82YzQD9/4iXEpq+/LhwjZMLQ3oKDy4FaNYFslT9v3ndXTnvVrYnX7PkOvrP
	k6/7O5ONLzpO/Owif9BRxCJVzsUVUu1p/MOIKfrSjEWBV93keDljKtfkyXDlpdb9XAQBFwKp+/ggc
	qh/lH1TtEBlFePH8c3hQyi199bQrGHuZMuTYpGh44SwLHmnp3oTUOSNeD6MhU554N8Op+OqsE4MZt
	2FeiZw9aEq/ySTSojXCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZC78-0004Of-Sv; Mon, 25 Nov 2019 11:01:06 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZC75-0004O6-3m
 for linux-rockchip@lists.infradead.org; Mon, 25 Nov 2019 11:01:04 +0000
Received: from ip5f5a6266.dynamic.kabel-deutschland.de ([95.90.98.102]
 helo=phil.sntech)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iZC6r-0004Bm-G1; Mon, 25 Nov 2019 12:00:49 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: a.hajda@samsung.com
Subject: [PATCH v4] drm/bridge/synopsys: dsi: driver-specific configuration of
 phy timings
Date: Mon, 25 Nov 2019 11:16:30 +0100
Message-Id: <20191125101630.25735-1-heiko@sntech.de>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_030103_305422_C18E61F6 
X-CRM114-Status: GOOD (  16.25  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: bivvy.bi@rock-chips.com, jernej.skrabec@siol.net, briannorris@chromium.org,
 heiko@sntech.de, kuninori.morimoto.gx@renesas.com, jonas@kwiboo.se,
 sean@poorly.run, narmstrong@baylibre.com, dianders@chromium.org,
 dri-devel@lists.freedesktop.org, philippe.cornu@st.com, yannick.fertre@st.com,
 linux-rockchip@lists.infradead.org, nickey.yang@rock-chips.com,
 hjc@rock-chips.com, eddie.cai@rock-chips.com,
 Laurent.pinchart@ideasonboard.com,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>, sam@ravnborg.org,
 xzy.xu@rock-chips.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>

The timing values for dw-dsi are often dependent on the used display and
according to Philippe Cornu will most likely also depend on the used phy
technology in the soc-specific implementation.

To solve this and allow specific implementations to define them as needed
add a new get_timing callback to phy_ops and call this from the dphy_timing
function to retrieve the necessary values for the specific mode.

Right now this handles the hs2lp + lp2hs where Rockchip SoCs need handling
according to the phy speed, while STM seems to be ok with static values.

changes in v4:
- rebase to make it directly fit on top of drm-misc-next after all

changes in v3:
- check existence of phy_ops->get_timing in __dw_mipi_dsi_probe()
- emit actual error when get_timing() call fails
- add tags from Philippe and Yannick

changes in v2:
- add driver-specific handling, don't force all bridge users to use
  the same timings, as suggested by Philippe

Suggested-by: Philippe Cornu <philippe.cornu@st.com>
Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
Reviewed-by: Philippe Cornu <philippe.cornu@st.com>
Tested-by: Yannick Fertre <yannick.fertre@st.com>
---
 drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c | 27 +++++--
 drivers/gpu/drm/rockchip/Kconfig              |  1 +
 .../gpu/drm/rockchip/dw-mipi-dsi-rockchip.c   | 78 +++++++++++++++++++
 drivers/gpu/drm/stm/dw_mipi_dsi-stm.c         | 13 ++++
 include/drm/bridge/dw_mipi_dsi.h              |  9 +++
 5 files changed, 121 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c b/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
index 49f5600a1dea..eb46f3e12418 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
+++ b/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
@@ -718,7 +718,15 @@ static void dw_mipi_dsi_vertical_timing_config(struct dw_mipi_dsi *dsi,
 
 static void dw_mipi_dsi_dphy_timing_config(struct dw_mipi_dsi *dsi)
 {
+	const struct dw_mipi_dsi_phy_ops *phy_ops = dsi->plat_data->phy_ops;
+	struct dw_mipi_dsi_dphy_timing timing;
 	u32 hw_version;
+	int ret;
+
+	ret = phy_ops->get_timing(dsi->plat_data->priv_data,
+				  dsi->lane_mbps, &timing);
+	if (ret)
+		DRM_DEV_ERROR(dsi->dev, "Retrieving phy timings failed\n");
 
 	/*
 	 * TODO dw drv improvements
@@ -731,16 +739,20 @@ static void dw_mipi_dsi_dphy_timing_config(struct dw_mipi_dsi *dsi)
 	hw_version = dsi_read(dsi, DSI_VERSION) & VERSION;
 
 	if (hw_version >= HWVER_131) {
-		dsi_write(dsi, DSI_PHY_TMR_CFG, PHY_HS2LP_TIME_V131(0x40) |
-			  PHY_LP2HS_TIME_V131(0x40));
+		dsi_write(dsi, DSI_PHY_TMR_CFG,
+			  PHY_HS2LP_TIME_V131(timing.data_hs2lp) |
+			  PHY_LP2HS_TIME_V131(timing.data_lp2hs));
 		dsi_write(dsi, DSI_PHY_TMR_RD_CFG, MAX_RD_TIME_V131(10000));
 	} else {
-		dsi_write(dsi, DSI_PHY_TMR_CFG, PHY_HS2LP_TIME(0x40) |
-			  PHY_LP2HS_TIME(0x40) | MAX_RD_TIME(10000));
+		dsi_write(dsi, DSI_PHY_TMR_CFG,
+			  PHY_HS2LP_TIME(timing.data_hs2lp) |
+			  PHY_LP2HS_TIME(timing.data_lp2hs) |
+			  MAX_RD_TIME(10000));
 	}
 
-	dsi_write(dsi, DSI_PHY_TMR_LPCLK_CFG, PHY_CLKHS2LP_TIME(0x40)
-		  | PHY_CLKLP2HS_TIME(0x40));
+	dsi_write(dsi, DSI_PHY_TMR_LPCLK_CFG,
+		  PHY_CLKHS2LP_TIME(timing.clk_hs2lp) |
+		  PHY_CLKLP2HS_TIME(timing.clk_lp2hs));
 }
 
 static void dw_mipi_dsi_dphy_interface_config(struct dw_mipi_dsi *dsi)
@@ -990,7 +1002,8 @@ __dw_mipi_dsi_probe(struct platform_device *pdev,
 	dsi->dev = dev;
 	dsi->plat_data = plat_data;
 
-	if (!plat_data->phy_ops->init || !plat_data->phy_ops->get_lane_mbps) {
+	if (!plat_data->phy_ops->init || !plat_data->phy_ops->get_lane_mbps ||
+	    !plat_data->phy_ops->get_timing) {
 		DRM_ERROR("Phy not properly configured\n");
 		return ERR_PTR(-ENODEV);
 	}
diff --git a/drivers/gpu/drm/rockchip/Kconfig b/drivers/gpu/drm/rockchip/Kconfig
index 6f4222f8beeb..4b7a276994ce 100644
--- a/drivers/gpu/drm/rockchip/Kconfig
+++ b/drivers/gpu/drm/rockchip/Kconfig
@@ -46,6 +46,7 @@ config ROCKCHIP_DW_HDMI
 
 config ROCKCHIP_DW_MIPI_DSI
 	bool "Rockchip specific extensions for Synopsys DW MIPI DSI"
+	select GENERIC_PHY_MIPI_DPHY
 	help
 	  This selects support for Rockchip SoC specific extensions
 	  for the Synopsys DesignWare HDMI driver. If you want to
diff --git a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
index bc073ec5c183..9406effe8077 100644
--- a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
@@ -559,9 +559,87 @@ dw_mipi_dsi_get_lane_mbps(void *priv_data, const struct drm_display_mode *mode,
 	return 0;
 }
 
+struct hstt {
+	unsigned int maxfreq;
+	struct dw_mipi_dsi_dphy_timing timing;
+};
+
+#define HSTT(_maxfreq, _c_lp2hs, _c_hs2lp, _d_lp2hs, _d_hs2lp)	\
+{					\
+	.maxfreq = _maxfreq,		\
+	.timing = {			\
+		.clk_lp2hs = _c_lp2hs,	\
+		.clk_hs2lp = _c_hs2lp,	\
+		.data_lp2hs = _d_lp2hs,	\
+		.data_hs2lp = _d_hs2lp,	\
+	}				\
+}
+
+/* Table A-3 High-Speed Transition Times */
+struct hstt hstt_table[] = {
+	HSTT(  90,  32, 20,  26, 13),
+	HSTT( 100,  35, 23,  28, 14),
+	HSTT( 110,  32, 22,  26, 13),
+	HSTT( 130,  31, 20,  27, 13),
+	HSTT( 140,  33, 22,  26, 14),
+	HSTT( 150,  33, 21,  26, 14),
+	HSTT( 170,  32, 20,  27, 13),
+	HSTT( 180,  36, 23,  30, 15),
+	HSTT( 200,  40, 22,  33, 15),
+	HSTT( 220,  40, 22,  33, 15),
+	HSTT( 240,  44, 24,  36, 16),
+	HSTT( 250,  48, 24,  38, 17),
+	HSTT( 270,  48, 24,  38, 17),
+	HSTT( 300,  50, 27,  41, 18),
+	HSTT( 330,  56, 28,  45, 18),
+	HSTT( 360,  59, 28,  48, 19),
+	HSTT( 400,  61, 30,  50, 20),
+	HSTT( 450,  67, 31,  55, 21),
+	HSTT( 500,  73, 31,  59, 22),
+	HSTT( 550,  79, 36,  63, 24),
+	HSTT( 600,  83, 37,  68, 25),
+	HSTT( 650,  90, 38,  73, 27),
+	HSTT( 700,  95, 40,  77, 28),
+	HSTT( 750, 102, 40,  84, 28),
+	HSTT( 800, 106, 42,  87, 30),
+	HSTT( 850, 113, 44,  93, 31),
+	HSTT( 900, 118, 47,  98, 32),
+	HSTT( 950, 124, 47, 102, 34),
+	HSTT(1000, 130, 49, 107, 35),
+	HSTT(1050, 135, 51, 111, 37),
+	HSTT(1100, 139, 51, 114, 38),
+	HSTT(1150, 146, 54, 120, 40),
+	HSTT(1200, 153, 57, 125, 41),
+	HSTT(1250, 158, 58, 130, 42),
+	HSTT(1300, 163, 58, 135, 44),
+	HSTT(1350, 168, 60, 140, 45),
+	HSTT(1400, 172, 64, 144, 47),
+	HSTT(1450, 176, 65, 148, 48),
+	HSTT(1500, 181, 66, 153, 50)
+};
+
+static int
+dw_mipi_dsi_phy_get_timing(void *priv_data, unsigned int lane_mbps,
+			   struct dw_mipi_dsi_dphy_timing *timing)
+{
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(hstt_table); i++)
+		if (lane_mbps < hstt_table[i].maxfreq)
+			break;
+
+	if (i == ARRAY_SIZE(hstt_table))
+		i--;
+
+	*timing = hstt_table[i].timing;
+
+	return 0;
+}
+
 static const struct dw_mipi_dsi_phy_ops dw_mipi_dsi_rockchip_phy_ops = {
 	.init = dw_mipi_dsi_phy_init,
 	.get_lane_mbps = dw_mipi_dsi_get_lane_mbps,
+	.get_timing = dw_mipi_dsi_phy_get_timing,
 };
 
 static void dw_mipi_dsi_rockchip_config(struct dw_mipi_dsi_rockchip *dsi,
diff --git a/drivers/gpu/drm/stm/dw_mipi_dsi-stm.c b/drivers/gpu/drm/stm/dw_mipi_dsi-stm.c
index a03a642c147c..5c97e09bbfa0 100644
--- a/drivers/gpu/drm/stm/dw_mipi_dsi-stm.c
+++ b/drivers/gpu/drm/stm/dw_mipi_dsi-stm.c
@@ -306,11 +306,24 @@ dw_mipi_dsi_get_lane_mbps(void *priv_data, const struct drm_display_mode *mode,
 	return 0;
 }
 
+static int
+dw_mipi_dsi_phy_get_timing(void *priv_data, unsigned int lane_mbps,
+			   struct dw_mipi_dsi_dphy_timing *timing)
+{
+	timing->clk_hs2lp = 0x40;
+	timing->clk_lp2hs = 0x40;
+	timing->data_hs2lp = 0x40;
+	timing->data_lp2hs = 0x40;
+
+	return 0;
+}
+
 static const struct dw_mipi_dsi_phy_ops dw_mipi_dsi_stm_phy_ops = {
 	.init = dw_mipi_dsi_phy_init,
 	.power_on = dw_mipi_dsi_phy_power_on,
 	.power_off = dw_mipi_dsi_phy_power_off,
 	.get_lane_mbps = dw_mipi_dsi_get_lane_mbps,
+	.get_timing = dw_mipi_dsi_phy_get_timing,
 };
 
 static struct dw_mipi_dsi_plat_data dw_mipi_dsi_stm_plat_data = {
diff --git a/include/drm/bridge/dw_mipi_dsi.h b/include/drm/bridge/dw_mipi_dsi.h
index 94cc64a342e1..b0e390b3288e 100644
--- a/include/drm/bridge/dw_mipi_dsi.h
+++ b/include/drm/bridge/dw_mipi_dsi.h
@@ -19,6 +19,13 @@ struct dw_mipi_dsi;
 struct mipi_dsi_device;
 struct platform_device;
 
+struct dw_mipi_dsi_dphy_timing {
+	u16 data_hs2lp;
+	u16 data_lp2hs;
+	u16 clk_hs2lp;
+	u16 clk_lp2hs;
+};
+
 struct dw_mipi_dsi_phy_ops {
 	int (*init)(void *priv_data);
 	void (*power_on)(void *priv_data);
@@ -27,6 +34,8 @@ struct dw_mipi_dsi_phy_ops {
 			     const struct drm_display_mode *mode,
 			     unsigned long mode_flags, u32 lanes, u32 format,
 			     unsigned int *lane_mbps);
+	int (*get_timing)(void *priv_data, unsigned int lane_mbps,
+			  struct dw_mipi_dsi_dphy_timing *timing);
 };
 
 struct dw_mipi_dsi_host_ops {
-- 
2.24.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D29A3116F01
	for <lists+linux-rockchip@lfdr.de>; Mon,  9 Dec 2019 15:32:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uzVzMvymb8oD4gwWPx4pdTaJKA8Lv/HI9Ape8QICLMY=; b=OIQpZVfO9ErRLR
	mEA9p9zv+Kmy3O8g4eBqswTzvIKTo1dgKUvlKd8BnyClMMQPhw4Xegk8/e0dTq24IKjctAsb032iC
	FHAHJcAk+OMJ/8Xxs5IW7C2UXYVoC9ven8ZlyVdqTVP4dVtuaKRefi6/wwQp8gvMDQtnz98fU+sau
	Klxe5GIhafmN+aNCBXn5DX3z8hAutnDckRTU2gjwg/QJ95kc45evjQOfPSsUcnluuVBHK06IbW1t4
	c6ugR1nWTwcxGy1SkaS8sc9yGL1OvAaL8EVdMWUM1AggfhdHTJFAfSyVgUhClwtj/DvoD64KkOhnY
	+wBYwzIH9FAYl9cGdQmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieK5a-0006pO-Oz; Mon, 09 Dec 2019 14:32:42 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieK5S-0006gR-PA
 for linux-rockchip@lists.infradead.org; Mon, 09 Dec 2019 14:32:38 +0000
Received: from ip5f5a6266.dynamic.kabel-deutschland.de ([95.90.98.102]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1ieK58-0000zC-N0; Mon, 09 Dec 2019 15:32:14 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: a.hajda@samsung.com
Subject: [PATCH v5 2/6] drm/bridge/synopsys: dsi: move phy_ops callbacks
 around panel enablement
Date: Mon,  9 Dec 2019 15:31:26 +0100
Message-Id: <20191209143130.4553-3-heiko@sntech.de>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191209143130.4553-1-heiko@sntech.de>
References: <20191209143130.4553-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_063234_981243_C6268D23 
X-CRM114-Status: GOOD (  11.17  )
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

If implementation-specific phy_ops need to be defined they probably
should be enabled before trying to talk to the panel and disabled only
after the panel was disabled.

Right now they are enabled last and disabled first, so might make it
impossible to talk to some panels - example for this being the px30
with an external Innosilicon dphy that needs the phy to be enabled
to transfer commands to the panel.

So move the calls appropriately.

changed in v5:
- rebased on top of 5.5-rc1
- merged with dsi timing change to prevent ordering conflicts

Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
Reviewed-by: Neil Armstrong <narmstrong@baylibre.com>
Tested-by: Yannick Fertre <yannick.fertre@st.com>
Reviewed-by: Philippe Cornu <philippe.cornu@st.com>
---
 drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c | 13 ++++++-------
 1 file changed, 6 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c b/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
index bfe0061e54a2..b18351b6760a 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
+++ b/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
@@ -810,9 +810,6 @@ static void dw_mipi_dsi_bridge_post_disable(struct drm_bridge *bridge)
 	struct dw_mipi_dsi *dsi = bridge_to_dsi(bridge);
 	const struct dw_mipi_dsi_phy_ops *phy_ops = dsi->plat_data->phy_ops;
 
-	if (phy_ops->power_off)
-		phy_ops->power_off(dsi->plat_data->priv_data);
-
 	/*
 	 * Switch to command mode before panel-bridge post_disable &
 	 * panel unprepare.
@@ -829,6 +826,9 @@ static void dw_mipi_dsi_bridge_post_disable(struct drm_bridge *bridge)
 	 */
 	dsi->panel_bridge->funcs->post_disable(dsi->panel_bridge);
 
+	if (phy_ops->power_off)
+		phy_ops->power_off(dsi->plat_data->priv_data);
+
 	if (dsi->slave) {
 		dw_mipi_dsi_disable(dsi->slave);
 		clk_disable_unprepare(dsi->slave->pclk);
@@ -895,6 +895,9 @@ static void dw_mipi_dsi_mode_set(struct dw_mipi_dsi *dsi,
 
 	/* Switch to cmd mode for panel-bridge pre_enable & panel prepare */
 	dw_mipi_dsi_set_mode(dsi, 0);
+
+	if (phy_ops->power_on)
+		phy_ops->power_on(dsi->plat_data->priv_data);
 }
 
 static void dw_mipi_dsi_bridge_mode_set(struct drm_bridge *bridge,
@@ -911,15 +914,11 @@ static void dw_mipi_dsi_bridge_mode_set(struct drm_bridge *bridge,
 static void dw_mipi_dsi_bridge_enable(struct drm_bridge *bridge)
 {
 	struct dw_mipi_dsi *dsi = bridge_to_dsi(bridge);
-	const struct dw_mipi_dsi_phy_ops *phy_ops = dsi->plat_data->phy_ops;
 
 	/* Switch to video mode for panel-bridge enable & panel enable */
 	dw_mipi_dsi_set_mode(dsi, MIPI_DSI_MODE_VIDEO);
 	if (dsi->slave)
 		dw_mipi_dsi_set_mode(dsi->slave, MIPI_DSI_MODE_VIDEO);
-
-	if (phy_ops->power_on)
-		phy_ops->power_on(dsi->plat_data->priv_data);
 }
 
 static enum drm_mode_status
-- 
2.24.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

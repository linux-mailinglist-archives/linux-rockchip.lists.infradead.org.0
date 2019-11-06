Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1B66F1512
	for <lists+linux-rockchip@lfdr.de>; Wed,  6 Nov 2019 12:27:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OvWSEtDx764X2bGsFrELbfgoPeck1kUQFCFDsFncf2E=; b=K1gltgWshzihdz
	UhnU23llvQ6ldlAmFnO1QmVNaMRw9h03NTKmCS1vQZmY6BMqnKhibatkDYmgSelUFHgTXYO82833h
	DIZN8mJYNSSiy4ED75d6aU8X9HQG4MjHVt4sFrTkujHFpFMWKWROVjlSAp0DY0QE9//QH66ne2f4s
	ejBRLPmxrV+XEmUDecItTajkKoiGCtuaYMqZti9nSuO3Em0gNJpxzbpfPTBWE4MpAsAISnI9l7+Nf
	zwvJoDyr004iJUk+QnQv4fOkxsVi+PpxD+QEuxSU9rnuKOZY0CGz/+59udEMCm9i3a08iWlrW+GaD
	QPtX9sPeu3/zt4VQCW8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSJTL-0003Mb-24; Wed, 06 Nov 2019 11:27:35 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSJT8-0003BE-3f; Wed, 06 Nov 2019 11:27:23 +0000
Received: from [94.134.91.181] (helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <heiko.stuebner@theobroma-systems.com>)
 id 1iSJSo-0004nK-SH; Wed, 06 Nov 2019 12:27:02 +0100
From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
To: dri-devel@lists.freedesktop.org,
	a.hajda@samsung.com
Subject: [PATCH 3/3] drm/rockchip: dsi: add px30 support
Date: Wed,  6 Nov 2019 12:26:50 +0100
Message-Id: <20191106112650.8365-3-heiko.stuebner@theobroma-systems.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191106112650.8365-1-heiko.stuebner@theobroma-systems.com>
References: <20191106112650.8365-1-heiko.stuebner@theobroma-systems.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_032722_306008_3595C737 
X-CRM114-Status: GOOD (  10.47  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.7 SPF_NEUTRAL            SPF: sender does not match SPF record (neutral)
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, jernej.skrabec@siol.net,
 heiko@sntech.de, jonas@kwiboo.se, linux-kernel@vger.kernel.org,
 narmstrong@baylibre.com, hjc@rock-chips.com, philippe.cornu@st.com,
 yannick.fertre@st.com, linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 Laurent.pinchart@ideasonboard.com,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 linux-arm-kernel@lists.infradead.org, christoph.muellner@theobroma-systems.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Add the compatible and GRF definitions for the PX30 soc.

Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
---
 .../gpu/drm/rockchip/dw-mipi-dsi-rockchip.c   | 27 +++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
index 99ec625e0448..aeadeda0febc 100644
--- a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
@@ -140,6 +140,12 @@
 #define DW_MIPI_NEEDS_PHY_CFG_CLK	BIT(0)
 #define DW_MIPI_NEEDS_GRF_CLK		BIT(1)
 
+#define PX30_GRF_PD_VO_CON1		0x0438
+#define PX30_DSI_FORCETXSTOPMODE	(0xf << 7)
+#define PX30_DSI_FORCERXMODE		BIT(6)
+#define PX30_DSI_TURNDISABLE		BIT(5)
+#define PX30_DSI_LCDC_SEL		BIT(0)
+
 #define RK3288_GRF_SOC_CON6		0x025c
 #define RK3288_DSI0_LCDC_SEL		BIT(6)
 #define RK3288_DSI1_LCDC_SEL		BIT(9)
@@ -1039,6 +1045,24 @@ static int dw_mipi_dsi_rockchip_remove(struct platform_device *pdev)
 	return 0;
 }
 
+static const struct rockchip_dw_dsi_chip_data px30_chip_data[] = {
+	{
+		.reg = 0xff450000,
+		.lcdsel_grf_reg = PX30_GRF_PD_VO_CON1,
+		.lcdsel_big = HIWORD_UPDATE(0, PX30_DSI_LCDC_SEL),
+		.lcdsel_lit = HIWORD_UPDATE(PX30_DSI_LCDC_SEL,
+					    PX30_DSI_LCDC_SEL),
+
+		.lanecfg1_grf_reg = PX30_GRF_PD_VO_CON1,
+		.lanecfg1 = HIWORD_UPDATE(0, PX30_DSI_TURNDISABLE |
+					     PX30_DSI_FORCERXMODE |
+					     PX30_DSI_FORCETXSTOPMODE),
+
+		.max_data_lanes = 4,
+	},
+	{ /* sentinel */ }
+};
+
 static const struct rockchip_dw_dsi_chip_data rk3288_chip_data[] = {
 	{
 		.reg = 0xff960000,
@@ -1107,6 +1131,9 @@ static const struct rockchip_dw_dsi_chip_data rk3399_chip_data[] = {
 
 static const struct of_device_id dw_mipi_dsi_rockchip_dt_ids[] = {
 	{
+	 .compatible = "rockchip,px30-mipi-dsi",
+	 .data = &px30_chip_data,
+	}, {
 	 .compatible = "rockchip,rk3288-mipi-dsi",
 	 .data = &rk3288_chip_data,
 	}, {
-- 
2.23.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

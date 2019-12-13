Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFB8F11E9E7
	for <lists+linux-rockchip@lfdr.de>; Fri, 13 Dec 2019 19:13:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KNOJz/2s4r29IawR5vxCPJbYTBo7sV7YqcBbeRHw+fE=; b=ZQpqIEd1cMI9Cu
	785N4af27LJg1dJgf9SM8iMgOuTpqg17yEjmXovFK1znzgRbqOQfsdm18ZiP+hZpT4AFfUJJfgJEM
	3yIXtQ2HwNGKgM3KFzUe5Qs1tvhvC4R0oESAxBNeiztHZrFmLNMdJxe+xdadIz2V1sq3QgkZrqSyh
	GhJmLP7HocAead/12s+ZvrG41qAiL0iLDMKq9j9CMFTWZXRUFW/QejiX4Ma5fm1JWvQWxnHzMERtO
	2czn9j1jd1a3NTkIWhmbi6T3umz3Gcx5BOKX/tnG0K60ykF95+tLjp2KDoxvvmSSZSByG2oi9QYeK
	K5Fai0qbsD0QgOnU98yA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifpRN-00025g-7o; Fri, 13 Dec 2019 18:13:25 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifpP9-0008OT-Qt; Fri, 13 Dec 2019 18:11:10 +0000
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id A4950200012;
 Fri, 13 Dec 2019 18:11:03 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 <devicetree@vger.kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 <linux-rockchip@lists.infradead.org>, Daniel Vetter <daniel@ffwll.ch>,
 David Airlie <airlied@linux.ie>, Sandy Huang <hjc@rock-chips.com>
Subject: [PATCH 05/12] drm/rockchip: lvds: Change platform data
Date: Fri, 13 Dec 2019 19:10:44 +0100
Message-Id: <20191213181051.25983-6-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191213181051.25983-1-miquel.raynal@bootlin.com>
References: <20191213181051.25983-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_101108_140094_C63C2AF8 
X-CRM114-Status: GOOD (  15.46  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: dri-devel@lists.freedesktop.org,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Prepare the introduction of PX30 support by using
drm_encoder_helper_funcs as platform data instead of multiple register
names which are specific to rk3288 and not generic to all Rockchip
IPs. This way adding support for a new flavor of a similar IP will be
a matter of adding the relevant helper funcs.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/gpu/drm/rockchip/rockchip_lvds.c | 32 ++++++++----------------
 drivers/gpu/drm/rockchip/rockchip_lvds.h |  3 +++
 2 files changed, 14 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_lvds.c b/drivers/gpu/drm/rockchip/rockchip_lvds.c
index 34e5d0b1172e..262fec61eb78 100644
--- a/drivers/gpu/drm/rockchip/rockchip_lvds.c
+++ b/drivers/gpu/drm/rockchip/rockchip_lvds.c
@@ -39,16 +39,10 @@
 
 /**
  * rockchip_lvds_soc_data - rockchip lvds Soc private data
- * @ch1_offset: lvds channel 1 registe offset
- * grf_soc_con6: general registe offset for LVDS contrl
- * grf_soc_con7: general registe offset for LVDS contrl
- * has_vop_sel: to indicate whether need to choose from different VOP.
+ * @helper_funcs: LVDS connector helper functions
  */
 struct rockchip_lvds_soc_data {
-	u32 ch1_offset;
-	int grf_soc_con6;
-	int grf_soc_con7;
-	bool has_vop_sel;
+	const struct drm_encoder_helper_funcs *helper_funcs;
 };
 
 struct rockchip_lvds {
@@ -73,7 +67,7 @@ static inline void rk3288_writel(struct rockchip_lvds *lvds, u32 offset,
 	writel_relaxed(val, lvds->regs + offset);
 	if (lvds->output == DISPLAY_OUTPUT_LVDS)
 		return;
-	writel_relaxed(val, lvds->regs + offset + lvds->soc_data->ch1_offset);
+	writel_relaxed(val, lvds->regs + offset + RK3288_LVDS_CH1_OFFSET);
 }
 
 static inline int rockchip_lvds_name_to_format(const char *s)
@@ -188,7 +182,7 @@ static void rk3288_lvds_poweroff(struct rockchip_lvds *lvds)
 		      RK3288_LVDS_CFG_REGC_PLL_ENABLE);
 	val = LVDS_DUAL | LVDS_TTL_EN | LVDS_CH0_EN | LVDS_CH1_EN | LVDS_PWRDN;
 	val |= val << 16;
-	ret = regmap_write(lvds->grf, lvds->soc_data->grf_soc_con7, val);
+	ret = regmap_write(lvds->grf, RK3288_LVDS_GRF_SOC_CON7, val);
 	if (ret != 0)
 		DRM_DEV_ERROR(lvds->dev, "Could not write to GRF: %d\n", ret);
 
@@ -242,7 +236,7 @@ static void rk3288_lvds_grf_config(struct drm_encoder *encoder,
 
 	val |= (pin_dclk << 8) | (pin_hsync << 9);
 	val |= (0xffff << 16);
-	ret = regmap_write(lvds->grf, lvds->soc_data->grf_soc_con7, val);
+	ret = regmap_write(lvds->grf, RK3288_LVDS_GRF_SOC_CON7, val);
 	if (ret != 0) {
 		DRM_DEV_ERROR(lvds->dev, "Could not write to GRF: %d\n", ret);
 		return;
@@ -255,9 +249,6 @@ static int rk3288_lvds_set_vop_source(struct rockchip_lvds *lvds,
 	u32 val;
 	int ret;
 
-	if (!lvds->soc_data->has_vop_sel)
-		return 0;
-
 	ret = drm_of_encoder_active_endpoint_id(lvds->dev->of_node, encoder);
 	if (ret < 0)
 		return ret;
@@ -266,7 +257,7 @@ static int rk3288_lvds_set_vop_source(struct rockchip_lvds *lvds,
 	if (ret)
 		val |= RK3288_LVDS_SOC_CON6_SEL_VOP_LIT;
 
-	ret = regmap_write(lvds->grf, lvds->soc_data->grf_soc_con6, val);
+	ret = regmap_write(lvds->grf, RK3288_LVDS_GRF_SOC_CON6, val);
 	if (ret < 0)
 		return ret;
 
@@ -324,10 +315,7 @@ static const struct drm_encoder_funcs rockchip_lvds_encoder_funcs = {
 };
 
 static const struct rockchip_lvds_soc_data rk3288_lvds_data = {
-	.ch1_offset = 0x100,
-	.grf_soc_con6 = 0x025c,
-	.grf_soc_con7 = 0x0260,
-	.has_vop_sel = true,
+	.helper_funcs = &rk3288_lvds_encoder_helper_funcs,
 };
 
 static const struct of_device_id rockchip_lvds_dt_ids[] = {
@@ -418,7 +406,7 @@ static int rockchip_lvds_bind(struct device *dev, struct device *master,
 		goto err_put_remote;
 	}
 
-	drm_encoder_helper_add(encoder, &rk3288_lvds_encoder_helper_funcs);
+	drm_encoder_helper_add(encoder, lvds->soc_data->helper_funcs);
 
 	if (lvds->panel) {
 		connector = &lvds->connector;
@@ -479,8 +467,10 @@ static void rockchip_lvds_unbind(struct device *dev, struct device *master,
 				void *data)
 {
 	struct rockchip_lvds *lvds = dev_get_drvdata(dev);
+	const struct drm_encoder_helper_funcs *encoder_funcs;
 
-	rk3288_lvds_encoder_disable(&lvds->encoder);
+	encoder_funcs = lvds->soc_data->helper_funcs;
+	encoder_funcs->disable(&lvds->encoder);
 	if (lvds->panel)
 		drm_panel_detach(lvds->panel);
 	pm_runtime_disable(dev);
diff --git a/drivers/gpu/drm/rockchip/rockchip_lvds.h b/drivers/gpu/drm/rockchip/rockchip_lvds.h
index 1387bcbc4bc0..e41e9ab3c306 100644
--- a/drivers/gpu/drm/rockchip/rockchip_lvds.h
+++ b/drivers/gpu/drm/rockchip/rockchip_lvds.h
@@ -72,6 +72,9 @@
 #define RK3288_LVDS_CFG_REG21_TX_DISABLE	0x00
 #define RK3288_LVDS_CH1_OFFSET			0x100
 
+#define RK3288_LVDS_GRF_SOC_CON6		0x025C
+#define RK3288_LVDS_GRF_SOC_CON7		0x0260
+
 /* fbdiv value is split over 2 registers, with bit8 in reg2 */
 #define RK3288_LVDS_PLL_FBDIV_REG2(_fbd) \
 		(_fbd & BIT(8) ? RK3288_LVDS_CH0_REG2_PLL_FBDIV8 : 0)
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41DF612A28F
	for <lists+linux-rockchip@lfdr.de>; Tue, 24 Dec 2019 15:43:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4i8KGqB4bfNzW3UBRGNIowq3zvNdfZWWhjIVO6FfuYA=; b=Wzp9iceSnTPZ9w
	YlvpUHGdVBT3PclbIcJA38ofafhSYiebMCF9XLCpUAD20lF6iY51xM6U61LAtTsLLvoHif654sIq+
	DxAKUz6h23bMbngwonPPEYZSK0oRQHYTdL6lcl8fGqUGVHrYW1CZ/DRcXHiXoJMOhlYAqGLVCZFoq
	C/vHZ/Qq8H/WSrd6cXZkN/fFyoscNLNUIpNFhbn5K5xxiVO/zaUOc1P5glEy60ex4jMG25grlxzWp
	VxfQbmQBqpRrVUW4rNvIbYqMMFEHY8c0IIjPGw46eyWGgtL3GlJePomjMsyEA0z1pHAJe2DP//LDO
	i8ZH92zuTRGOWHeK82Ew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijlOl-0006Fu-NX; Tue, 24 Dec 2019 14:42:59 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijlLL-0001xQ-Ki; Tue, 24 Dec 2019 14:39:30 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 7EF70E000E;
 Tue, 24 Dec 2019 14:39:24 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Sandy Huang <hjc@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>,
 <linux-rockchip@lists.infradead.org>
Subject: [PATCH v2 08/11] drm/rockchip: lvds: Pack functions together
Date: Tue, 24 Dec 2019 15:38:57 +0100
Message-Id: <20191224143900.23567-9-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191224143900.23567-1-miquel.raynal@bootlin.com>
References: <20191224143900.23567-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191224_063928_001288_E337B199 
X-CRM114-Status: GOOD (  12.24  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.196 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Rob Herring <robh+dt@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Reorganize a bit the functions order to clarify the driver. This
change only moves functions around, there is no functional change.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/gpu/drm/rockchip/rockchip_lvds.c | 90 ++++++++++++------------
 1 file changed, 45 insertions(+), 45 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_lvds.c b/drivers/gpu/drm/rockchip/rockchip_lvds.c
index 40fa49fe9fa5..f2ece09e4e24 100644
--- a/drivers/gpu/drm/rockchip/rockchip_lvds.c
+++ b/drivers/gpu/drm/rockchip/rockchip_lvds.c
@@ -97,6 +97,40 @@ static inline int rockchip_lvds_name_to_output(const char *s)
 	return -EINVAL;
 }
 
+static const struct drm_connector_funcs rockchip_lvds_connector_funcs = {
+	.fill_modes = drm_helper_probe_single_connector_modes,
+	.destroy = drm_connector_cleanup,
+	.reset = drm_atomic_helper_connector_reset,
+	.atomic_duplicate_state = drm_atomic_helper_connector_duplicate_state,
+	.atomic_destroy_state = drm_atomic_helper_connector_destroy_state,
+};
+
+static int rockchip_lvds_connector_get_modes(struct drm_connector *connector)
+{
+	struct rockchip_lvds *lvds = connector_to_lvds(connector);
+	struct drm_panel *panel = lvds->panel;
+
+	return drm_panel_get_modes(panel);
+}
+
+static const
+struct drm_connector_helper_funcs rockchip_lvds_connector_helper_funcs = {
+	.get_modes = rockchip_lvds_connector_get_modes,
+};
+
+static int
+rockchip_lvds_encoder_atomic_check(struct drm_encoder *encoder,
+				   struct drm_crtc_state *crtc_state,
+				   struct drm_connector_state *conn_state)
+{
+	struct rockchip_crtc_state *s = to_rockchip_crtc_state(crtc_state);
+
+	s->output_mode = ROCKCHIP_OUT_MODE_P888;
+	s->output_type = DRM_MODE_CONNECTOR_LVDS;
+
+	return 0;
+}
+
 static int rk3288_lvds_poweron(struct rockchip_lvds *lvds)
 {
 	int ret;
@@ -193,27 +227,6 @@ static void rk3288_lvds_poweroff(struct rockchip_lvds *lvds)
 	clk_disable(lvds->pclk);
 }
 
-static const struct drm_connector_funcs rockchip_lvds_connector_funcs = {
-	.fill_modes = drm_helper_probe_single_connector_modes,
-	.destroy = drm_connector_cleanup,
-	.reset = drm_atomic_helper_connector_reset,
-	.atomic_duplicate_state = drm_atomic_helper_connector_duplicate_state,
-	.atomic_destroy_state = drm_atomic_helper_connector_destroy_state,
-};
-
-static int rockchip_lvds_connector_get_modes(struct drm_connector *connector)
-{
-	struct rockchip_lvds *lvds = connector_to_lvds(connector);
-	struct drm_panel *panel = lvds->panel;
-
-	return drm_panel_get_modes(panel);
-}
-
-static const
-struct drm_connector_helper_funcs rockchip_lvds_connector_helper_funcs = {
-	.get_modes = rockchip_lvds_connector_get_modes,
-};
-
 static int rk3288_lvds_grf_config(struct drm_encoder *encoder,
 				  struct drm_display_mode *mode)
 {
@@ -267,19 +280,6 @@ static int rk3288_lvds_set_vop_source(struct rockchip_lvds *lvds,
 	return 0;
 }
 
-static int
-rockchip_lvds_encoder_atomic_check(struct drm_encoder *encoder,
-				   struct drm_crtc_state *crtc_state,
-				   struct drm_connector_state *conn_state)
-{
-	struct rockchip_crtc_state *s = to_rockchip_crtc_state(crtc_state);
-
-	s->output_mode = ROCKCHIP_OUT_MODE_P888;
-	s->output_type = DRM_MODE_CONNECTOR_LVDS;
-
-	return 0;
-}
-
 static void rk3288_lvds_encoder_enable(struct drm_encoder *encoder)
 {
 	struct rockchip_lvds *lvds = encoder_to_lvds(encoder);
@@ -321,6 +321,17 @@ static void rk3288_lvds_encoder_disable(struct drm_encoder *encoder)
 	drm_panel_unprepare(lvds->panel);
 }
 
+static const
+struct drm_encoder_helper_funcs rk3288_lvds_encoder_helper_funcs = {
+	.enable = rk3288_lvds_encoder_enable,
+	.disable = rk3288_lvds_encoder_disable,
+	.atomic_check = rockchip_lvds_encoder_atomic_check,
+};
+
+static const struct drm_encoder_funcs rockchip_lvds_encoder_funcs = {
+	.destroy = drm_encoder_cleanup,
+};
+
 static int rk3288_lvds_probe(struct platform_device *pdev,
 			     struct rockchip_lvds *lvds)
 {
@@ -367,17 +378,6 @@ static int rk3288_lvds_probe(struct platform_device *pdev,
 	return 0;
 }
 
-static const
-struct drm_encoder_helper_funcs rk3288_lvds_encoder_helper_funcs = {
-	.enable = rk3288_lvds_encoder_enable,
-	.disable = rk3288_lvds_encoder_disable,
-	.atomic_check = rockchip_lvds_encoder_atomic_check,
-};
-
-static const struct drm_encoder_funcs rockchip_lvds_encoder_funcs = {
-	.destroy = drm_encoder_cleanup,
-};
-
 static const struct rockchip_lvds_soc_data rk3288_lvds_data = {
 	.probe = rk3288_lvds_probe,
 	.helper_funcs = &rk3288_lvds_encoder_helper_funcs,
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

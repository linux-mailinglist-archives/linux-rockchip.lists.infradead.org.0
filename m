Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 790BF11E9F1
	for <lists+linux-rockchip@lfdr.de>; Fri, 13 Dec 2019 19:14:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eXvmFfOzWOOIpEhpXMOEgirQBDcQ9VYHvW0YBAV+U2E=; b=aiLFJScJRzcMHU
	HDmBJMVw2D5lZCFzVQiDNisW4aOwQs/YUFEmQ3h1NwlzFGLicXWcFqUf/B4JsUP/yCa9BnX3gilEQ
	usTIJFnhkzpP/z9m8m9xuaAb9JsU7qpLkdsBrpoIOhlyhkGgFNeSyXNCjDdVKlbYXIJuoyTml1ir+
	jlHRnYHpGDZP8PTlCTHGNdp9XL+1YKpPjuKYrxy2Y1f/MhATtf4cY/18O8QGnmnNbrGL7+VO9UFEb
	NIaPDlbNa0IpdZW2kEm7lw2qIQ1X8tKGsJ6txxV4oeffMtAQVpFW35q5ZI0infgrX0ZVh5HBxwqTu
	xGGcII+xmSlB0BB9XtsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifpSJ-00031z-BZ; Fri, 13 Dec 2019 18:14:23 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifpPD-0008SB-NO; Fri, 13 Dec 2019 18:11:13 +0000
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id 747D920000E;
 Fri, 13 Dec 2019 18:11:08 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 <devicetree@vger.kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 <linux-rockchip@lists.infradead.org>, Daniel Vetter <daniel@ffwll.ch>,
 David Airlie <airlied@linux.ie>, Sandy Huang <hjc@rock-chips.com>
Subject: [PATCH 07/12] drm/rockchip: lvds: Helpers should return decent values
Date: Fri, 13 Dec 2019 19:10:46 +0100
Message-Id: <20191213181051.25983-8-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191213181051.25983-1-miquel.raynal@bootlin.com>
References: <20191213181051.25983-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_101111_932718_E2F0A8E7 
X-CRM114-Status: GOOD (  12.45  )
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

Return errors instead of returning void from internal helpers. When
these helpers are called, check the returned value and print an error
message in this case.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/gpu/drm/rockchip/rockchip_lvds.c | 31 ++++++++++++++++++------
 1 file changed, 23 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_lvds.c b/drivers/gpu/drm/rockchip/rockchip_lvds.c
index 0d2902b0d990..6365a2c883c3 100644
--- a/drivers/gpu/drm/rockchip/rockchip_lvds.c
+++ b/drivers/gpu/drm/rockchip/rockchip_lvds.c
@@ -215,8 +215,8 @@ struct drm_connector_helper_funcs rockchip_lvds_connector_helper_funcs = {
 	.get_modes = rockchip_lvds_connector_get_modes,
 };
 
-static void rk3288_lvds_grf_config(struct drm_encoder *encoder,
-				   struct drm_display_mode *mode)
+static int rk3288_lvds_grf_config(struct drm_encoder *encoder,
+				  struct drm_display_mode *mode)
 {
 	struct rockchip_lvds *lvds = encoder_to_lvds(encoder);
 	u8 pin_hsync = (mode->flags & DRM_MODE_FLAG_PHSYNC) ? 1 : 0;
@@ -241,10 +241,10 @@ static void rk3288_lvds_grf_config(struct drm_encoder *encoder,
 	val |= (pin_dclk << 8) | (pin_hsync << 9);
 	val |= (0xffff << 16);
 	ret = regmap_write(lvds->grf, RK3288_LVDS_GRF_SOC_CON7, val);
-	if (ret != 0) {
+	if (ret)
 		DRM_DEV_ERROR(lvds->dev, "Could not write to GRF: %d\n", ret);
-		return;
-	}
+
+	return ret;
 }
 
 static int rk3288_lvds_set_vop_source(struct rockchip_lvds *lvds,
@@ -288,13 +288,28 @@ static void rk3288_lvds_encoder_enable(struct drm_encoder *encoder)
 	int ret;
 
 	drm_panel_prepare(lvds->panel);
+
 	ret = rk3288_lvds_poweron(lvds);
 	if (ret < 0) {
-		DRM_DEV_ERROR(lvds->dev, "failed to power on lvds: %d\n", ret);
+		DRM_DEV_ERROR(lvds->dev, "failed to power on LVDS: %d\n", ret);
 		drm_panel_unprepare(lvds->panel);
+		return;
 	}
-	rk3288_lvds_grf_config(encoder, mode);
-	rk3288_lvds_set_vop_source(lvds, encoder);
+
+	ret = rk3288_lvds_grf_config(encoder, mode);
+	if (ret) {
+		DRM_DEV_ERROR(lvds->dev, "failed to configure LVDS: %d\n", ret);
+		drm_panel_unprepare(lvds->panel);
+		return;
+	}
+
+	ret = rk3288_lvds_set_vop_source(lvds, encoder);
+	if (ret) {
+		DRM_DEV_ERROR(lvds->dev, "failed to set VOP source: %d\n", ret);
+		drm_panel_unprepare(lvds->panel);
+		return;
+	}
+
 	drm_panel_enable(lvds->panel);
 }
 
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

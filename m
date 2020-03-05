Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63C1A17A9FF
	for <lists+linux-rockchip@lfdr.de>; Thu,  5 Mar 2020 17:02:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I7vZsYqG/TYwrnt1WO40WVoe43YHvtRqdZQbGGTwIm4=; b=rFiuJa6pufkz7k
	35V8lsT5/CV2or6HHNg6aDSu9TElIN62nN4bmKakmoeXgpiqs5Ysr2H6cXruTrDBGkFeQoMbqREQj
	ru0N5sZgmBJdH0FxMTuZ7hrFynBylZusjLro6YxA6pZ15W1780L3Z1NXC2aXoOQC6LospG4P375X5
	uO5sU9T2LIg4ntVVDALGciOkN1BD8G43E2GyM0LrzoDXlvo3ZLZYHdq7If6H1o8ZfQ1/IRMtJ8Lmk
	IWno2meXGGWQt4PDT9FHGRomLzvlqmRh0jVLq3M1kr9/tTGLefKP7wwIDzeiBb2zDrtUEUOemhbmx
	b9ewcMF/qTDp9LRhvIDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9swt-0000Tj-9Y; Thu, 05 Mar 2020 16:02:11 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9sv7-0007C2-0X; Thu, 05 Mar 2020 16:00:22 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 27703B12D;
 Thu,  5 Mar 2020 16:00:18 +0000 (UTC)
From: Thomas Zimmermann <tzimmermann@suse.de>
To: airlied@linux.ie, daniel@ffwll.ch, sam@ravnborg.org, abrodkin@synopsys.com,
 bbrezillon@kernel.org, nicolas.ferre@microchip.com,
 alexandre.belloni@bootlin.com, ludovic.desroches@microchip.com,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org,
 jingoohan1@gmail.com, inki.dae@samsung.com, jy0922.shim@samsung.com,
 sw0312.kim@samsung.com, kyungmin.park@samsung.com, kgene@kernel.org,
 krzk@kernel.org, stefan@agner.ch, alison.wang@nxp.com,
 patrik.r.jakobsson@gmail.com, xinliang.liu@linaro.org,
 zourongrong@gmail.com, john.stultz@linaro.org,
 kong.kongxinwei@hisilicon.com, puck.chen@hisilicon.com,
 linux@armlinux.org.uk, p.zabel@pengutronix.de, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 linux-imx@nxp.com, paul@crapouillou.net, ck.hu@mediatek.com,
 matthias.bgg@gmail.com, laurent.pinchart@ideasonboard.com,
 kieran.bingham+renesas@ideasonboard.com, hjc@rock-chips.com,
 heiko@sntech.de, wens@csie.org, jernej.skrabec@siol.net,
 thierry.reding@gmail.com, jonathanh@nvidia.com, jsarha@ti.com,
 tomi.valkeinen@ti.com, eric@anholt.net, kraxel@redhat.com,
 rodrigosiqueiramelo@gmail.com, hamohammed.sa@gmail.com,
 sebastian.reichel@collabora.com
Subject: [PATCH 17/22] drm/tilcdc: Use simple encoder
Date: Thu,  5 Mar 2020 16:59:45 +0100
Message-Id: <20200305155950.2705-18-tzimmermann@suse.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200305155950.2705-1-tzimmermann@suse.de>
References: <20200305155950.2705-1-tzimmermann@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_080021_401549_5289EA10 
X-CRM114-Status: GOOD (  12.54  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-samsung-soc@vger.kernel.org, dri-devel@lists.freedesktop.org,
 virtualization@lists.linux-foundation.org, linux-rockchip@lists.infradead.org,
 linux-mediatek@lists.infradead.org, Thomas Zimmermann <tzimmermann@suse.de>,
 linux-tegra@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

The tilcdc driver uses empty implementations for its encoders. Replace
the code with the generic simple encoder.

Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
---
 drivers/gpu/drm/tilcdc/tilcdc_external.c | 10 +++-------
 drivers/gpu/drm/tilcdc/tilcdc_panel.c    |  8 ++------
 2 files changed, 5 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/tilcdc/tilcdc_external.c b/drivers/gpu/drm/tilcdc/tilcdc_external.c
index 28b7f703236e..b177525588c1 100644
--- a/drivers/gpu/drm/tilcdc/tilcdc_external.c
+++ b/drivers/gpu/drm/tilcdc/tilcdc_external.c
@@ -10,6 +10,7 @@
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_bridge.h>
 #include <drm/drm_of.h>
+#include <drm/drm_simple_kms_helper.h>
 
 #include "tilcdc_drv.h"
 #include "tilcdc_external.h"
@@ -83,10 +84,6 @@ int tilcdc_add_component_encoder(struct drm_device *ddev)
 	return 0;
 }
 
-static const struct drm_encoder_funcs tilcdc_external_encoder_funcs = {
-	.destroy	= drm_encoder_cleanup,
-};
-
 static
 int tilcdc_attach_bridge(struct drm_device *ddev, struct drm_bridge *bridge)
 {
@@ -131,9 +128,8 @@ int tilcdc_attach_external_device(struct drm_device *ddev)
 	if (!priv->external_encoder)
 		return -ENOMEM;
 
-	ret = drm_encoder_init(ddev, priv->external_encoder,
-			       &tilcdc_external_encoder_funcs,
-			       DRM_MODE_ENCODER_NONE, NULL);
+	ret = drm_simple_encoder_init(ddev, priv->external_encoder,
+				      DRM_MODE_ENCODER_NONE);
 	if (ret) {
 		dev_err(ddev->dev, "drm_encoder_init() failed %d\n", ret);
 		return ret;
diff --git a/drivers/gpu/drm/tilcdc/tilcdc_panel.c b/drivers/gpu/drm/tilcdc/tilcdc_panel.c
index 5584e656b857..12823d60c4e8 100644
--- a/drivers/gpu/drm/tilcdc/tilcdc_panel.c
+++ b/drivers/gpu/drm/tilcdc/tilcdc_panel.c
@@ -16,6 +16,7 @@
 #include <drm/drm_connector.h>
 #include <drm/drm_modeset_helper_vtables.h>
 #include <drm/drm_probe_helper.h>
+#include <drm/drm_simple_kms_helper.h>
 
 #include "tilcdc_drv.h"
 #include "tilcdc_panel.h"
@@ -74,10 +75,6 @@ static void panel_encoder_mode_set(struct drm_encoder *encoder,
 	/* nothing needed */
 }
 
-static const struct drm_encoder_funcs panel_encoder_funcs = {
-		.destroy        = drm_encoder_cleanup,
-};
-
 static const struct drm_encoder_helper_funcs panel_encoder_helper_funcs = {
 		.dpms           = panel_encoder_dpms,
 		.prepare        = panel_encoder_prepare,
@@ -102,8 +99,7 @@ static struct drm_encoder *panel_encoder_create(struct drm_device *dev,
 	encoder = &panel_encoder->base;
 	encoder->possible_crtcs = 1;
 
-	ret = drm_encoder_init(dev, encoder, &panel_encoder_funcs,
-			DRM_MODE_ENCODER_LVDS, NULL);
+	ret = drm_simple_encoder_init(dev, encoder, DRM_MODE_ENCODER_LVDS);
 	if (ret < 0)
 		goto fail;
 
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

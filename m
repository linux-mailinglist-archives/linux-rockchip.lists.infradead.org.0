Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6178717AA0B
	for <lists+linux-rockchip@lfdr.de>; Thu,  5 Mar 2020 17:02:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p+ydIBal3Q6HgNA0H0+GECbgakNWEOCkKmgdp6joGMA=; b=HEREpTRcqf7P/O
	uOtmJYRmD3+DsYnDQw5t4BybpBGwfZ2Io/s/ze7MngEjDVDAqviOEM+L67uv4BP5ccbATq/SDD1tq
	061X34hvaZQaj68pUezKDJB4gqc9mHp2x98V/bvGzgZ6Qrz0uDrgV3B9/jueGJ3ieZLETDJS2cNVc
	c275UHVR66BZ3SNOH3QwmsdguwzT6HKx0gSobzPgF89blce60ly94/Lu4vTZB6PulrCHCAOlGPgsO
	h0jtN8CR9ukiXHyx1L9WT8zDeuDlqQmc7gfeO63quPuzQNEx1u2AQlJiJM6M7tryVT5MI/THOozw8
	MTq8LjGmpJNAjfc8baHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9sxR-0000w2-67; Thu, 05 Mar 2020 16:02:45 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9svE-0007HK-8M; Thu, 05 Mar 2020 16:00:30 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 77B4DB0C6;
 Thu,  5 Mar 2020 16:00:25 +0000 (UTC)
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
Subject: [PATCH 22/22] drm/zte: Use simple encoder
Date: Thu,  5 Mar 2020 16:59:50 +0100
Message-Id: <20200305155950.2705-23-tzimmermann@suse.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200305155950.2705-1-tzimmermann@suse.de>
References: <20200305155950.2705-1-tzimmermann@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_080028_610161_E80D5813 
X-CRM114-Status: GOOD (  12.23  )
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

The zte driver uses empty implementations for its encoders. Replace
the code with the generic simple encoder.

Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
---
 drivers/gpu/drm/zte/zx_hdmi.c  | 8 ++------
 drivers/gpu/drm/zte/zx_tvenc.c | 8 ++------
 drivers/gpu/drm/zte/zx_vga.c   | 8 ++------
 3 files changed, 6 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/zte/zx_hdmi.c b/drivers/gpu/drm/zte/zx_hdmi.c
index b98a1420dcd3..76a16d997a23 100644
--- a/drivers/gpu/drm/zte/zx_hdmi.c
+++ b/drivers/gpu/drm/zte/zx_hdmi.c
@@ -20,6 +20,7 @@
 #include <drm/drm_of.h>
 #include <drm/drm_probe_helper.h>
 #include <drm/drm_print.h>
+#include <drm/drm_simple_kms_helper.h>
 
 #include <sound/hdmi-codec.h>
 
@@ -254,10 +255,6 @@ static const struct drm_encoder_helper_funcs zx_hdmi_encoder_helper_funcs = {
 	.mode_set = zx_hdmi_encoder_mode_set,
 };
 
-static const struct drm_encoder_funcs zx_hdmi_encoder_funcs = {
-	.destroy = drm_encoder_cleanup,
-};
-
 static int zx_hdmi_connector_get_modes(struct drm_connector *connector)
 {
 	struct zx_hdmi *hdmi = to_zx_hdmi(connector);
@@ -313,8 +310,7 @@ static int zx_hdmi_register(struct drm_device *drm, struct zx_hdmi *hdmi)
 
 	encoder->possible_crtcs = VOU_CRTC_MASK;
 
-	drm_encoder_init(drm, encoder, &zx_hdmi_encoder_funcs,
-			 DRM_MODE_ENCODER_TMDS, NULL);
+	drm_simple_encoder_init(drm, encoder, DRM_MODE_ENCODER_TMDS);
 	drm_encoder_helper_add(encoder, &zx_hdmi_encoder_helper_funcs);
 
 	hdmi->connector.polled = DRM_CONNECTOR_POLL_HPD;
diff --git a/drivers/gpu/drm/zte/zx_tvenc.c b/drivers/gpu/drm/zte/zx_tvenc.c
index c598b7daf1f1..d8a89ba383bc 100644
--- a/drivers/gpu/drm/zte/zx_tvenc.c
+++ b/drivers/gpu/drm/zte/zx_tvenc.c
@@ -14,6 +14,7 @@
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_print.h>
 #include <drm/drm_probe_helper.h>
+#include <drm/drm_simple_kms_helper.h>
 
 #include "zx_drm_drv.h"
 #include "zx_tvenc_regs.h"
@@ -218,10 +219,6 @@ static const struct drm_encoder_helper_funcs zx_tvenc_encoder_helper_funcs = {
 	.mode_set = zx_tvenc_encoder_mode_set,
 };
 
-static const struct drm_encoder_funcs zx_tvenc_encoder_funcs = {
-	.destroy = drm_encoder_cleanup,
-};
-
 static int zx_tvenc_connector_get_modes(struct drm_connector *connector)
 {
 	struct zx_tvenc *tvenc = to_zx_tvenc(connector);
@@ -285,8 +282,7 @@ static int zx_tvenc_register(struct drm_device *drm, struct zx_tvenc *tvenc)
 	 */
 	encoder->possible_crtcs = BIT(1);
 
-	drm_encoder_init(drm, encoder, &zx_tvenc_encoder_funcs,
-			 DRM_MODE_ENCODER_TVDAC, NULL);
+	drm_simple_encoder_init(drm, encoder, DRM_MODE_ENCODER_TVDAC);
 	drm_encoder_helper_add(encoder, &zx_tvenc_encoder_helper_funcs);
 
 	connector->interlace_allowed = true;
diff --git a/drivers/gpu/drm/zte/zx_vga.c b/drivers/gpu/drm/zte/zx_vga.c
index c4fa3bbaba78..a7ed7f5ca837 100644
--- a/drivers/gpu/drm/zte/zx_vga.c
+++ b/drivers/gpu/drm/zte/zx_vga.c
@@ -14,6 +14,7 @@
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_print.h>
 #include <drm/drm_probe_helper.h>
+#include <drm/drm_simple_kms_helper.h>
 
 #include "zx_drm_drv.h"
 #include "zx_vga_regs.h"
@@ -72,10 +73,6 @@ static const struct drm_encoder_helper_funcs zx_vga_encoder_helper_funcs = {
 	.disable = zx_vga_encoder_disable,
 };
 
-static const struct drm_encoder_funcs zx_vga_encoder_funcs = {
-	.destroy = drm_encoder_cleanup,
-};
-
 static int zx_vga_connector_get_modes(struct drm_connector *connector)
 {
 	struct zx_vga *vga = to_zx_vga(connector);
@@ -154,8 +151,7 @@ static int zx_vga_register(struct drm_device *drm, struct zx_vga *vga)
 
 	encoder->possible_crtcs = VOU_CRTC_MASK;
 
-	ret = drm_encoder_init(drm, encoder, &zx_vga_encoder_funcs,
-			       DRM_MODE_ENCODER_DAC, NULL);
+	ret = drm_simple_encoder_init(drm, encoder, DRM_MODE_ENCODER_DAC);
 	if (ret) {
 		DRM_DEV_ERROR(dev, "failed to init encoder: %d\n", ret);
 		return ret;
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

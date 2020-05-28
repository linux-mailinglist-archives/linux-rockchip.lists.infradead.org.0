Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE59D1E6ABB
	for <lists+linux-rockchip@lfdr.de>; Thu, 28 May 2020 21:24:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=9KTrcGS/lIpsVFRMa+9Nf9++4q5NI4c5vwte04t/PAc=; b=XQ0piN/80kLEQn9IZb+/5yrSWh
	SudnbzSL6DxS1iv2nEru5ZZ4ctEUdSuJqQQpCFpUMZfDte2a+XIiHS7rf+X1ZxhN3GxFxZXKZ55CY
	y2BpgzkH82GJcVE3Sw4OPl9bXdWpmdTgAOl28uI5czkTgF11gtZtW004ZIxU5+hdHgESA8RvoRd+q
	XY8Z2GK5asdf9U2di3YEiV11dnrQDBx34jQAyekNh5AjxMfqa0WrdEGHVAuvc3UV3tJ+EThNp0Gau
	7ABMVG3tOcB/d7uGyhyhLKJ0puwfkncV4lO7FT1Iw9b5tbqXJYo6vPjykh9R+6GLWAR+bCGUbage2
	xt9qk0lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeO8w-000125-5v; Thu, 28 May 2020 19:24:42 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeO5u-00075X-2N; Thu, 28 May 2020 19:21:45 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id EDF002A41C4
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
To: linux-pm@vger.kernel.org, linux-acpi@vger.kernel.org,
 netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
 platform-driver-x86@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: [PATCH v4 02/11] thermal: Store thermal mode in a dedicated enum
Date: Thu, 28 May 2020 21:20:42 +0200
Message-Id: <20200528192051.28034-3-andrzej.p@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200528192051.28034-1-andrzej.p@collabora.com>
References: <Message-ID: <4493c0e4-51aa-3907-810c-74949ff27ca4@samsung.com>
 <20200528192051.28034-1-andrzej.p@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_122143_095897_8AB526DB 
X-CRM114-Status: GOOD (  13.09  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Emmanuel Grumbach <emmanuel.grumbach@intel.com>,
 Heiko Stuebner <heiko@sntech.de>, "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 Vishal Kulkarni <vishal@chelsio.com>, Luca Coelho <luciano.coelho@intel.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>, kernel@collabora.com,
 Fabio Estevam <festevam@gmail.com>,
 Amit Kucheria <amit.kucheria@verdurent.com>,
 Chunyan Zhang <zhang.lyra@gmail.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Allison Randal <allison@lohutok.net>, NXP Linux Team <linux-imx@nxp.com>,
 Darren Hart <dvhart@infradead.org>, Zhang Rui <rui.zhang@intel.com>,
 Gayatri Kammela <gayatri.kammela@intel.com>, Len Brown <lenb@kernel.org>,
 Johannes Berg <johannes.berg@intel.com>,
 Intel Linux Wireless <linuxwifi@intel.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Ido Schimmel <idosch@mellanox.com>,
 Baolin Wang <baolin.wang7@gmail.com>, Jiri Pirko <jiri@mellanox.com>,
 Orson Zhai <orsonzhai@gmail.com>, Thomas Gleixner <tglx@linutronix.de>,
 Kalle Valo <kvalo@codeaurora.org>,
 Support Opensource <support.opensource@diasemi.com>,
 Enrico Weigelt <info@metux.net>, Peter Kaestle <peter@piie.net>,
 Sebastian Reichel <sre@kernel.org>,
 Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 =?UTF-8?q?Niklas=20S=C3=B6derlund?= <niklas.soderlund@ragnatech.se>,
 Shawn Guo <shawnguo@kernel.org>, "David S . Miller" <davem@davemloft.net>,
 Andy Shevchenko <andy@infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Prepare for storing mode in struct thermal_zone_device.

Signed-off-by: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
---
 drivers/acpi/thermal.c                        | 27 +++++++++----------
 drivers/platform/x86/acerhdf.c                |  8 ++++--
 .../intel/int340x_thermal/int3400_thermal.c   | 18 +++++--------
 3 files changed, 25 insertions(+), 28 deletions(-)

diff --git a/drivers/acpi/thermal.c b/drivers/acpi/thermal.c
index 6de8066ca1e7..fb46070c66d8 100644
--- a/drivers/acpi/thermal.c
+++ b/drivers/acpi/thermal.c
@@ -172,7 +172,7 @@ struct acpi_thermal {
 	struct acpi_thermal_trips trips;
 	struct acpi_handle_list devices;
 	struct thermal_zone_device *thermal_zone;
-	int tz_enabled;
+	enum thermal_device_mode mode;
 	int kelvin_offset;	/* in millidegrees */
 	struct work_struct thermal_check_work;
 };
@@ -500,7 +500,7 @@ static void acpi_thermal_check(void *data)
 {
 	struct acpi_thermal *tz = data;
 
-	if (!tz->tz_enabled)
+	if (tz->mode != THERMAL_DEVICE_ENABLED)
 		return;
 
 	thermal_zone_device_update(tz->thermal_zone,
@@ -534,8 +534,7 @@ static int thermal_get_mode(struct thermal_zone_device *thermal,
 	if (!tz)
 		return -EINVAL;
 
-	*mode = tz->tz_enabled ? THERMAL_DEVICE_ENABLED :
-		THERMAL_DEVICE_DISABLED;
+	*mode = tz->mode;
 
 	return 0;
 }
@@ -544,27 +543,25 @@ static int thermal_set_mode(struct thermal_zone_device *thermal,
 				enum thermal_device_mode mode)
 {
 	struct acpi_thermal *tz = thermal->devdata;
-	int enable;
 
 	if (!tz)
 		return -EINVAL;
 
+	if (mode != THERMAL_DEVICE_DISABLED &&
+	    mode != THERMAL_DEVICE_ENABLED)
+		return -EINVAL;
 	/*
 	 * enable/disable thermal management from ACPI thermal driver
 	 */
-	if (mode == THERMAL_DEVICE_ENABLED)
-		enable = 1;
-	else if (mode == THERMAL_DEVICE_DISABLED) {
-		enable = 0;
+	if (mode == THERMAL_DEVICE_DISABLED)
 		pr_warn("thermal zone will be disabled\n");
-	} else
-		return -EINVAL;
 
-	if (enable != tz->tz_enabled) {
-		tz->tz_enabled = enable;
+	if (mode != tz->mode) {
+		tz->mode = mode;
 		ACPI_DEBUG_PRINT((ACPI_DB_INFO,
 			"%s kernel ACPI thermal control\n",
-			tz->tz_enabled ? "Enable" : "Disable"));
+			tz->mode == THERMAL_DEVICE_ENABLED ?
+			"Enable" : "Disable"));
 		acpi_thermal_check(tz);
 	}
 	return 0;
@@ -915,7 +912,7 @@ static int acpi_thermal_register_thermal_zone(struct acpi_thermal *tz)
 		goto remove_dev_link;
 	}
 
-	tz->tz_enabled = 1;
+	tz->mode = THERMAL_DEVICE_ENABLED;
 
 	dev_info(&tz->device->dev, "registered as thermal_zone%d\n",
 		 tz->thermal_zone->id);
diff --git a/drivers/platform/x86/acerhdf.c b/drivers/platform/x86/acerhdf.c
index 8cc86f4e3ac1..830a8b060e74 100644
--- a/drivers/platform/x86/acerhdf.c
+++ b/drivers/platform/x86/acerhdf.c
@@ -68,6 +68,7 @@ static int kernelmode = 1;
 #else
 static int kernelmode;
 #endif
+static enum thermal_device_mode thermal_mode;
 
 static unsigned int interval = 10;
 static unsigned int fanon = 60000;
@@ -397,6 +398,7 @@ static inline void acerhdf_revert_to_bios_mode(void)
 {
 	acerhdf_change_fanstate(ACERHDF_FAN_AUTO);
 	kernelmode = 0;
+	thermal_mode = THERMAL_DEVICE_DISABLED;
 	if (thz_dev)
 		thz_dev->polling_delay = 0;
 	pr_notice("kernel mode fan control OFF\n");
@@ -404,6 +406,7 @@ static inline void acerhdf_revert_to_bios_mode(void)
 static inline void acerhdf_enable_kernelmode(void)
 {
 	kernelmode = 1;
+	thermal_mode = THERMAL_DEVICE_ENABLED;
 
 	thz_dev->polling_delay = interval*1000;
 	thermal_zone_device_update(thz_dev, THERMAL_EVENT_UNSPECIFIED);
@@ -416,8 +419,7 @@ static int acerhdf_get_mode(struct thermal_zone_device *thermal,
 	if (verbose)
 		pr_notice("kernel mode fan control %d\n", kernelmode);
 
-	*mode = (kernelmode) ? THERMAL_DEVICE_ENABLED
-			     : THERMAL_DEVICE_DISABLED;
+	*mode = thermal_mode;
 
 	return 0;
 }
@@ -739,6 +741,8 @@ static int __init acerhdf_register_thermal(void)
 	if (IS_ERR(cl_dev))
 		return -EINVAL;
 
+	thermal_mode = kernelmode ?
+		THERMAL_DEVICE_ENABLED : THERMAL_DEVICE_DISABLED;
 	thz_dev = thermal_zone_device_register("acerhdf", 2, 0, NULL,
 					      &acerhdf_dev_ops,
 					      &acerhdf_zone_params, 0,
diff --git a/drivers/thermal/intel/int340x_thermal/int3400_thermal.c b/drivers/thermal/intel/int340x_thermal/int3400_thermal.c
index 0b3a62655843..e84faaadff87 100644
--- a/drivers/thermal/intel/int340x_thermal/int3400_thermal.c
+++ b/drivers/thermal/intel/int340x_thermal/int3400_thermal.c
@@ -48,7 +48,7 @@ struct int3400_thermal_priv {
 	struct acpi_device *adev;
 	struct platform_device *pdev;
 	struct thermal_zone_device *thermal;
-	int mode;
+	enum thermal_device_mode mode;
 	int art_count;
 	struct art *arts;
 	int trt_count;
@@ -395,24 +395,20 @@ static int int3400_thermal_set_mode(struct thermal_zone_device *thermal,
 				enum thermal_device_mode mode)
 {
 	struct int3400_thermal_priv *priv = thermal->devdata;
-	bool enable;
 	int result = 0;
 
 	if (!priv)
 		return -EINVAL;
 
-	if (mode == THERMAL_DEVICE_ENABLED)
-		enable = true;
-	else if (mode == THERMAL_DEVICE_DISABLED)
-		enable = false;
-	else
+	if (mode != THERMAL_DEVICE_ENABLED &&
+	    mode != THERMAL_DEVICE_DISABLED)
 		return -EINVAL;
 
-	if (enable != priv->mode) {
-		priv->mode = enable;
+	if (mode != priv->mode) {
+		priv->mode = mode;
 		result = int3400_thermal_run_osc(priv->adev->handle,
-						 priv->current_uuid_index,
-						 enable);
+						priv->current_uuid_index,
+						mode == THERMAL_DEVICE_ENABLED);
 	}
 
 	evaluate_odvp(priv);
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

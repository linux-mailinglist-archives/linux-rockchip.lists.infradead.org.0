Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 225D710F0C0
	for <lists+linux-rockchip@lfdr.de>; Mon,  2 Dec 2019 20:39:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X8oZHJN2IXSq+LyzuDy62/2mht0UAl2EtqZVUw0g52w=; b=NbV0GbPx5qDNWv
	GhYNctvv3aJyQwJCirRs/fDZ3Q4jCvXYmAcLgmcFaCGCvinV1Y5nLpThkMmG8qll6+DHf4k6T4V2u
	CUFKZdws5ZGPELHovqyGvDw/H+oxCVojoi/jKVNi7vr3ibQkzdwIquQbiCx80gO8/rwGJqh2FehQ/
	Y8YYoF+47erbeyx4FoTatryfSwOt/0uVZ1d3ugUiSiNgQ9WY/xQAaWwQkIe7o6Zp3iZhgUY/ckxOz
	Wt/p9c9Bw6e9EGxswiNLKiFGZC1x9YgL3Pb9Nq5N6HM83A4pvYz0XNAuO5c/EycglNSc7n3NqmGXu
	Czwm9LGAwqFymc7NqW+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibrXr-00065o-KO; Mon, 02 Dec 2019 19:39:43 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibrRw-0007kg-LY; Mon, 02 Dec 2019 19:33:42 +0000
Received: by mail-lj1-x242.google.com with SMTP id a13so792515ljm.10;
 Mon, 02 Dec 2019 11:33:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1cwcVlQTSPEpvvTt7npXTAeRNecjJ4sL2WdE6IowvJo=;
 b=imCcVCQmdfVtejivHQ8KZ3aZd/wGiv7mSMxF8P61gBPk8JEEOnM5aBUs/RUQ/BM+Zs
 TZU5zBsnpML9NGpyS7AV6m4mryUxW3RdK/e9BhFtQolln8KI2MFdjwbNCEHgFDffbSEQ
 UjyRVShfamjiTe1VMJKsraIoBmzT5zYXchzx/cMKm+RKSDDy/7yuBZZmlKPnr9kFFV1s
 uhFD7Vjj5Rl80xoiyiU2KTIZs2jPm1h+3WusBF3g6jrXO/BIEGD2xe79Kr21fOZ0Hk+N
 4cjdXLPmyBe9NWlJkOp0RvKlxnnEK+fOQ4pI38kQ0QEBBpF8I+Y4f2FVFn3Euq+UYigc
 0brA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=1cwcVlQTSPEpvvTt7npXTAeRNecjJ4sL2WdE6IowvJo=;
 b=RKP+MDhMD9zGYENj/IE9ToMGHqxTz/8t8/kXPij95m+htouSOrcEOZZ7Z8pJeHsBH1
 P4OhSVAMXiuwaP5wUUeHiB0yXUeqmW0jei6AYt8fvd2kSO3aPQNtk1P5dITIyvgX0+JS
 Q1hgApMFUEbUVh6LsFAJKRsZi5S2yY77wxXYJ2kp3x/cz1iCJJYVGYoFtXKFwW/WLeEH
 OQ1UpHLLInGY7cstT6ojYYRAuwB9jHvN4i3U4OJoddjSmpRhNkxpPAI6x8zNhltS0oYc
 8ljDvZWECgpnMc/Uu6rLsfyVtAiOyMw+T1C/FaeCvP8FaWGWPe0PG5sSAPOlU3MaRy9V
 FNkg==
X-Gm-Message-State: APjAAAU6OyMN3v1MKwRro6gOZ3Q8RTvDxhtZcQ21YmeUqJyTN/6D5kvC
 jZEF05TAi7MDgFixSyuxf9E=
X-Google-Smtp-Source: APXvYqxuD4DYzYut6ry4UElFe4ZjLh8rR23KZMh/GwY0agg4mlfI8UchY6oM0rWOK2lXFt8pu36fCg==
X-Received: by 2002:a2e:999a:: with SMTP id w26mr287454lji.142.1575315215038; 
 Mon, 02 Dec 2019 11:33:35 -0800 (PST)
Received: from saturn.lan (18.158-248-194.customer.lyse.net. [158.248.194.18])
 by smtp.gmail.com with ESMTPSA id
 g13sm79482lfb.74.2019.12.02.11.33.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Dec 2019 11:33:34 -0800 (PST)
From: Sam Ravnborg <sam@ravnborg.org>
To: dri-devel@lists.freedesktop.org, Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: [PATCH v1 16/26] drm/panel: panasonic-vvx10f034n00: use drm_panel
 backlight support
Date: Mon,  2 Dec 2019 20:32:20 +0100
Message-Id: <20191202193230.21310-17-sam@ravnborg.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191202193230.21310-1-sam@ravnborg.org>
References: <20191202193230.21310-1-sam@ravnborg.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_113336_804804_F6C180A9 
X-CRM114-Status: GOOD (  13.56  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sam.ravnborg[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 Linus Walleij <linus.walleij@linaro.org>, Stefan Agner <stefan@agner.ch>,
 Andrzej Hajda <a.hajda@samsung.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Sam Ravnborg <sam@ravnborg.org>, linux-samsung-soc@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Tomi Valkeinen <tomi.valkeinen@ti.com>,
 Jagan Teki <jagan@amarulasolutions.com>, NXP Linux Team <linux-imx@nxp.com>,
 Jitao Shi <jitao.shi@mediatek.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, linux-mediatek@lists.infradead.org,
 Abhinav Kumar <abhinavk@codeaurora.org>, linux-tegra@vger.kernel.org,
 Sean Paul <sean@poorly.run>, linux-arm-kernel@lists.infradead.org,
 Purism Kernel Team <kernel@puri.sm>, linux-renesas-soc@vger.kernel.org,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Daniel Vetter <daniel@ffwll.ch>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Use the backlight support in drm_panel to simplify the driver

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
Cc: Thierry Reding <thierry.reding@gmail.com>
Cc: Sam Ravnborg <sam@ravnborg.org>
---
 .../drm/panel/panel-panasonic-vvx10f034n00.c  | 45 +++----------------
 1 file changed, 6 insertions(+), 39 deletions(-)

diff --git a/drivers/gpu/drm/panel/panel-panasonic-vvx10f034n00.c b/drivers/gpu/drm/panel/panel-panasonic-vvx10f034n00.c
index 579ac0d86ea4..4e15bff5a1b5 100644
--- a/drivers/gpu/drm/panel/panel-panasonic-vvx10f034n00.c
+++ b/drivers/gpu/drm/panel/panel-panasonic-vvx10f034n00.c
@@ -7,7 +7,6 @@
  * Based on AUO panel driver by Rob Clark <robdclark@gmail.com>
  */
 
-#include <linux/backlight.h>
 #include <linux/delay.h>
 #include <linux/module.h>
 #include <linux/of.h>
@@ -31,7 +30,6 @@ struct wuxga_nt_panel {
 	struct drm_panel base;
 	struct mipi_dsi_device *dsi;
 
-	struct backlight_device *backlight;
 	struct regulator *supply;
 
 	bool prepared;
@@ -62,12 +60,6 @@ static int wuxga_nt_panel_disable(struct drm_panel *panel)
 
 	mipi_ret = mipi_dsi_shutdown_peripheral(wuxga_nt->dsi);
 
-	if (wuxga_nt->backlight) {
-		wuxga_nt->backlight->props.power = FB_BLANK_POWERDOWN;
-		wuxga_nt->backlight->props.state |= BL_CORE_FBBLANK;
-		bl_ret = backlight_update_status(wuxga_nt->backlight);
-	}
-
 	wuxga_nt->enabled = false;
 
 	return mipi_ret ? mipi_ret : bl_ret;
@@ -142,12 +134,6 @@ static int wuxga_nt_panel_enable(struct drm_panel *panel)
 	if (wuxga_nt->enabled)
 		return 0;
 
-	if (wuxga_nt->backlight) {
-		wuxga_nt->backlight->props.power = FB_BLANK_UNBLANK;
-		wuxga_nt->backlight->props.state &= ~BL_CORE_FBBLANK;
-		backlight_update_status(wuxga_nt->backlight);
-	}
-
 	wuxga_nt->enabled = true;
 
 	return 0;
@@ -206,7 +192,6 @@ MODULE_DEVICE_TABLE(of, wuxga_nt_of_match);
 static int wuxga_nt_panel_add(struct wuxga_nt_panel *wuxga_nt)
 {
 	struct device *dev = &wuxga_nt->dsi->dev;
-	struct device_node *np;
 	int ret;
 
 	wuxga_nt->mode = &default_mode;
@@ -215,38 +200,20 @@ static int wuxga_nt_panel_add(struct wuxga_nt_panel *wuxga_nt)
 	if (IS_ERR(wuxga_nt->supply))
 		return PTR_ERR(wuxga_nt->supply);
 
-	np = of_parse_phandle(dev->of_node, "backlight", 0);
-	if (np) {
-		wuxga_nt->backlight = of_find_backlight_by_node(np);
-		of_node_put(np);
-
-		if (!wuxga_nt->backlight)
-			return -EPROBE_DEFER;
-	}
-
 	drm_panel_init(&wuxga_nt->base, &wuxga_nt->dsi->dev,
 		       &wuxga_nt_panel_funcs, DRM_MODE_CONNECTOR_DSI);
 
-	ret = drm_panel_add(&wuxga_nt->base);
-	if (ret < 0)
-		goto put_backlight;
-
-	return 0;
-
-put_backlight:
-	if (wuxga_nt->backlight)
-		put_device(&wuxga_nt->backlight->dev);
+	ret = drm_panel_of_backlight(&wuxga_nt->base);
+	if (ret)
+		return ret;
 
-	return ret;
+	return drm_panel_add(&wuxga_nt->base);
 }
 
 static void wuxga_nt_panel_del(struct wuxga_nt_panel *wuxga_nt)
 {
 	if (wuxga_nt->base.dev)
 		drm_panel_remove(&wuxga_nt->base);
-
-	if (wuxga_nt->backlight)
-		put_device(&wuxga_nt->backlight->dev);
 }
 
 static int wuxga_nt_panel_probe(struct mipi_dsi_device *dsi)
@@ -281,7 +248,7 @@ static int wuxga_nt_panel_remove(struct mipi_dsi_device *dsi)
 	struct wuxga_nt_panel *wuxga_nt = mipi_dsi_get_drvdata(dsi);
 	int ret;
 
-	ret = wuxga_nt_panel_disable(&wuxga_nt->base);
+	ret = drm_panel_disable(&wuxga_nt->base);
 	if (ret < 0)
 		dev_err(&dsi->dev, "failed to disable panel: %d\n", ret);
 
@@ -298,7 +265,7 @@ static void wuxga_nt_panel_shutdown(struct mipi_dsi_device *dsi)
 {
 	struct wuxga_nt_panel *wuxga_nt = mipi_dsi_get_drvdata(dsi);
 
-	wuxga_nt_panel_disable(&wuxga_nt->base);
+	drm_panel_disable(&wuxga_nt->base);
 }
 
 static struct mipi_dsi_driver wuxga_nt_panel_driver = {
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

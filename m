Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64F5910F0C9
	for <lists+linux-rockchip@lfdr.de>; Mon,  2 Dec 2019 20:41:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jvjrTIdKlviqFM2/gNULIJxAwJjV9ue2ysajg2UB3O8=; b=GBeX5j+bULPA6w
	jYn7PczrIRV4HuNAwEPUICqi0rD9G3UIXPrkRVL45S4j2UgV+4rA3tlPezSlj1gOPZhB+2zliJhE0
	dOEVkryUrQL8elz5R+H874lSz+QUA0TkXDcYXN0faK55GYxrOKBXyCiT1BWyprXemnlWO9ZbYxBJO
	J/JJpdXymegdqB6w0pCM4PG76+uxRq3RL9xlT4Sj65BaTEeoQH10INYSh0hHnLpUxYmhC+abv12CU
	73rL9yHMVrMyJ7fLOEtFkrl3zfdTSrif3hlfq4zGzPUhNGRwjyD1ytxHi0k4fs7CFLderrlnlLcrw
	TyR+pcMlfKEhpyv+wxGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibrZ5-0008SV-9K; Mon, 02 Dec 2019 19:40:59 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibrRy-0007mE-K1; Mon, 02 Dec 2019 19:33:43 +0000
Received: by mail-lj1-x242.google.com with SMTP id e28so800092ljo.9;
 Mon, 02 Dec 2019 11:33:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=YHyg1Dv+yW1P3woHHern0IWhA1ZSh1oVCkpM4/quUn4=;
 b=UXVhIwS9hxqLyUKpFsi/9B+m1W8tz6O8LM+RB3HfE3wlqNoBarTzpBZk+cRfYXcKbn
 lA8UgPBM4FenshUYYPFPqreNDBD0AdQLGp+x3aW+O9T9/S+2zSZDnb0GB1Y0loieXdeD
 x4GtLZtb2OTb7W9PgYDmkjvrt2X/t6hZEa2L5ksHtQTbwiEOw1Lk1rgsxYN+OLJdJypE
 SyLoO7QNk3W0D2lNr5wmo+W5RLt+tCMvGf1qO/QjC6NNh8geO0+GKYkbHCQLQ5BOzjqz
 s/tm2pU99xfXKIdoDFCpO4LL9AXdqOSsLBqTrS/FhG5fmQTOIcEBokwV07Xlex9BHEN3
 Urnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=YHyg1Dv+yW1P3woHHern0IWhA1ZSh1oVCkpM4/quUn4=;
 b=qc/NScApczkTew3Fv09H2bubdheISiGJc4rTUeksMgWghAbgmHlIldJijhATL1ODbj
 dxF5yx2ap5NaGGqeynSisKio4EyUBwKf4F6agGxpPlh8Lgp6TDNc79SA6l022iDKkinh
 sJw/aW7n/9pcBhYsnwBAkpL2Kzmw6IzokVNZOdIM90fRm+KUso5lPhEleN2BvlFUcCia
 Xt5eiGIhKc40I3u+Q9Ue4VrQd+DVR14l2Qc6nCmvSFbuFIwS5gtxB80Z31IwYd2LKA/7
 oVA5+Pki625Fu8tGDhUHFwumLENizHwRPxWUusglEDE707e95R0SN5EsTXnhT4lrj8g5
 Z5KA==
X-Gm-Message-State: APjAAAUe/rTEkw1JVnXcrMwRx91il7JUP9Ns50XOfX6TmEqIpFKhMryp
 jTDP8ju4LD5HxIDxejegGu4=
X-Google-Smtp-Source: APXvYqz3r+laN9FnmWTYFLLBUS6ZnkiUvsIMFFNjcED2AJXxTlqVCVCVhK5M16rTTToSSV/kHLG6ng==
X-Received: by 2002:a2e:b007:: with SMTP id y7mr253216ljk.215.1575315216701;
 Mon, 02 Dec 2019 11:33:36 -0800 (PST)
Received: from saturn.lan (18.158-248-194.customer.lyse.net. [158.248.194.18])
 by smtp.gmail.com with ESMTPSA id
 g13sm79482lfb.74.2019.12.02.11.33.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Dec 2019 11:33:36 -0800 (PST)
From: Sam Ravnborg <sam@ravnborg.org>
To: dri-devel@lists.freedesktop.org, Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: [PATCH v1 17/26] drm/panel: raydium-rm68200: use drm_panel backlight
 support
Date: Mon,  2 Dec 2019 20:32:21 +0100
Message-Id: <20191202193230.21310-18-sam@ravnborg.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191202193230.21310-1-sam@ravnborg.org>
References: <20191202193230.21310-1-sam@ravnborg.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_113338_749639_CCDB82BF 
X-CRM114-Status: GOOD (  11.23  )
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
 drivers/gpu/drm/panel/panel-raydium-rm68200.c | 15 +++++----------
 1 file changed, 5 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/panel/panel-raydium-rm68200.c b/drivers/gpu/drm/panel/panel-raydium-rm68200.c
index d6a03328e594..e8982948e0ea 100644
--- a/drivers/gpu/drm/panel/panel-raydium-rm68200.c
+++ b/drivers/gpu/drm/panel/panel-raydium-rm68200.c
@@ -6,9 +6,9 @@
  *          Yannick Fertre <yannick.fertre@st.com>
  */
 
-#include <linux/backlight.h>
 #include <linux/delay.h>
 #include <linux/gpio/consumer.h>
+#include <linux/mod_devicetable.h>
 #include <linux/module.h>
 #include <linux/regulator/consumer.h>
 
@@ -78,7 +78,6 @@ struct rm68200 {
 	struct drm_panel panel;
 	struct gpio_desc *reset_gpio;
 	struct regulator *supply;
-	struct backlight_device *backlight;
 	bool prepared;
 	bool enabled;
 };
@@ -242,8 +241,6 @@ static int rm68200_disable(struct drm_panel *panel)
 	if (!ctx->enabled)
 		return 0;
 
-	backlight_disable(ctx->backlight);
-
 	ctx->enabled = false;
 
 	return 0;
@@ -328,8 +325,6 @@ static int rm68200_enable(struct drm_panel *panel)
 	if (ctx->enabled)
 		return 0;
 
-	backlight_enable(ctx->backlight);
-
 	ctx->enabled = true;
 
 	return 0;
@@ -392,10 +387,6 @@ static int rm68200_probe(struct mipi_dsi_device *dsi)
 		return ret;
 	}
 
-	ctx->backlight = devm_of_find_backlight(dev);
-	if (IS_ERR(ctx->backlight))
-		return PTR_ERR(ctx->backlight);
-
 	mipi_dsi_set_drvdata(dsi, ctx);
 
 	ctx->dev = dev;
@@ -408,6 +399,10 @@ static int rm68200_probe(struct mipi_dsi_device *dsi)
 	drm_panel_init(&ctx->panel, dev, &rm68200_drm_funcs,
 		       DRM_MODE_CONNECTOR_DSI);
 
+	ret = drm_panel_of_backlight(&ctx->panel);
+	if (ret)
+		return ret;
+
 	drm_panel_add(&ctx->panel);
 
 	ret = mipi_dsi_attach(dsi);
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

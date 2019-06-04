Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2CE73513B
	for <lists+linux-rockchip@lfdr.de>; Tue,  4 Jun 2019 22:42:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ODXfvfTBmXRwTB/EslzDXbOzQQuSON//Xl3wv+xYXvg=; b=qXh+uiLkgs+kQR
	QjJIlu5DS2/eJ5G9UpNpPEMSbQ2ity4mZIuuZHknoa/tXRdX+9Z2Bs7RKqStF0p1pxKoGEjQpcP/+
	Spj0092YTrx6Dle74wvqfz5vAYRwz3JsYrVotoGvNLFPuSKM0fCdX6E8iW0dlsh7WkwphAVUuCvoz
	qjn2I1IRLVODqQqXW6T3kLsM/eqTFwZxHQq2D0rD6GhFTlcy0QbM3ma9qrKPFO5ETc4+5oN5uRZDG
	O+1j83zti4m0AUvSyfI7ElX6P3UuUS9XRuuQ0TMYLAXuHgY6eU6mJ3uoWTtl7OjT60sie6+C65+N/
	O/G7UXdm7RnFP4imUeYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYGGS-0000Ry-7A; Tue, 04 Jun 2019 20:42:36 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYGGO-0000Qj-El
 for linux-rockchip@lists.infradead.org; Tue, 04 Jun 2019 20:42:34 +0000
Received: by mail-pl1-x643.google.com with SMTP id x7so7812688plr.12
 for <linux-rockchip@lists.infradead.org>; Tue, 04 Jun 2019 13:42:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=n/HYQ/vk4D8YwsOYcNtmXEt7k4Cw/SNCazVxbSK/MBw=;
 b=Oe/GAvOveh8cEnZRbjewFICZg+C+Mz/D/CnWC95t1aKO8nC/4h7shSTzLU1vBw2wNk
 Q1E2ChcF+TNLJ2tV6Ni7gtfIe57YJiqgABXAPEz6xUQT5FB5SryOZlCsF80LZflBgjCo
 x1xz8v+X7QR/1VrE0lLahDkyw4U3TwBM8X1Yg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=n/HYQ/vk4D8YwsOYcNtmXEt7k4Cw/SNCazVxbSK/MBw=;
 b=FFlvdbulUCOSm1l2d7cPp8sp12UA8UD9zScXQhc49xhotgge8924EMdBd0r8p86zdE
 Mh+SI8BnTWnm4y1mHaXwwPBlLaSWiCrRxoRmHxpeoINKxxCnnEcOnrcC2oRXp8h3gAYm
 iw0Vdghz/AxwEO8Bs3mtxkN4yazhAr30JSkMNW9WRoJV2N9uJ6O2X+We4k5fMpwm/daI
 +OQWkN2aMOQQ++ELtYPBinAiDiG2+i1mb/Lr5btGW1ubIZAg3TpS1tG47uauJYeBP3xI
 OXyafuRFisj65aYXIn/ozwEcE9XK0KAa/FjUzsEZ7vzBtC21BjjGq0XNk2xy3WR5+Wk0
 W9Yg==
X-Gm-Message-State: APjAAAUT7GjcB3Rg2FHNpSKXE+w6omIu3Q5fUtAuEHMRWoyghg+z3vnX
 myFIxerTlF+C74+9JO5sl+fvJw==
X-Google-Smtp-Source: APXvYqxZ3/7BjsatDoJITrpZzUz7cdM4OD6rVIjnIvwx6bqgW4w4ZY2kqNMfOkqzav5S1V+S/pPOEw==
X-Received: by 2002:a17:902:347:: with SMTP id
 65mr39818136pld.232.1559680951603; 
 Tue, 04 Jun 2019 13:42:31 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com
 ([2620:15c:202:1:24fa:e766:52c9:e3b2])
 by smtp.gmail.com with ESMTPSA id m5sm11553616pgn.59.2019.06.04.13.42.30
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 04 Jun 2019 13:42:30 -0700 (PDT)
From: Douglas Anderson <dianders@chromium.org>
To: Sean Paul <seanpaul@chromium.org>, Heiko Stuebner <heiko@sntech.de>,
 Sandy Huang <hjc@rock-chips.com>, Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
Subject: [PATCH v3 1/2] drm: bridge: dw-hdmi: Add hook for resume
Date: Tue,  4 Jun 2019 13:42:06 -0700
Message-Id: <20190604204207.168085-1-dianders@chromium.org>
X-Mailer: git-send-email 2.22.0.rc1.311.g5d7573a151-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_134232_516318_69956101 
X-CRM114-Status: GOOD (  19.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.21
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
Cc: Jonas Karlman <jonas@kwiboo.se>, David Airlie <airlied@linux.ie>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Douglas Anderson <dianders@chromium.org>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 mka@chromium.org, Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, Sam Ravnborg <sam@ravnborg.org>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Zheng Yang <zhengyang@rock-chips.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Rockchip rk3288-based Chromebooks when you do a suspend/resume
cycle:

1. You lose the ability to detect an HDMI device being plugged in.

2. If you're using the i2c bus built in to dw_hdmi then it stops
working.

Let's add a hook to the core dw-hdmi driver so that we can call it in
dw_hdmi-rockchip in the next commit.

NOTE: the exact set of steps I've done here in resume come from
looking at the normal dw_hdmi init sequence in upstream Linux plus the
sequence that we did in downstream Chrome OS 3.14.  Testing show that
it seems to work, but if an extra step is needed or something here is
not needed we could improve it.

As part of this change we'll refactor the hardware init bits of
dw-hdmi to happen all in one function and all at the same time.  Since
we need to init the interrupt mutes before we request the IRQ, this
means moving the hardware init earlier in the function, but there
should be no problems with that.  Also as part of this we now
unconditionally init the "i2c" parts of dw-hdmi, but again that ought
to be fine.

Signed-off-by: Douglas Anderson <dianders@chromium.org>
Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---

Changes in v3:
- Change resume to void function (Laurent)

Changes in v2:
- No empty stub for suspend (Laurent)
- Refactor to use the same code in probe and resume (Laurent)
- Unconditionally init i2c (seems OK + needed before hdmi->i2c init)
- Combine "init" of i2c and "setup" of i2c (no reason to split)

 drivers/gpu/drm/bridge/synopsys/dw-hdmi.c | 48 ++++++++++++++---------
 include/drm/bridge/dw_hdmi.h              |  2 +
 2 files changed, 31 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
index 66bd66bad44c..a00ccf123877 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
+++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
@@ -228,6 +228,13 @@ static void hdmi_mask_writeb(struct dw_hdmi *hdmi, u8 data, unsigned int reg,
 
 static void dw_hdmi_i2c_init(struct dw_hdmi *hdmi)
 {
+	hdmi_writeb(hdmi, HDMI_PHY_I2CM_INT_ADDR_DONE_POL,
+		    HDMI_PHY_I2CM_INT_ADDR);
+
+	hdmi_writeb(hdmi, HDMI_PHY_I2CM_CTLINT_ADDR_NAC_POL |
+		    HDMI_PHY_I2CM_CTLINT_ADDR_ARBITRATION_POL,
+		    HDMI_PHY_I2CM_CTLINT_ADDR);
+
 	/* Software reset */
 	hdmi_writeb(hdmi, 0x00, HDMI_I2CM_SOFTRSTZ);
 
@@ -1926,16 +1933,6 @@ static int dw_hdmi_setup(struct dw_hdmi *hdmi, struct drm_display_mode *mode)
 	return 0;
 }
 
-static void dw_hdmi_setup_i2c(struct dw_hdmi *hdmi)
-{
-	hdmi_writeb(hdmi, HDMI_PHY_I2CM_INT_ADDR_DONE_POL,
-		    HDMI_PHY_I2CM_INT_ADDR);
-
-	hdmi_writeb(hdmi, HDMI_PHY_I2CM_CTLINT_ADDR_NAC_POL |
-		    HDMI_PHY_I2CM_CTLINT_ADDR_ARBITRATION_POL,
-		    HDMI_PHY_I2CM_CTLINT_ADDR);
-}
-
 static void initialize_hdmi_ih_mutes(struct dw_hdmi *hdmi)
 {
 	u8 ih_mute;
@@ -2436,6 +2433,21 @@ static const struct regmap_config hdmi_regmap_32bit_config = {
 	.max_register	= HDMI_I2CM_FS_SCL_LCNT_0_ADDR << 2,
 };
 
+static void dw_hdmi_init_hw(struct dw_hdmi *hdmi)
+{
+	initialize_hdmi_ih_mutes(hdmi);
+
+	/*
+	 * Reset HDMI DDC I2C master controller and mute I2CM interrupts.
+	 * Even if we are using a separate i2c adapter doing this doesn't
+	 * hurt.
+	 */
+	dw_hdmi_i2c_init(hdmi);
+
+	if (hdmi->phy.ops->setup_hpd)
+		hdmi->phy.ops->setup_hpd(hdmi, hdmi->phy.data);
+}
+
 static struct dw_hdmi *
 __dw_hdmi_probe(struct platform_device *pdev,
 		const struct dw_hdmi_plat_data *plat_data)
@@ -2587,7 +2599,7 @@ __dw_hdmi_probe(struct platform_device *pdev,
 		 prod_id1 & HDMI_PRODUCT_ID1_HDCP ? "with" : "without",
 		 hdmi->phy.name);
 
-	initialize_hdmi_ih_mutes(hdmi);
+	dw_hdmi_init_hw(hdmi);
 
 	irq = platform_get_irq(pdev, 0);
 	if (irq < 0) {
@@ -2626,10 +2638,6 @@ __dw_hdmi_probe(struct platform_device *pdev,
 	hdmi->bridge.of_node = pdev->dev.of_node;
 #endif
 
-	dw_hdmi_setup_i2c(hdmi);
-	if (hdmi->phy.ops->setup_hpd)
-		hdmi->phy.ops->setup_hpd(hdmi, hdmi->phy.data);
-
 	memset(&pdevinfo, 0, sizeof(pdevinfo));
 	pdevinfo.parent = dev;
 	pdevinfo.id = PLATFORM_DEVID_AUTO;
@@ -2682,10 +2690,6 @@ __dw_hdmi_probe(struct platform_device *pdev,
 		hdmi->cec = platform_device_register_full(&pdevinfo);
 	}
 
-	/* Reset HDMI DDC I2C master controller and mute I2CM interrupts */
-	if (hdmi->i2c)
-		dw_hdmi_i2c_init(hdmi);
-
 	return hdmi;
 
 err_iahb:
@@ -2789,6 +2793,12 @@ void dw_hdmi_unbind(struct dw_hdmi *hdmi)
 }
 EXPORT_SYMBOL_GPL(dw_hdmi_unbind);
 
+void dw_hdmi_resume(struct dw_hdmi *hdmi)
+{
+	dw_hdmi_init_hw(hdmi);
+}
+EXPORT_SYMBOL_GPL(dw_hdmi_resume);
+
 MODULE_AUTHOR("Sascha Hauer <s.hauer@pengutronix.de>");
 MODULE_AUTHOR("Andy Yan <andy.yan@rock-chips.com>");
 MODULE_AUTHOR("Yakir Yang <ykk@rock-chips.com>");
diff --git a/include/drm/bridge/dw_hdmi.h b/include/drm/bridge/dw_hdmi.h
index 66e70770cce5..601243b56b69 100644
--- a/include/drm/bridge/dw_hdmi.h
+++ b/include/drm/bridge/dw_hdmi.h
@@ -154,6 +154,8 @@ struct dw_hdmi *dw_hdmi_bind(struct platform_device *pdev,
 			     struct drm_encoder *encoder,
 			     const struct dw_hdmi_plat_data *plat_data);
 
+void dw_hdmi_resume(struct dw_hdmi *hdmi);
+
 void dw_hdmi_setup_rx_sense(struct dw_hdmi *hdmi, bool hpd, bool rx_sense);
 
 void dw_hdmi_set_sample_rate(struct dw_hdmi *hdmi, unsigned int rate);
-- 
2.22.0.rc1.311.g5d7573a151-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

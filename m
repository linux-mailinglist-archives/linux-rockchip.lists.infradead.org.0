Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AC222102F
	for <lists+linux-rockchip@lfdr.de>; Thu, 16 May 2019 23:41:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AHSh8/6IidIQdLYaLhIoio1rPNFWUMQDyqIymDJsIYg=; b=DjIjd7NeHFEQrV
	NhFBvwNs3k6rZUgRCvFjwUCQv18gwXx2v3AqXdseIz/2ugh4dFxQ2ZioiQrTgAjqX9FzRSy1sPJNL
	p1y/011G9q77tkXOek4XVkiFrNsA0Zri5NlILNEcBLibRuXsvRoW0JrSGpAUK64BwLKk+hYQGh8CF
	VXUzB2aIj4M18FL+1J4EQYz5TV8UIFpeqqZ2HZ01EBoHHu6W2ZO2YPLjPyk/qtP/uhL8ZiaUDm64R
	+GakZvHvE0oMXcBCMLqdB0Hl+4UBPmGZuZfU6R+z5wAcCJ10q6OIrPU79AdWy48zFctsy3DzxUmjq
	tQp+raueV6Hc27lb1vxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRO7b-0001Ru-Tj; Thu, 16 May 2019 21:41:03 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRO7N-0001IS-JL
 for linux-rockchip@lists.infradead.org; Thu, 16 May 2019 21:40:56 +0000
Received: by mail-pg1-x542.google.com with SMTP id z3so2188039pgp.8
 for <linux-rockchip@lists.infradead.org>; Thu, 16 May 2019 14:40:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ukge0ptaqtQfzBE3gk2H8jEArL17PgyGsxqUKXtZMbQ=;
 b=JzKx+RF4TLBsEzBvWlJuApn0knquV7p4R881+CU/VNU+JGrSzZmo4yrONglkpOvAzb
 gFKMQzVEIn3490zilMNi3bc38jveC54jAPM+0tQpFwfuIXjhPX0C35zllfCsiU4t6RZy
 LQxCLZG/xoArLy1BwI631/GGRSoB4DjJLfhcU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ukge0ptaqtQfzBE3gk2H8jEArL17PgyGsxqUKXtZMbQ=;
 b=MXnj/asFh7VZEiNgUxYfTKN8+PKSJ7yYZqSl0h4JNQ0yQVig3/hNfS+yGcJVyr8oDN
 rgWj5PYrPoJe+67N7RP4uu43FeuJ5JPKVN6/vk7gTOrv0+uNrJap3y2nWfBHO6D1q/7S
 OXVEwCi/1mcAAuyElovgN3ctVdkAqrjMJrWBdpZcr68wQYSEV4634l4cV+cnP99fwHAH
 9Ypfz3+R+I5MOESAda2Jefg5dwAAs1ryfqzzgXhTIArJXjfA7lGEL3UV/xrmBlZKAbVm
 ptG5NJuKtr9ya9mJu/9B9g/SkOmfBh+sV/gDOCRD6E+2/gxXNFMn0W3WrqlT5LPv3mAv
 qvaQ==
X-Gm-Message-State: APjAAAUHhcoFUzJD/gmg+LO1dqnK470SLvAnSVfJ+mZOMEYpHC5+qV4r
 G4TcsY52C8YRJEYKeVDRmjtaRuIpubI=
X-Google-Smtp-Source: APXvYqwOR1Vaun2FkXTwvszdYiYWTQfSZ7dyxK8u7skFfDe5/KjtBFl9QmluFeY4GYG/t/JXRiUNlw==
X-Received: by 2002:a63:5c1b:: with SMTP id q27mr53715942pgb.127.1558042848815; 
 Thu, 16 May 2019 14:40:48 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com
 ([2620:15c:202:1:24fa:e766:52c9:e3b2])
 by smtp.gmail.com with ESMTPSA id v4sm13127252pff.45.2019.05.16.14.40.47
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 16 May 2019 14:40:48 -0700 (PDT)
From: Douglas Anderson <dianders@chromium.org>
To: Heiko Stuebner <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>,
 Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
Subject: [PATCH v2 1/2] drm: bridge: dw-hdmi: Add hook for resume
Date: Thu, 16 May 2019 14:40:21 -0700
Message-Id: <20190516214022.65220-1-dianders@chromium.org>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_144053_381780_E387E7B9 
X-CRM114-Status: GOOD (  18.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 mka@chromium.org, Sean Paul <seanpaul@chromium.org>,
 Daniel Vetter <daniel@ffwll.ch>, Sam Ravnborg <sam@ravnborg.org>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
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
---

Changes in v2:
- No empty stub for suspend (Laurent)
- Refactor to use the same code in probe and resume (Laurent)
- Unconditionally init i2c (seems OK + needed before hdmi->i2c init)
- Combine "init" of i2c and "setup" of i2c (no reason to split)

 drivers/gpu/drm/bridge/synopsys/dw-hdmi.c | 50 ++++++++++++++---------
 include/drm/bridge/dw_hdmi.h              |  2 +
 2 files changed, 33 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
index ab7968c8f6a2..636d55d1398c 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
+++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
@@ -227,6 +227,13 @@ static void hdmi_mask_writeb(struct dw_hdmi *hdmi, u8 data, unsigned int reg,
 
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
 
@@ -1925,16 +1932,6 @@ static int dw_hdmi_setup(struct dw_hdmi *hdmi, struct drm_display_mode *mode)
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
@@ -2435,6 +2432,21 @@ static const struct regmap_config hdmi_regmap_32bit_config = {
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
@@ -2586,7 +2598,7 @@ __dw_hdmi_probe(struct platform_device *pdev,
 		 prod_id1 & HDMI_PRODUCT_ID1_HDCP ? "with" : "without",
 		 hdmi->phy.name);
 
-	initialize_hdmi_ih_mutes(hdmi);
+	dw_hdmi_init_hw(hdmi);
 
 	irq = platform_get_irq(pdev, 0);
 	if (irq < 0) {
@@ -2625,10 +2637,6 @@ __dw_hdmi_probe(struct platform_device *pdev,
 	hdmi->bridge.of_node = pdev->dev.of_node;
 #endif
 
-	dw_hdmi_setup_i2c(hdmi);
-	if (hdmi->phy.ops->setup_hpd)
-		hdmi->phy.ops->setup_hpd(hdmi, hdmi->phy.data);
-
 	memset(&pdevinfo, 0, sizeof(pdevinfo));
 	pdevinfo.parent = dev;
 	pdevinfo.id = PLATFORM_DEVID_AUTO;
@@ -2681,10 +2689,6 @@ __dw_hdmi_probe(struct platform_device *pdev,
 		hdmi->cec = platform_device_register_full(&pdevinfo);
 	}
 
-	/* Reset HDMI DDC I2C master controller and mute I2CM interrupts */
-	if (hdmi->i2c)
-		dw_hdmi_i2c_init(hdmi);
-
 	return hdmi;
 
 err_iahb:
@@ -2788,6 +2792,14 @@ void dw_hdmi_unbind(struct dw_hdmi *hdmi)
 }
 EXPORT_SYMBOL_GPL(dw_hdmi_unbind);
 
+int dw_hdmi_resume(struct dw_hdmi *hdmi)
+{
+	dw_hdmi_init_hw(hdmi);
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(dw_hdmi_resume);
+
 MODULE_AUTHOR("Sascha Hauer <s.hauer@pengutronix.de>");
 MODULE_AUTHOR("Andy Yan <andy.yan@rock-chips.com>");
 MODULE_AUTHOR("Yakir Yang <ykk@rock-chips.com>");
diff --git a/include/drm/bridge/dw_hdmi.h b/include/drm/bridge/dw_hdmi.h
index 66e70770cce5..1626731e1681 100644
--- a/include/drm/bridge/dw_hdmi.h
+++ b/include/drm/bridge/dw_hdmi.h
@@ -154,6 +154,8 @@ struct dw_hdmi *dw_hdmi_bind(struct platform_device *pdev,
 			     struct drm_encoder *encoder,
 			     const struct dw_hdmi_plat_data *plat_data);
 
+int dw_hdmi_resume(struct dw_hdmi *hdmi);
+
 void dw_hdmi_setup_rx_sense(struct dw_hdmi *hdmi, bool hpd, bool rx_sense);
 
 void dw_hdmi_set_sample_rate(struct dw_hdmi *hdmi, unsigned int rate);
-- 
2.21.0.1020.gf2820cf01a-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

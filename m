Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87F0B146AE8
	for <lists+linux-rockchip@lfdr.de>; Thu, 23 Jan 2020 15:12:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VLPrUhlwZr4JiOk9HkTSwdmVppIq+r9lGy5mpPWmTeg=; b=mhqk3CqzqvrLmM
	vMGfrAJyQZwEHGUUysy9JMasmsLY2vn+3kN2oT1HsAUjOimBiME729QpcnYOGX65njAr3rUWMAmXQ
	A0DIQoowygQ78lSY80YVVAVcOvq2TXOClH2ujxDDhrD0/UqI4UOG2j6KGH8kgxHA0x0FpnufyW2D5
	l4tviB04HQIS603vWr+bAgLIqD3Veho2NEFonpSaR/XP8QQouRHhQqT204NYbN6qLrbAj/M69Q3dN
	GGxuJS5t9K8h9ExlfCM9sTk3yhQerIcIqgI5WTuCdISs21tuqrfChjfekf8Q5WqMDsFuJhPLV1/eo
	9e5mABrc6UvolrtYKDhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iudDy-0001ve-JD; Thu, 23 Jan 2020 14:12:46 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iudDu-0001tT-FC
 for linux-rockchip@lists.infradead.org; Thu, 23 Jan 2020 14:12:44 +0000
Received: by mail-pf1-x443.google.com with SMTP id n9so1586180pff.13
 for <linux-rockchip@lists.infradead.org>; Thu, 23 Jan 2020 06:12:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=pX84TUtmw9tx4Os7n6FO68756VgiHD7gdbrKeWTJT2s=;
 b=LCFbtLwRTWC75RAvZepulntOcvoSSkmx0HyO5S2HP11tCA4dGUYr7zPeTmZ9b3B0VB
 ifnkqaF6iLg0PqJJorHOq5URRTXdU8VGJr0wqBGL3zU/DTYpf79HQmCYGPz1jrQXXUJa
 zLqMHpGzYxyR0XklZy4ZtZlQ2V1sTeZ1qb73w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=pX84TUtmw9tx4Os7n6FO68756VgiHD7gdbrKeWTJT2s=;
 b=XW6FRJ18o3TLdEMqQoBBOVKTFT0XpnexZQL64aZssuD9IkuV0txZrR3s+3Fh2uOjme
 iCFr6uXFNaoqUhYNZ7g5H2Zobq32d3JXDZLRwl/LU3yp35oMmf2R5cb0rkf/AI278jRZ
 v4kTe2rT9eZyRiSy7MXRitVRbEE4iJrUzJJbJAfb+mIPP6OliFOGmm8tabEdYE76hDmH
 q3CvNhS9/DvEIg46PnMpo8kLi4spNjXPQGzjcViirIoTQ/pmrSuH0/EX9Pt59Jf7Gceq
 9U9Tnu40XS0AhGlcb1oRblL8HczuB7xwe3bp6DzpdeJSePYQtKwLfe0mU1vbvZUiUJgh
 SVhg==
X-Gm-Message-State: APjAAAVfnD9CqtTox4hO+dqfGyO0fLFXCzA4bt5jRr5ttYyf5J/lpGic
 YLriWHdKTN7LZHvUN1WMLD06Mw==
X-Google-Smtp-Source: APXvYqxi+H96+GF1cfVmyDhZv9wCvcBChJoaOaTwwctDHijlQrAZRDEQCS+BteaX+yChqqam8wCZpA==
X-Received: by 2002:a63:c508:: with SMTP id f8mr4014927pgd.17.1579788761720;
 Thu, 23 Jan 2020 06:12:41 -0800 (PST)
Received: from localhost.localdomain ([49.206.202.109])
 by smtp.gmail.com with ESMTPSA id o6sm3136392pgg.37.2020.01.23.06.12.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 23 Jan 2020 06:12:41 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH 2/4] ARM: dts: rockchip: Sync rk3288-vyasa dts from linux
Date: Thu, 23 Jan 2020 19:42:20 +0530
Message-Id: <20200123141222.486-2-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20200123141222.486-1-jagan@amarulasolutions.com>
References: <20200123141222.486-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_061242_505701_4764956C 
X-CRM114-Status: GOOD (  18.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: u-boot@lists.denx.de, Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula@amarulasolutions.com, Jagan Teki <jagan@amarulasolutions.com>,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Sync rk3288-vyasa dts file from Linux.

This sync has changes required to work HDMI output on
Vyasa RK3288 board.

This sync excludes the io_domains node since it is not
available in rk3288.dtsi.

Changes like vcc50_hdmi, vdd10_lcd and ddc-i2c-bus are
not merged to Linux yet but wil resync later if any
further updates on this.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm/dts/rk3288-vyasa.dts | 79 ++++++++++++++---------------------
 1 file changed, 32 insertions(+), 47 deletions(-)

diff --git a/arch/arm/dts/rk3288-vyasa.dts b/arch/arm/dts/rk3288-vyasa.dts
index 850aa25818..4193f7208c 100644
--- a/arch/arm/dts/rk3288-vyasa.dts
+++ b/arch/arm/dts/rk3288-vyasa.dts
@@ -1,43 +1,6 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
 /*
  * Copyright (C) 2017 Jagan Teki <jagan@amarulasolutions.com>
- *
- * This file is dual-licensed: you can use it either under the terms
- * of the GPL or the X11 license, at your option. Note that this dual
- * licensing only applies to this file, and not this project as a
- * whole.
- *
- *  a) This file is free software; you can redistribute it and/or
- *     modify it under the terms of the GNU General Public License as
- *     published by the Free Software Foundation; either version 2 of the
- *     License, or (at your option) any later version.
- *
- *     This file is distributed in the hope that it will be useful,
- *     but WITHOUT ANY WARRANTY; without even the implied warranty of
- *     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- *     GNU General Public License for more details.
- *
- * Or, alternatively,
- *
- *  b) Permission is hereby granted, free of charge, to any person
- *     obtaining a copy of this software and associated documentation
- *     files (the "Software"), to deal in the Software without
- *     restriction, including without limitation the rights to use,
- *     copy, modify, merge, publish, distribute, sublicense, and/or
- *     sell copies of the Software, and to permit persons to whom the
- *     Software is furnished to do so, subject to the following
- *     conditions:
- *
- *     The above copyright notice and this permission notice shall be
- *     included in all copies or substantial portions of the Software.
- *
- *     THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
- *     EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
- *     OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
- *     NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
- *     HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
- *     WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
- *     FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
- *     OTHER DEALINGS IN THE SOFTWARE.
  */
 
 /dts-v1/;
@@ -115,6 +78,17 @@
 		vin-supply = <&vcc_io>;
 	};
 
+	vcc50_hdmi: vcc50-hdmi {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc50_hdmi";
+		enable-active-high;
+		gpio = <&gpio7 RK_PB4 GPIO_ACTIVE_HIGH>; /* HDMI_EN */
+		pinctrl-names = "default";
+		pinctrl-0 = <&vcc50_hdmi_en>;
+		regulator-always-on;
+		regulator-boot-on;
+		vin-supply = <&vsus_5v>;
+	};
 	vusb1_5v: vusb1-5v {
 		compatible = "regulator-fixed";
 		regulator-name = "vusb1_5v";
@@ -158,7 +132,6 @@
 &emmc {
 	bus-width = <8>;
 	cap-mmc-highspeed;
-	disable-wp;
 	non-removable;
 	pinctrl-names = "default";
 	pinctrl-0 = <&emmc_clk &emmc_cmd &emmc_pwr &emmc_bus8>;
@@ -188,7 +161,7 @@
 };
 
 &hdmi {
-	ddc-i2c-bus = <&i2c2>;
+	ddc-i2c-bus = <&i2c5>;
 	status = "okay";
 };
 
@@ -324,15 +297,15 @@
 				};
 			};
 
-			vcc10_lcd: LDO_REG6 {
-				regulator-name = "vcc10_lcd";
+			vdd10_lcd: LDO_REG6 {
+				regulator-name = "vdd10_lcd";
 				regulator-min-microvolt = <1000000>;
 				regulator-max-microvolt = <1000000>;
 				regulator-always-on;
 				regulator-boot-on;
 				regulator-state-mem {
 					regulator-on-in-suspend;
-					regulator-suspend-microvolt = <1800000>;
+					regulator-suspend-microvolt = <1000000>;
 				};
 			};
 
@@ -385,7 +358,7 @@
 	};
 };
 
-&i2c2 {
+&i2c5 {
 	status = "okay";
 };
 
@@ -402,6 +375,12 @@
 	status = "okay";
 };
 
+&tsadc {
+	rockchip,hw-tshut-mode = <1>; /* tshut mode 0:CRU 1:GPIO */
+	rockchip,hw-tshut-polarity = <1>; /* tshut polarity 0:LOW 1:HIGH */
+	status = "okay";
+};
+
 &uart2 {
 	status = "okay";
 };
@@ -463,15 +442,21 @@
 		};
 	};
 
+	hdmi {
+		vcc50_hdmi_en: vcc50-hdmi-en {
+			rockchip,pins = <7 RK_PB4 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	pmic {
 		pmic_int: pmic-int {
-			rockchip,pins = <RK_GPIO0 4 RK_FUNC_GPIO &pcfg_pull_up>;
+			rockchip,pins = <0 RK_PA4 RK_FUNC_GPIO &pcfg_pull_up>;
 		};
 	};
 
 	usb_host {
 		phy_pwr_en: phy-pwr-en {
-			rockchip,pins = <RK_GPIO2 RK_PB1 RK_FUNC_GPIO &pcfg_output_high>;
+			rockchip,pins = <2 RK_PB1 RK_FUNC_GPIO &pcfg_output_high>;
 		};
 
 		usb2_pwr_en: usb2-pwr-en {
@@ -481,7 +466,7 @@
 
 	usb_otg {
 		otg_vbus_drv: otg-vbus-drv {
-			rockchip,pins = <RK_GPIO0 RK_PB4 RK_FUNC_GPIO &pcfg_pull_none>;
+			rockchip,pins = <0 RK_PB4 RK_FUNC_GPIO &pcfg_pull_none>;
 
 		};
 	};
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

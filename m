Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E1FA7C5E1
	for <lists+linux-rockchip@lfdr.de>; Wed, 31 Jul 2019 17:16:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dcv9G8Hbb5AHgItRMol2EbTBg97AeP3PIaI/mbc5Hmg=; b=KJkD/zcyZBEzNd
	tSOJwc/bJUXyUH6jzQNEggpXNZ8vfmcsYcOmERcha1b6E34NT0VFjAIC2BnJIf2GFeiP679FhoSCI
	KoYV1FCNkv7Bd7Bgvq+XtCZhIJ6k7IzEXhN0BbGsahdUrCIy8XIyb2trXXzLguXLOyMrc4fQiVp7D
	/61gRpo8hiMUjGhd4H5ZvlAiNhU6ng6ZbwyHopP8hvykRjzADnGjTyMQqaU6unRDaqp1Mg7JJwmIi
	s6fYpwIc2q+zDa4iD4kDiG3HQ7KtHZGIE4VIvdLb7afquruWLmf6VvEH0yLnZkXV/3wjZYNiy44X/
	HOR8EPUwPCP4YaVvD60g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsqKc-0005au-CA; Wed, 31 Jul 2019 15:15:58 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsqKS-0005OU-GY
 for linux-rockchip@lists.infradead.org; Wed, 31 Jul 2019 15:15:50 +0000
Received: by mail-pg1-x541.google.com with SMTP id i70so21439786pgd.4
 for <linux-rockchip@lists.infradead.org>; Wed, 31 Jul 2019 08:15:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=/00DqJSmBllVQxJe/depqKNd9/W5u/S88YZoNcLhU8M=;
 b=WJ7zHTrdmhj416JDGeXrd8HTmi41kMjbS6DFWoDqLYHlVWTQfkDBNzyj7KU8JTjQl/
 M6QGg9ifEKF97fIw9HhYnboco8o2HZHOofCsY1A813z2+jP8FQ2/qXbu78YPVsltyjgX
 cIJghmNk8PFOGm6A6BPXaD8Eo9+Q16Uj3tKVk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=/00DqJSmBllVQxJe/depqKNd9/W5u/S88YZoNcLhU8M=;
 b=V1L/ZKyCII3zU8sggRFZsYE61osKWgaJrIo6rBAkF8P3CG8QLk9rIHpDn7diiN0yMj
 nkBHafcVrh6fw9W8U/YiVLjP5lP/+WII0oqL2KyHXotfbJVEzqm4FrM8l/vQiCXnuuDC
 /AjqW1UKwNxkOWlXvrUO43b4EoajDknFpjphzkk+diSC8VbJ3fgWWEYDcMj5stxGuszB
 NZs6efTCi3LbfYZCjMi0yUjp6wKGWFZ/XaKtvkcyMlfCO+B9FN5NSm6LhT3zjeU1XaLY
 kVDb6Kh5pMh7rEkMYTrpmmP99BF9FbZQYwNBYuFV6eDVlQgVunsdaAAxwcmKy5IpuEEK
 4kWQ==
X-Gm-Message-State: APjAAAV7LI8HYJLjg/k4cX7Pit1N95XoMRrCNdJRi1JwprmpYl4mzB7M
 mUZy+5Tuq8dOKJGIdVmba6S+LQ==
X-Google-Smtp-Source: APXvYqzk6zsAoyN2sl9N/KCKNNYvnw9gSCdTRSwoQ2wfMAx3bc+x36Vy5CHdrFByOsbL5KKPLAT1dA==
X-Received: by 2002:a17:90a:bc42:: with SMTP id
 t2mr3446645pjv.121.1564586143604; 
 Wed, 31 Jul 2019 08:15:43 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
 by smtp.gmail.com with ESMTPSA id o95sm2170650pjb.4.2019.07.31.08.15.42
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 31 Jul 2019 08:15:42 -0700 (PDT)
From: Matthias Kaehlcke <mka@chromium.org>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH v2] ARM: dts: rockchip: A few fixes for veyron-{fievel,tiger}
Date: Wed, 31 Jul 2019 08:15:27 -0700
Message-Id: <20190731151527.122002-1-mka@chromium.org>
X-Mailer: git-send-email 2.22.0.709.g102302147b-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_081548_551424_8C88E29E 
X-CRM114-Status: GOOD (  16.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, Douglas Anderson <dianders@chromium.org>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Matthias Kaehlcke <mka@chromium.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Fix/improve a few things for veyron fievel/tiger:

- move 'vccsys' regulator from tiger to fievel, both boards
  have it (and tiger includes the fievel .dtsi)
- move 'ext_gmac' node below regulators
- fix GPIO ids of vcc5_host1 and vcc5_host2 regulators
- remove reset configuration from 'gmac' node, this is already done
  in rk3288.dtsi
- fixed style issues of some multi-line comments
- switch 'vcc18_lcdt', 'vdd10_lcd' and 'vcc33_ccd' regulators off
  during suspend
- no pull-up on the Bluetooth wake-up pin, there is an external
  pull-up. The signal is active low, add the 'bt_host_wake_l'
  pinctrl config
- move BC 1.2 pins up in the pinctrl config to keep 'wake only' pins
  separate
- add BC 1.2 pins to sleep config

Fixes: 0067692b662e ("ARM: dts: rockchip: add veyron-fievel board")
Reviewed-by: Douglas Anderson <dianders@chromium.org>
Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
---
Changes in v2:
- remove 'regulator-suspend-microvolt' property from regulators
  that are off during suspend
- added Doug's 'Reviewed-by' tag
---
 arch/arm/boot/dts/rk3288-veyron-fievel.dts | 58 +++++++++++++---------
 arch/arm/boot/dts/rk3288-veyron-tiger.dts  |  7 ---
 arch/arm/boot/dts/rk3288-veyron.dtsi       |  4 ++
 3 files changed, 38 insertions(+), 31 deletions(-)

diff --git a/arch/arm/boot/dts/rk3288-veyron-fievel.dts b/arch/arm/boot/dts/rk3288-veyron-fievel.dts
index 696566f72d30..65d029ccc907 100644
--- a/arch/arm/boot/dts/rk3288-veyron-fievel.dts
+++ b/arch/arm/boot/dts/rk3288-veyron-fievel.dts
@@ -20,11 +20,11 @@
 
 	/delete-node/ bt-activity;
 
-	ext_gmac: external-gmac-clock {
-		compatible = "fixed-clock";
-		#clock-cells = <0>;
-		clock-frequency = <125000000>;
-		clock-output-names = "ext_gmac";
+	vccsys: vccsys {
+		compatible = "regulator-fixed";
+		regulator-name = "vccsys";
+		regulator-boot-on;
+		regulator-always-on;
 	};
 
 	/*
@@ -41,7 +41,7 @@
 	vcc5_host1: vcc5-host1-regulator {
 		compatible = "regulator-fixed";
 		enable-active-high;
-		gpio = <&gpio5 RK_PC1 GPIO_ACTIVE_HIGH>;
+		gpio = <&gpio5 RK_PC2 GPIO_ACTIVE_HIGH>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&hub_usb1_pwr_en>;
 		regulator-name = "vcc5_host1";
@@ -52,7 +52,7 @@
 	vcc5_host2: vcc5-host2-regulator {
 		compatible = "regulator-fixed";
 		enable-active-high;
-		gpio = <&gpio5 RK_PC2 GPIO_ACTIVE_HIGH>;
+		gpio = <&gpio5 RK_PB6 GPIO_ACTIVE_HIGH>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&hub_usb2_pwr_en>;
 		regulator-name = "vcc5_host2";
@@ -70,6 +70,13 @@
 		regulator-always-on;
 		regulator-boot-on;
 	};
+
+	ext_gmac: external-gmac-clock {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <125000000>;
+		clock-output-names = "ext_gmac";
+	};
 };
 
 &gmac {
@@ -83,13 +90,13 @@
 	phy-supply = <&vcc33_lan>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&rgmii_pins>, <&phy_rst>, <&phy_pmeb>, <&phy_int>;
-	resets = <&cru SRST_MAC>;
-	reset-names = "stmmaceth";
 	rx_delay = <0x10>;
 	tx_delay = <0x30>;
 
-	/* Reset for the RTL8211 PHY which requires a 10-ms reset pulse (low)
-	 * with a 30ms settling time. */
+	/*
+	 * Reset for the RTL8211 PHY which requires a 10-ms reset pulse (low)
+	 * with a 30ms settling time.
+	 */
 	snps,reset-gpio = <&gpio4 RK_PB0 0>;
 	snps,reset-active-low;
 	snps,reset-delays-us = <0 10000 30000>;
@@ -120,7 +127,8 @@
 	regulators {
 		/delete-node/ LDO_REG1;
 
-		/* According to the schematic, vcc18_lcdt is for
+		/*
+		 * According to the schematic, vcc18_lcdt is for
 		 * HDMI_AVDD_1V8
 		 */
 		vcc18_lcdt: LDO_REG2 {
@@ -130,12 +138,12 @@
 			regulator-max-microvolt = <1800000>;
 			regulator-name = "vdd18_lcdt";
 			regulator-state-mem {
-				regulator-on-in-suspend;
-				regulator-suspend-microvolt = <1800000>;
+				regulator-off-in-suspend;
 			};
 		};
 
-		/* This is not a pwren anymore, but the real power supply,
+		/*
+		 * This is not a pwren anymore, but the real power supply,
 		 * vdd10_lcd for HDMI_AVDD_1V0
 		 */
 		vdd10_lcd: LDO_REG7 {
@@ -145,8 +153,7 @@
 			regulator-max-microvolt = <1000000>;
 			regulator-name = "vdd10_lcd";
 			regulator-state-mem {
-				regulator-on-in-suspend;
-				regulator-suspend-microvolt = <1000000>;
+				regulator-off-in-suspend;
 			};
 		};
 
@@ -158,8 +165,7 @@
 			regulator-max-microvolt = <3300000>;
 			regulator-name = "vcc33_ccd";
 			regulator-state-mem {
-				regulator-on-in-suspend;
-				regulator-suspend-microvolt = <3300000>;
+				regulator-off-in-suspend;
 			};
 		};
 
@@ -180,7 +186,7 @@
 		interrupts = <RK_PD7 IRQ_TYPE_LEVEL_LOW>;
 		marvell,wakeup-pin = /bits/ 16 <13>;
 		pinctrl-names = "default";
-		pinctrl-0 = <&bt_host_wake>;
+		pinctrl-0 = <&bt_host_wake_l>;
 	};
 };
 
@@ -206,13 +212,13 @@
 		&ddrio_pwroff
 		&global_pwroff
 
-		/* Wake only */
-		&bt_dev_wake_awake
-		&pwr_led1_on
-
 		/* For usb bc1.2 */
 		&usb_otg_ilim_sel
 		&usb_usb_ilim_sel
+
+		/* Wake only */
+		&bt_dev_wake_awake
+		&pwr_led1_on
 	>;
 
 	pinctrl-1 = <
@@ -221,6 +227,10 @@
 		&ddrio_pwroff
 		&global_pwroff
 
+		/* For usb bc1.2 */
+		&usb_otg_ilim_sel
+		&usb_usb_ilim_sel
+
 		/* Sleep only */
 		&bt_dev_wake_sleep
 		&pwr_led1_blink
diff --git a/arch/arm/boot/dts/rk3288-veyron-tiger.dts b/arch/arm/boot/dts/rk3288-veyron-tiger.dts
index fae26d530841..27557203ae33 100644
--- a/arch/arm/boot/dts/rk3288-veyron-tiger.dts
+++ b/arch/arm/boot/dts/rk3288-veyron-tiger.dts
@@ -19,13 +19,6 @@
 		     "google,veyron", "rockchip,rk3288";
 
 	/delete-node/ vcc18-lcd;
-
-	vccsys: vccsys {
-		compatible = "regulator-fixed";
-		regulator-name = "vccsys";
-		regulator-boot-on;
-		regulator-always-on;
-	};
 };
 
 &backlight {
diff --git a/arch/arm/boot/dts/rk3288-veyron.dtsi b/arch/arm/boot/dts/rk3288-veyron.dtsi
index 8fc8eac699bf..7525e3dd1fc1 100644
--- a/arch/arm/boot/dts/rk3288-veyron.dtsi
+++ b/arch/arm/boot/dts/rk3288-veyron.dtsi
@@ -586,6 +586,10 @@
 			rockchip,pins = <4 RK_PD7 RK_FUNC_GPIO &pcfg_pull_down>;
 		};
 
+		bt_host_wake_l: bt-host-wake-l {
+			rockchip,pins = <4 RK_PD7 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
 		/*
 		 * We run sdio0 at max speed; bump up drive strength.
 		 * We also have external pulls, so disable the internal ones.
-- 
2.22.0.709.g102302147b-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

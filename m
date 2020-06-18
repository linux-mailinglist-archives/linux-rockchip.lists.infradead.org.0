Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A149D1FF8E7
	for <lists+linux-rockchip@lfdr.de>; Thu, 18 Jun 2020 18:12:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ygi70q6uOgRS0GSzf7Vhi066J+A7Q4Z51xDThuU/kHU=; b=LRcZPsMPOS31Ad
	7Sv19gWrNcNmeGix0Wy+Zog3pvcQRakzE/sDgJvcSDtVBzdWgtuytDgFzvzjW7P7dMVVS5UsQQuLF
	EP9PhFzGGutFx08Xd9HA99pi1qjSvHdWa05QxS1s0i4T+mVdFofFoXbUZjK8/092ug8H4ax8eykXn
	/pJpKV9sSfBG0HKuWlolKj9Sw8XhrySgSqrZT+Hc+G3tspI8ZC2xCFY/QJ2g8eWZ846w7cB9yqzfZ
	A7oCYCfHI3Yy9uKeiM71VYU+2FiofYVWVY2fydqzNm6ZdFIKLbyPxfAe7cj3O7XJI+OqhU2OxZYEV
	rIOg16B0DsSrGMU7vnsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlx9g-0003sr-Rt; Thu, 18 Jun 2020 16:12:44 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlx9d-0003rX-K9
 for linux-rockchip@lists.infradead.org; Thu, 18 Jun 2020 16:12:43 +0000
Received: by mail-pl1-x642.google.com with SMTP id v24so2620358plo.6
 for <linux-rockchip@lists.infradead.org>; Thu, 18 Jun 2020 09:12:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Fr3UyAk9GdSSwdSlzqC72aIW5MXTMXqS7YI03Tn7qfg=;
 b=Cz9Fi93BwKxcdPOuCr73yZOG1IElyHTSHKAaOrKGkfYfvEV0yPE+TwYRh6zaiMtNCU
 GYILFng8HKbd2VNRJeDGGauKcDlCnFD83913qqvvGpc26qp/HlXAwNNZSoFEtZUQET0V
 QJ+h/R5k3kxj0x09pRogkp6sDNJ+8iQLN6Ohk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Fr3UyAk9GdSSwdSlzqC72aIW5MXTMXqS7YI03Tn7qfg=;
 b=rBAbynlUxh7M5HzPBf4WbxTW5bRXZ59A6BaPA3rsWGBIrXxZbU700S0Yi1dhOr6bhq
 +iybBGDz4NYA3GKyg8vrQOIWeJEt27CnHpHjXApsGCd+Vv1pphMCk4/Bgd6QYQGxvcCB
 lrU+6XC4yXfT6HDhko4mzQlHBKkXgco1CEAmXUEa0svDqu5qKpgPSmyfJjUJHngoP7Em
 3xC0fSevO5LeiJ55UcfYr3iqG7QRtdJy6iCeVYgttS7ooDjQJp6tEKtcVGKPxxQSFKcZ
 k7LVjUKzSxpeO9Z5DfiPZLE8EOikLie9nIxTPfE7pUlhvkc8HNd/KjaS8aqteMpj3Q0H
 8JUQ==
X-Gm-Message-State: AOAM531E7Wd88xWDln5FgpKgTVuNjiKBSHxeAsee56+rjhC/9DcFReWn
 OTPLSot7CjRY0d9xHzkm7HqOeCCgOiQ/1A==
X-Google-Smtp-Source: ABdhPJyO1XkjJ5LpeOhc1ow9aKgJVytma3Ko8i1FTnq04cFDzM9/xVUNM7qKEOi2aUqJqVo9FcdLCQ==
X-Received: by 2002:a17:902:8d97:: with SMTP id
 v23mr4341784plo.3.1592496761006; 
 Thu, 18 Jun 2020 09:12:41 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:b0c7:f192:869b:df87])
 by smtp.gmail.com with ESMTPSA id b3sm3247252pft.127.2020.06.18.09.12.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Jun 2020 09:12:40 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Simon Glass <sjg@chromium.org>
Subject: [PATCH 2/3] ARM: dts: rockchip: Add VMARC RK3288 SOM initial support
Date: Thu, 18 Jun 2020 21:42:19 +0530
Message-Id: <20200618161220.219452-3-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618161220.219452-1-jagan@amarulasolutions.com>
References: <20200618161220.219452-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_091241_662399_6A1AD140 
X-CRM114-Status: GOOD (  10.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-rockchip@lists.infradead.org, Tom Cubie <tom@radxa.com>,
 U-Boot-Denx <u-boot@lists.denx.de>, Jagan Teki <jagan@amarulasolutions.com>,
 Suniel Mahesh <sunil@amarulasolutions.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

VMARC RK3288 SOM is a standard SMARC SOM design with
Rockchip RK3288 SoC, which is designed by Vamrs.

Specification:
- Rockchip RK3288
- PMIC: RK808
- SD slot, 16GiB eMMC
- 2xUSB-2.0, 1xUSB3.0
- USB-C for power supply
- Ethernet, PCIe
- HDMI, MIPI-DSI/CSI, eDP

Add initial support for VMARC RK3288 SOM, this would use
with associated carrier board.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm/dts/rk3288-vmarc-som.dtsi | 298 +++++++++++++++++++++++++++++
 1 file changed, 298 insertions(+)
 create mode 100644 arch/arm/dts/rk3288-vmarc-som.dtsi

diff --git a/arch/arm/dts/rk3288-vmarc-som.dtsi b/arch/arm/dts/rk3288-vmarc-som.dtsi
new file mode 100644
index 0000000000..1549ac4044
--- /dev/null
+++ b/arch/arm/dts/rk3288-vmarc-som.dtsi
@@ -0,0 +1,298 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2019 Fuzhou Rockchip Electronics Co., Ltd
+ * Copyright (c) 2019 Vamrs Limited
+ * Copyright (c) 2019 Amarula Solutions(India)
+ */
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/pinctrl/rockchip.h>
+#include <dt-bindings/pwm/pwm.h>
+
+/ {
+	compatible = "vamrs,rk3288-vmarc-som", "rockchip,rk3288";
+
+	ext_gmac: external-gmac-clock {
+		compatible = "fixed-clock";
+		clock-frequency = <125000000>;
+		clock-output-names = "ext_gmac";
+		#clock-cells = <0>;
+	};
+
+	vccio_flash: vccio-flash-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "vccio_flash";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		startup-delay-us = <150>;
+		vin-supply = <&vcc_io>;
+	};
+
+	vcc_sys: vsys-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc_sys";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		regulator-always-on;
+		regulator-boot-on;
+	};
+};
+
+&emmc {
+	bus-width = <8>;
+	cap-mmc-highspeed;
+	disable-wp;
+	non-removable;
+	pinctrl-names = "default";
+	pinctrl-0 = <&emmc_clk &emmc_cmd &emmc_pwr &emmc_bus8>;
+	status = "okay";
+};
+
+&gmac {
+	assigned-clocks = <&cru SCLK_MAC>;
+	assigned-clock-parents = <&ext_gmac>;
+	clock_in_out = "input";
+	phy-mode = "rgmii";
+	phy-supply = <&vcc_io>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&rgmii_pins>;
+	snps,reset-gpio = <&gpio4 RK_PA7 GPIO_ACTIVE_HIGH>;
+	snps,reset-active-low;
+	snps,reset-delays-us = <0 10000 50000>;
+	tx_delay = <0x30>;
+	rx_delay = <0x10>;
+	max-speed = <1000>;
+};
+
+&i2c0 {
+	clock-frequency = <400000>;
+	status = "okay";
+
+	rk808: pmic@1b {
+		compatible = "rockchip,rk808";
+		reg = <0x1b>;
+		interrupt-parent = <&gpio0>;
+		interrupts = <RK_PA4 IRQ_TYPE_LEVEL_LOW>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pmic_int &global_pwroff>;
+		rockchip,system-power-controller;
+		wakeup-source;
+		#clock-cells = <1>;
+		clock-output-names = "rk808-clkout1", "rk808-clkout2";
+
+		vcc1-supply = <&vcc_sys>;
+		vcc2-supply = <&vcc_sys>;
+		vcc3-supply = <&vcc_sys>;
+		vcc4-supply = <&vcc_sys>;
+		vcc6-supply = <&vcc_sys>;
+		vcc7-supply = <&vcc_sys>;
+		vcc8-supply = <&vcc_io>;
+		vcc9-supply = <&vcc_io>;
+		vcc10-supply = <&vcc_sys>;
+		vcc11-supply = <&vcc_sys>;
+		vcc12-supply = <&vcc_io>;
+		vddio-supply = <&vcc_io>;
+
+		regulators {
+			vdd_cpu: DCDC_REG1 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <750000>;
+				regulator-max-microvolt = <1400000>;
+				regulator-name = "vdd_arm";
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vdd_gpu: DCDC_REG2 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <850000>;
+				regulator-max-microvolt = <1250000>;
+				regulator-name = "vdd_gpu";
+				regulator-ramp-delay = <6000>;
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc_ddr: DCDC_REG3 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-name = "vcc_ddr";
+				regulator-state-mem {
+					regulator-on-in-suspend;
+				};
+			};
+
+			vcc_io: DCDC_REG4 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-name = "vcc_io";
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <3300000>;
+				};
+			};
+
+			vcc_tp: LDO_REG1 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-name = "vcc_tp";
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcca_codec: LDO_REG2 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-name = "vcca_codec";
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <3300000>;
+				};
+			};
+
+			vdd_10: LDO_REG3 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1000000>;
+				regulator-max-microvolt = <1000000>;
+				regulator-name = "vdd_10";
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <1000000>;
+				};
+			};
+
+			vcc_wl: LDO_REG4 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-name = "vcc_wl";
+				regulator-state-mem {
+					regulator-on-in-suspend;
+				};
+			};
+
+			vccio_sd: LDO_REG5 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-name = "vccio_sd";
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <3300000>;
+				};
+			};
+
+			vdd10_lcd: LDO_REG6 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1000000>;
+				regulator-max-microvolt = <1000000>;
+				regulator-name = "vdd10_lcd";
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc_18: LDO_REG7 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-name = "vcc_18";
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <1800000>;
+				};
+			};
+
+			vcc18_lcd: LDO_REG8 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-name = "vcc18_lcd";
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc_sd: SWITCH_REG1 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-name = "vcc_sd";
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc_lcd: SWITCH_REG2 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-name = "vcc_lcd";
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+		};
+	};
+};
+
+&io_domains {
+	bb-supply = <&vcc_io>;
+	flash0-supply = <&vccio_flash>;
+	gpio1830-supply = <&vcc_18>;
+	gpio30-supply = <&vcc_io>;
+	sdcard-supply = <&vccio_sd>;
+	status = "okay";
+};
+
+&pinctrl {
+	pcfg_pull_none_drv_8ma: pcfg-pull-none-drv-8ma {
+		drive-strength = <8>;
+	};
+
+	pcfg_pull_up_drv_8ma: pcfg-pull-up-drv-8ma {
+		bias-pull-up;
+		drive-strength = <8>;
+	};
+
+	pmic {
+		pmic_int: pmic-int {
+			rockchip,pins = <0 RK_PA4 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+
+	sdmmc {
+		sdmmc_bus4: sdmmc-bus4 {
+			rockchip,pins =
+				<6 RK_PC0 1 &pcfg_pull_up_drv_8ma>,
+				<6 RK_PC1 1 &pcfg_pull_up_drv_8ma>,
+				<6 RK_PC2 1 &pcfg_pull_up_drv_8ma>,
+				<6 RK_PC3 1 &pcfg_pull_up_drv_8ma>;
+		};
+
+		sdmmc_clk: sdmmc-clk {
+			rockchip,pins =
+				<6 RK_PC4 1 &pcfg_pull_none_drv_8ma>;
+		};
+
+		sdmmc_cmd: sdmmc-cmd {
+			rockchip,pins =
+				<6 RK_PC5 1 &pcfg_pull_up_drv_8ma>;
+		};
+	};
+};
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

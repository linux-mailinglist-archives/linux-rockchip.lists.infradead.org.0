Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2852EB344
	for <lists+linux-rockchip@lfdr.de>; Sat, 27 Apr 2019 13:49:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z6ZdzeRJlP1+SkBcWhiV0iRSm3yLDraIdkt2JFoY9bg=; b=tc7pqSf8dKfvf9
	DbnJjHcpjOV9mM+CjJB6UvgTdyX3IhcaqTR31QPXNcLNogY1pIueHfWjry2FgmG3Sd6iCwniar2CY
	R9QIe5OAl9ab0x0qCiEAv5MylRGfe+D++K7w1EIzIKzm1BvicxVh+aO8sjQZsIFIok9uhaAzr7fif
	N58ubHQmrNZYLcQurogA7BNhmhMisDbuczE4QTyaT9y2sTnuUZ0mlTL8Nok/IH2ylIjVlbtYA2f9u
	IZJuMMcVfvT/lCM4PR3Ejfn0jlwSx+F+OD95aTbBL9mbd5BLstV08Kg6hpyirqJGnN1QL52m16f+R
	s7GfWDkAV8lOiqD0JcAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKLpm-0001AT-4o; Sat, 27 Apr 2019 11:49:34 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKLph-00018k-Un
 for linux-rockchip@lists.infradead.org; Sat, 27 Apr 2019 11:49:32 +0000
Received: by mail-pf1-x443.google.com with SMTP id s4so2992103pfh.7
 for <linux-rockchip@lists.infradead.org>; Sat, 27 Apr 2019 04:49:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=uWfueGC3YBCodcmxWjcTTynqtqhdPaaQPJVbOp596zk=;
 b=fj2cRmxZTclMl33WFvI3MRUfS+cFu3b/HPpf8LCMdpfzPyqMPvnDMjGmm8WiyxRzlA
 46DHX7xeAKUMEN0CGBXPiC6Y8S6aT+KrI896Bo0+sDqaXnTZ9Lg0Bv31soSJ9TEpbHRW
 eTxJqwJ+E1g592er/kuVCFSaahq+F1L1FjO4k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=uWfueGC3YBCodcmxWjcTTynqtqhdPaaQPJVbOp596zk=;
 b=XZaib/owJEcFuk0E4fCVB+pGT1lIyccrisDfJZ/X42rh7sPM++wMIO9iJIWl4w7Jy0
 XSQ7MSq9HlYRPIh3UhHXXaQBih4i4jP1TVOyPUVJXB/2tB6Ji0bliBD3oyL3DPPeRsb1
 lI5MktfH7PLhg2StlM3gXHzB+JybAj+mh4OvVgW5ehe6fP/CDN401J7B/66obDRe4i2b
 v0XE00NTlhIw0FW7FXhpnjXIBWCF17YocJvG5BhUEH5tnCtgD5h4YMPvMFVU1aXMYfgV
 TrElsjf3eqWMX69mZmmp+UUcz1sGe2ndFk2DDBUl4INiAKwshB6+C022MiQs0QVb8MC9
 RpQA==
X-Gm-Message-State: APjAAAUFEtrPqfAu2zYNzHisMX/DuQWv/bKDoH5xdF+oiz2NohO+Zugx
 /g3avqwGleJb3JYC2QG5MsutNA==
X-Google-Smtp-Source: APXvYqwn2+ON/R7EYEdkgFAUIiMHvTuvI34evIHpNi4YHQExInp638ueC2iDGsZRwEPZvG+Q26RRHg==
X-Received: by 2002:aa7:8b83:: with SMTP id r3mr21426240pfd.248.1556365769039; 
 Sat, 27 Apr 2019 04:49:29 -0700 (PDT)
Received: from localhost.localdomain ([115.97.185.144])
 by smtp.gmail.com with ESMTPSA id y3sm2368768pfe.9.2019.04.27.04.49.24
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 27 Apr 2019 04:49:28 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, Akash Gajjar <akash@openedev.com>,
 Tom Rini <trini@konsulko.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v6 05/13] rockchip: rk3399: Add Orangepi RK3399 support
Date: Sat, 27 Apr 2019 17:18:48 +0530
Message-Id: <20190427114852.7608-6-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190427114852.7608-1-jagan@amarulasolutions.com>
References: <20190427114852.7608-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190427_044929_998292_AF88B2F6 
X-CRM114-Status: GOOD (  13.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com,
 Jagan Teki <jagan@amarulasolutions.com>, u-boot@lists.denx.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Add initial support for Orangepi RK3399 board.

Specification
- Rockchip RK3399
- 2GB/4GB DDR3
- 16GB eMMC
- SD card slot
- RTL8211E 1Gbps
- AP6356S WiFI/BT
- HDMI In/Out, DP, MIPI DSI/CSI
- Mini PCIe
- Sensors, Keys etc
- DC12V-2A and DC5V-2A

Commit details about Linux DTS sync:
"arm64: dts: rockchip: Add support for the Orange Pi RK3399"
(sha1: d3e71487a790979057c0fdbf32f85033639c16e6)

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm/dts/Makefile                    |   1 +
 arch/arm/dts/rk3399-orangepi-u-boot.dtsi |   7 +
 arch/arm/dts/rk3399-orangepi.dts         | 771 +++++++++++++++++++++++
 board/rockchip/evb_rk3399/MAINTAINERS    |   7 +
 configs/orangepi-rk3399_defconfig        |  58 ++
 5 files changed, 844 insertions(+)
 create mode 100644 arch/arm/dts/rk3399-orangepi-u-boot.dtsi
 create mode 100644 arch/arm/dts/rk3399-orangepi.dts
 create mode 100644 configs/orangepi-rk3399_defconfig

diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 0e2ffdb87f..6d55b0caf8 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -87,6 +87,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += \
 	rk3399-evb.dtb \
 	rk3399-firefly.dtb \
 	rk3399-gru-bob.dtb \
+	rk3399-orangepi.dtb \
 	rk3399-puma-ddr1333.dtb \
 	rk3399-puma-ddr1600.dtb \
 	rk3399-puma-ddr1866.dtb \
diff --git a/arch/arm/dts/rk3399-orangepi-u-boot.dtsi b/arch/arm/dts/rk3399-orangepi-u-boot.dtsi
new file mode 100644
index 0000000000..236b61d78d
--- /dev/null
+++ b/arch/arm/dts/rk3399-orangepi-u-boot.dtsi
@@ -0,0 +1,7 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright (C) 2019 Jagan Teki <jagan@amarulasolutions.com>
+ */
+
+#include "rk3399-u-boot.dtsi"
+#include "rk3399-sdram-ddr3-1333.dtsi"
diff --git a/arch/arm/dts/rk3399-orangepi.dts b/arch/arm/dts/rk3399-orangepi.dts
new file mode 100644
index 0000000000..cf37b96a6b
--- /dev/null
+++ b/arch/arm/dts/rk3399-orangepi.dts
@@ -0,0 +1,771 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2017 Fuzhou Rockchip Electronics Co., Ltd.
+ */
+
+/dts-v1/;
+
+#include "dt-bindings/pwm/pwm.h"
+#include "dt-bindings/input/input.h"
+#include "rk3399.dtsi"
+#include "rk3399-opp.dtsi"
+
+/ {
+	model = "Orange Pi RK3399 Board";
+	compatible = "rockchip,rk3399-orangepi", "rockchip,rk3399";
+
+	chosen {
+		stdout-path = "serial2:1500000n8";
+	};
+
+	clkin_gmac: external-gmac-clock {
+		compatible = "fixed-clock";
+		clock-frequency = <125000000>;
+		clock-output-names = "clkin_gmac";
+		#clock-cells = <0>;
+	};
+
+	adc-keys {
+		compatible = "adc-keys";
+		io-channels = <&saradc 1>;
+		io-channel-names = "buttons";
+		keyup-threshold-microvolt = <1800000>;
+		poll-interval = <100>;
+
+		button-up {
+			label = "Volume Up";
+			linux,code = <KEY_VOLUMEUP>;
+			press-threshold-microvolt = <100000>;
+		};
+
+		button-down {
+			label = "Volume Down";
+			linux,code = <KEY_VOLUMEDOWN>;
+			press-threshold-microvolt = <300000>;
+		};
+
+		back {
+			label = "Back";
+			linux,code = <KEY_BACK>;
+			press-threshold-microvolt = <985000>;
+		};
+
+		menu {
+			label = "Menu";
+			linux,code = <KEY_MENU>;
+			press-threshold-microvolt = <1314000>;
+		};
+	};
+
+	dc_12v: dc-12v {
+		compatible = "regulator-fixed";
+		regulator-name = "dc_12v";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <12000000>;
+		regulator-max-microvolt = <12000000>;
+	};
+
+	keys: gpio-keys {
+		compatible = "gpio-keys";
+		autorepeat;
+
+		power {
+			debounce-interval = <100>;
+			gpios = <&gpio0 RK_PA5 GPIO_ACTIVE_LOW>;
+			label = "GPIO Power";
+			linux,code = <KEY_POWER>;
+			linux,input-type = <1>;
+			pinctrl-names = "default";
+			pinctrl-0 = <&pwr_btn>;
+			wakeup-source;
+		};
+	};
+
+	sdio_pwrseq: sdio-pwrseq {
+		compatible = "mmc-pwrseq-simple";
+		clocks = <&rk808 1>;
+		clock-names = "ext_clock";
+		pinctrl-names = "default";
+		pinctrl-0 = <&wifi_reg_on_h>;
+		reset-gpios = <&gpio0 RK_PB2 GPIO_ACTIVE_LOW>;
+	};
+
+	/* switched by pmic_sleep */
+	vcc1v8_s3: vcca1v8_s3: vcc1v8-s3 {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc1v8_s3";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		vin-supply = <&vcc_1v8>;
+	};
+
+	vcc3v0_sd: vcc3v0-sd {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio0 RK_PA1 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&sdmmc0_pwr_h>;
+		regulator-boot-on;
+		regulator-max-microvolt = <3000000>;
+		regulator-min-microvolt = <3000000>;
+		regulator-name = "vcc3v0_sd";
+		vin-supply = <&vcc3v3_sys>;
+	};
+
+	vcc3v3_sys: vcc3v3-sys {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc3v3_sys";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&vcc_sys>;
+	};
+
+	vcc5v0_host: vcc5v0-host-regulator {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio4 RK_PD1 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&vcc5v0_host_en>;
+		regulator-name = "vcc5v0_host";
+		regulator-always-on;
+		vin-supply = <&vcc_sys>;
+	};
+
+	vcc5v0_typec0: vcc5v0-typec0-regulator {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio1 RK_PA3 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&vcc5v0_typec0_en>;
+		regulator-name = "vcc5v0_typec0";
+		vin-supply = <&vcc_sys>;
+	};
+
+	vcc_sys: vcc-sys {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc_sys";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		vin-supply = <&dc_12v>;
+	};
+
+	vdd_log: vdd-log {
+		compatible = "pwm-regulator";
+		pwms = <&pwm2 0 25000 1>;
+		regulator-name = "vdd_log";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <800000>;
+		regulator-max-microvolt = <1400000>;
+		vin-supply = <&vcc_sys>;
+	};
+};
+
+&cpu_l0 {
+	cpu-supply = <&vdd_cpu_l>;
+};
+
+&cpu_l1 {
+	cpu-supply = <&vdd_cpu_l>;
+};
+
+&cpu_l2 {
+	cpu-supply = <&vdd_cpu_l>;
+};
+
+&cpu_l3 {
+	cpu-supply = <&vdd_cpu_l>;
+};
+
+&cpu_b0 {
+	cpu-supply = <&vdd_cpu_b>;
+};
+
+&cpu_b1 {
+	cpu-supply = <&vdd_cpu_b>;
+};
+
+&emmc_phy {
+	status = "okay";
+};
+
+&gmac {
+	assigned-clocks = <&cru SCLK_RMII_SRC>;
+	assigned-clock-parents = <&clkin_gmac>;
+	clock_in_out = "input";
+	phy-supply = <&vcc3v3_s3>;
+	phy-mode = "rgmii";
+	pinctrl-names = "default";
+	pinctrl-0 = <&rgmii_pins>;
+	snps,reset-gpio = <&gpio3 RK_PB7 GPIO_ACTIVE_LOW>;
+	snps,reset-active-low;
+	snps,reset-delays-us = <0 10000 50000>;
+	tx_delay = <0x28>;
+	rx_delay = <0x11>;
+	status = "okay";
+};
+
+&gpu {
+	mali-supply = <&vdd_gpu>;
+	status = "okay";
+};
+
+&hdmi {
+	ddc-i2c-bus = <&i2c3>;
+	status = "okay";
+};
+
+&hdmi_sound {
+	status = "okay";
+};
+
+&i2c0 {
+	clock-frequency = <400000>;
+	i2c-scl-rising-time-ns = <168>;
+	i2c-scl-falling-time-ns = <4>;
+	status = "okay";
+
+	rk808: pmic@1b {
+		compatible = "rockchip,rk808";
+		reg = <0x1b>;
+		interrupt-parent = <&gpio1>;
+		interrupts = <21 IRQ_TYPE_LEVEL_LOW>;
+		#clock-cells = <1>;
+		clock-output-names = "rtc_clko_soc", "rtc_clko_wifi";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pmic_int_l>;
+		rockchip,system-power-controller;
+		wakeup-source;
+
+		vcc1-supply = <&vcc3v3_sys>;
+		vcc2-supply = <&vcc3v3_sys>;
+		vcc3-supply = <&vcc3v3_sys>;
+		vcc4-supply = <&vcc3v3_sys>;
+		vcc6-supply = <&vcc3v3_sys>;
+		vcc7-supply = <&vcc3v3_sys>;
+		vcc8-supply = <&vcc3v3_sys>;
+		vcc9-supply = <&vcc3v3_sys>;
+		vcc10-supply = <&vcc3v3_sys>;
+		vcc11-supply = <&vcc3v3_sys>;
+		vcc12-supply = <&vcc3v3_sys>;
+		vddio-supply = <&vcc_3v0>;
+
+		regulators {
+			vdd_center: DCDC_REG1 {
+				regulator-name = "vdd_center";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <700000>;
+				regulator-max-microvolt = <1500000>;
+				regulator-ramp-delay = <6001>;
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vdd_cpu_l: DCDC_REG2 {
+				regulator-name = "vdd_cpu_l";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <700000>;
+				regulator-max-microvolt = <1500000>;
+				regulator-ramp-delay = <6001>;
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc_ddr: DCDC_REG3 {
+				regulator-name = "vcc_ddr";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-state-mem {
+					regulator-on-in-suspend;
+				};
+			};
+
+			vcc_1v8: DCDC_REG4 {
+				regulator-name = "vcc_1v8";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <1800000>;
+				};
+			};
+
+			vcc1v8_dvp: LDO_REG1 {
+				regulator-name = "vcc1v8_dvp";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3400000>;
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc3v0_tp: LDO_REG2 {
+				regulator-name = "vcc3v0_tp";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3400000>;
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc1v8_pmupll: LDO_REG3 {
+				regulator-name = "vcc1v8_pmupll";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <800000>;
+				regulator-max-microvolt = <2500000>;
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <1800000>;
+				};
+			};
+
+			vcc_sdio: LDO_REG4 {
+				regulator-name = "vcc_sdio";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3400000>;
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <3000000>;
+				};
+			};
+
+			vcca3v0_codec: LDO_REG5 {
+				regulator-name = "vcca3v0_codec";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3400000>;
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc_1v5: LDO_REG6 {
+				regulator-name = "vcc_1v5";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <800000>;
+				regulator-max-microvolt = <2500000>;
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <1500000>;
+				};
+			};
+
+			vcca1v8_codec: LDO_REG7 {
+				regulator-name = "vcca1v8_codec";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <800000>;
+				regulator-max-microvolt = <2500000>;
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc_3v0: LDO_REG8 {
+				regulator-name = "vcc_3v0";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3400000>;
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <3000000>;
+				};
+			};
+
+			vcc3v3_s3: SWITCH_REG1 {
+				regulator-name = "vcc3v3_s3";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc3v3_s0: SWITCH_REG2 {
+				regulator-name = "vcc3v3_s0";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+		};
+	};
+
+	vdd_cpu_b: regulator@40 {
+		compatible = "silergy,syr827";
+		reg = <0x40>;
+		fcs,suspend-voltage-selector = <1>;
+		regulator-name = "vdd_cpu_b";
+		regulator-min-microvolt = <712500>;
+		regulator-max-microvolt = <1500000>;
+		regulator-ramp-delay = <1000>;
+		regulator-always-on;
+		regulator-boot-on;
+		vin-supply = <&vcc3v3_sys>;
+
+		regulator-state-mem {
+			regulator-off-in-suspend;
+		};
+	};
+
+	vdd_gpu: regulator@41 {
+		compatible = "silergy,syr828";
+		reg = <0x41>;
+		fcs,suspend-voltage-selector = <1>;
+		regulator-name = "vdd_gpu";
+		regulator-min-microvolt = <712500>;
+		regulator-max-microvolt = <1500000>;
+		regulator-ramp-delay = <1000>;
+		regulator-always-on;
+		regulator-boot-on;
+		vin-supply = <&vcc3v3_sys>;
+
+		regulator-state-mem {
+			regulator-off-in-suspend;
+		};
+	};
+};
+
+&i2c1 {
+	i2c-scl-rising-time-ns = <450>;
+	i2c-scl-falling-time-ns = <15>;
+	status = "okay";
+};
+
+&i2c3 {
+	i2c-scl-rising-time-ns = <450>;
+	i2c-scl-falling-time-ns = <15>;
+	status = "okay";
+};
+
+&i2c4 {
+	clock-frequency = <400000>;
+	i2c-scl-rising-time-ns = <450>;
+	i2c-scl-falling-time-ns = <15>;
+	status = "okay";
+
+	ak09911@c {
+		compatible = "asahi-kasei,ak09911";
+		reg = <0x0c>;
+		vdd-supply = <&vcc3v3_s3>;
+	};
+
+	mpu6500@68 {
+		compatible = "invensense,mpu6500";
+		reg = <0x68>;
+		interrupt-parent = <&gpio1>;
+		interrupts = <RK_PC6 IRQ_TYPE_EDGE_RISING>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&gsensor_int_l>;
+		vddio-supply = <&vcc3v3_s3>;
+	};
+
+	lsm6ds3@6a {
+		compatible = "st,lsm6ds3";
+		reg = <0x6a>;
+		interrupt-parent = <&gpio1>;
+		interrupts = <RK_PD0 IRQ_TYPE_EDGE_RISING>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&gyr_int_l>;
+		vdd-supply = <&vcc3v3_s3>;
+		vddio-supply = <&vcc3v3_s3>;
+	};
+
+	cm32181@10 {
+		compatible = "capella,cm32181";
+		reg = <0x10>;
+		interrupt-parent = <&gpio4>;
+		interrupts = <RK_PD0 IRQ_TYPE_EDGE_RISING>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&light_int_l>;
+		vdd-supply = <&vcc3v3_s3>;
+	};
+};
+
+&io_domains {
+	status = "okay";
+	bt656-supply = <&vcc_3v0>;
+	audio-supply = <&vcca1v8_codec>;
+	sdmmc-supply = <&vcc_sdio>;
+	gpio1830-supply = <&vcc_3v0>;
+};
+
+&pmu_io_domains {
+	status = "okay";
+	pmu1830-supply = <&vcc_3v0>;
+};
+
+&pinctrl {
+	buttons {
+		pwr_btn: pwr-btn {
+			rockchip,pins = <0 RK_PA5 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+
+	pmic {
+		pmic_int_l: pmic-int-l {
+			rockchip,pins =
+				<1 RK_PC5 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+
+	sd {
+		sdmmc0_pwr_h: sdmmc0-pwr-h {
+			rockchip,pins =
+				<RK_GPIO0 RK_PA1 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	usb2 {
+		vcc5v0_host_en: vcc5v0-host-en {
+			rockchip,pins =
+				<4 RK_PD1 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		vcc5v0_typec0_en: vcc5v0-typec0-en {
+			rockchip,pins =
+				<1 RK_PA3 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	sdio-pwrseq {
+		wifi_reg_on_h: wifi-reg-on-h {
+			rockchip,pins = <0 RK_PB2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	wifi {
+		wifi_host_wake_l: wifi-host-wake-l {
+			rockchip,pins = <0 RK_PA3 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	bluetooth {
+		bt_reg_on_h: bt-enable-h {
+			rockchip,pins = <0 RK_PB1 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		bt_host_wake_l: bt-host-wake-l {
+			rockchip,pins = <0 RK_PA4 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		bt_wake_l: bt-wake-l {
+			rockchip,pins = <2 RK_PD2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	mpu6500 {
+		gsensor_int_l: gsensor-int-l {
+			rockchip,pins = <1 RK_PC6 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	lsm6ds3 {
+		gyr_int_l: gyr-int-l {
+			rockchip,pins = <1 RK_PD0 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	cm32181 {
+		light_int_l: light-int-l {
+			rockchip,pins = <4 RK_PD0 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+};
+
+&pwm0 {
+	status = "okay";
+};
+
+&pwm2 {
+	status = "okay";
+};
+
+&saradc {
+	vref-supply = <&vcca1v8_s3>;
+	status = "okay";
+};
+
+&sdhci {
+	bus-width = <8>;
+	mmc-hs400-1_8v;
+	mmc-hs400-enhanced-strobe;
+	non-removable;
+	status = "okay";
+};
+
+&sdio0 {
+	bus-width = <4>;
+	cap-sd-highspeed;
+	cap-sdio-irq;
+	clock-frequency = <50000000>;
+	disable-wp;
+	keep-power-in-suspend;
+	max-frequency = <50000000>;
+	mmc-pwrseq = <&sdio_pwrseq>;
+	non-removable;
+	pinctrl-names = "default";
+	pinctrl-0 = <&sdio0_bus4 &sdio0_cmd &sdio0_clk>;
+	sd-uhs-sdr104;
+	status = "okay";
+
+	brcmf: wifi@1 {
+		compatible = "brcm,bcm4329-fmac";
+		interrupt-parent = <&gpio0>;
+		interrupts = <RK_PA3 GPIO_ACTIVE_HIGH>;
+		interrupt-names = "host-wake";
+		pinctrl-names = "default";
+		pinctrl-0 = <&wifi_host_wake_l>;
+	};
+};
+
+&sdmmc {
+	bus-width = <4>;
+	cap-mmc-highspeed;
+	cap-sd-highspeed;
+	cd-gpios = <&gpio0 RK_PA7 GPIO_ACTIVE_LOW>;
+	clock-frequency = <150000000>;
+	disable-wp;
+	max-frequency = <150000000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&sdmmc_clk &sdmmc_cmd &sdmmc_cd &sdmmc_bus4>;
+	vmmc-supply = <&vcc3v0_sd>;
+	vqmmc-supply = <&vcc_sdio>;
+	status = "okay";
+};
+
+&tcphy0 {
+	status = "okay";
+};
+
+&tcphy1 {
+	status = "okay";
+};
+
+&tsadc {
+	rockchip,hw-tshut-mode = <1>;
+	rockchip,hw-tshut-polarity = <1>;
+	status = "okay";
+};
+
+&u2phy0 {
+	status = "okay";
+
+	u2phy0_otg: otg-port {
+		phy-supply = <&vcc5v0_typec0>;
+		status = "okay";
+	};
+
+	u2phy0_host: host-port {
+		phy-supply = <&vcc5v0_host>;
+		status = "okay";
+	};
+};
+
+&u2phy1 {
+	status = "okay";
+
+	u2phy1_otg: otg-port {
+		status = "okay";
+	};
+
+	u2phy1_host: host-port {
+		phy-supply = <&vcc5v0_host>;
+		status = "okay";
+	};
+};
+
+&uart0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart0_xfer &uart0_cts &uart0_rts>;
+	status = "okay";
+
+	bluetooth {
+		compatible = "brcm,bcm43438-bt";
+		clocks = <&rk808 1>;
+		clock-names = "ext_clock";
+		device-wakeup-gpios = <&gpio2 RK_PD2 GPIO_ACTIVE_HIGH>;
+		host-wakeup-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_HIGH>;
+		shutdown-gpios = <&gpio0 RK_PB1 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&bt_host_wake_l &bt_wake_l &bt_reg_on_h>;
+	};
+};
+
+&uart2 {
+	status = "okay";
+};
+
+&usb_host0_ehci {
+	status = "okay";
+};
+
+&usb_host0_ohci {
+	status = "okay";
+};
+
+&usb_host1_ehci {
+	status = "okay";
+};
+
+&usb_host1_ohci {
+	status = "okay";
+};
+
+&usbdrd3_0 {
+	status = "okay";
+};
+
+&usbdrd_dwc3_0 {
+	status = "okay";
+	dr_mode = "otg";
+};
+
+&usbdrd3_1 {
+	status = "okay";
+};
+
+&usbdrd_dwc3_1 {
+	status = "okay";
+	dr_mode = "host";
+};
+
+&vopb {
+	status = "okay";
+};
+
+&vopb_mmu {
+	status = "okay";
+};
+
+&vopl {
+	status = "okay";
+};
+
+&vopl_mmu {
+	status = "okay";
+};
diff --git a/board/rockchip/evb_rk3399/MAINTAINERS b/board/rockchip/evb_rk3399/MAINTAINERS
index caad30641e..07ee8ce92c 100644
--- a/board/rockchip/evb_rk3399/MAINTAINERS
+++ b/board/rockchip/evb_rk3399/MAINTAINERS
@@ -5,3 +5,10 @@ F:      board/rockchip/evb_rk3399
 F:      include/configs/evb_rk3399.h
 F:      configs/evb-rk3399_defconfig
 F:      configs/firefly-rk3399_defconfig
+
+ORANGEPI-RK3399
+M:	Jagan Teki <jagan@amarulasolutions.com>
+S:	Maintained
+F:	configs/orangepi-rk3399_defconfig
+F:	arch/arm/dts/rk3399-u-boot.dtsi
+F:	arch/arm/dts/rk3399-orangepi-u-boot.dtsi
diff --git a/configs/orangepi-rk3399_defconfig b/configs/orangepi-rk3399_defconfig
new file mode 100644
index 0000000000..deb7bc1388
--- /dev/null
+++ b/configs/orangepi-rk3399_defconfig
@@ -0,0 +1,58 @@
+CONFIG_ARM=y
+CONFIG_ARCH_ROCKCHIP=y
+CONFIG_SYS_TEXT_BASE=0x00200000
+CONFIG_SPL_LIBCOMMON_SUPPORT=y
+CONFIG_SPL_LIBGENERIC_SUPPORT=y
+CONFIG_SYS_MALLOC_F_LEN=0x4000
+CONFIG_ROCKCHIP_RK3399=y
+CONFIG_ROCKCHIP_SPL_RESERVE_IRAM=0x4000
+CONFIG_DEBUG_UART_BASE=0xFF1A0000
+CONFIG_DEBUG_UART_CLOCK=24000000
+CONFIG_SPL_STACK_R_ADDR=0x80000
+CONFIG_DEBUG_UART=y
+CONFIG_NR_DRAM_BANKS=1
+CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-orangepi.dtb"
+# CONFIG_DISPLAY_CPUINFO is not set
+CONFIG_DISPLAY_BOARDINFO_LATE=y
+CONFIG_SPL_STACK_R=y
+CONFIG_SPL_STACK_R_MALLOC_SIMPLE_LEN=0x4000
+CONFIG_CMD_BOOTZ=y
+CONFIG_CMD_GPT=y
+CONFIG_CMD_MMC=y
+CONFIG_CMD_SF=y
+CONFIG_CMD_USB=y
+# CONFIG_CMD_SETEXPR is not set
+CONFIG_CMD_TIME=y
+CONFIG_SPL_OF_CONTROL=y
+CONFIG_DEFAULT_DEVICE_TREE="rk3399-orangepi"
+CONFIG_OF_SPL_REMOVE_PROPS="pinctrl-0 pinctrl-names clock-names interrupt-parent assigned-clocks assigned-clock-rates assigned-clock-parents"
+CONFIG_ENV_IS_IN_MMC=y
+CONFIG_ROCKCHIP_GPIO=y
+CONFIG_SYS_I2C_ROCKCHIP=y
+CONFIG_MMC_DW=y
+CONFIG_MMC_DW_ROCKCHIP=y
+CONFIG_MMC_SDHCI=y
+CONFIG_MMC_SDHCI_ROCKCHIP=y
+CONFIG_DM_ETH=y
+CONFIG_ETH_DESIGNWARE=y
+CONFIG_GMAC_ROCKCHIP=y
+CONFIG_PMIC_RK8XX=y
+CONFIG_REGULATOR_PWM=y
+CONFIG_REGULATOR_RK8XX=y
+CONFIG_PWM_ROCKCHIP=y
+CONFIG_BAUDRATE=1500000
+CONFIG_DEBUG_UART_SHIFT=2
+CONFIG_SYSRESET=y
+CONFIG_USB=y
+CONFIG_USB_XHCI_HCD=y
+CONFIG_USB_XHCI_DWC3=y
+CONFIG_USB_EHCI_HCD=y
+CONFIG_USB_EHCI_GENERIC=y
+CONFIG_USB_HOST_ETHER=y
+CONFIG_USB_ETHER_ASIX=y
+CONFIG_USB_ETHER_ASIX88179=y
+CONFIG_USB_ETHER_MCS7830=y
+CONFIG_USB_ETHER_RTL8152=y
+CONFIG_USB_ETHER_SMSC95XX=y
+CONFIG_USE_TINY_PRINTF=y
+CONFIG_ERRNO_STR=y
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

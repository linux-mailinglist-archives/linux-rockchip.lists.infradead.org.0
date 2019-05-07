Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EDF916A4F
	for <lists+linux-rockchip@lfdr.de>; Tue,  7 May 2019 20:37:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UvdtcTyRN9Vo24DQh0km8H3Z9vQ2V/MVfhXDBsVb4pw=; b=oPROr2MXRpCx7/
	yAV9b4kke8GEzNca59clYE0hSW7szqaBgM2DWN14KCyf5eqpiUm2Ylzx5154ClwgOViRVea1X0w2D
	7/ggIwqyVv+xLhLJobh9OWJwBDZr3oyZYEtyaF/6mATtvKGOt5S+6PMYLpKXjTsg/007hWxep3sEG
	6PXrQcOJXvGWegW6pe/UNUeYZZ4BHg8KU0rIDbDmTNbgETqZ1XGCBVVCbyAFLpiEt5katHuc3P/3x
	2CTG99Dyu2hJbg0lBuFgCeGffC+AEe1Wb7aWJNe+Bl98+1pMnSjyhsFqJZHPophVMeC7rQK8SvSP7
	uNuV3AkrI7pEvPJjDspQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO4xX-00014V-1V; Tue, 07 May 2019 18:36:59 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO4xS-000134-7f
 for linux-rockchip@lists.infradead.org; Tue, 07 May 2019 18:36:56 +0000
Received: by mail-pg1-x544.google.com with SMTP id j26so8738286pgl.5
 for <linux-rockchip@lists.infradead.org>; Tue, 07 May 2019 11:36:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=n1XYi6jtuo0BU0OVIYODVGMV3z5QAy8MiXydRznOAWg=;
 b=Tb7ruTybbGBsnAEQIEipQMWY+s/ltbpJRO7yJgKFxEN4jjDAnIIuwf1Yf1ThrwLNYr
 VxjQxa+WCdFPzryQ44zgfHHZv1MVt9CwtM7UNECjwsBl26OECuHVILcS+SdEq7VO0tHv
 EQLLcDLUYsqCgu8eW8RAhbNVFLTjF9o7+Jb9U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=n1XYi6jtuo0BU0OVIYODVGMV3z5QAy8MiXydRznOAWg=;
 b=pkB8QG72mlSC0/+zg4Wzw2wZicWyXvatmzNTwemaYwHpaD5LpBBC9Vd+HNZ257wllS
 fP0zWEDuR+Ej8N0mc8gw7cQWkfe/bjgAgi0w0uQcGQg59dawgtTuv72KqX5OAAI9uXEj
 loHstdSrjUqb9VdYH38VlSkOY7uACaTaRdPWIg2j6rLDxKCIwYSrBw6cukBM03/UvvrL
 0o0mjuOOCq/Y+/zXylszM3BSw3bHqynLWYiwaNAZDq5QP6eZBuGgYQ+h7eWkSubYGp07
 tcHYWWbmQHYuqKML8sX8KEJpYcCemy2L/3/Po7k61eoFGaEufKKYQefi3hMFwWfpuywf
 IxSg==
X-Gm-Message-State: APjAAAV23N4+538NgeyPLhKbbwdCKsT5KTBnq/l4MBvsJ5KMjtt7JY30
 XB5fev74LhT9U+rrG2dyLAyVLg==
X-Google-Smtp-Source: APXvYqxenitPbcgRUbmZirEBQy8oDi+cyuOw8r7yLkQdxNJ18AKIA9QJgmc5HXNz3NroiwRvFrmcYw==
X-Received: by 2002:aa7:9285:: with SMTP id j5mr42780342pfa.129.1557254213598; 
 Tue, 07 May 2019 11:36:53 -0700 (PDT)
Received: from localhost.localdomain ([115.97.185.144])
 by smtp.gmail.com with ESMTPSA id b22sm21743728pgg.88.2019.05.07.11.36.48
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 07 May 2019 11:36:53 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, Akash Gajjar <akash@openedev.com>
Subject: [PATCH v7 04/11] rockchip: dts: rk3399: Sync rk3399-nanopi4.dtsi from
 Linux
Date: Wed,  8 May 2019 00:06:20 +0530
Message-Id: <20190507183625.5983-5-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190507183625.5983-1-jagan@amarulasolutions.com>
References: <20190507183625.5983-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_113654_290584_2F44348F 
X-CRM114-Status: GOOD (  12.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Sync rk3399-nanopi4.dtsi from Linux 5.1-rc2 tag.

Linux commit details about the rk3399-nanopi4.dtsi sync:
"arm64: dts: rockchip: Add nanopi4 bluetooth"
(sha1: 3e2f0bb72be36aa6c14ee7f11ac4dd8014801030)

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Reviewed-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
---
 arch/arm/dts/rk3399-nanopi4.dtsi | 703 +++++++++++++++++++++++++++++++
 1 file changed, 703 insertions(+)
 create mode 100644 arch/arm/dts/rk3399-nanopi4.dtsi

diff --git a/arch/arm/dts/rk3399-nanopi4.dtsi b/arch/arm/dts/rk3399-nanopi4.dtsi
new file mode 100644
index 0000000000..d325e11728
--- /dev/null
+++ b/arch/arm/dts/rk3399-nanopi4.dtsi
@@ -0,0 +1,703 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * RK3399-based FriendlyElec boards device tree source
+ *
+ * Copyright (c) 2016 Fuzhou Rockchip Electronics Co., Ltd
+ *
+ * Copyright (c) 2018 FriendlyElec Computer Tech. Co., Ltd.
+ * (http://www.friendlyarm.com)
+ *
+ * Copyright (c) 2018 Collabora Ltd.
+ * Copyright (c) 2019 Arm Ltd.
+ */
+
+/dts-v1/;
+#include <dt-bindings/input/linux-event-codes.h>
+#include "rk3399.dtsi"
+#include "rk3399-opp.dtsi"
+
+/ {
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
+	vcc3v3_sys: vcc3v3-sys {
+		compatible = "regulator-fixed";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-name = "vcc3v3_sys";
+	};
+
+	vcc5v0_sys: vcc5v0-sys {
+		compatible = "regulator-fixed";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		regulator-name = "vcc5v0_sys";
+		vin-supply = <&vdd_5v>;
+	};
+
+	/* switched by pmic_sleep */
+	vcc1v8_s3: vcca1v8_s3: vcc1v8-s3 {
+		compatible = "regulator-fixed";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		regulator-name = "vcc1v8_s3";
+		vin-supply = <&vcc_1v8>;
+	};
+
+	vcc3v0_sd: vcc3v0-sd {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio0 RK_PA1 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&sdmmc0_pwr_h>;
+		regulator-always-on;
+		regulator-min-microvolt = <3000000>;
+		regulator-max-microvolt = <3000000>;
+		regulator-name = "vcc3v0_sd";
+		vin-supply = <&vcc3v3_sys>;
+	};
+
+	vbus_typec: vbus-typec {
+		compatible = "regulator-fixed";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		regulator-name = "vbus_typec";
+	};
+
+	gpio-keys {
+		compatible = "gpio-keys";
+		autorepeat;
+		pinctrl-names = "default";
+		pinctrl-0 = <&power_key>;
+
+		power {
+			debounce-interval = <100>;
+			gpios = <&gpio0 RK_PA5 GPIO_ACTIVE_LOW>;
+			label = "GPIO Key Power";
+			linux,code = <KEY_POWER>;
+			wakeup-source;
+		};
+	};
+
+	leds: gpio-leds {
+		compatible = "gpio-leds";
+		pinctrl-names = "default";
+		pinctrl-0 = <&leds_gpio>;
+
+		status {
+			gpios = <&gpio0 RK_PB5 GPIO_ACTIVE_HIGH>;
+			label = "status_led";
+			linux,default-trigger = "heartbeat";
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
+&emmc_phy {
+	status = "okay";
+};
+
+&gmac {
+	assigned-clock-parents = <&clkin_gmac>;
+	assigned-clocks = <&cru SCLK_RMII_SRC>;
+	clock_in_out = "input";
+	pinctrl-names = "default";
+	pinctrl-0 = <&rgmii_pins>;
+	phy-mode = "rgmii";
+	phy-supply = <&vcc3v3_s3>;
+	snps,reset-active-low;
+	snps,reset-delays-us = <0 10000 50000>;
+	snps,reset-gpio = <&gpio3 RK_PB7 GPIO_ACTIVE_LOW>;
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
+	ddc-i2c-bus = <&i2c7>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&hdmi_cec>;
+	status = "okay";
+};
+
+&i2c0 {
+	clock-frequency = <400000>;
+	i2c-scl-rising-time-ns = <160>;
+	i2c-scl-falling-time-ns = <30>;
+	status = "okay";
+
+	vdd_cpu_b: regulator@40 {
+		compatible = "silergy,syr827";
+		reg = <0x40>;
+		fcs,suspend-voltage-selector = <1>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&cpu_b_sleep>;
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <712500>;
+		regulator-max-microvolt = <1500000>;
+		regulator-name = "vdd_cpu_b";
+		regulator-ramp-delay = <1000>;
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
+		pinctrl-names = "default";
+		pinctrl-0 = <&gpu_sleep>;
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <712500>;
+		regulator-max-microvolt = <1500000>;
+		regulator-name = "vdd_gpu";
+		regulator-ramp-delay = <1000>;
+		vin-supply = <&vcc3v3_sys>;
+
+		regulator-state-mem {
+			regulator-off-in-suspend;
+		};
+	};
+
+	rk808: pmic@1b {
+		compatible = "rockchip,rk808";
+		reg = <0x1b>;
+		clock-output-names = "xin32k", "rtc_clko_wifi";
+		#clock-cells = <1>;
+		interrupt-parent = <&gpio1>;
+		interrupts = <21 IRQ_TYPE_LEVEL_LOW>;
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
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <750000>;
+				regulator-max-microvolt = <1350000>;
+				regulator-name = "vdd_center";
+				regulator-ramp-delay = <6001>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vdd_cpu_l: DCDC_REG2 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <750000>;
+				regulator-max-microvolt = <1350000>;
+				regulator-name = "vdd_cpu_l";
+				regulator-ramp-delay = <6001>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc_ddr: DCDC_REG3 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-name = "vcc_ddr";
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+				};
+			};
+
+			vcc_1v8: DCDC_REG4 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-name = "vcc_1v8";
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <1800000>;
+				};
+			};
+
+			vcc1v8_cam: LDO_REG1 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-name = "vcc1v8_cam";
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc3v0_touch: LDO_REG2 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <3000000>;
+				regulator-max-microvolt = <3000000>;
+				regulator-name = "vcc3v0_touch";
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc1v8_pmupll: LDO_REG3 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-name = "vcc1v8_pmupll";
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <1800000>;
+				};
+			};
+
+			vcc_sdio: LDO_REG4 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-init-microvolt = <3000000>;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-name = "vcc_sdio";
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <3000000>;
+				};
+			};
+
+			vcca3v0_codec: LDO_REG5 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <3000000>;
+				regulator-max-microvolt = <3000000>;
+				regulator-name = "vcca3v0_codec";
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc_1v5: LDO_REG6 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1500000>;
+				regulator-max-microvolt = <1500000>;
+				regulator-name = "vcc_1v5";
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <1500000>;
+				};
+			};
+
+			vcca1v8_codec: LDO_REG7 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-name = "vcca1v8_codec";
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc_3v0: LDO_REG8 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <3000000>;
+				regulator-max-microvolt = <3000000>;
+				regulator-name = "vcc_3v0";
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <3000000>;
+				};
+			};
+
+			vcc3v3_s3: SWITCH_REG1 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-name = "vcc3v3_s3";
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc3v3_s0: SWITCH_REG2 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-name = "vcc3v3_s0";
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+		};
+	};
+};
+
+&i2c1 {
+	clock-frequency = <200000>;
+	i2c-scl-rising-time-ns = <150>;
+	i2c-scl-falling-time-ns = <30>;
+	status = "okay";
+};
+
+&i2c2 {
+	status = "okay";
+};
+
+&i2c4 {
+	clock-frequency = <400000>;
+	i2c-scl-rising-time-ns = <160>;
+	i2c-scl-falling-time-ns = <30>;
+	status = "okay";
+
+	fusb0: typec-portc@22 {
+		compatible = "fcs,fusb302";
+		reg = <0x22>;
+		interrupt-parent = <&gpio1>;
+		interrupts = <RK_PA2 IRQ_TYPE_LEVEL_LOW>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&fusb0_int>;
+		vbus-supply = <&vbus_typec>;
+	};
+};
+
+&i2c7 {
+	status = "okay";
+};
+
+&io_domains {
+	bt656-supply = <&vcc_1v8>;
+	audio-supply = <&vcca1v8_codec>;
+	sdmmc-supply = <&vcc_sdio>;
+	gpio1830-supply = <&vcc_3v0>;
+	status = "okay";
+};
+
+&pcie_phy {
+	assigned-clock-parents = <&cru SCLK_PCIEPHY_REF100M>;
+	assigned-clock-rates = <100000000>;
+	assigned-clocks = <&cru SCLK_PCIEPHY_REF>;
+	status = "okay";
+};
+
+&pcie0 {
+	ep-gpios = <&gpio2 RK_PA4 GPIO_ACTIVE_HIGH>;
+	max-link-speed = <2>;
+	num-lanes = <4>;
+	status = "okay";
+};
+
+&pinctrl {
+	fusb30x {
+		fusb0_int: fusb0-int {
+			rockchip,pins = <1 RK_PA2 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+
+	gpio-leds {
+		leds_gpio: leds-gpio {
+			rockchip,pins = <0 RK_PB5 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	pmic {
+		cpu_b_sleep: cpu-b-sleep {
+			rockchip,pins = <1 RK_PC1 RK_FUNC_GPIO &pcfg_pull_down>;
+		};
+
+		gpu_sleep: gpu-sleep {
+			rockchip,pins = <1 RK_PB6 RK_FUNC_GPIO &pcfg_pull_down>;
+		};
+
+		pmic_int_l: pmic-int-l {
+			rockchip,pins = <1 RK_PC5 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+
+	rockchip-key {
+		power_key: power-key {
+			rockchip,pins = <0 RK_PA5 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+
+	sdio {
+		bt_host_wake_l: bt-host-wake-l {
+			rockchip,pins = <0 RK_PA4 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		bt_reg_on_h: bt-reg-on-h {
+			/* external pullup to VCC1V8_PMUPLL */
+			rockchip,pins = <0 RK_PB1 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		bt_wake_l: bt-wake-l {
+			rockchip,pins = <2 RK_PD2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		wifi_reg_on_h: wifi-reg_on-h {
+			rockchip,pins = <0 RK_PB2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	sdmmc {
+		sdmmc0_det_l: sdmmc0-det-l {
+			rockchip,pins = <0 RK_PA7 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+
+		sdmmc0_pwr_h: sdmmc0-pwr-h {
+			rockchip,pins = <0 RK_PA1 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+};
+
+&pmu_io_domains {
+	pmu1830-supply = <&vcc_3v0>;
+	status = "okay";
+};
+
+&pwm0 {
+	status = "okay";
+};
+
+&pwm1 {
+	status = "okay";
+};
+
+&pwm2 {
+	pinctrl-names = "active";
+	pinctrl-0 = <&pwm2_pin_pull_down>;
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
+	mmc-hs200-1_8v;
+	non-removable;
+	status = "okay";
+};
+
+&sdio0 {
+	bus-width = <4>;
+	cap-sd-highspeed;
+	cap-sdio-irq;
+	keep-power-in-suspend;
+	mmc-pwrseq = <&sdio_pwrseq>;
+	non-removable;
+	pinctrl-names = "default";
+	pinctrl-0 = <&sdio0_bus4 &sdio0_cmd &sdio0_clk>;
+	sd-uhs-sdr104;
+	status = "okay";
+};
+
+&sdmmc {
+	bus-width = <4>;
+	cap-sd-highspeed;
+	cap-mmc-highspeed;
+	cd-gpios = <&gpio0 RK_PA7 GPIO_ACTIVE_LOW>;
+	disable-wp;
+	pinctrl-names = "default";
+	pinctrl-0 = <&sdmmc_bus4 &sdmmc_clk &sdmmc_cmd &sdmmc0_det_l>;
+	sd-uhs-sdr104;
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
+	/* tshut mode 0:CRU 1:GPIO */
+	rockchip,hw-tshut-mode = <1>;
+	/* tshut polarity 0:LOW 1:HIGH */
+	rockchip,hw-tshut-polarity = <1>;
+	status = "okay";
+};
+
+&u2phy0 {
+	status = "okay";
+};
+
+&u2phy0_host {
+	status = "okay";
+};
+
+&u2phy0_otg {
+	status = "okay";
+};
+
+&u2phy1 {
+	status = "okay";
+};
+
+&u2phy1_host {
+	status = "okay";
+};
+
+&u2phy1_otg {
+	status = "okay";
+};
+
+&uart0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart0_xfer &uart0_rts &uart0_cts>;
+	status = "okay";
+
+	bluetooth {
+		compatible = "brcm,bcm43438-bt";
+		clocks = <&rk808 1>;
+		clock-names = "lpo";
+		device-wakeup-gpios = <&gpio2 RK_PD2 GPIO_ACTIVE_HIGH>;
+		host-wakeup-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_HIGH>;
+		shutdown-gpios = <&gpio0 RK_PB1 GPIO_ACTIVE_HIGH>;
+		max-speed = <4000000>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&bt_reg_on_h &bt_host_wake_l &bt_wake_l>;
+		vbat-supply = <&vcc3v3_sys>;
+		vddio-supply = <&vcc_1v8>;
+	};
+};
+
+&uart2 {
+	status = "okay";
+};
+
+&usbdrd3_0 {
+	status = "okay";
+};
+
+&usbdrd3_1 {
+	status = "okay";
+};
+
+&usbdrd_dwc3_0 {
+	status = "okay";
+};
+
+&usbdrd_dwc3_1 {
+	dr_mode = "host";
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
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

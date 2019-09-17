Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71300B497F
	for <lists+linux-rockchip@lfdr.de>; Tue, 17 Sep 2019 10:29:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FvNi6fKuGZWFpjQW7TNFbpc29ri0Xc7hkKrip9qnFzU=; b=q5BvB0biDG/kHj
	mrw37QCI2HuQ9E5VAQDNQ9nuS5Sf28+a94mJF2HtYzAh0UONes6Zj3+elfE/PEC81bqFpFfBUfm2u
	mqRCl89yQ210a0Aj3vYBSL8aW1HyJUBHIrYl8KrjPC5K/VlsQa8FnVlT+ZYgrfmf1KGXkXK6NI635
	Yr2rHyLkM+HGd5o2nigYG09Z0qPjtqZ/QUYw7HOSbcfgM/HVnMnHjJeP1UrEJw3n8PZMQqfaMhQN8
	5FODn4KWclaB4zsn7TuSkNSqLGHF0vVbpo3OsIiSejX1yxsNSVrVKRlCuCHycxo3nXwEORSyQI9HE
	YMoMGEn1zBIBK1q0N7JQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iA8rq-0004N9-R0; Tue, 17 Sep 2019 08:29:46 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iA8pM-0002HA-BD; Tue, 17 Sep 2019 08:27:14 +0000
Received: from ip5f5a6266.dynamic.kabel-deutschland.de ([95.90.98.102]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iA8pI-0005ZY-By; Tue, 17 Sep 2019 10:27:08 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 05/13] arm64: dts: rockchip: fix the px30-evb power tree
Date: Tue, 17 Sep 2019 10:26:51 +0200
Message-Id: <20190917082659.25549-5-heiko@sntech.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190917082659.25549-1-heiko@sntech.de>
References: <20190917082659.25549-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_012712_612534_9B4B3521 
X-CRM114-Status: GOOD (  12.52  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 christoph.muellner@theobroma-systems.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Add the board's pmic (rk809) and hook up the real supplies to their
consumers. This is especially important as cpufreq would otherwise hang
the system when scaling the frequency without adjusting the voltage.

Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 arch/arm64/boot/dts/rockchip/px30-evb.dts | 254 +++++++++++++++++++++-
 1 file changed, 246 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/px30-evb.dts b/arch/arm64/boot/dts/rockchip/px30-evb.dts
index 6eb7407a84aa..d78fb172a66f 100644
--- a/arch/arm64/boot/dts/rockchip/px30-evb.dts
+++ b/arch/arm64/boot/dts/rockchip/px30-evb.dts
@@ -58,6 +58,7 @@
 	backlight: backlight {
 		compatible = "pwm-backlight";
 		pwms = <&pwm1 0 25000 0>;
+		power-supply = <&vcc3v3_lcd>;
 	};
 
 	sdio_pwrseq: sdio-pwrseq {
@@ -74,13 +75,6 @@
 		reset-gpios = <&gpio0 RK_PA2 GPIO_ACTIVE_LOW>; /* GPIO3_A4 */
 	};
 
-	vcc_phy: vcc-phy-regulator {
-		compatible = "regulator-fixed";
-		regulator-name = "vcc_phy";
-		regulator-always-on;
-		regulator-boot-on;
-	};
-
 	vcc5v0_sys: vccsys {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc5v0_sys";
@@ -91,6 +85,22 @@
 	};
 };
 
+&cpu0 {
+	cpu-supply = <&vdd_arm>;
+};
+
+&cpu1 {
+	cpu-supply = <&vdd_arm>;
+};
+
+&cpu2 {
+	cpu-supply = <&vdd_arm>;
+};
+
+&cpu3 {
+	cpu-supply = <&vdd_arm>;
+};
+
 &display_subsystem {
 	status = "okay";
 };
@@ -100,12 +110,14 @@
 	cap-mmc-highspeed;
 	mmc-hs200-1_8v;
 	non-removable;
+	vmmc-supply = <&vcc_3v0>;
+	vqmmc-supply = <&vccio_flash>;
 	status = "okay";
 };
 
 &gmac {
 	clock_in_out = "output";
-	phy-supply = <&vcc_phy>;
+	phy-supply = <&vcc_rmii>;
 	snps,reset-gpio = <&gpio2 13 GPIO_ACTIVE_LOW>;
 	snps,reset-active-low;
 	snps,reset-delays-us = <0 50000 50000>;
@@ -114,6 +126,219 @@
 
 &i2c0 {
 	status = "okay";
+
+	rk809: pmic@20 {
+		compatible = "rockchip,rk809";
+		reg = <0x20>;
+		interrupt-parent = <&gpio0>;
+		interrupts = <7 IRQ_TYPE_LEVEL_LOW>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pmic_int>;
+		rockchip,system-power-controller;
+		wakeup-source;
+		#clock-cells = <0>;
+		clock-output-names = "xin32k";
+
+		vcc1-supply = <&vcc5v0_sys>;
+		vcc2-supply = <&vcc5v0_sys>;
+		vcc3-supply = <&vcc5v0_sys>;
+		vcc4-supply = <&vcc5v0_sys>;
+		vcc5-supply = <&vcc3v3_sys>;
+		vcc6-supply = <&vcc3v3_sys>;
+		vcc7-supply = <&vcc3v3_sys>;
+		vcc8-supply = <&vcc3v3_sys>;
+		vcc9-supply = <&vcc5v0_sys>;
+
+		regulators {
+			vdd_log: DCDC_REG1 {
+				regulator-name = "vdd_log";
+				regulator-min-microvolt = <950000>;
+				regulator-max-microvolt = <1350000>;
+				regulator-ramp-delay = <6001>;
+				regulator-always-on;
+				regulator-boot-on;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <950000>;
+				};
+			};
+
+			vdd_arm: DCDC_REG2 {
+				regulator-name = "vdd_arm";
+				regulator-min-microvolt = <950000>;
+				regulator-max-microvolt = <1350000>;
+				regulator-ramp-delay = <6001>;
+				regulator-always-on;
+				regulator-boot-on;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+					regulator-suspend-microvolt = <950000>;
+				};
+			};
+
+			vcc_ddr: DCDC_REG3 {
+				regulator-name = "vcc_ddr";
+				regulator-always-on;
+				regulator-boot-on;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+				};
+			};
+
+			vcc_3v0: vcc_rmii: DCDC_REG4 {
+				regulator-name = "vcc_3v0";
+				regulator-min-microvolt = <3000000>;
+				regulator-max-microvolt = <3000000>;
+				regulator-always-on;
+				regulator-boot-on;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <3000000>;
+				};
+			};
+
+			vcc3v3_sys: DCDC_REG5 {
+				regulator-name = "vcc3v3_sys";
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-always-on;
+				regulator-boot-on;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <3300000>;
+				};
+			};
+
+			vcc_1v0: LDO_REG1 {
+				regulator-name = "vcc_1v0";
+				regulator-min-microvolt = <1000000>;
+				regulator-max-microvolt = <1000000>;
+				regulator-always-on;
+				regulator-boot-on;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <1000000>;
+				};
+			};
+
+			vcc_1v8: vccio_flash: vccio_sdio: LDO_REG2 {
+				regulator-name = "vcc_1v8";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-always-on;
+				regulator-boot-on;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <1800000>;
+				};
+			};
+
+			vdd_1v0: LDO_REG3 {
+				regulator-name = "vdd_1v0";
+				regulator-min-microvolt = <1000000>;
+				regulator-max-microvolt = <1000000>;
+				regulator-always-on;
+				regulator-boot-on;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <1000000>;
+				};
+			};
+
+			vcc3v0_pmu: LDO_REG4 {
+				regulator-name = "vcc3v0_pmu";
+				regulator-min-microvolt = <3000000>;
+				regulator-max-microvolt = <3000000>;
+				regulator-always-on;
+				regulator-boot-on;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <3000000>;
+				};
+			};
+
+			vccio_sd: LDO_REG5 {
+				regulator-name = "vccio_sd";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-always-on;
+				regulator-boot-on;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <3300000>;
+				};
+			};
+
+			vcc_sd: LDO_REG6 {
+				regulator-name = "vcc_sd";
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-boot-on;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <3300000>;
+				};
+			};
+
+			vcc2v8_dvp: LDO_REG7 {
+				regulator-name = "vcc2v8_dvp";
+				regulator-min-microvolt = <2800000>;
+				regulator-max-microvolt = <2800000>;
+				regulator-boot-on;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+					regulator-suspend-microvolt = <2800000>;
+				};
+			};
+
+			vcc1v8_dvp: LDO_REG8 {
+				regulator-name = "vcc1v8_dvp";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-boot-on;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <1800000>;
+				};
+			};
+
+			vcc1v5_dvp: LDO_REG9 {
+				regulator-name = "vcc1v5_dvp";
+				regulator-min-microvolt = <1500000>;
+				regulator-max-microvolt = <1500000>;
+				regulator-boot-on;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+					regulator-suspend-microvolt = <1500000>;
+				};
+			};
+
+			vcc3v3_lcd: SWITCH_REG1 {
+				regulator-name = "vcc3v3_lcd";
+				regulator-boot-on;
+			};
+
+			vcc5v0_host: SWITCH_REG2 {
+				regulator-name = "vcc5v0_host";
+				regulator-always-on;
+				regulator-boot-on;
+			};
+		};
+	};
 };
 
 &i2s1_2ch {
@@ -122,6 +347,13 @@
 
 &io_domains {
 	status = "okay";
+
+	vccio1-supply = <&vccio_sdio>;
+	vccio2-supply = <&vccio_sd>;
+	vccio3-supply = <&vcc_3v0>;
+	vccio4-supply = <&vcc3v0_pmu>;
+	vccio5-supply = <&vcc_3v0>;
+	vccio6-supply = <&vccio_flash>;
 };
 
 &pinctrl {
@@ -164,6 +396,9 @@
 
 &pmu_io_domains {
 	status = "okay";
+
+	pmuio1-supply = <&vcc3v0_pmu>;
+	pmuio2-supply = <&vcc3v0_pmu>;
 };
 
 &pwm1 {
@@ -171,6 +406,7 @@
 };
 
 &saradc {
+	vref-supply = <&vcc_1v8>;
 	status = "okay";
 };
 
@@ -183,6 +419,8 @@
 	sd-uhs-sdr25;
 	sd-uhs-sdr50;
 	sd-uhs-sdr104;
+	vmmc-supply = <&vcc_sd>;
+	vqmmc-supply = <&vccio_sd>;
 	status = "okay";
 };
 
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

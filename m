Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E67BDE711
	for <lists+linux-rockchip@lfdr.de>; Mon, 21 Oct 2019 10:49:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=gkbDmv5X4cMRU+D1983HCEkYLN5qqTk0PB2fSJhSfs8=; b=TxIIBcvF5BsQVPTEzv6KyzzyQM
	BJMz4XdudOL1nOd/2JeDMNtTtMW6XAVZ0wMXsy/8aOM28QYF6WKjBD3zqy12CiEJaBbKOXbRWAbFI
	jcD3ZaVhMpzDTvcRX2S4QPnFXZxolu0fO5iGbFHSiba22W6AL1a8o6drBRai85RJOVxW00xHE2OXK
	HJ/aI3UlIkYXT9TF1oOG4fWlxq8IeEBIKV8pfuZtADnBbibXUg8rJkKeCkVkjLn8xdLEUPOSdvtmP
	/LWLG3uWJnHbNyW0PIE9XuyP/KgRZOG30/uk1QKRlvKVSIzmKBKMvzh2Ngyz9hoIwuUku0Awz1NNH
	Fav2Km4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMTN4-0006dz-C2; Mon, 21 Oct 2019 08:48:58 +0000
Received: from lucky1.263xmail.com ([211.157.147.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMTMo-0006TV-Ps; Mon, 21 Oct 2019 08:48:46 +0000
Received: from localhost (unknown [192.168.167.70])
 by lucky1.263xmail.com (Postfix) with ESMTP id 80F036D89B;
 Mon, 21 Oct 2019 16:46:23 +0800 (CST)
X-MAIL-GRAY: 1
X-MAIL-DELIVERY: 0
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P2493T140120609556224S1571647577222229_; 
 Mon, 21 Oct 2019 16:46:23 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <c3df68c6dc5082550f497f0235e6c6ed>
X-RL-SENDER: andy.yan@rock-chips.com
X-SENDER: yxj@rock-chips.com
X-LOGIN-NAME: andy.yan@rock-chips.com
X-FST-TO: heiko@sntech.de
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
From: Andy Yan <andy.yan@rock-chips.com>
To: heiko@sntech.de
Subject: [PATCH v2 2/4] arm64: dts: rockchip: Add core dts for RK3308 SOC
Date: Mon, 21 Oct 2019 16:46:16 +0800
Message-Id: <20191021084616.28431-1-andy.yan@rock-chips.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191021084437.28279-1-andy.yan@rock-chips.com>
References: <20191021084437.28279-1-andy.yan@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_014843_377932_75B25087 
X-CRM114-Status: GOOD (  18.16  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.157.147.133 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [211.157.147.133 listed in wl.mailspike.net]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: devicetree@vger.kernel.org, kever.yang@rock-chips.com,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, Andy Yan <andy.yan@rock-chips.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

RK3308 is a quad Cortex A35 based SOC with rich audio
interfaces(I2S/PCM/TDM/PDM/SPDIF/VAD/HDMI ARC), which
designed for intelligent voice interaction and audio
input/output processing.

This patch add basic core dtsi file for it.

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>

---

Changes in v2:
- Address Heiko's comments in V1

 arch/arm64/boot/dts/rockchip/rk3308.dtsi | 1838 ++++++++++++++++++++++
 1 file changed, 1838 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3308.dtsi

diff --git a/arch/arm64/boot/dts/rockchip/rk3308.dtsi b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
new file mode 100644
index 000000000000..c38acc7dd275
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
@@ -0,0 +1,1838 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2019 Fuzhou Rockchip Electronics Co., Ltd
+ *
+ */
+
+#include <dt-bindings/clock/rk3308-cru.h>
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/interrupt-controller/arm-gic.h>
+#include <dt-bindings/interrupt-controller/irq.h>
+#include <dt-bindings/pinctrl/rockchip.h>
+#include <dt-bindings/soc/rockchip,boot-mode.h>
+#include <dt-bindings/thermal/thermal.h>
+
+/ {
+	compatible = "rockchip,rk3308";
+
+	interrupt-parent = <&gic>;
+	#address-cells = <2>;
+	#size-cells = <2>;
+
+	aliases {
+		i2c0 = &i2c0;
+		i2c1 = &i2c1;
+		i2c2 = &i2c2;
+		i2c3 = &i2c3;
+		serial0 = &uart0;
+		serial1 = &uart1;
+		serial2 = &uart2;
+		serial3 = &uart3;
+		serial4 = &uart4;
+		spi0 = &spi0;
+		spi1 = &spi1;
+		spi2 = &spi2;
+	};
+
+	cpus {
+		#address-cells = <2>;
+		#size-cells = <0>;
+
+		cpu0: cpu@0 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a35", "arm,armv8";
+			reg = <0x0 0x0>;
+			enable-method = "psci";
+			clocks = <&cru ARMCLK>;
+			#cooling-cells = <2>;
+			dynamic-power-coefficient = <90>;
+			operating-points-v2 = <&cpu0_opp_table>;
+			cpu-idle-states = <&CPU_SLEEP>;
+			next-level-cache = <&l2>;
+		};
+
+		cpu1: cpu@1 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a35", "arm,armv8";
+			reg = <0x0 0x1>;
+			enable-method = "psci";
+			operating-points-v2 = <&cpu0_opp_table>;
+			cpu-idle-states = <&CPU_SLEEP>;
+			next-level-cache = <&l2>;
+		};
+
+		cpu2: cpu@2 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a35", "arm,armv8";
+			reg = <0x0 0x2>;
+			enable-method = "psci";
+			operating-points-v2 = <&cpu0_opp_table>;
+			cpu-idle-states = <&CPU_SLEEP>;
+			next-level-cache = <&l2>;
+		};
+
+		cpu3: cpu@3 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a35", "arm,armv8";
+			reg = <0x0 0x3>;
+			enable-method = "psci";
+			operating-points-v2 = <&cpu0_opp_table>;
+			cpu-idle-states = <&CPU_SLEEP>;
+			next-level-cache = <&l2>;
+		};
+
+		idle-states {
+			entry-method = "psci";
+
+			CPU_SLEEP: cpu-sleep {
+				compatible = "arm,idle-state";
+				local-timer-stop;
+				arm,psci-suspend-param = <0x0010000>;
+				entry-latency-us = <120>;
+				exit-latency-us = <250>;
+				min-residency-us = <900>;
+			};
+		};
+
+		l2: l2-cache {
+			compatible = "cache";
+		};
+	};
+
+	cpu0_opp_table: cpu0-opp-table {
+		compatible = "operating-points-v2";
+		opp-shared;
+
+		opp-408000000 {
+			opp-hz = /bits/ 64 <408000000>;
+			opp-microvolt = <950000 950000 1340000>;
+			clock-latency-ns = <40000>;
+			opp-suspend;
+		};
+		opp-600000000 {
+			opp-hz = /bits/ 64 <600000000>;
+			opp-microvolt = <950000 950000 1340000>;
+			clock-latency-ns = <40000>;
+		};
+		opp-816000000 {
+			opp-hz = /bits/ 64 <816000000>;
+			opp-microvolt = <1025000 1025000 1340000>;
+			clock-latency-ns = <40000>;
+		};
+		opp-1008000000 {
+			opp-hz = /bits/ 64 <1008000000>;
+			opp-microvolt = <1125000 1125000 1340000>;
+			clock-latency-ns = <40000>;
+		};
+	};
+
+	arm-pmu {
+		compatible = "arm,cortex-a53-pmu";
+		interrupts = <GIC_SPI 83 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 84 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 85 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 86 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-affinity = <&cpu0>, <&cpu1>, <&cpu2>, <&cpu3>;
+	};
+
+	mac_clkin: external-mac-clock {
+		compatible = "fixed-clock";
+		clock-frequency = <50000000>;
+		clock-output-names = "mac_clkin";
+		#clock-cells = <0>;
+	};
+
+	psci {
+		compatible = "arm,psci-1.0";
+		method = "smc";
+	};
+
+	timer {
+		compatible = "arm,armv8-timer";
+		interrupts = <GIC_PPI 13 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_HIGH)>,
+			     <GIC_PPI 14 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_HIGH)>,
+			     <GIC_PPI 11 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_HIGH)>,
+			     <GIC_PPI 10 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_HIGH)>;
+	};
+
+	xin24m: xin24m {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <24000000>;
+		clock-output-names = "xin24m";
+	};
+
+	grf: grf@ff000000 {
+		compatible = "rockchip,rk3308-grf", "syscon", "simple-mfd";
+		reg = <0x0 0xff000000 0x0 0x10000>;
+
+		reboot-mode {
+			compatible = "syscon-reboot-mode";
+			offset = <0x500>;
+			mode-bootloader = <BOOT_BL_DOWNLOAD>;
+			mode-loader = <BOOT_BL_DOWNLOAD>;
+			mode-normal = <BOOT_NORMAL>;
+			mode-recovery = <BOOT_RECOVERY>;
+			mode-fastboot = <BOOT_FASTBOOT>;
+		};
+	};
+
+	detect_grf: syscon@ff00b000 {
+		compatible = "rockchip,rk3308-detect-grf", "syscon", "simple-mfd";
+		reg = <0x0 0xff00b000 0x0 0x1000>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+	};
+
+	core_grf: syscon@ff00c000 {
+		compatible = "rockchip,rk3308-core-grf", "syscon", "simple-mfd";
+		reg = <0x0 0xff00c000 0x0 0x1000>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+	};
+
+	i2c0: i2c@ff040000 {
+		compatible = "rockchip,rk3308-i2c", "rockchip,rk3399-i2c";
+		reg = <0x0 0xff040000 0x0 0x1000>;
+		clocks = <&cru SCLK_I2C0>, <&cru PCLK_I2C0>;
+		clock-names = "i2c", "pclk";
+		interrupts = <GIC_SPI 11 IRQ_TYPE_LEVEL_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&i2c0_xfer>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		status = "disabled";
+	};
+
+	i2c1: i2c@ff050000 {
+		compatible = "rockchip,rk3308-i2c", "rockchip,rk3399-i2c";
+		reg = <0x0 0xff050000 0x0 0x1000>;
+		clocks = <&cru SCLK_I2C1>, <&cru PCLK_I2C1>;
+		clock-names = "i2c", "pclk";
+		interrupts = <GIC_SPI 12 IRQ_TYPE_LEVEL_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&i2c1_xfer>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		status = "disabled";
+	};
+
+	i2c2: i2c@ff060000 {
+		compatible = "rockchip,rk3308-i2c", "rockchip,rk3399-i2c";
+		reg = <0x0 0xff060000 0x0 0x1000>;
+		clocks = <&cru SCLK_I2C2>, <&cru PCLK_I2C2>;
+		clock-names = "i2c", "pclk";
+		interrupts = <GIC_SPI 13 IRQ_TYPE_LEVEL_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&i2c2_xfer>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		status = "disabled";
+	};
+
+	i2c3: i2c@ff070000 {
+		compatible = "rockchip,rk3308-i2c", "rockchip,rk3399-i2c";
+		reg = <0x0 0xff070000 0x0 0x1000>;
+		clocks = <&cru SCLK_I2C3>, <&cru PCLK_I2C3>;
+		clock-names = "i2c", "pclk";
+		interrupts = <GIC_SPI 14 IRQ_TYPE_LEVEL_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&i2c3m0_xfer>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		status = "disabled";
+	};
+
+	wdt: watchdog@ff080000 {
+		compatible = "snps,dw-wdt";
+		reg = <0x0 0xff080000 0x0 0x100>;
+		clocks = <&cru PCLK_WDT>;
+		interrupts = <GIC_SPI 10 IRQ_TYPE_LEVEL_HIGH>;
+		status = "disabled";
+	};
+
+	uart0: serial@ff0a0000 {
+		compatible = "rockchip,rk3308-uart", "snps,dw-apb-uart";
+		reg = <0x0 0xff0a0000 0x0 0x100>;
+		interrupts = <GIC_SPI 18 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru SCLK_UART0>, <&cru PCLK_UART0>;
+		clock-names = "baudclk", "apb_pclk";
+		reg-shift = <2>;
+		reg-io-width = <4>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&uart0_xfer &uart0_cts &uart0_rts>;
+		status = "disabled";
+	};
+
+	uart1: serial@ff0b0000 {
+		compatible = "rockchip,rk3308-uart", "snps,dw-apb-uart";
+		reg = <0x0 0xff0b0000 0x0 0x100>;
+		interrupts = <GIC_SPI 19 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru SCLK_UART1>, <&cru PCLK_UART1>;
+		clock-names = "baudclk", "apb_pclk";
+		reg-shift = <2>;
+		reg-io-width = <4>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&uart1_xfer &uart1_cts &uart1_rts>;
+		status = "disabled";
+	};
+
+	uart2: serial@ff0c0000 {
+		compatible = "rockchip,rk3308-uart", "snps,dw-apb-uart";
+		reg = <0x0 0xff0c0000 0x0 0x100>;
+		interrupts = <GIC_SPI 20 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru SCLK_UART2>, <&cru PCLK_UART2>;
+		clock-names = "baudclk", "apb_pclk";
+		reg-shift = <2>;
+		reg-io-width = <4>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&uart2m0_xfer>;
+		status = "disabled";
+	};
+
+	uart3: serial@ff0d0000 {
+		compatible = "rockchip,rk3308-uart", "snps,dw-apb-uart";
+		reg = <0x0 0xff0d0000 0x0 0x100>;
+		interrupts = <GIC_SPI 21 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru SCLK_UART3>, <&cru PCLK_UART3>;
+		clock-names = "baudclk", "apb_pclk";
+		reg-shift = <2>;
+		reg-io-width = <4>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&uart3_xfer>;
+		status = "disabled";
+	};
+
+	uart4: serial@ff0e0000 {
+		compatible = "rockchip,rk3308-uart", "snps,dw-apb-uart";
+		reg = <0x0 0xff0e0000 0x0 0x100>;
+		interrupts = <GIC_SPI 22 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru SCLK_UART4>, <&cru PCLK_UART4>;
+		clock-names = "baudclk", "apb_pclk";
+		reg-shift = <2>;
+		reg-io-width = <4>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&uart4_xfer &uart4_cts &uart4_rts>;
+		status = "disabled";
+	};
+
+	spi0: spi@ff120000 {
+		compatible = "rockchip,rk3308-spi", "rockchip,rk3066-spi";
+		reg = <0x0 0xff120000 0x0 0x1000>;
+		interrupts = <GIC_SPI 15 IRQ_TYPE_LEVEL_HIGH>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		clocks = <&cru SCLK_SPI0>, <&cru PCLK_SPI0>;
+		clock-names = "spiclk", "apb_pclk";
+		dmas = <&dmac0 0>, <&dmac0 1>;
+		dma-names = "tx", "rx";
+		pinctrl-names = "default", "high_speed";
+		pinctrl-0 = <&spi0_clk &spi0_csn0 &spi0_miso &spi0_mosi>;
+		pinctrl-1 = <&spi0_clk_hs &spi0_csn0 &spi0_miso_hs &spi0_mosi_hs>;
+		status = "disabled";
+	};
+
+	spi1: spi@ff130000 {
+		compatible = "rockchip,rk3308-spi", "rockchip,rk3066-spi";
+		reg = <0x0 0xff130000 0x0 0x1000>;
+		interrupts = <GIC_SPI 16 IRQ_TYPE_LEVEL_HIGH>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		clocks = <&cru SCLK_SPI1>, <&cru PCLK_SPI1>;
+		clock-names = "spiclk", "apb_pclk";
+		dmas = <&dmac0 2>, <&dmac0 3>;
+		dma-names = "tx", "rx";
+		pinctrl-names = "default", "high_speed";
+		pinctrl-0 = <&spi1_clk &spi1_csn0 &spi1_miso &spi1_mosi>;
+		pinctrl-1 = <&spi1_clk_hs &spi1_csn0 &spi1_miso_hs &spi1_mosi_hs>;
+		status = "disabled";
+	};
+
+	spi2: spi@ff140000 {
+		compatible = "rockchip,rk3308-spi", "rockchip,rk3066-spi";
+		reg = <0x0 0xff140000 0x0 0x1000>;
+		interrupts = <GIC_SPI 17 IRQ_TYPE_LEVEL_HIGH>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		clocks = <&cru SCLK_SPI2>, <&cru PCLK_SPI2>;
+		clock-names = "spiclk", "apb_pclk";
+		dmas = <&dmac1 16>, <&dmac1 17>;
+		dma-names = "tx", "rx";
+		pinctrl-names = "default", "high_speed";
+		pinctrl-0 = <&spi2_clk &spi2_csn0 &spi2_miso &spi2_mosi>;
+		pinctrl-1 = <&spi2_clk_hs &spi2_csn0 &spi2_miso_hs &spi2_mosi_hs>;
+		status = "disabled";
+	};
+
+	pwm8: pwm@ff160000 {
+		compatible = "rockchip,rk3308-pwm", "rockchip,rk3328-pwm";
+		reg = <0x0 0xff160000 0x0 0x10>;
+		#pwm-cells = <3>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pwm8_pin>;
+		clocks = <&cru SCLK_PWM2>, <&cru PCLK_PWM2>;
+		clock-names = "pwm", "pclk";
+		status = "disabled";
+	};
+
+	pwm9: pwm@ff160010 {
+		compatible = "rockchip,rk3308-pwm", "rockchip,rk3328-pwm";
+		reg = <0x0 0xff160010 0x0 0x10>;
+		#pwm-cells = <3>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pwm9_pin>;
+		clocks = <&cru SCLK_PWM2>, <&cru PCLK_PWM2>;
+		clock-names = "pwm", "pclk";
+		status = "disabled";
+	};
+
+	pwm10: pwm@ff160020 {
+		compatible = "rockchip,rk3308-pwm", "rockchip,rk3328-pwm";
+		reg = <0x0 0xff160020 0x0 0x10>;
+		#pwm-cells = <3>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pwm10_pin>;
+		clocks = <&cru SCLK_PWM2>, <&cru PCLK_PWM2>;
+		clock-names = "pwm", "pclk";
+		status = "disabled";
+	};
+
+	pwm11: pwm@ff160030 {
+		compatible = "rockchip,rk3308-pwm", "rockchip,rk3328-pwm";
+		reg = <0x0 0xff160030 0x0 0x10>;
+		#pwm-cells = <3>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pwm11_pin>;
+		clocks = <&cru SCLK_PWM2>, <&cru PCLK_PWM2>;
+		clock-names = "pwm", "pclk";
+		status = "disabled";
+	};
+
+	pwm4: pwm@ff170000 {
+		compatible = "rockchip,rk3308-pwm", "rockchip,rk3328-pwm";
+		reg = <0x0 0xff170000 0x0 0x10>;
+		#pwm-cells = <3>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pwm4_pin>;
+		clocks = <&cru SCLK_PWM1>, <&cru PCLK_PWM1>;
+		clock-names = "pwm", "pclk";
+		status = "disabled";
+	};
+
+	pwm5: pwm@ff170010 {
+		compatible = "rockchip,rk3308-pwm", "rockchip,rk3328-pwm";
+		reg = <0x0 0xff170010 0x0 0x10>;
+		#pwm-cells = <3>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pwm5_pin>;
+		clocks = <&cru SCLK_PWM1>, <&cru PCLK_PWM1>;
+		clock-names = "pwm", "pclk";
+		status = "disabled";
+	};
+
+	pwm6: pwm@ff170020 {
+		compatible = "rockchip,rk3308-pwm", "rockchip,rk3328-pwm";
+		reg = <0x0 0xff170020 0x0 0x10>;
+		#pwm-cells = <3>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pwm6_pin>;
+		clocks = <&cru SCLK_PWM1>, <&cru PCLK_PWM1>;
+		clock-names = "pwm", "pclk";
+		status = "disabled";
+	};
+
+	pwm7: pwm@ff170030 {
+		compatible = "rockchip,rk3308-pwm", "rockchip,rk3328-pwm";
+		reg = <0x0 0xff170030 0x0 0x10>;
+		#pwm-cells = <3>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pwm7_pin>;
+		clocks = <&cru SCLK_PWM1>, <&cru PCLK_PWM1>;
+		clock-names = "pwm", "pclk";
+		status = "disabled";
+	};
+
+	pwm0: pwm@ff180000 {
+		compatible = "rockchip,rk3308-pwm", "rockchip,rk3328-pwm";
+		reg = <0x0 0xff180000 0x0 0x10>;
+		#pwm-cells = <3>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pwm0_pin>;
+		clocks = <&cru SCLK_PWM0>, <&cru PCLK_PWM0>;
+		clock-names = "pwm", "pclk";
+		status = "disabled";
+	};
+
+	pwm1: pwm@ff180010 {
+		compatible = "rockchip,rk3308-pwm", "rockchip,rk3328-pwm";
+		reg = <0x0 0xff180010 0x0 0x10>;
+		#pwm-cells = <3>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pwm1_pin>;
+		clocks = <&cru SCLK_PWM0>, <&cru PCLK_PWM0>;
+		clock-names = "pwm", "pclk";
+		status = "disabled";
+	};
+
+	pwm2: pwm@ff180020 {
+		compatible = "rockchip,rk3308-pwm", "rockchip,rk3328-pwm";
+		reg = <0x0 0xff180020 0x0 0x10>;
+		#pwm-cells = <3>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pwm2_pin>;
+		clocks = <&cru SCLK_PWM0>, <&cru PCLK_PWM0>;
+		clock-names = "pwm", "pclk";
+		status = "disabled";
+	};
+
+	pwm3: pwm@ff180030 {
+		compatible = "rockchip,rk3308-pwm", "rockchip,rk3328-pwm";
+		reg = <0x0 0xff180030 0x0 0x10>;
+		#pwm-cells = <3>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pwm3_pin>;
+		clocks = <&cru SCLK_PWM0>, <&cru PCLK_PWM0>;
+		clock-names = "pwm", "pclk";
+		status = "disabled";
+	};
+
+	rktimer: rktimer@ff1a0000 {
+		compatible = "rockchip,rk3288-timer";
+		reg = <0x0 0xff1a0000 0x0 0x20>;
+		interrupts = <GIC_SPI 25 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru PCLK_TIMER>, <&cru SCLK_TIMER0>;
+		clock-names = "pclk", "timer";
+	};
+
+	saradc: saradc@ff1e0000 {
+		compatible = "rockchip,rk3308-saradc", "rockchip,rk3399-saradc";
+		reg = <0x0 0xff1e0000 0x0 0x100>;
+		interrupts = <GIC_SPI 37 IRQ_TYPE_LEVEL_HIGH>;
+		#io-channel-cells = <1>;
+		clocks = <&cru SCLK_SARADC>, <&cru PCLK_SARADC>;
+		clock-names = "saradc", "apb_pclk";
+		resets = <&cru SRST_SARADC_P>;
+		reset-names = "saradc-apb";
+		status = "disabled";
+	};
+
+	amba {
+		compatible = "arm,amba-bus";
+		#address-cells = <2>;
+		#size-cells = <2>;
+		ranges;
+
+		dmac0: dma-controller@ff2c0000 {
+			compatible = "arm,pl330", "arm,primecell";
+			reg = <0x0 0xff2c0000 0x0 0x4000>;
+			interrupts = <GIC_SPI 0 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 1 IRQ_TYPE_LEVEL_HIGH>;
+			#dma-cells = <1>;
+			clocks = <&cru ACLK_DMAC0>;
+			clock-names = "apb_pclk";
+			peripherals-req-type-burst;
+		};
+
+		dmac1: dma-controller@ff2d0000 {
+			compatible = "arm,pl330", "arm,primecell";
+			reg = <0x0 0xff2d0000 0x0 0x4000>;
+			interrupts = <GIC_SPI 2 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 3 IRQ_TYPE_LEVEL_HIGH>;
+			#dma-cells = <1>;
+			clocks = <&cru ACLK_DMAC1>;
+			clock-names = "apb_pclk";
+			peripherals-req-type-burst;
+		};
+	};
+
+	i2s_2ch_0: i2s@ff350000 {
+		compatible = "rockchip,rk3308-i2s", "rockchip,rk3066-i2s";
+		reg = <0x0 0xff350000 0x0 0x1000>;
+		interrupts = <GIC_SPI 52 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru SCLK_I2S0_2CH>, <&cru HCLK_I2S0_2CH>;
+		clock-names = "i2s_clk", "i2s_hclk";
+		dmas = <&dmac1 8>, <&dmac1 9>;
+		dma-names = "tx", "rx";
+		resets = <&cru SRST_I2S0_2CH_M>, <&cru SRST_I2S0_2CH_H>;
+		reset-names = "reset-m", "reset-h";
+		pinctrl-names = "default";
+		pinctrl-0 = <&i2s_2ch_0_sclk
+			     &i2s_2ch_0_lrck
+			     &i2s_2ch_0_sdi
+			     &i2s_2ch_0_sdo>;
+		status = "disabled";
+	};
+
+	i2s_2ch_1: i2s@ff360000 {
+		compatible = "rockchip,rk3308-i2s", "rockchip,rk3066-i2s";
+		reg = <0x0 0xff360000 0x0 0x1000>;
+		interrupts = <GIC_SPI 53 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru SCLK_I2S1_2CH>, <&cru HCLK_I2S1_2CH>;
+		clock-names = "i2s_clk", "i2s_hclk";
+		dmas = <&dmac1 11>;
+		dma-names = "rx";
+		resets = <&cru SRST_I2S1_2CH_M>, <&cru SRST_I2S1_2CH_H>;
+		reset-names = "reset-m", "reset-h";
+		status = "disabled";
+	};
+
+	spdif_tx: spdif-tx@ff3a0000 {
+		compatible = "rockchip,rk3308-spdif", "rockchip,rk3328-spdif";
+		reg = <0x0 0xff3a0000 0x0 0x1000>;
+		interrupts = <GIC_SPI 55 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru SCLK_SPDIF_TX>, <&cru HCLK_SPDIFTX>;
+		clock-names = "mclk", "hclk";
+		dmas = <&dmac1 13>;
+		dma-names = "tx";
+		pinctrl-names = "default";
+		pinctrl-0 = <&spdif_out>;
+		status = "disabled";
+	};
+
+	sdmmc: dwmmc@ff480000 {
+		compatible = "rockchip,rk3308-dw-mshc", "rockchip,rk3288-dw-mshc";
+		reg = <0x0 0xff480000 0x0 0x4000>;
+		max-frequency = <150000000>;
+		bus-width = <4>;
+		clocks = <&cru HCLK_SDMMC>, <&cru SCLK_SDMMC>,
+			 <&cru SCLK_SDMMC_DRV>, <&cru SCLK_SDMMC_SAMPLE>;
+		clock-names = "biu", "ciu", "ciu-drv", "ciu-sample";
+		fifo-depth = <0x100>;
+		interrupts = <GIC_SPI 76 IRQ_TYPE_LEVEL_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&sdmmc_clk &sdmmc_cmd &sdmmc_det &sdmmc_bus4>;
+		status = "disabled";
+	};
+
+	emmc: dwmmc@ff490000 {
+		compatible = "rockchip,rk3308-dw-mshc", "rockchip,rk3288-dw-mshc";
+		reg = <0x0 0xff490000 0x0 0x4000>;
+		max-frequency = <150000000>;
+		bus-width = <8>;
+		clocks = <&cru HCLK_EMMC>, <&cru SCLK_EMMC>,
+			 <&cru SCLK_EMMC_DRV>, <&cru SCLK_EMMC_SAMPLE>;
+		clock-names = "biu", "ciu", "ciu-drv", "ciu-sample";
+		fifo-depth = <0x100>;
+		interrupts = <GIC_SPI 77 IRQ_TYPE_LEVEL_HIGH>;
+		status = "disabled";
+	};
+
+	sdio: dwmmc@ff4a0000 {
+		compatible = "rockchip,rk3308-dw-mshc", "rockchip,rk3288-dw-mshc";
+		reg = <0x0 0xff4a0000 0x0 0x4000>;
+		max-frequency = <150000000>;
+		bus-width = <4>;
+		clocks = <&cru HCLK_SDIO>, <&cru SCLK_SDIO>,
+			 <&cru SCLK_SDIO_DRV>, <&cru SCLK_SDIO_SAMPLE>;
+		clock-names = "biu", "ciu", "ciu-drv", "ciu-sample";
+		fifo-depth = <0x100>;
+		interrupts = <GIC_SPI 78 IRQ_TYPE_LEVEL_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&sdio_bus4 &sdio_cmd &sdio_clk>;
+		status = "disabled";
+	};
+
+	cru: clock-controller@ff500000 {
+		compatible = "rockchip,rk3308-cru";
+		reg = <0x0 0xff500000 0x0 0x1000>;
+		rockchip,grf = <&grf>;
+		#clock-cells = <1>;
+		#reset-cells = <1>;
+
+		assigned-clocks = <&cru SCLK_RTC32K>;
+		assigned-clock-rates = <32768>;
+	};
+
+	gic: interrupt-controller@ff580000 {
+		compatible = "arm,gic-400";
+		#interrupt-cells = <3>;
+		#address-cells = <0>;
+		interrupt-controller;
+
+		reg = <0x0 0xff581000 0x0 0x1000>,
+		      <0x0 0xff582000 0x0 0x2000>,
+		      <0x0 0xff584000 0x0 0x2000>,
+		      <0x0 0xff586000 0x0 0x2000>;
+		interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_HIGH>;
+	};
+
+	sram: sram@fff80000 {
+		compatible = "mmio-sram";
+		reg = <0x0 0xfff80000 0x0 0x40000>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+		ranges = <0 0x0 0xfff80000 0x40000>;
+		/* reserved for ddr dvfs and system suspend/resume */
+		ddr-sram@0 {
+			reg = <0x0 0x8000>;
+		};
+		/* reserved for vad audio buffer */
+		vad_sram: vad-sram@8000 {
+			reg = <0x8000 0x38000>;
+		};
+	};
+
+	pinctrl: pinctrl {
+		compatible = "rockchip,rk3308-pinctrl";
+		rockchip,grf = <&grf>;
+		#address-cells = <2>;
+		#size-cells = <2>;
+		ranges;
+		gpio0: gpio0@ff220000 {
+			compatible = "rockchip,gpio-bank";
+			reg = <0x0 0xff220000 0x0 0x100>;
+			interrupts = <GIC_SPI 40 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cru PCLK_GPIO0>;
+			gpio-controller;
+			#gpio-cells = <2>;
+
+			interrupt-controller;
+			#interrupt-cells = <2>;
+		};
+
+		gpio1: gpio1@ff230000 {
+			compatible = "rockchip,gpio-bank";
+			reg = <0x0 0xff230000 0x0 0x100>;
+			interrupts = <GIC_SPI 41 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cru PCLK_GPIO1>;
+			gpio-controller;
+			#gpio-cells = <2>;
+
+			interrupt-controller;
+			#interrupt-cells = <2>;
+		};
+
+		gpio2: gpio2@ff240000 {
+			compatible = "rockchip,gpio-bank";
+			reg = <0x0 0xff240000 0x0 0x100>;
+			interrupts = <GIC_SPI 42 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cru PCLK_GPIO2>;
+			gpio-controller;
+			#gpio-cells = <2>;
+
+			interrupt-controller;
+			#interrupt-cells = <2>;
+		};
+
+		gpio3: gpio3@ff250000 {
+			compatible = "rockchip,gpio-bank";
+			reg = <0x0 0xff250000 0x0 0x100>;
+			interrupts = <GIC_SPI 43 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cru PCLK_GPIO3>;
+			gpio-controller;
+			#gpio-cells = <2>;
+
+			interrupt-controller;
+			#interrupt-cells = <2>;
+		};
+
+		gpio4: gpio4@ff260000 {
+			compatible = "rockchip,gpio-bank";
+			reg = <0x0 0xff260000 0x0 0x100>;
+			interrupts = <GIC_SPI 44 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cru PCLK_GPIO4>;
+			gpio-controller;
+			#gpio-cells = <2>;
+
+			interrupt-controller;
+			#interrupt-cells = <2>;
+		};
+
+		pcfg_pull_up: pcfg-pull-up {
+			bias-pull-up;
+		};
+
+		pcfg_pull_down: pcfg-pull-down {
+			bias-pull-down;
+		};
+
+		pcfg_pull_none: pcfg-pull-none {
+			bias-disable;
+		};
+
+		pcfg_pull_none_2ma: pcfg-pull-none-2ma {
+			bias-disable;
+			drive-strength = <2>;
+		};
+
+		pcfg_pull_up_2ma: pcfg-pull-up-2ma {
+			bias-pull-up;
+			drive-strength = <2>;
+		};
+
+		pcfg_pull_up_4ma: pcfg-pull-up-4ma {
+			bias-pull-up;
+			drive-strength = <4>;
+		};
+
+		pcfg_pull_none_4ma: pcfg-pull-none-4ma {
+			bias-disable;
+			drive-strength = <4>;
+		};
+
+		pcfg_pull_down_4ma: pcfg-pull-down-4ma {
+			bias-pull-down;
+			drive-strength = <4>;
+		};
+
+		pcfg_pull_none_8ma: pcfg-pull-none-8ma {
+			bias-disable;
+			drive-strength = <8>;
+		};
+
+		pcfg_pull_up_8ma: pcfg-pull-up-8ma {
+			bias-pull-up;
+			drive-strength = <8>;
+		};
+
+		pcfg_pull_none_12ma: pcfg-pull-none-12ma {
+			bias-disable;
+			drive-strength = <12>;
+		};
+
+		pcfg_pull_up_12ma: pcfg-pull-up-12ma {
+			bias-pull-up;
+			drive-strength = <12>;
+		};
+
+		pcfg_pull_none_smt: pcfg-pull-none-smt {
+			bias-disable;
+			input-schmitt-enable;
+		};
+
+		pcfg_output_high: pcfg-output-high {
+			output-high;
+		};
+
+		pcfg_output_low: pcfg-output-low {
+			output-low;
+		};
+
+		pcfg_input_high: pcfg-input-high {
+			bias-pull-up;
+			input-enable;
+		};
+
+		pcfg_input: pcfg-input {
+			input-enable;
+		};
+
+		i2c0 {
+			i2c0_xfer: i2c0-xfer {
+				rockchip,pins =
+					<1 RK_PD0 2 &pcfg_pull_none_smt>,
+					<1 RK_PD1 2 &pcfg_pull_none_smt>;
+			};
+		};
+
+		i2c1 {
+			i2c1_xfer: i2c1-xfer {
+				rockchip,pins =
+					<0 RK_PB3 1 &pcfg_pull_none_smt>,
+					<0 RK_PB4 1 &pcfg_pull_none_smt>;
+			};
+		};
+
+		i2c2 {
+			i2c2_xfer: i2c2-xfer {
+				rockchip,pins =
+					<2 RK_PA2 3 &pcfg_pull_none_smt>,
+					<2 RK_PA3 3 &pcfg_pull_none_smt>;
+			};
+		};
+
+		i2c3-m0 {
+			i2c3m0_xfer: i2c3m0-xfer {
+				rockchip,pins =
+					<0 RK_PB7 2 &pcfg_pull_none_smt>,
+					<0 RK_PC0 2 &pcfg_pull_none_smt>;
+			};
+		};
+
+		i2c3-m1 {
+			i2c3m1_xfer: i2c3m1-xfer {
+				rockchip,pins =
+					<3 RK_PB4 2 &pcfg_pull_none_smt>,
+					<3 RK_PB5 2 &pcfg_pull_none_smt>;
+			};
+		};
+
+		i2c3-m2 {
+			i2c3m2_xfer: i2c3m2-xfer {
+				rockchip,pins =
+					<2 RK_PA1 3 &pcfg_pull_none_smt>,
+					<2 RK_PA0 3 &pcfg_pull_none_smt>;
+			};
+		};
+
+		i2s_2ch_0 {
+			i2s_2ch_0_mclk: i2s-2ch-0-mclk {
+				rockchip,pins =
+					<4 RK_PB4 1 &pcfg_pull_none>;
+			};
+
+			i2s_2ch_0_sclk: i2s-2ch-0-sclk {
+				rockchip,pins =
+					<4 RK_PB5 1 &pcfg_pull_none>;
+			};
+
+			i2s_2ch_0_lrck: i2s-2ch-0-lrck {
+				rockchip,pins =
+					<4 RK_PB6 1 &pcfg_pull_none>;
+			};
+
+			i2s_2ch_0_sdo: i2s-2ch-0-sdo {
+				rockchip,pins =
+					<4 RK_PB7 1 &pcfg_pull_none>;
+			};
+
+			i2s_2ch_0_sdi: i2s-2ch-0-sdi {
+				rockchip,pins =
+					<4 RK_PC0 1 &pcfg_pull_none>;
+			};
+		};
+
+		i2s_8ch_0 {
+			i2s_8ch_0_mclk: i2s-8ch-0-mclk {
+				rockchip,pins =
+					<2 RK_PA4 1 &pcfg_pull_none>;
+			};
+
+			i2s_8ch_0_sclktx: i2s-8ch-0-sclktx {
+				rockchip,pins =
+					<2 RK_PA5 1 &pcfg_pull_none>;
+			};
+
+			i2s_8ch_0_sclkrx: i2s-8ch-0-sclkrx {
+				rockchip,pins =
+					<2 RK_PA6 1 &pcfg_pull_none>;
+			};
+
+			i2s_8ch_0_lrcktx: i2s-8ch-0-lrcktx {
+				rockchip,pins =
+					<2 RK_PA7 1 &pcfg_pull_none>;
+			};
+
+			i2s_8ch_0_lrckrx: i2s-8ch-0-lrckrx {
+				rockchip,pins =
+					<2 RK_PB0 1 &pcfg_pull_none>;
+			};
+
+			i2s_8ch_0_sdo0: i2s-8ch-0-sdo0 {
+				rockchip,pins =
+					<2 RK_PB1 1 &pcfg_pull_none>;
+			};
+
+			i2s_8ch_0_sdo1: i2s-8ch-0-sdo1 {
+				rockchip,pins =
+					<2 RK_PB2 1 &pcfg_pull_none>;
+			};
+
+			i2s_8ch_0_sdo2: i2s-8ch-0-sdo2 {
+				rockchip,pins =
+					<2 RK_PB3 1 &pcfg_pull_none>;
+			};
+
+			i2s_8ch_0_sdo3: i2s-8ch-0-sdo3 {
+				rockchip,pins =
+					<2 RK_PB4 1 &pcfg_pull_none>;
+			};
+
+			i2s_8ch_0_sdi0: i2s-8ch-0-sdi0 {
+				rockchip,pins =
+					<2 RK_PB5 1 &pcfg_pull_none>;
+			};
+
+			i2s_8ch_0_sdi1: i2s-8ch-0-sdi1 {
+				rockchip,pins =
+					<2 RK_PB6 1 &pcfg_pull_none>;
+			};
+
+			i2s_8ch_0_sdi2: i2s-8ch-0-sdi2 {
+				rockchip,pins =
+					<2 RK_PB7 1 &pcfg_pull_none>;
+			};
+
+			i2s_8ch_0_sdi3: i2s-8ch-0-sdi3 {
+				rockchip,pins =
+					<2 RK_PC0 1 &pcfg_pull_none>;
+			};
+		};
+
+		i2s_8ch_1_m0 {
+			i2s_8ch_1_m0_mclk: i2s-8ch-1-m0-mclk {
+				rockchip,pins =
+					<1 RK_PA2 2 &pcfg_pull_none>;
+			};
+
+			i2s_8ch_1_m0_sclktx: i2s-8ch-1-m0-sclktx {
+				rockchip,pins =
+					<1 RK_PA3 2 &pcfg_pull_none>;
+			};
+
+			i2s_8ch_1_m0_sclkrx: i2s-8ch-1-m0-sclkrx {
+				rockchip,pins =
+					<1 RK_PA4 2 &pcfg_pull_none>;
+			};
+
+			i2s_8ch_1_m0_lrcktx: i2s-8ch-1-m0-lrcktx {
+				rockchip,pins =
+					<1 RK_PA5 2 &pcfg_pull_none>;
+			};
+
+			i2s_8ch_1_m0_lrckrx: i2s-8ch-1-m0-lrckrx {
+				rockchip,pins =
+					<1 RK_PA6 2 &pcfg_pull_none>;
+			};
+
+			i2s_8ch_1_m0_sdo0: i2s-8ch-1-m0-sdo0 {
+				rockchip,pins =
+					<1 RK_PA7 2 &pcfg_pull_none>;
+			};
+
+			i2s_8ch_1_m0_sdo1_sdi3: i2s-8ch-1-m0-sdo1-sdi3 {
+				rockchip,pins =
+					<1 RK_PB0 2 &pcfg_pull_none>;
+			};
+
+			i2s_8ch_1_m0_sdo2_sdi2: i2s-8ch-1-m0-sdo2-sdi2 {
+				rockchip,pins =
+					<1 RK_PB1 2 &pcfg_pull_none>;
+			};
+
+			i2s_8ch_1_m0_sdo3_sdi1: i2s-8ch-1-m0-sdo3_sdi1 {
+				rockchip,pins =
+					<1 RK_PB2 2 &pcfg_pull_none>;
+			};
+
+			i2s_8ch_1_m0_sdi0: i2s-8ch-1-m0-sdi0 {
+				rockchip,pins =
+					<1 RK_PB3 2 &pcfg_pull_none>;
+			};
+		};
+
+		i2s_8ch_1_m1 {
+			i2s_8ch_1_m1_mclk: i2s-8ch-1-m1-mclk {
+				rockchip,pins =
+					<1 RK_PB4 2 &pcfg_pull_none>;
+			};
+
+			i2s_8ch_1_m1_sclktx: i2s-8ch-1-m1-sclktx {
+				rockchip,pins =
+					<1 RK_PB5 2 &pcfg_pull_none>;
+			};
+
+			i2s_8ch_1_m1_sclkrx: i2s-8ch-1-m1-sclkrx {
+				rockchip,pins =
+					<1 RK_PB6 2 &pcfg_pull_none>;
+			};
+
+			i2s_8ch_1_m1_lrcktx: i2s-8ch-1-m1-lrcktx {
+				rockchip,pins =
+					<1 RK_PB7 2 &pcfg_pull_none>;
+			};
+
+			i2s_8ch_1_m1_lrckrx: i2s-8ch-1-m1-lrckrx {
+				rockchip,pins =
+					<1 RK_PC0 2 &pcfg_pull_none>;
+			};
+
+			i2s_8ch_1_m1_sdo0: i2s-8ch-1-m1-sdo0 {
+				rockchip,pins =
+					<1 RK_PC1 2 &pcfg_pull_none>;
+			};
+
+			i2s_8ch_1_m1_sdo1_sdi3: i2s-8ch-1-m1-sdo1-sdi3 {
+				rockchip,pins =
+					<1 RK_PC2 2 &pcfg_pull_none>;
+			};
+
+			i2s_8ch_1_m1_sdo2_sdi2: i2s-8ch-1-m1-sdo2-sdi2 {
+				rockchip,pins =
+					<1 RK_PC3 2 &pcfg_pull_none>;
+			};
+
+			i2s_8ch_1_m1_sdo3_sdi1: i2s-8ch-1-m1-sdo3_sdi1 {
+				rockchip,pins =
+					<1 RK_PC4 2 &pcfg_pull_none>;
+			};
+
+			i2s_8ch_1_m1_sdi0: i2s-8ch-1-m1-sdi0 {
+				rockchip,pins =
+					<1 RK_PC5 2 &pcfg_pull_none>;
+			};
+		};
+
+		pdm_m0 {
+			pdm_m0_clk: pdm-m0-clk {
+				rockchip,pins =
+					<1 RK_PA4 3 &pcfg_pull_none>;
+			};
+
+			pdm_m0_sdi0: pdm-m0-sdi0 {
+				rockchip,pins =
+					<1 RK_PB3 3 &pcfg_pull_none>;
+			};
+
+			pdm_m0_sdi1: pdm-m0-sdi1 {
+				rockchip,pins =
+					<1 RK_PB2 3 &pcfg_pull_none>;
+			};
+
+			pdm_m0_sdi2: pdm-m0-sdi2 {
+				rockchip,pins =
+					<1 RK_PB1 3 &pcfg_pull_none>;
+			};
+
+			pdm_m0_sdi3: pdm-m0-sdi3 {
+				rockchip,pins =
+					<1 RK_PB0 3 &pcfg_pull_none>;
+			};
+		};
+
+		pdm_m1 {
+			pdm_m1_clk: pdm-m1-clk {
+				rockchip,pins =
+					<1 RK_PB6 4 &pcfg_pull_none>;
+			};
+
+			pdm_m1_sdi0: pdm-m1-sdi0 {
+				rockchip,pins =
+					<1 RK_PC5 4 &pcfg_pull_none>;
+			};
+
+			pdm_m1_sdi1: pdm-m1-sdi1 {
+				rockchip,pins =
+					<1 RK_PC4 4 &pcfg_pull_none>;
+			};
+
+			pdm_m1_sdi2: pdm-m1-sdi2 {
+				rockchip,pins =
+					<1 RK_PC3 4 &pcfg_pull_none>;
+			};
+
+			pdm_m1_sdi3: pdm-m1-sdi3 {
+				rockchip,pins =
+					<1 RK_PC2 4 &pcfg_pull_none>;
+			};
+		};
+
+		pdm_m2 {
+			pdm_m2_clkm: pdm-m2-clkm {
+				rockchip,pins =
+					<2 RK_PA4 3 &pcfg_pull_none>;
+			};
+
+			pdm_m2_clk: pdm-m2-clk {
+				rockchip,pins =
+					<2 RK_PA6 2 &pcfg_pull_none>;
+			};
+
+			pdm_m2_sdi0: pdm-m2-sdi0 {
+				rockchip,pins =
+					<2 RK_PB5 2 &pcfg_pull_none>;
+			};
+
+			pdm_m2_sdi1: pdm-m2-sdi1 {
+				rockchip,pins =
+					<2 RK_PB6 2 &pcfg_pull_none>;
+			};
+
+			pdm_m2_sdi2: pdm-m2-sdi2 {
+				rockchip,pins =
+					<2 RK_PB7 2 &pcfg_pull_none>;
+			};
+
+			pdm_m2_sdi3: pdm-m2-sdi3 {
+				rockchip,pins =
+					<2 RK_PC0 2 &pcfg_pull_none>;
+			};
+		};
+
+		spdif_in {
+			spdif_in: spdif-in {
+				rockchip,pins =
+					<0 RK_PC2 1 &pcfg_pull_none>;
+			};
+		};
+
+		spdif_out {
+			spdif_out: spdif-out {
+				rockchip,pins =
+					<0 RK_PC1 1 &pcfg_pull_none>;
+			};
+		};
+
+		tsadc {
+			tsadc_otp_gpio: tsadc-otp-gpio {
+				rockchip,pins =
+					<0 RK_PB2 0 &pcfg_pull_none>;
+			};
+
+			tsadc_otp_out: tsadc-otp-out {
+				rockchip,pins =
+					<0 RK_PB2 1 &pcfg_pull_none>;
+			};
+		};
+
+		uart0 {
+			uart0_xfer: uart0-xfer {
+				rockchip,pins =
+					<2 RK_PA1 1 &pcfg_pull_up>,
+					<2 RK_PA0 1 &pcfg_pull_up>;
+			};
+
+			uart0_cts: uart0-cts {
+				rockchip,pins =
+					<2 RK_PA2 1 &pcfg_pull_none>;
+			};
+
+			uart0_rts: uart0-rts {
+				rockchip,pins =
+					<2 RK_PA3 1 &pcfg_pull_none>;
+			};
+
+			uart0_rts_gpio: uart0-rts-gpio {
+				rockchip,pins =
+					<2 RK_PA3 0 &pcfg_pull_none>;
+			};
+		};
+
+		uart1 {
+			uart1_xfer: uart1-xfer {
+				rockchip,pins =
+					<1 RK_PD1 1 &pcfg_pull_up>,
+					<1 RK_PD0 1 &pcfg_pull_up>;
+			};
+
+			uart1_cts: uart1-cts {
+				rockchip,pins =
+					<1 RK_PC6 1 &pcfg_pull_none>;
+			};
+
+			uart1_rts: uart1-rts {
+				rockchip,pins =
+					<1 RK_PC7 1 &pcfg_pull_none>;
+			};
+		};
+
+		uart2-m0 {
+			uart2m0_xfer: uart2m0-xfer {
+				rockchip,pins =
+					<1 RK_PC7 2 &pcfg_pull_up>,
+					<1 RK_PC6 2 &pcfg_pull_up>;
+			};
+		};
+
+		uart2-m1 {
+			uart2m1_xfer: uart2m1-xfer {
+				rockchip,pins =
+					<4 RK_PD3 2 &pcfg_pull_up>,
+					<4 RK_PD2 2 &pcfg_pull_up>;
+			};
+		};
+
+		uart3 {
+			uart3_xfer: uart3-xfer {
+				rockchip,pins =
+					<3 RK_PB5 4 &pcfg_pull_up>,
+					<3 RK_PB4 4 &pcfg_pull_up>;
+			};
+		};
+
+		uart3-m1 {
+			uart3m1_xfer: uart3m1-xfer {
+				rockchip,pins =
+					<0 RK_PC2 3 &pcfg_pull_up>,
+					<0 RK_PC1 3 &pcfg_pull_up>;
+			};
+		};
+
+		uart4 {
+
+			uart4_xfer: uart4-xfer {
+				rockchip,pins =
+					<4 RK_PB1 1 &pcfg_pull_up>,
+					<4 RK_PB0 1 &pcfg_pull_up>;
+			};
+
+			uart4_cts: uart4-cts {
+				rockchip,pins =
+					<4 RK_PA6 1 &pcfg_pull_none>;
+
+			};
+
+			uart4_rts: uart4-rts {
+				rockchip,pins =
+					<4 RK_PA7 1 &pcfg_pull_none>;
+			};
+
+			uart4_rts_gpio: uart4-rts-gpio {
+				rockchip,pins =
+					<4 RK_PA7 0 &pcfg_pull_none>;
+			};
+		};
+
+		spi0 {
+			spi0_clk: spi0-clk {
+				rockchip,pins =
+					<2 RK_PA2 2 &pcfg_pull_up_4ma>;
+			};
+
+			spi0_csn0: spi0-csn0 {
+				rockchip,pins =
+					<2 RK_PA3 2 &pcfg_pull_up_4ma>;
+			};
+
+			spi0_miso: spi0-miso {
+				rockchip,pins =
+					<2 RK_PA0 2 &pcfg_pull_up_4ma>;
+			};
+
+			spi0_mosi: spi0-mosi {
+				rockchip,pins =
+					<2 RK_PA1 2 &pcfg_pull_up_4ma>;
+			};
+
+			spi0_clk_hs: spi0-clk-hs {
+				rockchip,pins =
+					<2 RK_PA2 2 &pcfg_pull_up_8ma>;
+			};
+
+			spi0_miso_hs: spi0-miso-hs {
+				rockchip,pins =
+					<2 RK_PA0 2 &pcfg_pull_up_8ma>;
+			};
+
+			spi0_mosi_hs: spi0-mosi-hs {
+				rockchip,pins =
+					<2 RK_PA1 2 &pcfg_pull_up_8ma>;
+			};
+
+		};
+
+		spi1 {
+			spi1_clk: spi1-clk {
+				rockchip,pins =
+					<3 RK_PB3 3 &pcfg_pull_up_4ma>;
+			};
+
+			spi1_csn0: spi1-csn0 {
+				rockchip,pins =
+					<3 RK_PB5 3 &pcfg_pull_up_4ma>;
+			};
+
+			spi1_miso: spi1-miso {
+				rockchip,pins =
+					<3 RK_PB2 3 &pcfg_pull_up_4ma>;
+			};
+
+			spi1_mosi: spi1-mosi {
+				rockchip,pins =
+					<3 RK_PB4 3 &pcfg_pull_up_4ma>;
+			};
+
+			spi1_clk_hs: spi1-clk-hs {
+				rockchip,pins =
+					<3 RK_PB3 3 &pcfg_pull_up_8ma>;
+			};
+
+			spi1_miso_hs: spi1-miso-hs {
+				rockchip,pins =
+					<3 RK_PB2 3 &pcfg_pull_up_8ma>;
+			};
+
+			spi1_mosi_hs: spi1-mosi-hs {
+				rockchip,pins =
+					<3 RK_PB4 3 &pcfg_pull_up_8ma>;
+			};
+		};
+
+		spi1-m1 {
+			spi1m1_miso: spi1m1-miso {
+				rockchip,pins =
+					<2 RK_PA4 2 &pcfg_pull_up_4ma>;
+			};
+
+			spi1m1_mosi: spi1m1-mosi {
+				rockchip,pins =
+					<2 RK_PA5 2 &pcfg_pull_up_4ma>;
+			};
+
+			spi1m1_clk: spi1m1-clk {
+				rockchip,pins =
+					<2 RK_PA7 2 &pcfg_pull_up_4ma>;
+			};
+
+			spi1m1_csn0: spi1m1-csn0 {
+				rockchip,pins =
+					<2 RK_PB1 2 &pcfg_pull_up_4ma>;
+			};
+
+			spi1m1_miso_hs: spi1m1-miso-hs {
+				rockchip,pins =
+					<2 RK_PA4 2 &pcfg_pull_up_8ma>;
+			};
+
+			spi1m1_mosi_hs: spi1m1-mosi-hs {
+				rockchip,pins =
+					<2 RK_PA5 2 &pcfg_pull_up_8ma>;
+			};
+
+			spi1m1_clk_hs: spi1m1-clk-hs {
+				rockchip,pins =
+					<2 RK_PA7 2 &pcfg_pull_up_8ma>;
+			};
+
+			spi1m1_csn0_hs: spi1m1-csn0-hs {
+				rockchip,pins =
+					<2 RK_PB1 2 &pcfg_pull_up_8ma>;
+			};
+		};
+
+		spi2 {
+			spi2_clk: spi2-clk {
+				rockchip,pins =
+					<1 RK_PD0 3 &pcfg_pull_up_4ma>;
+			};
+
+			spi2_csn0: spi2-csn0 {
+				rockchip,pins =
+					<1 RK_PD1 3 &pcfg_pull_up_4ma>;
+			};
+
+			spi2_miso: spi2-miso {
+				rockchip,pins =
+					<1 RK_PC6 3 &pcfg_pull_up_4ma>;
+			};
+
+			spi2_mosi: spi2-mosi {
+				rockchip,pins =
+					<1 RK_PC7 3 &pcfg_pull_up_4ma>;
+			};
+
+			spi2_clk_hs: spi2-clk-hs {
+				rockchip,pins =
+					<1 RK_PD0 3 &pcfg_pull_up_8ma>;
+			};
+
+			spi2_miso_hs: spi2-miso-hs {
+				rockchip,pins =
+					<1 RK_PC6 3 &pcfg_pull_up_8ma>;
+			};
+
+			spi2_mosi_hs: spi2-mosi-hs {
+				rockchip,pins =
+					<1 RK_PC7 3 &pcfg_pull_up_8ma>;
+			};
+		};
+
+		sdmmc {
+			sdmmc_clk: sdmmc-clk {
+				rockchip,pins =
+					<4 RK_PD5 1 &pcfg_pull_none_4ma>;
+			};
+
+			sdmmc_cmd: sdmmc-cmd {
+				rockchip,pins =
+					<4 RK_PD4 1 &pcfg_pull_up_4ma>;
+			};
+
+			sdmmc_det: sdmmc-det {
+				rockchip,pins =
+					<0 RK_PA3 1 &pcfg_pull_up_4ma>;
+			};
+
+			sdmmc_pwren: sdmmc-pwren {
+				rockchip,pins =
+					<4 RK_PD6 1 &pcfg_pull_none_4ma>;
+			};
+
+			sdmmc_bus1: sdmmc-bus1 {
+				rockchip,pins =
+					<4 RK_PD0 1 &pcfg_pull_up_4ma>;
+			};
+
+			sdmmc_bus4: sdmmc-bus4 {
+				rockchip,pins =
+					<4 RK_PD0 1 &pcfg_pull_up_4ma>,
+					<4 RK_PD1 1 &pcfg_pull_up_4ma>,
+					<4 RK_PD2 1 &pcfg_pull_up_4ma>,
+					<4 RK_PD3 1 &pcfg_pull_up_4ma>;
+			};
+
+			sdmmc_gpio: sdmmc-gpio {
+				rockchip,pins =
+					<4 RK_PD0 0 &pcfg_pull_up_4ma>,
+					<4 RK_PD1 0 &pcfg_pull_up_4ma>,
+					<4 RK_PD2 0 &pcfg_pull_up_4ma>,
+					<4 RK_PD3 0 &pcfg_pull_up_4ma>,
+					<4 RK_PD4 0 &pcfg_pull_up_4ma>,
+					<4 RK_PD5 0 &pcfg_pull_up_4ma>,
+					<4 RK_PD6 0 &pcfg_pull_up_4ma>;
+			};
+		};
+
+		sdio {
+			sdio_clk: sdio-clk {
+				rockchip,pins =
+					<4 RK_PA5 1 &pcfg_pull_none_8ma>;
+			};
+
+			sdio_cmd: sdio-cmd {
+				rockchip,pins =
+					<4 RK_PA4 1 &pcfg_pull_up_8ma>;
+			};
+
+			sdio_pwren: sdio-pwren {
+				rockchip,pins =
+					<0 RK_PA2 1 &pcfg_pull_none_8ma>;
+			};
+
+			sdio_wrpt: sdio-wrpt {
+				rockchip,pins =
+					<0 RK_PA1 1 &pcfg_pull_none_8ma>;
+			};
+
+			sdio_intn: sdio-intn {
+				rockchip,pins =
+					<0 RK_PA0 1 &pcfg_pull_none_8ma>;
+			};
+
+			sdio_bus1: sdio-bus1 {
+				rockchip,pins =
+					<4 RK_PA0 1 &pcfg_pull_up_8ma>;
+			};
+
+			sdio_bus4: sdio-bus4 {
+				rockchip,pins =
+					<4 RK_PA0 1 &pcfg_pull_up_8ma>,
+					<4 RK_PA1 1 &pcfg_pull_up_8ma>,
+					<4 RK_PA2 1 &pcfg_pull_up_8ma>,
+					<4 RK_PA3 1 &pcfg_pull_up_8ma>;
+			};
+
+			sdio_gpio: sdio-gpio {
+				rockchip,pins =
+					<4 RK_PA0 0 &pcfg_pull_up_4ma>,
+					<4 RK_PA1 0 &pcfg_pull_up_4ma>,
+					<4 RK_PA2 0 &pcfg_pull_up_4ma>,
+					<4 RK_PA3 0 &pcfg_pull_up_4ma>,
+					<4 RK_PA4 0 &pcfg_pull_up_4ma>,
+					<4 RK_PA5 0 &pcfg_pull_up_4ma>;
+			};
+		};
+
+		emmc {
+			emmc_clk: emmc-clk {
+				rockchip,pins =
+					<3 RK_PB1 2 &pcfg_pull_none_8ma>;
+			};
+
+			emmc_cmd: emmc-cmd {
+				rockchip,pins =
+					<3 RK_PB0 2 &pcfg_pull_up_8ma>;
+			};
+
+			emmc_pwren: emmc-pwren {
+				rockchip,pins =
+					<3 RK_PB3 2 &pcfg_pull_none>;
+			};
+
+			emmc_rstn: emmc-rstn {
+				rockchip,pins =
+					<3 RK_PB2 2 &pcfg_pull_none>;
+			};
+
+			emmc_bus1: emmc-bus1 {
+				rockchip,pins =
+					<3 RK_PA0 2 &pcfg_pull_up_8ma>;
+			};
+
+			emmc_bus4: emmc-bus4 {
+				rockchip,pins =
+					<3 RK_PA0 2 &pcfg_pull_up_8ma>,
+					<3 RK_PA1 2 &pcfg_pull_up_8ma>,
+					<3 RK_PA2 2 &pcfg_pull_up_8ma>,
+					<3 RK_PA3 2 &pcfg_pull_up_8ma>;
+			};
+
+			emmc_bus8: emmc-bus8 {
+				rockchip,pins =
+					<3 RK_PA0 2 &pcfg_pull_up_8ma>,
+					<3 RK_PA1 2 &pcfg_pull_up_8ma>,
+					<3 RK_PA2 2 &pcfg_pull_up_8ma>,
+					<3 RK_PA3 2 &pcfg_pull_up_8ma>,
+					<3 RK_PA4 2 &pcfg_pull_up_8ma>,
+					<3 RK_PA5 2 &pcfg_pull_up_8ma>,
+					<3 RK_PA6 2 &pcfg_pull_up_8ma>,
+					<3 RK_PA7 2 &pcfg_pull_up_8ma>;
+			};
+		};
+
+		flash {
+			flash_csn0: flash-csn0 {
+				rockchip,pins =
+					<3 RK_PB5 1 &pcfg_pull_none>;
+			};
+
+			flash_rdy: flash-rdy {
+				rockchip,pins =
+					<3 RK_PB4 1 &pcfg_pull_none>;
+			};
+
+			flash_ale: flash-ale {
+				rockchip,pins =
+					<3 RK_PB3 1 &pcfg_pull_none>;
+			};
+
+			flash_cle: flash-cle {
+				rockchip,pins =
+					<3 RK_PB1 1 &pcfg_pull_none>;
+			};
+
+			flash_wrn: flash-wrn {
+				rockchip,pins =
+					<3 RK_PB0 1 &pcfg_pull_none>;
+			};
+
+			flash_rdn: flash-rdn {
+				rockchip,pins =
+					<3 RK_PB2 1 &pcfg_pull_none>;
+			};
+
+			flash_bus8: flash-bus8 {
+				rockchip,pins =
+					<3 RK_PA0 1 &pcfg_pull_up_12ma>,
+					<3 RK_PA1 1 &pcfg_pull_up_12ma>,
+					<3 RK_PA2 1 &pcfg_pull_up_12ma>,
+					<3 RK_PA3 1 &pcfg_pull_up_12ma>,
+					<3 RK_PA4 1 &pcfg_pull_up_12ma>,
+					<3 RK_PA5 1 &pcfg_pull_up_12ma>,
+					<3 RK_PA6 1 &pcfg_pull_up_12ma>,
+					<3 RK_PA7 1 &pcfg_pull_up_12ma>;
+			};
+		};
+
+		pwm0 {
+			pwm0_pin: pwm0-pin {
+				rockchip,pins =
+					<0 RK_PB5 1 &pcfg_pull_none>;
+			};
+
+			pwm0_pin_pull_down: pwm0-pin-pull-down {
+				rockchip,pins =
+					<0 RK_PB5 1 &pcfg_pull_down>;
+			};
+		};
+
+		pwm1 {
+			pwm1_pin: pwm1-pin {
+				rockchip,pins =
+					<0 RK_PB6 1 &pcfg_pull_none>;
+			};
+
+			pwm1_pin_pull_down: pwm1-pin-pull-down {
+				rockchip,pins =
+					<0 RK_PB6 1 &pcfg_pull_down>;
+			};
+		};
+
+		pwm2 {
+			pwm2_pin: pwm2-pin {
+				rockchip,pins =
+					<0 RK_PB7 1 &pcfg_pull_none>;
+			};
+
+			pwm2_pin_pull_down: pwm2-pin-pull-down {
+				rockchip,pins =
+					<0 RK_PB7 1 &pcfg_pull_down>;
+			};
+		};
+
+		pwm3 {
+			pwm3_pin: pwm3-pin {
+				rockchip,pins =
+					<0 RK_PC0 1 &pcfg_pull_none>;
+			};
+
+			pwm3_pin_pull_down: pwm3-pin-pull-down {
+				rockchip,pins =
+					<0 RK_PC0 1 &pcfg_pull_down>;
+			};
+		};
+
+		pwm4 {
+			pwm4_pin: pwm4-pin {
+				rockchip,pins =
+					<0 RK_PA1 2 &pcfg_pull_none>;
+			};
+
+			pwm4_pin_pull_down: pwm4-pin-pull-down {
+				rockchip,pins =
+					<0 RK_PA1 2 &pcfg_pull_down>;
+			};
+		};
+
+		pwm5 {
+			pwm5_pin: pwm5-pin {
+				rockchip,pins =
+					<0 RK_PC1 2 &pcfg_pull_none>;
+			};
+
+			pwm5_pin_pull_down: pwm5-pin-pull-down {
+				rockchip,pins =
+					<0 RK_PC1 2 &pcfg_pull_down>;
+			};
+		};
+
+		pwm6 {
+			pwm6_pin: pwm6-pin {
+				rockchip,pins =
+					<0 RK_PC2 2 &pcfg_pull_none>;
+			};
+
+			pwm6_pin_pull_down: pwm6-pin-pull-down {
+				rockchip,pins =
+					<0 RK_PC2 2 &pcfg_pull_down>;
+			};
+		};
+
+		pwm7 {
+			pwm7_pin: pwm7-pin {
+				rockchip,pins =
+					<2 RK_PB0 2 &pcfg_pull_none>;
+			};
+
+			pwm7_pin_pull_down: pwm7-pin-pull-down {
+				rockchip,pins =
+					<2 RK_PB0 2 &pcfg_pull_down>;
+			};
+		};
+
+		pwm8 {
+			pwm8_pin: pwm8-pin {
+				rockchip,pins =
+					<2 RK_PB2 2 &pcfg_pull_none>;
+			};
+
+			pwm8_pin_pull_down: pwm8-pin-pull-down {
+				rockchip,pins =
+					<2 RK_PB2 2 &pcfg_pull_down>;
+			};
+		};
+
+		pwm9 {
+			pwm9_pin: pwm9-pin {
+				rockchip,pins =
+					<2 RK_PB3 2 &pcfg_pull_none>;
+			};
+
+			pwm9_pin_pull_down: pwm9-pin-pull-down {
+				rockchip,pins =
+					<2 RK_PB3 2 &pcfg_pull_down>;
+			};
+		};
+
+		pwm10 {
+			pwm10_pin: pwm10-pin {
+				rockchip,pins =
+					<2 RK_PB4 2 &pcfg_pull_none>;
+			};
+
+			pwm10_pin_pull_down: pwm10-pin-pull-down {
+				rockchip,pins =
+					<2 RK_PB4 2 &pcfg_pull_down>;
+			};
+		};
+
+		pwm11 {
+			pwm11_pin: pwm11-pin {
+				rockchip,pins =
+					<2 RK_PC0 4 &pcfg_pull_none>;
+			};
+
+			pwm11_pin_pull_down: pwm11-pin-pull-down {
+				rockchip,pins =
+					<2 RK_PC0 4 &pcfg_pull_down>;
+			};
+		};
+
+		gmac {
+			rmii_pins: rmii-pins {
+				rockchip,pins =
+					/* mac_txen */
+					<1 RK_PC1 3 &pcfg_pull_none_12ma>,
+					/* mac_txd1 */
+					<1 RK_PC3 3 &pcfg_pull_none_12ma>,
+					/* mac_txd0 */
+					<1 RK_PC2 3 &pcfg_pull_none_12ma>,
+					/* mac_rxd0 */
+					<1 RK_PC4 3 &pcfg_pull_none>,
+					/* mac_rxd1 */
+					<1 RK_PC5 3 &pcfg_pull_none>,
+					/* mac_rxer */
+					<1 RK_PB7 3 &pcfg_pull_none>,
+					/* mac_rxdv */
+					<1 RK_PC0 3 &pcfg_pull_none>,
+					/* mac_mdio */
+					<1 RK_PB6 3 &pcfg_pull_none>,
+					/* mac_mdc */
+					<1 RK_PB5 3 &pcfg_pull_none>;
+			};
+
+			mac_refclk_12ma: mac-refclk-12ma {
+				rockchip,pins =
+					<1 RK_PB4 3 &pcfg_pull_none_12ma>;
+			};
+
+			mac_refclk: mac-refclk {
+				rockchip,pins =
+					<1 RK_PB4 3 &pcfg_pull_none>;
+			};
+		};
+
+		gmac-m1 {
+			rmiim1_pins: rmiim1-pins {
+				rockchip,pins =
+					/* mac_txen */
+					<4 RK_PB7 2 &pcfg_pull_none_12ma>,
+					/* mac_txd1 */
+					<4 RK_PA5 2 &pcfg_pull_none_12ma>,
+					/* mac_txd0 */
+					<4 RK_PA4 2 &pcfg_pull_none_12ma>,
+					/* mac_rxd0 */
+					<4 RK_PA2 2 &pcfg_pull_none>,
+					/* mac_rxd1 */
+					<4 RK_PA3 2 &pcfg_pull_none>,
+					/* mac_rxer */
+					<4 RK_PA0 2 &pcfg_pull_none>,
+					/* mac_rxdv */
+					<4 RK_PA1 2 &pcfg_pull_none>,
+					/* mac_mdio */
+					<4 RK_PB6 2 &pcfg_pull_none>,
+					/* mac_mdc */
+					<4 RK_PB5 2 &pcfg_pull_none>;
+			};
+
+			macm1_refclk_12ma: macm1-refclk-12ma {
+				rockchip,pins =
+					<4 RK_PB4 2 &pcfg_pull_none_12ma>;
+			};
+
+			macm1_refclk: macm1-refclk {
+				rockchip,pins =
+					<4 RK_PB4 2 &pcfg_pull_none>;
+			};
+		};
+
+		rtc {
+			rtc_32k: rtc-32k {
+				rockchip,pins =
+					<0 RK_PC3 1 &pcfg_pull_none>;
+			};
+		};
+
+	};
+};
-- 
2.17.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

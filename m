Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D032347ABF
	for <lists+linux-rockchip@lfdr.de>; Mon, 17 Jun 2019 09:26:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=DL/faf/swXrJ1DwwrpR69J7W0BJMEmN0lBR9SySWOcY=; b=LaQPkUsC8+cLZphtAKGF4hHuOu
	FP61g3q8i9OX9QD045Fj6Gqcece8674E6h7oqDVoS2JWtMEgbZisElxel12QJUOLNyjGkMizuhtHS
	fsdYY1dYumZu3A177d42gt86HFhXHFufp8pvQSVM7S3jAx8R56vaavRNYUeaiQn17WvdWYK34Modq
	3526vnB2aYo0RRi/SFBLpb0WBTLMq6n5SVBG6DCBekHGAvoy6irxutkgQyJzeg34xxk4gdXBdrWmM
	Z0v/bVS+1eHZZ6/NDPnXEEF9JXRpqXSYGN+WF5pLoF659AUu0EMoIqzEBKCCXZYcJGHC+kCioC3cc
	nq4177GA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcm2S-0001DY-Cn; Mon, 17 Jun 2019 07:26:48 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcm2K-0001D1-HR
 for linux-rockchip@lists.infradead.org; Mon, 17 Jun 2019 07:26:43 +0000
Received: by mail-pl1-x642.google.com with SMTP id c14so3730612plo.0
 for <linux-rockchip@lists.infradead.org>; Mon, 17 Jun 2019 00:26:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=6yCuxpCoICWg5CZlLNM/Zzth6iVVZSwxbBcII1dzYp8=;
 b=efaf8ikTq/lpf1OXFMB6ZTM2dbYVufg8FNlnl7pxQiU9NRFlb64Hp6Dv2briu8+BTS
 0nXlqNUBzjgfWCtdQguSLDdvPDyWyP8k3DN/0HJsEHzSA4vs2sYLvrkB7m6bBIGuPNqJ
 X0F5W/0jHpji3UAYMt+XcMJDZRF3WpxcvCrJm9R+D5qTQX0cYMjnPdJAAXCwsSdy9rHR
 5hjwZU58rivzgU7igreXs432+mKrygfwC3XUIAXUx4aDUBtoT8iu5rR4hSXNVItdJkoe
 qo5SfMFtQcVadFiEOrvL1qXihwJnY0TdKmi9iU0l3LWNo0MfQbXB93nQtPgIGBUvoVwQ
 GZRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=6yCuxpCoICWg5CZlLNM/Zzth6iVVZSwxbBcII1dzYp8=;
 b=ClFu6KYYc/vgTQtWVNfNscZPbqorzWaRc8WUX0HdNhoLTwWN5HzBG84DKvrYZy9bT/
 r9IBjAhYYGFz3Q3gSUCsPPIITf+tZEoOG7nZw3RzjJgV4ZcvpArz2k7V5qJaYEGaCcah
 mALVIMgoGykEdH5T2K0aJQqfFHEDGBX5LM8F2CRK3tRE/p5vjcvbeuUsIWj6o0O+HJ4C
 AoDEY8bL7Au7VlJQ+53V9DuyUvUObI7CW7VGOM4vOKw8UwMx8gMvcPol426MRYv9P6Jo
 b/7vFPeNnCM1HU2qRR5qzOqRr8IJtZ4KPWG8StX0hMl4Dk7fFhf4ZWK634F91Yzzd6jq
 Xoeg==
X-Gm-Message-State: APjAAAX0th2cdwDS+/+R2vZo8+DjMVTO7WVrI2qhY9XZ1Ivd5fDrrjzB
 kxf6JNbI7ZFjtKMjq+2Ed0mu6q/n
X-Google-Smtp-Source: APXvYqz8fGUOSCPpVke01H24O9YymR5sHSPPPYbhPmrm192odA6VwGbLPfgSCL468lnqiDpmYWgy9A==
X-Received: by 2002:a17:902:8b88:: with SMTP id
 ay8mr40418470plb.139.1560756399336; 
 Mon, 17 Jun 2019 00:26:39 -0700 (PDT)
Received: from localhost.localdomain (23.105.221.119.16clouds.com.
 [23.105.221.119])
 by smtp.gmail.com with ESMTPSA id m6sm12042007pgr.18.2019.06.17.00.26.36
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 17 Jun 2019 00:26:38 -0700 (PDT)
From: xieqinick@gmail.com
To: kever.yang@rock-chips.com, jagan@amarulasolutions.com, sjg@chromium.org,
 philipp.tomsich@theobroma-systems.com, paul.kocialkowski@bootlin.com
Subject: [PATCH v2] arm64: dts: rockchip: Add support for Khadas
 Edge/Edge-V/Captain boards
Date: Mon, 17 Jun 2019 15:24:37 +0800
Message-Id: <1560756277-5928-1-git-send-email-xieqinick@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1558696796-10745-1-git-send-email-xieqinick@gmail.com>
References: <1558696796-10745-1-git-send-email-xieqinick@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_002640_613866_832DC6B6 
X-CRM114-Status: GOOD (  15.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (xieqinick[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-rockchip@lists.infradead.org, nick@khadas.com,
 linux-amarula@amarulasolutions.com, u-boot@lists.denx.de
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

From: Nick Xie <nick@khadas.com>

Add devicetree support for Khadas Edge/Edge-V/Captain boards.
Khadas Edge is an expandable Rockchip RK3399 board with goldfinger.
Khadas Captain is the carrier board for Khadas Edge.
Khadas Edge-V is a Khadas VIM form factor Rockchip RK3399 board.

Specification
- Rockchip RK3399
- Dual-Channel 2GB/4GB LPDDR4
- SD card slot
- Onboard 16GB/32GB/128GB eMMC
- RTL8211FD 1Gbps
- AP6356S/AP6398S WiFI/BT
- HDMI Out, DP, MIPI DSI/CSI, eDP
- USB 3.0, 2.0
- USB Type C power and data
- GPIO expansion ports
- Full 4 Lane M.2 Socket
- 16MB SPI Flash
- IR
- Programmable MCU

Commit details of rk3399-khadas-edge-*.dts sync from Mainline Linux Rockchip branch:
(Linux support already merged to Rockchip branch, will merge to mainline linux in 5.3)
"arm64: dts: rockchip: Add support for Khadas Edge/Edge-V/Captain boards"
(sha1: c2aacceedc86af87428d998e23a1aca24fd8aa2e)

Signed-off-by: Nick Xie <nick@khadas.com>
---
Changes for v2:
- Sync dts from mainline linux
- Add TPL support
- Update defconfig file
- Drop http from commit message


 arch/arm/dts/Makefile                              |   3 +
 .../arm/dts/rk3399-khadas-edge-captain-u-boot.dtsi |   7 +
 arch/arm/dts/rk3399-khadas-edge-captain.dts        |  27 +
 arch/arm/dts/rk3399-khadas-edge-u-boot.dtsi        |   7 +
 arch/arm/dts/rk3399-khadas-edge-v-u-boot.dtsi      |   7 +
 arch/arm/dts/rk3399-khadas-edge-v.dts              |  27 +
 arch/arm/dts/rk3399-khadas-edge.dts                |  13 +
 arch/arm/dts/rk3399-khadas-edge.dtsi               | 804 +++++++++++++++++++++
 board/rockchip/evb_rk3399/MAINTAINERS              |  18 +
 configs/khadas-edge-captain-rk3399_defconfig       |  67 ++
 configs/khadas-edge-rk3399_defconfig               |  65 ++
 configs/khadas-edge-v-rk3399_defconfig             |  67 ++
 12 files changed, 1112 insertions(+)
 create mode 100644 arch/arm/dts/rk3399-khadas-edge-captain-u-boot.dtsi
 create mode 100644 arch/arm/dts/rk3399-khadas-edge-captain.dts
 create mode 100644 arch/arm/dts/rk3399-khadas-edge-u-boot.dtsi
 create mode 100644 arch/arm/dts/rk3399-khadas-edge-v-u-boot.dtsi
 create mode 100644 arch/arm/dts/rk3399-khadas-edge-v.dts
 create mode 100644 arch/arm/dts/rk3399-khadas-edge.dts
 create mode 100644 arch/arm/dts/rk3399-khadas-edge.dtsi
 create mode 100644 configs/khadas-edge-captain-rk3399_defconfig
 create mode 100644 configs/khadas-edge-rk3399_defconfig
 create mode 100644 configs/khadas-edge-v-rk3399_defconfig

diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 528fb90..824844a 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -106,6 +106,9 @@ dtb-$(CONFIG_ROCKCHIP_RK3399) += \
 	rk3399-ficus.dtb \
 	rk3399-firefly.dtb \
 	rk3399-gru-bob.dtb \
+	rk3399-khadas-edge.dtb \
+	rk3399-khadas-edge-captain.dtb \
+	rk3399-khadas-edge-v.dtb \
 	rk3399-nanopc-t4.dtb \
 	rk3399-nanopi-m4.dtb \
 	rk3399-nanopi-neo4.dtb \
diff --git a/arch/arm/dts/rk3399-khadas-edge-captain-u-boot.dtsi b/arch/arm/dts/rk3399-khadas-edge-captain-u-boot.dtsi
new file mode 100644
index 0000000..569d01e
--- /dev/null
+++ b/arch/arm/dts/rk3399-khadas-edge-captain-u-boot.dtsi
@@ -0,0 +1,7 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2019 Shenzhen Wesion Technology Co., Ltd.
+ * (https://www.khadas.com)
+ */
+
+#include "rk3399-khadas-edge-u-boot.dtsi"
diff --git a/arch/arm/dts/rk3399-khadas-edge-captain.dts b/arch/arm/dts/rk3399-khadas-edge-captain.dts
new file mode 100644
index 0000000..8302e51
--- /dev/null
+++ b/arch/arm/dts/rk3399-khadas-edge-captain.dts
@@ -0,0 +1,27 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2019 Shenzhen Wesion Technology Co., Ltd.
+ * (https://www.khadas.com)
+ */
+
+/dts-v1/;
+#include "rk3399-khadas-edge.dtsi"
+
+/ {
+	model = "Khadas Edge-Captain";
+	compatible = "khadas,edge-captain", "rockchip,rk3399";
+};
+
+&gmac {
+	status = "okay";
+};
+
+&pcie_phy {
+	status = "okay";
+};
+
+&pcie0 {
+	ep-gpios = <&gpio1 RK_PA3 GPIO_ACTIVE_HIGH>;
+	num-lanes = <4>;
+	status = "okay";
+};
diff --git a/arch/arm/dts/rk3399-khadas-edge-u-boot.dtsi b/arch/arm/dts/rk3399-khadas-edge-u-boot.dtsi
new file mode 100644
index 0000000..b4d80c3
--- /dev/null
+++ b/arch/arm/dts/rk3399-khadas-edge-u-boot.dtsi
@@ -0,0 +1,7 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2019 Shenzhen Wesion Technology Co., Ltd.
+ * (https://www.khadas.com)
+ */
+
+#include "rk3399-u-boot.dtsi"
diff --git a/arch/arm/dts/rk3399-khadas-edge-v-u-boot.dtsi b/arch/arm/dts/rk3399-khadas-edge-v-u-boot.dtsi
new file mode 100644
index 0000000..569d01e
--- /dev/null
+++ b/arch/arm/dts/rk3399-khadas-edge-v-u-boot.dtsi
@@ -0,0 +1,7 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2019 Shenzhen Wesion Technology Co., Ltd.
+ * (https://www.khadas.com)
+ */
+
+#include "rk3399-khadas-edge-u-boot.dtsi"
diff --git a/arch/arm/dts/rk3399-khadas-edge-v.dts b/arch/arm/dts/rk3399-khadas-edge-v.dts
new file mode 100644
index 0000000..f5dcb99
--- /dev/null
+++ b/arch/arm/dts/rk3399-khadas-edge-v.dts
@@ -0,0 +1,27 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2019 Shenzhen Wesion Technology Co., Ltd.
+ * (https://www.khadas.com)
+ */
+
+/dts-v1/;
+#include "rk3399-khadas-edge.dtsi"
+
+/ {
+	model = "Khadas Edge-V";
+	compatible = "khadas,edge-v", "rockchip,rk3399";
+};
+
+&gmac {
+	status = "okay";
+};
+
+&pcie_phy {
+	status = "okay";
+};
+
+&pcie0 {
+	ep-gpios = <&gpio1 RK_PA3 GPIO_ACTIVE_HIGH>;
+	num-lanes = <4>;
+	status = "okay";
+};
diff --git a/arch/arm/dts/rk3399-khadas-edge.dts b/arch/arm/dts/rk3399-khadas-edge.dts
new file mode 100644
index 0000000..31616e7
--- /dev/null
+++ b/arch/arm/dts/rk3399-khadas-edge.dts
@@ -0,0 +1,13 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2019 Shenzhen Wesion Technology Co., Ltd.
+ * (https://www.khadas.com)
+ */
+
+/dts-v1/;
+#include "rk3399-khadas-edge.dtsi"
+
+/ {
+	model = "Khadas Edge";
+	compatible = "khadas,edge", "rockchip,rk3399";
+};
diff --git a/arch/arm/dts/rk3399-khadas-edge.dtsi b/arch/arm/dts/rk3399-khadas-edge.dtsi
new file mode 100644
index 0000000..4944d78
--- /dev/null
+++ b/arch/arm/dts/rk3399-khadas-edge.dtsi
@@ -0,0 +1,804 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2019 Shenzhen Wesion Technology Co., Ltd.
+ * (https://www.khadas.com)
+ */
+
+/dts-v1/;
+#include <dt-bindings/input/linux-event-codes.h>
+#include <dt-bindings/pwm/pwm.h>
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
+	sdio_pwrseq: sdio-pwrseq {
+		compatible = "mmc-pwrseq-simple";
+		clocks = <&rk808 1>;
+		clock-names = "ext_clock";
+		pinctrl-names = "default";
+		pinctrl-0 = <&wifi_enable_h>;
+
+		/*
+		 * On the module itself this is one of these (depending
+		 * on the actual card populated):
+		 * - SDIO_RESET_L_WL_REG_ON
+		 * - PDN (power down when low)
+		 */
+		reset-gpios = <&gpio2 RK_PD4 GPIO_ACTIVE_LOW>;
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
+	vcc3v3_pcie: vcc3v3-pcie-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc3v3_pcie";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&vsys_3v3>;
+	};
+
+	/* Actually 3 regulators (host0, 1, 2) controlled by the same gpio */
+	vcc5v0_host: vcc5v0-host-regulator {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio4 RK_PD1 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&vcc5v0_host_en>;
+		regulator-name = "vcc5v0_host";
+		regulator-always-on;
+		vin-supply = <&vsys_5v0>;
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
+		vin-supply = <&vsys_3v3>;
+	};
+
+	vsys: vsys {
+		compatible = "regulator-fixed";
+		regulator-name = "vsys";
+		regulator-always-on;
+		regulator-boot-on;
+	};
+
+	vsys_3v3: vsys-3v3 {
+		compatible = "regulator-fixed";
+		regulator-name = "vsys_3v3";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&vsys>;
+	};
+
+	vsys_5v0: vsys-5v0 {
+		compatible = "regulator-fixed";
+		regulator-name = "vsys_5v0";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		vin-supply = <&vsys>;
+	};
+
+	adc-keys {
+		compatible = "adc-keys";
+		io-channels = <&saradc 1>;
+		io-channel-names = "buttons";
+		keyup-threshold-microvolt = <1800000>;
+		poll-interval = <100>;
+
+		recovery {
+			label = "Recovery";
+			linux,code = <KEY_VENDOR>;
+			press-threshold-microvolt = <18000>;
+		};
+	};
+
+	gpio-keys {
+		compatible = "gpio-keys";
+		autorepeat;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pwrbtn>;
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
+	leds {
+		compatible = "gpio-leds";
+		pinctrl-names = "default";
+		pinctrl-0 = <&sys_led_gpio>, <&user_led_gpio>;
+
+		sys-led {
+			label = "sys_led";
+			linux,default-trigger = "heartbeat";
+			gpios = <&gpio0 RK_PA6 GPIO_ACTIVE_HIGH>;
+		};
+
+		user-led {
+			label = "user_led";
+			default-state = "off";
+			gpios = <&gpio4 RK_PD0 GPIO_ACTIVE_HIGH>;
+		};
+	};
+
+	fan: pwm-fan {
+		compatible = "pwm-fan";
+		cooling-levels = <0 150 200 255>;
+		#cooling-cells = <2>;
+		fan-supply = <&vsys_5v0>;
+		pwms = <&pwm0 0 40000 0>;
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
+&cpu_thermal {
+	trips {
+		cpu_warm: cpu_warm {
+			temperature = <55000>;
+			hysteresis = <2000>;
+			type = "active";
+		};
+
+		cpu_hot: cpu_hot {
+			temperature = <65000>;
+			hysteresis = <2000>;
+			type = "active";
+		};
+	};
+
+	cooling-maps {
+		map2 {
+			trip = <&cpu_warm>;
+			cooling-device = <&fan THERMAL_NO_LIMIT 1>;
+		};
+
+		map3 {
+			trip = <&cpu_hot>;
+			cooling-device = <&fan 2 THERMAL_NO_LIMIT>;
+		};
+	};
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
+	phy-supply = <&vcc_lan>;
+	phy-mode = "rgmii";
+	pinctrl-names = "default";
+	pinctrl-0 = <&rgmii_pins>;
+	snps,reset-gpio = <&gpio3 RK_PB7 GPIO_ACTIVE_LOW>;
+	snps,reset-active-low;
+	snps,reset-delays-us = <0 10000 50000>;
+	tx_delay = <0x28>;
+	rx_delay = <0x11>;
+};
+
+&gpu {
+	mali-supply = <&vdd_gpu>;
+	status = "okay";
+};
+
+&gpu_thermal {
+	trips {
+		gpu_warm: gpu_warm {
+			temperature = <55000>;
+			hysteresis = <2000>;
+			type = "active";
+		};
+
+		gpu_hot: gpu_hot {
+			temperature = <65000>;
+			hysteresis = <2000>;
+			type = "active";
+		};
+	};
+
+	cooling-maps {
+		map1 {
+			trip = <&gpu_warm>;
+			cooling-device = <&fan THERMAL_NO_LIMIT 1>;
+		};
+
+		map2 {
+			trip = <&gpu_hot>;
+			cooling-device = <&fan 2 THERMAL_NO_LIMIT>;
+		};
+	};
+};
+
+&hdmi {
+	ddc-i2c-bus = <&i2c3>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&hdmi_cec>;
+	status = "okay";
+};
+
+&hdmi_sound {
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
+	i2c-scl-rising-time-ns = <168>;
+	i2c-scl-falling-time-ns = <4>;
+	status = "okay";
+
+	rk808: pmic@1b {
+		compatible = "rockchip,rk808";
+		reg = <0x1b>;
+		interrupt-parent = <&gpio1>;
+		interrupts = <RK_PC6 IRQ_TYPE_LEVEL_LOW>;
+		#clock-cells = <1>;
+		clock-output-names = "xin32k", "rk808-clkout2";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pmic_int_l>;
+		rockchip,system-power-controller;
+		wakeup-source;
+
+		vcc1-supply = <&vsys_3v3>;
+		vcc2-supply = <&vsys_3v3>;
+		vcc3-supply = <&vsys_3v3>;
+		vcc4-supply = <&vsys_3v3>;
+		vcc6-supply = <&vsys_3v3>;
+		vcc7-supply = <&vsys_3v3>;
+		vcc8-supply = <&vsys_3v3>;
+		vcc9-supply = <&vsys_3v3>;
+		vcc10-supply = <&vsys_3v3>;
+		vcc11-supply = <&vsys_3v3>;
+		vcc12-supply = <&vsys_3v3>;
+		vddio-supply = <&vcc_1v8>;
+
+		regulators {
+			vdd_center: DCDC_REG1 {
+				regulator-name = "vdd_center";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <750000>;
+				regulator-max-microvolt = <1350000>;
+				regulator-ramp-delay = <6001>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vdd_cpu_l: DCDC_REG2 {
+				regulator-name = "vdd_cpu_l";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <750000>;
+				regulator-max-microvolt = <1350000>;
+				regulator-ramp-delay = <6001>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
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
+			vcc_1v8: DCDC_REG4 {
+				regulator-name = "vcc_1v8";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <1800000>;
+				};
+			};
+
+			vcc1v8_apio2: LDO_REG1 {
+				regulator-name = "vcc1v8_apio2";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc_vldo2: LDO_REG2 {
+				regulator-name = "vcc_vldo2";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <3000000>;
+				regulator-max-microvolt = <3000000>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc1v8_pmupll: LDO_REG3 {
+				regulator-name = "vcc1v8_pmupll";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <1800000>;
+				};
+			};
+
+			vccio_sd: LDO_REG4 {
+				regulator-name = "vccio_sd";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3000000>;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <3000000>;
+				};
+			};
+
+			vcc_vldo5: LDO_REG5 {
+				regulator-name = "vcc_vldo5";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <3000000>;
+				regulator-max-microvolt = <3000000>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc_1v5: LDO_REG6 {
+				regulator-name = "vcc_1v5";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1500000>;
+				regulator-max-microvolt = <1500000>;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <1500000>;
+				};
+			};
+
+			vcc1v8_codec: LDO_REG7 {
+				regulator-name = "vcc1v8_codec";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc_3v0: LDO_REG8 {
+				regulator-name = "vcc_3v0";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <3000000>;
+				regulator-max-microvolt = <3000000>;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <3000000>;
+				};
+			};
+
+			vcc3v3_s3: vcc_lan: SWITCH_REG1 {
+				regulator-name = "vcc3v3_s3";
+				regulator-always-on;
+				regulator-boot-on;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc3v3_s0: SWITCH_REG2 {
+				regulator-name = "vcc3v3_s0";
+				regulator-always-on;
+				regulator-boot-on;
+
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
+		pinctrl-names = "default";
+		pinctrl-0 = <&cpu_b_sleep>;
+		regulator-name = "vdd_cpu_b";
+		regulator-min-microvolt = <712500>;
+		regulator-max-microvolt = <1500000>;
+		regulator-ramp-delay = <1000>;
+		regulator-always-on;
+		regulator-boot-on;
+		vin-supply = <&vsys_3v3>;
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
+		regulator-name = "vdd_gpu";
+		regulator-min-microvolt = <712500>;
+		regulator-max-microvolt = <1500000>;
+		regulator-ramp-delay = <1000>;
+		regulator-always-on;
+		regulator-boot-on;
+		vin-supply = <&vsys_3v3>;
+
+		regulator-state-mem {
+			regulator-off-in-suspend;
+		};
+	};
+};
+
+&i2c8 {
+	clock-frequency = <400000>;
+	i2c-scl-rising-time-ns = <160>;
+	i2c-scl-falling-time-ns = <30>;
+	status = "okay";
+};
+
+&i2s0 {
+	rockchip,playback-channels = <8>;
+	rockchip,capture-channels = <8>;
+	status = "okay";
+};
+
+&i2s1 {
+	rockchip,playback-channels = <2>;
+	rockchip,capture-channels = <2>;
+	status = "okay";
+};
+
+&i2s2 {
+	status = "okay";
+};
+
+&io_domains {
+	bt656-supply = <&vcc1v8_apio2>;
+	audio-supply = <&vcc1v8_codec>;
+	sdmmc-supply = <&vccio_sd>;
+	gpio1830-supply = <&vcc_3v0>;
+	status = "okay";
+};
+
+&pmu_io_domains {
+	pmu1830-supply = <&vcc_1v8>;
+	status = "okay";
+};
+
+&pinctrl {
+	bt {
+		bt_host_wake_l: bt-host-wake-l {
+			rockchip,pins = <0 RK_PA4 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		bt_reg_on_h: bt-reg-on-h {
+			rockchip,pins = <2 RK_PD3 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		bt_wake_l: bt-wake-l {
+			rockchip,pins = <2 RK_PD2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	buttons {
+		pwrbtn: pwrbtn {
+			rockchip,pins = <0 RK_PA5 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+
+	leds {
+		sys_led_gpio: sys_led-gpio {
+			rockchip,pins = <0 RK_PA6 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		user_led_gpio: user_led-gpio {
+			rockchip,pins = <4 RK_PD0 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	pmic {
+		pmic_int_l: pmic-int-l {
+			rockchip,pins = <1 RK_PC6 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+
+		cpu_b_sleep: cpu-b-sleep {
+			rockchip,pins = <1 RK_PB5 RK_FUNC_GPIO &pcfg_pull_down>;
+		};
+
+		gpu_sleep: gpu-sleep {
+			rockchip,pins = <0 RK_PB5 RK_FUNC_GPIO &pcfg_pull_down>;
+		};
+	};
+
+	sdio-pwrseq {
+		wifi_enable_h: wifi-enable-h {
+			rockchip,pins = <2 RK_PD4 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	usb2 {
+		vcc5v0_host_en: vcc5v0-host-en {
+			rockchip,pins = <4 RK_PD1 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	wifi {
+		wifi_host_wake_l: wifi-host-wake-l {
+			rockchip,pins = <0 RK_PA3 RK_FUNC_GPIO &pcfg_pull_none>;
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
+&sdio0 {
+	/* WiFi & BT combo module Ampak AP6356S */
+	bus-width = <4>;
+	cap-sdio-irq;
+	cap-sd-highspeed;
+	keep-power-in-suspend;
+	mmc-pwrseq = <&sdio_pwrseq>;
+	non-removable;
+	pinctrl-names = "default";
+	pinctrl-0 = <&sdio0_bus4 &sdio0_cmd &sdio0_clk>;
+	sd-uhs-sdr104;
+	vqmmc-supply = <&vcc1v8_s3>;
+	vmmc-supply = <&vccio_sd>;
+	status = "okay";
+
+	brcmf: wifi@1 {
+		compatible = "brcm,bcm4329-fmac";
+		interrupt-parent = <&gpio0>;
+		interrupts = <RK_PA3 GPIO_ACTIVE_HIGH>;
+		interrupt-names = "host-wake";
+		brcm,drive-strength = <5>;
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
+	disable-wp;
+	max-frequency = <150000000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&sdmmc_clk &sdmmc_cmd &sdmmc_bus4>;
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
+
+	u2phy0_otg: otg-port {
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
+	pinctrl-0 = <&uart0_xfer &uart0_rts &uart0_cts>;
+	status = "okay";
+
+	bluetooth {
+		compatible = "brcm,bcm43438-bt";
+		clocks = <&rk808 1>;
+		clock-names = "lpo";
+		device-wakeup-gpios = <&gpio2 RK_PD2 GPIO_ACTIVE_HIGH>;
+		host-wakeup-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_HIGH>;
+		shutdown-gpios = <&gpio2 RK_PD3 GPIO_ACTIVE_HIGH>;
+		max-speed = <4000000>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&bt_reg_on_h &bt_host_wake_l &bt_wake_l>;
+		vbat-supply = <&vsys_3v3>;
+		vddio-supply = <&vcc_1v8>;
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
index 3308b35..d9711ab 100644
--- a/board/rockchip/evb_rk3399/MAINTAINERS
+++ b/board/rockchip/evb_rk3399/MAINTAINERS
@@ -6,6 +6,24 @@ F:      include/configs/evb_rk3399.h
 F:      configs/evb-rk3399_defconfig
 F:      configs/firefly-rk3399_defconfig
 
+KHADAS-EDGE
+M:	Nick Xie <nick@khadas.com>
+S:	Maintained
+F:	configs/khadas-edge-rk3399_defconfig
+F:	arch/arm/dts/rk3399-khadas-edge-u-boot.dtsi
+
+KHADAS-EDGE-CAPTAIN
+M:	Nick Xie <nick@khadas.com>
+S:	Maintained
+F:	configs/khadas-edge-captain-rk3399_defconfig
+F:	arch/arm/dts/rk3399-khadas-edge-captain-u-boot.dtsi
+
+KHADAS-EDGE-V
+M:	Nick Xie <nick@khadas.com>
+S:	Maintained
+F:	configs/khadas-edge-v-rk3399_defconfig
+F:	arch/arm/dts/rk3399-khadas-edge-v-u-boot.dtsi
+
 NANOPC-T4
 M:	Jagan Teki <jagan@amarulasolutions.com>
 S:	Maintained
diff --git a/configs/khadas-edge-captain-rk3399_defconfig b/configs/khadas-edge-captain-rk3399_defconfig
new file mode 100644
index 0000000..306b1b9
--- /dev/null
+++ b/configs/khadas-edge-captain-rk3399_defconfig
@@ -0,0 +1,67 @@
+CONFIG_ARM=y
+CONFIG_ARCH_ROCKCHIP=y
+CONFIG_SYS_TEXT_BASE=0x00200000
+CONFIG_SPL_LIBCOMMON_SUPPORT=y
+CONFIG_SPL_LIBGENERIC_SUPPORT=y
+CONFIG_SYS_MALLOC_F_LEN=0x4000
+CONFIG_ROCKCHIP_RK3399=y
+CONFIG_ROCKCHIP_SPL_RESERVE_IRAM=0x50000
+CONFIG_NR_DRAM_BANKS=1
+CONFIG_SPL_STACK_R_ADDR=0x80000
+CONFIG_DEBUG_UART_BASE=0xFF1A0000
+CONFIG_DEBUG_UART_CLOCK=24000000
+CONFIG_DEBUG_UART=y
+CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-khadas-edge-captain.dtb"
+# CONFIG_DISPLAY_CPUINFO is not set
+CONFIG_DISPLAY_BOARDINFO_LATE=y
+CONFIG_SPL_STACK_R=y
+CONFIG_SPL_STACK_R_MALLOC_SIMPLE_LEN=0x10000
+CONFIG_TPL=y
+CONFIG_SYS_PROMPT="kedge# "
+CONFIG_CMD_BOOTZ=y
+CONFIG_CMD_GPIO=y
+CONFIG_CMD_GPT=y
+CONFIG_CMD_I2C=y
+CONFIG_CMD_MMC=y
+CONFIG_CMD_SF=y
+CONFIG_CMD_USB=y
+# CONFIG_CMD_SETEXPR is not set
+CONFIG_CMD_TIME=y
+CONFIG_CMD_UUID=y
+CONFIG_CMD_FS_UUID=y
+CONFIG_SPL_OF_CONTROL=y
+CONFIG_DEFAULT_DEVICE_TREE="rk3399-khadas-edge-captain"
+CONFIG_OF_SPL_REMOVE_PROPS="pinctrl-0 pinctrl-names clock-names interrupt-parent assigned-clocks assigned-clock-rates assigned-clock-parents"
+CONFIG_ENV_IS_IN_MMC=y
+CONFIG_NET_RANDOM_ETHADDR=y
+CONFIG_ROCKCHIP_GPIO=y
+CONFIG_SYS_I2C_ROCKCHIP=y
+CONFIG_MMC_DW=y
+CONFIG_MMC_DW_ROCKCHIP=y
+CONFIG_MMC_SDHCI=y
+CONFIG_MMC_SDHCI_ROCKCHIP=y
+CONFIG_PHY_REALTEK=y
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
+CONFIG_SPL_TINY_MEMSET=y
+CONFIG_ERRNO_STR=y
diff --git a/configs/khadas-edge-rk3399_defconfig b/configs/khadas-edge-rk3399_defconfig
new file mode 100644
index 0000000..0e33911
--- /dev/null
+++ b/configs/khadas-edge-rk3399_defconfig
@@ -0,0 +1,65 @@
+CONFIG_ARM=y
+CONFIG_ARCH_ROCKCHIP=y
+CONFIG_SYS_TEXT_BASE=0x00200000
+CONFIG_SPL_LIBCOMMON_SUPPORT=y
+CONFIG_SPL_LIBGENERIC_SUPPORT=y
+CONFIG_SYS_MALLOC_F_LEN=0x4000
+CONFIG_ROCKCHIP_RK3399=y
+CONFIG_ROCKCHIP_SPL_RESERVE_IRAM=0x50000
+CONFIG_NR_DRAM_BANKS=1
+CONFIG_SPL_STACK_R_ADDR=0x80000
+CONFIG_DEBUG_UART_BASE=0xFF1A0000
+CONFIG_DEBUG_UART_CLOCK=24000000
+CONFIG_DEBUG_UART=y
+CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-khadas-edge.dtb"
+# CONFIG_DISPLAY_CPUINFO is not set
+CONFIG_DISPLAY_BOARDINFO_LATE=y
+CONFIG_SPL_STACK_R=y
+CONFIG_SPL_STACK_R_MALLOC_SIMPLE_LEN=0x10000
+CONFIG_TPL=y
+CONFIG_SYS_PROMPT="kedge# "
+CONFIG_CMD_BOOTZ=y
+CONFIG_CMD_GPIO=y
+CONFIG_CMD_GPT=y
+CONFIG_CMD_I2C=y
+CONFIG_CMD_MMC=y
+CONFIG_CMD_SF=y
+CONFIG_CMD_USB=y
+# CONFIG_CMD_SETEXPR is not set
+CONFIG_CMD_TIME=y
+CONFIG_CMD_UUID=y
+CONFIG_CMD_FS_UUID=y
+CONFIG_SPL_OF_CONTROL=y
+CONFIG_DEFAULT_DEVICE_TREE="rk3399-khadas-edge"
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
+CONFIG_SPL_TINY_MEMSET=y
+CONFIG_ERRNO_STR=y
diff --git a/configs/khadas-edge-v-rk3399_defconfig b/configs/khadas-edge-v-rk3399_defconfig
new file mode 100644
index 0000000..59bf5ca
--- /dev/null
+++ b/configs/khadas-edge-v-rk3399_defconfig
@@ -0,0 +1,67 @@
+CONFIG_ARM=y
+CONFIG_ARCH_ROCKCHIP=y
+CONFIG_SYS_TEXT_BASE=0x00200000
+CONFIG_SPL_LIBCOMMON_SUPPORT=y
+CONFIG_SPL_LIBGENERIC_SUPPORT=y
+CONFIG_SYS_MALLOC_F_LEN=0x4000
+CONFIG_ROCKCHIP_RK3399=y
+CONFIG_ROCKCHIP_SPL_RESERVE_IRAM=0x50000
+CONFIG_NR_DRAM_BANKS=1
+CONFIG_SPL_STACK_R_ADDR=0x80000
+CONFIG_DEBUG_UART_BASE=0xFF1A0000
+CONFIG_DEBUG_UART_CLOCK=24000000
+CONFIG_DEBUG_UART=y
+CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-khadas-edge-v.dtb"
+# CONFIG_DISPLAY_CPUINFO is not set
+CONFIG_DISPLAY_BOARDINFO_LATE=y
+CONFIG_SPL_STACK_R=y
+CONFIG_SPL_STACK_R_MALLOC_SIMPLE_LEN=0x10000
+CONFIG_TPL=y
+CONFIG_SYS_PROMPT="kedge# "
+CONFIG_CMD_BOOTZ=y
+CONFIG_CMD_GPIO=y
+CONFIG_CMD_GPT=y
+CONFIG_CMD_I2C=y
+CONFIG_CMD_MMC=y
+CONFIG_CMD_SF=y
+CONFIG_CMD_USB=y
+# CONFIG_CMD_SETEXPR is not set
+CONFIG_CMD_TIME=y
+CONFIG_CMD_UUID=y
+CONFIG_CMD_FS_UUID=y
+CONFIG_SPL_OF_CONTROL=y
+CONFIG_DEFAULT_DEVICE_TREE="rk3399-khadas-edge-v"
+CONFIG_OF_SPL_REMOVE_PROPS="pinctrl-0 pinctrl-names clock-names interrupt-parent assigned-clocks assigned-clock-rates assigned-clock-parents"
+CONFIG_ENV_IS_IN_MMC=y
+CONFIG_NET_RANDOM_ETHADDR=y
+CONFIG_ROCKCHIP_GPIO=y
+CONFIG_SYS_I2C_ROCKCHIP=y
+CONFIG_MMC_DW=y
+CONFIG_MMC_DW_ROCKCHIP=y
+CONFIG_MMC_SDHCI=y
+CONFIG_MMC_SDHCI_ROCKCHIP=y
+CONFIG_PHY_REALTEK=y
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
+CONFIG_SPL_TINY_MEMSET=y
+CONFIG_ERRNO_STR=y
-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

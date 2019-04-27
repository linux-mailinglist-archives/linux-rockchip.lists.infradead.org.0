Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C575B347
	for <lists+linux-rockchip@lfdr.de>; Sat, 27 Apr 2019 13:49:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/H1mnIXFaOp8lLNHaS4TMokL7Poq2FYd1ZWYorC9SN0=; b=m53/PwP9JPZgj5
	XAMGbS9g+nJUgRZKZ/sFOU/SqR0eltS3a0uU5oFTP+uGH/gse9sdZ7T2KS/6k+mjV0wSgiCy/YPaK
	/kMtojmq2ZUEtG4af62RjRwE8t7klzFAktcexgchW3sxLxadEyZ0ShwjLq+kvsPSjKYUSiL9ZrCmZ
	CMl7twSGGE4u/HQYMeI8EYW79R4/X3Z4s91RutM5VgUWNcG++0p4ymWK30v1hml4dmZlsqfh5qMB6
	/eR46T8k/8S8DSpCnR9lkcA5dXfteMeJlZvrqKf0DUHU/bw4v8Z14M+smXAi6nhrmbaJUwPlRn6Ny
	l9OYf1SUrKBLfrtF/1Lw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKLpy-0001Ia-23; Sat, 27 Apr 2019 11:49:46 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKLpu-0001HB-PH
 for linux-rockchip@lists.infradead.org; Sat, 27 Apr 2019 11:49:44 +0000
Received: by mail-pl1-x643.google.com with SMTP id w20so2194262plq.3
 for <linux-rockchip@lists.infradead.org>; Sat, 27 Apr 2019 04:49:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ZXFAljlEy7uZEEw89sZcsNEtB/E342lPRBYoTVsd/Qo=;
 b=i+6c97wqZXQU6C/+UpnrMYTmMk3BnoyMGvUEBpf2M4vSGbkTAJbDUPPOvk/oncGCvj
 kT8h6GHClDGRMfELom44bSEpkEwX9B8TVk+Ne4LKTMVWdW+xIYKL024JNh6saJ1viUKL
 dn5sjhTWcqlN8QHc+lv4VN81bYon1say4Y3+A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ZXFAljlEy7uZEEw89sZcsNEtB/E342lPRBYoTVsd/Qo=;
 b=hXjOMjgFC6aFyaTFY5QTqAulAmKhbjD+tAiGVk5gfS5q4FzlVcWqvBFAS+xmktblcP
 NFT5EY0oO5SAk7tbiKiYWZiGlfVC/N7j8UTpn6LULQqpdhDlU6+iBkAwa8EnveHw9ykw
 MAX/LnAW2WKskOzgQNOmkPxAB/iYAKHHmAd4mKjQdggVHBC3g8I8ukDIe1bWxPm7Tka+
 KGEwRGlVUWKBVK5TE0NRebbruWncUNRhCA+tMZ0Msxx6NfWJaTm6RQ+7HPqOHdZaQhhY
 SGhykjz818M3mxWA6u5GnB4dfI8B4Np1a/IDZGeppIhTIiI6hH2dRxqqXxTkIzI9jXDS
 zIpA==
X-Gm-Message-State: APjAAAWxTI+iNAVU9zTjTYp/iR47Q/1nz1kYpovUh3NUejtA4LV5noPp
 Jygrqb0xDvM9bEkrK9FXtwXtkQ==
X-Google-Smtp-Source: APXvYqw+/TiVPRDrYD+njqr/IEyR6+5hT5O8o2ZTmjVN3iD+XQZgr6OjfJpnvCUHpx3l+TBDb8hpCg==
X-Received: by 2002:a17:902:b190:: with SMTP id
 s16mr12944402plr.83.1556365782183; 
 Sat, 27 Apr 2019 04:49:42 -0700 (PDT)
Received: from localhost.localdomain ([115.97.185.144])
 by smtp.gmail.com with ESMTPSA id y3sm2368768pfe.9.2019.04.27.04.49.38
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 27 Apr 2019 04:49:41 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, Akash Gajjar <akash@openedev.com>,
 Tom Rini <trini@konsulko.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v6 08/13] rockchip: rk3399: Add Nanopi M4 board support
Date: Sat, 27 Apr 2019 17:18:51 +0530
Message-Id: <20190427114852.7608-9-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190427114852.7608-1-jagan@amarulasolutions.com>
References: <20190427114852.7608-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190427_044942_822461_E9E3DF74 
X-CRM114-Status: GOOD (  13.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
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

Add initial support for Nanopi M4 board.

Specification
- Rockchip RK3399
- Dual-Channel 4GB LPDDR3-1866
- SD card slot
- eMMC socket
- RTL8211E 1Gbps
- AP6356S WiFI/BT
- HDMI In/Out, DP, MIPI DSI/CSI
- USB 3.0 x4
- USB Type C power and data
- GPIO1, GPIO2 expansion ports
- DC5V/3A

Commit details of rk3399-nanopi-m4.dts sync from Linux 5.1-rc2:
"arm64: dts: rockchip: Refine nanopi4 differences"
(sha1: c62ffaf5026d0b7633e62b2cea8450b5543c349a)

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Reviewed-by: Kever Yang <kever.yang@rock-chips.com>
Reviewed-by: Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
---
 arch/arm/dts/Makefile                     |  1 +
 arch/arm/dts/rk3399-nanopi-m4-u-boot.dtsi |  7 +++
 arch/arm/dts/rk3399-nanopi-m4.dts         | 66 +++++++++++++++++++++++
 arch/arm/dts/rk3399-nanopi4-u-boot.dtsi   |  2 +
 board/rockchip/evb_rk3399/MAINTAINERS     |  6 +++
 configs/nanopi-m4-rk3399_defconfig        | 58 ++++++++++++++++++++
 6 files changed, 140 insertions(+)
 create mode 100644 arch/arm/dts/rk3399-nanopi-m4-u-boot.dtsi
 create mode 100644 arch/arm/dts/rk3399-nanopi-m4.dts
 create mode 100644 configs/nanopi-m4-rk3399_defconfig

diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 6d55b0caf8..d2ac26b556 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -87,6 +87,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += \
 	rk3399-evb.dtb \
 	rk3399-firefly.dtb \
 	rk3399-gru-bob.dtb \
+	rk3399-nanopi-m4.dtb \
 	rk3399-orangepi.dtb \
 	rk3399-puma-ddr1333.dtb \
 	rk3399-puma-ddr1600.dtb \
diff --git a/arch/arm/dts/rk3399-nanopi-m4-u-boot.dtsi b/arch/arm/dts/rk3399-nanopi-m4-u-boot.dtsi
new file mode 100644
index 0000000000..17201bcf41
--- /dev/null
+++ b/arch/arm/dts/rk3399-nanopi-m4-u-boot.dtsi
@@ -0,0 +1,7 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright (C) 2019 Jagan Teki <jagan@amarulasolutions.com>
+ */
+
+#include "rk3399-nanopi4-u-boot.dtsi"
+#include "rk3399-sdram-lpddr3-samsung-4GB-1866.dtsi"
diff --git a/arch/arm/dts/rk3399-nanopi-m4.dts b/arch/arm/dts/rk3399-nanopi-m4.dts
new file mode 100644
index 0000000000..60358ab8c7
--- /dev/null
+++ b/arch/arm/dts/rk3399-nanopi-m4.dts
@@ -0,0 +1,66 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * FriendlyElec NanoPi M4 board device tree source
+ *
+ * Copyright (c) 2018 FriendlyElec Computer Tech. Co., Ltd.
+ * (http://www.friendlyarm.com)
+ *
+ * Copyright (c) 2018 Collabora Ltd.
+ * Copyright (c) 2019 Arm Ltd.
+ */
+
+/dts-v1/;
+#include "rk3399-nanopi4.dtsi"
+
+/ {
+	model = "FriendlyElec NanoPi M4";
+	compatible = "friendlyarm,nanopi-m4", "rockchip,rk3399";
+
+	vdd_5v: vdd-5v {
+		compatible = "regulator-fixed";
+		regulator-name = "vdd_5v";
+		regulator-always-on;
+		regulator-boot-on;
+	};
+
+	vcc5v0_core: vcc5v0-core {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc5v0_core";
+		regulator-always-on;
+		regulator-boot-on;
+		vin-supply = <&vdd_5v>;
+	};
+
+	vcc5v0_usb1: vcc5v0-usb1 {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc5v0_usb1";
+		regulator-always-on;
+		regulator-boot-on;
+		vin-supply = <&vcc5v0_sys>;
+	};
+
+	vcc5v0_usb2: vcc5v0-usb2 {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc5v0_usb2";
+		regulator-always-on;
+		regulator-boot-on;
+		vin-supply = <&vcc5v0_sys>;
+	};
+};
+
+&vcc3v3_sys {
+	vin-supply = <&vcc5v0_core>;
+};
+
+&u2phy0_host {
+	phy-supply = <&vcc5v0_usb1>;
+};
+
+&u2phy1_host {
+	phy-supply = <&vcc5v0_usb2>;
+};
+
+&vbus_typec {
+	regulator-always-on;
+	vin-supply = <&vdd_5v>;
+};
diff --git a/arch/arm/dts/rk3399-nanopi4-u-boot.dtsi b/arch/arm/dts/rk3399-nanopi4-u-boot.dtsi
index 20db99c0b8..05708b6f55 100644
--- a/arch/arm/dts/rk3399-nanopi4-u-boot.dtsi
+++ b/arch/arm/dts/rk3399-nanopi4-u-boot.dtsi
@@ -3,6 +3,8 @@
  * Copyright (C) 2019 Jagan Teki <jagan@amarulasolutions.com>
  */
 
+#include "rk3399-u-boot.dtsi"
+
 &sdmmc {
 	pinctrl-names = "default";
 	pinctrl-0 = <&sdmmc_bus4 &sdmmc_clk &sdmmc_cmd &sdmmc_cd>;
diff --git a/board/rockchip/evb_rk3399/MAINTAINERS b/board/rockchip/evb_rk3399/MAINTAINERS
index 07ee8ce92c..ae43805a6a 100644
--- a/board/rockchip/evb_rk3399/MAINTAINERS
+++ b/board/rockchip/evb_rk3399/MAINTAINERS
@@ -6,6 +6,12 @@ F:      include/configs/evb_rk3399.h
 F:      configs/evb-rk3399_defconfig
 F:      configs/firefly-rk3399_defconfig
 
+NANOPI-M4
+M:	Jagan Teki <jagan@amarulasolutions.com>
+S:	Maintained
+F:	configs/nanopi-m4-rk3399_defconfig
+F:	arch/arm/dts/rk3399-nanopi-m4-u-boot.dtsi
+
 ORANGEPI-RK3399
 M:	Jagan Teki <jagan@amarulasolutions.com>
 S:	Maintained
diff --git a/configs/nanopi-m4-rk3399_defconfig b/configs/nanopi-m4-rk3399_defconfig
new file mode 100644
index 0000000000..be36a28315
--- /dev/null
+++ b/configs/nanopi-m4-rk3399_defconfig
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
+CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-nanopi-m4.dtb"
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
+CONFIG_DEFAULT_DEVICE_TREE="rk3399-nanopi-m4"
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

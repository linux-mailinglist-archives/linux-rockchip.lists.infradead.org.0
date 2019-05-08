Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B40D17075
	for <lists+linux-rockchip@lfdr.de>; Wed,  8 May 2019 07:42:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J+6SOmWEsw2bWZv6xpQCohMGDQbYuXo5MByJQbr9DO4=; b=IfBk7i3zGL2X3k
	dVnQTsoo9x9HpBLCwIxOdjucudr2Q1VzabZYTZCmxPL9nd2k7rUFXd2V6YN1+i8Aw35VKoGpSI4lB
	HxXujPBhbiK7sOutxf+o0Ki5JHnDq5pjU5RbVtnmQVktNKinZXvx5nmRYRBcU/GN5YnA2Oc06in+R
	6kCci3GlO54Cd/jLNwBQiujuSWeeZhHgDYMQGLxHJukCjVQeHLWtvqciYQktxnuuzFoLlq8rUiOsu
	iNMFAZRS9ZbqSS/qiKzyLn2B4kGs34GZQUavibescGdPfjjuaBPBfLnccNtEmSR82VoQ6FfHFhqYq
	b3weqy+2OHd82cD5ax1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOFLj-0003tz-Kw; Wed, 08 May 2019 05:42:39 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOFLg-0003s9-CF
 for linux-rockchip@lists.infradead.org; Wed, 08 May 2019 05:42:37 +0000
Received: by mail-pg1-x544.google.com with SMTP id z3so5813949pgp.8
 for <linux-rockchip@lists.infradead.org>; Tue, 07 May 2019 22:42:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=+N0fh0j0h9D/QYORioBN2Ib54aKRo06qd/IU+Y6CVxs=;
 b=hAP87HFPNPeViBpAFH4iuptEFF8yshkldtqT4zPNtP20EgbE+L+71QNBdAHTxE0LYe
 yNxQ65bW8lBXcBFzbaCiAs0bEcDSVLeVYyM66d5C06UkUep3dtFT4tSBtF2udciTpRCk
 dIyOO98PMTe5x1S4YUHmbLQvZlWO1ck0GSjQ0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+N0fh0j0h9D/QYORioBN2Ib54aKRo06qd/IU+Y6CVxs=;
 b=DopkozTXCC97hzIku2iIUzhTodQMgPux03HrKQrWjagCDDyb0UqiGiM8QKPdqf04Vv
 bl3zmEa89SFmHQSK+tEnHP9v+i+vEzLn0InbqmpN3eG03olThaB9pJN5g6mF75tTgy+e
 xbcpAsxiRyko00b1zsaGjQ+K1zZZR8eUVcrZ1WYvU7+tS5aMv0F/EfZd/RN2QV0PP0x9
 4Jgzzv6AEPPsEEEha63VyCNplLIFwUVKvQ5Xw20B3prlvp2ZAZ63v0OGo0i4ot+hZMMh
 FtVl5oHQClnY3zn5nzE3U/W/i1+cOGHsJkBVhTz3kpl2J4lz09zmRCSCud8wfqaiIkJg
 E1Ww==
X-Gm-Message-State: APjAAAV2M6wXuEAeIJbD2fMEPLKwjXKyOWsi7QY93WOnXFgbxSpoOFVr
 nIQS80LnnoKvGArVALi/QD+RlA==
X-Google-Smtp-Source: APXvYqyaZQvgZeAKVu0/0gS70n7ulvoxfE36BMxG7F5ODMnXZB4R2b15ZbN5PD03qaMnKY+pzN1qtQ==
X-Received: by 2002:a65:4341:: with SMTP id k1mr38634142pgq.88.1557294155703; 
 Tue, 07 May 2019 22:42:35 -0700 (PDT)
Received: from localhost.localdomain ([115.97.185.144])
 by smtp.gmail.com with ESMTPSA id p67sm33864394pfi.123.2019.05.07.22.42.31
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 07 May 2019 22:42:35 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, Akash Gajjar <akash@openedev.com>
Subject: [RESEND PATCH v7 08/11] rockchip: rk3399: Add Nanopi NEO4 board
 support
Date: Wed,  8 May 2019 11:11:48 +0530
Message-Id: <20190508054151.21762-9-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190508054151.21762-1-jagan@amarulasolutions.com>
References: <20190508054151.21762-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_224236_418715_9BDDB8B4 
X-CRM114-Status: GOOD (  13.13  )
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

Add initial support for Nanopi NEO4 board.

Specification
- Rockchip RK3399
- 1GB DDR3-1866
- SD card slot
- eMMC Socket
- RTL8211E 1Gbps
- AP6212 WiFI/BT
- HDMI In/Out, DP, MIPI CSI
- USB 3.0, 2.0
- USB Type C power and data
- GPIO expansion ports
- DC 5V/3A

Commit details of rk3399-nanopi-neo4.dts sync from Linux:
"arm64: dts: rockchip: Add Nanopi NEO4 initial support"
(sha1: 092470b537f19788d957aed12d835a179b606014)

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Reviewed-by: Kever Yang <kever.yang@rock-chips.com>
---
 arch/arm/dts/Makefile                       |  1 +
 arch/arm/dts/rk3399-nanopi-neo4-u-boot.dtsi |  6 +++
 arch/arm/dts/rk3399-nanopi-neo4.dts         | 50 +++++++++++++++++
 board/rockchip/evb_rk3399/MAINTAINERS       |  6 +++
 configs/nanopi-neo4-rk3399_defconfig        | 59 +++++++++++++++++++++
 5 files changed, 122 insertions(+)
 create mode 100644 arch/arm/dts/rk3399-nanopi-neo4-u-boot.dtsi
 create mode 100644 arch/arm/dts/rk3399-nanopi-neo4.dts
 create mode 100644 configs/nanopi-neo4-rk3399_defconfig

diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index adaca524c3..529c506b4d 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -108,6 +108,7 @@ dtb-$(CONFIG_ROCKCHIP_RK3399) += \
 	rk3399-gru-bob.dtb \
 	rk3399-nanopc-t4.dtb \
 	rk3399-nanopi-m4.dtb \
+	rk3399-nanopi-neo4.dtb \
 	rk3399-orangepi.dtb \
 	rk3399-puma-ddr1333.dtb \
 	rk3399-puma-ddr1600.dtb \
diff --git a/arch/arm/dts/rk3399-nanopi-neo4-u-boot.dtsi b/arch/arm/dts/rk3399-nanopi-neo4-u-boot.dtsi
new file mode 100644
index 0000000000..7d22528f49
--- /dev/null
+++ b/arch/arm/dts/rk3399-nanopi-neo4-u-boot.dtsi
@@ -0,0 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright (C) 2019 Jagan Teki <jagan@amarulasolutions.com>
+ */
+
+#include "rk3399-nanopi4-u-boot.dtsi"
diff --git a/arch/arm/dts/rk3399-nanopi-neo4.dts b/arch/arm/dts/rk3399-nanopi-neo4.dts
new file mode 100644
index 0000000000..195410b089
--- /dev/null
+++ b/arch/arm/dts/rk3399-nanopi-neo4.dts
@@ -0,0 +1,50 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (C) 2019 Amarula Solutions B.V.
+ * Author: Jagan Teki <jagan@amarulasolutions.com>
+ */
+
+/dts-v1/;
+
+#include "rk3399-nanopi4.dtsi"
+
+/ {
+	model = "FriendlyARM NanoPi NEO4";
+	compatible = "friendlyarm,nanopi-neo4", "rockchip,rk3399";
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
+&vbus_typec {
+	regulator-always-on;
+	vin-supply = <&vdd_5v>;
+};
diff --git a/board/rockchip/evb_rk3399/MAINTAINERS b/board/rockchip/evb_rk3399/MAINTAINERS
index f55c92f80c..1f51f65160 100644
--- a/board/rockchip/evb_rk3399/MAINTAINERS
+++ b/board/rockchip/evb_rk3399/MAINTAINERS
@@ -18,6 +18,12 @@ S:	Maintained
 F:	configs/nanopi-m4-rk3399_defconfig
 F:	arch/arm/dts/rk3399-nanopi-m4-u-boot.dtsi
 
+NANOPI-NEO4
+M:	Jagan Teki <jagan@amarulasolutions.com>
+S:	Maintained
+F:	configs/nanopi-neo4-rk3399_defconfig
+F:	arch/arm/dts/rk3399-nanopi-neo4-u-boot.dtsi
+
 ORANGEPI-RK3399
 M:	Jagan Teki <jagan@amarulasolutions.com>
 S:	Maintained
diff --git a/configs/nanopi-neo4-rk3399_defconfig b/configs/nanopi-neo4-rk3399_defconfig
new file mode 100644
index 0000000000..188656a2b4
--- /dev/null
+++ b/configs/nanopi-neo4-rk3399_defconfig
@@ -0,0 +1,59 @@
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
+CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-nanopi-neo4.dtb"
+# CONFIG_DISPLAY_CPUINFO is not set
+CONFIG_DISPLAY_BOARDINFO_LATE=y
+CONFIG_SPL_TEXT_BASE=0xff8c2000
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
+CONFIG_DEFAULT_DEVICE_TREE="rk3399-nanopi-neo4"
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

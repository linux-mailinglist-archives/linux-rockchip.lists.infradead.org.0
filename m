Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 738411FF8E9
	for <lists+linux-rockchip@lfdr.de>; Thu, 18 Jun 2020 18:12:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MtZlZjMRnfxPQXBuJvSsmTvG2BOQh+BeguaYusQBYbQ=; b=CETx1Vnwe9D+BO
	H4tzMW4v7lUF8C+1rkGjzqZAoyR8duvTQuc80sOiqkFEE77sg2bRxvebX7wKIhbAziA3VqVYb/kev
	vAYilHXNYR6+YwCGMoL18JT8/7SwwCQTJdAythJdrUjrX6asNoKcbqGeE8s/f8EErdkLNBnRFu1Ju
	o7KRbXb3hxW0Qms6qywvLjjr/0S4F6pYXndazX2qpndH8uw9m5aMeH1vix3m7FeFHi6UsIYN/F5RU
	4AfxFK4IP6cqIQsuqxR/jpdIeuEQM4XUxxgeqGYGLsKUxqSl1ICgJnO3xBF5h5os31TZPiOi9w96O
	XeMPHRkiZrVi7TYET+Mw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlx9n-0003y2-GR; Thu, 18 Jun 2020 16:12:51 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlx9i-0003uo-PL
 for linux-rockchip@lists.infradead.org; Thu, 18 Jun 2020 16:12:48 +0000
Received: by mail-pf1-x444.google.com with SMTP id b5so2985992pfp.9
 for <linux-rockchip@lists.infradead.org>; Thu, 18 Jun 2020 09:12:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=c7OjGuowxdKRSjFUvjQJQuutrCgJBX4GU3wZ7QboOFo=;
 b=GAoiEWf+0uhEIHYxtzkDRu11KwTCRCzM+byY648EahqTgn0dZuHwGBf5W/Nr2Piqkx
 MX4shJUHTc1pKTcvXjoWIUMCSFWVt+ArKyxMe23de1xC+u3c06ybLRAU7dT8DvZGaknj
 dbLrFc2KKJaqQVl1+vB7uwd26/PR8jYFqXMNs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=c7OjGuowxdKRSjFUvjQJQuutrCgJBX4GU3wZ7QboOFo=;
 b=snC2MD9W/f6rnT6N1EbxT9790SrE9Rm4YfUVXAcWs2C5/5qy9+v7il5ocPnNubObkG
 eTcrWoRNJgrjThQcZm6VTjviU7ZrQbJGwEfLCHXYT7rQ7YKf8JlalH9yClUkb1WL4rvU
 LHuW7HCioeuJzYjM7RaQEmAgKfxHYhfl6HIgkDO+LIL42kHMea+cxXnzptntdW67VyWW
 r5nRxqEdaiLP9aKv8kmw7t3eoJasZsyv3DE/RaskoNc+CFRKl9xPcmeCoqVwM0ccK1rt
 jtdENKM4uoAbzkc2k5Rh67kWXH5Bg0oeYdw4IXKonYRgAZDwerMERx4W5TzN1gdpMAGS
 DWdQ==
X-Gm-Message-State: AOAM533zJZe0ET34eJuZ+VUK/wGxPaueG/BpEufdLAJ6t8LQbWNOQHVP
 5+JdXj3H1g2Kn7WsJBGYsEGDFw==
X-Google-Smtp-Source: ABdhPJwHJmncQVes3AQwP+88zwXEAXWL0D/SvdYCO/imq1l1gNli4K3iD81it2gjiIf+LQ93o8wD4Q==
X-Received: by 2002:a65:6703:: with SMTP id u3mr3823177pgf.179.1592496766018; 
 Thu, 18 Jun 2020 09:12:46 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:b0c7:f192:869b:df87])
 by smtp.gmail.com with ESMTPSA id b3sm3247252pft.127.2020.06.18.09.12.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Jun 2020 09:12:45 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Simon Glass <sjg@chromium.org>
Subject: [PATCH 3/3] ARM: dts: rockchip: Add Radxa Rock Pi N8 initial support
Date: Thu, 18 Jun 2020 21:42:20 +0530
Message-Id: <20200618161220.219452-4-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618161220.219452-1-jagan@amarulasolutions.com>
References: <20200618161220.219452-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_091246_833815_CABA30E7 
X-CRM114-Status: GOOD (  14.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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

Rock Pi N8 is a Rockchip RK3288 based SBC, which has
- VMARC RK3288 SOM (as per SMARC standard) from Vamrs.
- Compatible carrier board from Radxa.

VAMRC RK3288 SOM need to mount on top of radxa dalang
carrier board for making Rock Pi N8 SBC.

So, add initial support for Rock Pi N8 by including rk3288,
rk3288 vamrc-som and raxda dalang carrier board dtsi files.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm/dts/Makefile                      |  1 +
 arch/arm/dts/rk3288-rock-pi-n8-u-boot.dtsi | 33 +++++++++++
 arch/arm/dts/rk3288-rock-pi-n8.dts         | 17 ++++++
 arch/arm/dts/rk3288-vmarc-som.dtsi         |  9 ---
 board/rockchip/evb_rk3288/MAINTAINERS      |  6 ++
 configs/rock-pi-n8-rk3288_defconfig        | 66 ++++++++++++++++++++++
 6 files changed, 123 insertions(+), 9 deletions(-)
 create mode 100644 arch/arm/dts/rk3288-rock-pi-n8-u-boot.dtsi
 create mode 100644 arch/arm/dts/rk3288-rock-pi-n8.dts
 create mode 100644 configs/rock-pi-n8-rk3288_defconfig

diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 07dfe06230..aae95811c1 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -92,6 +92,7 @@ dtb-$(CONFIG_ROCKCHIP_RK3288) += \
 	rk3288-phycore-rdk.dtb \
 	rk3288-popmetal.dtb \
 	rk3288-rock2-square.dtb \
+	rk3288-rock-pi-n8.dtb \
 	rk3288-tinker.dtb \
 	rk3288-tinker-s.dtb \
 	rk3288-veyron-jerry.dtb \
diff --git a/arch/arm/dts/rk3288-rock-pi-n8-u-boot.dtsi b/arch/arm/dts/rk3288-rock-pi-n8-u-boot.dtsi
new file mode 100644
index 0000000000..e9d7404ed9
--- /dev/null
+++ b/arch/arm/dts/rk3288-rock-pi-n8-u-boot.dtsi
@@ -0,0 +1,33 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright (C) 2017 Jagan Teki <jagan@amarulasolutions.com>
+ */
+
+#include "rk3288-u-boot.dtsi"
+
+&dmc {
+	rockchip,pctl-timing = <0x215 0xc8 0x0 0x35 0x26 0x2 0x70 0x2000d
+		0x6 0x0 0x8 0x4 0x17 0x24 0xd 0x6
+		0x4 0x8 0x4 0x76 0x4 0x0 0x30 0x0
+		0x1 0x2 0x2 0x4 0x0 0x0 0xc0 0x4
+		0x8 0x1f4>;
+	rockchip,phy-timing = <0x48d7dd93 0x187008d8 0x121076
+		0x0 0xc3 0x6 0x2>;
+	rockchip,sdram-params = <0x20d266a4 0x5b6 2 533000000 6 9 0>;
+};
+
+&sdmmc {
+	u-boot,dm-pre-reloc;
+};
+
+&emmc {
+	u-boot,dm-pre-reloc;
+};
+
+&uart2 {
+	u-boot,dm-pre-reloc;
+};
+
+&pinctrl {
+	u-boot,dm-pre-reloc;
+};
diff --git a/arch/arm/dts/rk3288-rock-pi-n8.dts b/arch/arm/dts/rk3288-rock-pi-n8.dts
new file mode 100644
index 0000000000..c8637a50c1
--- /dev/null
+++ b/arch/arm/dts/rk3288-rock-pi-n8.dts
@@ -0,0 +1,17 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2019 Fuzhou Rockchip Electronics Co., Ltd
+ * Copyright (c) 2019 Vamrs Limited
+ * Copyright (c) 2019 Amarula Solutions(India)
+ */
+
+/dts-v1/;
+#include "rk3288.dtsi"
+#include "rk3288-vmarc-som.dtsi"
+#include <rockchip-radxa-dalang-carrier.dtsi>
+
+/ {
+	model = "Radxa ROCK Pi N8";
+	compatible = "radxa,rockpi-n8", "vamrs,rk3288-vmarc-som",
+		     "rockchip,rk3288";
+};
diff --git a/arch/arm/dts/rk3288-vmarc-som.dtsi b/arch/arm/dts/rk3288-vmarc-som.dtsi
index 1549ac4044..3cffe61cdf 100644
--- a/arch/arm/dts/rk3288-vmarc-som.dtsi
+++ b/arch/arm/dts/rk3288-vmarc-som.dtsi
@@ -251,15 +251,6 @@
 	};
 };
 
-&io_domains {
-	bb-supply = <&vcc_io>;
-	flash0-supply = <&vccio_flash>;
-	gpio1830-supply = <&vcc_18>;
-	gpio30-supply = <&vcc_io>;
-	sdcard-supply = <&vccio_sd>;
-	status = "okay";
-};
-
 &pinctrl {
 	pcfg_pull_none_drv_8ma: pcfg-pull-none-drv-8ma {
 		drive-strength = <8>;
diff --git a/board/rockchip/evb_rk3288/MAINTAINERS b/board/rockchip/evb_rk3288/MAINTAINERS
index 8a4f127f88..9bd6b1e8a4 100644
--- a/board/rockchip/evb_rk3288/MAINTAINERS
+++ b/board/rockchip/evb_rk3288/MAINTAINERS
@@ -4,3 +4,9 @@ S:	Maintained
 F:	board/rockchip/evb_rk3288
 F:	include/configs/evb_rk3288.h
 F:	configs/evb-rk3288_defconfig
+
+ROCK-PI-N8
+M:	Jagan Teki <jagan@amarulasolutions.com>
+S:	Maintained
+F:	configs/rock-pi-n8-rk3288_defconfig
+F:	arch/arm/dts/rk3288-rock-pi-n8-u-boot.dtsi
diff --git a/configs/rock-pi-n8-rk3288_defconfig b/configs/rock-pi-n8-rk3288_defconfig
new file mode 100644
index 0000000000..6b31e19eda
--- /dev/null
+++ b/configs/rock-pi-n8-rk3288_defconfig
@@ -0,0 +1,66 @@
+CONFIG_ARM=y
+# CONFIG_SPL_USE_ARCH_MEMCPY is not set
+# CONFIG_SPL_USE_ARCH_MEMSET is not set
+CONFIG_ARCH_ROCKCHIP=y
+CONFIG_SYS_TEXT_BASE=0x00100000
+CONFIG_ENV_OFFSET=0x3F8000
+CONFIG_ROCKCHIP_RK3288=y
+CONFIG_TARGET_EVB_RK3288=y
+CONFIG_SPL_STACK_R_ADDR=0x80000
+CONFIG_NR_DRAM_BANKS=1
+CONFIG_DEBUG_UART_BASE=0xff690000
+CONFIG_DEBUG_UART_CLOCK=24000000
+CONFIG_DEBUG_UART=y
+CONFIG_USE_PREBOOT=y
+CONFIG_SILENT_CONSOLE=y
+CONFIG_DEFAULT_FDT_FILE="rk3288-rock-pi-n8.dtb"
+CONFIG_DISPLAY_BOARDINFO_LATE=y
+CONFIG_SPL_STACK_R=y
+CONFIG_SPL_STACK_R_MALLOC_SIMPLE_LEN=0x2000
+CONFIG_CMD_SPL=y
+CONFIG_CMD_GPIO=y
+CONFIG_CMD_GPT=y
+CONFIG_CMD_I2C=y
+CONFIG_CMD_MMC=y
+# CONFIG_CMD_SETEXPR is not set
+CONFIG_CMD_CACHE=y
+CONFIG_CMD_TIME=y
+CONFIG_CMD_PMIC=y
+CONFIG_CMD_REGULATOR=y
+# CONFIG_SPL_DOS_PARTITION is not set
+# CONFIG_SPL_EFI_PARTITION is not set
+CONFIG_SPL_PARTITION_UUIDS=y
+CONFIG_SPL_OF_CONTROL=y
+CONFIG_DEFAULT_DEVICE_TREE="rk3288-rock-pi-n8"
+CONFIG_OF_SPL_REMOVE_PROPS="pinctrl-0 pinctrl-names clock-names interrupt-parent assigned-clocks assigned-clock-rates assigned-clock-parents"
+CONFIG_ENV_IS_IN_MMC=y
+CONFIG_SYS_RELOC_GD_ENV_ADDR=y
+CONFIG_REGMAP=y
+CONFIG_SPL_REGMAP=y
+CONFIG_SYSCON=y
+CONFIG_SPL_SYSCON=y
+# CONFIG_SPL_SIMPLE_BUS is not set
+CONFIG_CLK=y
+CONFIG_SPL_CLK=y
+CONFIG_ROCKCHIP_GPIO=y
+CONFIG_SYS_I2C_ROCKCHIP=y
+CONFIG_LED=y
+CONFIG_LED_GPIO=y
+CONFIG_MMC_DW=y
+CONFIG_MMC_DW_ROCKCHIP=y
+CONFIG_DM_ETH=y
+CONFIG_ETH_DESIGNWARE=y
+CONFIG_GMAC_ROCKCHIP=y
+CONFIG_PINCTRL=y
+CONFIG_SPL_PINCTRL=y
+CONFIG_DM_PMIC=y
+# CONFIG_SPL_PMIC_CHILDREN is not set
+CONFIG_PMIC_RK8XX=y
+CONFIG_DM_REGULATOR_FIXED=y
+CONFIG_REGULATOR_RK8XX=y
+CONFIG_PWM_ROCKCHIP=y
+CONFIG_RAM=y
+CONFIG_SPL_RAM=y
+CONFIG_DEBUG_UART_SHIFT=2
+CONFIG_SYSRESET=y
+CONFIG_ERRNO_STR=y
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

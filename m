Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A4AF1F5274
	for <lists+linux-rockchip@lfdr.de>; Wed, 10 Jun 2020 12:37:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=36c69ZwPD6cN208Fepwhg1OkA9gsUc83ymgZXW1sW64=; b=UK1T8d4bcGRXGg
	vwKuaKNl+Ek36Jtp9Z9DF4uBZJ88/pRtIoY5DKbrPKCQVLtVAoGsH2i/MMzs23muAX+8ksNCWxf4n
	LldgLbXeWLUicwj1YzDk/VyGHRWqyQJnXh3BDwCHVffVQTWYinpBuTwgHMLDsBhxbMzSLWAqs05zR
	N+SQEnBd1Lw2cxfGfFUpPSMjsGeg0REmkfNdOJaYTIrZIR657FtiSzUWPP8fR/wNWrgnNHXCbti6Z
	d5XSmrwDpH40MTJC8hfQerrNE7wjh2+/aGkQ96AcalVcgWV4j8twPU9vJzXGKDQbZW4wahuVynIHZ
	HbpNRgI1y+tTeafcoP+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiy6y-000501-MQ; Wed, 10 Jun 2020 10:37:36 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiy6v-0004y1-55
 for linux-rockchip@lists.infradead.org; Wed, 10 Jun 2020 10:37:34 +0000
Received: by mail-pj1-x1042.google.com with SMTP id s88so718393pjb.5
 for <linux-rockchip@lists.infradead.org>; Wed, 10 Jun 2020 03:37:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=e6IVnybWPlJWNbvR/6aFZERVLH4MS68wkLid7aBGi0U=;
 b=aIOHuNkoJ7SGflSRY5dizzywvu4LQgo+sp9YkQXodlxrR60ID+dA8lMgbpHRL6TY79
 nAAaMuV8ASGPvb83EJTg8rYNxKArXvhx/+2rhRWpVlilVPu5lKou/urAxjr2HWnORWAX
 zfJk3M517LbW08NN07lVd6Pf52/HA7CoNcrxk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=e6IVnybWPlJWNbvR/6aFZERVLH4MS68wkLid7aBGi0U=;
 b=khZ6Qtiocgku/YN9I1xbELeWPm8ckDj5YB0HEH6yBxdXOSzxyKqxwWWHJLRFCbKVKy
 xm1ekzPhq7tpzZeQAtGxDmzln+lW8yq29PvMm8CoYWI6p3WQrJR5OEc73PousG56mErU
 CRU5GerlyNUAvGD9FMtrONLtTRyU55gq1O/o/WJ8InW20T2X5auvZ+4k541OQnhqBrNT
 MAhalx1ERJGJvWPyRIR7QJfq5S0Wu0vkP7fKkHJOPhjxvacWjf6Jv7sZGo8+KJCRFJ/X
 dM8FDWwUu8fb+un4hp53PonRVGPJ0Alvt7cle1PVNp5ocZo1wc2EE5Q9iVVtfXWxQMTs
 fl1g==
X-Gm-Message-State: AOAM531hqU8rdVeGyIUjf1usnoCaR24WOhz6V3xUBruVuYXamBqAxe9v
 sqdHRqaO2O2tG6xDoO6xHTW4PA==
X-Google-Smtp-Source: ABdhPJwAgrRCAvs8dA61T++ETsItWTYCWeEBp3ii5lTeQSJPnOxAQFF7s99Gj7GlxiAtxY8F0meAcQ==
X-Received: by 2002:a17:902:8496:: with SMTP id
 c22mr2523993plo.57.1591785452416; 
 Wed, 10 Jun 2020 03:37:32 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:9daa:1b72:7bd0:50df])
 by smtp.gmail.com with ESMTPSA id x191sm12454754pfd.37.2020.06.10.03.37.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Jun 2020 03:37:31 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Simon Glass <sjg@chromium.org>
Subject: [PATCH 4/4] arm64: dts: rockchip: Add Radxa Rock Pi N10 initial
 support
Date: Wed, 10 Jun 2020 16:06:58 +0530
Message-Id: <20200610103658.96678-5-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200610103658.96678-1-jagan@amarulasolutions.com>
References: <20200610103658.96678-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_033733_196945_6159A2E8 
X-CRM114-Status: GOOD (  13.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1042 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Rock Pi N10 is a Rockchip RK3399Pro based SBC, which has
- VMARC RK3399Pro SOM (as per SMARC standard) from Vamrs.
- Compatible carrier board from Radxa.

VAMRC RK3399Pro SOM need to mount on top of radxa dalang
carrier board for making Rock Pi N10 SBC.

So, add initial support for Rock Pi N10 by including rk3399,
rk3399pro vamrc-som and raxda dalang carrier board dtsi files.

rk3399pro-rock-pi-n10.dts was synced from linux-next v5.7-rc1.

Tested
- ROCK PI N10 Model B
- ROCK PI N10 Model C
- Boot from SD

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm/dts/Makefile                         |  3 +-
 .../arm/dts/rk3399pro-rock-pi-n10-u-boot.dtsi |  7 +++
 arch/arm/dts/rk3399pro-rock-pi-n10.dts        | 18 ++++++++
 arch/arm/dts/rk3399pro-u-boot.dtsi            |  6 +++
 board/rockchip/evb_rk3399/MAINTAINERS         |  6 +++
 configs/rock-pi-n10-rk3399pro_defconfig       | 46 +++++++++++++++++++
 6 files changed, 85 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/dts/rk3399pro-rock-pi-n10-u-boot.dtsi
 create mode 100644 arch/arm/dts/rk3399pro-rock-pi-n10.dts
 create mode 100644 arch/arm/dts/rk3399pro-u-boot.dtsi
 create mode 100644 configs/rock-pi-n10-rk3399pro_defconfig

diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 9900b44274..07dfe06230 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -136,7 +136,8 @@ dtb-$(CONFIG_ROCKCHIP_RK3399) += \
 	rk3399-roc-pc-mezzanine.dtb \
 	rk3399-rock-pi-4.dtb \
 	rk3399-rock960.dtb \
-	rk3399-rockpro64.dtb
+	rk3399-rockpro64.dtb \
+	rk3399pro-rock-pi-n10.dtb
 
 dtb-$(CONFIG_ROCKCHIP_RV1108) += \
 	rv1108-elgin-r1.dtb \
diff --git a/arch/arm/dts/rk3399pro-rock-pi-n10-u-boot.dtsi b/arch/arm/dts/rk3399pro-rock-pi-n10-u-boot.dtsi
new file mode 100644
index 0000000000..946a0230db
--- /dev/null
+++ b/arch/arm/dts/rk3399pro-rock-pi-n10-u-boot.dtsi
@@ -0,0 +1,7 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright (C) 2019 Jagan Teki <jagan@amarulasolutions.com>
+ */
+
+#include "rk3399pro-u-boot.dtsi"
+#include "rk3399-sdram-lpddr3-4GB-1600.dtsi"
diff --git a/arch/arm/dts/rk3399pro-rock-pi-n10.dts b/arch/arm/dts/rk3399pro-rock-pi-n10.dts
new file mode 100644
index 0000000000..6ac2d4d721
--- /dev/null
+++ b/arch/arm/dts/rk3399pro-rock-pi-n10.dts
@@ -0,0 +1,18 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2019 Fuzhou Rockchip Electronics Co., Ltd
+ * Copyright (c) 2019 Radxa Limited
+ * Copyright (c) 2019 Amarula Solutions(India)
+ */
+
+/dts-v1/;
+#include "rk3399.dtsi"
+#include "rk3399-opp.dtsi"
+#include "rk3399pro-vmarc-som.dtsi"
+#include <rockchip-radxa-dalang-carrier.dtsi>
+
+/ {
+	model = "Radxa ROCK Pi N10";
+	compatible = "radxa,rockpi-n10", "vamrs,rk3399pro-vmarc-som",
+		     "rockchip,rk3399pro";
+};
diff --git a/arch/arm/dts/rk3399pro-u-boot.dtsi b/arch/arm/dts/rk3399pro-u-boot.dtsi
new file mode 100644
index 0000000000..7bddc3acdb
--- /dev/null
+++ b/arch/arm/dts/rk3399pro-u-boot.dtsi
@@ -0,0 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright (C) 2019 Jagan Teki <jagan@amarulasolutions.com>
+ */
+
+#include "rk3399-u-boot.dtsi"
diff --git a/board/rockchip/evb_rk3399/MAINTAINERS b/board/rockchip/evb_rk3399/MAINTAINERS
index 792df1087f..578638a58b 100644
--- a/board/rockchip/evb_rk3399/MAINTAINERS
+++ b/board/rockchip/evb_rk3399/MAINTAINERS
@@ -68,3 +68,9 @@ M:	Jagan Teki <jagan@amarulasolutions.com>
 S:	Maintained
 F:	configs/rock-pi-4-rk3399_defconfig
 F:	arch/arm/dts/rk3399-rock-pi-4-u-boot.dtsi
+
+ROCK-PI-N10
+M:	Jagan Teki <jagan@amarulasolutions.com>
+S:	Maintained
+F:	configs/rock-pi-n10-rk3399pro_defconfig
+F:	arch/arm/dts/rk3399pro-rock-pi-n10-u-boot.dtsi
diff --git a/configs/rock-pi-n10-rk3399pro_defconfig b/configs/rock-pi-n10-rk3399pro_defconfig
new file mode 100644
index 0000000000..c705ce01ce
--- /dev/null
+++ b/configs/rock-pi-n10-rk3399pro_defconfig
@@ -0,0 +1,46 @@
+CONFIG_ARM=y
+CONFIG_ARCH_ROCKCHIP=y
+CONFIG_SYS_TEXT_BASE=0x00200000
+CONFIG_SPL_GPIO_SUPPORT=y
+CONFIG_ENV_OFFSET=0x3F8000
+CONFIG_ROCKCHIP_RK3399=y
+CONFIG_TARGET_EVB_RK3399=y
+CONFIG_NR_DRAM_BANKS=1
+CONFIG_DEBUG_UART_BASE=0xFF1A0000
+CONFIG_DEBUG_UART_CLOCK=24000000
+CONFIG_DEBUG_UART=y
+CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399pro-rock-pi-n10.dtb"
+CONFIG_MISC_INIT_R=y
+CONFIG_DISPLAY_BOARDINFO_LATE=y
+# CONFIG_SPL_RAW_IMAGE_SUPPORT is not set
+CONFIG_SPL_STACK_R=y
+CONFIG_SPL_STACK_R_MALLOC_SIMPLE_LEN=0x10000
+CONFIG_TPL=y
+CONFIG_CMD_BOOTZ=y
+CONFIG_CMD_GPT=y
+CONFIG_CMD_MMC=y
+# CONFIG_CMD_SETEXPR is not set
+CONFIG_CMD_TIME=y
+CONFIG_SPL_OF_CONTROL=y
+CONFIG_DEFAULT_DEVICE_TREE="rk3399pro-rock-pi-n10"
+CONFIG_OF_SPL_REMOVE_PROPS="pinctrl-0 pinctrl-names clock-names interrupt-parent assigned-clocks assigned-clock-rates assigned-clock-parents"
+CONFIG_ENV_IS_IN_MMC=y
+CONFIG_SYS_RELOC_GD_ENV_ADDR=y
+CONFIG_ROCKCHIP_GPIO=y
+CONFIG_SYS_I2C_ROCKCHIP=y
+CONFIG_MISC=y
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
+CONFIG_ERRNO_STR=y
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

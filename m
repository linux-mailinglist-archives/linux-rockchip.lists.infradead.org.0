Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1D2CB343
	for <lists+linux-rockchip@lfdr.de>; Sat, 27 Apr 2019 13:49:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NvNLgNmSlHIBo/2RKcZoFzMUm9rD/M9RHpp94Byitnw=; b=EohO52K+owjSMf
	KqLB/wXT2IT8hPhlmZdeB0ZoyfEJsYVAME+W+dWB6BJloC8yORanNSJOhorflTTDJ6FcEMneF2QPA
	RnX+k2QNy1ndxbHvvugctnf1WXZiFpHhSwIxdCzT+6GX14AZzDNzcmnpgNYn+jETM5Ma6rHJ4XWpl
	IlPoS9RARM7nGzrbiv+dQ1i23iHQOHW32pg0tbGMusYg9A64pe28N6FMHtUBLHnyEMpj+pAn/YjD8
	g++bd8LgI3kEvjkKthgoEw3T4V/tQUvhm8U3fP/+ATF42ATFsV/GFrZu5WBwZ9RjVK52ZpYluYvdB
	Nx9IkGI1CXqpdUXI46Og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKLpg-000178-JK; Sat, 27 Apr 2019 11:49:28 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKLpd-000152-0i
 for linux-rockchip@lists.infradead.org; Sat, 27 Apr 2019 11:49:26 +0000
Received: by mail-pl1-x644.google.com with SMTP id e92so2808686plb.6
 for <linux-rockchip@lists.infradead.org>; Sat, 27 Apr 2019 04:49:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=GsCP0Ek5IlqVnCIHlkBVYJ4YUNHaxAMQwjhWuLJ+JQ4=;
 b=PlTVZRUoW5J3cU8M8ox6bGGYd8Zy+Jy+5DWU9R0AlUblBZIDfU2/g13duZPcUJv5So
 bEGhl1H7IzjawkmGRk+r3QiPZgk3h4eMnrKI0hLAHTqMxR+3uGEH+jgbiOr1nFF4QwfF
 EeDvgWfrzw+GpGHQLR8d5VPP761s7DZ56qqt0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=GsCP0Ek5IlqVnCIHlkBVYJ4YUNHaxAMQwjhWuLJ+JQ4=;
 b=IL1kmcngxxZwAjNA21Cl0p6YIW5n9to2oWV5v5tkwbUcZtfa/XvxMztDxmnsj/bn66
 J2Oo1AwLV6e7oITzTIHlMA+tT8Zoj+CKAxH6a7NNJarRJoT/ES7sup99jqdrv8JLJInb
 oheEOohPnnIBtAlo4MgmwY+AGzAc2H1NQHIRcpdKe0hUApIXpPYQLF4OmkSAFbGFFUej
 bpkjKplyirtXodysn0DISH6vABWNQm2csTj07o0xCxIsloqhlPkuZroPw4PMCsjBut2c
 GdIqucoiXA9Gd5+0ldKp1n5AsJzhzqbrKZaHof9UBhCRnXebrMUNojeWm+jphzkhlHZl
 JsFA==
X-Gm-Message-State: APjAAAV/s38vHX1vZ/oFiR+icc6KKvLeAkMkLVy7p406DfMomMdrGOKb
 D8poFpmjsIgx/uT859kQaxq26g==
X-Google-Smtp-Source: APXvYqwXsHlwStcT9MPwzGOqWfRdjZpkTPzK1ev3s5Wffj59TFRoxBCDuOGM8inj3dbCisjYmyphFw==
X-Received: by 2002:a17:902:2b81:: with SMTP id
 l1mr50774638plb.289.1556365764363; 
 Sat, 27 Apr 2019 04:49:24 -0700 (PDT)
Received: from localhost.localdomain ([115.97.185.144])
 by smtp.gmail.com with ESMTPSA id y3sm2368768pfe.9.2019.04.27.04.49.20
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 27 Apr 2019 04:49:23 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, Akash Gajjar <akash@openedev.com>,
 Tom Rini <trini@konsulko.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v6 04/13] arm: rockchip: rk3399: Move common configs in Kconfig
Date: Sat, 27 Apr 2019 17:18:47 +0530
Message-Id: <20190427114852.7608-5-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190427114852.7608-1-jagan@amarulasolutions.com>
References: <20190427114852.7608-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190427_044925_163833_9C34F8EB 
X-CRM114-Status: UNSURE (   9.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
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

Few SPL and U-Boot proper configs are common to all rk3399 target
defconfigs, move them and select it from platform kconfig.

Moved configs:
-  SPL_ATF
-  SPL_ATF_NO_PLATFORM_PARAM if SPL_ATF
-  SPL_LOAD_FIT
-  SPL_CLK if SPL
-  SPL_PINCTRL if SPL
-  SPL_RAM if SPL
-  SPL_REGMAP if SPL
-  SPL_SYSCON if SPL
-  CLK
-  FIT
-  PINCTRL
-  RAM
-  REGMAP
-  SYSCON
-  DM_PMIC
-  DM_REGULATOR_FIXED

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Reviewed-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
---
 arch/arm/mach-rockchip/Kconfig   | 16 ++++++++++++++++
 configs/chromebook_bob_defconfig | 16 ----------------
 configs/evb-rk3399_defconfig     | 16 ----------------
 configs/ficus-rk3399_defconfig   | 16 ----------------
 configs/firefly-rk3399_defconfig | 16 ----------------
 configs/puma-rk3399_defconfig    | 16 ----------------
 configs/rock960-rk3399_defconfig | 16 ----------------
 7 files changed, 16 insertions(+), 96 deletions(-)

diff --git a/arch/arm/mach-rockchip/Kconfig b/arch/arm/mach-rockchip/Kconfig
index b9a026abb5..dbe7f11d39 100644
--- a/arch/arm/mach-rockchip/Kconfig
+++ b/arch/arm/mach-rockchip/Kconfig
@@ -132,9 +132,25 @@ config ROCKCHIP_RK3399
 	select ARM64
 	select SUPPORT_SPL
 	select SPL
+	select SPL_ATF
+	select SPL_ATF_NO_PLATFORM_PARAM if SPL_ATF
+	select SPL_LOAD_FIT
+	select SPL_CLK if SPL
+	select SPL_PINCTRL if SPL
+	select SPL_RAM if SPL
+	select SPL_REGMAP if SPL
+	select SPL_SYSCON if SPL
 	select SPL_SEPARATE_BSS
 	select SPL_SERIAL_SUPPORT
 	select SPL_DRIVERS_MISC_SUPPORT
+	select CLK
+	select FIT
+	select PINCTRL
+	select RAM
+	select REGMAP
+	select SYSCON
+	select DM_PMIC
+	select DM_REGULATOR_FIXED
 	select DEBUG_UART_BOARD_INIT
 	select BOARD_LATE_INIT
 	select ROCKCHIP_BROM_HELPER
diff --git a/configs/chromebook_bob_defconfig b/configs/chromebook_bob_defconfig
index 04e25e1d4f..fdcbabf912 100644
--- a/configs/chromebook_bob_defconfig
+++ b/configs/chromebook_bob_defconfig
@@ -17,16 +17,12 @@ CONFIG_SPL_SPI_FLASH_SUPPORT=y
 CONFIG_SPL_SPI_SUPPORT=y
 CONFIG_DEBUG_UART=y
 CONFIG_NR_DRAM_BANKS=1
-CONFIG_FIT=y
-CONFIG_SPL_LOAD_FIT=y
 CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-gru-bob.dtb"
 # CONFIG_DISPLAY_CPUINFO is not set
 CONFIG_DISPLAY_BOARDINFO_LATE=y
 CONFIG_SPL_STACK_R=y
 CONFIG_SPL_STACK_R_MALLOC_SIMPLE_LEN=0x4000
 CONFIG_SPL_SPI_LOAD=y
-CONFIG_SPL_ATF=y
-CONFIG_SPL_ATF_NO_PLATFORM_PARAM=y
 CONFIG_CMD_BOOTZ=y
 CONFIG_CMD_GPIO=y
 CONFIG_CMD_GPT=y
@@ -45,12 +41,6 @@ CONFIG_SPL_OF_CONTROL=y
 CONFIG_DEFAULT_DEVICE_TREE="rk3399-gru-bob"
 CONFIG_OF_SPL_REMOVE_PROPS="pinctrl-0 pinctrl-names clock-names interrupt-parent assigned-clocks assigned-clock-rates assigned-clock-parents"
 CONFIG_ENV_IS_IN_MMC=y
-CONFIG_REGMAP=y
-CONFIG_SPL_REGMAP=y
-CONFIG_SYSCON=y
-CONFIG_SPL_SYSCON=y
-CONFIG_CLK=y
-CONFIG_SPL_CLK=y
 CONFIG_ROCKCHIP_GPIO=y
 CONFIG_I2C_CROS_EC_TUNNEL=y
 CONFIG_SYS_I2C_ROCKCHIP=y
@@ -70,16 +60,10 @@ CONFIG_SPI_FLASH_GIGADEVICE=y
 CONFIG_DM_ETH=y
 CONFIG_ETH_DESIGNWARE=y
 CONFIG_GMAC_ROCKCHIP=y
-CONFIG_PINCTRL=y
-CONFIG_SPL_PINCTRL=y
-CONFIG_DM_PMIC=y
 CONFIG_PMIC_RK8XX=y
 CONFIG_REGULATOR_PWM=y
-CONFIG_DM_REGULATOR_FIXED=y
 CONFIG_REGULATOR_RK8XX=y
 CONFIG_PWM_ROCKCHIP=y
-CONFIG_RAM=y
-CONFIG_SPL_RAM=y
 CONFIG_DEBUG_UART_SHIFT=2
 CONFIG_ROCKCHIP_SPI=y
 CONFIG_SYSRESET=y
diff --git a/configs/evb-rk3399_defconfig b/configs/evb-rk3399_defconfig
index 49b2e2e089..1ba9dcba62 100644
--- a/configs/evb-rk3399_defconfig
+++ b/configs/evb-rk3399_defconfig
@@ -11,15 +11,11 @@ CONFIG_DEBUG_UART_CLOCK=24000000
 CONFIG_SPL_STACK_R_ADDR=0x80000
 CONFIG_DEBUG_UART=y
 CONFIG_NR_DRAM_BANKS=1
-CONFIG_FIT=y
-CONFIG_SPL_LOAD_FIT=y
 CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-evb.dtb"
 # CONFIG_DISPLAY_CPUINFO is not set
 CONFIG_DISPLAY_BOARDINFO_LATE=y
 CONFIG_SPL_STACK_R=y
 CONFIG_SPL_STACK_R_MALLOC_SIMPLE_LEN=0x4000
-CONFIG_SPL_ATF=y
-CONFIG_SPL_ATF_NO_PLATFORM_PARAM=y
 CONFIG_CMD_BOOTZ=y
 CONFIG_CMD_GPT=y
 CONFIG_CMD_MMC=y
@@ -32,12 +28,6 @@ CONFIG_DEFAULT_DEVICE_TREE="rk3399-evb"
 CONFIG_OF_SPL_REMOVE_PROPS="pinctrl-0 pinctrl-names clock-names interrupt-parent assigned-clocks assigned-clock-rates assigned-clock-parents"
 CONFIG_ENV_IS_IN_MMC=y
 CONFIG_NET_RANDOM_ETHADDR=y
-CONFIG_REGMAP=y
-CONFIG_SPL_REGMAP=y
-CONFIG_SYSCON=y
-CONFIG_SPL_SYSCON=y
-CONFIG_CLK=y
-CONFIG_SPL_CLK=y
 CONFIG_ROCKCHIP_GPIO=y
 CONFIG_SYS_I2C_ROCKCHIP=y
 CONFIG_MMC_DW=y
@@ -47,16 +37,10 @@ CONFIG_SF_DEFAULT_SPEED=20000000
 CONFIG_DM_ETH=y
 CONFIG_ETH_DESIGNWARE=y
 CONFIG_GMAC_ROCKCHIP=y
-CONFIG_PINCTRL=y
-CONFIG_SPL_PINCTRL=y
-CONFIG_DM_PMIC=y
 CONFIG_PMIC_RK8XX=y
 CONFIG_REGULATOR_PWM=y
-CONFIG_DM_REGULATOR_FIXED=y
 CONFIG_REGULATOR_RK8XX=y
 CONFIG_PWM_ROCKCHIP=y
-CONFIG_RAM=y
-CONFIG_SPL_RAM=y
 CONFIG_BAUDRATE=1500000
 CONFIG_DEBUG_UART_SHIFT=2
 CONFIG_SYSRESET=y
diff --git a/configs/ficus-rk3399_defconfig b/configs/ficus-rk3399_defconfig
index fe3b9964e8..67c62065aa 100644
--- a/configs/ficus-rk3399_defconfig
+++ b/configs/ficus-rk3399_defconfig
@@ -11,14 +11,10 @@ CONFIG_DEBUG_UART_BASE=0xFF1A0000
 CONFIG_DEBUG_UART_CLOCK=24000000
 CONFIG_SPL_STACK_R_ADDR=0x80000
 CONFIG_DEBUG_UART=y
-CONFIG_FIT=y
-CONFIG_SPL_LOAD_FIT=y
 # CONFIG_DISPLAY_CPUINFO is not set
 CONFIG_DISPLAY_BOARDINFO_LATE=y
 CONFIG_SPL_STACK_R=y
 CONFIG_SPL_STACK_R_MALLOC_SIMPLE_LEN=0x4000
-CONFIG_SPL_ATF=y
-CONFIG_SPL_ATF_NO_PLATFORM_PARAM=y
 CONFIG_CMD_BOOTZ=y
 CONFIG_CMD_GPT=y
 CONFIG_CMD_MMC=y
@@ -31,12 +27,6 @@ CONFIG_DEFAULT_DEVICE_TREE="rk3399-ficus"
 CONFIG_OF_SPL_REMOVE_PROPS="pinctrl-0 pinctrl-names clock-names interrupt-parent assigned-clocks assigned-clock-rates assigned-clock-parents"
 CONFIG_ENV_IS_IN_MMC=y
 CONFIG_NET_RANDOM_ETHADDR=y
-CONFIG_REGMAP=y
-CONFIG_SPL_REGMAP=y
-CONFIG_SYSCON=y
-CONFIG_SPL_SYSCON=y
-CONFIG_CLK=y
-CONFIG_SPL_CLK=y
 CONFIG_ROCKCHIP_GPIO=y
 CONFIG_SYS_I2C_ROCKCHIP=y
 CONFIG_MMC_DW=y
@@ -48,17 +38,11 @@ CONFIG_DM_ETH=y
 CONFIG_ETH_DESIGNWARE=y
 CONFIG_RGMII=y
 CONFIG_GMAC_ROCKCHIP=y
-CONFIG_PINCTRL=y
-CONFIG_SPL_PINCTRL=y
-CONFIG_DM_PMIC=y
 CONFIG_PMIC_RK8XX=y
 CONFIG_REGULATOR_PWM=y
-CONFIG_DM_REGULATOR_FIXED=y
 CONFIG_DM_REGULATOR_GPIO=y
 CONFIG_REGULATOR_RK8XX=y
 CONFIG_PWM_ROCKCHIP=y
-CONFIG_RAM=y
-CONFIG_SPL_RAM=y
 CONFIG_BAUDRATE=1500000
 CONFIG_DEBUG_UART_SHIFT=2
 CONFIG_SYSRESET=y
diff --git a/configs/firefly-rk3399_defconfig b/configs/firefly-rk3399_defconfig
index 914304bb43..1d3a7f2982 100644
--- a/configs/firefly-rk3399_defconfig
+++ b/configs/firefly-rk3399_defconfig
@@ -11,15 +11,11 @@ CONFIG_DEBUG_UART_CLOCK=24000000
 CONFIG_SPL_STACK_R_ADDR=0x80000
 CONFIG_DEBUG_UART=y
 CONFIG_NR_DRAM_BANKS=1
-CONFIG_FIT=y
-CONFIG_SPL_LOAD_FIT=y
 CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-firefly.dtb"
 # CONFIG_DISPLAY_CPUINFO is not set
 CONFIG_DISPLAY_BOARDINFO_LATE=y
 CONFIG_SPL_STACK_R=y
 CONFIG_SPL_STACK_R_MALLOC_SIMPLE_LEN=0x4000
-CONFIG_SPL_ATF=y
-CONFIG_SPL_ATF_NO_PLATFORM_PARAM=y
 CONFIG_CMD_BOOTZ=y
 CONFIG_CMD_GPT=y
 CONFIG_CMD_MMC=y
@@ -31,12 +27,6 @@ CONFIG_SPL_OF_CONTROL=y
 CONFIG_DEFAULT_DEVICE_TREE="rk3399-firefly"
 CONFIG_OF_SPL_REMOVE_PROPS="pinctrl-0 pinctrl-names clock-names interrupt-parent assigned-clocks assigned-clock-rates assigned-clock-parents"
 CONFIG_ENV_IS_IN_MMC=y
-CONFIG_REGMAP=y
-CONFIG_SPL_REGMAP=y
-CONFIG_SYSCON=y
-CONFIG_SPL_SYSCON=y
-CONFIG_CLK=y
-CONFIG_SPL_CLK=y
 CONFIG_ROCKCHIP_GPIO=y
 CONFIG_SYS_I2C_ROCKCHIP=y
 CONFIG_MMC_DW=y
@@ -47,16 +37,10 @@ CONFIG_SF_DEFAULT_SPEED=20000000
 CONFIG_DM_ETH=y
 CONFIG_ETH_DESIGNWARE=y
 CONFIG_GMAC_ROCKCHIP=y
-CONFIG_PINCTRL=y
-CONFIG_SPL_PINCTRL=y
-CONFIG_DM_PMIC=y
 CONFIG_PMIC_RK8XX=y
 CONFIG_REGULATOR_PWM=y
-CONFIG_DM_REGULATOR_FIXED=y
 CONFIG_REGULATOR_RK8XX=y
 CONFIG_PWM_ROCKCHIP=y
-CONFIG_RAM=y
-CONFIG_SPL_RAM=y
 CONFIG_BAUDRATE=1500000
 CONFIG_DEBUG_UART_SHIFT=2
 CONFIG_SYSRESET=y
diff --git a/configs/puma-rk3399_defconfig b/configs/puma-rk3399_defconfig
index 3547ec6b27..e5ea2fe0b3 100644
--- a/configs/puma-rk3399_defconfig
+++ b/configs/puma-rk3399_defconfig
@@ -15,8 +15,6 @@ CONFIG_SPL_SPI_FLASH_SUPPORT=y
 CONFIG_SPL_SPI_SUPPORT=y
 CONFIG_DEBUG_UART=y
 CONFIG_NR_DRAM_BANKS=1
-CONFIG_FIT=y
-CONFIG_SPL_LOAD_FIT=y
 CONFIG_SPL_FIT_SOURCE="board/theobroma-systems/puma_rk3399/fit_spl_atf.its"
 CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-puma-haikou.dtb"
 CONFIG_MISC_INIT_R=y
@@ -31,8 +29,6 @@ CONFIG_SYS_MMCSD_RAW_MODE_U_BOOT_SECTOR=0x200
 CONFIG_SPL_I2C_SUPPORT=y
 CONFIG_SPL_POWER_SUPPORT=y
 CONFIG_SPL_SPI_LOAD=y
-CONFIG_SPL_ATF=y
-CONFIG_SPL_ATF_NO_PLATFORM_PARAM=y
 CONFIG_CMD_BOOTZ=y
 CONFIG_CMD_GPT=y
 CONFIG_CMD_I2C=y
@@ -51,12 +47,6 @@ CONFIG_OF_LIVE=y
 CONFIG_DEFAULT_DEVICE_TREE="rk3399-puma-ddr1600"
 CONFIG_OF_SPL_REMOVE_PROPS="pinctrl-0 pinctrl-names interrupt-parent assigned-clocks assigned-clock-rates assigned-clock-parents"
 CONFIG_ENV_IS_IN_MMC=y
-CONFIG_REGMAP=y
-CONFIG_SPL_REGMAP=y
-CONFIG_SYSCON=y
-CONFIG_SPL_SYSCON=y
-CONFIG_CLK=y
-CONFIG_SPL_CLK=y
 CONFIG_ROCKCHIP_GPIO=y
 CONFIG_SYS_I2C_ROCKCHIP=y
 CONFIG_MISC=y
@@ -74,20 +64,14 @@ CONFIG_PHY_MICREL_KSZ90X1=y
 CONFIG_DM_ETH=y
 CONFIG_ETH_DESIGNWARE=y
 CONFIG_GMAC_ROCKCHIP=y
-CONFIG_PINCTRL=y
-CONFIG_SPL_PINCTRL=y
-CONFIG_DM_PMIC=y
 CONFIG_DM_PMIC_FAN53555=y
 CONFIG_PMIC_RK8XX=y
 CONFIG_SPL_DM_REGULATOR=y
 CONFIG_REGULATOR_PWM=y
-CONFIG_DM_REGULATOR_FIXED=y
 CONFIG_SPL_DM_REGULATOR_FIXED=y
 CONFIG_DM_REGULATOR_GPIO=y
 CONFIG_REGULATOR_RK8XX=y
 CONFIG_PWM_ROCKCHIP=y
-CONFIG_RAM=y
-CONFIG_SPL_RAM=y
 CONFIG_DM_RTC=y
 CONFIG_RTC_ISL1208=y
 CONFIG_DEBUG_UART_SHIFT=2
diff --git a/configs/rock960-rk3399_defconfig b/configs/rock960-rk3399_defconfig
index 5e6778ea20..cc7d6f89b1 100644
--- a/configs/rock960-rk3399_defconfig
+++ b/configs/rock960-rk3399_defconfig
@@ -11,15 +11,11 @@ CONFIG_DEBUG_UART_BASE=0xFF1A0000
 CONFIG_DEBUG_UART_CLOCK=24000000
 CONFIG_SPL_STACK_R_ADDR=0x80000
 CONFIG_DEBUG_UART=y
-CONFIG_FIT=y
-CONFIG_SPL_LOAD_FIT=y
 CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-rock960.dtb"
 # CONFIG_DISPLAY_CPUINFO is not set
 CONFIG_DISPLAY_BOARDINFO_LATE=y
 CONFIG_SPL_STACK_R=y
 CONFIG_SPL_STACK_R_MALLOC_SIMPLE_LEN=0x4000
-CONFIG_SPL_ATF=y
-CONFIG_SPL_ATF_NO_PLATFORM_PARAM=y
 CONFIG_SYS_PROMPT="rock960 => "
 CONFIG_CMD_BOOTZ=y
 CONFIG_CMD_GPT=y
@@ -32,12 +28,6 @@ CONFIG_SPL_OF_CONTROL=y
 CONFIG_DEFAULT_DEVICE_TREE="rk3399-rock960"
 CONFIG_OF_SPL_REMOVE_PROPS="pinctrl-0 pinctrl-names clock-names interrupt-parent assigned-clocks assigned-clock-rates assigned-clock-parents"
 CONFIG_ENV_IS_IN_MMC=y
-CONFIG_REGMAP=y
-CONFIG_SPL_REGMAP=y
-CONFIG_SYSCON=y
-CONFIG_SPL_SYSCON=y
-CONFIG_CLK=y
-CONFIG_SPL_CLK=y
 CONFIG_ROCKCHIP_GPIO=y
 CONFIG_SYS_I2C_ROCKCHIP=y
 CONFIG_MMC_DW=y
@@ -45,16 +35,10 @@ CONFIG_MMC_DW_ROCKCHIP=y
 CONFIG_MMC_SDHCI=y
 CONFIG_MMC_SDHCI_ROCKCHIP=y
 CONFIG_SF_DEFAULT_SPEED=20000000
-CONFIG_PINCTRL=y
-CONFIG_SPL_PINCTRL=y
-CONFIG_DM_PMIC=y
 CONFIG_PMIC_RK8XX=y
 CONFIG_REGULATOR_PWM=y
-CONFIG_DM_REGULATOR_FIXED=y
 CONFIG_REGULATOR_RK8XX=y
 CONFIG_PWM_ROCKCHIP=y
-CONFIG_RAM=y
-CONFIG_SPL_RAM=y
 CONFIG_BAUDRATE=1500000
 CONFIG_DEBUG_UART_SHIFT=2
 CONFIG_SYSRESET=y
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

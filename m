Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36C8E16A4E
	for <lists+linux-rockchip@lfdr.de>; Tue,  7 May 2019 20:36:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x8jkl02JbQHMY1AUAt4/Pu1P36j6hqvcLP8ZAnIGhr4=; b=gy4MU7LlNohYfL
	kfow0Oe1aDmr0oPsRu7rp6K789M+kv7BPmiQHLh0G7rwrEcFkWOwJG/rnvr2QMHop4HO/A24UosWK
	2VrdUudOJYEsWEGiwDIJ9ObBhda+cGkjPomSstGMugnx5XTTJhtsNWHCCyhjYHXEPmZsYcdWfSgys
	1MGwMr8hS/9sdR9HnHc1iw+dZfjb8WaO1DTzQTH+oSM93zh+fr4tn27Fw71HT5HEuSxrYJiJSwpKH
	xMvt4OuZhFyvBxAXgPMOP5dVeSMNnugi8S9u6i/aNGawRh4tBVReidPVkiT33kQHTn5iasnLkrrox
	e2fFzAV2elRGVfm2um6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO4xR-00011t-83; Tue, 07 May 2019 18:36:53 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO4xN-0000zX-DE
 for linux-rockchip@lists.infradead.org; Tue, 07 May 2019 18:36:51 +0000
Received: by mail-pg1-x544.google.com with SMTP id j26so8738182pgl.5
 for <linux-rockchip@lists.infradead.org>; Tue, 07 May 2019 11:36:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=vKC7+t4GuCiGOwmhNxWVEdj7wBED5cFln4dKzZSuynM=;
 b=efmId4vetS40h00oW4kHozSRaAv8xu/x28T3FO1buJFwrfw17Ybp3dnLdJhIleAmWz
 SKTrK5nTbDZL3yT3G+XHJhs5N1uayNyr/cinSCSroTh9M19J/AGlAuegRX5NxOE49PJv
 p9MtCHG4iyIYbts2lpu8fsRMfY1mrX6P8cExc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=vKC7+t4GuCiGOwmhNxWVEdj7wBED5cFln4dKzZSuynM=;
 b=aQqIpCl+/b+gfFgdub3G+UgHzDJLMl6ZxGjy25sYQAB4pZewaY6EX5SuLDrZuCA8Xt
 hAj9aS8mE0dC0V7xT0PvlbkSvodOkVpXP2ZlUlp+GOSrCMUedNJRIJyMy6l+wdzr4Y3L
 kU4440hUCy79RgtVYkxAUyt5Wu2Ce+eNDZug+7st1KDnMgiBJD1PfjgL1i/AVyMFA3jE
 QeHxlEQTOX8yIjU0Afr7VkITPLA1joss4fkagxu4ve6oz0jOElawRMP7XDQJkaf18uFD
 2TE9wFDeuanAcHIcOvC+SnqQgIu6i/Fx45QzJ0IMd14mjCm+yDMFmy+190YCeQDNSm3g
 IAPA==
X-Gm-Message-State: APjAAAUTbXFY9IByTW0NmN9ggUCqS7UZFAX9OsZOKjNgKx23NvYjw284
 xdkl7WsFggXYEUte9G7YwMnDPQ==
X-Google-Smtp-Source: APXvYqwGuu488i5UkZOcZcVdS3AsB6w14hQeED5FrBjwD+zFO4I/yFHnZVbOqezcs/Nk+urG036aFQ==
X-Received: by 2002:aa7:9116:: with SMTP id 22mr42826966pfh.165.1557254208695; 
 Tue, 07 May 2019 11:36:48 -0700 (PDT)
Received: from localhost.localdomain ([115.97.185.144])
 by smtp.gmail.com with ESMTPSA id b22sm21743728pgg.88.2019.05.07.11.36.44
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 07 May 2019 11:36:47 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, Akash Gajjar <akash@openedev.com>
Subject: [PATCH v7 03/11] arm: rockchip: rk3399: Move common configs in Kconfig
Date: Wed,  8 May 2019 00:06:19 +0530
Message-Id: <20190507183625.5983-4-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190507183625.5983-1-jagan@amarulasolutions.com>
References: <20190507183625.5983-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_113649_632075_AD2FC438 
X-CRM114-Status: UNSURE (   9.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
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
---
 arch/arm/mach-rockchip/Kconfig    | 16 ++++++++++++++++
 configs/chromebook_bob_defconfig  | 16 ----------------
 configs/evb-rk3399_defconfig      | 16 ----------------
 configs/ficus-rk3399_defconfig    | 16 ----------------
 configs/firefly-rk3399_defconfig  | 16 ----------------
 configs/orangepi-rk3399_defconfig | 16 ----------------
 configs/puma-rk3399_defconfig     | 16 ----------------
 configs/rock960-rk3399_defconfig  | 16 ----------------
 8 files changed, 16 insertions(+), 112 deletions(-)

diff --git a/arch/arm/mach-rockchip/Kconfig b/arch/arm/mach-rockchip/Kconfig
index f5c3329750..c05e3c3f48 100644
--- a/arch/arm/mach-rockchip/Kconfig
+++ b/arch/arm/mach-rockchip/Kconfig
@@ -156,11 +156,27 @@ config ROCKCHIP_RK3399
 	select SUPPORT_SPL
 	select SUPPORT_TPL
 	select SPL
+	select SPL_ATF
+	select SPL_ATF_NO_PLATFORM_PARAM if SPL_ATF
+	select SPL_LOAD_FIT
+	select SPL_CLK if SPL
+	select SPL_PINCTRL if SPL
+	select SPL_RAM if SPL
+	select SPL_REGMAP if SPL
+	select SPL_SYSCON if SPL
 	select TPL_NEEDS_SEPARATE_TEXT_BASE if TPL
 	select TPL_NEEDS_SEPARATE_STACK if TPL
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
 	select BOARD_LATE_INIT
 	select ROCKCHIP_BROM_HELPER
 	imply TPL_SERIAL_SUPPORT
diff --git a/configs/chromebook_bob_defconfig b/configs/chromebook_bob_defconfig
index bd836acad5..e61e27c992 100644
--- a/configs/chromebook_bob_defconfig
+++ b/configs/chromebook_bob_defconfig
@@ -17,8 +17,6 @@ CONFIG_DEBUG_UART_CLOCK=24000000
 CONFIG_SPL_SPI_FLASH_SUPPORT=y
 CONFIG_SPL_SPI_SUPPORT=y
 CONFIG_DEBUG_UART=y
-CONFIG_FIT=y
-CONFIG_SPL_LOAD_FIT=y
 CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-gru-bob.dtb"
 # CONFIG_DISPLAY_CPUINFO is not set
 CONFIG_DISPLAY_BOARDINFO_LATE=y
@@ -26,8 +24,6 @@ CONFIG_SPL_TEXT_BASE=0xff8c2000
 CONFIG_SPL_STACK_R=y
 CONFIG_SPL_STACK_R_MALLOC_SIMPLE_LEN=0x4000
 CONFIG_SPL_SPI_LOAD=y
-CONFIG_SPL_ATF=y
-CONFIG_SPL_ATF_NO_PLATFORM_PARAM=y
 CONFIG_CMD_BOOTZ=y
 CONFIG_CMD_GPIO=y
 CONFIG_CMD_GPT=y
@@ -46,12 +42,6 @@ CONFIG_SPL_OF_CONTROL=y
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
@@ -71,16 +61,10 @@ CONFIG_SPI_FLASH_GIGADEVICE=y
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
index 94963e4280..f10502cb0e 100644
--- a/configs/evb-rk3399_defconfig
+++ b/configs/evb-rk3399_defconfig
@@ -11,15 +11,11 @@ CONFIG_SPL_STACK_R_ADDR=0x80000
 CONFIG_DEBUG_UART_BASE=0xFF1A0000
 CONFIG_DEBUG_UART_CLOCK=24000000
 CONFIG_DEBUG_UART=y
-CONFIG_FIT=y
-CONFIG_SPL_LOAD_FIT=y
 CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-evb.dtb"
 # CONFIG_DISPLAY_CPUINFO is not set
 CONFIG_DISPLAY_BOARDINFO_LATE=y
 CONFIG_SPL_STACK_R=y
 CONFIG_SPL_STACK_R_MALLOC_SIMPLE_LEN=0x10000
-CONFIG_SPL_ATF=y
-CONFIG_SPL_ATF_NO_PLATFORM_PARAM=y
 CONFIG_TPL=y
 CONFIG_CMD_BOOTZ=y
 CONFIG_CMD_GPT=y
@@ -33,12 +29,6 @@ CONFIG_DEFAULT_DEVICE_TREE="rk3399-evb"
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
@@ -48,16 +38,10 @@ CONFIG_SF_DEFAULT_SPEED=20000000
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
index 926d244fbe..6a1b279cc9 100644
--- a/configs/ficus-rk3399_defconfig
+++ b/configs/ficus-rk3399_defconfig
@@ -11,15 +11,11 @@ CONFIG_SPL_STACK_R_ADDR=0x80000
 CONFIG_DEBUG_UART_BASE=0xFF1A0000
 CONFIG_DEBUG_UART_CLOCK=24000000
 CONFIG_DEBUG_UART=y
-CONFIG_FIT=y
-CONFIG_SPL_LOAD_FIT=y
 # CONFIG_DISPLAY_CPUINFO is not set
 CONFIG_DISPLAY_BOARDINFO_LATE=y
 CONFIG_SPL_TEXT_BASE=0xff8c2000
 CONFIG_SPL_STACK_R=y
 CONFIG_SPL_STACK_R_MALLOC_SIMPLE_LEN=0x4000
-CONFIG_SPL_ATF=y
-CONFIG_SPL_ATF_NO_PLATFORM_PARAM=y
 CONFIG_CMD_BOOTZ=y
 CONFIG_CMD_GPT=y
 CONFIG_CMD_MMC=y
@@ -32,12 +28,6 @@ CONFIG_DEFAULT_DEVICE_TREE="rk3399-ficus"
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
@@ -49,17 +39,11 @@ CONFIG_DM_ETH=y
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
index 5016fb8993..61f05b784f 100644
--- a/configs/firefly-rk3399_defconfig
+++ b/configs/firefly-rk3399_defconfig
@@ -11,15 +11,11 @@ CONFIG_SPL_STACK_R_ADDR=0x80000
 CONFIG_DEBUG_UART_BASE=0xFF1A0000
 CONFIG_DEBUG_UART_CLOCK=24000000
 CONFIG_DEBUG_UART=y
-CONFIG_FIT=y
-CONFIG_SPL_LOAD_FIT=y
 CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-firefly.dtb"
 # CONFIG_DISPLAY_CPUINFO is not set
 CONFIG_DISPLAY_BOARDINFO_LATE=y
 CONFIG_SPL_STACK_R=y
 CONFIG_SPL_STACK_R_MALLOC_SIMPLE_LEN=0x10000
-CONFIG_SPL_ATF=y
-CONFIG_SPL_ATF_NO_PLATFORM_PARAM=y
 CONFIG_TPL=y
 CONFIG_CMD_BOOTZ=y
 CONFIG_CMD_GPT=y
@@ -32,12 +28,6 @@ CONFIG_SPL_OF_CONTROL=y
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
@@ -48,16 +38,10 @@ CONFIG_SF_DEFAULT_SPEED=20000000
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
diff --git a/configs/orangepi-rk3399_defconfig b/configs/orangepi-rk3399_defconfig
index 22ddd8dce3..3f02c89983 100644
--- a/configs/orangepi-rk3399_defconfig
+++ b/configs/orangepi-rk3399_defconfig
@@ -11,16 +11,12 @@ CONFIG_DEBUG_UART_CLOCK=24000000
 CONFIG_SPL_STACK_R_ADDR=0x80000
 CONFIG_DEBUG_UART=y
 CONFIG_NR_DRAM_BANKS=1
-CONFIG_FIT=y
-CONFIG_SPL_LOAD_FIT=y
 CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-orangepi.dtb"
 # CONFIG_DISPLAY_CPUINFO is not set
 CONFIG_DISPLAY_BOARDINFO_LATE=y
 CONFIG_SPL_TEXT_BASE=0xff8c2000
 CONFIG_SPL_STACK_R=y
 CONFIG_SPL_STACK_R_MALLOC_SIMPLE_LEN=0x4000
-CONFIG_SPL_ATF=y
-CONFIG_SPL_ATF_NO_PLATFORM_PARAM=y
 CONFIG_CMD_BOOTZ=y
 CONFIG_CMD_GPT=y
 CONFIG_CMD_MMC=y
@@ -32,12 +28,6 @@ CONFIG_SPL_OF_CONTROL=y
 CONFIG_DEFAULT_DEVICE_TREE="rk3399-orangepi"
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
@@ -47,16 +37,10 @@ CONFIG_MMC_SDHCI_ROCKCHIP=y
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
index 964464ac0f..03f0bfdb59 100644
--- a/configs/puma-rk3399_defconfig
+++ b/configs/puma-rk3399_defconfig
@@ -15,8 +15,6 @@ CONFIG_DEBUG_UART_CLOCK=24000000
 CONFIG_SPL_SPI_FLASH_SUPPORT=y
 CONFIG_SPL_SPI_SUPPORT=y
 CONFIG_DEBUG_UART=y
-CONFIG_FIT=y
-CONFIG_SPL_LOAD_FIT=y
 CONFIG_SPL_FIT_SOURCE="board/theobroma-systems/puma_rk3399/fit_spl_atf.its"
 CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-puma-haikou.dtb"
 CONFIG_MISC_INIT_R=y
@@ -32,8 +30,6 @@ CONFIG_SYS_MMCSD_RAW_MODE_U_BOOT_SECTOR=0x200
 CONFIG_SPL_I2C_SUPPORT=y
 CONFIG_SPL_POWER_SUPPORT=y
 CONFIG_SPL_SPI_LOAD=y
-CONFIG_SPL_ATF=y
-CONFIG_SPL_ATF_NO_PLATFORM_PARAM=y
 CONFIG_CMD_BOOTZ=y
 CONFIG_CMD_GPT=y
 CONFIG_CMD_I2C=y
@@ -52,12 +48,6 @@ CONFIG_OF_LIVE=y
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
@@ -76,20 +66,14 @@ CONFIG_PHY_MICREL_KSZ90X1=y
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
index 48d14ef7d8..1958b7e190 100644
--- a/configs/rock960-rk3399_defconfig
+++ b/configs/rock960-rk3399_defconfig
@@ -11,16 +11,12 @@ CONFIG_SPL_STACK_R_ADDR=0x80000
 CONFIG_DEBUG_UART_BASE=0xFF1A0000
 CONFIG_DEBUG_UART_CLOCK=24000000
 CONFIG_DEBUG_UART=y
-CONFIG_FIT=y
-CONFIG_SPL_LOAD_FIT=y
 CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-rock960.dtb"
 # CONFIG_DISPLAY_CPUINFO is not set
 CONFIG_DISPLAY_BOARDINFO_LATE=y
 CONFIG_SPL_TEXT_BASE=0xff8c2000
 CONFIG_SPL_STACK_R=y
 CONFIG_SPL_STACK_R_MALLOC_SIMPLE_LEN=0x4000
-CONFIG_SPL_ATF=y
-CONFIG_SPL_ATF_NO_PLATFORM_PARAM=y
 CONFIG_SYS_PROMPT="rock960 => "
 CONFIG_CMD_BOOTZ=y
 CONFIG_CMD_GPT=y
@@ -33,12 +29,6 @@ CONFIG_SPL_OF_CONTROL=y
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
@@ -46,16 +36,10 @@ CONFIG_MMC_DW_ROCKCHIP=y
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

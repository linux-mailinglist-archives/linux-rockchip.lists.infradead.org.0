Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DF3316FA6
	for <lists+linux-rockchip@lfdr.de>; Wed,  8 May 2019 05:47:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ki14nrzqPcvp+OOnjZtZJ7kaphZyElHAK/ISlqLPUh0=; b=gz0NP06UEngruJ
	3u5VUMsPnVt0oMrT8PfjMW8p8yrm/VR3gHAcrjCZaqaVxIAf2Q1EuVTrVyi7xuIo346pPVYL+OVxC
	CMyu41vd6hZ0MOdeygDsBuKJzU1whkGqsjNNbKLyg7IYjt/OyJlLJWi6jiadFtmHWBCPq1XZRk4Cn
	VqZOYUorEL/0XIBSLG/ljPSzyvsrphQWQ98D06zqDE1ho0CqT7VHBEDT/kxz0EM+qzSTVka3OHE2/
	who5tUxeKpTd6S4T13sNl1utOcIHJE9bZ0VBUICDjnQAaD+4BDXWy65owxizR8i5h0p1vPFvD+A5W
	VYVA3gB9oQz+ddfdoBHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hODYB-0002MZ-5y; Wed, 08 May 2019 03:47:23 +0000
Received: from regular1.263xmail.com ([211.150.70.195])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hODY5-0002Lp-38
 for linux-rockchip@lists.infradead.org; Wed, 08 May 2019 03:47:21 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.165.252])
 by regular1.263xmail.com (Postfix) with ESMTP id 475E3913;
 Wed,  8 May 2019 11:47:15 +0800 (CST)
X-263anti-spam: KSV:0;BIG:0;
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-KSVirus-check: 0
X-ADDR-CHECKED4: 1
X-ABS-CHECKED: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from [192.168.60.65] (unknown [103.29.142.67])
 by smtp.263.net (postfix) whith ESMTP id
 P12364T140129683371776S1557287228577801_; 
 Wed, 08 May 2019 11:47:12 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <f9802f20a6b5c25ac4e48abdfa16e552>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: u-boot@lists.denx.de
X-SENDER-IP: 103.29.142.67
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v7 03/11] arm: rockchip: rk3399: Move common configs in
 Kconfig
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Akash Gajjar <akash@openedev.com>
References: <20190507183625.5983-1-jagan@amarulasolutions.com>
 <20190507183625.5983-4-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <7b0cef4b-00aa-5ced-df4e-a48953671778@rock-chips.com>
Date: Wed, 8 May 2019 11:47:09 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <20190507183625.5983-4-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_204719_095258_296A8ED1 
X-CRM114-Status: GOOD (  13.40  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
 u-boot@lists.denx.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org



On 05/08/2019 02:36 AM, Jagan Teki wrote:
> Few SPL and U-Boot proper configs are common to all rk3399 target
> defconfigs, move them and select it from platform kconfig.
>
> Moved configs:
> -  SPL_ATF
> -  SPL_ATF_NO_PLATFORM_PARAM if SPL_ATF
> -  SPL_LOAD_FIT
> -  SPL_CLK if SPL
> -  SPL_PINCTRL if SPL
> -  SPL_RAM if SPL
> -  SPL_REGMAP if SPL
> -  SPL_SYSCON if SPL
> -  CLK
> -  FIT
> -  PINCTRL
> -  RAM
> -  REGMAP
> -  SYSCON
> -  DM_PMIC
> -  DM_REGULATOR_FIXED
>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>

Reviewed-by: Kever Yang <kever.yang@rock-chips.com>

Thanks,
- Kever
> ---
>  arch/arm/mach-rockchip/Kconfig    | 16 ++++++++++++++++
>  configs/chromebook_bob_defconfig  | 16 ----------------
>  configs/evb-rk3399_defconfig      | 16 ----------------
>  configs/ficus-rk3399_defconfig    | 16 ----------------
>  configs/firefly-rk3399_defconfig  | 16 ----------------
>  configs/orangepi-rk3399_defconfig | 16 ----------------
>  configs/puma-rk3399_defconfig     | 16 ----------------
>  configs/rock960-rk3399_defconfig  | 16 ----------------
>  8 files changed, 16 insertions(+), 112 deletions(-)
>
> diff --git a/arch/arm/mach-rockchip/Kconfig b/arch/arm/mach-rockchip/Kconfig
> index f5c3329750..c05e3c3f48 100644
> --- a/arch/arm/mach-rockchip/Kconfig
> +++ b/arch/arm/mach-rockchip/Kconfig
> @@ -156,11 +156,27 @@ config ROCKCHIP_RK3399
>  	select SUPPORT_SPL
>  	select SUPPORT_TPL
>  	select SPL
> +	select SPL_ATF
> +	select SPL_ATF_NO_PLATFORM_PARAM if SPL_ATF
> +	select SPL_LOAD_FIT
> +	select SPL_CLK if SPL
> +	select SPL_PINCTRL if SPL
> +	select SPL_RAM if SPL
> +	select SPL_REGMAP if SPL
> +	select SPL_SYSCON if SPL
>  	select TPL_NEEDS_SEPARATE_TEXT_BASE if TPL
>  	select TPL_NEEDS_SEPARATE_STACK if TPL
>  	select SPL_SEPARATE_BSS
>  	select SPL_SERIAL_SUPPORT
>  	select SPL_DRIVERS_MISC_SUPPORT
> +	select CLK
> +	select FIT
> +	select PINCTRL
> +	select RAM
> +	select REGMAP
> +	select SYSCON
> +	select DM_PMIC
> +	select DM_REGULATOR_FIXED
>  	select BOARD_LATE_INIT
>  	select ROCKCHIP_BROM_HELPER
>  	imply TPL_SERIAL_SUPPORT
> diff --git a/configs/chromebook_bob_defconfig b/configs/chromebook_bob_defconfig
> index bd836acad5..e61e27c992 100644
> --- a/configs/chromebook_bob_defconfig
> +++ b/configs/chromebook_bob_defconfig
> @@ -17,8 +17,6 @@ CONFIG_DEBUG_UART_CLOCK=24000000
>  CONFIG_SPL_SPI_FLASH_SUPPORT=y
>  CONFIG_SPL_SPI_SUPPORT=y
>  CONFIG_DEBUG_UART=y
> -CONFIG_FIT=y
> -CONFIG_SPL_LOAD_FIT=y
>  CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-gru-bob.dtb"
>  # CONFIG_DISPLAY_CPUINFO is not set
>  CONFIG_DISPLAY_BOARDINFO_LATE=y
> @@ -26,8 +24,6 @@ CONFIG_SPL_TEXT_BASE=0xff8c2000
>  CONFIG_SPL_STACK_R=y
>  CONFIG_SPL_STACK_R_MALLOC_SIMPLE_LEN=0x4000
>  CONFIG_SPL_SPI_LOAD=y
> -CONFIG_SPL_ATF=y
> -CONFIG_SPL_ATF_NO_PLATFORM_PARAM=y
>  CONFIG_CMD_BOOTZ=y
>  CONFIG_CMD_GPIO=y
>  CONFIG_CMD_GPT=y
> @@ -46,12 +42,6 @@ CONFIG_SPL_OF_CONTROL=y
>  CONFIG_DEFAULT_DEVICE_TREE="rk3399-gru-bob"
>  CONFIG_OF_SPL_REMOVE_PROPS="pinctrl-0 pinctrl-names clock-names interrupt-parent assigned-clocks assigned-clock-rates assigned-clock-parents"
>  CONFIG_ENV_IS_IN_MMC=y
> -CONFIG_REGMAP=y
> -CONFIG_SPL_REGMAP=y
> -CONFIG_SYSCON=y
> -CONFIG_SPL_SYSCON=y
> -CONFIG_CLK=y
> -CONFIG_SPL_CLK=y
>  CONFIG_ROCKCHIP_GPIO=y
>  CONFIG_I2C_CROS_EC_TUNNEL=y
>  CONFIG_SYS_I2C_ROCKCHIP=y
> @@ -71,16 +61,10 @@ CONFIG_SPI_FLASH_GIGADEVICE=y
>  CONFIG_DM_ETH=y
>  CONFIG_ETH_DESIGNWARE=y
>  CONFIG_GMAC_ROCKCHIP=y
> -CONFIG_PINCTRL=y
> -CONFIG_SPL_PINCTRL=y
> -CONFIG_DM_PMIC=y
>  CONFIG_PMIC_RK8XX=y
>  CONFIG_REGULATOR_PWM=y
> -CONFIG_DM_REGULATOR_FIXED=y
>  CONFIG_REGULATOR_RK8XX=y
>  CONFIG_PWM_ROCKCHIP=y
> -CONFIG_RAM=y
> -CONFIG_SPL_RAM=y
>  CONFIG_DEBUG_UART_SHIFT=2
>  CONFIG_ROCKCHIP_SPI=y
>  CONFIG_SYSRESET=y
> diff --git a/configs/evb-rk3399_defconfig b/configs/evb-rk3399_defconfig
> index 94963e4280..f10502cb0e 100644
> --- a/configs/evb-rk3399_defconfig
> +++ b/configs/evb-rk3399_defconfig
> @@ -11,15 +11,11 @@ CONFIG_SPL_STACK_R_ADDR=0x80000
>  CONFIG_DEBUG_UART_BASE=0xFF1A0000
>  CONFIG_DEBUG_UART_CLOCK=24000000
>  CONFIG_DEBUG_UART=y
> -CONFIG_FIT=y
> -CONFIG_SPL_LOAD_FIT=y
>  CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-evb.dtb"
>  # CONFIG_DISPLAY_CPUINFO is not set
>  CONFIG_DISPLAY_BOARDINFO_LATE=y
>  CONFIG_SPL_STACK_R=y
>  CONFIG_SPL_STACK_R_MALLOC_SIMPLE_LEN=0x10000
> -CONFIG_SPL_ATF=y
> -CONFIG_SPL_ATF_NO_PLATFORM_PARAM=y
>  CONFIG_TPL=y
>  CONFIG_CMD_BOOTZ=y
>  CONFIG_CMD_GPT=y
> @@ -33,12 +29,6 @@ CONFIG_DEFAULT_DEVICE_TREE="rk3399-evb"
>  CONFIG_OF_SPL_REMOVE_PROPS="pinctrl-0 pinctrl-names clock-names interrupt-parent assigned-clocks assigned-clock-rates assigned-clock-parents"
>  CONFIG_ENV_IS_IN_MMC=y
>  CONFIG_NET_RANDOM_ETHADDR=y
> -CONFIG_REGMAP=y
> -CONFIG_SPL_REGMAP=y
> -CONFIG_SYSCON=y
> -CONFIG_SPL_SYSCON=y
> -CONFIG_CLK=y
> -CONFIG_SPL_CLK=y
>  CONFIG_ROCKCHIP_GPIO=y
>  CONFIG_SYS_I2C_ROCKCHIP=y
>  CONFIG_MMC_DW=y
> @@ -48,16 +38,10 @@ CONFIG_SF_DEFAULT_SPEED=20000000
>  CONFIG_DM_ETH=y
>  CONFIG_ETH_DESIGNWARE=y
>  CONFIG_GMAC_ROCKCHIP=y
> -CONFIG_PINCTRL=y
> -CONFIG_SPL_PINCTRL=y
> -CONFIG_DM_PMIC=y
>  CONFIG_PMIC_RK8XX=y
>  CONFIG_REGULATOR_PWM=y
> -CONFIG_DM_REGULATOR_FIXED=y
>  CONFIG_REGULATOR_RK8XX=y
>  CONFIG_PWM_ROCKCHIP=y
> -CONFIG_RAM=y
> -CONFIG_SPL_RAM=y
>  CONFIG_BAUDRATE=1500000
>  CONFIG_DEBUG_UART_SHIFT=2
>  CONFIG_SYSRESET=y
> diff --git a/configs/ficus-rk3399_defconfig b/configs/ficus-rk3399_defconfig
> index 926d244fbe..6a1b279cc9 100644
> --- a/configs/ficus-rk3399_defconfig
> +++ b/configs/ficus-rk3399_defconfig
> @@ -11,15 +11,11 @@ CONFIG_SPL_STACK_R_ADDR=0x80000
>  CONFIG_DEBUG_UART_BASE=0xFF1A0000
>  CONFIG_DEBUG_UART_CLOCK=24000000
>  CONFIG_DEBUG_UART=y
> -CONFIG_FIT=y
> -CONFIG_SPL_LOAD_FIT=y
>  # CONFIG_DISPLAY_CPUINFO is not set
>  CONFIG_DISPLAY_BOARDINFO_LATE=y
>  CONFIG_SPL_TEXT_BASE=0xff8c2000
>  CONFIG_SPL_STACK_R=y
>  CONFIG_SPL_STACK_R_MALLOC_SIMPLE_LEN=0x4000
> -CONFIG_SPL_ATF=y
> -CONFIG_SPL_ATF_NO_PLATFORM_PARAM=y
>  CONFIG_CMD_BOOTZ=y
>  CONFIG_CMD_GPT=y
>  CONFIG_CMD_MMC=y
> @@ -32,12 +28,6 @@ CONFIG_DEFAULT_DEVICE_TREE="rk3399-ficus"
>  CONFIG_OF_SPL_REMOVE_PROPS="pinctrl-0 pinctrl-names clock-names interrupt-parent assigned-clocks assigned-clock-rates assigned-clock-parents"
>  CONFIG_ENV_IS_IN_MMC=y
>  CONFIG_NET_RANDOM_ETHADDR=y
> -CONFIG_REGMAP=y
> -CONFIG_SPL_REGMAP=y
> -CONFIG_SYSCON=y
> -CONFIG_SPL_SYSCON=y
> -CONFIG_CLK=y
> -CONFIG_SPL_CLK=y
>  CONFIG_ROCKCHIP_GPIO=y
>  CONFIG_SYS_I2C_ROCKCHIP=y
>  CONFIG_MMC_DW=y
> @@ -49,17 +39,11 @@ CONFIG_DM_ETH=y
>  CONFIG_ETH_DESIGNWARE=y
>  CONFIG_RGMII=y
>  CONFIG_GMAC_ROCKCHIP=y
> -CONFIG_PINCTRL=y
> -CONFIG_SPL_PINCTRL=y
> -CONFIG_DM_PMIC=y
>  CONFIG_PMIC_RK8XX=y
>  CONFIG_REGULATOR_PWM=y
> -CONFIG_DM_REGULATOR_FIXED=y
>  CONFIG_DM_REGULATOR_GPIO=y
>  CONFIG_REGULATOR_RK8XX=y
>  CONFIG_PWM_ROCKCHIP=y
> -CONFIG_RAM=y
> -CONFIG_SPL_RAM=y
>  CONFIG_BAUDRATE=1500000
>  CONFIG_DEBUG_UART_SHIFT=2
>  CONFIG_SYSRESET=y
> diff --git a/configs/firefly-rk3399_defconfig b/configs/firefly-rk3399_defconfig
> index 5016fb8993..61f05b784f 100644
> --- a/configs/firefly-rk3399_defconfig
> +++ b/configs/firefly-rk3399_defconfig
> @@ -11,15 +11,11 @@ CONFIG_SPL_STACK_R_ADDR=0x80000
>  CONFIG_DEBUG_UART_BASE=0xFF1A0000
>  CONFIG_DEBUG_UART_CLOCK=24000000
>  CONFIG_DEBUG_UART=y
> -CONFIG_FIT=y
> -CONFIG_SPL_LOAD_FIT=y
>  CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-firefly.dtb"
>  # CONFIG_DISPLAY_CPUINFO is not set
>  CONFIG_DISPLAY_BOARDINFO_LATE=y
>  CONFIG_SPL_STACK_R=y
>  CONFIG_SPL_STACK_R_MALLOC_SIMPLE_LEN=0x10000
> -CONFIG_SPL_ATF=y
> -CONFIG_SPL_ATF_NO_PLATFORM_PARAM=y
>  CONFIG_TPL=y
>  CONFIG_CMD_BOOTZ=y
>  CONFIG_CMD_GPT=y
> @@ -32,12 +28,6 @@ CONFIG_SPL_OF_CONTROL=y
>  CONFIG_DEFAULT_DEVICE_TREE="rk3399-firefly"
>  CONFIG_OF_SPL_REMOVE_PROPS="pinctrl-0 pinctrl-names clock-names interrupt-parent assigned-clocks assigned-clock-rates assigned-clock-parents"
>  CONFIG_ENV_IS_IN_MMC=y
> -CONFIG_REGMAP=y
> -CONFIG_SPL_REGMAP=y
> -CONFIG_SYSCON=y
> -CONFIG_SPL_SYSCON=y
> -CONFIG_CLK=y
> -CONFIG_SPL_CLK=y
>  CONFIG_ROCKCHIP_GPIO=y
>  CONFIG_SYS_I2C_ROCKCHIP=y
>  CONFIG_MMC_DW=y
> @@ -48,16 +38,10 @@ CONFIG_SF_DEFAULT_SPEED=20000000
>  CONFIG_DM_ETH=y
>  CONFIG_ETH_DESIGNWARE=y
>  CONFIG_GMAC_ROCKCHIP=y
> -CONFIG_PINCTRL=y
> -CONFIG_SPL_PINCTRL=y
> -CONFIG_DM_PMIC=y
>  CONFIG_PMIC_RK8XX=y
>  CONFIG_REGULATOR_PWM=y
> -CONFIG_DM_REGULATOR_FIXED=y
>  CONFIG_REGULATOR_RK8XX=y
>  CONFIG_PWM_ROCKCHIP=y
> -CONFIG_RAM=y
> -CONFIG_SPL_RAM=y
>  CONFIG_BAUDRATE=1500000
>  CONFIG_DEBUG_UART_SHIFT=2
>  CONFIG_SYSRESET=y
> diff --git a/configs/orangepi-rk3399_defconfig b/configs/orangepi-rk3399_defconfig
> index 22ddd8dce3..3f02c89983 100644
> --- a/configs/orangepi-rk3399_defconfig
> +++ b/configs/orangepi-rk3399_defconfig
> @@ -11,16 +11,12 @@ CONFIG_DEBUG_UART_CLOCK=24000000
>  CONFIG_SPL_STACK_R_ADDR=0x80000
>  CONFIG_DEBUG_UART=y
>  CONFIG_NR_DRAM_BANKS=1
> -CONFIG_FIT=y
> -CONFIG_SPL_LOAD_FIT=y
>  CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-orangepi.dtb"
>  # CONFIG_DISPLAY_CPUINFO is not set
>  CONFIG_DISPLAY_BOARDINFO_LATE=y
>  CONFIG_SPL_TEXT_BASE=0xff8c2000
>  CONFIG_SPL_STACK_R=y
>  CONFIG_SPL_STACK_R_MALLOC_SIMPLE_LEN=0x4000
> -CONFIG_SPL_ATF=y
> -CONFIG_SPL_ATF_NO_PLATFORM_PARAM=y
>  CONFIG_CMD_BOOTZ=y
>  CONFIG_CMD_GPT=y
>  CONFIG_CMD_MMC=y
> @@ -32,12 +28,6 @@ CONFIG_SPL_OF_CONTROL=y
>  CONFIG_DEFAULT_DEVICE_TREE="rk3399-orangepi"
>  CONFIG_OF_SPL_REMOVE_PROPS="pinctrl-0 pinctrl-names clock-names interrupt-parent assigned-clocks assigned-clock-rates assigned-clock-parents"
>  CONFIG_ENV_IS_IN_MMC=y
> -CONFIG_REGMAP=y
> -CONFIG_SPL_REGMAP=y
> -CONFIG_SYSCON=y
> -CONFIG_SPL_SYSCON=y
> -CONFIG_CLK=y
> -CONFIG_SPL_CLK=y
>  CONFIG_ROCKCHIP_GPIO=y
>  CONFIG_SYS_I2C_ROCKCHIP=y
>  CONFIG_MMC_DW=y
> @@ -47,16 +37,10 @@ CONFIG_MMC_SDHCI_ROCKCHIP=y
>  CONFIG_DM_ETH=y
>  CONFIG_ETH_DESIGNWARE=y
>  CONFIG_GMAC_ROCKCHIP=y
> -CONFIG_PINCTRL=y
> -CONFIG_SPL_PINCTRL=y
> -CONFIG_DM_PMIC=y
>  CONFIG_PMIC_RK8XX=y
>  CONFIG_REGULATOR_PWM=y
> -CONFIG_DM_REGULATOR_FIXED=y
>  CONFIG_REGULATOR_RK8XX=y
>  CONFIG_PWM_ROCKCHIP=y
> -CONFIG_RAM=y
> -CONFIG_SPL_RAM=y
>  CONFIG_BAUDRATE=1500000
>  CONFIG_DEBUG_UART_SHIFT=2
>  CONFIG_SYSRESET=y
> diff --git a/configs/puma-rk3399_defconfig b/configs/puma-rk3399_defconfig
> index 964464ac0f..03f0bfdb59 100644
> --- a/configs/puma-rk3399_defconfig
> +++ b/configs/puma-rk3399_defconfig
> @@ -15,8 +15,6 @@ CONFIG_DEBUG_UART_CLOCK=24000000
>  CONFIG_SPL_SPI_FLASH_SUPPORT=y
>  CONFIG_SPL_SPI_SUPPORT=y
>  CONFIG_DEBUG_UART=y
> -CONFIG_FIT=y
> -CONFIG_SPL_LOAD_FIT=y
>  CONFIG_SPL_FIT_SOURCE="board/theobroma-systems/puma_rk3399/fit_spl_atf.its"
>  CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-puma-haikou.dtb"
>  CONFIG_MISC_INIT_R=y
> @@ -32,8 +30,6 @@ CONFIG_SYS_MMCSD_RAW_MODE_U_BOOT_SECTOR=0x200
>  CONFIG_SPL_I2C_SUPPORT=y
>  CONFIG_SPL_POWER_SUPPORT=y
>  CONFIG_SPL_SPI_LOAD=y
> -CONFIG_SPL_ATF=y
> -CONFIG_SPL_ATF_NO_PLATFORM_PARAM=y
>  CONFIG_CMD_BOOTZ=y
>  CONFIG_CMD_GPT=y
>  CONFIG_CMD_I2C=y
> @@ -52,12 +48,6 @@ CONFIG_OF_LIVE=y
>  CONFIG_DEFAULT_DEVICE_TREE="rk3399-puma-ddr1600"
>  CONFIG_OF_SPL_REMOVE_PROPS="pinctrl-0 pinctrl-names interrupt-parent assigned-clocks assigned-clock-rates assigned-clock-parents"
>  CONFIG_ENV_IS_IN_MMC=y
> -CONFIG_REGMAP=y
> -CONFIG_SPL_REGMAP=y
> -CONFIG_SYSCON=y
> -CONFIG_SPL_SYSCON=y
> -CONFIG_CLK=y
> -CONFIG_SPL_CLK=y
>  CONFIG_ROCKCHIP_GPIO=y
>  CONFIG_SYS_I2C_ROCKCHIP=y
>  CONFIG_MISC=y
> @@ -76,20 +66,14 @@ CONFIG_PHY_MICREL_KSZ90X1=y
>  CONFIG_DM_ETH=y
>  CONFIG_ETH_DESIGNWARE=y
>  CONFIG_GMAC_ROCKCHIP=y
> -CONFIG_PINCTRL=y
> -CONFIG_SPL_PINCTRL=y
> -CONFIG_DM_PMIC=y
>  CONFIG_DM_PMIC_FAN53555=y
>  CONFIG_PMIC_RK8XX=y
>  CONFIG_SPL_DM_REGULATOR=y
>  CONFIG_REGULATOR_PWM=y
> -CONFIG_DM_REGULATOR_FIXED=y
>  CONFIG_SPL_DM_REGULATOR_FIXED=y
>  CONFIG_DM_REGULATOR_GPIO=y
>  CONFIG_REGULATOR_RK8XX=y
>  CONFIG_PWM_ROCKCHIP=y
> -CONFIG_RAM=y
> -CONFIG_SPL_RAM=y
>  CONFIG_DM_RTC=y
>  CONFIG_RTC_ISL1208=y
>  CONFIG_DEBUG_UART_SHIFT=2
> diff --git a/configs/rock960-rk3399_defconfig b/configs/rock960-rk3399_defconfig
> index 48d14ef7d8..1958b7e190 100644
> --- a/configs/rock960-rk3399_defconfig
> +++ b/configs/rock960-rk3399_defconfig
> @@ -11,16 +11,12 @@ CONFIG_SPL_STACK_R_ADDR=0x80000
>  CONFIG_DEBUG_UART_BASE=0xFF1A0000
>  CONFIG_DEBUG_UART_CLOCK=24000000
>  CONFIG_DEBUG_UART=y
> -CONFIG_FIT=y
> -CONFIG_SPL_LOAD_FIT=y
>  CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-rock960.dtb"
>  # CONFIG_DISPLAY_CPUINFO is not set
>  CONFIG_DISPLAY_BOARDINFO_LATE=y
>  CONFIG_SPL_TEXT_BASE=0xff8c2000
>  CONFIG_SPL_STACK_R=y
>  CONFIG_SPL_STACK_R_MALLOC_SIMPLE_LEN=0x4000
> -CONFIG_SPL_ATF=y
> -CONFIG_SPL_ATF_NO_PLATFORM_PARAM=y
>  CONFIG_SYS_PROMPT="rock960 => "
>  CONFIG_CMD_BOOTZ=y
>  CONFIG_CMD_GPT=y
> @@ -33,12 +29,6 @@ CONFIG_SPL_OF_CONTROL=y
>  CONFIG_DEFAULT_DEVICE_TREE="rk3399-rock960"
>  CONFIG_OF_SPL_REMOVE_PROPS="pinctrl-0 pinctrl-names clock-names interrupt-parent assigned-clocks assigned-clock-rates assigned-clock-parents"
>  CONFIG_ENV_IS_IN_MMC=y
> -CONFIG_REGMAP=y
> -CONFIG_SPL_REGMAP=y
> -CONFIG_SYSCON=y
> -CONFIG_SPL_SYSCON=y
> -CONFIG_CLK=y
> -CONFIG_SPL_CLK=y
>  CONFIG_ROCKCHIP_GPIO=y
>  CONFIG_SYS_I2C_ROCKCHIP=y
>  CONFIG_MMC_DW=y
> @@ -46,16 +36,10 @@ CONFIG_MMC_DW_ROCKCHIP=y
>  CONFIG_MMC_SDHCI=y
>  CONFIG_MMC_SDHCI_ROCKCHIP=y
>  CONFIG_SF_DEFAULT_SPEED=20000000
> -CONFIG_PINCTRL=y
> -CONFIG_SPL_PINCTRL=y
> -CONFIG_DM_PMIC=y
>  CONFIG_PMIC_RK8XX=y
>  CONFIG_REGULATOR_PWM=y
> -CONFIG_DM_REGULATOR_FIXED=y
>  CONFIG_REGULATOR_RK8XX=y
>  CONFIG_PWM_ROCKCHIP=y
> -CONFIG_RAM=y
> -CONFIG_SPL_RAM=y
>  CONFIG_BAUDRATE=1500000
>  CONFIG_DEBUG_UART_SHIFT=2
>  CONFIG_SYSRESET=y




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

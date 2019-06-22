Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5030B4F605
	for <lists+linux-rockchip@lfdr.de>; Sat, 22 Jun 2019 15:47:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z20AVlVhkIK/sAUKJ94epb7SxGM1F5xG/9v/e2mvj3U=; b=qvuvrXT8XbApb1
	q19Jcxzr9HdFPJYhjg6hpLCCzHvNCPA180pR3tZz5EDxyAr1SfrOkXBr6PXZ4IPrj4SPmUQPt1oif
	WpJJJdt8bTrlBIuL/ZU65LzrH37bwYtxu2joht1w+vsKGwdof7mekDQzSTnbfExu7zhe5+G4BAOfZ
	3bqopqQS3cZGmfPCu/7rHOiornQgfPhODGhNmG/n9A8lzOUkUUH6xWiYyF2S013Rbo/avF7HeyZPb
	bNyKNnCdPbnkX7S81OELEKhuuDrXWtsWAO6Zeh7a4F+5WTrkd+VP+YpJB9vOc/Bx+hzziPT0k5Ra9
	TpI3LZ35fospmzoTWxMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hegMO-00065k-Nt; Sat, 22 Jun 2019 13:47:16 +0000
Received: from regular1.263xmail.com ([211.150.70.198])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hegMK-00064t-Vb
 for linux-rockchip@lists.infradead.org; Sat, 22 Jun 2019 13:47:15 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.167.131])
 by regular1.263xmail.com (Postfix) with ESMTP id 830FA20C;
 Sat, 22 Jun 2019 21:47:07 +0800 (CST)
X-263anti-spam: KSV:0;BIG:0;
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-KSVirus-check: 0
X-ADDR-CHECKED4: 1
X-ABS-CHECKED: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from [192.168.1.3] (unknown [110.125.168.244])
 by smtp.263.net (postfix) whith ESMTP id
 P6213T139888215189248S1561211226359334_; 
 Sat, 22 Jun 2019 21:47:07 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <1192df64b08accf0d247aa35e451cadb>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 110.125.168.244
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v2 2/8] rockchip: rk3399: Support common spl_board_init
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>, u-boot@lists.denx.de
References: <20190620185506.11449-1-jagan@amarulasolutions.com>
 <20190620185506.11449-3-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <7672d964-fc52-4d58-97f7-0a19d245990b@rock-chips.com>
Date: Sat, 22 Jun 2019 21:47:06 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <20190620185506.11449-3-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190622_064713_378437_2442B433 
X-CRM114-Status: GOOD (  22.38  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.198 listed in list.dnswl.org]
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
Cc: linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Jagan,


On 06/21/2019 02:55 AM, Jagan Teki wrote:
> Support common spl_board_init by moving code from puma
> board file into, common rk3399-board-spl.c.
>
> Part of the code has sysreset-gpio, regulators_enable_boot_on
> but right now only puma board is using this with relevant
> config options rest remains common for all targets.
>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>

Reviewed-by: Kever Yang <kever.yang@rock-chips.com>

Thanks,
- Kever
> ---
>  arch/arm/mach-rockchip/rk3399-board-spl.c     | 63 +++++++++++++++++++
>  board/rockchip/evb_rk3399/evb-rk3399.c        |  8 ---
>  .../puma_rk3399/puma-rk3399.c                 | 58 -----------------
>  board/vamrs/rock960_rk3399/rock960-rk3399.c   |  8 ---
>  4 files changed, 63 insertions(+), 74 deletions(-)
>
> diff --git a/arch/arm/mach-rockchip/rk3399-board-spl.c b/arch/arm/mach-rockchip/rk3399-board-spl.c
> index 800ca80022..65c98b697d 100644
> --- a/arch/arm/mach-rockchip/rk3399-board-spl.c
> +++ b/arch/arm/mach-rockchip/rk3399-board-spl.c
> @@ -11,13 +11,16 @@
>  #include <spl.h>
>  #include <spl_gpio.h>
>  #include <syscon.h>
> +#include <asm/gpio.h>
>  #include <asm/io.h>
>  #include <asm/arch-rockchip/bootrom.h>
>  #include <asm/arch-rockchip/clock.h>
> +#include <asm/arch-rockchip/cru_rk3399.h>
>  #include <asm/arch-rockchip/grf_rk3399.h>
>  #include <asm/arch-rockchip/hardware.h>
>  #include <asm/arch-rockchip/periph.h>
>  #include <asm/arch-rockchip/sys_proto.h>
> +#include <power/regulator.h>
>  #include <dm/pinctrl.h>
>  
>  void board_return_to_bootrom(void)
> @@ -202,6 +205,66 @@ void board_init_f(ulong dummy)
>  	}
>  }
>  
> +#if defined(SPL_GPIO_SUPPORT)
> +static void rk3399_force_power_on_reset(void)
> +{
> +	ofnode node;
> +	struct gpio_desc sysreset_gpio;
> +
> +	debug("%s: trying to force a power-on reset\n", __func__);
> +
> +	node = ofnode_path("/config");
> +	if (!ofnode_valid(node)) {
> +		debug("%s: no /config node?\n", __func__);
> +		return;
> +	}
> +
> +	if (gpio_request_by_name_nodev(node, "sysreset-gpio", 0,
> +				       &sysreset_gpio, GPIOD_IS_OUT)) {
> +		debug("%s: could not find a /config/sysreset-gpio\n", __func__);
> +		return;
> +	}
> +
> +	dm_gpio_set_value(&sysreset_gpio, 1);
> +}
> +#endif
> +
> +void spl_board_init(void)
> +{
> +#if defined(SPL_GPIO_SUPPORT)
> +	struct rk3399_cru *cru = rockchip_get_cru();
> +
> +	/*
> +	 * The RK3399 resets only 'almost all logic' (see also in the TRM
> +	 * "3.9.4 Global software reset"), when issuing a software reset.
> +	 * This may cause issues during boot-up for some configurations of
> +	 * the application software stack.
> +	 *
> +	 * To work around this, we test whether the last reset reason was
> +	 * a power-on reset and (if not) issue an overtemp-reset to reset
> +	 * the entire module.
> +	 *
> +	 * While this was previously fixed by modifying the various places
> +	 * that could generate a software reset (e.g. U-Boot's sysreset
> +	 * driver, the ATF or Linux), we now have it here to ensure that
> +	 * we no longer have to track this through the various components.
> +	 */
> +	if (cru->glb_rst_st != 0)
> +		rk3399_force_power_on_reset();
> +#endif
> +
> +#if defined(SPL_DM_REGULATOR)
> +	/*
> +	 * Turning the eMMC and SPI back on (if disabled via the Qseven
> +	 * BIOS_ENABLE) signal is done through a always-on regulator).
> +	 */
> +	if (regulators_enable_boot_on(false))
> +		debug("%s: Cannot enable boot on regulator\n", __func__);
> +#endif
> +
> +	preloader_console_init();
> +}
> +
>  #ifdef CONFIG_SPL_LOAD_FIT
>  int board_fit_config_name_match(const char *name)
>  {
> diff --git a/board/rockchip/evb_rk3399/evb-rk3399.c b/board/rockchip/evb_rk3399/evb-rk3399.c
> index 769b5d146f..c600553ff6 100644
> --- a/board/rockchip/evb_rk3399/evb-rk3399.c
> +++ b/board/rockchip/evb_rk3399/evb-rk3399.c
> @@ -8,7 +8,6 @@
>  #include <dm/pinctrl.h>
>  #include <asm/arch-rockchip/periph.h>
>  #include <power/regulator.h>
> -#include <spl.h>
>  
>  int board_init(void)
>  {
> @@ -64,10 +63,3 @@ int board_init(void)
>  out:
>  	return 0;
>  }
> -
> -void spl_board_init(void)
> -{
> -	preloader_console_init();
> -
> -	return;
> -}
> diff --git a/board/theobroma-systems/puma_rk3399/puma-rk3399.c b/board/theobroma-systems/puma_rk3399/puma-rk3399.c
> index c6b509c109..251cd2d566 100644
> --- a/board/theobroma-systems/puma_rk3399/puma-rk3399.c
> +++ b/board/theobroma-systems/puma_rk3399/puma-rk3399.c
> @@ -13,10 +13,8 @@
>  #include <dm/pinctrl.h>
>  #include <dm/uclass-internal.h>
>  #include <asm/io.h>
> -#include <asm/gpio.h>
>  #include <asm/setup.h>
>  #include <asm/arch-rockchip/clock.h>
> -#include <asm/arch-rockchip/cru_rk3399.h>
>  #include <asm/arch-rockchip/hardware.h>
>  #include <asm/arch-rockchip/grf_rk3399.h>
>  #include <asm/arch-rockchip/periph.h>
> @@ -38,62 +36,6 @@ int board_init(void)
>  	return 0;
>  }
>  
> -static void rk3399_force_power_on_reset(void)
> -{
> -	ofnode node;
> -	struct gpio_desc sysreset_gpio;
> -
> -	debug("%s: trying to force a power-on reset\n", __func__);
> -
> -	node = ofnode_path("/config");
> -	if (!ofnode_valid(node)) {
> -		debug("%s: no /config node?\n", __func__);
> -		return;
> -	}
> -
> -	if (gpio_request_by_name_nodev(node, "sysreset-gpio", 0,
> -				       &sysreset_gpio, GPIOD_IS_OUT)) {
> -		debug("%s: could not find a /config/sysreset-gpio\n", __func__);
> -		return;
> -	}
> -
> -	dm_gpio_set_value(&sysreset_gpio, 1);
> -}
> -
> -void spl_board_init(void)
> -{
> -	int  ret;
> -	struct rk3399_cru *cru = rockchip_get_cru();
> -
> -	/*
> -	 * The RK3399 resets only 'almost all logic' (see also in the TRM
> -	 * "3.9.4 Global software reset"), when issuing a software reset.
> -	 * This may cause issues during boot-up for some configurations of
> -	 * the application software stack.
> -	 *
> -	 * To work around this, we test whether the last reset reason was
> -	 * a power-on reset and (if not) issue an overtemp-reset to reset
> -	 * the entire module.
> -	 *
> -	 * While this was previously fixed by modifying the various places
> -	 * that could generate a software reset (e.g. U-Boot's sysreset
> -	 * driver, the ATF or Linux), we now have it here to ensure that
> -	 * we no longer have to track this through the various components.
> -	 */
> -	if (cru->glb_rst_st != 0)
> -		rk3399_force_power_on_reset();
> -
> -	/*
> -	 * Turning the eMMC and SPI back on (if disabled via the Qseven
> -	 * BIOS_ENABLE) signal is done through a always-on regulator).
> -	 */
> -	ret = regulators_enable_boot_on(false);
> -	if (ret)
> -		debug("%s: Cannot enable boot on regulator\n", __func__);
> -
> -	preloader_console_init();
> -}
> -
>  static void setup_macaddr(void)
>  {
>  #if CONFIG_IS_ENABLED(CMD_NET)
> diff --git a/board/vamrs/rock960_rk3399/rock960-rk3399.c b/board/vamrs/rock960_rk3399/rock960-rk3399.c
> index 018e4b55b8..2eb7120e84 100644
> --- a/board/vamrs/rock960_rk3399/rock960-rk3399.c
> +++ b/board/vamrs/rock960_rk3399/rock960-rk3399.c
> @@ -6,7 +6,6 @@
>  #include <common.h>
>  #include <dm.h>
>  #include <power/regulator.h>
> -#include <spl.h>
>  
>  int board_init(void)
>  {
> @@ -18,10 +17,3 @@ int board_init(void)
>  
>  	return 0;
>  }
> -
> -void spl_board_init(void)
> -{
> -	preloader_console_init();
> -
> -	return;
> -}




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

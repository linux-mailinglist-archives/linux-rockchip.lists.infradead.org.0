Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4738010C33C
	for <lists+linux-rockchip@lfdr.de>; Thu, 28 Nov 2019 05:31:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gKH/bgysfG0Kebs3ua5/5oU5Q8avZyUmaIFFow2VrAE=; b=gcMbnTEaXibX85
	WPx14kTM7r0//Z8PTv1GBtQCscgh+iDIW7LUPYQCExuXwZAL+/1KCC3JCEN/FQ+kKAM2nPyjwh/HK
	J/V76RSDwUGHH4JbUPM3lHeX+6ZtWLkS2sv66wLj6U8GkEX1xbOKeIxNbpXlRDGZLshZz3yib1qt4
	DSEGWqsXSHtqGhzTnoc1doVOg460DeLO8bOVfJ2c0Xt4lIsnVA7jmj/1qFMt85OPvpsFDeYXNwyJl
	b+m9RtCUaNkQfI9tDx6v9xqdXrVKnudhmU4JNOP4LlrqI7OOkMxu3Cc29tMMz84UD4H8qJYi9+SER
	aE3C8+EWBEPhGSf6cDZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaBSa-00018s-UZ; Thu, 28 Nov 2019 04:31:20 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaBSX-00018F-P8
 for linux-rockchip@lists.infradead.org; Thu, 28 Nov 2019 04:31:19 +0000
Received: by mail-oi1-x244.google.com with SMTP id x21so15077868oic.0
 for <linux-rockchip@lists.infradead.org>; Wed, 27 Nov 2019 20:31:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ktifudJxOEcAWXbkhXWyzQa4RuYOv10eTZWRqqIzrXg=;
 b=Yo3hRZiqPY8zGm8/0dKBy+4M2Fy4P5Rfog7BxLjVeF5Dk18jo3wQqasqqLs22cMq1T
 SDm0hTE7br3wXW6rsAIj54f3yN9FPp2VQ5HKA4/2jIuMxu4DUYcIHiD5Jv8ikyQG+e8j
 EtT8xRZmW8D/OzmUA5Zm5R1mrPLPhEdwHdPuIjw862dqb8mKz43ZoXVTWdeOuP+qw3tA
 zvj34hjdgErbZXsWv/Qz/GDhAGKo26nsNT21Mds6yvm/GOEuc8xtl/gXyMniMteeBYjB
 2/lDLU2aKXsAsNppcEGUHCMPsC1YBHfLhix1Am3LhgtqxPdue+2nwQdcBegzyX+wVJw7
 tJJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ktifudJxOEcAWXbkhXWyzQa4RuYOv10eTZWRqqIzrXg=;
 b=riTFR+ZkUlM1pPAd6qSx8w9Ke6mqliyfqP7waUBlCPMi2fPtpm7BKecv4SLGndjaGG
 VJeXuhmVsd75oiP+oAshOtrMxF01Nc+IZbSAosAPovISQE9RT7+uDEjsMtIBglktmfFl
 MHrEAt3tOeWmS6/WrD9wjkjGt3QDZ7krKfcT/4y4PpzIhsHZ0o4BSEYK8z18ru55+Mx5
 FwoBLx0nBTW9CzTrk+LYXQce80FqiGeS1N3gY++3Mnoe/dlreotJaH2VtrysFom/DddJ
 6R+LoXIeqGM3aRgN1SPTfe6BgPHm+0t8mrER/ZSboBTmw2HVwx+euPbLecA6gMlOGxjh
 bBSw==
X-Gm-Message-State: APjAAAUHyVreSfmBizMkP90k0YrCkhOcqjRS7eFRFDg8MhsnRmKoDJG4
 hFwxJUw5Czpht5M8QzrUivG3T5OYW3nIM3uhM0Q=
X-Google-Smtp-Source: APXvYqwntTyh5FOyB+270pEmqZHR7hob2j49GWIb+C4HnTnvCr2QFWY+rwAeKqk2FYjUb1RVBupxYUfR2ltUEUpzk8w=
X-Received: by 2002:aca:6547:: with SMTP id j7mr7125257oiw.98.1574915476721;
 Wed, 27 Nov 2019 20:31:16 -0800 (PST)
MIME-Version: 1.0
References: <20190620185506.11449-1-jagan@amarulasolutions.com>
 <20190620185506.11449-3-jagan@amarulasolutions.com>
In-Reply-To: <20190620185506.11449-3-jagan@amarulasolutions.com>
From: Vasily Khoruzhick <anarsoul@gmail.com>
Date: Wed, 27 Nov 2019 20:30:50 -0800
Message-ID: <CA+E=qVcCTvW-tR_Okk-naeTR4yNKRnKmY=rPLUSmusazF+eaXQ@mail.gmail.com>
Subject: Re: [U-Boot] [PATCH v2 2/8] rockchip: rk3399: Support common
 spl_board_init
To: Jagan Teki <jagan@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_203117_845165_F5D5EF6D 
X-CRM114-Status: GOOD (  23.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (anarsoul[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
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
Cc: linux-rockchip@lists.infradead.org, Simon Glass <sjg@chromium.org>,
 Kever Yang <kever.yang@rock-chips.com>,
 U-Boot Mailing List <u-boot@lists.denx.de>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 linux-amarula@amarulasolutions.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Thu, Jun 20, 2019 at 11:57 AM Jagan Teki <jagan@amarulasolutions.com> wrote:
>
> Support common spl_board_init by moving code from puma
> board file into, common rk3399-board-spl.c.
>
> Part of the code has sysreset-gpio, regulators_enable_boot_on
> but right now only puma board is using this with relevant
> config options rest remains common for all targets.
>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
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
>         }
>  }
>
> +#if defined(SPL_GPIO_SUPPORT)

That hasn't been compile tested since "defined(SPL_GPIO_SUPPORT)"
ensures that this code never compiles.

It should be CONFIG_SPL_GPIO_SUPPORT instead, and it won't compile due
to missing header in this case.

Unfortunately code won't work even with missing include added since
something else is broken and it fails to request gpio.

> +static void rk3399_force_power_on_reset(void)
> +{
> +       ofnode node;
> +       struct gpio_desc sysreset_gpio;
> +
> +       debug("%s: trying to force a power-on reset\n", __func__);
> +
> +       node = ofnode_path("/config");
> +       if (!ofnode_valid(node)) {
> +               debug("%s: no /config node?\n", __func__);
> +               return;
> +       }
> +
> +       if (gpio_request_by_name_nodev(node, "sysreset-gpio", 0,
> +                                      &sysreset_gpio, GPIOD_IS_OUT)) {
> +               debug("%s: could not find a /config/sysreset-gpio\n", __func__);
> +               return;
> +       }
> +
> +       dm_gpio_set_value(&sysreset_gpio, 1);
> +}
> +#endif
> +
> +void spl_board_init(void)
> +{
> +#if defined(SPL_GPIO_SUPPORT)
> +       struct rk3399_cru *cru = rockchip_get_cru();
> +
> +       /*
> +        * The RK3399 resets only 'almost all logic' (see also in the TRM
> +        * "3.9.4 Global software reset"), when issuing a software reset.
> +        * This may cause issues during boot-up for some configurations of
> +        * the application software stack.
> +        *
> +        * To work around this, we test whether the last reset reason was
> +        * a power-on reset and (if not) issue an overtemp-reset to reset
> +        * the entire module.
> +        *
> +        * While this was previously fixed by modifying the various places
> +        * that could generate a software reset (e.g. U-Boot's sysreset
> +        * driver, the ATF or Linux), we now have it here to ensure that
> +        * we no longer have to track this through the various components.
> +        */
> +       if (cru->glb_rst_st != 0)
> +               rk3399_force_power_on_reset();
> +#endif
> +
> +#if defined(SPL_DM_REGULATOR)
> +       /*
> +        * Turning the eMMC and SPI back on (if disabled via the Qseven
> +        * BIOS_ENABLE) signal is done through a always-on regulator).
> +        */
> +       if (regulators_enable_boot_on(false))
> +               debug("%s: Cannot enable boot on regulator\n", __func__);
> +#endif
> +
> +       preloader_console_init();
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
>         return 0;
>  }
> -
> -void spl_board_init(void)
> -{
> -       preloader_console_init();
> -
> -       return;
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
>         return 0;
>  }
>
> -static void rk3399_force_power_on_reset(void)
> -{
> -       ofnode node;
> -       struct gpio_desc sysreset_gpio;
> -
> -       debug("%s: trying to force a power-on reset\n", __func__);
> -
> -       node = ofnode_path("/config");
> -       if (!ofnode_valid(node)) {
> -               debug("%s: no /config node?\n", __func__);
> -               return;
> -       }
> -
> -       if (gpio_request_by_name_nodev(node, "sysreset-gpio", 0,
> -                                      &sysreset_gpio, GPIOD_IS_OUT)) {
> -               debug("%s: could not find a /config/sysreset-gpio\n", __func__);
> -               return;
> -       }
> -
> -       dm_gpio_set_value(&sysreset_gpio, 1);
> -}
> -
> -void spl_board_init(void)
> -{
> -       int  ret;
> -       struct rk3399_cru *cru = rockchip_get_cru();
> -
> -       /*
> -        * The RK3399 resets only 'almost all logic' (see also in the TRM
> -        * "3.9.4 Global software reset"), when issuing a software reset.
> -        * This may cause issues during boot-up for some configurations of
> -        * the application software stack.
> -        *
> -        * To work around this, we test whether the last reset reason was
> -        * a power-on reset and (if not) issue an overtemp-reset to reset
> -        * the entire module.
> -        *
> -        * While this was previously fixed by modifying the various places
> -        * that could generate a software reset (e.g. U-Boot's sysreset
> -        * driver, the ATF or Linux), we now have it here to ensure that
> -        * we no longer have to track this through the various components.
> -        */
> -       if (cru->glb_rst_st != 0)
> -               rk3399_force_power_on_reset();
> -
> -       /*
> -        * Turning the eMMC and SPI back on (if disabled via the Qseven
> -        * BIOS_ENABLE) signal is done through a always-on regulator).
> -        */
> -       ret = regulators_enable_boot_on(false);
> -       if (ret)
> -               debug("%s: Cannot enable boot on regulator\n", __func__);
> -
> -       preloader_console_init();
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
>         return 0;
>  }
> -
> -void spl_board_init(void)
> -{
> -       preloader_console_init();
> -
> -       return;
> -}
> --
> 2.18.0.321.gffc6fa0e3
>
> _______________________________________________
> U-Boot mailing list
> U-Boot@lists.denx.de
> https://lists.denx.de/listinfo/u-boot

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A10C1603B
	for <lists+linux-rockchip@lfdr.de>; Tue,  7 May 2019 11:13:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kWE8edqjiEVUX/8IuGG3z9sLmbZIvQIu30XiVhdVcoU=; b=nFshz4URly4zsR
	/EvTzwiTaM803+yMN1F/wdk6I/fBWpXqcNNcE28EZ2SwwZLNKCszs4946l+lBa/AswvBIamsk2YBQ
	Uy8XmnzxoWcZBwldJqRS73gNT9225Mu09zId7rXQn9MF2qWugHFH4pZZToRfGv0dZb3ut1UuxQMJx
	k7dqELx7sDT0upCK0R48HgRdV287Y+Sp4aDzj28RJPR3JLDL2I2D8pqEjtdcX/xct05463qeQmUkg
	l3h3xDAX4s3Ih6C+DXOKpGiiLv+PSBXPJLoQW5mQv6Qvmh/Tjsa1xE4j00VubY3zDpEJTxxPw58is
	N4oKlL6a90GwHl4XqKTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNwAU-000772-Sz; Tue, 07 May 2019 09:13:46 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNwAT-00076r-5T
 for linux-rockchip@bombadil.infradead.org; Tue, 07 May 2019 09:13:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 Content-Type:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RHYuWOE8Mma+aH0mWfouITDaUtg36PBJ5jq+lpAmGX0=; b=FUMdB+J+7tTYOg5egNslLtmYit
 0sQ9pHPSLuYbO2TOAkld8ROXgXPFd+mTO9k4m0Uf8uMJiUpKWUYQ5rAB9BO4u7ExxmW2SxKJoqloz
 MbLEEN5gBri/LZJU3fQQt09du7BORKUTzjSBvjIwZ2Xnnl487GWvfw7gsisX6NehS2Ofnefpb/O1Z
 Pbi1IVFljtgHvE2PIWo7hgfH4LRBmfJ2KllIRKkzONu0TGmXGVPHSlYm35zRkj+9ZE/QXaCLlFlDa
 dCU/jHZd04hknIEu6Ur2uoHM05M9e/G6FkTQIEp+NHlRDa/ZqWxXbOssuZYVQ435kMEl3S5OvDRWh
 XEeo5c3Q==;
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNwAP-0004qg-QR
 for linux-rockchip@lists.infradead.org; Tue, 07 May 2019 09:13:43 +0000
X-Originating-IP: 93.29.109.196
Received: from aptenodytes (196.109.29.93.rev.sfr.net [93.29.109.196])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id BA20040005;
 Tue,  7 May 2019 09:12:47 +0000 (UTC)
Message-ID: <b250ecbc4cb638f36f25e9f14860cf5a99c31621.camel@bootlin.com>
Subject: Re: [PATCH v6 09/13] rockchip: rk3399: Add Nanopc T4 board support
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>, Kever Yang
 <kever.yang@rock-chips.com>, Akash Gajjar <akash@openedev.com>, Tom Rini
 <trini@konsulko.com>, Manivannan Sadhasivam
 <manivannan.sadhasivam@linaro.org>
Date: Tue, 07 May 2019 11:12:34 +0200
In-Reply-To: <20190427114852.7608-10-jagan@amarulasolutions.com>
References: <20190427114852.7608-1-jagan@amarulasolutions.com>
 <20190427114852.7608-10-jagan@amarulasolutions.com>
Organization: Bootlin
User-Agent: Evolution 3.32.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_051342_043378_480009E5 
X-CRM114-Status: GOOD (  12.91  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.194 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com,
 u-boot@lists.denx.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi,

On Sat, 2019-04-27 at 17:18 +0530, Jagan Teki wrote:
> diff --git a/board/rockchip/evb_rk3399/MAINTAINERS b/board/rockchip/evb_rk3399/MAINTAINERS
> index ae43805a6a..5917abb9c1 100644
> --- a/board/rockchip/evb_rk3399/MAINTAINERS
> +++ b/board/rockchip/evb_rk3399/MAINTAINERS
> @@ -6,6 +6,12 @@ F:      include/configs/evb_rk3399.h
>  F:      configs/evb-rk3399_defconfig
>  F:      configs/firefly-rk3399_defconfig
>  
> +NANOPC-T4
> +M:	Jagan Teki <jagan@amarulasolutions.com>
> +S:	Maintained
> +F:	configs/nanopic-t4-rk3399_defconfig
> +F:	arch/arm/dts/rk3399-nanopic-t4-u-boot.dtsi
> +

Mhh, I feel like each new board that you are introducing should have
its own board directory -- this board is definitely not a rk3399 evb
made by rockchip, but another board.

I have already patches to split that for the firefly-rk3399, but I
cannot really test them outside of building.

>  NANOPI-M4
>  M:	Jagan Teki <jagan@amarulasolutions.com>
>  S:	Maintained
> diff --git a/configs/nanopc-t4-rk3399_defconfig b/configs/nanopc-t4-rk3399_defconfig
> new file mode 100644
> index 0000000000..7ba4f85485
> --- /dev/null
> +++ b/configs/nanopc-t4-rk3399_defconfig
> @@ -0,0 +1,58 @@

Also I don't see which TARGET is selected here, is there a fallback on
the RK3399 EVB for the rk3399 platform?

Cheers,

Paul

> +CONFIG_ARM=y
> +CONFIG_ARCH_ROCKCHIP=y
> +CONFIG_SYS_TEXT_BASE=0x00200000
> +CONFIG_SPL_LIBCOMMON_SUPPORT=y
> +CONFIG_SPL_LIBGENERIC_SUPPORT=y
> +CONFIG_SYS_MALLOC_F_LEN=0x4000
> +CONFIG_ROCKCHIP_RK3399=y
> +CONFIG_ROCKCHIP_SPL_RESERVE_IRAM=0x4000
> +CONFIG_DEBUG_UART_BASE=0xFF1A0000
> +CONFIG_DEBUG_UART_CLOCK=24000000
> +CONFIG_SPL_STACK_R_ADDR=0x80000
> +CONFIG_DEBUG_UART=y
> +CONFIG_NR_DRAM_BANKS=1
> +CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-nanopc-t4.dtb"
> +# CONFIG_DISPLAY_CPUINFO is not set
> +CONFIG_DISPLAY_BOARDINFO_LATE=y
> +CONFIG_SPL_STACK_R=y
> +CONFIG_SPL_STACK_R_MALLOC_SIMPLE_LEN=0x4000
> +CONFIG_CMD_BOOTZ=y
> +CONFIG_CMD_GPT=y
> +CONFIG_CMD_MMC=y
> +CONFIG_CMD_SF=y
> +CONFIG_CMD_USB=y
> +# CONFIG_CMD_SETEXPR is not set
> +CONFIG_CMD_TIME=y
> +CONFIG_SPL_OF_CONTROL=y
> +CONFIG_DEFAULT_DEVICE_TREE="rk3399-nanopc-t4"
> +CONFIG_OF_SPL_REMOVE_PROPS="pinctrl-0 pinctrl-names clock-names interrupt-parent assigned-clocks assigned-clock-rates assigned-clock-parents"
> +CONFIG_ENV_IS_IN_MMC=y
> +CONFIG_ROCKCHIP_GPIO=y
> +CONFIG_SYS_I2C_ROCKCHIP=y
> +CONFIG_MMC_DW=y
> +CONFIG_MMC_DW_ROCKCHIP=y
> +CONFIG_MMC_SDHCI=y
> +CONFIG_MMC_SDHCI_ROCKCHIP=y
> +CONFIG_DM_ETH=y
> +CONFIG_ETH_DESIGNWARE=y
> +CONFIG_GMAC_ROCKCHIP=y
> +CONFIG_PMIC_RK8XX=y
> +CONFIG_REGULATOR_PWM=y
> +CONFIG_REGULATOR_RK8XX=y
> +CONFIG_PWM_ROCKCHIP=y
> +CONFIG_BAUDRATE=1500000
> +CONFIG_DEBUG_UART_SHIFT=2
> +CONFIG_SYSRESET=y
> +CONFIG_USB=y
> +CONFIG_USB_XHCI_HCD=y
> +CONFIG_USB_XHCI_DWC3=y
> +CONFIG_USB_EHCI_HCD=y
> +CONFIG_USB_EHCI_GENERIC=y
> +CONFIG_USB_HOST_ETHER=y
> +CONFIG_USB_ETHER_ASIX=y
> +CONFIG_USB_ETHER_ASIX88179=y
> +CONFIG_USB_ETHER_MCS7830=y
> +CONFIG_USB_ETHER_RTL8152=y
> +CONFIG_USB_ETHER_SMSC95XX=y
> +CONFIG_USE_TINY_PRINTF=y
> +CONFIG_ERRNO_STR=y
-- 
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

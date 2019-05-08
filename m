Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 872A816FA5
	for <lists+linux-rockchip@lfdr.de>; Wed,  8 May 2019 05:47:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CzPTJQCiqq+w71Gieu0c6AiNkcI20ir7t7iRDx1HN5g=; b=D52RMkcyeq5b5d
	Dtgp3zlG7Y8Nn4kKPRNovEfPqZk9xyq4oWvdX1QTq4UOfFff0ntp02mFm0QCc0e8Fq9ucFJyA+kJY
	MpBzkcsmvILjmTjVoMU+6YIRBjzbyhJnOjNrl+yS9HpoL6cqNj71vpWcuNsI8Yl05/LtIWNFhfo6y
	1WjRZIZ5i/oWgD+khMqAO6gyUWFanSVSQK6fjIwe/vVYaJtdTDPzyHr1ul5w2DpvEImQpZZA00uv7
	DW+oDCQViAh//1PR/sz/tzKBcwxCBB2E5aTbTtlQf3HhsXA2aYNcsKZ62G9A8TSY7AgUH64EGvuXV
	flFTGY9hEMxOuNO0Cc4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hODXl-0002Jh-MJ; Wed, 08 May 2019 03:46:57 +0000
Received: from regular1.263xmail.com ([211.150.70.205])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hODXi-0002JO-N5
 for linux-rockchip@lists.infradead.org; Wed, 08 May 2019 03:46:56 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.165.252])
 by regular1.263xmail.com (Postfix) with ESMTP id 5E6AA4B3;
 Wed,  8 May 2019 11:46:51 +0800 (CST)
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
 P12364T140130077640448S1557287206801029_; 
 Wed, 08 May 2019 11:46:49 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <496b7e405dc2d4342ae999fed553a11a>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: u-boot@lists.denx.de
X-SENDER-IP: 103.29.142.67
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v7 02/11] Kconfig: Add default SPL_FIT_GENERATOR for
 rockchip
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Akash Gajjar <akash@openedev.com>
References: <20190507183625.5983-1-jagan@amarulasolutions.com>
 <20190507183625.5983-3-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <1c2790a9-dcde-eeb4-56af-21cf8bb91564@rock-chips.com>
Date: Wed, 8 May 2019 11:46:47 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <20190507183625.5983-3-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_204655_116884_CD9A369E 
X-CRM114-Status: GOOD (  15.68  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
> Add default SPL_FIT_GENERATOR py script for rockchip platforms if
> specific target enabled SPL_LOAD_FIT.
>
> So, this would help get rid of explicitly mentioning the default
> SPL FIT generator in defconfigs. however some targets, like puma_rk3399
> still require their own FIT generator so in those cases the default will
> override with defconfig defined generator.
>
> Reviewed-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>

Reviewed-by: Kever Yang <kever.yang@rock-chips.com>

Thanks,
- Kever
> ---
>  Kconfig                           | 1 +
>  configs/chromebook_bob_defconfig  | 1 -
>  configs/evb-rk3399_defconfig      | 1 -
>  configs/ficus-rk3399_defconfig    | 1 -
>  configs/firefly-rk3399_defconfig  | 1 -
>  configs/orangepi-rk3399_defconfig | 1 -
>  configs/rock960-rk3399_defconfig  | 1 -
>  7 files changed, 1 insertion(+), 6 deletions(-)
>
> diff --git a/Kconfig b/Kconfig
> index 7a5491bd67..91c1082ace 100644
> --- a/Kconfig
> +++ b/Kconfig
> @@ -435,6 +435,7 @@ config SPL_FIT_GENERATOR
>  	string ".its file generator script for U-Boot FIT image"
>  	depends on SPL_FIT
>  	default "board/sunxi/mksunxi_fit_atf.sh" if SPL_LOAD_FIT && ARCH_SUNXI
> +	default "arch/arm/mach-rockchip/make_fit_atf.py" if SPL_LOAD_FIT && ARCH_ROCKCHIP
>  	help
>  	  Specifies a (platform specific) script file to generate the FIT
>  	  source file used to build the U-Boot FIT image file. This gets
> diff --git a/configs/chromebook_bob_defconfig b/configs/chromebook_bob_defconfig
> index ce07a7f0ff..bd836acad5 100644
> --- a/configs/chromebook_bob_defconfig
> +++ b/configs/chromebook_bob_defconfig
> @@ -19,7 +19,6 @@ CONFIG_SPL_SPI_SUPPORT=y
>  CONFIG_DEBUG_UART=y
>  CONFIG_FIT=y
>  CONFIG_SPL_LOAD_FIT=y
> -CONFIG_SPL_FIT_GENERATOR="arch/arm/mach-rockchip/make_fit_atf.py"
>  CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-gru-bob.dtb"
>  # CONFIG_DISPLAY_CPUINFO is not set
>  CONFIG_DISPLAY_BOARDINFO_LATE=y
> diff --git a/configs/evb-rk3399_defconfig b/configs/evb-rk3399_defconfig
> index 5bb910e8d4..94963e4280 100644
> --- a/configs/evb-rk3399_defconfig
> +++ b/configs/evb-rk3399_defconfig
> @@ -13,7 +13,6 @@ CONFIG_DEBUG_UART_CLOCK=24000000
>  CONFIG_DEBUG_UART=y
>  CONFIG_FIT=y
>  CONFIG_SPL_LOAD_FIT=y
> -CONFIG_SPL_FIT_GENERATOR="arch/arm/mach-rockchip/make_fit_atf.py"
>  CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-evb.dtb"
>  # CONFIG_DISPLAY_CPUINFO is not set
>  CONFIG_DISPLAY_BOARDINFO_LATE=y
> diff --git a/configs/ficus-rk3399_defconfig b/configs/ficus-rk3399_defconfig
> index 79da86b32f..926d244fbe 100644
> --- a/configs/ficus-rk3399_defconfig
> +++ b/configs/ficus-rk3399_defconfig
> @@ -13,7 +13,6 @@ CONFIG_DEBUG_UART_CLOCK=24000000
>  CONFIG_DEBUG_UART=y
>  CONFIG_FIT=y
>  CONFIG_SPL_LOAD_FIT=y
> -CONFIG_SPL_FIT_GENERATOR="arch/arm/mach-rockchip/make_fit_atf.py"
>  # CONFIG_DISPLAY_CPUINFO is not set
>  CONFIG_DISPLAY_BOARDINFO_LATE=y
>  CONFIG_SPL_TEXT_BASE=0xff8c2000
> diff --git a/configs/firefly-rk3399_defconfig b/configs/firefly-rk3399_defconfig
> index 301b27e3a4..5016fb8993 100644
> --- a/configs/firefly-rk3399_defconfig
> +++ b/configs/firefly-rk3399_defconfig
> @@ -13,7 +13,6 @@ CONFIG_DEBUG_UART_CLOCK=24000000
>  CONFIG_DEBUG_UART=y
>  CONFIG_FIT=y
>  CONFIG_SPL_LOAD_FIT=y
> -CONFIG_SPL_FIT_GENERATOR="arch/arm/mach-rockchip/make_fit_atf.py"
>  CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-firefly.dtb"
>  # CONFIG_DISPLAY_CPUINFO is not set
>  CONFIG_DISPLAY_BOARDINFO_LATE=y
> diff --git a/configs/orangepi-rk3399_defconfig b/configs/orangepi-rk3399_defconfig
> index ba13976cc6..22ddd8dce3 100644
> --- a/configs/orangepi-rk3399_defconfig
> +++ b/configs/orangepi-rk3399_defconfig
> @@ -13,7 +13,6 @@ CONFIG_DEBUG_UART=y
>  CONFIG_NR_DRAM_BANKS=1
>  CONFIG_FIT=y
>  CONFIG_SPL_LOAD_FIT=y
> -CONFIG_SPL_FIT_GENERATOR="arch/arm/mach-rockchip/make_fit_atf.py"
>  CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-orangepi.dtb"
>  # CONFIG_DISPLAY_CPUINFO is not set
>  CONFIG_DISPLAY_BOARDINFO_LATE=y
> diff --git a/configs/rock960-rk3399_defconfig b/configs/rock960-rk3399_defconfig
> index 8d490be18c..48d14ef7d8 100644
> --- a/configs/rock960-rk3399_defconfig
> +++ b/configs/rock960-rk3399_defconfig
> @@ -13,7 +13,6 @@ CONFIG_DEBUG_UART_CLOCK=24000000
>  CONFIG_DEBUG_UART=y
>  CONFIG_FIT=y
>  CONFIG_SPL_LOAD_FIT=y
> -CONFIG_SPL_FIT_GENERATOR="arch/arm/mach-rockchip/make_fit_atf.py"
>  CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-rock960.dtb"
>  # CONFIG_DISPLAY_CPUINFO is not set
>  CONFIG_DISPLAY_BOARDINFO_LATE=y




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

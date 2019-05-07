Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23E5F15841
	for <lists+linux-rockchip@lfdr.de>; Tue,  7 May 2019 06:06:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UQJ+6FxsnnNY6faFcgPzrTqKLW28ilf0eUEQmHh0+qY=; b=aunKnIYOgDEC74
	iAuPRT6310WX+cbz+xhKPuDyWaJUijgNe1ltFMp2ZFvJxZPe4F9QRQ8+qT/GN0hdJ5gYpX608HOUD
	tGYv5Ueq3YFZJCebF2vcstOBZ5vis/wqPqRpn7Nxr0hBunc1WmBlNzPd4ujlzCl/RH+zIC0lJiQGS
	Ai893brTzMmvZUJsuO//D8xzCrfHbjHuUFPJC07pVHPj6kDFqHG54+pssZsr2VODkPh4Vyxi2bULk
	tnVf7nTVTv8CDu+NtJ+OFgmhxmz8ryVu2UmrWVXocrwmzR9F1tL2YZHJEzhWiafk7MvnJmct6hSFY
	ZOiGPnifzDht6fzeu/gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNrMj-0005fT-Vh; Tue, 07 May 2019 04:06:05 +0000
Received: from regular1.263xmail.com ([211.150.70.198])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNrMg-0005e6-0t
 for linux-rockchip@lists.infradead.org; Tue, 07 May 2019 04:06:03 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.167.97])
 by regular1.263xmail.com (Postfix) with ESMTP id B6ABB20C;
 Tue,  7 May 2019 12:05:50 +0800 (CST)
X-263anti-spam: KSV:0;BIG:0;
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-KSVirus-check: 0
X-ADDR-CHECKED4: 1
X-ABS-CHECKED: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from [172.16.12.214] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P31440T140609123755776S1557201947050296_; 
 Tue, 07 May 2019 12:05:50 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <7362da5dbdc64dfbd02ae0366dc93f66>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: klaus.goger@theobroma-systems.com
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v6 03/13] Kconfig: Add default SPL_FIT_GENERATOR for
 rockchip
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Akash Gajjar <akash@openedev.com>, Tom Rini <trini@konsulko.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
References: <20190427114852.7608-1-jagan@amarulasolutions.com>
 <20190427114852.7608-4-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <7bd53b02-2a0f-d242-31bc-2baba0a69405@rock-chips.com>
Date: Tue, 7 May 2019 12:05:44 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <20190427114852.7608-4-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_210602_463035_C5566BB8 
X-CRM114-Status: GOOD (  16.28  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
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
 linux-rockchip@lists.infradead.org,
 Klaus Goger <klaus.goger@theobroma-systems.com>,
 linux-amarula@amarulasolutions.com, u-boot@lists.denx.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Jagan,


On 04/27/2019 07:48 PM, Jagan Teki wrote:
> Add default SPL_FIT_GENERATOR py script for rockchip platforms if
> specific target enabled SPL_LOAD_FIT.
>
> So, this would help get rid of explicitly mentioning the default
> SPL FIT generator in defconfigs. however some targets, like puma_rk3399
> still require their own FIT generator so in those cases the default will
> override with defconfig defined generator.
>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> Reviewed-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> ---
>  Kconfig                          | 1 +
>  configs/chromebook_bob_defconfig | 1 -
>  configs/evb-rk3399_defconfig     | 1 -
>  configs/ficus-rk3399_defconfig   | 1 -
>  configs/firefly-rk3399_defconfig | 1 -
>  configs/rock960-rk3399_defconfig | 1 -
>  6 files changed, 1 insertion(+), 5 deletions(-)
>
> diff --git a/Kconfig b/Kconfig
> index 305b265ed7..5679a288ec 100644
> --- a/Kconfig
> +++ b/Kconfig
> @@ -424,6 +424,7 @@ config SPL_FIT_GENERATOR
>  	string ".its file generator script for U-Boot FIT image"
>  	depends on SPL_FIT
>  	default "board/sunxi/mksunxi_fit_atf.sh" if SPL_LOAD_FIT && ARCH_SUNXI
> +	default "arch/arm/mach-rockchip/make_fit_atf.py" if SPL_LOAD_FIT && ARCH_ROCKCHIP

What happens to puma-rk3399 board with this patch? For it use dedicate
its file now.
configs/puma-rk3399_defconfig
CONFIG_SPL_FIT_SOURCE="board/theobroma-systems/puma_rk3399/fit_spl_atf.its"

Thanks,
- Kever
>  	help
>  	  Specifies a (platform specific) script file to generate the FIT
>  	  source file used to build the U-Boot FIT image file. This gets
> diff --git a/configs/chromebook_bob_defconfig b/configs/chromebook_bob_defconfig
> index ce3deccb8a..04e25e1d4f 100644
> --- a/configs/chromebook_bob_defconfig
> +++ b/configs/chromebook_bob_defconfig
> @@ -19,7 +19,6 @@ CONFIG_DEBUG_UART=y
>  CONFIG_NR_DRAM_BANKS=1
>  CONFIG_FIT=y
>  CONFIG_SPL_LOAD_FIT=y
> -CONFIG_SPL_FIT_GENERATOR="arch/arm/mach-rockchip/make_fit_atf.py"
>  CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-gru-bob.dtb"
>  # CONFIG_DISPLAY_CPUINFO is not set
>  CONFIG_DISPLAY_BOARDINFO_LATE=y
> diff --git a/configs/evb-rk3399_defconfig b/configs/evb-rk3399_defconfig
> index d98535357a..49b2e2e089 100644
> --- a/configs/evb-rk3399_defconfig
> +++ b/configs/evb-rk3399_defconfig
> @@ -13,7 +13,6 @@ CONFIG_DEBUG_UART=y
>  CONFIG_NR_DRAM_BANKS=1
>  CONFIG_FIT=y
>  CONFIG_SPL_LOAD_FIT=y
> -CONFIG_SPL_FIT_GENERATOR="arch/arm/mach-rockchip/make_fit_atf.py"
>  CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-evb.dtb"
>  # CONFIG_DISPLAY_CPUINFO is not set
>  CONFIG_DISPLAY_BOARDINFO_LATE=y
> diff --git a/configs/ficus-rk3399_defconfig b/configs/ficus-rk3399_defconfig
> index 94c565efc2..fe3b9964e8 100644
> --- a/configs/ficus-rk3399_defconfig
> +++ b/configs/ficus-rk3399_defconfig
> @@ -13,7 +13,6 @@ CONFIG_SPL_STACK_R_ADDR=0x80000
>  CONFIG_DEBUG_UART=y
>  CONFIG_FIT=y
>  CONFIG_SPL_LOAD_FIT=y
> -CONFIG_SPL_FIT_GENERATOR="arch/arm/mach-rockchip/make_fit_atf.py"
>  # CONFIG_DISPLAY_CPUINFO is not set
>  CONFIG_DISPLAY_BOARDINFO_LATE=y
>  CONFIG_SPL_STACK_R=y
> diff --git a/configs/firefly-rk3399_defconfig b/configs/firefly-rk3399_defconfig
> index 6725b48970..914304bb43 100644
> --- a/configs/firefly-rk3399_defconfig
> +++ b/configs/firefly-rk3399_defconfig
> @@ -13,7 +13,6 @@ CONFIG_DEBUG_UART=y
>  CONFIG_NR_DRAM_BANKS=1
>  CONFIG_FIT=y
>  CONFIG_SPL_LOAD_FIT=y
> -CONFIG_SPL_FIT_GENERATOR="arch/arm/mach-rockchip/make_fit_atf.py"
>  CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-firefly.dtb"
>  # CONFIG_DISPLAY_CPUINFO is not set
>  CONFIG_DISPLAY_BOARDINFO_LATE=y
> diff --git a/configs/rock960-rk3399_defconfig b/configs/rock960-rk3399_defconfig
> index cb5a35f4f5..5e6778ea20 100644
> --- a/configs/rock960-rk3399_defconfig
> +++ b/configs/rock960-rk3399_defconfig
> @@ -13,7 +13,6 @@ CONFIG_SPL_STACK_R_ADDR=0x80000
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

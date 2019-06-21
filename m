Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2DB84E55A
	for <lists+linux-rockchip@lfdr.de>; Fri, 21 Jun 2019 12:04:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yZQLWOeFYhdLescl/ysta7Wco57xU8piFn6Z1lrdcvM=; b=Mi29o+NEYsQl8Y
	B/hefIT8rvQhuHdqGIPsD1q7ORukZIa5NPLQLKievuBaILYHi72klS4zABedVcN+3x7mmQ7mrCsrz
	FBw+DIlJWnrAJjukVWJhyCsYLT3636Wwmu/i/wxh8ACWRn58FFw3ltG85dMQkHeh254IfDNqLqKC+
	XcV6pzfs6FptydercpWsIXjjEekS8EYqLTdcuJqtTighAUV6sftzJnD/kiK0TfXmYSFCXio0hNaqI
	VRSgmvVT+dxfi/Gy5nOKqvMPlWvAU6B3SCSJ6U0rk562LXskrxMnnQGvbDXLrZI4lbonjQFoFJ1qm
	bRt6juITXHlgAwbaZTSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heGPa-0007ep-CK; Fri, 21 Jun 2019 10:04:50 +0000
Received: from regular1.263xmail.com ([211.150.70.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heG1b-0007Zf-Ci
 for linux-rockchip@lists.infradead.org; Fri, 21 Jun 2019 09:40:10 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.165.103])
 by regular1.263xmail.com (Postfix) with ESMTP id ADDAD7B5;
 Fri, 21 Jun 2019 17:39:57 +0800 (CST)
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
 P26442T139681865922304S1561109989572421_; 
 Fri, 21 Jun 2019 17:39:56 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <1f90e18b7a37f97076de3af6dfd42ae1>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 103.29.142.67
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v4 5/6] board: puma: Get bl31.bin via BL31 and
 rk3399m0.bin via PMUM0
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>, u-boot@lists.denx.de
References: <20190620100740.6560-1-jagan@amarulasolutions.com>
 <20190620100740.6560-6-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <ae1f2bbc-efbd-34a5-3cca-172f5f1d2e37@rock-chips.com>
Date: Fri, 21 Jun 2019 17:39:48 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <20190620100740.6560-6-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_024003_920756_69FC8F23 
X-CRM114-Status: GOOD (  20.07  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.196 listed in list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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



On 06/20/2019 06:07 PM, Jagan Teki wrote:
> Right now puma rk3399 board need to copy bl31-rk3399.bin and
> rk3399m0.bin into u-boot source directory to make use of building
> u-boot.itb.
>
> So, add environment variable
> - BL31 for bl31.bin (instead of bl31-rk3399.bin to compatible with other
>   platform BL31 env)
> - PMUM0 for rk3399m0.bin
>
> If the builds are not exporting BL31, PMUM0 env, the fit_spl_atf.sh will
> notify with warning about which document to refer for more information
> like this:
>
>  WARNING: BL31 file bl31.bin NOT found, resulting binary is non-functional
>  Please read Building section in doc/README.rockchip
>  WARNING: PMUM0 file rk3399m0.bin NOT found, resulting binary is non-functional
>  Please read Building section in doc/README.rockchip
>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>

Reviewed-by: Kever Yang <kever.yang@rock-chips.com>

Thanks,
- Kever
> ---
>  .../puma_rk3399/fit_spl_atf.its               | 58 ------------
>  .../puma_rk3399/fit_spl_atf.sh                | 94 +++++++++++++++++++
>  configs/puma-rk3399_defconfig                 |  2 +-
>  doc/README.rockchip                           |  8 +-
>  4 files changed, 99 insertions(+), 63 deletions(-)
>  delete mode 100644 board/theobroma-systems/puma_rk3399/fit_spl_atf.its
>  create mode 100755 board/theobroma-systems/puma_rk3399/fit_spl_atf.sh
>
> diff --git a/board/theobroma-systems/puma_rk3399/fit_spl_atf.its b/board/theobroma-systems/puma_rk3399/fit_spl_atf.its
> deleted file mode 100644
> index 530f059f3d..0000000000
> --- a/board/theobroma-systems/puma_rk3399/fit_spl_atf.its
> +++ /dev/null
> @@ -1,58 +0,0 @@
> -/* SPDX-License-Identifier: GPL-2.0+ OR X11 */
> -/*
> - * Copyright (C) 2017 Theobroma Systems Design und Consulting GmbH
> - *
> - * Minimal dts for a SPL FIT image payload.
> - */
> -
> -/dts-v1/;
> -
> -/ {
> -	description = "FIT image with U-Boot proper, ATF bl31, M0 Firmware, DTB";
> -	#address-cells = <1>;
> -
> -	images {
> -		uboot {
> -			description = "U-Boot (64-bit)";
> -			data = /incbin/("../../../u-boot-nodtb.bin");
> -			type = "standalone";
> -			os = "U-Boot";
> -			arch = "arm64";
> -			compression = "none";
> -			load = <0x00200000>;
> -		};
> -		atf {
> -			description = "ARM Trusted Firmware";
> -			data = /incbin/("../../../bl31-rk3399.bin");
> -			type = "firmware";
> -			arch = "arm64";
> -			os = "arm-trusted-firmware";
> -			compression = "none";
> -			load = <0x1000>;
> -			entry = <0x1000>;
> -		};
> -		pmu {
> -		        description = "Cortex-M0 firmware";
> -			data = /incbin/("../../../rk3399m0.bin");
> -			type = "pmu-firmware";
> -			compression = "none";
> -			load = <0x180000>;
> -                };
> -		fdt {
> -			description = "RK3399-Q7 (Puma) flat device-tree";
> -			data = /incbin/("../../../u-boot.dtb");
> -			type = "flat_dt";
> -			compression = "none";
> -		};
> -	};
> -
> -	configurations {
> -		default = "conf";
> -		conf {
> -			description = "Theobroma Systems RK3399-Q7 (Puma) SoM";
> -			firmware = "atf";
> -			loadables = "uboot", "pmu";
> -			fdt = "fdt";
> -		};
> -	};
> -};
> diff --git a/board/theobroma-systems/puma_rk3399/fit_spl_atf.sh b/board/theobroma-systems/puma_rk3399/fit_spl_atf.sh
> new file mode 100755
> index 0000000000..420e7daf4c
> --- /dev/null
> +++ b/board/theobroma-systems/puma_rk3399/fit_spl_atf.sh
> @@ -0,0 +1,94 @@
> +#!/bin/sh
> +#
> +# SPDX-License-Identifier:      GPL-2.0+
> +#
> +# Copyright (C) 2019 Jagan Teki <jagan@amarulasolutions.com>
> +#
> +# Based on the board/sunxi/mksunxi_fit_atf.sh
> +#
> +# Script to generate FIT image source for 64-bit puma boards with
> +# U-Boot proper, ATF, PMU firmware and devicetree.
> +#
> +# usage: $0 <dt_name> [<dt_name> [<dt_name] ...]
> +
> +[ -z "$BL31" ] && BL31="bl31.bin"
> +
> +if [ ! -f $BL31 ]; then
> +	echo "WARNING: BL31 file $BL31 NOT found, resulting binary is non-functional" >&2
> +	echo "Please read Building section in doc/README.rockchip" >&2
> +	BL31=/dev/null
> +fi
> +
> +[ -z "$PMUM0" ] && PMUM0="rk3399m0.bin"
> +
> +if [ ! -f $PMUM0 ]; then
> +	echo "WARNING: PMUM0 file $PMUM0 NOT found, resulting binary is non-functional" >&2
> +	echo "Please read Building section in doc/README.rockchip" >&2
> +	PMUM0=/dev/null
> +fi
> +
> +cat << __HEADER_EOF
> +/* SPDX-License-Identifier: GPL-2.0+ OR X11 */
> +/*
> + * Copyright (C) 2017 Theobroma Systems Design und Consulting GmbH
> + *
> + * Minimal dts for a SPL FIT image payload.
> + */
> +
> +/dts-v1/;
> +
> +/ {
> +	description = "FIT image with U-Boot proper, ATF bl31, M0 Firmware, DTB";
> +	#address-cells = <1>;
> +
> +	images {
> +		uboot {
> +			description = "U-Boot (64-bit)";
> +			data = /incbin/("u-boot-nodtb.bin");
> +			type = "standalone";
> +			arch = "arm64";
> +			compression = "none";
> +			load = <0x4a000000>;
> +		};
> +		atf {
> +			description = "ARM Trusted Firmware";
> +			data = /incbin/("$BL31");
> +			type = "firmware";
> +			arch = "arm64";
> +			os = "arm-trusted-firmware";
> +			compression = "none";
> +			load = <0x1000>;
> +			entry = <0x1000>;
> +		};
> +		pmu {
> +		        description = "Cortex-M0 firmware";
> +			data = /incbin/("$PMUM0");
> +			type = "pmu-firmware";
> +			compression = "none";
> +			load = <0x180000>;
> +                };
> +		fdt {
> +			description = "RK3399-Q7 (Puma) flat device-tree";
> +			data = /incbin/("u-boot.dtb");
> +			type = "flat_dt";
> +			compression = "none";
> +		};
> +__HEADER_EOF
> +
> +cat << __CONF_HEADER_EOF
> +	};
> +
> +	configurations {
> +		default = "conf";
> +		conf {
> +			description = "Theobroma Systems RK3399-Q7 (Puma) SoM";
> +			firmware = "atf";
> +			loadables = "uboot", "pmu";
> +			fdt = "fdt";
> +		};
> +__CONF_HEADER_EOF
> +
> +cat << __ITS_EOF
> +	};
> +};
> +__ITS_EOF
> diff --git a/configs/puma-rk3399_defconfig b/configs/puma-rk3399_defconfig
> index 03f0bfdb59..ebc78fb216 100644
> --- a/configs/puma-rk3399_defconfig
> +++ b/configs/puma-rk3399_defconfig
> @@ -15,7 +15,7 @@ CONFIG_DEBUG_UART_CLOCK=24000000
>  CONFIG_SPL_SPI_FLASH_SUPPORT=y
>  CONFIG_SPL_SPI_SUPPORT=y
>  CONFIG_DEBUG_UART=y
> -CONFIG_SPL_FIT_SOURCE="board/theobroma-systems/puma_rk3399/fit_spl_atf.its"
> +CONFIG_SPL_FIT_GENERATOR="board/theobroma-systems/puma_rk3399/fit_spl_atf.sh"
>  CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-puma-haikou.dtb"
>  CONFIG_MISC_INIT_R=y
>  # CONFIG_DISPLAY_CPUINFO is not set
> diff --git a/doc/README.rockchip b/doc/README.rockchip
> index 5680c075fa..0ee54cd00e 100644
> --- a/doc/README.rockchip
> +++ b/doc/README.rockchip
> @@ -137,8 +137,8 @@ For example:
>  	=> cd arm-trusted-firmware
>  	=> make CROSS_COMPILE=aarch64-linux-gnu- PLAT=rk3399 bl31
>  
> -	(copy bl31.bin into U-Boot root dir)
> -	=> cp build/rk3399/release/bl31/bl31.bin /path/to/u-boot/bl31-rk3399.bin
> +	(export bl31.bin)
> +	=> export BL31=/path/to/arm-trusted-firmware/build/rk3399/release/bl31/bl31.bin
>  
>       For rest of rk3399 boards.
>  
> @@ -162,8 +162,8 @@ For example:
>       (export cross compiler path for Cortex-M0 PMU)
>       => make CROSS_COMPILE=arm-cortex_m0-eabi-
>  
> -     (copy rk3399m0.bin into U-Boot root dir)
> -     => cp rk3399m0.bin /path/to/u-boot
> +     (export rk3399m0.bin)
> +     => export PMUM0=/path/to/rk3399-cortex-m0/rk3399m0.bin
>  
>     - Compile U-Boot
>  




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

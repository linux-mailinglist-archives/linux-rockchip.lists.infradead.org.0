Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D1D816F84
	for <lists+linux-rockchip@lfdr.de>; Wed,  8 May 2019 05:39:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6Dvdf+IHvhbYDtyyWT6KnDmHA8FlAsc2PYBV/dQEiig=; b=ggS27UYGn50NzB
	1+oAX8YZgx3Vn+2exmH1Uuo4VYMLiYKBT0nMrtbjiYQ3QvkXRZg09vcEmsVMXp1GBsy38M9Gm8s2G
	AT9iSO2x9WKd9xvZsoIgag53OobTh6L5Uu3ZRWUcMXh2D9P7B8sap2p0FJvcshTO8XosuW4YuIGyw
	lq0kB17amGKYKHzAcPzURNKBkIV/HadWE2bUkcEEpySqcYrOB/UNLkTWI3Sh3Gyq8Lj4gIFmMf3kL
	zG5Itg0j04zDCdhRZiTL1lhnp/CNzaGC7qcGJS2xq7VbFNzRnx9Vh0A1u7UMrg5WbMiGabQPvP2xD
	NGW0WsObc5Z83a5KF+bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hODQR-0007Na-Jt; Wed, 08 May 2019 03:39:23 +0000
Received: from regular1.263xmail.com ([211.150.70.199])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hODQN-0007Mw-Ey
 for linux-rockchip@lists.infradead.org; Wed, 08 May 2019 03:39:21 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.165.252])
 by regular1.263xmail.com (Postfix) with ESMTP id D3C7A401;
 Wed,  8 May 2019 11:39:12 +0800 (CST)
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
 P12364T140129817589504S1557286737683714_; 
 Wed, 08 May 2019 11:38:59 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <f485c789d05fc1c93a003ee243594951>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: u-boot@lists.denx.de
X-SENDER-IP: 103.29.142.67
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v7 1/4] dts: Makefile: Build rockchip dtbs based on SoC
 types
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Akash Gajjar <akash@openedev.com>
References: <20190507182152.4254-1-jagan@amarulasolutions.com>
 <20190507182152.4254-2-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <d9e9c4b0-64a6-2b2f-29a3-bd7d501def1b@rock-chips.com>
Date: Wed, 8 May 2019 11:38:58 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <20190507182152.4254-2-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_203919_811216_E184BEB7 
X-CRM114-Status: GOOD (  14.49  )
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



On 05/08/2019 02:21 AM, Jagan Teki wrote:
> - Sometimes u-boot specific dtsi files are included
>   automatically which would build for entire rockchip SoC,
>   even-though the respective dtsi should used it for specific
>   family of rockchip SoC.
> - Sometimes u-boot specific dts nodes or properties can use
>   config macros from respective rockchip family include/configs
>   files, example CONFIG_SPL_PAD_TO.
>
> So, it's better to compile the dtbs based on the respective
> rockchip family types rather than rockchip itself to avoid
> compilation issues.
>
> This patch organize the existing dtb's based on the rockchip
> family types.
>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>

Reviewed-by: Kever Yang <kever.yang@rock-chips.com>

Thanks,
- Kever
> ---
>  arch/arm/dts/Makefile | 35 ++++++++++++++++++++++++++---------
>  1 file changed, 26 insertions(+), 9 deletions(-)
>
> diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
> index 8e082f2840..35cbbfabd0 100644
> --- a/arch/arm/dts/Makefile
> +++ b/arch/arm/dts/Makefile
> @@ -65,16 +65,23 @@ dtb-$(CONFIG_KIRKWOOD) += \
>  dtb-$(CONFIG_ARCH_OWL) += \
>  	bubblegum_96.dtb
>  
> -dtb-$(CONFIG_ARCH_ROCKCHIP) += \
> -	rk3036-sdk.dtb \
> -	rk3128-evb.dtb \
> -	rk3188-radxarock.dtb \
> -	rk3229-evb.dtb \
> +dtb-$(CONFIG_ROCKCHIP_RK3036) += \
> +	rk3036-sdk.dtb
> +
> +dtb-$(CONFIG_ROCKCHIP_RK3128) += \
> +	rk3128-evb.dtb
> +
> +dtb-$(CONFIG_ROCKCHIP_RK3188) += \
> +	rk3188-radxarock.dtb
> +
> +dtb-$(CONFIG_ROCKCHIP_RK322X) += \
> +	rk3229-evb.dtb
> +
> +dtb-$(CONFIG_ROCKCHIP_RK3288) += \
>  	rk3288-evb.dtb \
>  	rk3288-fennec.dtb \
>  	rk3288-firefly.dtb \
>  	rk3288-miqi.dtb \
> -	rk3399-orangepi.dtb \
>  	rk3288-phycore-rdk.dtb \
>  	rk3288-popmetal.dtb \
>  	rk3288-rock2-square.dtb \
> @@ -83,22 +90,32 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += \
>  	rk3288-veyron-mickey.dtb \
>  	rk3288-veyron-minnie.dtb \
>  	rk3288-veyron-speedy.dtb \
> -	rk3288-vyasa.dtb \
> -	rk3328-evb.dtb \
> -	rk3399-ficus.dtb \
> +	rk3288-vyasa.dtb
> +
> +dtb-$(CONFIG_ROCKCHIP_RK3328) += \
> +	rk3328-evb.dtb
> +
> +dtb-$(CONFIG_ROCKCHIP_RK3368) += \
>  	rk3368-lion.dtb \
>  	rk3368-sheep.dtb \
>  	rk3368-geekbox.dtb \
>  	rk3368-px5-evb.dtb \
> +
> +dtb-$(CONFIG_ROCKCHIP_RK3399) += \
>  	rk3399-evb.dtb \
> +	rk3399-ficus.dtb \
>  	rk3399-firefly.dtb \
>  	rk3399-gru-bob.dtb \
> +	rk3399-orangepi.dtb \
>  	rk3399-puma-ddr1333.dtb \
>  	rk3399-puma-ddr1600.dtb \
>  	rk3399-puma-ddr1866.dtb \
>  	rk3399-rock960.dtb \
> +
> +dtb-$(CONFIG_ROCKCHIP_RV1108) += \
>  	rv1108-elgin-r1.dtb \
>  	rv1108-evb.dtb
> +
>  dtb-$(CONFIG_ARCH_MESON) += \
>  	meson-gxbb-nanopi-k2.dtb \
>  	meson-gxbb-odroidc2.dtb \




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

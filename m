Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2118F15FE18
	for <lists+linux-rockchip@lfdr.de>; Sat, 15 Feb 2020 12:11:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u4BPQeGd1BkRvyfuPQQDMFfkkhNgDsAXhoZpdFq6eQU=; b=d6nqKUIZv822Ro
	GhP8SHnuqgkrL9pQu2ulfbNA2lZqm/i4BCiGmGjOg/wxnNrytHa5UrlYoAFrQ6v8EEBBdk/XXBRXr
	f8QILSvocyBVR3ioqxGWUrTOuGaBLaIMus8/9xlbQw6AQsChXS38/F2Ri3O4bz9LiR8ZOHr1ouL22
	KwkciipuueBn1dKfQL97EVVjAmMmkx5xzW20ty3ZIM61yHHdC79dk+UlUDkJdBd8uCL52kHCO8uxX
	F8gTA/NgUPxtefH+t33xKibTPlvUXVcQNye9vh42imxNmQfwGbdRP4YVcQXgK118dSdSDm/u5aDF5
	PteDf5kyXppGiKFFfwXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2vMM-0008BH-5t; Sat, 15 Feb 2020 11:11:42 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2vMH-000875-Ts
 for linux-rockchip@lists.infradead.org; Sat, 15 Feb 2020 11:11:39 +0000
Received: from p508fda41.dip0.t-ipconnect.de ([80.143.218.65]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1j2vM0-0006YX-5X; Sat, 15 Feb 2020 12:11:20 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Jianqun Xu <jay.xu@rock-chips.com>
Subject: Re: [PATCH v4 2/2] pinctrl: rockchip: split rockchip pinctrl driver
 by SoC type
Date: Sat, 15 Feb 2020 12:11:19 +0100
Message-ID: <6201612.znBgJCgWHB@phil>
In-Reply-To: <20200117081358.5772-3-jay.xu@rock-chips.com>
References: <c4ec95a7-aaf1-2331-352f-2def319a1c7d@rock-chips.com>
 <20200117081358.5772-1-jay.xu@rock-chips.com>
 <20200117081358.5772-3-jay.xu@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200215_031138_117931_C9FAABF5 
X-CRM114-Status: GOOD (  17.09  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-gpio@vger.kernel.org, linus.walleij@linaro.org,
 linux-kernel@vger.kernel.org, kever.yang@rock-chips.com,
 linux-rockchip@lists.infradead.org, david.wu@rock-chips.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Jay,

Am Freitag, 17. Januar 2020, 09:13:58 CET schrieb Jianqun Xu:
> The pinctrl-rockchip driver grows larger by adding support for
> each new SoC, that make the kernel Image size too large since
> it only under one config named PINCTRL_ROCKCHIP.
> 
> This patch split driver in the form of core driver + soc driver,
> - pinctrl-rockchip.c defined an platform probe register function
> - pinctrl-rkxxxx.c init module by matching compatible name
> 
> For rockchip_defconfig, it needs to select all PINCTRL_RKxxxx to
> keep same with old driver.
> 
> For some special defconfig, it can only select one PINCTRL_RKxxxx.
> 
> Reviewed-by: Kever Yang <kever.yang@rock-chips.com>
> Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
> ---
> changes since v3:
> - add base patch with directory change only, suggested by Robin
> - rebase patch
> 
> changes since v2:
> - remove rockchip_pinctrl_remove
> - rename rockchip_pinctrl_* to rockchip_pctrl_*
> - redule arguments for get_soc_data
> - add module author for each new driver files
> - add copyright for new driver files
> 
> changes since v1:
> - add rockchip_pinctrl_remove
> - remove unused head files in pinctrl-rockchip.h
> 
>  drivers/pinctrl/rockchip/Kconfig            |  114 +
>  drivers/pinctrl/rockchip/Makefile           |   14 +
>  drivers/pinctrl/rockchip/pinctrl-px30.c     |  224 ++
>  drivers/pinctrl/rockchip/pinctrl-rk2928.c   |   70 +
>  drivers/pinctrl/rockchip/pinctrl-rk3036.c   |   69 +
>  drivers/pinctrl/rockchip/pinctrl-rk3066a.c  |   72 +
>  drivers/pinctrl/rockchip/pinctrl-rk3066b.c  |   51 +
>  drivers/pinctrl/rockchip/pinctrl-rk3128.c   |  161 ++
>  drivers/pinctrl/rockchip/pinctrl-rk3188.c   |  147 ++
>  drivers/pinctrl/rockchip/pinctrl-rk3228.c   |  225 ++
>  drivers/pinctrl/rockchip/pinctrl-rk3288.c   |  210 ++
>  drivers/pinctrl/rockchip/pinctrl-rk3308.c   |  420 +++
>  drivers/pinctrl/rockchip/pinctrl-rk3328.c   |  272 ++
>  drivers/pinctrl/rockchip/pinctrl-rk3368.c   |  125 +
>  drivers/pinctrl/rockchip/pinctrl-rk3399.c   |  195 ++
>  drivers/pinctrl/rockchip/pinctrl-rockchip.c | 2547 ++-----------------
>  drivers/pinctrl/rockchip/pinctrl-rockchip.h |  388 +++
>  drivers/pinctrl/rockchip/pinctrl-rv1108.c   |  214 ++
>  18 files changed, 3149 insertions(+), 2369 deletions(-)

What Robin suggested, was doing this incrementally. So keep your patch1
but then do
- patch2: split out px30-pinctrl
- patch3: split out rk3288 pinctrl
- etc

Because even my mail client chokes on this massive 6000 line patch, so a
real review is actually very difficult.


> diff --git a/drivers/pinctrl/rockchip/Kconfig b/drivers/pinctrl/rockchip/Kconfig
> index 7a0077ca32dd..4873a05108f8 100644
> --- a/drivers/pinctrl/rockchip/Kconfig
> +++ b/drivers/pinctrl/rockchip/Kconfig
> @@ -5,8 +5,122 @@ if (ARCH_ROCKCHIP || COMPILE_TEST)
>  config PINCTRL_ROCKCHIP
>  	bool
>  	select PINMUX
> +	select PINCONF
>  	select GENERIC_PINCONF
> +	select GPIOLIB_IRQCHIP
>  	select GENERIC_IRQ_CHIP
>  	select MFD_SYSCON
>  
> +config PINCTRL_PX30
> +	tristate "PX30 pin controller driver"
> +	depends on GPIOLIB && OF
> +	select PINCTRL_ROCKCHIP

you might want to add a
	default y if ARM64
here
(similar default y if ARM for arm32 pinctrl drivers)

Because otherwise you're breaking peoples kernel configs and also
the default is to build a somewhat unified kernel in the default defconfigs,
so we want all matching pinctrl drivers by default and people then can
disable drivers if they really want to build a slimmed down kernel.

With the "if ARM" / "if ARM64" parts you even save some space by
default as well, as you build only the relevant drivers.


Heiko




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

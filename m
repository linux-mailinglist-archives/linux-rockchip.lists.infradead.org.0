Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB3E14F60A
	for <lists+linux-rockchip@lfdr.de>; Sat, 22 Jun 2019 15:49:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ez/haSNtrrtc2xUt0Wu27f0Wj6oDdvOVBXEw3RgmuD0=; b=AtUZH7M3GgNppy
	fsLNxvzGJsPRNdM+yC/kwRrHYgE/k6yCdAUwajulHbbiaO48/l9tpguaLetg+5RoKhM08Dk/cyU7p
	zXyXIOrGJKChIEb9yptwXKhxAGqyc5KXPV0MpvhwVKEBFcWbuRDqdG5wJEAP7hEjAx8zhdyAijoB3
	90Pn00y1TaLUINmeBJp0V1S7S0MobsmBnkssil4cUuTZCpHf+d38KJ9occZm21+inw+xtwkN4099f
	hwCsosoUdiSrXSvWkJKc2YgHhlCzU3RFo1wCuqr4Sqy4i9v4ck2JNCVIzNn452SOtCWLBWmZqT2VC
	4QQtzqojD7wCeXzHJjSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hegOo-0006Nj-3I; Sat, 22 Jun 2019 13:49:46 +0000
Received: from regular1.263xmail.com ([211.150.70.204])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hegOk-0006N3-S8
 for linux-rockchip@lists.infradead.org; Sat, 22 Jun 2019 13:49:44 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.167.29])
 by regular1.263xmail.com (Postfix) with ESMTP id 993CC191;
 Sat, 22 Jun 2019 21:49:34 +0800 (CST)
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
 P18159T140590654158592S1561211371864435_; 
 Sat, 22 Jun 2019 21:49:32 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <e02004a9d0fe5574ae7b68585ba852e3>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 110.125.168.244
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v2 5/8] rockchip: rk3399: Enable SPL_BOARD_INIT
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>, u-boot@lists.denx.de
References: <20190620185506.11449-1-jagan@amarulasolutions.com>
 <20190620185506.11449-6-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <5c735872-6d2f-56e3-f17d-8482fdf4a5de@rock-chips.com>
Date: Sat, 22 Jun 2019 21:49:33 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <20190620185506.11449-6-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190622_064943_089245_4743A9F9 
X-CRM114-Status: GOOD (  13.60  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.204 listed in list.dnswl.org]
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
> Enable SPL_BOARD_INIT globally to rk3399, this would
> help to print the SPL banner during bootup.
>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>

Reviewed-by: Kever Yang <kever.yang@rock-chips.com>

Thanks,
- Kever
> ---
>  arch/arm/mach-rockchip/Kconfig | 1 +
>  configs/puma-rk3399_defconfig  | 1 -
>  2 files changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/arm/mach-rockchip/Kconfig b/arch/arm/mach-rockchip/Kconfig
> index c05e3c3f48..ce039022df 100644
> --- a/arch/arm/mach-rockchip/Kconfig
> +++ b/arch/arm/mach-rockchip/Kconfig
> @@ -158,6 +158,7 @@ config ROCKCHIP_RK3399
>  	select SPL
>  	select SPL_ATF
>  	select SPL_ATF_NO_PLATFORM_PARAM if SPL_ATF
> +	select SPL_BOARD_INIT if SPL
>  	select SPL_LOAD_FIT
>  	select SPL_CLK if SPL
>  	select SPL_PINCTRL if SPL
> diff --git a/configs/puma-rk3399_defconfig b/configs/puma-rk3399_defconfig
> index ebc78fb216..5cb2273a15 100644
> --- a/configs/puma-rk3399_defconfig
> +++ b/configs/puma-rk3399_defconfig
> @@ -21,7 +21,6 @@ CONFIG_MISC_INIT_R=y
>  # CONFIG_DISPLAY_CPUINFO is not set
>  CONFIG_DISPLAY_BOARDINFO_LATE=y
>  CONFIG_SPL_TEXT_BASE=0xff8c2000
> -CONFIG_SPL_BOARD_INIT=y
>  # CONFIG_SPL_RAW_IMAGE_SUPPORT is not set
>  # CONFIG_SPL_LEGACY_IMAGE_SUPPORT is not set
>  CONFIG_SPL_STACK_R=y




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

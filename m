Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B69A617263
	for <lists+linux-rockchip@lfdr.de>; Wed,  8 May 2019 09:12:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hq2ZfrxWfx3yKGbv0Tp/sE8MeuJP7F8Dx1YvCfRl2f4=; b=Ri/3XzsgNUJqSA
	hJ9e6qqUvgSLJcHnzBHxLcUyjRDTQYRBXYkdzDO4ZPYDJgo5/d/VkqtmdFKuxbQfsGV+fwSBC4xOG
	P2pJLezyv5K9DzORVf7ZddNEfT6EP7StTuT9RRZAdeTo0631fp/GS8dVPJPr+X4NpnJGpmpr3WwL8
	SEn2iE7lqeNTckdhNJAqpEU3UFeCHZCWGjHL5MFcxno+KmGw3+wsjsHITaePkg0Uds4Q3nM2AwOHD
	zKyAKsW4+PxXLApYVkYQ6ZMpAW0y3yEhlEX3QzalXPImFxMC1hm6SOA3FH6cF6PEuWWVtEXXj8mXT
	3/Qw+wXeP1Zu9zKTVySA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOGkG-0002Cj-8R; Wed, 08 May 2019 07:12:04 +0000
Received: from regular1.263xmail.com ([211.150.70.198])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOGk3-00020X-1t
 for linux-rockchip@lists.infradead.org; Wed, 08 May 2019 07:12:01 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.165.252])
 by regular1.263xmail.com (Postfix) with ESMTP id 83B8C25A;
 Wed,  8 May 2019 15:11:47 +0800 (CST)
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
 P12364T140129911953152S1557299503173891_; 
 Wed, 08 May 2019 15:11:45 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <38fd00c2612e2c2f3d15170d046e21a5>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: u-boot@lists.denx.de
X-SENDER-IP: 103.29.142.67
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v3 6/6] Kconfig: Add u-boot.itb BUILD_TARGET for Rockchip
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
References: <20190507185215.15441-1-jagan@amarulasolutions.com>
 <20190507185215.15441-7-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <79d89674-3098-f784-bb83-2d98234b1501@rock-chips.com>
Date: Wed, 8 May 2019 15:11:43 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <20190507185215.15441-7-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_001152_445298_8F9581D1 
X-CRM114-Status: GOOD (  14.40  )
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
Cc: linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com,
 u-boot@lists.denx.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org



On 05/08/2019 02:52 AM, Jagan Teki wrote:
> Add u-boot.itb BUILD_TARGET for Rockchip platform when SPL_LOAD_FIT
> is being used.
>
> This can get rid of building itb explicitly with 'make u-boot.itb'
> so, from now all required images will build just by make.
>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>

Reviewed-by: Kever Yang <kever.yang@rock-chips.com>

Thanks,
- Kever
> ---
>  Kconfig             | 2 +-
>  doc/README.rockchip | 2 --
>  2 files changed, 1 insertion(+), 3 deletions(-)
>
> diff --git a/Kconfig b/Kconfig
> index 91c1082ace..6bcff29659 100644
> --- a/Kconfig
> +++ b/Kconfig
> @@ -240,7 +240,7 @@ config BUILD_TARGET
>  	default "u-boot-with-spl.sfp" if TARGET_SOCFPGA_GEN5
>  	default "u-boot-spl.kwb" if ARCH_MVEBU && SPL
>  	default "u-boot-elf.srec" if RCAR_GEN3
> -	default "u-boot.itb" if SPL_LOAD_FIT && ARCH_SUNXI
> +	default "u-boot.itb" if SPL_LOAD_FIT && (ROCKCHIP_RK3399 || ARCH_SUNXI)
>  	default "u-boot.kwb" if KIRKWOOD
>  	default "u-boot-with-spl.bin" if ARCH_AT91 && SPL_NAND_SUPPORT
>  	help
> diff --git a/doc/README.rockchip b/doc/README.rockchip
> index 88a4593392..c4e5f83da7 100644
> --- a/doc/README.rockchip
> +++ b/doc/README.rockchip
> @@ -103,7 +103,6 @@ For example:
>       => cd /path/to/u-boot
>       => make nanopi-neo4-rk3399_defconfig
>       => make
> -     => make u-boot.itb
>  
>     - Get the rkbin
>  
> @@ -170,7 +169,6 @@ For example:
>       => cd /path/to/u-boot
>       => make orangepi-rk3399_defconfig
>       => make
> -     => make u-boot.itb
>  
>       (Get spl/u-boot-spl-dtb.bin, u-boot.itb images and some boards would get
>        spl/u-boot-spl.bin since it doesn't enable CONFIG_SPL_OF_CONTROL)




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

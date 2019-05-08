Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B8AA16F90
	for <lists+linux-rockchip@lfdr.de>; Wed,  8 May 2019 05:43:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R4uhR3qnmmGWG015lJEAXik8snrYT6XaeY5RHkWajZU=; b=M6LzD8jXuv+Amj
	WqC3OfqeUuWpd1nlBibYmHWePf1EVCNQLf2N1li6pQmvJBAYeo6Oce7FscRNIsKKk0AbQ7wfgxDbm
	ovUCBZDGvQPW6LnH5GOtWxcNcD28mEuN26gLj3tXrfpLfpOUFyBFKxDtECRLK7G+jAr+KIrIHivCC
	dAR2KE+tJKOCqMtz1Easjzb4s2aZsobdXgl1MpHK0VU4SFI7vHEauFUV1euYirIR5rQ5tj2C0+TuH
	wPAhblAFIU1xy3dg/vSWW5JTeFOY4xvpx8hWPfyK1wwwwdzwQJJpJKioD/4fP8GMoB8ZrIbxsb0Km
	ljvBr9LTmYsPLR/II8Gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hODUZ-0000hK-Pd; Wed, 08 May 2019 03:43:39 +0000
Received: from regular1.263xmail.com ([211.150.70.196])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hODUW-0000gf-6H
 for linux-rockchip@lists.infradead.org; Wed, 08 May 2019 03:43:37 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.165.105])
 by regular1.263xmail.com (Postfix) with ESMTP id 3964081E;
 Wed,  8 May 2019 11:43:33 +0800 (CST)
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
 P31606T140271866074880S1557287005435879_; 
 Wed, 08 May 2019 11:43:31 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <9de750bbd1657cd0fc7e5dd0358b47cb>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: u-boot@lists.denx.de
X-SENDER-IP: 103.29.142.67
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH] rockchip: rk3399: orangepi: Add SPL_TEXT_BASE
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
References: <20190507182440.4501-1-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <2b5903f5-547e-e459-986e-c4d48e616988@rock-chips.com>
Date: Wed, 8 May 2019 11:43:25 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <20190507182440.4501-1-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_204336_398392_409B13EA 
X-CRM114-Status: GOOD (  15.95  )
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



On 05/08/2019 02:24 AM, Jagan Teki wrote:
> CONFIG_SPL_TEXT_BASE was available in configs/rk3399_common.h
> when the OrangePI rk3399 board supported during first
> version patch.
>
> But, later below change which move this config into Kconfig and
> same has been merged in mainline tree.
> "configs: move CONFIG_SPL_TEXT_BASE to Kconfig"
> (sha1: f89d6133eef2e068f9c33853b6584d7fcbfa9d2e)
>
> Unfortunately, the maintainer applied the initial version patch,
> instead of looking for next version changes.
>
> Fix it by adding SPL_TEXT_BASE in orangepi-rk3399 defconfig.
>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>

Reviewed-by: Kever Yang <kever.yang@rock-chips.com>

Thanks,
- Kever
> ---
>  configs/orangepi-rk3399_defconfig | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/configs/orangepi-rk3399_defconfig b/configs/orangepi-rk3399_defconfig
> index cdccf221b5..ba13976cc6 100644
> --- a/configs/orangepi-rk3399_defconfig
> +++ b/configs/orangepi-rk3399_defconfig
> @@ -17,6 +17,7 @@ CONFIG_SPL_FIT_GENERATOR="arch/arm/mach-rockchip/make_fit_atf.py"
>  CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-orangepi.dtb"
>  # CONFIG_DISPLAY_CPUINFO is not set
>  CONFIG_DISPLAY_BOARDINFO_LATE=y
> +CONFIG_SPL_TEXT_BASE=0xff8c2000
>  CONFIG_SPL_STACK_R=y
>  CONFIG_SPL_STACK_R_MALLOC_SIMPLE_LEN=0x4000
>  CONFIG_SPL_ATF=y




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

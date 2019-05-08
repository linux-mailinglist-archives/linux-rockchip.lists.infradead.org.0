Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E25DE17B11
	for <lists+linux-rockchip@lfdr.de>; Wed,  8 May 2019 15:52:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=30SC3YSZvysdEpQeH0MIF9O4xQKvX+BnRppaHjuWHUU=; b=GIXzgI1uFgNmBTWJM1KYNWR67
	ukgdBlkYZIkuznERXZtxQLVNdGr1GIsY1fCzMsQ5INi+jw9rSphzm09HNKNV2B/XG+fVQCUYtEr/T
	DVgtS1JyAoeeqAYAusVrpN5/7hNnaJsZ4SdRLgKWIBGMdR+EUqwOlMo/wte091ApFBK3kkWP4BVrf
	h9jLnu37I4MGU1ztYjUsomfveTY2JiKuKG2veMZbVz3BGF4IZbDF6FjmyHS+aywaYvzmbnu5l1eYb
	Zr5IIfa2BcN1Ei5zxZxmK7aCMe3CsJpbQZyvzqlpQxeuT6oZRizASEEmTiksZWUO31bRROXRXkzV8
	pmwaNy2oA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOMzU-0000iZ-E2; Wed, 08 May 2019 13:52:12 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOMzQ-0000hq-FU
 for linux-rockchip@lists.infradead.org; Wed, 08 May 2019 13:52:09 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7527280D;
 Wed,  8 May 2019 06:52:05 -0700 (PDT)
Received: from [10.1.196.75] (e110467-lin.cambridge.arm.com [10.1.196.75])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E3CF93F238;
 Wed,  8 May 2019 06:52:03 -0700 (PDT)
Subject: Re: [RESEND PATCH v7 05/11] rockchip: dts: rk3399: nanopi4: Use CD
 pin as RK_FUNC_1
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, Akash Gajjar <akash@openedev.com>
References: <20190508054151.21762-1-jagan@amarulasolutions.com>
 <20190508054151.21762-6-jagan@amarulasolutions.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <649bcf2d-429e-cd6d-1ed6-f797604fb90c@arm.com>
Date: Wed, 8 May 2019 14:52:02 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190508054151.21762-6-jagan@amarulasolutions.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_065208_523979_2DACB3C1 
X-CRM114-Status: GOOD (  26.03  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
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
Cc: Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com,
 u-boot@lists.denx.de
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On 08/05/2019 06:41, Jagan Teki wrote:
> sdmmc cd pin is configured as RK_FUNC_GPIO which is wrong and
> indeed failed to detect the sdcard on the board with below error
> 
>    Card did not respond to voltage select!
> 
> So, fix it by replacing RK_FUNC_GPIO with RK_FUNC_1 which
> is already defined in rk3399.dts so make use of same like
> other boards.

AFAICS this should also be true of RockPro64 and (at least with the 
Linux DT) Firefly - those aren't grabbing &sdmmc_cd by default either. I 
imagine that U-Boot might also see similar problems on Gru, where the 
card detect signal is on a completely different GPIO.

I'd note that in Linux, only rk3399-evb is actually *using* &sdmmc_cd - 
despite the fact that they claim it, nearly all the other boards also 
have "cd-gpios" and thus end up overriding the dedicated function with 
an implicit GPIO configuration anyway. Sapphire is the odd one out in 
using "broken-cd" as the less-efficient way of mitigating the runtime PM 
issue.

> Add these changes in -u-boot.dtsi to make Linux sync easy for future
> changes.
> 
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> Reviewed-by: Kever Yang <kever.yang@rock-chips.com>
> ---
>   arch/arm/dts/rk3399-nanopi4-u-boot.dtsi | 9 +++++++++
>   1 file changed, 9 insertions(+)
>   create mode 100644 arch/arm/dts/rk3399-nanopi4-u-boot.dtsi
> 
> diff --git a/arch/arm/dts/rk3399-nanopi4-u-boot.dtsi b/arch/arm/dts/rk3399-nanopi4-u-boot.dtsi
> new file mode 100644
> index 0000000000..20db99c0b8
> --- /dev/null
> +++ b/arch/arm/dts/rk3399-nanopi4-u-boot.dtsi
> @@ -0,0 +1,9 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +/*
> + * Copyright (C) 2019 Jagan Teki <jagan@amarulasolutions.com>
> + */
> +
> +&sdmmc {
> +	pinctrl-names = "default";

That's already set in the base DTSI, so doesn't really need to be 
shadowed here.

> +	pinctrl-0 = <&sdmmc_bus4 &sdmmc_clk &sdmmc_cmd &sdmmc_cd>;
> +};
> 

I suppose you could also delete the "cd-gpios" property to make it 
really clear what this override is for (and save a few bytes if it's 
going to be ignored anyway).

Robin.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

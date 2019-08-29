Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34CCBA1822
	for <lists+linux-rockchip@lfdr.de>; Thu, 29 Aug 2019 13:19:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=IBJ8ypXr10Ntwmk5nlW37DtAHQHXVO3zBqszyI5NMNI=; b=BFmDHLoq9RVtRUBreCfB8yrGa
	N8BvpOaIe/H+ZGkFhY4E+KHR/zTQ0rHQwProIQrfKaoCYnioreo0duqtQ7MDyKPUUBl6nMiQhWByv
	Fe9/yid1mElIngPrz5uUt4xycc80ow+awtAxZ/AKyjewJ/43flmCqpQ5Wter6QIQv+AvWY3YrIj29
	hyrdQ+//7HfIU071fSeL0PpgygjMs+WLNItGVqXsXBUeyEaR16WPwPUwjjPNQivJj3s+wpnP49sRo
	zZdsVjWmNLj89JYLamB5N2GO0uGuRDQNoYF6hoLK+K9rXzNktwP5av3bMMAGXx3yuy4KYhrx3x0Pp
	YjR+tlLLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3IT3-0001iZ-22; Thu, 29 Aug 2019 11:19:53 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i3IRL-0000HR-Lh
 for linux-rockchip@lists.infradead.org; Thu, 29 Aug 2019 11:18:08 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D9C4C360;
 Thu, 29 Aug 2019 04:18:05 -0700 (PDT)
Received: from [10.1.197.57] (e110467-lin.cambridge.arm.com [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4C05D3F59C;
 Thu, 29 Aug 2019 04:18:05 -0700 (PDT)
Subject: Re: [PATCH] arm64: dts: rockchip: limit clock rate of eMMC for rk3328
 boards
To: Shawn Lin <shawn.lin@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>
References: <1567068062-174383-1-git-send-email-shawn.lin@rock-chips.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <13f7aa42-068d-e849-1355-68ec566f9712@arm.com>
Date: Thu, 29 Aug 2019 12:18:04 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1567068062-174383-1-git-send-email-shawn.lin@rock-chips.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_041807_770534_A8FDFC6E 
X-CRM114-Status: GOOD (  19.54  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-rockchip@lists.infradead.org, Liang Chen <cl@rock-chips.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On 29/08/2019 09:41, Shawn Lin wrote:
> max-frequency is missing for rk3328-evb and rk3328-rock64, so the
> eMMC will run into 200MHz bus clock in HS200 mode. The IO can only
> support up to 150MHz for rk3228 Soc, so now rk3328 boards are not
> always boot properly.

Hmm, if 150MHz is a fundamental limitation of the SoC, maybe we should 
just add it to the .dtsi? Board-level files could still override it with 
a lower value if need be, but it would obviate the worry of missing it 
when adding new boards.

Robin.

> Fixes: 955bebde057e ("arm64: dts: rockchip: add rk3328-rock64 board")
> Fixes: 0c1f8546753f ("arm64: dts: rockchip: add RK3328 eavluation board devicetree")
> Cc: Liang Chen <cl@rock-chips.com>
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
> ---
> 
>   arch/arm64/boot/dts/rockchip/rk3328-evb.dts    | 1 +
>   arch/arm64/boot/dts/rockchip/rk3328-rock64.dts | 1 +
>   2 files changed, 2 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3328-evb.dts b/arch/arm64/boot/dts/rockchip/rk3328-evb.dts
> index 49c4b96..a5d8b0c 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3328-evb.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3328-evb.dts
> @@ -73,6 +73,7 @@
>   &emmc {
>   	bus-width = <8>;
>   	cap-mmc-highspeed;
> +	max-frequency = <150000000>;
>   	non-removable;
>   	pinctrl-names = "default";
>   	pinctrl-0 = <&emmc_clk &emmc_cmd &emmc_bus8>;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts b/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
> index 62936b4..e99e22e 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
> @@ -132,6 +132,7 @@
>   &emmc {
>   	bus-width = <8>;
>   	cap-mmc-highspeed;
> +	max-frequency = <150000000>;
>   	mmc-hs200-1_8v;
>   	non-removable;
>   	pinctrl-names = "default";
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

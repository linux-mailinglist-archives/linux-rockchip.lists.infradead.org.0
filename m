Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 464AA17378C
	for <lists+linux-rockchip@lfdr.de>; Fri, 28 Feb 2020 13:49:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=t5tp54zEs27kEOf4gjoTPad0ght3JkQKX6roRfz5RZw=; b=oL18yqi4Kc1BjHPArIJFUOb6d
	bnmCOgvduKgIiaxT14tGnrWexfXCOGDPmeooouV07DsMgvJ22dtbrRwNzT3rtpaZnx0wyiM1xFlti
	huydEEgIxoZKLs8nvKS1/mhy1BMlWvTzr5stx6OeYRu4iHiJi/qzlSwIrQXnz5BuKmh8XQB/VBKLb
	8713eyzCyzYvrsOgj65ApIps8vEg7FelW/KGa1VjnlSIGGrUjioqHMl2fNYbHdroXJepcF2JZl9Lh
	YD7kn6IhBZjvVKA8Bk0yYoSblsMifnXMA5IFxOGF1msu23Wj2Si/+jgqEoq72v/e/TR8tKYQicNXt
	JjM3C77VA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7f4k-0001dy-3W; Fri, 28 Feb 2020 12:49:06 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7f4Y-0001UG-04; Fri, 28 Feb 2020 12:48:55 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 12BE34B2;
 Fri, 28 Feb 2020 04:48:53 -0800 (PST)
Received: from [10.1.196.37] (e121345-lin.cambridge.arm.com [10.1.196.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D82A33F7B4;
 Fri, 28 Feb 2020 04:48:51 -0800 (PST)
Subject: Re: [PATCH v2 3/3] arm64: dts: rockchip: Describe RK3328 GPIO_MUTE
 users
From: Robin Murphy <robin.murphy@arm.com>
To: heiko@sntech.de
References: <cover.1581376744.git.robin.murphy@arm.com>
 <53637c0359ad9473dc1391a8428ba21017ec467e.1581376744.git.robin.murphy@arm.com>
Message-ID: <59fe8a7d-22ab-6098-5266-4fdf4bf41adb@arm.com>
Date: Fri, 28 Feb 2020 12:48:50 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <53637c0359ad9473dc1391a8428ba21017ec467e.1581376744.git.robin.murphy@arm.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_044854_093493_51D3F336 
X-CRM114-Status: GOOD (  17.41  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
 lgirdwood@gmail.com, linux-rockchip@lists.infradead.org, broonie@kernel.org,
 pgwipeout@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Heiko,

On 18/02/2020 9:32 pm, Robin Murphy wrote:
> Add explicit properties to describe existing boards' GPIO_MUTE usage
> for the analog codec.

Are you happy to pick this up now that the driver patches are queued?

Thanks,
Robin.

> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> ---
> 
> v2: no change
> 
>   arch/arm64/boot/dts/rockchip/rk3328-a1.dts     | 1 +
>   arch/arm64/boot/dts/rockchip/rk3328-rock64.dts | 1 +
>   2 files changed, 2 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3328-a1.dts b/arch/arm64/boot/dts/rockchip/rk3328-a1.dts
> index 16f1656d5203..797e90a3ac92 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3328-a1.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3328-a1.dts
> @@ -60,6 +60,7 @@
>   };
>   
>   &codec {
> +	mute-gpios = <&grf_gpio 0 GPIO_ACTIVE_LOW>;
>   	status = "okay";
>   };
>   
> diff --git a/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts b/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
> index 62936b432f9a..bf3e546f5266 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
> @@ -104,6 +104,7 @@
>   };
>   
>   &codec {
> +	mute-gpios = <&grf_gpio 0 GPIO_ACTIVE_LOW>;
>   	status = "okay";
>   
>   	port@0 {
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

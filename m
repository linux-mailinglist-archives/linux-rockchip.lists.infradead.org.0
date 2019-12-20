Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48F4512729C
	for <lists+linux-rockchip@lfdr.de>; Fri, 20 Dec 2019 01:56:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8dxO5JvEb4W4naqbzniT8+EHZbn2fhGN6TDrk7ppBwo=; b=KvBGBcqasWgCj9
	WXGVBOG+C4OTtyIDXOfSeVIDMs2Ec6+MY7k5LKre2cQkDrPyNkVTjzxOGE95oEJsjY4iN4QNopW2J
	G3//GhDoMf3v7aa6dhYoBdliGdPg23YGlzVpkiLBihS4nSHS3gQfj9ACGLsVkbpzM/H7Ej7klp8RG
	DRsA2iAZP3eaksRgfgyuvewcPa4MLMkQJotYIF/iFnT/PhHgFfTFuLZ2KUlkHR70ubJGY5xRC2eEc
	RZHU92HB5mItocK/uRiowjcqp1/eIcUV70pQB5KvU55jaQuTeTYOVltWI53OEl1czg5vs1iDl79M/
	yQQqDNCHlncAOZtqwLeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii6aN-0007KT-Hr; Fri, 20 Dec 2019 00:56:07 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii6aJ-0007Jl-Je
 for linux-rockchip@lists.infradead.org; Fri, 20 Dec 2019 00:56:05 +0000
Received: from ip5f5a5f74.dynamic.kabel-deutschland.de ([95.90.95.116]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1ii6aF-00061N-6O; Fri, 20 Dec 2019 01:55:59 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Describe PX30 caches
Date: Fri, 20 Dec 2019 01:55:58 +0100
Message-ID: <1982322.8UTTk47u2F@diego>
In-Reply-To: <20191204103940.22050-1-miquel.raynal@bootlin.com>
References: <20191204103940.22050-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_165603_794319_FDB011FF 
X-CRM114-Status: GOOD (  15.29  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Mittwoch, 4. Dezember 2019, 11:39:40 CET schrieb Miquel Raynal:
> PX30 SoCs feature 4 Cortex-A35 CPUs with each of them a L1 data and
> instruction cache. Both are 32kiB wide (PX30 TRM) and made of 64-bit
> lines (ARM Cortex-A35 manual). I-cache is 2-way set associative (ARM
> Cortex-A35 manual), D-cache is 4-way set associative (ARM
> Cortex-A35manual).
> 
> An L2 cache is placed after these 4 L1 caches (PX30 TRM), is 256kiB
> wide (PX30 TRM) and made of 64-bit lines (ARM Cortex-A35 manual) and
> is 8-way set associative (ARM Cortex-A35 manual).
> 
> Describe all of them in the PX30 DTSI.
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
>  arch/arm64/boot/dts/rockchip/px30.dtsi | 35 ++++++++++++++++++++++++++
>  1 file changed, 35 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
> index 1fd12bd09e83..0e10a224a84b 100644
> --- a/arch/arm64/boot/dts/rockchip/px30.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
> @@ -48,6 +48,13 @@
>  			cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP>;
>  			dynamic-power-coefficient = <90>;
>  			operating-points-v2 = <&cpu0_opp_table>;
> +			i-cache-size = <0x8000>;
> +			i-cache-line-size = <64>;
> +			i-cache-sets = <256>;
> +			d-cache-size = <0x8000>;
> +			d-cache-line-size = <64>;
> +			d-cache-sets = <128>;
> +			next-level-cache = <&l2>;
>  		};
>  
>  		cpu1: cpu@1 {
> @@ -60,6 +67,13 @@
>  			cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP>;
>  			dynamic-power-coefficient = <90>;
>  			operating-points-v2 = <&cpu0_opp_table>;
> +			i-cache-size = <0x8000>;
> +			i-cache-line-size = <64>;
> +			i-cache-sets = <256>;
> +			d-cache-size = <0x8000>;
> +			d-cache-line-size = <64>;
> +			d-cache-sets = <128>;
> +			next-level-cache = <&l2>;
>  		};
>  
>  		cpu2: cpu@2 {
> @@ -72,6 +86,13 @@
>  			cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP>;
>  			dynamic-power-coefficient = <90>;
>  			operating-points-v2 = <&cpu0_opp_table>;
> +			i-cache-size = <0x8000>;
> +			i-cache-line-size = <64>;
> +			i-cache-sets = <256>;
> +			d-cache-size = <0x8000>;
> +			d-cache-line-size = <64>;
> +			d-cache-sets = <128>;
> +			next-level-cache = <&l2>;
>  		};
>  
>  		cpu3: cpu@3 {
> @@ -84,6 +105,13 @@
>  			cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP>;
>  			dynamic-power-coefficient = <90>;
>  			operating-points-v2 = <&cpu0_opp_table>;
> +			i-cache-size = <0x8000>;
> +			i-cache-line-size = <64>;
> +			i-cache-sets = <256>;
> +			d-cache-size = <0x8000>;
> +			d-cache-line-size = <64>;
> +			d-cache-sets = <128>;
> +			next-level-cache = <&l2>;
>  		};
>  
>  		idle-states {
> @@ -107,6 +135,13 @@
>  				min-residency-us = <2000>;
>  			};
>  		};
> +
> +		l2: l2-cache {
> +			compatible = "cache";
> +			cache-size = <0x40000>;
> +			cache-line-size = <64>;
> +			cache-sets = <512>;
> +		};
>  	};

Looks like Rob did answer my unspoken question, citing his reply to
	"arm64: dts: amazon: add Amazon's Annapurna Labs Alpine v3 support" [0]

"We only define cache attributes if not discoverable or the cache ID 
registers are wrong and you need to override what's discoverable."

So unless the cache information read during boot is wrong, it looks
like we don't need this.

Heiko


[0] https://patchwork.kernel.org/patch/11279705/




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

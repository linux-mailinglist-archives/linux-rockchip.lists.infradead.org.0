Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCEE831B0D
	for <lists+linux-rockchip@lfdr.de>; Sat,  1 Jun 2019 11:51:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lh/gvKgQDG9TmBRAufTmj+dYX02r6Yx7vARhtPRWmNs=; b=N1duxzmjNg3QbU
	dzZMkOI2Tpodh3MFIiCYGZkikf88OrvzKUljZ7eOdnQQz1d2Skr+R/Vwr4ICf5jcyC/be9wKf9Zx8
	l/tnXv7U71emtdOs9/y5+ZJciSgvbZ0MFfwZLqwqWVhXM3Mh03QXrBlU7MC11IScsrcQahGFWHgjZ
	6yMhTz/ZKNCWy14RbJJYLGBLYM+QN1suX5l0OVIE98MrwDaNsazhYkwCAZKf0sVTiL3+avNH25eyQ
	Af6/ujvIotcBrN61+GAQ2gtK4VEfo85FF8HxD+unV2K7roZjexxMJ1wqmzUYY4YQ0gC2V47thQsQJ
	eEc7vRD7gK4Fbb0ocHFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hX0ff-00042u-C2; Sat, 01 Jun 2019 09:51:27 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hX0fX-0003wE-K0
 for linux-rockchip@lists.infradead.org; Sat, 01 Jun 2019 09:51:21 +0000
Received: by mail-pf1-x443.google.com with SMTP id u22so7703722pfm.3
 for <linux-rockchip@lists.infradead.org>; Sat, 01 Jun 2019 02:51:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=RNxGbxuQjJnKHmflH8io0Yh7K3STajOAFY5UlUeImlE=;
 b=ftzq3jR2++4o8NJW8hDTNe4IEPPtpBxc6+CvixxSQYqrrMYyMK0FzKvHhVlVMpyjLp
 tsuJMJbjfLULDaK8sjJNLkWrG9vMaaoGRnWlq0I6CSgjjB8uz8CX938f5shEc+LbxgsV
 aI3kxJoTtsRnwz5Q1H9OZv8R6MOdfFvNsQ5gewgkPYS1+z7b/vNHrpeLVukE/dRo6gMn
 54ps7O57q9L+8NcpZxWwMTIDedNIrIEmZ2qwSNkT8qyXqDxN3Z3dHi46EyyQC570ti1y
 SOt7Ls7zsxDaxnTuxtrW4XT7TWqp284BP8+qP/5qZDEAqOV3Wav7gzaRZSro76A9VIWZ
 V5rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=RNxGbxuQjJnKHmflH8io0Yh7K3STajOAFY5UlUeImlE=;
 b=SXu59SPdge1BcbsZhJIF7NoCUIFuq+nqiFpzGi6v427lguJVEJu4ewtS9p7N4EbaT1
 1Q4t74HHBFVHxcq4RmAO8fwA/SQofMbM2GlN857IXC/5ypKHIcZ2dwEFWm3Di3OCzvmQ
 u/+VOnxyfBGomMHqH7dm1YS1Mjn2VyMStCoNt1JfrcZ8p0f+vRHeyotlmArNjSCzeMie
 IcLBSvBcwTJCR6aVd8dzaPIEKPcIYDQ2E1zYJM7Dt9LfVl+ik2fDPV0BWRe8smCw0NTw
 Q6ny88g+O1tQpkub9DqR2jPmKtKq+bekaGk5oh97V4ZwCZg13NUmGWMgh6P3t0dnNSxg
 Xj1A==
X-Gm-Message-State: APjAAAWQQbwehOYD1YyvJUoqZFbFZs7i7/jPMfVR2QS5X1qqHLokXKv7
 AFE/kq846ceDJ60Hu45c5Rcl
X-Google-Smtp-Source: APXvYqx465ZqZSGI5f9aNCQ1QW6+B2C0NyP5YwUfaCtwz4wNoXssIWR/WyKtFDiUgKvIIdWIaw3JMw==
X-Received: by 2002:a62:1993:: with SMTP id 141mr15320990pfz.97.1559382677973; 
 Sat, 01 Jun 2019 02:51:17 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2405:204:73c0:f79b:51a5:964b:dc02:28ec])
 by smtp.gmail.com with ESMTPSA id u14sm9611863pfc.31.2019.06.01.02.51.09
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 01 Jun 2019 02:51:16 -0700 (PDT)
Date: Sat, 1 Jun 2019 15:21:06 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Anand Moon <linux.amoon@gmail.com>
Subject: Re: [PATCH v2] arm64: dts: rockchip: Add missing configuration pwr
 amd rst for PCIe
Message-ID: <20190601095106.GA2213@Mani-XPS-13-9360>
References: <20190531201913.1122-1-linux.amoon@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190531201913.1122-1-linux.amoon@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190601_025119_659258_7A756DCE 
X-CRM114-Status: GOOD (  17.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
 linux-kernel@vger.kernel.org, Vicente Bergas <vicencb@gmail.com>,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Jagan Teki <jagan@amarulasolutions.com>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Ezequiel Garcia <ezequiel@collabora.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi,

On Fri, May 31, 2019 at 08:19:13PM +0000, Anand Moon wrote:
> This patch add missing PCIe gpio pin (#PCIE_PWR) for vcc3v3_pcie power
> regulator node also add missing reset pinctrl (#PCIE_PERST_L) for PCIe node.
> 
> Signed-off-by: Anand Moon <linux.amoon@gmail.com>
> ---
> using schematics: thanks for suggested by Manivannan
> [1] https://dl.vamrs.com/products/rock960/docs/hw/rock960_sch_v12_20180314.pdf
> 
> Changes from prevoius patch:
> [2] https://patchwork.kernel.org/patch/10968695/
> 
> Fix the suject and commit message and corrected the PWR and PERST configuration
> as per shematics and dts nodes.
> ---
>  arch/arm64/boot/dts/rockchip/rk3399-ficus.dts    | 7 +++++++
>  arch/arm64/boot/dts/rockchip/rk3399-rock960.dts  | 7 +++++++
>  arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi | 3 +--
>  3 files changed, 15 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-ficus.dts b/arch/arm64/boot/dts/rockchip/rk3399-ficus.dts
> index 6b059bd7a04f..94e2a59bc1c7 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-ficus.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-ficus.dts
> @@ -89,6 +89,8 @@
>  
>  &pcie0 {
>  	ep-gpios = <&gpio4 RK_PD4 GPIO_ACTIVE_HIGH>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pcie_clkreqn_cpm &pcie_perst_l>;

Looks like ep-gpio is wrong here :/ I probably referred old schematics
at that time. Correct pin mapping is,

ep-gpios = <&gpio2 RK_PD4 GPIO_ACTIVE_HIGH>;

And this should be fixed in a separate patch with "Fixes" tag!

>  };
>  
>  &pinctrl {
> @@ -104,6 +106,11 @@
>  			rockchip,pins =
>  				<1 RK_PD0 RK_FUNC_GPIO &pcfg_pull_none>;
>  			};
> +
> +		pcie_perst_l: pcie-perst-l {
> +			rockchip,pins =
> +				<4 RK_PD4 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
>  	};
>  
>  	usb2 {
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dts b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dts
> index 12285c51cceb..665fe09c7c74 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dts
> @@ -64,6 +64,8 @@
>  
>  &pcie0 {
>  	ep-gpios = <&gpio2 RK_PA2 GPIO_ACTIVE_HIGH>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pcie_clkreqn_cpm &pcie_perst_l>;
>  };
>  
>  &pinctrl {
> @@ -104,6 +106,11 @@
>  			rockchip,pins =
>  				<2 RK_PA5 RK_FUNC_GPIO &pcfg_pull_none>;
>  			};
> +
> +		pcie_perst_l: pcie-perst-l {
> +			rockchip,pins =
> +				<2 RK_PA2 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
>  	};
>  
>  	usb2 {
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi
> index c7d48d41e184..3df0cd67b4b2 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi
> @@ -55,6 +55,7 @@
>  
>  	vcc3v3_pcie: vcc3v3-pcie-regulator {
>  		compatible = "regulator-fixed";
> +		gpio = <&gpio2 RK_PA5 GPIO_ACTIVE_HIGH>;

Actually the PWR pin mapping is defined in a separate node for both Rock960
and Ficus in respective dts. So defining it here would be wrong as the PWR
pin mapping is different for both boards.

Thanks,
Mani

>  		enable-active-high;
>  		pinctrl-names = "default";
>  		pinctrl-0 = <&pcie_drv>;
> @@ -382,8 +383,6 @@
>  
>  &pcie0 {
>  	num-lanes = <4>;
> -	pinctrl-names = "default";
> -	pinctrl-0 = <&pcie_clkreqn_cpm>;
>  	vpcie3v3-supply = <&vcc3v3_pcie>;
>  	status = "okay";
>  };
> -- 
> 2.21.0
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

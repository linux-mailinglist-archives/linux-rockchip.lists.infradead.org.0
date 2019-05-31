Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AE0C30788
	for <lists+linux-rockchip@lfdr.de>; Fri, 31 May 2019 06:02:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QxFrUpl+YYZGWsETO4qvLPbPhEf3hPRLiccA0UjZ3HQ=; b=L8HMlnnam1J4DQ
	4xS2kDaAUkDxQ8syV9IM9njVH5FpkYceel1TwwEVFyCUrRMnUKZkQ9hcsiqjSsalysQ9oXPrNDEFx
	PS/W4SoRikmQhvhB7GQCIUCC/w4sWnOvHL9bTqhT8rGzj21ZtPt+cMq3UYdLiULhjA6oA8KxXwieW
	D6fnDiwC7jeMNHhkND17e+n3UcqHR5cCLOllcVeCKHNZhTcp8PXePilf90ayRRbZ/np/j1tk3Ac1y
	mTS1j6PhIt1JoVfW7iIRY/mqKzBQTR48mkD6XDKsNQgmSgtOqFKl+AIbRwJ1LV/Yjf8+c9E9PhXsA
	mAQZTpb/+cPsbULfv71A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWYkX-0001ie-Az; Fri, 31 May 2019 04:02:37 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWYkT-0001hn-Ph
 for linux-rockchip@lists.infradead.org; Fri, 31 May 2019 04:02:35 +0000
Received: by mail-pf1-x441.google.com with SMTP id j2so5314906pfe.6
 for <linux-rockchip@lists.infradead.org>; Thu, 30 May 2019 21:02:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=ukEC3MMMF7VZfZKjRmeuoQSQX5eGcJH/5lmeM5Xiv1s=;
 b=VXw9JliX+By7ETjpg/VwT4cIvO5bt9B5kaUNS2hcsP92UbdLa1fgpaQAE/XPqJSi/7
 qBTnZtb9FYsYB/JtGEalVQ7ZZYtdHM4K5tJy44QI1wae6QDJJ6S6xEvY4zV25yXLj0CZ
 2MZqvtdmBIoISzz2bpfpAUYtDs14qrbKfwdwqmhwipBSmelAD2M1dde0La5Nr8hrGpXN
 vSzuF5L7pr/hdm+lHqsgGzCD0/7xwed8vMYeMKe/4H5rC+PljIl3sPxhcohWdzLdxYFR
 D2w+5vzntIcMRodAV6qZV7cE2XYHYiHmQrgogQZ7ubjNO0Lh9y3elutJb5Pb9iO8vsbM
 QB5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ukEC3MMMF7VZfZKjRmeuoQSQX5eGcJH/5lmeM5Xiv1s=;
 b=UUvlbg1aN1xEH6l9HgKFRs/BoVhhLDgqdOT1kTbd8F3wF5CwzC7vLeaetbcVpOg+5d
 gE/sKCNnfwdK+Lvdi5P01TG4qVKEmFyTLJ/mcC0Ner7AljAo5DGzrgaGqRswhyKPOCBC
 BEIIlKy7hMvww3o4GtC1LqY18L7jBsouhjGM69i1EwBVwlUtKEmRE0VBAId5n1DYMKLf
 eR7uTiRE4VZ+9aTyNGq5a1ub1cpleTo4egVDq13nQ1MyTGpq0yldlwpfViXDPypt28a/
 xISlX05+QFuSpUdYL/1E6rYiuR9dYYYF6JkgJiRjPIbijm9BjFknvNtXKQEu+fLK3P7P
 P0DA==
X-Gm-Message-State: APjAAAUQAtbkXts+uYaqxVV/4+WXrkZkO66aFUsXhDsqM7fqx51iwKAR
 RpGgRpZor8+huBnthC0y4HDx
X-Google-Smtp-Source: APXvYqzvhodd3uafA/IahYHPivWkQXtELuD62p5DCQP+wY6MG98U46yQKwyEMeP2EeyQeZcrUWJbVQ==
X-Received: by 2002:a17:90a:26a9:: with SMTP id
 m38mr6679956pje.93.1559275352740; 
 Thu, 30 May 2019 21:02:32 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2405:204:72cb:ebf2:a51d:3877:feab:5634])
 by smtp.gmail.com with ESMTPSA id q7sm4348899pjb.0.2019.05.30.21.02.26
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 30 May 2019 21:02:31 -0700 (PDT)
Date: Fri, 31 May 2019 09:32:22 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Anand Moon <linux.amoon@gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Add missing PCIe pwr amd rst
 configuration
Message-ID: <20190531040222.GB9641@Mani-XPS-13-9360>
References: <20190530125837.730-1-linux.amoon@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190530125837.730-1-linux.amoon@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_210233_975998_39918515 
X-CRM114-Status: GOOD (  16.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, Jagan Teki <jagan@amarulasolutions.com>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Ezequiel Garcia <ezequiel@collabora.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi,

On Thu, May 30, 2019 at 12:58:37PM +0000, Anand Moon wrote:
> This patch add missing PCIe gpio and pinctrl for power (#PCIE_PWR)
> also add PCIe gpio and pinctrl for reset (#PCIE_PERST_L).
> 
> Signed-off-by: Anand Moon <linux.amoon@gmail.com>
> ---
> Tested on Rock960 Model A
> ---
>  arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi | 16 ++++++++++++++--
>  1 file changed, 14 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi
> index c7d48d41e184..f5bef6b0fe89 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi
> @@ -55,9 +55,10 @@
>  
>  	vcc3v3_pcie: vcc3v3-pcie-regulator {
>  		compatible = "regulator-fixed";
> +		gpio = <&gpio2 RK_PA2 GPIO_ACTIVE_HIGH>;
>  		enable-active-high;
>  		pinctrl-names = "default";
> -		pinctrl-0 = <&pcie_drv>;
> +		pinctrl-0 = <&pcie_drv &pcie_pwr>;
>  		regulator-boot-on;
>  		regulator-name = "vcc3v3_pcie";
>  		regulator-min-microvolt = <3300000>;
> @@ -381,9 +382,10 @@
>  };
>  
>  &pcie0 {
> +	ep-gpio = <&gpio2 RK_PD4 GPIO_ACTIVE_HIGH>;
>  	num-lanes = <4>;
>  	pinctrl-names = "default";
> -	pinctrl-0 = <&pcie_clkreqn_cpm>;
> +	pinctrl-0 = <&pcie_clkreqn_cpm &pcie_perst_l>;
>  	vpcie3v3-supply = <&vcc3v3_pcie>;
>  	status = "okay";
>  };
> @@ -408,6 +410,16 @@
>  		};
>  	};
>  
> +	pcie {
> +		pcie_pwr: pcie-pwr {
> +			rockchip,pins = <2 RK_PA2 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +
> +		pcie_perst_l:pcie-perst-l {
> +			rockchip,pins = <2 RK_PD4 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};

Which schematics did you refer? According to Rock960 v2.1 schematics [1], below
is the pin mapping for PCI-E PWR and PERST:

PCIE_PERST - GPIO2_A2
PCIE_PWR - GPIO2_A5

Above mapping holds true for Rock960 version 1.1, 1.2 and 1.3. Also,
rk3399-rock960.dtsi is common for both Rock960 and Ficus boards, so the board
specific parts should go to rk3399-rock960.dts and rk3399-ficus.dts.

Thanks,
Mani

[1] https://dl.vamrs.com/products/rock960/docs/hw/rock960_sch_v12_20180314.pdf
> +	};
> +
>  	sdmmc {
>  		sdmmc_bus1: sdmmc-bus1 {
>  			rockchip,pins =
> -- 
> 2.21.0
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

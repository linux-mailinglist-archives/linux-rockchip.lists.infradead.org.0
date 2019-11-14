Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 422D8FC75F
	for <lists+linux-rockchip@lfdr.de>; Thu, 14 Nov 2019 14:26:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oi1hSkgk1Ri+rJTXrgwjfvcmo0lWQ+w4ORlGiE+1lik=; b=crQF+66NgBNqhW
	hgiJYBVACHLPkBvf7eo7qKizTkF1ICQm64u4/SLQmnL/FKAeY/23FXK115eEhLJX8lIWD2pgPVl4G
	ololGl1PAP2GHl3yfFNhT3wr14dPpZpAxNkCRDUkZe1AwwKOMazMrtaZ+BbTklr1Fu4zCoJMLjuoF
	IPOkdqvlfMovg6g/r9KScIVTGFc3zZK9cXzVjHrdU8296SW9dmAMLbJIqqG3ISNodR0EmjqibSt+o
	vQicxm57aKuNXWH06H4hKhrCjW243aMvwoSWkGyr5XeU4zR4LfMGkFwEeInkel7TWK715tqPbPdIW
	eqkLIEhbGBhlWVtLioTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVF8b-0001EM-93; Thu, 14 Nov 2019 13:26:17 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVF8M-000119-G9; Thu, 14 Nov 2019 13:26:05 +0000
Received: from wf0530.dip.tu-dresden.de ([141.76.182.18] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iVF8H-0002V4-Fs; Thu, 14 Nov 2019 14:25:57 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Markus Reichl <m.reichl@fivetechno.de>
Subject: Re: [PATCH v2] arm64: dts: rockchip: Add SDR104 mode to SD-card I/F
 on rk3399-roc-pc
Date: Thu, 14 Nov 2019 14:25:56 +0100
Message-ID: <1918981.kTmXGv9Lqf@phil>
In-Reply-To: <25466090-3b24-2695-10fb-88c59be3f149@fivetechno.de>
References: <25466090-3b24-2695-10fb-88c59be3f149@fivetechno.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_052602_699073_94DCC47E 
X-CRM114-Status: GOOD (  15.79  )
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
 'Ulf Hansson' <ulf.hansson@linaro.org>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, Jagan Teki <jagan@amarulasolutions.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Markus,

Am Dienstag, 12. November 2019, 09:45:36 CET schrieb Markus Reichl:
> Add SDR104 capability and regulators to SD card node.

> While at it, fix a typo in lcd pinctrl and remove two
> undocumented bindings from pmic.

A commit message like this always is a good indicator that this wants to
be multiple patches ;-) [Keywords: "While at it", "And", ...]


> Signed-off-by: Markus Reichl <m.reichl@fivetechno.de>
> ---
> v2: Remove always-on from vcc3v0_sd
> ---
>  .../boot/dts/rockchip/rk3399-roc-pc.dtsi      | 30 +++++++++++++++----
>  1 file changed, 24 insertions(+), 6 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
> index d1eb55c855b3..a31099f7620b 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
> @@ -135,6 +135,19 @@
>  		vin-supply = <&vcc_1v8>;
>  	};
>  
> +	vcc3v0_sd: vcc3v0-sd {
> +		compatible = "regulator-fixed";
> +		enable-active-high;
> +		gpio = <&gpio4 RK_PD6 GPIO_ACTIVE_HIGH>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&vcc3v0_sd_en>;
> +		regulator-name = "vcc3v0_sd";
> +		regulator-boot-on;
> +		regulator-min-microvolt = <3000000>;
> +		regulator-max-microvolt = <3000000>;
> +		vin-supply = <&vcc3v3_sys>;
> +	};
> +
>  	vcc3v3_sys: vcc3v3-sys {
>  		compatible = "regulator-fixed";
>  		regulator-name = "vcc3v3_sys";
> @@ -293,8 +306,6 @@
>  		vcc10-supply = <&vcc3v3_sys>;
>  		vcc11-supply = <&vcc3v3_sys>;
>  		vcc12-supply = <&vcc3v3_sys>;
> -		vcc13-supply = <&vcc3v3_sys>;
> -		vcc14-supply = <&vcc3v3_sys>;

Separate patch with nice description perhaps? (remove undocumented inputs)


>  		vddio-supply = <&vcc_3v0>;
>  
>  		regulators {
> @@ -576,7 +587,7 @@
>  
>  	lcd-panel {
>  		lcd_panel_reset: lcd-panel-reset {
> -			rockchip,pins = <4 RK_PD6 RK_FUNC_GPIO &pcfg_pull_up>;
> +			rockchip,pins = <4 RK_PD5 RK_FUNC_GPIO &pcfg_pull_up>;

Separate patch please, "use correct pin for lcd-reset pinctrl" or so.

>  		};
>  	};
>  
> @@ -602,6 +613,10 @@
>  		vsel2_gpio: vsel2-gpio {
>  			rockchip,pins = <1 RK_PB6 RK_FUNC_GPIO &pcfg_pull_down>;
>  		};
> +
> +		pmic_int_l: pmic-int-l {
> +			rockchip,pins = <1 RK_PC5 RK_FUNC_GPIO &pcfg_pull_up>;
> +		};
>  	};
>  
>  	sdio-pwrseq {
> @@ -610,9 +625,9 @@
>  		};
>  	};
>  
> -	pmic {
> -		pmic_int_l: pmic-int-l {
> -			rockchip,pins = <1 RK_PC5 RK_FUNC_GPIO &pcfg_pull_up>;

separate patch please talking about regrouping the two
separate pmic pin-groups.


> +	sdmmc {
> +		vcc3v0_sd_en: vcc3v0-sd-en {
> +			rockchip,pins = <4 RK_PD6 RK_FUNC_GPIO &pcfg_pull_none>;
>  		};
>  	};
>  
> @@ -667,6 +682,9 @@
>  	cd-gpios = <&gpio0 RK_PA7 GPIO_ACTIVE_LOW>;
>  	disable-wp;
>  	max-frequency = <150000000>;
> +	sd-uhs-sdr104;
> +	vmmc-supply = <&vcc3v0_sd>;
> +	vqmmc-supply = <&vcc_sdio>;

Alphabetical sorting of new properties please
(status staying at the bottom though)

>  	pinctrl-names = "default";
>  	pinctrl-0 = <&sdmmc_clk &sdmmc_cmd &sdmmc_bus4>;
>  	status = "okay";
> 

Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

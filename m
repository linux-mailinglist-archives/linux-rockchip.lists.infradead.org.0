Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8263613049E
	for <lists+linux-rockchip@lfdr.de>; Sat,  4 Jan 2020 22:23:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rVuuurm14F4RI8rL2p/9o7qtt1uBGcIJPTbMe+kWLPQ=; b=rEaaL/vR10gWE9
	DlSoHmefxY2cbp3ALIVJJhLSFp9BCBPeERlyiCX1HzDjlEf8pj1dFiWxHcNgWQNqi68YD4huFy1N6
	u+SATiNrCId74212n+wi9slU6nXgze6Vl8DO7TnxM83n7ZQ4IYg0HRPRa6z6HtU21Kd0sgXctudIB
	mhA/aVmeJC1rMhC60rKpHpjW7Nqi830I5pO4Tfd7vbq4sMvv03xVnyS4io29RPU/BG78cX8xisgBF
	OXoVvvh9j46PDPcIMJL05kAqAQQKJFRJZv1oetRNIkZs+8wDZUD7ZTeIKfiWQM0IMXUr4Pwi09CrS
	gY+Ivh6GbND58JEJWXHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inqt7-0002Ms-Am; Sat, 04 Jan 2020 21:23:13 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inqt4-0002MN-Ex; Sat, 04 Jan 2020 21:23:11 +0000
Received: from p508fd2bb.dip0.t-ipconnect.de ([80.143.210.187]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1inqsy-00048F-1e; Sat, 04 Jan 2020 22:23:04 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Markus Reichl <m.reichl@fivetechno.de>
Subject: Re: [PATCH 5/5] arm64: dts: rockchip: Enable mp8859 regulator on
 rk3399-roc-pc
Date: Sat, 04 Jan 2020 22:23:03 +0100
Message-ID: <11639547.aalzkRAYeW@phil>
In-Reply-To: <20200104153321.6584-6-m.reichl@fivetechno.de>
References: <20200104153321.6584-1-m.reichl@fivetechno.de>
 <20200104153321.6584-6-m.reichl@fivetechno.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200104_132310_650638_8A300FBD 
X-CRM114-Status: GOOD (  17.86  )
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
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, Jagan Teki <jagan@amarulasolutions.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Markus,

Am Samstag, 4. Januar 2020, 16:32:49 CET schrieb Markus Reichl:
> The rk3399-roc-pc uses a MP8859 DC/DC converter for 12V supply.
> This supplies 5V only in default state after booting.

Just for my understanding ... both the old static regulator before as
well as the new i2c node said to supply 12V, but above you say that
the default is 5V ... so I'm wondering who configured the 12V before.

Or was it the case that the old regulator node was just wrong and we
had 5V running on the dc_12v line?

Thanks
Heiko

> Now we can control the output voltage via I2C interface.
> Add a node for the driver to reach 12V.
> 
> Signed-off-by: Markus Reichl <m.reichl@fivetechno.de>
> ---
>  .../boot/dts/rockchip/rk3399-roc-pc.dtsi      | 32 +++++++++++--------
>  1 file changed, 18 insertions(+), 14 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
> index 8e01b04144b7..9f225e9c3d54 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
> @@ -110,20 +110,6 @@ vcc_vbus_typec0: vcc-vbus-typec0 {
>  		regulator-max-microvolt = <5000000>;
>  	};
>  
> -	/*
> -	 * should be placed inside mp8859, but not until mp8859 has
> -	 * its own dt-binding.
> -	 */
> -	dc_12v: mp8859-dcdc1 {
> -		compatible = "regulator-fixed";
> -		regulator-name = "dc_12v";
> -		regulator-always-on;
> -		regulator-boot-on;
> -		regulator-min-microvolt = <12000000>;
> -		regulator-max-microvolt = <12000000>;
> -		vin-supply = <&vcc_vbus_typec0>;
> -	};
> -
>  	/* switched by pmic_sleep */
>  	vcc1v8_s3: vcca1v8_s3: vcc1v8-s3 {
>  		compatible = "regulator-fixed";
> @@ -546,6 +532,24 @@ fusb0: usb-typec@22 {
>  		vbus-supply = <&vcc_vbus_typec0>;
>  		status = "okay";
>  	};
> +
> +	mp8859: regulator@66 {
> +		compatible = "mps,mp8859";
> +		reg = <0x66>;
> +		dc_12v: mp8859_dcdc {
> +			regulator-name = "dc_12v";
> +			regulator-min-microvolt = <12000000>;
> +			regulator-max-microvolt = <12000000>;
> +			regulator-always-on;
> +			regulator-boot-on;
> +			vin-supply = <&vcc_vbus_typec0>;
> +
> +			regulator-state-mem {
> +				regulator-on-in-suspend;
> +				regulator-suspend-microvolt = <12000000>;
> +			};
> +		};
> +	};
>  };
>  
>  &i2s0 {
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

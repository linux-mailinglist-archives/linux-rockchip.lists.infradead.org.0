Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3133836671
	for <lists+linux-rockchip@lfdr.de>; Wed,  5 Jun 2019 23:11:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P87HdL5LaKodzMz/m0yfzaAJaVjnJzt7pgn5c9em/a0=; b=cop2tJzPj9iK3G
	S7a/kV8mdY9P2exyjE3ksSiFi+424Zqmb1pl5xvJX3BXB+/CMkFo92X1UFwrZx5Ddyqo5um61AMLa
	rdlt9mL9rhRhxvomP9A8591qT173DYuMtxrSmI4KY0eKjxmo/NhwJxJQhOOg6Lne1lwyTrI/z45bY
	k8T/3cwKQPXQjhfbDkyPhQABLpVEw01ESN7a342w3wJOu722n9g8VxlytqzUlkYx3aytDXNb5OpsE
	2BLkR6UCKWPMEd4gWDTr3ulIALDGXYKpsPotvv4BYm5IcR3I1OhNRYSjDiriP7EBevlXAlOVauYEs
	D7ith6SeYctoXGXq94LA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYdBy-0004ym-0M; Wed, 05 Jun 2019 21:11:30 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYdBo-0004qc-JV; Wed, 05 Jun 2019 21:11:22 +0000
Received: from ip5f5a6320.dynamic.kabel-deutschland.de ([95.90.99.32]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hYdBh-0000gP-2F; Wed, 05 Jun 2019 23:11:13 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Matthias Kaehlcke <mka@chromium.org>
Subject: Re: [PATCH 2/2] ARM: dts: rockchip: Configure BT_HOST_WAKE as wake-up
 signal on veyron
Date: Wed, 05 Jun 2019 23:11:12 +0200
Message-ID: <3079472.D8Re4Zsj2W@diego>
In-Reply-To: <20190605204320.22343-2-mka@chromium.org>
References: <20190605204320.22343-1-mka@chromium.org>
 <20190605204320.22343-2-mka@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_141120_788864_8D64F0C8 
X-CRM114-Status: GOOD (  18.72  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Brian Norris <briannorris@chromium.org>, linux-kernel@vger.kernel.org,
 Douglas Anderson <dianders@chromium.org>, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Mittwoch, 5. Juni 2019, 22:43:20 CEST schrieb Matthias Kaehlcke:
> This enables wake up on Bluetooth activity when the device is
> suspended. The BT_HOST_WAKE signal is only connected on devices
> with BT module that are connected through UART.
> 
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> Signed-off-by: Matthias Kaehlcke <mka@chromium.org>

Housekeeping question, with the two Signed-off-by lines, is Doug the
original author, or was this Co-developer-by?

Heiko

> ---
>  arch/arm/boot/dts/rk3288-veyron.dtsi | 29 ++++++++++++++++++++++++++++
>  1 file changed, 29 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/rk3288-veyron.dtsi b/arch/arm/boot/dts/rk3288-veyron.dtsi
> index cc4c3595f145..145cac7c0847 100644
> --- a/arch/arm/boot/dts/rk3288-veyron.dtsi
> +++ b/arch/arm/boot/dts/rk3288-veyron.dtsi
> @@ -23,6 +23,31 @@
>  		reg = <0x0 0x0 0x0 0x80000000>;
>  	};
>  
> +	bt_activity: bt-activity {
> +		compatible = "gpio-keys";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&bt_host_wake>;
> +
> +		/*
> +		 * HACK: until we have an LPM driver, we'll use an
> +		 * ugly GPIO key to allow Bluetooth to wake from S3.
> +		 * This is expected to only be used by BT modules that
> +		 * use UART for comms.  For BT modules that talk over
> +		 * SDIO we should use a wakeup mechanism related to SDIO.
> +		 *
> +		 * Use KEY_RESERVED here since that will work as a wakeup but
> +		 * doesn't get reported to higher levels (so doesn't confuse
> +		 * Chrome).
> +		 */
> +		bt-wake {
> +			label = "BT Wakeup";
> +			gpios = <&gpio4 RK_PD7 GPIO_ACTIVE_HIGH>;
> +			linux,code = <KEY_RESERVED>;
> +			wakeup-source;
> +		};
> +
> +	};
> +
>  	power_button: power-button {
>  		compatible = "gpio-keys";
>  		pinctrl-names = "default";
> @@ -555,6 +580,10 @@
>  			rockchip,pins = <4 RK_PD5 RK_FUNC_GPIO &pcfg_pull_none>;
>  		};
>  
> +		bt_host_wake: bt-host-wake {
> +			rockchip,pins = <4 31 RK_FUNC_GPIO &pcfg_pull_down>;
> +		};
> +
>  		/*
>  		 * We run sdio0 at max speed; bump up drive strength.
>  		 * We also have external pulls, so disable the internal ones.
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

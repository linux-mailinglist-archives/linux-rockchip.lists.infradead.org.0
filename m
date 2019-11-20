Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B765103B51
	for <lists+linux-rockchip@lfdr.de>; Wed, 20 Nov 2019 14:25:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EMoqqJdZng3pNi+grsMA4ZNh7+kzHpttmoCy16poIH8=; b=aW4STH9Ue97lUJ
	fQ5pjB2AHw35eCj9VMBm0j0qQsb8FvqRpWP090BaD1F7eudI1g5Li2PDbHJEQpRUpXqKQMQYzsZpO
	uzL4Z0D3pIaw1IAH5SuLbppumjujEnisTZchDUz31BodLQzm4MUYoLu2Vwdd/uFveqTDJxxuh01qM
	lNdI04X2SsVemPXSMn25j0SzeXXPteCBegYUsU2ehFkFSFbJ1aAU9u+1aczcbiYtkdGNnvp0CIRDM
	xdsdphTco25W8zMp0nmSABZB5+ID1deMnvAveXCjjAQatCIPoR0kJ6Da3c3yfjNb/Ok6sk2kFMSvm
	iPNLcI5Dg2DkIx0LZRiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXPz8-0004e5-G6; Wed, 20 Nov 2019 13:25:30 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXPz0-0004Wx-4v; Wed, 20 Nov 2019 13:25:23 +0000
Received: from ip5f5a6266.dynamic.kabel-deutschland.de ([95.90.98.102]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iXPyf-0003PK-3b; Wed, 20 Nov 2019 14:25:01 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [PATCH 4/5] ARM: dts: rockchip: Add Radxa Carrier board
Date: Wed, 20 Nov 2019 14:25:00 +0100
Message-ID: <5644395.EDGZVd1YuU@diego>
In-Reply-To: <20191120113923.11685-5-jagan@amarulasolutions.com>
References: <20191120113923.11685-1-jagan@amarulasolutions.com>
 <20191120113923.11685-5-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_052522_341839_932DF26D 
X-CRM114-Status: GOOD (  20.66  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Tom Cubie <tom@radxa.com>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Akash Gajjar <akash@openedev.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-amarula@amarulasolutions.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Jagan,

Am Mittwoch, 20. November 2019, 12:39:22 CET schrieb Jagan Teki:
> Carrier board often referred as baseboard. For making
> complete SBC, the associated SOM will mount on top of
> this carrier board.
> 
> Radxa has a carrier board which supports on board
> peripherals, ports like USB-2.0, USB-3.0, HDMI, MIPI DSI/CSI,
> eDP, Ethernet, PCIe, USB-C, 40-Pin GPIO header and etc.
> 
> Currently this carrier board can be used together with
> VMARC RK3399Por SOM for making Rock PI N10 SBC.
> 
> So add this carrier board dtsi as a separate file in
> ARM directory, so-that the same can reuse it in both
> arm32 and arm64 variants of Rockchip SOMs.

Do you really think someone will create an arm32 soc using that
carrier board?

Similarly so far I don't think we haven't even seen a lot of reuse
of existing carrier boards at all, other than their initial combination.

So maybe just having the content of your
	rockchip-radxa-carrierboard.dtsi
in
	rockchip/rk3399pro-rock-pi-n10.dts
from patch 5 might be a better start - at least until there is any
further usage - if at all?

Also rockchip-radxa-carrierboard might even be overly generic
as there may be multiple carrierboards from Radxa later on.

Heiko


> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> ---
>  .../boot/dts/rockchip-radxa-carrierboard.dtsi | 81 +++++++++++++++++++
>  1 file changed, 81 insertions(+)
>  create mode 100644 arch/arm/boot/dts/rockchip-radxa-carrierboard.dtsi
> 
> diff --git a/arch/arm/boot/dts/rockchip-radxa-carrierboard.dtsi b/arch/arm/boot/dts/rockchip-radxa-carrierboard.dtsi
> new file mode 100644
> index 000000000000..df3712aedf8a
> --- /dev/null
> +++ b/arch/arm/boot/dts/rockchip-radxa-carrierboard.dtsi
> @@ -0,0 +1,81 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (c) 2019 Fuzhou Rockchip Electronics Co., Ltd
> + * Copyright (c) 2019 Radxa Limited
> + * Copyright (c) 2019 Amarula Solutions(India)
> + */
> +
> +#include <dt-bindings/pwm/pwm.h>
> +
> +/ {
> +	chosen {
> +		stdout-path = "serial2:1500000n8";
> +	};
> +};
> +
> +&gmac {
> +	status = "okay";
> +};
> +
> +&i2c1 {
> +	status = "okay";
> +	i2c-scl-rising-time-ns = <140>;
> +	i2c-scl-falling-time-ns = <30>;
> +};
> +
> +&i2c2 {
> +	status = "okay";
> +	clock-frequency = <400000>;
> +
> +	hym8563: hym8563@51 {
> +		compatible = "haoyu,hym8563";
> +		reg = <0x51>;
> +		#clock-cells = <0>;
> +		clock-frequency = <32768>;
> +		clock-output-names = "hym8563";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&hym8563_int>;
> +		interrupt-parent = <&gpio4>;
> +		interrupts = <30 IRQ_TYPE_LEVEL_LOW>;
> +	};
> +};
> +
> +&pwm0 {
> +	status = "okay";
> +};
> +
> +&pwm2 {
> +	status = "okay";
> +};
> +
> +&sdmmc {
> +	bus-width = <4>;
> +	cap-mmc-highspeed;
> +	cap-sd-highspeed;
> +	cd-gpios = <&gpio0 RK_PA7 GPIO_ACTIVE_LOW>;
> +	disable-wp;
> +	vqmmc-supply = <&vccio_sd>;
> +	max-frequency = <150000000>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&sdmmc_clk &sdmmc_cmd &sdmmc_cd &sdmmc_bus4>;
> +	status = "okay";
> +};
> +
> +&uart0 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&uart0_xfer &uart0_cts>;
> +	status = "okay";
> +};
> +
> +&uart2 {
> +	status = "okay";
> +};
> +
> +&pinctrl {
> +	hym8563 {
> +		hym8563_int: hym8563-int {
> +			rockchip,pins =
> +				<4 RK_PD6 0 &pcfg_pull_up>;
> +		};
> +	};
> +};
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

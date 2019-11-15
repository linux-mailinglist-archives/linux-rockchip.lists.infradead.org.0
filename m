Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A87ADFE4B3
	for <lists+linux-rockchip@lfdr.de>; Fri, 15 Nov 2019 19:15:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zy5/5zfzhu6e/S1Ai/tM+XPsoLBNhg7g+zXhNwoUGVQ=; b=nOBVpRx5wDU4p9
	TD3nPygHPtCpETxz7aToKPF1QMaXdmcTKSwvyQjulf1X+IVNfQ895drCgrFG89wznD8yj3gvfIgC3
	V3gIrqEME9hdA5VYRfCO2utRCz6dQSX6cnGv7iyUt+PRC+MvTvtNE3DGh/bqO9R/4ARyjV7Ktk7SH
	7A4t00z+E2Jv00wd8miikVRKA65q04I4un5IcRV0RnC2EfgpytjDFUy+2ruBqyUwDxiNhKTUnWLuc
	117pa0U5L7ivQf2E0TQ1BG4ecU5WJuDAhxEBy1s50Pf/cRhsSGj3adnZbB83qH7a6Ln6Pj0+U5QDm
	pZIudU0V7JC6Ewr118Bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVg7b-0001kD-9i; Fri, 15 Nov 2019 18:15:03 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVg7L-0001bi-OE; Fri, 15 Nov 2019 18:14:51 +0000
Received: from ip5f5a6266.dynamic.kabel-deutschland.de ([95.90.98.102]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iVg7B-0001eB-99; Fri, 15 Nov 2019 19:14:37 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: "Matwey V. Kornilov" <matwey@sai.msu.ru>
Subject: Re: [PATCH] arm64: dts: rockchip: Enable PCIe for Radxa Rock Pi 4
 board
Date: Fri, 15 Nov 2019 19:14:36 +0100
Message-ID: <1708909.MJzrS8JzXa@diego>
In-Reply-To: <20191115180825.10526-1-matwey@sai.msu.ru>
References: <20191115180825.10526-1-matwey@sai.msu.ru>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_101449_906471_D256E70A 
X-CRM114-Status: GOOD (  14.80  )
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>,
 matwey.kornilov@gmail.com, Akash Gajjar <akash@openedev.com>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 "moderated list:ARM/Rockchip SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Matwey,

Am Freitag, 15. November 2019, 19:08:21 CET schrieb Matwey V. Kornilov:
> Radxa Rock Pi 4 is equipped with M.2 PCIe slot,
> so enable PCIe for the board.
> 
> The changes has been tested with Intel SSD 660p series device.
> 
>     01:00.0 Class 0108: Device 8086:f1a8 (rev 03)
> 
> Signed-off-by: Matwey V. Kornilov <matwey@sai.msu.ru>
> ---
>  arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dts | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dts b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dts
> index 1ae1ebd4efdd..9c2927faba41 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dts
> @@ -463,6 +463,20 @@
>  	pmu1830-supply = <&vcc_3v0>;
>  };
>  
> +&pcie_phy {
> +	status = "okay";
> +};
> +
> +&pcie0 {
> +	status = "okay";
> +
> +	ep-gpios = <&gpio4 RK_PD3 GPIO_ACTIVE_HIGH>;
> +	num-lanes = <4>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pcie_clkreqnb_cpm>;
> +	max-link-speed = <2>;

the RockPi schematics should be available, so could you also check
the supply regulators and add them please?

Thanks
Heiko


> +};
> +
>  &pinctrl {
>  	bt {
>  		bt_enable_h: bt-enable-h {
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

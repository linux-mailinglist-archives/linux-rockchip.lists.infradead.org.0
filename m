Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B708F11548F
	for <lists+linux-rockchip@lfdr.de>; Fri,  6 Dec 2019 16:48:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2y1y0PUiI+qNTPbC/faz+w7a18TSAagyPRqFJQ7nAAM=; b=hNRHAmdAdxj8Wn
	+ZUpa8yR+0twaPX1Wp6FQcormU3WHu3VaODhd9BabHfknhox2QKdx1hz+nF6WgHCPKsXEQK7gfSdQ
	hzo03rqpl3FerwLZYUinnxq13sCkQLdEBTdc8Vg3x0uChzlnjMuC2A/XXUtCwARyfSUOnCpGntzaQ
	AbQywfVRrykguBDpSYq5F26cUFhuTv7o3nff+YnOXH5B7wCykyKYe+bpZEm0Db77FCF8R+PfMsBEW
	2DWkcOKZylzqaeUaPb98nXi3MMdtOSz1iaxvNNYjJHCwrsMQOcCwsD/ZjKEum6F1jIkRElqj8V3Qo
	3lXnmrI7Pxaj7EUFGt/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idFpy-0007kj-SA; Fri, 06 Dec 2019 15:48:10 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idFpv-0007kK-FV
 for linux-rockchip@lists.infradead.org; Fri, 06 Dec 2019 15:48:08 +0000
Received: from p57b772b2.dip0.t-ipconnect.de ([87.183.114.178]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1idFpp-0003G4-8O; Fri, 06 Dec 2019 16:48:01 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Change RK809 PMIC interrupt polarity
Date: Fri, 06 Dec 2019 16:48:00 +0100
Message-ID: <3285991.EbEXlA3CnX@phil>
In-Reply-To: <20191206154247.28057-1-miquel.raynal@bootlin.com>
References: <20191206154247.28057-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_074807_668158_19C8763D 
X-CRM114-Status: GOOD (  19.02  )
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

Hi Miquel,

Am Freitag, 6. Dezember 2019, 16:42:47 CET schrieb Miquel Raynal:
> PMIC interrupt can be active high or active low depending on BIT(1) of
> the GPIO_INT_CFG pin. The default is 0x1, which means active
> high. Change the polarity in the device tree to reflect the default
> state.
> 
> Without this and with the current code base, the interrupt never stops
> triggering while the MFD driver does not see anything to
> check/clear/mask so after 100000 spurious IRQs, the kernel simply
> desactivates the interrupt:
> 
>         irq 36: nobody cared (try booting with the "irqpoll" option)
>         [...]
>         handlers:
>         [<(____ptrval____)>] irq_default_primary_handler threaded
> 	[<(____ptrval____)>] regmap_irq_thread
>         Disabling IRQ #36
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>

*coughs slightly*

mfd: rk808: Set RK817 interrupt polarity to low
https://git.kernel.org/pub/scm/linux/kernel/git/lee/mfd.git/commit/drivers/mfd/rk808.c?h=for-mfd-next&id=dbd16ef53487084816a20f662423ab543a75fc83

Should be in the current merge window already I guess ;-)

Having this consistent over all rk8xx seemed nicer.


Heiko


> ---
>  arch/arm64/boot/dts/rockchip/px30-evb.dts | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/px30-evb.dts b/arch/arm64/boot/dts/rockchip/px30-evb.dts
> index 869f90cbf0da..a922ea75639d 100644
> --- a/arch/arm64/boot/dts/rockchip/px30-evb.dts
> +++ b/arch/arm64/boot/dts/rockchip/px30-evb.dts
> @@ -138,7 +138,7 @@
>  		compatible = "rockchip,rk809";
>  		reg = <0x20>;
>  		interrupt-parent = <&gpio0>;
> -		interrupts = <7 IRQ_TYPE_LEVEL_LOW>;
> +		interrupts = <7 IRQ_TYPE_LEVEL_HIGH>;
>  		pinctrl-names = "default";
>  		pinctrl-0 = <&pmic_int>;
>  		rockchip,system-power-controller;
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8D9B4F459
	for <lists+linux-rockchip@lfdr.de>; Sat, 22 Jun 2019 10:34:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s88Qn8Ttt8BXulWYLTWc5bBm5rBDKeIBxUXgMnj1KdU=; b=D6Pvi8jiB4hJ03
	2GZ4ktduiDZQ3ss+u2/E9gWNE+4G/1Z46TMzEKKcv6OkDjAfn0TxTVsTNTHEsMTgVQlN7u3BZVRR4
	u+AW1j2csFl0VhE/rWz8LlSkF7qqeLktqnYO9Zj7YkreOd1KRc28IUa1zcocBhptEucIAjIv4XWqu
	J87VfzdR8q67yRCsKman5iXoFVPwpwikcmwedXmg+kYUtPn5JnaYIVAT7B3z/0C+gUrPkB5IIpFbp
	crw7gjt7cycrMRMRKnYxF3e0qaBy04jEIc2c5cTBy0nwf7DGO+HWRCWo3FUCVmd8qgYQ6r1EqRqZb
	M1hG91YWtdjw9gPlf9eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hebTH-0007dw-Qu; Sat, 22 Jun 2019 08:34:03 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hebTE-0007dR-SG; Sat, 22 Jun 2019 08:34:02 +0000
Received: from p508fd9dc.dip0.t-ipconnect.de ([80.143.217.220]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hebTB-0004tX-Q4; Sat, 22 Jun 2019 10:33:57 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Katsuhiro Suzuki <katsuhiro@katsuster.net>
Subject: Re: [PATCH] ARM: dts: rockchip: add ethernet phy node for tinker board
Date: Sat, 22 Jun 2019 10:33:57 +0200
Message-ID: <1871177.hjLhdHVgcu@phil>
In-Reply-To: <20190621180017.29646-1-katsuhiro@katsuster.net>
References: <20190621180017.29646-1-katsuhiro@katsuster.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190622_013401_067414_C36AA3C5 
X-CRM114-Status: GOOD (  14.04  )
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
Cc: linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi,

Am Freitag, 21. Juni 2019, 20:00:17 CEST schrieb Katsuhiro Suzuki:
> This patch adds missing mdio and ethernet PHY nodes for rk3328 ASUS
> tinker board.
> 
> Signed-off-by: Katsuhiro Suzuki <katsuhiro@katsuster.net>

just for my understanding, which problem does this solve?
Normally the gmac can establish connections just fine on
the rk3288 by probing the phy in the automatic way.

And I also don't see any additional properties like phy
interrupt line below.


Thanks
Heiko

> ---
>  arch/arm/boot/dts/rk3288-tinker.dtsi | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/rk3288-tinker.dtsi b/arch/arm/boot/dts/rk3288-tinker.dtsi
> index 293576869546..3190817e8d5d 100644
> --- a/arch/arm/boot/dts/rk3288-tinker.dtsi
> +++ b/arch/arm/boot/dts/rk3288-tinker.dtsi
> @@ -117,6 +117,7 @@
>  	assigned-clocks = <&cru SCLK_MAC>;
>  	assigned-clock-parents = <&ext_gmac>;
>  	clock_in_out = "input";
> +	phy-handle = <&phy0>;
>  	phy-mode = "rgmii";
>  	phy-supply = <&vcc33_lan>;
>  	pinctrl-names = "default";
> @@ -127,6 +128,17 @@
>  	tx_delay = <0x30>;
>  	rx_delay = <0x10>;
>  	status = "ok";
> +
> +	mdio0 {
> +		compatible = "snps,dwmac-mdio";
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		phy0: ethernet-phy@0 {
> +			compatible = "ethernet-phy-ieee802.3-c22";
> +			reg = <0>;
> +		};
> +	};
>  };
>  
>  &gpu {
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

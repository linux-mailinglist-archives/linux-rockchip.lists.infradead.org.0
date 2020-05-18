Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F1781D8AF7
	for <lists+linux-rockchip@lfdr.de>; Tue, 19 May 2020 00:31:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/ZyAzpxNPOEBFdxkATdlQliwA0G6bEoAMNESOrTB2+A=; b=rb1m6U8i2T12D7
	u1gJUmnNw8cJ5APxfA4A2I2j26ayLnR4ZevBQlI9sxZCOPPk0i9CXDpBL4d/vBlGWKVbMWXQbpzUF
	PWj0Ox+mVr2Wo2oQL5JYroKURmvTPmGVLwEmeswZAhU9Se3lYe36igqnnUz9lLHbJ+UcxZCtNKmo4
	O7XfHJw2SPqiQPIoWiC1vaZhWakFi62TGyyv9b/lCoT7GTvzGsmYa1AF0Ott6+iq6q84ztgr3fYEU
	6+n/dt61hLW+CljxkWunKs6H/HUZ7WUYH2JPlX3hCGHACrG/O2jnQo+qexeHaeheIag+M+scNVWpJ
	JwtU4tJHb+vyAM+4r+Gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaoHp-00051b-Ma; Mon, 18 May 2020 22:31:05 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaoG1-0000vc-Tx; Mon, 18 May 2020 22:29:15 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1jaoFx-00007u-F7; Tue, 19 May 2020 00:29:09 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>, kever.yang@rock-chips.com,
 Caesar Wang <wxt@rock-chips.com>
Subject: Re: [PATCH v2 2/2] arm64: dts: rockchip: rk3399: fix pd_tcpc0 and
 pd_tcpc1 node position
Date: Tue, 19 May 2020 00:29:08 +0200
Message-ID: <2978296.PvbIKR7951@diego>
In-Reply-To: <20200428203003.3318-2-jbx6244@gmail.com>
References: <20200428203003.3318-1-jbx6244@gmail.com>
 <20200428203003.3318-2-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_152914_021661_FC2A87CC 
X-CRM114-Status: GOOD (  13.59  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Kever, Caesar,

could you double check where the type-c power-domains are located
in the power-tree, as Caesar did add them under pd_vio back in 2016.

Thanks
Heiko

Am Dienstag, 28. April 2020, 22:30:03 CEST schrieb Johan Jonker:
> The pd_tcpc0 and pd_tcpc1 nodes are currently a sub node of pd_vio.
> In the rk3399 TRM figure of the 'Power Domain Partition' and in the
> table of 'Power Domain and Voltage Domain Summary' these power domains
> are positioned directly under VD_LOGIC, so fix that in 'rk3399.dtsi'.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3399.dtsi | 20 ++++++++++----------
>  1 file changed, 10 insertions(+), 10 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> index 37279db53..a4dc1bf2e 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> @@ -1056,6 +1056,16 @@
>  				clocks = <&cru HCLK_SDIO>;
>  				pm_qos = <&qos_sdioaudio>;
>  			};
> +			pd_tcpc0@RK3399_PD_TCPD0 {
> +				reg = <RK3399_PD_TCPD0>;
> +				clocks = <&cru SCLK_UPHY0_TCPDCORE>,
> +					 <&cru SCLK_UPHY0_TCPDPHY_REF>;
> +			};
> +			pd_tcpc1@RK3399_PD_TCPD1 {
> +				reg = <RK3399_PD_TCPD1>;
> +				clocks = <&cru SCLK_UPHY1_TCPDCORE>,
> +					 <&cru SCLK_UPHY1_TCPDPHY_REF>;
> +			};
>  			pd_usb3@RK3399_PD_USB3 {
>  				reg = <RK3399_PD_USB3>;
>  				clocks = <&cru ACLK_USB3>;
> @@ -1088,16 +1098,6 @@
>  					pm_qos = <&qos_isp1_m0>,
>  						 <&qos_isp1_m1>;
>  				};
> -				pd_tcpc0@RK3399_PD_TCPD0 {
> -					reg = <RK3399_PD_TCPD0>;
> -					clocks = <&cru SCLK_UPHY0_TCPDCORE>,
> -						 <&cru SCLK_UPHY0_TCPDPHY_REF>;
> -				};
> -				pd_tcpc1@RK3399_PD_TCPD1 {
> -					reg = <RK3399_PD_TCPD1>;
> -					clocks = <&cru SCLK_UPHY1_TCPDCORE>,
> -						 <&cru SCLK_UPHY1_TCPDPHY_REF>;
> -				};
>  				pd_vo@RK3399_PD_VO {
>  					reg = <RK3399_PD_VO>;
>  					#address-cells = <1>;
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

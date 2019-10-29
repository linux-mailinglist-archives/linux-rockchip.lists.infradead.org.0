Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE8FAE7E4E
	for <lists+linux-rockchip@lfdr.de>; Tue, 29 Oct 2019 02:59:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qXxFFRG7RkGn6WrS/gc+CFm1TKzaeWDXgD5tpWJCIAM=; b=AE+zL+rWcX825q
	zSp3T/qj3gL4Kx3nibODcht1tNlgqHyeUvDk3bQG0rrUJjyIILFAMHncMSFxKHfClinEaTQj0Fcff
	aoGiNoVpNpYE3Qgd6zW2R5g5RdWQ0tXzIjRKANMA7Bg6svp/APTxnmlhC2p3oz9mRZokI6QlPa1tz
	oGtBk0WzegBzfyQpjJozV4xTgLXSyGGMRb8ulXWdgmmwBD8xGeBwPRgg9lrl1/R1+Tvskm7Efun07
	g3N1xjyRjgv/0Px4pPWpiEw3QKJusFNtsVpKxBRdSdVbkZuo9NKNJAO9SO9DxHpkrHjZOPp/wqG5H
	syr3YbKw8i3JCVLrusrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPGmr-0006Vg-5s; Tue, 29 Oct 2019 01:59:09 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPGmn-0006Uy-Pf
 for linux-rockchip@lists.infradead.org; Tue, 29 Oct 2019 01:59:07 +0000
X-UUID: 758dade5b2d749029b0c3dd26cff78a5-20191028
X-UUID: 758dade5b2d749029b0c3dd26cff78a5-20191028
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1212371690; Mon, 28 Oct 2019 17:58:56 -0800
Received: from MTKMBS32DR.mediatek.inc (172.27.6.104) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 28 Oct 2019 18:58:54 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS32DR.mediatek.inc
 (172.27.6.104) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Tue, 29 Oct 2019 09:58:51 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 29 Oct 2019 09:58:51 +0800
Message-ID: <1572314332.18464.9.camel@mhfsdcap03>
Subject: Re: [PATCH 4/5] arm64: dts: rockchip: add usb3 to rk3328 devicetree
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Peter Geis <pgwipeout@gmail.com>
Date: Tue, 29 Oct 2019 09:58:52 +0800
In-Reply-To: <20191028182254.30739-5-pgwipeout@gmail.com>
References: <20191028182254.30739-1-pgwipeout@gmail.com>
 <20191028182254.30739-5-pgwipeout@gmail.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 3DADF2FFDD0D9AAF1D9D7D03FEDA7A701A7EB30FDFD2D5CA5704DE61F695443C2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_185905_838418_DC996F51 
X-CRM114-Status: GOOD (  14.71  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: katsuhiro@katsuster.net, linux-rockchip@lists.infradead.org,
 linux-usb@vger.kernel.org, robin.murphy@arm.com, heiko@sntech.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Mon, 2019-10-28 at 18:22 +0000, Peter Geis wrote:
> Now that we have a proper phy driver, we can add the requisite bits to the
> rk3328 device tree.
> Added the u3drd and u3phy nodes.
> 
> Signed-off-by: Peter Geis <pgwipeout@gmail.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3328.dtsi | 72 ++++++++++++++++++++++++
>  1 file changed, 72 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
> index 31cc1541f1f5..072e988ad655 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
> @@ -805,6 +805,47 @@
>  		};
>  	};
>  
> +	usb3phy_grf: syscon@ff460000 {
> +		compatible = "rockchip,usb3phy-grf", "syscon";
> +		reg = <0x0 0xff460000 0x0 0x1000>;
> +	};
> +
> +	u3phy: usb3-phy@ff470000 {
usb-phy?
> +		compatible = "rockchip,rk3328-u3phy";
> +		reg = <0x0 0xff470000 0x0 0x0>;
It's zero length, may be not necessary, how about use ranges with
parameter ?

> +		rockchip,u3phygrf = <&usb3phy_grf>;
> +		rockchip,grf = <&grf>;
> +		interrupts = <GIC_SPI 77 IRQ_TYPE_LEVEL_HIGH>;
> +		interrupt-names = "linestate";
> +		clocks = <&cru PCLK_USB3PHY_OTG>, <&cru PCLK_USB3PHY_PIPE>;
> +		clock-names = "u3phy-otg", "u3phy-pipe";
To me, no need u3phy prefix
> +		resets = <&cru SRST_USB3PHY_U2>,
> +			 <&cru SRST_USB3PHY_U3>,
> +			 <&cru SRST_USB3PHY_PIPE>,
> +			 <&cru SRST_USB3OTG_UTMI>,
> +			 <&cru SRST_USB3PHY_OTG_P>,
> +			 <&cru SRST_USB3PHY_PIPE_P>;
> +		reset-names = "u3phy-u2-por", "u3phy-u3-por",
> +			      "u3phy-pipe-mac", "u3phy-utmi-mac",
> +			      "u3phy-utmi-apb", "u3phy-pipe-apb";
ditto

> +		#address-cells = <2>;
> +		#size-cells = <2>;
> +		ranges;
> +		status = "disabled";
> +
> +		u3phy_utmi: utmi@ff470000 {
usb-phy instead of utmi?

> +			reg = <0x0 0xff470000 0x0 0x8000>;
> +			#phy-cells = <0>;
> +			status = "disabled";
> +		};
> +
> +		u3phy_pipe: pipe@ff478000 {
usb-phy
> +			reg = <0x0 0xff478000 0x0 0x8000>;
> +			#phy-cells = <0>;
> +			status = "disabled";
> +		};
> +	};
> +
>  	sdmmc: dwmmc@ff500000 {
>  		compatible = "rockchip,rk3328-dw-mshc", "rockchip,rk3288-dw-mshc";
>  		reg = <0x0 0xff500000 0x0 0x4000>;
> @@ -936,6 +977,37 @@
>  		status = "disabled";
>  	};
>  
> +	usbdrd3: usb@ff600000 {
> +		compatible = "rockchip,rk3328-dwc3", "rockchip,rk3399-dwc3";
> +		clocks = <&cru SCLK_USB3OTG_REF>, <&cru ACLK_USB3OTG>,
> +			 <&cru SCLK_USB3OTG_SUSPEND>;
> +		clock-names = "ref", "bus_early",
> +			      "suspend";
> +		#address-cells = <2>;
> +		#size-cells = <2>;
> +		ranges;
> +		clock-ranges;
> +		status = "disabled";
> +
> +		usbdrd_dwc3: dwc3@ff600000 {
> +			compatible = "snps,dwc3";
> +			reg = <0x0 0xff600000 0x0 0x100000>;
> +			interrupts = <GIC_SPI 67 IRQ_TYPE_LEVEL_HIGH>;
> +			dr_mode = "otg";
> +			phys = <&u3phy_utmi>, <&u3phy_pipe>;
> +			phy-names = "usb2-phy", "usb3-phy";
> +			phy_type = "utmi_wide";
> +			snps,dis_enblslpm_quirk;
> +			snps,dis-u2-freeclk-exists-quirk;
> +			snps,dis_u2_susphy_quirk;
> +			snps,dis_u3_susphy_quirk;
> +			snps,dis-del-phy-power-chg-quirk;
> +			snps,dis-tx-ipgap-linecheck-quirk;
> +			snps,xhci-trb-ent-quirk;
> +			status = "disabled";
> +		};
> +	};
> +
>  	gic: interrupt-controller@ff811000 {
>  		compatible = "arm,gic-400";
>  		#interrupt-cells = <3>;



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

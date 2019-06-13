Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 957B144713
	for <lists+linux-rockchip@lfdr.de>; Thu, 13 Jun 2019 18:57:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DtFC8+fI7dnzRPrA+8atSdu2UApRRc5nTXFDD+7yfnM=; b=aD+HZjq9nP1dy184vEFVZIdO9
	W2dp8puo1O/ieaJkjtcERB/HGDeHAbkGSA94Gq1JlxNua5yPoYwwRD2Uyarw3oqK9jhxC64UL5hB4
	SCx8ECDXJuGlHxKq6x+37A11N/g1q46hyjTil2HE+LG5dQUZBVV870x01Xnpij6XzdixQ4oeDXM1S
	aXEs42gfjSJAAbTrDqk6lkMab68L7PD7ANSsz3Lr2WWiGhJtHFl/UhL0DlQeMx110YqQ2rN0N8ins
	HcVaf5IHxW/ro5GEgTugG36zxBO6sgcueSRlgHNoDUkp2Fh7qlSnVUEMQ4f5BRpCSIP9oZrpYYsmD
	7iPDFWM5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbT2D-0007mq-3o; Thu, 13 Jun 2019 16:57:09 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hbT1x-0007at-AN; Thu, 13 Jun 2019 16:56:54 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2C32D367;
 Thu, 13 Jun 2019 09:56:52 -0700 (PDT)
Received: from [10.1.197.57] (e110467-lin.cambridge.arm.com [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0A1293F694;
 Thu, 13 Jun 2019 09:56:49 -0700 (PDT)
Subject: Re: [PATCH] arm64: dts: rockchip: Update DWC3 modules on RK3399 SoCs
To: Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 devicetree@vger.kernel.org
References: <20190613162745.12195-1-enric.balletbo@collabora.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <40d2260f-3925-acdc-eb02-8abb972f1056@arm.com>
Date: Thu, 13 Jun 2019 17:56:48 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190613162745.12195-1-enric.balletbo@collabora.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_095653_457700_60FDA344 
X-CRM114-Status: GOOD (  23.57  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Heiko Stuebner <heiko@sntech.de>,
 Felipe Balbi <felipe.balbi@linux.intel.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Christoph Muellner <christoph.muellner@theobroma-systems.com>,
 Viresh Kumar <viresh.kumar@linaro.org>, Randy Li <ayaka@soulik.info>,
 linux-kernel@vger.kernel.org, Vicente Bergas <vicencb@gmail.com>,
 linux-rockchip@lists.infradead.org, Tony Xie <tony.xie@rock-chips.com>,
 Klaus Goger <klaus.goger@theobroma-systems.com>,
 Rob Herring <robh+dt@kernel.org>, Collabora Kernel ML <kernel@collabora.com>,
 linux-arm-kernel@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On 13/06/2019 17:27, Enric Balletbo i Serra wrote:
> As per binding documentation [1], the DWC3 core should have the "ref",
> "bus_early" and "suspend" clocks. As explained in the binding, those
> clocks are required for new platforms but not for existing platforms
> before commit fe8abf332b8f ("usb: dwc3: support clocks and resets for
> DWC3 core").
> 
> However, as those clocks are really treated as required, this ends with
> having some annoying messages when the "rockchip,rk3399-dwc3" is used:
> 
> [    1.724107] dwc3 fe800000.dwc3: Failed to get clk 'ref': -2
> [    1.731893] dwc3 fe900000.dwc3: Failed to get clk 'ref': -2
> [    2.495937] dwc3 fe800000.dwc3: Failed to get clk 'ref': -2
> [    2.647239] dwc3 fe900000.dwc3: Failed to get clk 'ref': -2
> 
> In order to remove those annoying messages, update the DWC3 hardware
> module node and add all the required clocks. With this change, both, the
> glue node and the DWC3 core node, have the clocks defined, but that's
> not really a problem and there isn't a side effect on do this. So, we
> can get rid of the annoying get clk error messages.

Can we not just move these clocks entirely from the glue layer to the 
core layer? That didn't seem to break when I tried it, although I'll 
admit my 'testing' was no more than booting and mounting a USB 3.0 flash 
drive, no suspend or anything fancy.

My own attempt to shut up these errors got sidetracked into c0c61471ef86 
("usb: dwc3: of-simple: Convert to bulk clk API"), then apparently 
stalled :)

Robin.

> 
> [1] Documentation/devicetree/bindings/usb/dwc3.txt
> 
> Signed-off-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
> ---
> 
>   arch/arm64/boot/dts/rockchip/rk3399.dtsi | 6 ++++++
>   1 file changed, 6 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> index 196ac9b78076..a15348d185ce 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> @@ -414,6 +414,9 @@
>   			compatible = "snps,dwc3";
>   			reg = <0x0 0xfe800000 0x0 0x100000>;
>   			interrupts = <GIC_SPI 105 IRQ_TYPE_LEVEL_HIGH 0>;
> +			clocks = <&cru SCLK_USB3OTG0_REF>, <&cru ACLK_USB3OTG0>,
> +				 <&cru SCLK_USB3OTG0_SUSPEND>;
> +			clock-names = "ref", "bus_early", "suspend";
>   			dr_mode = "otg";
>   			phys = <&u2phy0_otg>, <&tcphy0_usb3>;
>   			phy-names = "usb2-phy", "usb3-phy";
> @@ -447,6 +450,9 @@
>   			compatible = "snps,dwc3";
>   			reg = <0x0 0xfe900000 0x0 0x100000>;
>   			interrupts = <GIC_SPI 110 IRQ_TYPE_LEVEL_HIGH 0>;
> +			clocks = <&cru SCLK_USB3OTG1_REF>, <&cru ACLK_USB3OTG1>,
> +				 <&cru SCLK_USB3OTG1_SUSPEND>;
> +			clock-names = "ref", "bus_early", "suspend";
>   			dr_mode = "otg";
>   			phys = <&u2phy1_otg>, <&tcphy1_usb3>;
>   			phy-names = "usb2-phy", "usb3-phy";
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

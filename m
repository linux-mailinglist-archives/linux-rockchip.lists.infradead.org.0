Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BF8F19CA7B
	for <lists+linux-rockchip@lfdr.de>; Thu,  2 Apr 2020 21:46:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iQCy6eNcsi1I9JICEE0o1TeSVViXR6TgcKCgtiao/hE=; b=tfy+BT+Ktz8IX+
	mAp6znWDAh5uaU/qqFrRsUWbbxsdPrr8E42fFn99zRqW4WbPVa0LkKf1+upBOO7/OlBjRqhD2KRo+
	5iBioKK5X+h2I2z3VIBUQoHSj/wAP14t3QfTE/SBn1O6fdnkB/dZ9GTJoVKeG4nlg0iwm3a0KgsAH
	+wfmECToopSWwGFLkOF0mMNlSbSdUXqLqDvqRCHgVvhRo5hPFozdhxJjpcUI0SsZcku7hYZDUcwlr
	dljjA3hH1iRbNQQCjtU0PKF7Ek4nwqDtTRtiC8mAVOFPf0hMQNXcRevXEKl5bE7yfDXXAt0ZEiFY6
	w6jaUiTSYQwVQVGHKKwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jK5nb-000622-FI; Thu, 02 Apr 2020 19:46:47 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jK5nW-00060f-U3
 for linux-rockchip@lists.infradead.org; Thu, 02 Apr 2020 19:46:45 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: koike) with ESMTPSA id 0F4DB28A9AD
Subject: Re: [PATCH 4/4] arm64: dts: rockchip: add isp0 node for rk3399
To: Johan Jonker <jbx6244@gmail.com>
References: <20200402000234.226466-5-helen.koike@collabora.com>
 <1187d28a-6fb9-fd12-a422-8a4220a11e79@gmail.com>
From: Helen Koike <helen.koike@collabora.com>
Message-ID: <d8b05dd4-1ece-9513-b2ec-0cb58f665c5e@collabora.com>
Date: Thu, 2 Apr 2020 16:46:28 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <1187d28a-6fb9-fd12-a422-8a4220a11e79@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_124644_222189_87065DFA 
X-CRM114-Status: GOOD (  12.02  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 dafna.hirschfeld@collabora.com, heiko@sntech.de, karthik.poduval@gmail.com,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, hverkuil-cisco@xs4all.nl, mark.rutland@arm.com,
 kernel@collabora.com, ezequiel@collabora.com, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org



On 4/2/20 2:20 PM, Johan Jonker wrote:
> Hi Helen,
> 
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
>> index fc0295d2a65a1..815099a0cd0dd 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
>> +++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
>> @@ -1718,6 +1718,33 @@ vopb_mmu: iommu@ff903f00 {
>>  		status = "disabled";
>>  	};
>>  
>> +	isp0: isp0@ff910000 {
>> +		compatible = "rockchip,rk3399-cif-isp";
>> +		reg = <0x0 0xff910000 0x0 0x4000>;
>> +		interrupts = <GIC_SPI 43 IRQ_TYPE_LEVEL_HIGH 0>;
>> +		clocks = <&cru SCLK_ISP0>,
>> +			 <&cru ACLK_ISP0>, <&cru ACLK_ISP0_WRAPPER>,
>> +			 <&cru HCLK_ISP0>, <&cru HCLK_ISP0_WRAPPER>;
>> +		clock-names = "clk_isp",
>> +			      "aclk_isp", "aclk_isp_wrap",
>> +			      "hclk_isp", "hclk_isp_wrap";
> 
>> +		power-domains = <&power RK3399_PD_ISP0>;
>> +		iommus = <&isp0_mmu>;
>> +		phys = <&mipi_dphy_rx0>;
>> +		phy-names = "dphy";
> 
> Maybe a little sort? But keep rest as it is. Also in example.
> 
> 		iommus = <&isp0_mmu>;
> 		phys = <&mipi_dphy_rx0>;
> 		phy-names = "dphy";
> 		power-domains = <&power RK3399_PD_ISP0>;

Are you proposing only to move power-domains after phy? And keep the rest?
What is the main logic?

Thanks
Helen

> 
>> +
>> +		ports {
>> +			#address-cells = <1>;
>> +			#size-cells = <0>;
>> +
>> +			port@0 {
> 
>> +				#address-cells = <1>;
>> +				#size-cells = <0>;
>> +				reg = <0>;
> 
> Move reg above #address-cells. Change that in example as well.
> 
> 				reg = <0>;
> 				#address-cells = <1>;
> 				#size-cells = <0>;
> 
>> +			};
>> +		};
>> +	};
>> +
>>  	isp0_mmu: iommu@ff914000 {
>>  		compatible = "rockchip,iommu";
>>  		reg = <0x0 0xff914000 0x0 0x100>, <0x0 0xff915000 0x0 0x100>;
>> -- 
>> 2.26.0
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

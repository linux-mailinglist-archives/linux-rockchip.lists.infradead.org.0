Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E03AF19C486
	for <lists+linux-rockchip@lfdr.de>; Thu,  2 Apr 2020 16:42:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6lHh2sRuxBX2ElLQlLjC27e5K9iZoPf/C4AKW4k2Afk=; b=bPtvWPgZzGflC+
	cNJ1r3wUyLwioDljgPDf2Muro/TPi0diDCZd1aZkhZsTTcdKgq0pF7yWfYbaZy4zVujKkGCt+hGT4
	wYvmGnYqTKkjSG7N6eUp86jRJzawkLES0tTrRT3s2nEKTN6PDyJsDPqNUP2nE9U96KpHg1A7of0Vp
	kOs0ZY3a020krK8oU9uoAyJEfBcLVcTD32/blLofRK1ofifFCoJIQxoYDOKotNd+l9WWZ5d+l0Vqi
	E1jvrLlJnG4FPimrz10AB1y/wccYCalTcK4phHuJu0jPHQMmk0SMt3fG0NvLIcZ7wtO5kAKcAnwP0
	y/Bn5TuMtD7xWJ0yX/Uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jK13V-0007O3-BB; Thu, 02 Apr 2020 14:42:53 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jK13S-0007Ng-KK
 for linux-rockchip@lists.infradead.org; Thu, 02 Apr 2020 14:42:52 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: koike) with ESMTPSA id B456128CF7C
Subject: Re: [PATCH 2/4] dt-bindings: media: rkisp1: move rockchip-isp1
 bindings out of staging
To: Johan Jonker <jbx6244@gmail.com>
References: <20200402000234.226466-3-helen.koike@collabora.com>
 <7e53ec1e-33bd-3385-40a0-de3fd00ad1a1@gmail.com>
From: Helen Koike <helen.koike@collabora.com>
Message-ID: <faacd068-e722-4fa8-efab-c51c723b75c1@collabora.com>
Date: Thu, 2 Apr 2020 11:42:39 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <7e53ec1e-33bd-3385-40a0-de3fd00ad1a1@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_074250_927201_B0E717C7 
X-CRM114-Status: GOOD (  14.13  )
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

Hi Johan,

Thanks for your review.

On 4/2/20 8:35 AM, Johan Jonker wrote:
> Hi Helen,
> 
>> # SPDX-License-Identifier: (GPL-2.0+ OR MIT)
>> %YAML 1.2
>> ---
>> $id: http://devicetree.org/schemas/media/rockchip-isp1.yaml#
>> $schema: http://devicetree.org/meta-schemas/core.yaml#
>>
> 
>> title: Rockchip SoC Image Signal Processing unit v1
> 
> Where do we need 'v1' for? Is there a 'v2'?

ISPv1 is the Rockchip's name for the IP block.

> 
>>
>> maintainers:
>>   - Helen Koike <helen.koike@collabora.com>
>>
>> description: |
>>   Rockchip ISP1 is the Camera interface for the Rockchip series of SoCs
>>   which contains image processing, scaling, and compression functions.
>>
>> properties:
>>   compatible:
>>     const: rockchip,rk3399-cif-isp
>>
>>   reg:
>>     maxItems: 1
>>
>>   interrupts:
>>     maxItems: 1
>>
>>   iommus:
>>     maxItems: 1
>>
>>   power-domains:
>>     maxItems: 1
>>
>>   phys:
>>     maxItems: 1
>>     description: phandle for the PHY port
>>
>>   phy-names:
>>     const: dphy
>>
>>   clocks:
>>     items:
>>       - description: ISP clock
>>       - description: ISP AXI clock clock
>>       - description: ISP AXI clock  wrapper clock
>>       - description: ISP AHB clock clock
>>       - description: ISP AHB wrapper clock
>>
>>   clock-names:
>>     items:
>>       - const: clk_isp
>>       - const: aclk_isp
>>       - const: aclk_isp_wrap
>>       - const: hclk_isp
>>       - const: hclk_isp_wrap
>>
>>   # See ./video-interfaces.txt for details
>>   ports:
>>     type: object
>>     additionalProperties: false
>>
>>     properties:
>>       "#address-cells":
>>         const: 1
>>
>>       "#size-cells":
>>         const: 0
>>
>>       port@0:
>>         type: object
>>         description: connection point for sensors at MIPI-DPHY RX0
> 
>>         additionalProperties: false
> 
> Nothing required here?

I was thinking that if there is no endpoint, then nothing is required.
But if there is, then #address-cells, #size-cells and reg are. I guess
I can just add them as required.

I'll add it in the patchseries.

> 
>>
>>         properties:
>>           "#address-cells":
>>             const: 1
>>
>>           "#size-cells":
>>             const: 0
>>
>>           reg:
>>             const: 0
>>
>>         patternProperties:
>>           endpoint:
>>             type: object
>>             additionalProperties: false
>>
>>             properties:
>>               reg:
>>                 maxItems: 1
>>
>>               data-lanes:
>>                 minItems: 1
>>                 maxItems: 4
>>
>>               remote-endpoint: true
>>
>>     required:
> 
>>       - port@0
> 
> The use of '@0' makes "#address-cells" and "#size-cells" also a requirement.
> 
> - "#address-cells"
> - "#size-cells"

Ok, I'll add it.

> 
>>
>> required:
>>   - compatible
> 
> How about 'reg'?
> 
> - reg

ack, I'll add another patch in the series fixing this.

> 
>>   - interrupts
>>   - clocks
>>   - clock-names
>>   - power-domains
>>   - iommus
>>   - phys
>>   - phy-names
>>   - ports
>>
>> additionalProperties: false
>>
>> examples:
>>   - |
>>
>>     #include <dt-bindings/clock/rk3399-cru.h>
>>     #include <dt-bindings/interrupt-controller/arm-gic.h>
>>     #include <dt-bindings/power/rk3399-power.h>
>>
>>     parent0: parent@0 {
>>         #address-cells = <2>;
>>         #size-cells = <2>;
>>
>>         isp0: isp0@ff910000 {
>>             compatible = "rockchip,rk3399-cif-isp";
>>             reg = <0x0 0xff910000 0x0 0x4000>;
>>             interrupts = <GIC_SPI 43 IRQ_TYPE_LEVEL_HIGH 0>;
>>             clocks = <&cru SCLK_ISP0>,
>>                      <&cru ACLK_ISP0>, <&cru ACLK_ISP0_WRAPPER>,
>>                      <&cru HCLK_ISP0>, <&cru HCLK_ISP0_WRAPPER>;
>>             clock-names = "clk_isp",
>>                           "aclk_isp", "aclk_isp_wrap",
>>                           "hclk_isp", "hclk_isp_wrap";
>>             power-domains = <&power RK3399_PD_ISP0>;
>>             iommus = <&isp0_mmu>;
>>             phys = <&dphy>;
>>             phy-names = "dphy";
>>
>>             ports {
>>                 #address-cells = <1>;
>>                 #size-cells = <0>;
>>
>>                 port@0 {
>>                     #address-cells = <1>;
>>                     #size-cells = <0>;
>>                     reg = <0>;
>>
>>                     mipi_in_wcam: endpoint@0 {
>>                         reg = <0>;
>>                         remote-endpoint = <&wcam_out>;
>>                         data-lanes = <1 2>;
>>                     };
>>
>>                     mipi_in_ucam: endpoint@1 {
>>                         reg = <1>;
>>                         remote-endpoint = <&ucam_out>;
>>                         data-lanes = <1>;
>>                     };
>>                 };
>>             };
>>         };
>>
> 
>>         i2c7: i2c@ff160000 {
>>             clock-frequency = <400000>;
>>             #address-cells = <1>;
>>             #size-cells = <0>;
> 
> Incomplete example.
> From i2c-rk3x.yaml:
> 
> required:
>   - compatible
>   - reg
>   - interrupts
>   - clocks
>   - clock-names

The idea was to exemplify how to connect to the sensor nodes below.
But I don't see a problem adding a complete i2c example, I'll add it.

Thanks
Helen

> 
>>
>>             wcam: camera@36 {
>>                 compatible = "ovti,ov5695";
>>                 reg = <0x36>;
>>
>>                 port {
>>                     wcam_out: endpoint {
>>                         remote-endpoint = <&mipi_in_wcam>;
>>                         data-lanes = <1 2>;
>>                     };
>>                 };
>>             };
>>
>>             ucam: camera@3c {
>>                 compatible = "ovti,ov2685";
>>                 reg = <0x3c>;
>>
>>                   port {
>>                       ucam_out: endpoint {
>>                           remote-endpoint = <&mipi_in_ucam>;
>>                           data-lanes = <1>;
>>                       };
>>                   };
>>             };
>>         };
>>     };

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

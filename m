Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3C9D13D0DE
	for <lists+linux-rockchip@lfdr.de>; Thu, 16 Jan 2020 01:04:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VV22heMlM317FTjPknnMQQjeb0yi9E48VEIUDwyeuOo=; b=YaDAcTlEaWe2MR3RaN1ocxrKo
	Q+zYps1W48xNtR1CEZbQH+bp9zF/IrDhjVH+QvUNp4FxUV4y+vNgJ3QBapz5vOE7k8A81HRkpUVVq
	HKhKWCSeCRPazZCGmp5u1fra0GOwLNgR9A+eNjXSzVpHqLQDrALJOMN/y5c/a1T0G2ICJ9jRg6RCU
	kiT4vzyXLRB6oFtJlQJlKq5y31uFHc6F6c7++tbg5Qt6WSLZaC5dxARLywfUBm4nqxibvFqjrwEhb
	oESxewXjq/eS1gE9EzM5DiCMmunkgfY2hhPLNs/y7m0nccGWz/T51aead+Tn75cOr3TXx1/Ua8iIe
	tCqNQai7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irsdr-0006G1-QW; Thu, 16 Jan 2020 00:04:07 +0000
Received: from lucky1.263xmail.com ([211.157.147.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irsdn-0006FJ-K5
 for linux-rockchip@lists.infradead.org; Thu, 16 Jan 2020 00:04:06 +0000
Received: from localhost (unknown [192.168.167.32])
 by lucky1.263xmail.com (Postfix) with ESMTP id 826EE4E735;
 Thu, 16 Jan 2020 08:03:55 +0800 (CST)
X-MAIL-GRAY: 1
X-MAIL-DELIVERY: 0
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [172.16.12.37] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P9174T140331144181504S1579133034317848_; 
 Thu, 16 Jan 2020 08:03:55 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <161c3253a650a55ec4915d63e8b13e0c>
X-RL-SENDER: shawn.lin@rock-chips.com
X-SENDER: lintao@rock-chips.com
X-LOGIN-NAME: shawn.lin@rock-chips.com
X-FST-TO: xxm@rock-chips.com
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: =?UTF-8?Q?Re=3a_=5bPATCH_1/6=5d_dt-bindings=3a_add_binding_for_Rock?=
 =?UTF-8?B?Y2hpcCBjb21ibyBwaHkgdXNpbmcgYW4gSW5ub3NpbGljb24gSVDjgJDor7fms6g=?=
 =?UTF-8?B?5oSP77yM6YKu5Lu255SxbGludXgtcm9ja2NoaXAtYm91bmNlcytzaGF3bi5saW49?=
 =?UTF-8?B?cm9jay1jaGlwcy5jb21AbGlzdHMuaW5mcmFkZWFkLm9yZ+S7o+WPkeOAkQ==?=
To: Rob Herring <robh@kernel.org>
References: <1578986580-71974-1-git-send-email-shawn.lin@rock-chips.com>
 <1578986580-71974-2-git-send-email-shawn.lin@rock-chips.com>
 <20200114234323.GA5823@bogus>
From: Shawn Lin <shawn.lin@rock-chips.com>
Message-ID: <75a1b9d2-6dff-eaad-dab5-87321a7ca9cd@rock-chips.com>
Date: Thu, 16 Jan 2020 08:03:54 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <20200114234323.GA5823@bogus>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_160404_024180_1A3DA12F 
X-CRM114-Status: GOOD (  18.87  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.157.147.134 listed in list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
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
Cc: devicetree@vger.kernel.org, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Heiko Stuebner <heiko@sntech.de>, Jingoo Han <jingoohan1@gmail.com>,
 shawn.lin@rock-chips.com, Kishon Vijay Abraham I <kishon@ti.com>,
 linux-rockchip@lists.infradead.org, linux-pci@vger.kernel.org,
 William Wu <william.wu@rock-chips.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Simon Xue <xxm@rock-chips.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org



On 2020/1/15 7:43, Rob Herring wrote:
> On Tue, Jan 14, 2020 at 03:22:55PM +0800, Shawn Lin wrote:
>> This IP could supports USB3.0 and PCIe.
>>
>> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
>>
>> ---
>>
>>   .../bindings/phy/rockchip,inno-combophy.yaml       | 84 ++++++++++++++++++++++
>>   1 file changed, 84 insertions(+)
>>   create mode 100644 Documentation/devicetree/bindings/phy/rockchip,inno-combophy.yaml
> 
> Fails 'make dt_binding_check':
> 
> /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/phy/rockchip,inno-combophy.yaml:
> ignoring, error in schema: properties: rockchip,combphygrf
> Documentation/devicetree/bindings/display/simple-framebuffer.example.dts:21.16-37.11:
> Warning (chosen_node_is_root): /example-0/chosen: chosen node must be at root node
> /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/phy/rockchip,inno-combophy.yaml:
> properties:rockchip,combphygrf: {'items': [{'description': 'The grf for
> COMBPHY configuration and state registers.'}]} is not valid under any of
> the given schemas (Possible causes of the failure):
> 	
> /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/phy/rockchip,inno-combophy.yaml:
> properties:rockchip,combphygrf: 'description' is a required property
> 

Thanks Rob, will fix them in v2.

> 
>>
>> diff --git a/Documentation/devicetree/bindings/phy/rockchip,inno-combophy.yaml b/Documentation/devicetree/bindings/phy/rockchip,inno-combophy.yaml
>> new file mode 100644
>> index 0000000..d647ab3
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/phy/rockchip,inno-combophy.yaml
>> @@ -0,0 +1,84 @@
>> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/phy/rockchip,inno-combophy.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Rockchip USB3.0/PCI-e combo phy
>> +
>> +maintainers:
>> +        - Shawn Lin <shawn.lin@rock-chips.com>
>> +        - William Wu <william.wu@rock-chips.com>
> 
> 2 space indent.
> 
>> +
>> +properties:
>> +  "#phy-cells":
>> +    const: 1
>> +
>> +  compatible:
>> +    enum:
>> +      - rockchip,rk1808-combphy
>> +
>> +  reg:
>> +    maxItems: 1
>> +
>> +  clocks:
>> +    items:
>> +      - description: PLL reference clock
>> +
>> +  clock-names:
>> +    items:
>> +      - const: refclk
>> +
>> +  resets:
>> +    items:
>> +      - description: OTG unit reset line
>> +      - description: POR unit reset line
>> +      - description: APB interface reset line
>> +      - description: PIPE unit reset line
>> +
>> +  reset-names:
>> +    items:
>> +      - const: otg-rst
>> +      - const: combphy-por
>> +      - const: combphy-apb
>> +      - const: combphy-pipe
>> +
>> +  rockchip,combphygrf:
>> +    items:
>> +      - description: The grf for COMBPHY configuration and state registers.
>> +
>> +required:
>> +  - "#phy-cells"
>> +  - compatible
>> +  - reg
>> +  - clocks
>> +  - clock-names
>> +  - resets
>> +  - reset-names
>> +  - rockchip,combphygrf
>> +
>> +additionalProperties: false
>> +
>> +examples:
>> +  - |
>> +    combphy_grf: syscon@fe018000 {
>> +        compatible = "rockchip,usb3phy-grf", "syscon";
>> +        reg = <0x0 0xfe018000 0x0 0x8000>;
>> +    };
>> +
>> +    combphy: phy@ff380000 {
>> +        compatible = "rockchip,rk1808-combphy";
>> +        reg = <0x0 0xff380000 0x0 0x10000>;
>> +        #phy-cells = <1>;
>> +        clocks = <&cru SCLK_PCIEPHY_REF>;
>> +        clock-names = "refclk";
>> +        assigned-clocks = <&cru SCLK_PCIEPHY_REF>;
>> +        assigned-clock-rates = <25000000>;
>> +        resets = <&cru SRST_USB3_OTG_A>, <&cru SRST_PCIEPHY_POR>,
>> +                 <&cru SRST_PCIEPHY_P>, <&cru SRST_PCIEPHY_PIPE>;
>> +        reset-names = "otg-rst", "combphy-por",
>> +                      "combphy-apb", "combphy-pipe";
>> +        rockchip,combphygrf = <&combphy_grf>;
>> +    };
>> +
>> +...
>> -- 
>> 1.9.1
>>
>>
>>
> 
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip
> 
> 
> 



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

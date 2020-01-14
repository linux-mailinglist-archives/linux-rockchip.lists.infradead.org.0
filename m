Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7418B13B615
	for <lists+linux-rockchip@lfdr.de>; Wed, 15 Jan 2020 00:43:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mbcK6b42VJYE4xD0I8lL2Ihr3LnTzM6KnK9FjpkaKAs=; b=TPqp+nk5POG4gD
	hATl9l4Ln03PuuZ3XR5a2ANeUoXrKzwYOreY1eopmF67KDgS/AV09yFalJy2fnuvs4ZhtlY12hFit
	60xeeHhnA1cLr9gLlAYkQhDKEtk3SgVnbbO6Mm3utliHuQNKJtrlh6hIAx7bDCszVjcDk75DmNrPl
	HcLhC3N1A/t5QzVU/9XsAe7RGk7gk/CnDvuK28zXEKkfllcCTmErmQO3ZhWC7dfP3OtAXOPnQcAZn
	uvL+AGKpgUCnzBvhGJuvRf6+GxaDZvI3WhK9n8jsR5sbs0u4+yMg7oJST1082rjSmi2vE55qhTAAt
	GhIcjp0uP8bSBsAX4RqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irVqO-00059j-QH; Tue, 14 Jan 2020 23:43:32 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irVqK-00059B-5i
 for linux-rockchip@lists.infradead.org; Tue, 14 Jan 2020 23:43:30 +0000
Received: by mail-oi1-f195.google.com with SMTP id z64so13686269oia.4
 for <linux-rockchip@lists.infradead.org>; Tue, 14 Jan 2020 15:43:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=MKlK2szQ42loiytEFafzt++ib8OsDGlgenNJAhJSpmM=;
 b=M+WI4iS4x6YB2UJRa6Qo/2UC/oB1/5iEh9uaCFeuylHneE4uAMzMvKRZObzOn22GlD
 iNOLZYrrEiUw0vfRZetm4ajaJDkxUrJVnJyKqK3SJNYW3Cf9GLn2NpAsJTEQqZF8vwre
 nPirZm3W2CJSPfH4RAxruCdHc/lLlVUPRxmMXzMKKv0ewDHWdmXOMQsPieFy+AZGzwfS
 9MaeYVMsco/ne46qi/UO9LT1FYqcHZZ1TsyyIc6fhFv24/mz/XYqJ3l9D+3YsXjagiaE
 0tGwc2uW+sEKUjukWMZvzC9mivrhcG3eq5OacgeOTE8AeTfGfZ4GtLUIYPDkj2BtKOk7
 hskw==
X-Gm-Message-State: APjAAAW6f+ykSR++hqRj6vvJWfP8M8omI+Q/5qTre6crcgs/G//rNcDZ
 O3uRUhD/FAeowSNUbLq7kF5u3ks=
X-Google-Smtp-Source: APXvYqzWCkEw4+WZFQyv3F+5Yxk1794gDN0BsjMqDl00ykvkvGxQllh9rs3yqnv3VI4uFZBq217Dow==
X-Received: by 2002:aca:db43:: with SMTP id s64mr17885983oig.144.1579045405310; 
 Tue, 14 Jan 2020 15:43:25 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id f4sm5077143oij.25.2020.01.14.15.43.24
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Jan 2020 15:43:24 -0800 (PST)
Received: from rob (uid 1000) (envelope-from rob@rob-hp-laptop) id 220a2e
 by rob-hp-laptop (DragonFly Mail Agent v0.11);
 Tue, 14 Jan 2020 17:43:23 -0600
Date: Tue, 14 Jan 2020 17:43:23 -0600
From: Rob Herring <robh@kernel.org>
To: Shawn Lin <shawn.lin@rock-chips.com>
Subject: Re: [PATCH 1/6] dt-bindings: add binding for Rockchip combo phy
 using an Innosilicon IP
Message-ID: <20200114234323.GA5823@bogus>
References: <1578986580-71974-1-git-send-email-shawn.lin@rock-chips.com>
 <1578986580-71974-2-git-send-email-shawn.lin@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1578986580-71974-2-git-send-email-shawn.lin@rock-chips.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_154328_216829_6D853CDE 
X-CRM114-Status: GOOD (  15.76  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
 Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 Jingoo Han <jingoohan1@gmail.com>, Kishon Vijay Abraham I <kishon@ti.com>,
 William Wu <william.wu@rock-chips.com>, linux-pci@vger.kernel.org,
 Bjorn Helgaas <bhelgaas@google.com>, Simon Xue <xxm@rock-chips.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Tue, Jan 14, 2020 at 03:22:55PM +0800, Shawn Lin wrote:
> This IP could supports USB3.0 and PCIe.
> 
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
> 
> ---
> 
>  .../bindings/phy/rockchip,inno-combophy.yaml       | 84 ++++++++++++++++++++++
>  1 file changed, 84 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/rockchip,inno-combophy.yaml

Fails 'make dt_binding_check':

/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/phy/rockchip,inno-combophy.yaml: 
ignoring, error in schema: properties: rockchip,combphygrf
Documentation/devicetree/bindings/display/simple-framebuffer.example.dts:21.16-37.11: 
Warning (chosen_node_is_root): /example-0/chosen: chosen node must be at root node
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/phy/rockchip,inno-combophy.yaml: 
properties:rockchip,combphygrf: {'items': [{'description': 'The grf for 
COMBPHY configuration and state registers.'}]} is not valid under any of 
the given schemas (Possible causes of the failure):
	
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/phy/rockchip,inno-combophy.yaml: 
properties:rockchip,combphygrf: 'description' is a required property


> 
> diff --git a/Documentation/devicetree/bindings/phy/rockchip,inno-combophy.yaml b/Documentation/devicetree/bindings/phy/rockchip,inno-combophy.yaml
> new file mode 100644
> index 0000000..d647ab3
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/rockchip,inno-combophy.yaml
> @@ -0,0 +1,84 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/rockchip,inno-combophy.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Rockchip USB3.0/PCI-e combo phy
> +
> +maintainers:
> +        - Shawn Lin <shawn.lin@rock-chips.com>
> +        - William Wu <william.wu@rock-chips.com>

2 space indent.

> +
> +properties:
> +  "#phy-cells":
> +    const: 1
> +
> +  compatible:
> +    enum:
> +      - rockchip,rk1808-combphy
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    items:
> +      - description: PLL reference clock
> +
> +  clock-names:
> +    items:
> +      - const: refclk
> +
> +  resets:
> +    items:
> +      - description: OTG unit reset line
> +      - description: POR unit reset line
> +      - description: APB interface reset line
> +      - description: PIPE unit reset line
> +
> +  reset-names:
> +    items:
> +      - const: otg-rst
> +      - const: combphy-por
> +      - const: combphy-apb
> +      - const: combphy-pipe
> +
> +  rockchip,combphygrf:
> +    items:
> +      - description: The grf for COMBPHY configuration and state registers.
> +
> +required:
> +  - "#phy-cells"
> +  - compatible
> +  - reg
> +  - clocks
> +  - clock-names
> +  - resets
> +  - reset-names
> +  - rockchip,combphygrf
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    combphy_grf: syscon@fe018000 {
> +        compatible = "rockchip,usb3phy-grf", "syscon";
> +        reg = <0x0 0xfe018000 0x0 0x8000>;
> +    };
> +
> +    combphy: phy@ff380000 {
> +        compatible = "rockchip,rk1808-combphy";
> +        reg = <0x0 0xff380000 0x0 0x10000>;
> +        #phy-cells = <1>;
> +        clocks = <&cru SCLK_PCIEPHY_REF>;
> +        clock-names = "refclk";
> +        assigned-clocks = <&cru SCLK_PCIEPHY_REF>;
> +        assigned-clock-rates = <25000000>;
> +        resets = <&cru SRST_USB3_OTG_A>, <&cru SRST_PCIEPHY_POR>,
> +                 <&cru SRST_PCIEPHY_P>, <&cru SRST_PCIEPHY_PIPE>;
> +        reset-names = "otg-rst", "combphy-por",
> +                      "combphy-apb", "combphy-pipe";
> +        rockchip,combphygrf = <&combphy_grf>;
> +    };
> +
> +...
> -- 
> 1.9.1
> 
> 
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

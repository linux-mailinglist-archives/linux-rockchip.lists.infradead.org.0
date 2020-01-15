Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2C5613B654
	for <lists+linux-rockchip@lfdr.de>; Wed, 15 Jan 2020 01:05:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GTBCMWzeDpLYFN49n4l41CKBAi3qXP8sTBAUPRIpPVA=; b=LtdQKjIU99AlUi
	BeYY+zu28x5rrJ5a7xgtR245x6PA3nwdxhJqd0cA3lDbkQX6TIu7tlzDKkc2+YCcVj/yTEVeUmsss
	fvYapDtOuYe1ryM/5JbcEiyy1VCR4witMPX8XGFK66A15CL/ip254ZGh5fGS41DC0IK3NPuQCVSEI
	+01vcicZ7qXrvnWPJzArmbzpsxbGxNt2RWUUAKHaNfua4OykBtGpYYyMjuD7b+hNmN1AjyOHlDX4E
	a6OmihTzOdXdrWZgU5sP0x2JxsmA0poGY4/WGmCQng6cV/RFnxRU9Up5/P8qe3rPlYwgFd8ZABo1O
	SwCNLfS47quXh2h+m4pg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irWBM-0004a3-Jy; Wed, 15 Jan 2020 00:05:12 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irWBH-0003t3-EM
 for linux-rockchip@lists.infradead.org; Wed, 15 Jan 2020 00:05:11 +0000
Received: by mail-ot1-f68.google.com with SMTP id 66so14480479otd.9
 for <linux-rockchip@lists.infradead.org>; Tue, 14 Jan 2020 16:05:05 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=6InMAA6tVFUJhW/7SSG7pRmKfUrz13sPRb9GJnKNkk8=;
 b=HnbPcyAd6uA55erQPYMOKfigLAhGKJHxsOImL9kQie0d/zR/nxW4dhWt74McT98fuJ
 pnQ5JLJOohoJZhLUcSStQKZo6QLtPAtr8by6+MFmNOu+AJ82vclxppWnZVn4wHFGNWlG
 HHwq91vZAuu3mve0Jn7Qqw4gactx34RM+jyeQryCQidWzcG2M9anDrj5wFzn/ThmE3vq
 bfxVr6fe4r/zWZKuAsc9ALb7CuClG4LDlZMwF8KunPpNLZv13wWgDgI1VTP6ixD8OvcD
 vyDcs+QoDS6ka8Kslh2Y412NZrJsVvrXiMQ6JYeAVOs65U1SyiIBNLyRjwh6yvt1X6O6
 3i8w==
X-Gm-Message-State: APjAAAX0uAZSRXScuqri7xoH7Ob+atu5V7qr1pvLg6DI896LmYJjhBgH
 T+EhuwqM2X2vVSPGjhmsUrzJp4k=
X-Google-Smtp-Source: APXvYqzBcx/sgsCq20/YtrAX16MoOkdbJYJlmulO9vIbkOVNhC2hHi5f2YjYlLbSmJ3Zz3k7cYdG7A==
X-Received: by 2002:a9d:7b51:: with SMTP id f17mr760504oto.302.1579046703956; 
 Tue, 14 Jan 2020 16:05:03 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id j5sm5911713otl.71.2020.01.14.16.05.02
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Jan 2020 16:05:03 -0800 (PST)
Received: from rob (uid 1000) (envelope-from rob@rob-hp-laptop) id 220a2e
 by rob-hp-laptop (DragonFly Mail Agent v0.11);
 Tue, 14 Jan 2020 18:05:02 -0600
Date: Tue, 14 Jan 2020 18:05:02 -0600
From: Rob Herring <robh@kernel.org>
To: Shawn Lin <shawn.lin@rock-chips.com>
Subject: Re: [PATCH 4/6] dt-bindings: rockchip: Add DesignWare based PCIe
 controller
Message-ID: <20200115000502.GA27530@bogus>
References: <1578986580-71974-1-git-send-email-shawn.lin@rock-chips.com>
 <1578986580-71974-5-git-send-email-shawn.lin@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1578986580-71974-5-git-send-email-shawn.lin@rock-chips.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_160507_501419_0E8DEEA4 
X-CRM114-Status: GOOD (  17.99  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

On Tue, Jan 14, 2020 at 03:22:58PM +0800, Shawn Lin wrote:
> From: Simon Xue <xxm@rock-chips.com>
> 
> Signed-off-by: Simon Xue <xxm@rock-chips.com>
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
> ---
> 
>  .../devicetree/bindings/pci/rockchip-dw-pcie.yaml  | 132 +++++++++++++++++++++
>  1 file changed, 132 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml

/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml: 
properties:rockchip,usbpciegrf: {'items': [{'description': 'The grf for 
COMBPHY configuration and state registers.'}]} is not valid under any of 
the given schemas (Possible causes of the failure):
	
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml: 
properties:rockchip,usbpciegrf: 'description' is a required property

> 
> diff --git a/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
> new file mode 100644
> index 0000000..c5205f6
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
> @@ -0,0 +1,132 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/pci/rockchip-dw-pcie.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: DesignWare based PCIe RC controller on Rockchip SoCs
> +
> +maintainers:
> +        - Shawn Lin <shawn.lin@rock-chips.com>
> +        - Simon Xue <xxm@rock-chips.com>

indent 2 spaces.

> +

You need to reference pci-bus.yaml.

> +properties:
> +  compatible:
> +    enum:
> +      - rockchip,rk1808-pcie
> +      - snps,dw-pcie

This means the compatible is one of these 2 strings.

It's also going to be a problem because it will match on all DTs with 
'snps,dw-pcie'. Look at some of the 'arm,primecell' schema for how to 
avoid that with 'select'.

> +
> +  reg:
> +    maxItems: 2
> +
> +  clocks:
> +    items:
> +      - description: High speed clock for PCIe
> +      - description: Low speed clock for PCIe
> +      - description: AHB clock for PCIe
> +      - description: APB clock for PCIe
> +      - description: Auxiliary clock for PCIe
> +
> +  clock-names:
> +    items:
> +      - const: hsclk
> +      - const: lsclk
> +      - const: aclk
> +      - const: pclk
> +      - const: sclk-aux
> +
> +  resets:
> +    items:
> +      - description: PCIe niu high reset line
> +      - description: PCIe niu low reset line
> +      - description: PCIe grf reset line
> +      - description: PCIe control reset line
> +      - description: PCIe control powerup reset line
> +      - description: PCIe control master reset line
> +      - description: PCIe control slave reset line
> +      - description: PCIe control dbi reset line
> +      - description: PCIe control button reset line
> +      - description: PCIe control power engine reset line
> +      - description: PCIe control core reset line
> +      - description: PCIe control non-sticky reset line
> +      - description: PCIe control sticky reset line
> +      - description: PCIe control power reset line
> +      - description: PCIe niu ahb reset line
> +      - description: PCIe niu apb reset line
> +
> +  reset-names:
> +    items:
> +      - const: niu-h
> +      - const: niu-l
> +      - const: grf-p
> +      - const: ctl-p
> +      - const: ctl-powerup
> +      - const: ctl-mst-a
> +      - const: ctl-slv-a
> +      - const: ctl-dbi-a
> +      - const: ctl-button
> +      - const: ctl-pe
> +      - const: ctl-core
> +      - const: ctl-nsticky
> +      - const: ctl-sticky
> +      - const: ctl-pwr
> +      - const: ctl-niu-a
> +      - const: ctl-niu-p
> +
> +  rockchip,usbpciegrf:
> +    items:
> +      - description: The grf for COMBPHY configuration and state registers.
> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - clock-names
> +  - msi-map
> +  - num-lanes
> +  - phys
> +  - phy-names
> +  - resets
> +  - reset-names
> +  - rockchip,usbpciegrf
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    usb_pcie_grf: syscon@fe040000 {
> +        compatible = "rockchip,usb-pcie-grf", "syscon";
> +        reg = <0x0 0xfe040000 0x0 0x1000>;
> +    };
> +
> +    pcie0: pcie@fc400000 {
> +        compatible = "rockchip,rk1808-pcie", "snps,dw-pcie";
> +        reg = <0x0 0xfc000000 0x0 0x400000>,
> +              <0x0 0xfc400000 0x0 0x10000>;
> +        clocks = <&cru HSCLK_PCIE>, <&cru LSCLK_PCIE>,
> +                 <&cru ACLK_PCIE>, <&cru PCLK_PCIE>,
> +                 <&cru SCLK_PCIE_AUX>;
> +        clock-names = "hsclk", "lsclk",
> +                      "aclk", "pclk",
> +                      "sclk-aux";
> +        msi-map = <0x0 &its 0x0 0x1000>;
> +        num-lanes = <2>;
> +        phys = <&combphy PHY_TYPE_PCIE>;
> +        phy-names = "pcie-phy";
> +        resets = <&cru SRST_PCIE_NIU_H>, <&cru SRST_PCIE_NIU_L>,
> +                 <&cru SRST_PCIEGRF_P>, <&cru SRST_PCIECTL_P>,
> +                 <&cru SRST_PCIECTL_POWERUP>, <&cru SRST_PCIECTL_MST_A>,
> +                 <&cru SRST_PCIECTL_SLV_A>, <&cru SRST_PCIECTL_DBI_A>,
> +                 <&cru SRST_PCIECTL_BUTTON>, <&cru SRST_PCIECTL_PE>,
> +                 <&cru SRST_PCIECTL_CORE>, <&cru SRST_PCIECTL_NSTICKY>,
> +                 <&cru SRST_PCIECTL_STICKY>, <&cru SRST_PCIECTL_PWR>,
> +                 <&cru SRST_PCIE_NIU_A>, <&cru SRST_PCIE_NIU_P>;
> +        reset-names = "niu-h", "niu-l", "grf-p", "ctl-p",
> +                      "ctl-powerup", "ctl-mst-a", "ctl-slv-a",
> +                      "ctl-dbi-a", "ctl-button", "ctl-pe",
> +                      "ctl-core", "ctl-nsticky", "ctl-sticky",
> +                      "ctl-pwr", "ctl-niu-a", "ctl-niu-p";
> +        rockchip,usbpciegrf = <&usb_pcie_grf>;

You are missing a number of common, required PCI properties.

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

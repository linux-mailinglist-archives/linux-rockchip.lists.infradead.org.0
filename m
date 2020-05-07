Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B5681C8DAF
	for <lists+linux-rockchip@lfdr.de>; Thu,  7 May 2020 16:09:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h5bhq75Raqesgo8e+FZxgQQKDdDuZ80A7XR+a2BrHyE=; b=M/R8kxuJMkJMo0
	mNCF+kui5fZ7oICyOB3t3hiaik26VHu/lFzTXP7bGXmbtgJzxvKYsLog9Tn67e7TGHZK4kRrzoK3d
	VASGSalvIccbL0I1md7KEMXicSqY/vD8JDNQUUN1aWij4a/pRU8/TM9NDKNmXtDx/aS9FyZF5bK29
	rIqFYLQkAAImDTut4pRBRbmZCtrD4SpKz5AxJygaOePnJ/GVWHQEUDx9TY6TZuxmKmtNmVZSZk/jD
	MuYILHXTQc9w3AICjwq88ZRWjrNReQYqK+rcvRezEdJ1PqZ5LfejaFbnPy0w7j970vii+itqG9cKT
	UBIHNpvx540OqHj9NcGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWhD8-0003Ro-H7; Thu, 07 May 2020 14:09:14 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWhD5-0003RB-9o
 for linux-rockchip@lists.infradead.org; Thu, 07 May 2020 14:09:13 +0000
Received: by mail-ot1-f65.google.com with SMTP id j4so4528066otr.11
 for <linux-rockchip@lists.infradead.org>; Thu, 07 May 2020 07:09:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=zxy1VYlySamy/54ZCy3MVykfYMPHma2/B2G6ctk5KFo=;
 b=JRTznTJnkg/9N5OOOVSToSMAHdxBOFk2yH1Nrgftp1nnBIc6IjO3S8MuwfT2hJo0E1
 LpRR44uMnkOXGt00Ukuyrb9pCUZyURW8nhHgE8iPnE0emPdUjNAo8D96DDeS+uWrq/lU
 b3GiRq2hWl203E1pzKI2LgQGNKOaI86Iasc4UUn3tdCeBexWVrjGs1NoMse3v2B/2Vrr
 WkjyN6072ND2Lmqa9PA7XVSxpz4PbyNVREdSBXTqVUWZhbZodFgIZuFcgqQD8scaHXpZ
 xt76xVH0WzimOzTlkMw/R/id07h/I5Km3XuLXeLOU3id95gUF39KVm5C8dMGBRlQohDS
 BnXw==
X-Gm-Message-State: AGi0PuZacK+n2R2KSFOfHe9+jrqMntxbBZCloEpU9arWJ3m2YCwy6HFu
 T/bcGS5egVzy146vUL7jfla+K3o=
X-Google-Smtp-Source: APiQypKuEb23tqT5lHsR9WW8dsCVzi95vv3SvgIuptykvvHFTCJe8uyjd1G5ZZJOCUu2wxRqWspPqw==
X-Received: by 2002:a05:6830:30b8:: with SMTP id
 g24mr10356153ots.225.1588860550347; 
 Thu, 07 May 2020 07:09:10 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id r67sm1380336oie.19.2020.05.07.07.09.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 May 2020 07:09:09 -0700 (PDT)
Received: (nullmailer pid 4842 invoked by uid 1000);
 Thu, 07 May 2020 14:09:08 -0000
Date: Thu, 7 May 2020 09:09:08 -0500
From: Rob Herring <robh@kernel.org>
To: Shawn Lin <shawn.lin@rock-chips.com>
Subject: Re: [PATCH v2 4/6] dt-bindings: rockchip: Add DesignWare based PCIe
 controller
Message-ID: <20200507140908.GA22326@bogus>
References: <1581574091-240890-1-git-send-email-shawn.lin@rock-chips.com>
 <1581574091-240890-5-git-send-email-shawn.lin@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1581574091-240890-5-git-send-email-shawn.lin@rock-chips.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_070911_347597_8762748E 
X-CRM114-Status: GOOD (  16.65  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

On Thu, Feb 13, 2020 at 02:08:09PM +0800, Shawn Lin wrote:
> From: Simon Xue <xxm@rock-chips.com>
> 
> Signed-off-by: Simon Xue <xxm@rock-chips.com>
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
> 
> ---
> 
> Changes in v2:
> - fix yaml format
> 
>  .../devicetree/bindings/pci/rockchip-dw-pcie.yaml  | 148 +++++++++++++++++++++
>  1 file changed, 148 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
> 
> diff --git a/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
> new file mode 100644
> index 0000000..527c770
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
> @@ -0,0 +1,148 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/pci/rockchip-dw-pcie.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: DesignWare based PCIe RC controller on Rockchip SoCs
> +
> +maintainers:
> +  - Shawn Lin <shawn.lin@rock-chips.com>
> +  - Simon Xue <xxm@rock-chips.com>
> +
> +# We need a select here so we don't match all nodes with 'snps,dw-pcie'
> +select:
> +  properties:
> +    compatible:
> +      contains:
> +        const: rockchip,rk1808-pcie
> +  required:
> +    - compatible
> +

Need to reference pci-bus.yaml.

> +properties:
> +  compatible:
> +    enum:
> +      - rockchip,rk1808-pcie
> +      - snps,dw-pcie

Doesn't match the example. This says 1 string that either of the 2 
strings.

> +
> +  reg:
> +    maxItems: 1

Example shows 2. If so, need to define here what each one is.

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
> +    enum:
> +      - rockchip,usbpciegrf
> +    description: The grf for COMBPHY configuration and state registers.

COMBOPHY?

Why isn't this part of the phy node?

> +
> +required:
> +  - compatible
> +  - "#address-cells"
> +  - "#size-cells"
> +  - reg
> +  - clocks
> +  - clock-names
> +  - msi-map
> +  - num-lanes
> +  - phys
> +  - phy-names
> +  - ranges
> +  - resets
> +  - reset-names
> +  - rockchip,usbpciegrf
> +  - reset-gpios
> +
> +additionalProperties: false

With pci-bus.yaml included, this will have to be 
'unevaluatedProperties: false'.

> +
> +examples:
> +  - |
> +    pcie0: pcie@fc400000 {

Unit address should be first entry in 'reg'.

> +      compatible = "rockchip,rk1808-pcie", "snps,dw-pcie";
> +      #address-cells = <3>;
> +      #size-cells = <2>;
> +      bus-range = <0x0 0x1f>;
> +      reg = <0x0 0xfc000000 0x0 0x400000>,
> +            <0x0 0xfc400000 0x0 0x10000>;
> +      clocks = <&cru HSCLK_PCIE>, <&cru LSCLK_PCIE>,
> +               <&cru ACLK_PCIE>, <&cru PCLK_PCIE>,
> +               <&cru SCLK_PCIE_AUX>;
> +      clock-names = "hsclk", "lsclk",
> +                    "aclk", "pclk",
> +                    "sclk-aux";
> +      msi-map = <0x0 &its 0x0 0x1000>;
> +      num-lanes = <2>;
> +      phys = <&combphy PHY_TYPE_PCIE>;

Not documented.

> +      phy-names = "pcie-phy";

Not documented. Not really needed if only 1.

> +      ranges = <0x00000800 0x0 0xf8000000 0x0 0xf8000000 0x0 0x800000
> +                0x83000000 0x0 0xf8800000 0x0 0xf8800000 0x0 0x3700000
> +                0x81000000 0x0 0xfbf00000 0x0 0xfbf00000 0x0 0x100000>;
> +      resets = <&cru SRST_PCIE_NIU_H>, <&cru SRST_PCIE_NIU_L>,
> +               <&cru SRST_PCIEGRF_P>, <&cru SRST_PCIECTL_P>,
> +               <&cru SRST_PCIECTL_POWERUP>, <&cru SRST_PCIECTL_MST_A>,
> +               <&cru SRST_PCIECTL_SLV_A>, <&cru SRST_PCIECTL_DBI_A>,
> +               <&cru SRST_PCIECTL_BUTTON>, <&cru SRST_PCIECTL_PE>,
> +               <&cru SRST_PCIECTL_CORE>, <&cru SRST_PCIECTL_NSTICKY>,
> +               <&cru SRST_PCIECTL_STICKY>, <&cru SRST_PCIECTL_PWR>,
> +               <&cru SRST_PCIE_NIU_A>, <&cru SRST_PCIE_NIU_P>;
> +      reset-names = "niu-h", "niu-l", "grf-p", "ctl-p",
> +                    "ctl-powerup", "ctl-mst-a", "ctl-slv-a",
> +                    "ctl-dbi-a", "ctl-button", "ctl-pe",
> +                    "ctl-core", "ctl-nsticky", "ctl-sticky",
> +                    "ctl-pwr", "ctl-niu-a", "ctl-niu-p";
> +      rockchip,usbpciegrf = <&usb_pcie_grf>;
> +      reset-gpios = <&gpio0 RK_PB6 GPIO_ACTIVE_HIGH>;
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

Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 316901BC22E
	for <lists+linux-rockchip@lfdr.de>; Tue, 28 Apr 2020 17:03:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LmhnkOZ4LxF4k99K9JiTFt1QmI8MgQ5hrFWbsPl84Pk=; b=JMb67A4Uk5l52+
	j1iRBzpkQZQMUGzUmAIlz5JiDn3+2lkvEMkMSYq4yI+R+kQVNNwM7aNqmM11HVVqNpsgadgPSTVBs
	b115sYYamwBxG2UJkQywQcCuOJ0ZsjgwGXBgVoUIgoPA7C0ZS57YwLLHPgdYXaWiJaSubpCdY4vQr
	QrKlqA5FbXZeO/9efXZdNoHs2lSG6Q9KWQ9QqeEI/jfBSwLCGH+p/zp+bxqYWoFzRnJb6bY7KlZx0
	wWLsCrPok+5zSimW1i8WKCU2ZhAiND02pVD2yJFp34pyGDwRDNnrpjSLw/Z7/qGs62bwzx+xMDz8r
	GPVylXzuac+gPXdXkzzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTRlC-0005U6-5M; Tue, 28 Apr 2020 15:02:58 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTRkI-0005EA-58; Tue, 28 Apr 2020 15:02:03 +0000
Received: by mail-ot1-f66.google.com with SMTP id 72so33124921otu.1;
 Tue, 28 Apr 2020 08:02:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=wOI9PIo4Vv58y4bLuibA+NO+boXaHkpAOHjuVZfrPc0=;
 b=IgVpWYfnyhqDwFTFOb7nbWfP93MjL1G5uVQoMDsPu/8PuWB9vtAf3/tnMzFMIfRH/v
 sjYNSb6QcHzMVpGiix2f11tgz4/NybvTJTO+LTeRLEfaQw8z2ZAZPT4fMjMRfts/gKgJ
 12I5jaWUUdC7fzLA1HKBsShBOZHLPYWtr6c2jq570mQhQh1oGFTRDjpAWc3RivfDpXDH
 xi7VqgtILlQAWPbTgMO8OV/sO/RZ0Y6+pOrjEEuqmvKJA+vNKNuMnhgGQskaU+r9x/so
 mlUZhJooISYZLL5BAwv47hXhGKZKG1+YZQm7RF+V+MBZuZrtZwXMnvN+sHbc/mqwA0qH
 yJVw==
X-Gm-Message-State: AGi0PuaUHcWug+yv3B8kz/HxC1svYGzwqap2kbfopQYgbB8b8zkwgpqP
 YO0GFFABS6vuOyihvXBHDw==
X-Google-Smtp-Source: APiQypJK7qFctMTLFR8DSjEYZq7y7xzYxXBG62Fek7g2Ha9ba/gioZYH8A5qLU9mePcqJJgbr3yD1w==
X-Received: by 2002:aca:4a4c:: with SMTP id x73mr3328980oia.162.1588086120621; 
 Tue, 28 Apr 2020 08:02:00 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id v8sm2648797otb.50.2020.04.28.08.01.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Apr 2020 08:02:00 -0700 (PDT)
Received: (nullmailer pid 19290 invoked by uid 1000);
 Tue, 28 Apr 2020 15:01:58 -0000
Date: Tue, 28 Apr 2020 10:01:58 -0500
From: Rob Herring <robh@kernel.org>
To: Yifeng Zhao <yifeng.zhao@rock-chips.com>
Subject: Re: [PATCH v5 1/7] dt-bindings: mtd: Describe Rockchip RK3xxx NAND
 flash controller
Message-ID: <20200428150158.GA12189@bogus>
References: <20200426100250.14678-1-yifeng.zhao@rock-chips.com>
 <20200426100250.14678-2-yifeng.zhao@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200426100250.14678-2-yifeng.zhao@rock-chips.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_080202_200308_B8F6E483 
X-CRM114-Status: GOOD (  20.93  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org, heiko@sntech.de, richard@nod.at,
 linux-rockchip@lists.infradead.org, linux-mtd@lists.infradead.org,
 miquel.raynal@bootlin.com, vigneshr@ti.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Sun, Apr 26, 2020 at 06:02:44PM +0800, Yifeng Zhao wrote:
> Documentation support for Rockchip RK3xxx NAND flash controllers
> 
> Signed-off-by: Yifeng Zhao <yifeng.zhao@rock-chips.com>
> ---
> 
> Changes in v5:
> - Fix some wrong define
> - Add boot-medium define
> - Remove some compatible define
> 
> Changes in v4:
> - The compatible define with rkxx_nfc
> - Add assigned-clocks
> - Fix some wrong define
> 
> Changes in v3:
> - Change the title for the dt-bindings
> 
> Changes in v2: None
> 
>  .../mtd/rockchip,nand-controller.yaml         | 124 ++++++++++++++++++
>  1 file changed, 124 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mtd/rockchip,nand-controller.yaml
> 
> diff --git a/Documentation/devicetree/bindings/mtd/rockchip,nand-controller.yaml b/Documentation/devicetree/bindings/mtd/rockchip,nand-controller.yaml
> new file mode 100644
> index 000000000000..12354c79d275
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mtd/rockchip,nand-controller.yaml
> @@ -0,0 +1,124 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/mtd/rockchip,nand-controller.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Rockchip SoCs NAND FLASH Controller (NFC)
> +
> +allOf:
> +  - $ref: "nand-controller.yaml#"
> +
> +maintainers:
> +  - Heiko Stuebner <heiko@sntech.de>
> +
> +properties:
> +  compatible:
> +    enum:
> +      - rockchip,px30_nfc
> +      - rockchip,rk3xxx_nfc
> +      - rockchip,rk3308_nfc
> +      - rockchip,rv1108_nfc

Use '-', not '_'.

> +
> +  reg:
> +    minItems: 1
> +
> +  interrupts:
> +    minItems: 1
> +
> +  clocks:
> +    minItems: 1
> +    items:
> +      - description: Bus Clock
> +      - description: Module Clock
> +
> +  clock-names:
> +    minItems: 1

So 'ahb' is required and 'nfc' is optional? That's what you defined, but 
that seems backwards.

> +    items:
> +      - const: ahb
> +      - const: nfc
> +
> +patternProperties:
> +  "^nand@[0-3]$":
> +    type: object
> +    properties:
> +      reg:
> +        minimum: 0
> +        maximum: 3
> +
> +      nand-ecc-mode:
> +        const: hw
> +
> +      nand-ecc-step-size:
> +        const: 1024
> +
> +      nand-ecc-strength:
> +        enum: [16,24,40,60,70]
> +
> +      nand-bus-width:
> +        const: 8
> +
> +      nand-is-boot-medium: true
> +
> +      rockchip-boot-blks:

rockchip,boot-blks

> +        minimum: 2
> +        default: 16
> +        allOf:
> +        - $ref: /schemas/types.yaml#/definitions/uint32
> +        description:
> +          For legacy devices where the bootrom can only handle 16/24 bit
> +          BCH/ECC, and for some other devices where the bootrom can support
> +          60/70 bit BCH/ECC.
> +          In addition, when programming the loader, a linked list needs to
> +          be written in oob for Bootrom to read the correct data sequence.
> +          If specified it indicates the number of erase blocks in use by
> +          the bootloader that need a different BCH/ECC setting.
> +          Only used in combination with 'nand-is-boot-medium'.
> +
> +      rockchip-boot-ecc-strength:

rockchip,boot-ecc-strength

> +        enum: [16,24,40,60,70]
> +        description:
> +          If specified it indicates that use a different BCH/ECC setting for
> +          bootrom.
> +          Only used in combination with 'nand-is-boot-medium'.
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clocks
> +  - clock-names
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/rk3308-cru.h>
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    nfc: nand-controller@ff4b0000 {
> +      compatible = "rockchip,rk3308_nfc";
> +      reg = <0x0 0xff4b0000 0x0 0x4000>;
> +      interrupts = <GIC_SPI 81 IRQ_TYPE_LEVEL_HIGH>;
> +      clocks = <&cru HCLK_NANDC>, <&cru SCLK_NANDC>;
> +      clock-names = "ahb", "nfc";
> +      assigned-clocks = <&clks SCLK_NANDC>;
> +      assigned-clock-rates = <150000000>;
> +
> +      pinctrl-0 = <&flash_ale &flash_bus8 &flash_cle &flash_csn0
> +                   &flash_rdn &flash_rdy &flash_wrn>;
> +      pinctrl-names = "default";
> +
> +      #address-cells = <1>;
> +      #size-cells = <0>;
> +
> +      nand@0 {
> +        reg = <0>;
> +        nand-bus-width = <8>;
> +        nand-ecc-mode = "hw";
> +        nand-ecc-strength = <16>;
> +        nand-ecc-step-size = <1024>;
> +        nand-is-boot-medium;
> +        rockchip-boot-blks = <8>;
> +        rockchip-boot-ecc-strength = <16>;
> +      };
> +    };
> +
> +...
> -- 
> 2.17.1
> 
> 
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

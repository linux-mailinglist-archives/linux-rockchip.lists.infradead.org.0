Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CCA11C119E
	for <lists+linux-rockchip@lfdr.de>; Fri,  1 May 2020 13:47:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6e2toXtOOgD8jjYGV/m9aJsQKfPPKuF9bUHf0ODfKO8=; b=dsT0ImZGIX+WFm
	yTNbQYZsBJNay6kaS1pVG/4vbt5QGu17PMHztFUTtvLbpXrGnZI10YNhxUZ8CtqmOHc9esVCRaCkt
	qHkTwZZ1wfvsh+Aoo3TypQtz/aOiP4W1iA7DTGD0IAqtWLJjhzdGvBqTzEy/1n692zUNZcns4MBwe
	rye13LdXSyPlri+SH0aYLUOYLN3iFc0/vCnMBHBp3gvw17shzqWqtj35OBq65NeDnScjjHbUSWiuQ
	4uquWn2Eo3d0lih47gEZZ2xih8CobTB5KU3ikMeyx6H+IbG54YYaHkBT+/ZbchW7Cw3V+CeE85BK/
	dHkHzN9oWS+621Azbotg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUU8U-000250-EF; Fri, 01 May 2020 11:47:18 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUU8R-00024K-KY; Fri, 01 May 2020 11:47:17 +0000
Received: by mail-wr1-x444.google.com with SMTP id e16so6123895wra.7;
 Fri, 01 May 2020 04:47:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=xo1dT02hGRiPFzY3eBXdVCxmAoUqM5/6Yn1Y8PrP+Ww=;
 b=TqZeZSiOAsHc5FLDPNSpJsPHo9EQYQvO8INJw1wWzkHrWiQtbjW8afI8wkeec7yrEg
 G54ovWDnCM3NtMr6eWoIAnycIdcGiXhxRFZ/o3lnz7h3l5KlV7YfagzPPggSDEKIJM5g
 6yWmQs9KrXYoecKJ0ZBFqu7LiRQd/fAuZzQzIHTrtf60Efjw0ZBtWdE4OB3drn8TmQct
 QDj1t9xRnhDJjJW9KjZ5s/XKZ/giVaTnKyDRagmRcVxI6pJq+UDPIMlH4/vs/w6kshIk
 XnxeAj/o0dMRgXG7vKQcQJqHOSdhw5c05Lz0fwtP0dTkiEU6L3S53J8RiXU2ImdDNjGO
 UV+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=xo1dT02hGRiPFzY3eBXdVCxmAoUqM5/6Yn1Y8PrP+Ww=;
 b=Kfp06dy6AsYM2QKBi1C/ftWPdSQmgNavpivtc4K4RrrF+UG3+umDT84M04HYKbFtmX
 gr0D0yWt9C/TdQz8uGEqWvRxFS2GP/6k4Asi9FVLIMMszgQQw+UFscGxtkl5dm8VYFfp
 b6HZ3fkRdDIiV7iL7CNEh3KJxThhsu8TaYyAmsH4C6ndV84DI54XoEL187RbJQQpth31
 X54ENkWiTHC+Jx47wtLyD2QXHTnhfXjeq2zbn91t6YPbcPAnYOHkiuwcuuz3XXN2Rp5x
 bLGrHZi/MHWXZnKbU50XRP0bSg/xPsnB9koshXVmiY/Dlz1SB1YxtDvP3InaU7p5bEgt
 rBrg==
X-Gm-Message-State: AGi0Pua/CzN+WbydcuAh/QJ1ylC6pAPUBW9iyQfKAaoPL7Ovg+G/bZEG
 l+Omdyee38pqIKiUP5MfipOlOlpt
X-Google-Smtp-Source: APiQypKQbDlmTK/R8L0A3VTFGCrv8t738DJ/qpLciws+3N4cLRpdshoQuOeLg/kNqSWJTKy3UU5mpg==
X-Received: by 2002:adf:bd83:: with SMTP id l3mr2298586wrh.317.1588333633707; 
 Fri, 01 May 2020 04:47:13 -0700 (PDT)
Received: from [192.168.2.1] (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id j13sm4028374wrx.5.2020.05.01.04.47.12
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 01 May 2020 04:47:13 -0700 (PDT)
Subject: Re: [PATCH v5 1/7] dt-bindings: mtd: Describe Rockchip RK3xxx NAND
 flash controller
To: Yifeng Zhao <yifeng.zhao@rock-chips.com>, miquel.raynal@bootlin.com,
 richard@nod.at, vigneshr@ti.com, robh+dt@kernel.org
References: <20200426100250.14678-1-yifeng.zhao@rock-chips.com>
 <20200426100250.14678-2-yifeng.zhao@rock-chips.com>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <6e5fefa2-1f19-a425-b696-e6e72e25c2d9@gmail.com>
Date: Fri, 1 May 2020 13:47:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200426100250.14678-2-yifeng.zhao@rock-chips.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_044715_676688_D2EAE0BE 
X-CRM114-Status: GOOD (  25.06  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-mtd@lists.infradead.org, heiko@sntech.de,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Yifeng, Heiko,

A few more comments based on version 5 (part 2).

On 4/26/20 12:02 PM, Yifeng Zhao wrote:
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

Based on what's available in mainline and your info.
For Heiko? Is this correct?

  compatible:
    oneOf:
      - const: rockchip,px30-nfc
      - const: rockchip,rk2928-nfc
      - const: rockchip,rk3308-nfc
      - items:
          - const: rockchip,rk3326-nfc
          - const: rockchip,px30-nfc
      - items:
          - enum:
              - rockchip,rk3036-nfc
              - rockchip,rk3228-nfc
              - rockchip,rk3288-nfc
          - const: rockchip,rk2928-nfc
      - items:
          - const: rockchip,rv1108-nfc
          - const: rockchip,rk3308-nfc

static const struct of_device_id rk_nfc_id_table[] = {
	{.compatible = "rockchip,px30_nfc",   .data = &nfc_v9_cfg },
	{.compatible = "rockchip,rk2928-nfc", .data = &nfc_v6_cfg },
	{.compatible = "rockchip,rk3308_nfc", .data = &nfc_v8_cfg },
	{ /* sentinel */ },
};

> +
> +  reg:
> +    minItems: 1

    maxItems: 1

> +
> +  interrupts:
> +    minItems: 1

    maxItems: 1

> +
> +  clocks:
> +    minItems: 1
> +    items:
> +      - description: Bus Clock
> +      - description: Module Clock
> +
> +  clock-names:
> +    minItems: 1
> +    items:
> +      - const: ahb
> +      - const: nfc

  assigned-clocks:
    maxItems: 1

  assigned-clock-rates:
    maxItems: 1

  pinctrl-0:
    maxItems: 1

  pinctrl-names:
    const: default

  power-domains:
     maxItems: 1

'power-domains' is needed for px30.

> +
> +patternProperties:
> +  "^nand@[0-3]$":

        "^nand@[0-7]$":
or?
        "^nand@[a-f0-9]$":

> +    type: object
> +    properties:
> +      reg:
> +        minimum: 0
> +        maximum: 3

           maximum: 7

> +
> +      nand-ecc-mode:
> +        const: hw
> +
> +      nand-ecc-step-size:
> +        const: 1024
> +
> +      nand-ecc-strength:
> +        enum: [16,24,40,60,70]

Not every SoC has the same array. Add description maybe.

> +
> +      nand-bus-width:
> +        const: 8
> +

> +      nand-is-boot-medium: true
> +

?
With 2 regexes nand-is-boot-medium is maybe needed, but I'm not able to
successful test that with a common file? Keep or not?
?
          dependencies:
            rockchip,boot-blks: [ nand-is-boot-medium ]
            rockchip,boot-ecc-strength: [ nand-is-boot-medium ]

> +      rockchip-boot-blks:

rockchip,boot-blks:

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
> +        enum: [16,24,40,60,70]

Not every SoC has the same array. Add description maybe.

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

      compatible = "rockchip,rk3308-nfc";

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

TEST1:

Change this in the example:

      nand@4 {
        reg = <4>;

make ARCH=arm64 dt_binding_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/mtd/rockchip,nand-controller.yaml

Result: nothing

TEST2:

Change "^nand@[0-3]$" to "^nand@[a-f0-9]$"

make ARCH=arm64 dt_binding_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/mtd/rockchip,nand-controller.yaml

Result:

Documentation/devicetree/bindings/mtd/rockchip,nand-controller.example.dt.yaml:
nand-controller@ff4b0000: nand@4:reg:0:0: 4 is greater than the maximum of 3
  SCHEMA  Documentation/devicetree/bindings/processed-schema.yaml

Conclusion:

?

> +        nand-bus-width = <8>;
> +        nand-ecc-mode = "hw";
> +        nand-ecc-strength = <16>;
> +        nand-ecc-step-size = <1024>;
> +        nand-is-boot-medium;

> +        rockchip-boot-blks = <8>;
> +        rockchip-boot-ecc-strength = <16>;

        rockchip,boot-blks = <8>;
        rockchip,boot-ecc-strength = <16>;

> +      };
> +    };
> +
> +...
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C3251443CC
	for <lists+linux-rockchip@lfdr.de>; Tue, 21 Jan 2020 18:58:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TmXcRIpAlNV59Jj6zwMl37r1ZnVu0xJHOvABJlhHV70=; b=py8gVUnAutcc7H
	om8UomGiEoGV7qFBzEkZRcbxORDph4krpB5fB6k16hdJ/B4aKBnzPDsNo/0GZnHdaKx5IY25oNCz0
	hW6KY8piJOkGGpbfwPIehPVtI2+AJAz3i1wuEUdBNpo8+gdUJyb0aOepVSknyjkbBIWi6F77s0riG
	kvEh1v8ENAZmFrHPZpyYMC61skIaiWL4E1cdFBwbuRuKGWONTwv7mTn0yaWGHLz46ZqWmFqCgmDBi
	p3Labglx5BCwXPISnWSaA7xbfkb2KIK2KfOYC+lsvzHGwFCmFpJUdr7Chhq+CeyY1Hy5RSPEWBCa3
	nsNMaGYSqR5ohG7ad45w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itxmz-0002AP-VP; Tue, 21 Jan 2020 17:58:09 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itxma-0001qv-Bg; Tue, 21 Jan 2020 17:57:48 +0000
Received: by mail-oi1-x244.google.com with SMTP id 18so3396474oin.9;
 Tue, 21 Jan 2020 09:57:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Mp6DdFVSXVePI6iSGCnPMxvllFc7taA3faXPCTrJyOk=;
 b=fvs0k64WTpLPoEYSU10yB4vhu1oKNCS3z851fAJBpMS31H71pFpdt95LE6mt0lodMh
 Jdqv99H4gGi4rcE1ufxinz/IjL1qBRzTshBYn4yImdugBHqsI/JvBDKbrLNnszNs8xDQ
 7CACHghR7TC+u1H1Yz57CoWfMmQiueT0PCEvJJHkVw72rFCT5yBklHSpu+SqGcn8vxNN
 8/lDvlGdM44tQFfDAWN260vjs6rXfoO5JpDNlqIuhvQJWCGbaCFHPIxVhRtMpVzJM3ye
 NPI62fQL1BoPCFs8rgxB6F9lcQFjMQlGgM4h7Y0zL2uDpQAFC7BdMYhoTEx8/xAwnt7p
 C3Pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Mp6DdFVSXVePI6iSGCnPMxvllFc7taA3faXPCTrJyOk=;
 b=oeGH25hl0120KrOWJpWqTKVgMdtI7O3D+I3qMviu0QKkoCBBLyxq54tgqUp4xpSWHW
 a9WT5MkDOXkv7ad6bIeqqzu0fjgAbUMAkkctanlV9uAAx66CijtNY+a8gGK/85m+sNcP
 dN6SmJw5UCnk6Zr0hM69Jflbf7nGtDbIHSLLIKj3qDCr5/0afLUGKGF4HOWQIAAPT7ZM
 3vdu6A7dXWXhcsMafDhGfmc5qSXAnDnZMf1dKwIR9o//u+Zi/yKrv+DsUF7r1AQbB9TF
 J00HHcsST5VPm++Zpdyke8POFORACOHVtJi+oEB/2w0sy5ZRyEbHpWd0UVMJlPukDm/6
 r9hA==
X-Gm-Message-State: APjAAAUkFWUqRZJVgzIbNDagB3tzHAzRbIa6klmHwhuEHyuAqu0l06xZ
 ckZ+YAWCQjMcxsgnblQWbBI9V7aMqP1cTPGF6Ok=
X-Google-Smtp-Source: APXvYqz8UqpqSR+lXSTxQDudfV5ATY6jfXYA7jHRsg0MIEWnG2M2frTp3v08cP9d/Qo4VBKw58GIa5lu+/MAx1m8ARs=
X-Received: by 2002:aca:4ad5:: with SMTP id x204mr3773363oia.162.1579629462726; 
 Tue, 21 Jan 2020 09:57:42 -0800 (PST)
MIME-Version: 1.0
References: <20200108162211.22358-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20200108162211.22358-5-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20200108162211.22358-5-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Tue, 21 Jan 2020 17:57:18 +0000
Message-ID: <CA+V-a8s1Jx8uZiSr0uiryS492EbFRoFg9QTwkosZsuyfRYp-3g@mail.gmail.com>
Subject: Re: [v3 4/6] dt-bindings: PCI: rcar: Add bindings for R-Car PCIe
 endpoint controller
To: Rob Herring <robh+dt@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
 Mark Rutland <mark.rutland@arm.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>, 
 Magnus Damm <magnus.damm@gmail.com>, Kishon Vijay Abraham I <kishon@ti.com>, 
 Marek Vasut <marek.vasut+renesas@gmail.com>, 
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 linux-pci <linux-pci@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_095744_424532_54B678AA 
X-CRM114-Status: GOOD (  18.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [prabhakar.csengg[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Chris Paterson <Chris.Paterson2@renesas.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Heiko Stuebner <heiko@sntech.de>, Arnd Bergmann <arnd@arndb.de>,
 Jingoo Han <jingoohan1@gmail.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Shawn Lin <shawn.lin@rock-chips.com>, Frank Rowand <frowand.list@gmail.com>,
 LKML <linux-kernel@vger.kernel.org>,
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Tom Joseph <tjoseph@cadence.com>, Simon Horman <horms@verge.net.au>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Andrew Murray <andrew.murray@arm.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Will Deacon <will@kernel.org>, LAK <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Rob/Kishon,

On Wed, Jan 8, 2020 at 4:22 PM Lad Prabhakar <prabhakar.csengg@gmail.com> wrote:
>
> This patch adds the bindings for the R-Car PCIe endpoint driver.
>
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> ---
>  .../devicetree/bindings/pci/rcar-pci-ep.yaml  | 76 +++++++++++++++++++
>  1 file changed, 76 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/pci/rcar-pci-ep.yaml
>
> diff --git a/Documentation/devicetree/bindings/pci/rcar-pci-ep.yaml b/Documentation/devicetree/bindings/pci/rcar-pci-ep.yaml
> new file mode 100644
> index 000000000000..99c2a1174463
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/pci/rcar-pci-ep.yaml
> @@ -0,0 +1,76 @@
> +# SPDX-License-Identifier: GPL-2.0
> +# Copyright (C) 2020 Renesas Electronics Europe GmbH - https://www.renesas.com/eu/en/
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/pci/rcar-pcie-ep.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Renesas R-Car PCIe Endpoint
> +
> +maintainers:
> +  - Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> +
> +properties:
> +  compatible:
> +    items:
> +      - const: renesas,r8a774c0-pcie-ep
> +      - const: renesas,rcar-gen3-pcie-ep
> +
> +  reg:
> +    maxItems: 5
> +
> +  reg-names:
> +    items:
> +      - const: apb-base
> +      - const: memory0
> +      - const: memory1
> +      - const: memory2
> +      - const: memory3
> +
> +  power-domains:
> +    maxItems: 1
> +
> +  resets:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +
> +  clock-names:
> +    items:
> +      - const: pcie
> +
> +  max-functions:
> +    minimum: 1
> +    maximum: 6
> +
> +required:
> +  - compatible
> +  - reg
> +  - reg-names
> +  - resets
> +  - power-domains
> +  - clocks
> +  - clock-names
> +  - max-functions
> +
apart from dt_binding_check error are we OK with dt bindings ?

Cheers,
--Prabhakar

> +examples:
> +  - |
> +    #include <dt-bindings/clock/r8a774c0-cpg-mssr.h>
> +    #include <dt-bindings/power/r8a774c0-sysc.h>
> +
> +     pcie0_ep: pcie-ep@fe000000 {
> +            compatible = "renesas,r8a774c0-pcie-ep",
> +                         "renesas,rcar-gen3-pcie-ep";
> +            reg = <0 0xfe000000 0 0x80000>,
> +                  <0x0 0xfe100000 0 0x100000>,
> +                  <0x0 0xfe200000 0 0x200000>,
> +                  <0x0 0x30000000 0 0x8000000>,
> +                  <0x0 0x38000000 0 0x8000000>;
> +            reg-names = "apb-base", "memory0", "memory1", "memory2", "memory3";
> +            resets = <&cpg 319>;
> +            power-domains = <&sysc R8A774C0_PD_ALWAYS_ON>;
> +            clocks = <&cpg CPG_MOD 319>;
> +            clock-names = "pcie";
> +            max-functions = /bits/ 8 <1>;
> +    };
> --
> 2.20.1
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

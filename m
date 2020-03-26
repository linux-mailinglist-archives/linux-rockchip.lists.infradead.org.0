Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72E9A1944CB
	for <lists+linux-rockchip@lfdr.de>; Thu, 26 Mar 2020 17:59:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J3VXomrTO5TAXLPbMi/ctil3N+B4ZtOz7ES6SQPuu2g=; b=YRJdpDRvWJKh30
	2SsiHPYdpvr7sGFoKv9KRx50CJKaPb6FPBI/J0C23acLVDdfKipA0SBvNoSTP9ZIEx1EXuSa3sepD
	NF37oDGKqDI+EE9//lQ8lKgpoIh8qkt3RwqQytIhddjPyeejcMBqYs4LgaV2sAyk3lDtgq1ElEYzy
	JXwxtKHeBGTeQt7a8Q4qEnCcbN2FfjPmyWUqTDanhofO1mAdYUR2lLiwgg0iLHYpPAwPpbVNSvhr9
	uJhKtxJ5zBCXfAcOZoqxiXoOY5fi+QK0HVjrtcsziMKjOqfBq6+HAQF7CHc2Q65zj3p0cUKkmLvp3
	BCcIBQNIZ2AwdDrj1R3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHVrA-000469-Un; Thu, 26 Mar 2020 16:59:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHVr6-00045J-Ve
 for linux-rockchip@lists.infradead.org; Thu, 26 Mar 2020 16:59:46 +0000
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com
 [209.85.160.170])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0BF2C20848
 for <linux-rockchip@lists.infradead.org>; Thu, 26 Mar 2020 16:59:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585241983;
 bh=BmW7FxFVukavIOrW+jQGBgKkYkX/kfC7K9PYVROC7RU=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=FjeyKBikzyrKjMdNGQGxhejsOWXOhRprOD5gF/BoikJcFabZVTQCw6otkmwTz8mXn
 4dI4JlWs/UMa/N3D+pudD7bRGuQY876yXtM7MDAvLRyZ1pKSMvDiBCg7e93wvj3bo/
 vss/IGZrluz0sLCPNoFapuP4DAQQL+Ku+P9hbpTY=
Received: by mail-qt1-f170.google.com with SMTP id c14so6024819qtp.0
 for <linux-rockchip@lists.infradead.org>; Thu, 26 Mar 2020 09:59:43 -0700 (PDT)
X-Gm-Message-State: ANhLgQ1oPlqncOvqI1RpfvyoVUttAkLO9L+3RdkWGMyqgOPhra6bGTwb
 +uXsmj3I+h4KrXbufINgl0Y980H6wnA5Z1PPoA==
X-Google-Smtp-Source: ADFU+vs3QmARN1t+P26l8fJv4eGuhB4B2N/8wI4lIJEQdYu1/Emm4XyORuYHclEyIIdiycs4GS6s5QFchoTZ1Y8aNwU=
X-Received: by 2002:ac8:59:: with SMTP id i25mr9336327qtg.110.1585241981963;
 Thu, 26 Mar 2020 09:59:41 -0700 (PDT)
MIME-Version: 1.0
References: <20200325213439.16509-1-ezequiel@collabora.com>
 <20200325213439.16509-8-ezequiel@collabora.com>
In-Reply-To: <20200325213439.16509-8-ezequiel@collabora.com>
From: Rob Herring <robh@kernel.org>
Date: Thu, 26 Mar 2020 10:59:30 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+oBsDoDVpRUeW6z-92_wYbA1CHvJnSX-ALk3igbMmJJg@mail.gmail.com>
Message-ID: <CAL_Jsq+oBsDoDVpRUeW6z-92_wYbA1CHvJnSX-ALk3igbMmJJg@mail.gmail.com>
Subject: Re: [PATCH v3 7/7] dt-bindings: rockchip-vpu: Convert bindings to
 json-schema
To: Ezequiel Garcia <ezequiel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_095945_079360_1FDF6A55 
X-CRM114-Status: GOOD (  20.43  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Nicolas Dufresne <nicolas@ndufresne.ca>, Heiko Stuebner <heiko@sntech.de>,
 Alexandre Courbot <acourbot@chromium.org>, Jonas Karlman <jonas@kwiboo.se>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Tomasz Figa <tfiga@chromium.org>, Hans Verkuil <hverkuil@xs4all.nl>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 devicetree@vger.kernel.org, Jeffrey Kardatzke <jkardatzke@chromium.org>,
 Collabora Kernel ML <kernel@collabora.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Wed, Mar 25, 2020 at 3:35 PM Ezequiel Garcia <ezequiel@collabora.com> wrote:
>
> Convert Rockchip VPU (Hantro IP block) codec driver documentation to
> json-schema.
>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: Rob Herring <robh@kernel.org>
> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> ---
>  .../bindings/media/rockchip-vpu.txt           | 43 ----------
>  .../bindings/media/rockchip-vpu.yaml          | 82 +++++++++++++++++++
>  MAINTAINERS                                   |  2 +-
>  3 files changed, 83 insertions(+), 44 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/media/rockchip-vpu.txt
>  create mode 100644 Documentation/devicetree/bindings/media/rockchip-vpu.yaml
>
> diff --git a/Documentation/devicetree/bindings/media/rockchip-vpu.txt b/Documentation/devicetree/bindings/media/rockchip-vpu.txt
> deleted file mode 100644
> index 339252d9c515..000000000000
> --- a/Documentation/devicetree/bindings/media/rockchip-vpu.txt
> +++ /dev/null
> @@ -1,43 +0,0 @@
> -device-tree bindings for rockchip VPU codec
> -
> -Rockchip (Video Processing Unit) present in various Rockchip platforms,
> -such as RK3288, RK3328 and RK3399.
> -
> -Required properties:
> -- compatible: value should be one of the following
> -               "rockchip,rk3288-vpu";
> -               "rockchip,rk3328-vpu";
> -               "rockchip,rk3399-vpu";
> -- interrupts: encoding and decoding interrupt specifiers
> -- interrupt-names: should be
> -               "vepu", "vdpu" on RK3288 and RK3399,
> -               "vdpu" on RK3328.
> -- clocks: phandle to VPU aclk, hclk clocks
> -- clock-names: should be "aclk" and "hclk"
> -- power-domains: phandle to power domain node
> -- iommus: phandle to a iommu node
> -
> -Example:
> -SoC-specific DT entry:
> -       vpu: video-codec@ff9a0000 {
> -               compatible = "rockchip,rk3288-vpu";
> -               reg = <0x0 0xff9a0000 0x0 0x800>;
> -               interrupts = <GIC_SPI 9 IRQ_TYPE_LEVEL_HIGH>,
> -                            <GIC_SPI 10 IRQ_TYPE_LEVEL_HIGH>;
> -               interrupt-names = "vepu", "vdpu";
> -               clocks = <&cru ACLK_VCODEC>, <&cru HCLK_VCODEC>;
> -               clock-names = "aclk", "hclk";
> -               power-domains = <&power RK3288_PD_VIDEO>;
> -               iommus = <&vpu_mmu>;
> -       };
> -
> -       vpu: video-codec@ff350000 {
> -               compatible = "rockchip,rk3328-vpu";
> -               reg = <0x0 0xff350000 0x0 0x800>;
> -               interrupts = <GIC_SPI 9 IRQ_TYPE_LEVEL_HIGH>;
> -               interrupt-names = "vdpu";
> -               clocks = <&cru ACLK_VPU>, <&cru HCLK_VPU>;
> -               clock-names = "aclk", "hclk";
> -               power-domains = <&power RK3328_PD_VPU>;
> -               iommus = <&vpu_mmu>;
> -       };
> diff --git a/Documentation/devicetree/bindings/media/rockchip-vpu.yaml b/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
> new file mode 100644
> index 000000000000..a0c45e05cf03
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
> @@ -0,0 +1,82 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +
> +%YAML 1.2
> +---
> +$id: "http://devicetree.org/schemas/media/rockchip-vpu.yaml#"
> +$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +
> +title: Hantro G1 VPU codecs implemented on Rockchip SoCs
> +
> +maintainers:
> +  - Ezequiel Garcia <ezequiel@collabora.com>
> +
> +description:
> +  Hantro G1 video encode and decode accelerators present on Rockchip SoCs.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - rockchip,rk3288-vpu
> +      - rockchip,rk3328-vpu
> +      - rockchip,rk3399-vpu
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 2
> +
> +  interrupt-names:
> +    items:
> +      - const: vepu
> +      - const: vdpu
> +
> +  clocks:
> +    maxItems: 2
> +
> +  clock-names:
> +    items:
> +      - const: aclk
> +      - const: hclk
> +
> +  power-domains:
> +    maxItems: 1
> +
> +  iommus:
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - interrupt-names
> +  - clocks
> +  - clock-names

Add:

additionalProperties: false

> +
> +examples:
> +  - |
> +        #include <dt-bindings/clock/rk3288-cru.h>
> +        #include <dt-bindings/interrupt-controller/arm-gic.h>
> +
> +        vpu: video-codec@ff9a0000 {
> +                compatible = "rockchip,rk3288-vpu";
> +                reg = <0x0 0xff9a0000 0x0 0x800>;
> +                interrupts = <GIC_SPI 9 IRQ_TYPE_LEVEL_HIGH>,
> +                             <GIC_SPI 10 IRQ_TYPE_LEVEL_HIGH>;
> +                interrupt-names = "vepu", "vdpu";
> +                clocks = <&cru ACLK_VCODEC>, <&cru HCLK_VCODEC>;
> +                clock-names = "aclk", "hclk";
> +                power-domains = <&power RK3288_PD_VIDEO>;

Header for this define?

> +                iommus = <&vpu_mmu>;
> +        };
> +
> +        vpu: video-codec@ff350000 {
> +                compatible = "rockchip,rk3328-vpu";
> +                reg = <0x0 0xff350000 0x0 0x800>;
> +                interrupts = <GIC_SPI 9 IRQ_TYPE_LEVEL_HIGH>;
> +                interrupt-names = "vdpu";
> +                clocks = <&cru ACLK_VPU>, <&cru HCLK_VPU>;
> +                clock-names = "aclk", "hclk";
> +                power-domains = <&power RK3328_PD_VPU>;
> +                iommus = <&vpu_mmu>;
> +        };
> diff --git a/MAINTAINERS b/MAINTAINERS
> index d66ac41ef587..2b8b3e7f3df3 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -14320,7 +14320,7 @@ L:      linux-rockchip@lists.infradead.org
>  S:     Maintained
>  F:     drivers/staging/media/hantro/
>  F:     Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
> -F:     Documentation/devicetree/bindings/media/rockchip-vpu.txt
> +F:     Documentation/devicetree/bindings/media/rockchip-vpu.yaml
>
>  ROCKER DRIVER
>  M:     Jiri Pirko <jiri@resnulli.us>
> --
> 2.26.0.rc2
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

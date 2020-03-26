Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EE3D194728
	for <lists+linux-rockchip@lfdr.de>; Thu, 26 Mar 2020 20:09:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ibnxOxsvOo6esJoQUYUotLioqisSYeK3nnGC9hmrUuI=; b=lvGSnhj5Y+r+B/
	lYA4fnSgUpAPDTo0UYynKplIDru08Q97t6+cechEVo5ebhGACdm7TuQBnzJYbhDSvY9eTtWDUt/Ek
	UkTgntnVJ7+9tTzI8gXBK0yGrAev95+aKnMWwcjBIwLpeFRh4VHTw1wbC57KQE/mAHFfThmUrAdvJ
	Xj+qD8VUuqRbACirDOteUc51hlQWd1Gki9itNE8AVPZB0j913PKjMqxL/bQzvDB2OfrtEidXO2dGF
	gfAJWFjpeo6TSDj6By7gOhXKIw3xZGd8ai3H/pdG1fw8D1tZfLgaKDiRS8UuEumBXtCY1mHj2Yh+8
	JKz0P0+y8/o0b0k6IpFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHXsu-00067E-DL; Thu, 26 Mar 2020 19:09:44 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHXsq-00066m-Gw
 for linux-rockchip@lists.infradead.org; Thu, 26 Mar 2020 19:09:42 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 615582979EA
Message-ID: <add8779831c934b7af811fa72e7a2cef2ff926f2.camel@collabora.com>
Subject: Re: [PATCH v3 7/7] dt-bindings: rockchip-vpu: Convert bindings to
 json-schema
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Rob Herring <robh@kernel.org>
Date: Thu, 26 Mar 2020 16:09:28 -0300
In-Reply-To: <CAL_Jsq+oBsDoDVpRUeW6z-92_wYbA1CHvJnSX-ALk3igbMmJJg@mail.gmail.com>
References: <20200325213439.16509-1-ezequiel@collabora.com>
 <20200325213439.16509-8-ezequiel@collabora.com>
 <CAL_Jsq+oBsDoDVpRUeW6z-92_wYbA1CHvJnSX-ALk3igbMmJJg@mail.gmail.com>
Organization: Collabora
User-Agent: Evolution 3.36.0-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_120940_826856_73C2C760 
X-CRM114-Status: GOOD (  19.64  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Nicolas Dufresne <nicolas@ndufresne.ca>, Heiko Stuebner <heiko@sntech.de>,
 Alexandre Courbot <acourbot@chromium.org>, Jonas Karlman <jonas@kwiboo.se>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Tomasz Figa <tfiga@chromium.org>, Hans Verkuil <hverkuil@xs4all.nl>, "open
 list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 devicetree@vger.kernel.org, Jeffrey Kardatzke <jkardatzke@chromium.org>,
 Collabora Kernel ML <kernel@collabora.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hey Rob,

On Thu, 2020-03-26 at 10:59 -0600, Rob Herring wrote:
> On Wed, Mar 25, 2020 at 3:35 PM Ezequiel Garcia <ezequiel@collabora.com> wrote:
> > Convert Rockchip VPU (Hantro IP block) codec driver documentation to
> > json-schema.
> > 
> > Cc: Mark Rutland <mark.rutland@arm.com>
> > Cc: Rob Herring <robh@kernel.org>
> > Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> > ---
> >  .../bindings/media/rockchip-vpu.txt           | 43 ----------
> >  .../bindings/media/rockchip-vpu.yaml          | 82 +++++++++++++++++++
> >  MAINTAINERS                                   |  2 +-
> >  3 files changed, 83 insertions(+), 44 deletions(-)
> >  delete mode 100644 Documentation/devicetree/bindings/media/rockchip-vpu.txt
> >  create mode 100644 Documentation/devicetree/bindings/media/rockchip-vpu.yaml
> > 
> > diff --git a/Documentation/devicetree/bindings/media/rockchip-vpu.txt b/Documentation/devicetree/bindings/media/rockchip-vpu.txt
> > deleted file mode 100644
> > index 339252d9c515..000000000000
> > --- a/Documentation/devicetree/bindings/media/rockchip-vpu.txt
> > +++ /dev/null
> > @@ -1,43 +0,0 @@
> > -device-tree bindings for rockchip VPU codec
> > -
> > -Rockchip (Video Processing Unit) present in various Rockchip platforms,
> > -such as RK3288, RK3328 and RK3399.
> > -
> > -Required properties:
> > -- compatible: value should be one of the following
> > -               "rockchip,rk3288-vpu";
> > -               "rockchip,rk3328-vpu";
> > -               "rockchip,rk3399-vpu";
> > -- interrupts: encoding and decoding interrupt specifiers
> > -- interrupt-names: should be
> > -               "vepu", "vdpu" on RK3288 and RK3399,
> > -               "vdpu" on RK3328.
> > -- clocks: phandle to VPU aclk, hclk clocks
> > -- clock-names: should be "aclk" and "hclk"
> > -- power-domains: phandle to power domain node
> > -- iommus: phandle to a iommu node
> > -
> > -Example:
> > -SoC-specific DT entry:
> > -       vpu: video-codec@ff9a0000 {
> > -               compatible = "rockchip,rk3288-vpu";
> > -               reg = <0x0 0xff9a0000 0x0 0x800>;
> > -               interrupts = <GIC_SPI 9 IRQ_TYPE_LEVEL_HIGH>,
> > -                            <GIC_SPI 10 IRQ_TYPE_LEVEL_HIGH>;
> > -               interrupt-names = "vepu", "vdpu";
> > -               clocks = <&cru ACLK_VCODEC>, <&cru HCLK_VCODEC>;
> > -               clock-names = "aclk", "hclk";
> > -               power-domains = <&power RK3288_PD_VIDEO>;
> > -               iommus = <&vpu_mmu>;
> > -       };
> > -
> > -       vpu: video-codec@ff350000 {
> > -               compatible = "rockchip,rk3328-vpu";
> > -               reg = <0x0 0xff350000 0x0 0x800>;
> > -               interrupts = <GIC_SPI 9 IRQ_TYPE_LEVEL_HIGH>;
> > -               interrupt-names = "vdpu";
> > -               clocks = <&cru ACLK_VPU>, <&cru HCLK_VPU>;
> > -               clock-names = "aclk", "hclk";
> > -               power-domains = <&power RK3328_PD_VPU>;
> > -               iommus = <&vpu_mmu>;
> > -       };
> > diff --git a/Documentation/devicetree/bindings/media/rockchip-vpu.yaml b/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
> > new file mode 100644
> > index 000000000000..a0c45e05cf03
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
> > @@ -0,0 +1,82 @@
> > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > +
> > +%YAML 1.2
> > +---
> > +$id: "http://devicetree.org/schemas/media/rockchip-vpu.yaml#"
> > +$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> > +
> > +title: Hantro G1 VPU codecs implemented on Rockchip SoCs
> > +
> > +maintainers:
> > +  - Ezequiel Garcia <ezequiel@collabora.com>
> > +
> > +description:
> > +  Hantro G1 video encode and decode accelerators present on Rockchip SoCs.
> > +
> > +properties:
> > +  compatible:
> > +    enum:
> > +      - rockchip,rk3288-vpu
> > +      - rockchip,rk3328-vpu
> > +      - rockchip,rk3399-vpu
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  interrupts:
> > +    maxItems: 2
> > +
> > +  interrupt-names:
> > +    items:
> > +      - const: vepu
> > +      - const: vdpu
> > +
> > +  clocks:
> > +    maxItems: 2
> > +
> > +  clock-names:
> > +    items:
> > +      - const: aclk
> > +      - const: hclk
> > +
> > +  power-domains:
> > +    maxItems: 1
> > +
> > +  iommus:
> > +    maxItems: 1
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - interrupts
> > +  - interrupt-names
> > +  - clocks
> > +  - clock-names
> 
> Add:
> 
> additionalProperties: false
> 

OK.

> > +
> > +examples:
> > +  - |
> > +        #include <dt-bindings/clock/rk3288-cru.h>
> > +        #include <dt-bindings/interrupt-controller/arm-gic.h>
> > +
> > +        vpu: video-codec@ff9a0000 {
> > +                compatible = "rockchip,rk3288-vpu";
> > +                reg = <0x0 0xff9a0000 0x0 0x800>;
> > +                interrupts = <GIC_SPI 9 IRQ_TYPE_LEVEL_HIGH>,
> > +                             <GIC_SPI 10 IRQ_TYPE_LEVEL_HIGH>;
> > +                interrupt-names = "vepu", "vdpu";
> > +                clocks = <&cru ACLK_VCODEC>, <&cru HCLK_VCODEC>;
> > +                clock-names = "aclk", "hclk";
> > +                power-domains = <&power RK3288_PD_VIDEO>;
> 
> Header for this define?
> 

Indeed, now the check passes. I'll get a v4 just for this patch.

Thanks,
Ezequiel


> > +                iommus = <&vpu_mmu>;
> > +        };
> > +
> > +        vpu: video-codec@ff350000 {
> > +                compatible = "rockchip,rk3328-vpu";
> > +                reg = <0x0 0xff350000 0x0 0x800>;
> > +                interrupts = <GIC_SPI 9 IRQ_TYPE_LEVEL_HIGH>;
> > +                interrupt-names = "vdpu";
> > +                clocks = <&cru ACLK_VPU>, <&cru HCLK_VPU>;
> > +                clock-names = "aclk", "hclk";
> > +                power-domains = <&power RK3328_PD_VPU>;
> > +                iommus = <&vpu_mmu>;
> > +        };
> > diff --git a/MAINTAINERS b/MAINTAINERS
> > index d66ac41ef587..2b8b3e7f3df3 100644
> > --- a/MAINTAINERS
> > +++ b/MAINTAINERS
> > @@ -14320,7 +14320,7 @@ L:      linux-rockchip@lists.infradead.org
> >  S:     Maintained
> >  F:     drivers/staging/media/hantro/
> >  F:     Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
> > -F:     Documentation/devicetree/bindings/media/rockchip-vpu.txt
> > +F:     Documentation/devicetree/bindings/media/rockchip-vpu.yaml
> > 
> >  ROCKER DRIVER
> >  M:     Jiri Pirko <jiri@resnulli.us>
> > --
> > 2.26.0.rc2
> > 



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16E0DD4006
	for <lists+linux-rockchip@lfdr.de>; Fri, 11 Oct 2019 14:56:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RD4joIKDM2d+Oyr/hFaruyKy8CpZNySxVhb31ZZMNpA=; b=q29AQXxbQ4j+YP
	Eo0wmB8Dwr8j3YHn6lsJVDjwiIpxzxfeTggRzAD6uI0rfNm9PxoLm5ET/Z99vfZCj7XAIad12b0L2
	JNJJYkNgPrVAHKd3BUZuCg5MV78mzgsGdOGTP/A7rImqEvj6+Tfl0GxRNHE4mhTfHdgrmdGzuLDmz
	jMrklBBBauucztC67AHEImtun8j9rgFyzJNPNnsaQ110CedE2GuAMeXobnsxai8in1ax6MGaFgH6q
	yFFhDASYQAeO4VddV2PNpzmrfuhL0/VpWdfGpd356akBJptbEE6t8V1wrHlD6wdewEi8BqSLdTB0+
	xOdof3ytWOKlUL2gDBjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIuTC-0000z2-1w; Fri, 11 Oct 2019 12:56:34 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIuT8-0000uW-KC
 for linux-rockchip@lists.infradead.org; Fri, 11 Oct 2019 12:56:32 +0000
Received: from dhcp-172-31-174-146.wireless.concordia.ca (unknown
 [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id B259C290FCB;
 Fri, 11 Oct 2019 13:56:28 +0100 (BST)
Date: Fri, 11 Oct 2019 14:56:25 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Rob Herring <robh+dt@kernel.org>
Subject: Re: [RESEND PATCH v2 2/4] media: dt-bindings: rockchip: Document
 RK3399 Video Decoder bindings
Message-ID: <20191011145625.694238b1@dhcp-172-31-174-146.wireless.concordia.ca>
In-Reply-To: <CAL_JsqL_6xPyb4kTDR3dbLc4Uptwox=1F4zaGjHVmahNyk25=w@mail.gmail.com>
References: <20191011093342.3471-1-boris.brezillon@collabora.com>
 <20191011093342.3471-3-boris.brezillon@collabora.com>
 <CAL_JsqL_6xPyb4kTDR3dbLc4Uptwox=1F4zaGjHVmahNyk25=w@mail.gmail.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_055630_930075_666BFD36 
X-CRM114-Status: GOOD (  20.54  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 kernel@collabora.com, Heiko Stuebner <heiko@sntech.de>,
 Jonas Karlman <jonas@kwiboo.se>, Tomasz Figa <tfiga@chromium.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Sakari Ailus <sakari.ailus@iki.fi>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Nicolas Dufresne <nicolas@ndufresne.ca>, Hans Verkuil <hans.verkuil@cisco.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Fri, 11 Oct 2019 07:50:16 -0500
Rob Herring <robh+dt@kernel.org> wrote:

> On Fri, Oct 11, 2019 at 4:33 AM Boris Brezillon
> <boris.brezillon@collabora.com> wrote:
> >
> > Document the Rockchip RK3399 Video Decoder bindings.  
> 
> You need some more headers for the example (or drop defines):
> 
> Error: Documentation/devicetree/bindings/media/rockchip,vdec.example.dts:23.28-29
> syntax error
> FATAL ERROR: Unable to parse input tree
> scripts/Makefile.lib:321: recipe for target
> 'Documentation/devicetree/bindings/media/rockchip,vdec.example.dt.yaml'
> failed
> make[1]: *** [Documentation/devicetree/bindings/media/rockchip,vdec.example.dt.yaml]
> Error 1
> Makefile:1282: recipe for target 'dt_binding_check' failed
> make: *** [dt_binding_check] Error 2

Will fix that. BTW, I tried running make dtbs_check and faced a few
errors on other yaml files (which is why I ended up sending the patch
without fully validating the schema). Maybe those have been fixed (I'm
based on the media tree which is based on 5.4-rc1).

Oh, and I also noticed that the generated example has
#address-cells = <1>, #size-cells = <1> in the parent node, while my
example expects <2>. Is there any way I can specify that somewhere, or
should I just tweak the example to use 1 cell instead?

> 
> >
> > Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
> > ---
> >  .../bindings/media/rockchip,vdec.yaml         | 71 +++++++++++++++++++
> >  1 file changed, 71 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/media/rockchip,vdec.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/media/rockchip,vdec.yaml b/Documentation/devicetree/bindings/media/rockchip,vdec.yaml
> > new file mode 100644
> > index 000000000000..7167c3d6a389
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/media/rockchip,vdec.yaml
> > @@ -0,0 +1,71 @@
> > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/media/rockchip,vdec.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Rockchip Video Decoder (VDec) Device Tree Bindings
> > +
> > +maintainers:
> > +  - Heiko Stuebner <heiko@sntech.de>
> > +
> > +description: |-
> > +  The Rockchip rk3399 has a stateless Video Decoder that can decodes H.264,
> > +  HEVC an VP9 streams.
> > +
> > +properties:
> > +  compatible:
> > +    const: rockchip,rk3399-vdec
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  interrupts:
> > +    maxItems: 1
> > +
> > +  clocks:
> > +    items:
> > +      - description: The Video Decoder AXI interface clock
> > +      - description: The Video Decoder AHB interface clock
> > +      - description: The Video Decoded CABAC clock
> > +      - description: The Video Decoder core clock
> > +
> > +  clock-names:
> > +    items:
> > +      - const: aclk
> > +      - const: iface
> > +      - const: cabac
> > +      - const: core
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
> > +  - clocks
> > +  - clock-names
> > +  - power-domains
> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  - |
> > +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> > +
> > +    vdec: video-codec@ff660000 {
> > +        compatible = "rockchip,rk3399-vdec";
> > +        reg = <0x0 0xff660000 0x0 0x400>;
> > +        interrupts = <GIC_SPI 116 IRQ_TYPE_LEVEL_HIGH 0>;
> > +        clocks = <&cru ACLK_VDU>, <&cru HCLK_VDU>,
> > +                 <&cru SCLK_VDU_CA>, <&cru SCLK_VDU_CORE>;
> > +        clock-names = "aclk", "iface", "cabac", "core";
> > +        power-domains = <&power RK3399_PD_VDU>;
> > +        iommus = <&vdec_mmu>;
> > +    };
> > +
> > +...
> > --
> > 2.21.0
> >  


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

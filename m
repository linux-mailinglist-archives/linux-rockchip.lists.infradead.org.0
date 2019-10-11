Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98DDBD3FE3
	for <lists+linux-rockchip@lfdr.de>; Fri, 11 Oct 2019 14:50:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0oGYKdoWKE6CUiEzxXWuHXJCUiJcHBhiJ6+PUDyJvTc=; b=TdlbEIZLwyPybU
	onxtOyzw0cRMNTDrzFmYRh0vgh8jV/CL1OWj6mLaIr4YZ1S7OxmQnxUzlZTRGNetO9iEKvz1tTVam
	TSDNG9j1Ur2ByPl6yRN8yr60kr9hr18LH0t4W+9pv0sjzp7MyiimuljFBzibtpFfcQuiDNh0Ci3pd
	L1b6Lb7R/GE+1GF3mmE1fnk4YERf7US7zQTbYgRL2m0SJtSzIMV0QGdWOWCTmGSocyGeL4QampUgK
	kUpdZZQsIjErp0xtCdpcpWtCLq7IX5uDIZvMcdi3RAPtv91k3M/GJLyxeB2Al/sp8HRvhlWdY/uwG
	lDfFb5NiEF7dCA70G74w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIuNM-0007nR-Le; Fri, 11 Oct 2019 12:50:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIuNJ-0007kp-A0
 for linux-rockchip@lists.infradead.org; Fri, 11 Oct 2019 12:50:30 +0000
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com
 [209.85.222.178])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D68E621D71
 for <linux-rockchip@lists.infradead.org>; Fri, 11 Oct 2019 12:50:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570798229;
 bh=EfojI4EoVWU2yfRZn2ScGSFtRiMdCIkAn9NDwS3CwlA=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=u+tLzoR+umDMKcOt1dhqpHIrJhBahkb22lGmGzvgaajzBJ4Ozv2rTbwd40uxHS4nc
 XCtcWdyoi3TsrpCGwN70ux5WEEqF6TqFGvpX81aKEif8Ajxfa1ZQV+qiVhFSzboCdb
 kzZ5ZbUCoj6dwEE3Y4DiDialOgV6s2o3DrHAMfns=
Received: by mail-qk1-f178.google.com with SMTP id h126so8709257qke.10
 for <linux-rockchip@lists.infradead.org>; Fri, 11 Oct 2019 05:50:28 -0700 (PDT)
X-Gm-Message-State: APjAAAUz+2CF2jkMvNWm0Y9JLmDOnm7lW0KyIRURWS2U0w1gwZRdlm+g
 H7iyFN0Kgdq4JjhEw7zRLLKQogxVf5FI/r7Fzg==
X-Google-Smtp-Source: APXvYqy68MfKQ6ZT8PUVdbTV+Iw25M6gw7fZf1no+MYCTvfil/qKqpseUKv2PMMTDcjsJsX+oNUu/JAr4hm8qtTm7OI=
X-Received: by 2002:a05:620a:136e:: with SMTP id
 d14mr15175113qkl.393.1570798227949; 
 Fri, 11 Oct 2019 05:50:27 -0700 (PDT)
MIME-Version: 1.0
References: <20191011093342.3471-1-boris.brezillon@collabora.com>
 <20191011093342.3471-3-boris.brezillon@collabora.com>
In-Reply-To: <20191011093342.3471-3-boris.brezillon@collabora.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Fri, 11 Oct 2019 07:50:16 -0500
X-Gmail-Original-Message-ID: <CAL_JsqL_6xPyb4kTDR3dbLc4Uptwox=1F4zaGjHVmahNyk25=w@mail.gmail.com>
Message-ID: <CAL_JsqL_6xPyb4kTDR3dbLc4Uptwox=1F4zaGjHVmahNyk25=w@mail.gmail.com>
Subject: Re: [RESEND PATCH v2 2/4] media: dt-bindings: rockchip: Document
 RK3399 Video Decoder bindings
To: Boris Brezillon <boris.brezillon@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_055029_394599_8AA13B15 
X-CRM114-Status: GOOD (  16.55  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On Fri, Oct 11, 2019 at 4:33 AM Boris Brezillon
<boris.brezillon@collabora.com> wrote:
>
> Document the Rockchip RK3399 Video Decoder bindings.

You need some more headers for the example (or drop defines):

Error: Documentation/devicetree/bindings/media/rockchip,vdec.example.dts:23.28-29
syntax error
FATAL ERROR: Unable to parse input tree
scripts/Makefile.lib:321: recipe for target
'Documentation/devicetree/bindings/media/rockchip,vdec.example.dt.yaml'
failed
make[1]: *** [Documentation/devicetree/bindings/media/rockchip,vdec.example.dt.yaml]
Error 1
Makefile:1282: recipe for target 'dt_binding_check' failed
make: *** [dt_binding_check] Error 2

>
> Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
> ---
>  .../bindings/media/rockchip,vdec.yaml         | 71 +++++++++++++++++++
>  1 file changed, 71 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/rockchip,vdec.yaml
>
> diff --git a/Documentation/devicetree/bindings/media/rockchip,vdec.yaml b/Documentation/devicetree/bindings/media/rockchip,vdec.yaml
> new file mode 100644
> index 000000000000..7167c3d6a389
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/rockchip,vdec.yaml
> @@ -0,0 +1,71 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/media/rockchip,vdec.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Rockchip Video Decoder (VDec) Device Tree Bindings
> +
> +maintainers:
> +  - Heiko Stuebner <heiko@sntech.de>
> +
> +description: |-
> +  The Rockchip rk3399 has a stateless Video Decoder that can decodes H.264,
> +  HEVC an VP9 streams.
> +
> +properties:
> +  compatible:
> +    const: rockchip,rk3399-vdec
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clocks:
> +    items:
> +      - description: The Video Decoder AXI interface clock
> +      - description: The Video Decoder AHB interface clock
> +      - description: The Video Decoded CABAC clock
> +      - description: The Video Decoder core clock
> +
> +  clock-names:
> +    items:
> +      - const: aclk
> +      - const: iface
> +      - const: cabac
> +      - const: core
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
> +  - clocks
> +  - clock-names
> +  - power-domains
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +
> +    vdec: video-codec@ff660000 {
> +        compatible = "rockchip,rk3399-vdec";
> +        reg = <0x0 0xff660000 0x0 0x400>;
> +        interrupts = <GIC_SPI 116 IRQ_TYPE_LEVEL_HIGH 0>;
> +        clocks = <&cru ACLK_VDU>, <&cru HCLK_VDU>,
> +                 <&cru SCLK_VDU_CA>, <&cru SCLK_VDU_CORE>;
> +        clock-names = "aclk", "iface", "cabac", "core";
> +        power-domains = <&power RK3399_PD_VDU>;
> +        iommus = <&vdec_mmu>;
> +    };
> +
> +...
> --
> 2.21.0
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

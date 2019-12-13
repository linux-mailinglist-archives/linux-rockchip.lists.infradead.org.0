Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA92F11E67A
	for <lists+linux-rockchip@lfdr.de>; Fri, 13 Dec 2019 16:23:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g/M1bM+d3tZMwbr5iQsgKhLhUihAqj12J8EjconN9yI=; b=bvzAO2F2DXEBH3
	5fy0pdw2aML/asIIAiUFleNbBuTl1zl14uRhWX0JPbE101lbXvKVjSJKAzE6n4zU52eUsvB54tB7Z
	KNEI7wP/L9jh+b5k38lDozhD6fR5qxUyYMN6dAOZGoVL4fCbCawrbm7CWyLi837eanJ9rnXjuzwDP
	o/Fk1SGfvUt4GzO75emkDdu0ZbmjUirvuRhiOjH6zW41wnrJJQ/dnaeSt20N6dipGjN7+0K/ECU4M
	5f/+uZ58X6618h+q8dZsv0ntHE03k1ralzzs/NpbZxsKgb5wL6Q4nqv89ZFrkvNbwy1Tw1DUG6CQn
	nOiprGHvLjyzzUIWF/Jg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifmnH-0006MJ-Ch; Fri, 13 Dec 2019 15:23:51 +0000
Received: from perceval.ideasonboard.com
 ([2001:4b98:dc2:55:216:3eff:fef7:d647])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifmnA-0006Iz-Po
 for linux-rockchip@lists.infradead.org; Fri, 13 Dec 2019 15:23:48 +0000
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 02C04E41;
 Fri, 13 Dec 2019 16:23:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1576250622;
 bh=9YNy9xTU5XimeURCP7Sp1qumv4WSHztJ66YuDPP2q/M=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=lP57kF262X0/Yg4V8og2glamOK5n6U+VScNg78VEBGo7DcBAmygHqGH8IFR720RiQ
 GuVYu1QoCorwQP3984jpVDTfsdzttoem/n3xSoLfNXXnvvgdWlwmQjeWA7Xv7q2Fpw
 PPZ6vsIVlhxpqgDBg8v/fViFeBorsDzRjx7UyCmI=
Date: Fri, 13 Dec 2019 17:23:32 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Boris Brezillon <boris.brezillon@collabora.com>
Subject: Re: [PATCH v3 5/7] media: dt-bindings: rockchip: Document RK3399
 Video Decoder bindings
Message-ID: <20191213152332.GF4860@pendragon.ideasonboard.com>
References: <20191213125414.90725-1-boris.brezillon@collabora.com>
 <20191213125414.90725-6-boris.brezillon@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191213125414.90725-6-boris.brezillon@collabora.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_072345_144700_AA9B7476 
X-CRM114-Status: GOOD (  15.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 kernel@collabora.com, Heiko Stuebner <heiko@sntech.de>,
 Jonas Karlman <jonas@kwiboo.se>, Tomasz Figa <tfiga@chromium.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Sakari Ailus <sakari.ailus@iki.fi>, Nicolas Dufresne <nicolas@ndufresne.ca>,
 Hans Verkuil <hans.verkuil@cisco.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Boris,

Thank you for the patch.

On Fri, Dec 13, 2019 at 01:54:12PM +0100, Boris Brezillon wrote:
> Document the Rockchip RK3399 Video Decoder bindings.
> 
> Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
> ---
> Changes in v3:
> * Fix dtbs_check failures
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

How about calling it "axi" ? None of the other clock names have "clk".

> +      - const: iface

And "ahb" here, as the AXI interface clock is also an interface clock ?

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

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01698131DB6
	for <lists+linux-rockchip@lfdr.de>; Tue,  7 Jan 2020 03:38:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gAfieTLPrBcbfN2amYC49zEFyrD6cgGTjyXuuT2mGvQ=; b=kTTuifcdVIaXIl
	HQ39vmA/QXwL3UKoX6CHeCXbvCm18YkCN81EyKYTvcBKCKKkEpE0Hr1gnjG96nLLHci1KExgC77vD
	3Yt0yOU+Vpm50ypFLZUAe1ERQfKry4Y8hj8UVBhT4dkBj8QTRqlRXFevq93uGZ1d1kzMNSZNDrE6G
	ViLxMh6uSAvMWWajvtxlzmee9viRn4liLdZU1muQvd0oB5lnkVrH86OeqC8JlXZ4kptDjunmfRWo0
	5wDjdUNZ56vPEMJsvBxncgGTjAUn5csuT2ArdBGEpNanCEweZeQAOG0sf3Rv5jEkY2EAQjN5ym6Ve
	X104bAupD5hwoFzxp2Ew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioekl-0004Q1-DU; Tue, 07 Jan 2020 02:37:55 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioekU-0004EA-Gj; Tue, 07 Jan 2020 02:37:40 +0000
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 7BA5252F;
 Tue,  7 Jan 2020 03:37:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1578364651;
 bh=MBDwBfB1yvrUNnyLXlcyy033c7X1+3QQ5e/fUKD3MKE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=dgkNIwEXqZQBu93oKiUijThMtexXm7eh/FkOhKVRu7MS7FF9Z+Sh7w7iMfaXM4MIe
 AArZP3HEFWe7Ccmi40N5Rkrsbv/FH0LioCZ6g+mJAlUoGcJpuxPYlIpiRR+YFwUtkA
 gBJGUambx7da7F87o1LtzkVfs/TBk+XufHVdpXz4=
Date: Tue, 7 Jan 2020 04:37:21 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Ezequiel Garcia <ezequiel@collabora.com>
Subject: Re: [PATCH v12 09/11] media: staging: dt-bindings: add Rockchip MIPI
 RX D-PHY yaml bindings
Message-ID: <20200107023721.GG22189@pendragon.ideasonboard.com>
References: <20191227200116.2612137-1-helen.koike@collabora.com>
 <20191227200116.2612137-10-helen.koike@collabora.com>
 <20200107001055.GE22189@pendragon.ideasonboard.com>
 <cfd5156f09358a428d0c40cfcd17d688e0225f2b.camel@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cfd5156f09358a428d0c40cfcd17d688e0225f2b.camel@collabora.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_183738_866900_B75BFE5C 
X-CRM114-Status: GOOD (  24.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, eddie.cai.linux@gmail.com,
 kernel@collabora.com, heiko@sntech.de, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, tfiga@chromium.org,
 linux-rockchip@lists.infradead.org, Helen Koike <helen.koike@collabora.com>,
 robh+dt@kernel.org, hans.verkuil@cisco.com,
 linux-arm-kernel@lists.infradead.org, sakari.ailus@linux.intel.com,
 joacim.zetterling@gmail.com, mchehab@kernel.org, andrey.konovalov@linaro.org,
 jacob-chen@iotwrt.com, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Mon, Jan 06, 2020 at 11:06:12PM -0300, Ezequiel Garcia wrote:
> On Tue, 2020-01-07 at 02:10 +0200, Laurent Pinchart wrote:
> > Hi Helen,
> > 
> > Thank you for the patch.
> > 
> > On Fri, Dec 27, 2019 at 05:01:14PM -0300, Helen Koike wrote:
> > > Add yaml DT bindings for Rockchip MIPI D-PHY RX
> > > 
> > > This was tested and verified with:
> > > mv drivers/staging/media/phy-rockchip-dphy/Documentation/devicetree/bindings/phy/rockchip-mipi-dphy.yaml  Documentation/devicetree/bindings/phy/
> > > make dt_binding_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/phy/rockchip-mipi-dphy.yaml
> > > make dtbs_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/phy/rockchip-mipi-dphy.yaml
> > > 
> > > Signed-off-by: Helen Koike <helen.koike@collabora.com>
> > > 
> > > ---
> > > 
> > > Changes in v12:
> > > - The commit replaces the following commit in previous series named
> > > media: staging: dt-bindings: Document the Rockchip MIPI RX D-PHY bindings
> > > This new patch adds yaml binding and was verified with
> > > make dtbs_check and make dt_binding_check
> > > 
> > > Changes in v11: None
> > > Changes in v10:
> > > - unsquash
> > > 
> > > Changes in v9:
> > > - fix title division style
> > > - squash
> > > - move to staging
> > > 
> > > Changes in v8: None
> > > Changes in v7:
> > > - updated doc with new design and tested example
> > > 
> > >  .../bindings/phy/rockchip-mipi-dphy.yaml      | 75 +++++++++++++++++++
> > >  1 file changed, 75 insertions(+)
> > >  create mode 100644 drivers/staging/media/phy-rockchip-dphy/Documentation/devicetree/bindings/phy/rockchip-mipi-dphy.yaml
> > > 
> > > diff --git a/drivers/staging/media/phy-rockchip-dphy/Documentation/devicetree/bindings/phy/rockchip-mipi-dphy.yaml b/drivers/staging/media/phy-
> > > rockchip-dphy/Documentation/devicetree/bindings/phy/rockchip-mipi-dphy.yaml
> > > new file mode 100644
> > > index 000000000000..af97f1b3e005
> > > --- /dev/null
> > > +++ b/drivers/staging/media/phy-rockchip-dphy/Documentation/devicetree/bindings/phy/rockchip-mipi-dphy.yaml
> > > @@ -0,0 +1,75 @@
> > > +# SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> > > +%YAML 1.2
> > > +---
> > > +$id: http://devicetree.org/schemas/phy/rockchip-mipi-dphy.yaml#
> > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > +
> > > +title: Rockchip SoC MIPI RX0 D-PHY Device Tree Bindings
> > 
> > Should this be s/RX0/RX/ ? Or do you expect different bindings for RX1 ?
> 
> The driver currently only supports RX0, but I think you are right,
> it should say RX here. This binding could be extended for RX1.
> 
> > Looking at the PHY driver, it seems to handle all PHYs with a single
> > struct device. Should we thus use #phy-cells = <1> to select the PHY ?
> 
> I am not following this. The driver handles just one PHY. Each PHY
> should have its own node.

Looking at the registers, it seems that the different PHYs are
intertwined and we would could have trouble handling the different PHYs
with different DT nodes and thus struct device instances.

> > > +
> > > +maintainers:
> > > +  - Helen Koike <helen.koike@collabora.com>
> > > +  - Ezequiel Garcia <ezequiel@collabora.com>
> > > +
> > > +description: |
> > > +  The Rockchip SoC has a MIPI D-PHY bus with an RX0 entry which connects to
> > > +  the ISP1 (Image Signal Processing unit v1.0) for CSI cameras.
> > > +
> > > +properties:
> > > +  compatible:
> > > +    const: rockchip,rk3399-mipi-dphy
> > > +
> > > +  reg:
> > > +    maxItems: 1
> > > +
> > > +  clocks:
> > > +    items:
> > > +      - description: Mipi d-phy ref clock
> > > +      - description: Mipi d-phy rx0 cfg clock
> > 
> > s/Mipi d-phy/MIPI D-PHY/
> 
> Yep.
> 
> > > +      - description: Video in/out general register file clock
> > > +
> > > +  clock-names:
> > > +    items:
> > > +      - const: dphy-ref
> > > +      - const: dphy-cfg
> > > +      - const: grf
> > > +
> > > +  '#phy-cells':
> > > +    const: 0
> > > +
> > > +  power-domains:
> > > +    description: Video in/out power domain.
> > > +    maxItems: 1
> > > +
> > > +required:
> > > +  - compatible
> > > +  - clocks
> > > +  - clock-names
> > > +  - '#phy-cells'
> > > +  - power-domains
> > > +
> > > +additionalProperties: false
> > > +
> > > +examples:
> > > +  - |
> > > +
> > > +    /*
> > > +     * MIPI RX D-PHY use registers in "general register files", it
> > > +     * should be a child of the GRF.
> > > +     *
> > > +     * grf: syscon@ff770000 {
> > > +     *  compatible = "rockchip,rk3399-grf", "syscon", "simple-mfd";
> > > +     *  ...
> > 
> > missing
> > 
> > 	* };
> 
> OK.
> 
> > > +     */
> > > +
> > > +    #include <dt-bindings/clock/rk3399-cru.h>
> > > +    #include <dt-bindings/power/rk3399-power.h>
> > > +
> > > +    dphy: mipi-dphy {
> > > +        compatible = "rockchip,rk3399-mipi-dphy";
> > > +        clocks = <&cru SCLK_MIPIDPHY_REF>,
> > > +                 <&cru SCLK_DPHY_RX0_CFG>,
> > > +                 <&cru PCLK_VIO_GRF>;
> > > +        clock-names = "dphy-ref", "dphy-cfg", "grf";
> > > +        power-domains = <&power RK3399_PD_VIO>;
> > > +        #phy-cells = <0>;
> > > +    };

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

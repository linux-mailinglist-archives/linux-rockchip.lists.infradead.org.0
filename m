Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DAC411E685
	for <lists+linux-rockchip@lfdr.de>; Fri, 13 Dec 2019 16:26:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jKnkzLLl0abZNxnt5xcSk48umvdtKhcCZjn8RD4kZBA=; b=eT7ccmcMSgszn3
	KQdfslVaHynUqtTZ/dfbBXD99vNrA6er2FjVwraLxLHO/dBx+zXo+tQS4C5E3YXfltWeloQb4Z6Zm
	atELURmAfQQfmexLmQx40He2bBGrLzUoH/+R7xX7f63Ohs4wchMYvPP2Jji7JCjYYcE9Wfh7JxSQM
	99maw8YwMrFh2pSZjdcn71mrxLz5KKym9j98fvOcO25Zc+93iHu8gsIO1fSrGcPPcdJ9skEOig1Qr
	65M5Tl6R7KNG0IoaFoOfDDJBBAKlKlK9D02ec829cI6Cw3OlZXmBoFkrKpENe7F8etiWOa9ysc+kj
	B4UYRXdbzdwfpqa0B64A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifmpL-0007y0-56; Fri, 13 Dec 2019 15:25:59 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifmpI-0007x8-4j
 for linux-rockchip@lists.infradead.org; Fri, 13 Dec 2019 15:25:57 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 4024B28A0D1;
 Fri, 13 Dec 2019 15:25:53 +0000 (GMT)
Date: Fri, 13 Dec 2019 16:25:50 +0100
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: Re: [PATCH v3 5/7] media: dt-bindings: rockchip: Document RK3399
 Video Decoder bindings
Message-ID: <20191213162550.59730f89@collabora.com>
In-Reply-To: <20191213152332.GF4860@pendragon.ideasonboard.com>
References: <20191213125414.90725-1-boris.brezillon@collabora.com>
 <20191213125414.90725-6-boris.brezillon@collabora.com>
 <20191213152332.GF4860@pendragon.ideasonboard.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_072556_319798_A6807B25 
X-CRM114-Status: GOOD (  18.36  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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

On Fri, 13 Dec 2019 17:23:32 +0200
Laurent Pinchart <laurent.pinchart@ideasonboard.com> wrote:

> Hi Boris,
> 
> Thank you for the patch.
> 
> On Fri, Dec 13, 2019 at 01:54:12PM +0100, Boris Brezillon wrote:
> > Document the Rockchip RK3399 Video Decoder bindings.
> > 
> > Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
> > ---
> > Changes in v3:
> > * Fix dtbs_check failures
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
> 
> How about calling it "axi" ? None of the other clock names have "clk".
> 
> > +      - const: iface  
> 
> And "ahb" here, as the AXI interface clock is also an interface clock ?

Sure, I can do that.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

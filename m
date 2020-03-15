Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F95B185D64
	for <lists+linux-rockchip@lfdr.de>; Sun, 15 Mar 2020 15:10:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DvF9qUolMrh11wNdQtCBzhFY7Nnfx2tHkQrjLw7an10=; b=QQX+i2tzHU9dCE
	Itk7PsXUNZJWBXK59V/IyJQSE/9SxMHGuKhOxL3fBuUDQc892PLcSYQLy2O1X9cY/ylU1ZirGBqs8
	rr/Px3iCrViNr+6WR9qsaO2aug1gruV/E4U+00ij+s2G/lpgkL7gqx1W1WpPwUZRoOLX5DHPy4D7F
	Hj6M9oG+iIAue1c6bbC+hzwJcqbHwwnI95VmKGITPNqlpiECdlT3eOaERj6atP4eJY2JTRTrYZDmB
	eCZwaxRFsQQD0THLm1u0GYi+EBPoMJ3zQANdgTBtMaBxZkBTbpUGOj0WtBaBmwz2nERLtWRJHtYEk
	xFQrsRui5ocwXkVFjyTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDTy8-0004vY-LK; Sun, 15 Mar 2020 14:10:20 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDTxv-00040d-1C; Sun, 15 Mar 2020 14:10:09 +0000
Received: from ip5f5a5d2f.dynamic.kabel-deutschland.de ([95.90.93.47]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1jDTxm-0005ZQ-HP; Sun, 15 Mar 2020 15:09:58 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Jonathan Cameron <jic23@kernel.org>
Subject: Re: [PATCH v1 1/3] dt-bindings: iio: adc: convert rockchip saradc
 bindings to yaml
Date: Sun, 15 Mar 2020 15:09:56 +0100
Message-ID: <1892398.6xOoJH07Ba@diego>
In-Reply-To: <20200315112223.07dd863b@archlinux>
References: <20200313132926.10543-1-jbx6244@gmail.com>
 <20200315112223.07dd863b@archlinux>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200315_071007_247546_F165D010 
X-CRM114-Status: GOOD (  21.95  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, lars@metafoo.de, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, pmeerw@pmeerw.net, knaack.h@gmx.de,
 Johan Jonker <jbx6244@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Jonathan,

Am Sonntag, 15. M=E4rz 2020, 12:22:23 CET schrieb Jonathan Cameron:
> On Fri, 13 Mar 2020 14:29:24 +0100
> Johan Jonker <jbx6244@gmail.com> wrote:
> =

> > Current dts files with 'saradc' nodes are manually verified.
> > In order to automate this process rockchip-saradc.txt
> > has to be converted to yaml.
> > =

> > Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> =

> Hi Johan,
> =

> A question inline which may just be my lack of yaml knowledge
> showing itself!
> =

> Jonathan
> =

> > ---
> >  .../bindings/iio/adc/rockchip-saradc.txt           | 37 ----------
> >  .../bindings/iio/adc/rockchip-saradc.yaml          | 79 ++++++++++++++=
++++++++
> >  2 files changed, 79 insertions(+), 37 deletions(-)
> >  delete mode 100644 Documentation/devicetree/bindings/iio/adc/rockchip-=
saradc.txt
> >  create mode 100644 Documentation/devicetree/bindings/iio/adc/rockchip-=
saradc.yaml
> > =

> > diff --git a/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.=
txt b/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.txt
> > deleted file mode 100644
> > index c2c50b598..000000000
> > --- a/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.txt
> > +++ /dev/null
> > @@ -1,37 +0,0 @@
> > -Rockchip Successive Approximation Register (SAR) A/D Converter bindings
> > -
> > -Required properties:
> > -- compatible: should be "rockchip,<name>-saradc" or "rockchip,rk3066-t=
sadc"
> > -   - "rockchip,saradc": for rk3188, rk3288
> > -   - "rockchip,rk3066-tsadc": for rk3036
> > -   - "rockchip,rk3328-saradc", "rockchip,rk3399-saradc": for rk3328
> > -   - "rockchip,rk3399-saradc": for rk3399
> > -   - "rockchip,rv1108-saradc", "rockchip,rk3399-saradc": for rv1108
> > -
> > -- reg: physical base address of the controller and length of memory ma=
pped
> > -       region.
> > -- interrupts: The interrupt number to the cpu. The interrupt specifier=
 format
> > -              depends on the interrupt controller.
> > -- clocks: Must contain an entry for each entry in clock-names.
> > -- clock-names: Shall be "saradc" for the converter-clock, and "apb_pcl=
k" for
> > -               the peripheral clock.
> > -- vref-supply: The regulator supply ADC reference voltage.
> > -- #io-channel-cells: Should be 1, see ../iio-bindings.txt
> > -
> > -Optional properties:
> > -- resets: Must contain an entry for each entry in reset-names if need =
support
> > -	  this option. See ../reset/reset.txt for details.
> > -- reset-names: Must include the name "saradc-apb".
> > -
> > -Example:
> > -	saradc: saradc@2006c000 {
> > -		compatible =3D "rockchip,saradc";
> > -		reg =3D <0x2006c000 0x100>;
> > -		interrupts =3D <GIC_SPI 26 IRQ_TYPE_LEVEL_HIGH>;
> > -		clocks =3D <&cru SCLK_SARADC>, <&cru PCLK_SARADC>;
> > -		clock-names =3D "saradc", "apb_pclk";
> > -		resets =3D <&cru SRST_SARADC>;
> > -		reset-names =3D "saradc-apb";
> > -		#io-channel-cells =3D <1>;
> > -		vref-supply =3D <&vcc18>;
> > -	};
> > diff --git a/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.=
yaml b/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml
> > new file mode 100644
> > index 000000000..2908788b3
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml
> > @@ -0,0 +1,79 @@
> > +# SPDX-License-Identifier: GPL-2.0
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/iio/adc/rockchip-saradc.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Rockchip Successive Approximation Register (SAR) A/D Converter
> > +
> > +maintainers:
> > +  - Heiko Stuebner <heiko@sntech.de>
> > +
> > +properties:
> > +  compatible:
> > +    oneOf:
> > +      - const: rockchip,saradc
> > +      - const: rockchip,rk3066-tsadc
> > +      - const: rockchip,rk3399-saradc
> > +      - items:
> > +          - enum:
> > +            - rockchip,rk3328-saradc
> > +            - rockchip,rv1108-saradc
> > +          - const: rockchip,rk3399-saradc
> =

> My yaml knowledge isn't great.  Why do we have this nested
> structure rather than a straight forward list?

That should be the
- one of rk3328-saradc / rv1108-saradc
- plus always rk3399-saradc

i.e. both rk3328 and rv1108 are compatible with the rk3399-saradc variant
(at least if no flaws get found at some point) so have the double compatible

compatible =3D "rockchip,rk3328-saradc", "rockchip,rk3399-saradc"
compatible =3D "rockchip,rv1108-saradc", "rockchip,rk3399-saradc"


Heiko


> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  interrupts:
> > +    maxItems: 1
> > +
> > +  clocks:
> > +    items:
> > +      - description: converter clock
> > +      - description: peripheral clock
> > +
> > +  clock-names:
> > +    items:
> > +      - const: saradc
> > +      - const: apb_pclk
> > +
> > +  resets:
> > +    maxItems: 1
> > +
> > +  reset-names:
> > +    const: saradc-apb
> > +
> > +  vref-supply:
> > +    description:
> > +      The regulator supply for the ADC reference voltage.
> > +
> > +  "#io-channel-cells":
> > +    const: 1
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - interrupts
> > +  - clocks
> > +  - clock-names
> > +  - vref-supply
> > +  - "#io-channel-cells"
> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  - |
> > +    #include <dt-bindings/clock/rk3288-cru.h>
> > +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> > +    #include <dt-bindings/interrupt-controller/irq.h>
> > +    saradc: saradc@2006c000 {
> > +      compatible =3D "rockchip,saradc";
> > +      reg =3D <0x2006c000 0x100>;
> > +      interrupts =3D <GIC_SPI 26 IRQ_TYPE_LEVEL_HIGH>;
> > +      clocks =3D <&cru SCLK_SARADC>, <&cru PCLK_SARADC>;
> > +      clock-names =3D "saradc", "apb_pclk";
> > +      resets =3D <&cru SRST_SARADC>;
> > +      reset-names =3D "saradc-apb";
> > +      vref-supply =3D <&vcc18>;
> > +      #io-channel-cells =3D <1>;
> > +    };
> =

> =






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

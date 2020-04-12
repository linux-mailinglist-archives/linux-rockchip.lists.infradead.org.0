Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C8A21A5CE1
	for <lists+linux-rockchip@lfdr.de>; Sun, 12 Apr 2020 07:13:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1uS5bpsfGNNADxo98VP9fN3igGPvkQDKW3Wrh3oOJuk=; b=a8VJA06mO3gSzU
	uTYcB/YATaYb4/+Mv0QAmEQ+5ZlIez5mVr4g1JQUnO7dA6z72WAoqXq2SqxILF3+gsXQlN/6fuXKe
	tVqX5mdufH9S/fJwuzhRsos6XVJ0mVlIwgyc10Kwn8juLkXX2J4473OYwamYwTwrPeG0G+726aRV8
	APbbiBhC+7D13ZNkY2v9OrbiqMzY2w1RKqf/1AClGsF02LWPu8uH06V4zs7dd5Rwy81KaRzYTgCrt
	XVzWFCkRdTb2ZbtDYDuJqX9lXK3AUrRHGYZ/kENCx+SvtLQUpBHo0Q9vnHTXWeEQJNasZeBKUrO2u
	znKXLe2V2SrMi06WbEgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNUwH-00032d-1L; Sun, 12 Apr 2020 05:13:49 +0000
Received: from mail-vs1-xe42.google.com ([2607:f8b0:4864:20::e42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNUwD-00031O-P2
 for linux-rockchip@lists.infradead.org; Sun, 12 Apr 2020 05:13:47 +0000
Received: by mail-vs1-xe42.google.com with SMTP id u11so3632746vsu.10
 for <linux-rockchip@lists.infradead.org>; Sat, 11 Apr 2020 22:13:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=VHkuUdeEPi0+7niwJqWPOkmkckN1u3oo2P+RqXA92Z4=;
 b=S0ht9WgHyybeoHczyRndT5jh05Ap75SOojZOmFx3ZB6Y7aPD9k8dd9d2RE4HkRm2xp
 6bF01bSfQzoj760rJ7oovF7F6sUJbWcP5ki8OHSINM7ILM2es9ZanVeEDTB3PhHPTEAk
 8c0c/p+TO4vx97LaxtVs8Or+AAsD4Gbao7dDtHuUsSzSd8GV77N06R1oLhcFjW9mgt67
 mTDGK3qvDHqdnFBM2lqT6JyaN6yv37AxHcKznIRpgSzjg1Wol6z8vgJ9GSHs6B95dh7C
 ckZ1zFiRz0vMQ+/c4QtD03Rjms67vqjlEFHLa8BUYT6dh3QV8p50CBBw6zkUV3jQ9D37
 EgTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=VHkuUdeEPi0+7niwJqWPOkmkckN1u3oo2P+RqXA92Z4=;
 b=QJO5PKmvVM7q4a4biUpOrpKUy81888EMIbRk0RQfSxD7YdxoBtDkpv0U2LvvGY3q0x
 5VZG2dnJdq/+yMRMHj8ztqI3RRxV4kCrVJHrW7VmVUqhNsAuvB8NWKk8/QnPRxJXMCmt
 GBdKp4eUXcE9MON5Hg6gycu6TR04Xwr+4QWkA55JQFql9uDy34nPN5pVzYIvzb/yV7Lp
 1uW6QzIlSItDTakQkOgos5A/K6bj49Oq4CnOOBAatv5tJSoyu7bmMMOlNUgwiVsTF6TE
 QG/MB+emqmTBYQzwOEM0gwzBCd4a+AMqsX+UDV+4RKRxec+dkTIYUoXZfyQh8U2QUu7s
 Gufg==
X-Gm-Message-State: AGi0PuZNVHc5V94E1jiIAfa4eIrOcXFC4OatGr9PbS0cE65eqX0jqjGl
 9AzKMhFfMM01bnFEkr8gTlIcYLqwWO7CevS/DD8=
X-Google-Smtp-Source: APiQypJG91PocYX9obWM0xAdPvZfUC/7YkwZVrJTKzgFswLe0ctNgp5R78tGbaEUcoSRSdCBWRRkWOzEfLjzu0OJlSM=
X-Received: by 2002:a05:6102:31b7:: with SMTP id
 d23mr8254971vsh.25.1586668418542; 
 Sat, 11 Apr 2020 22:13:38 -0700 (PDT)
MIME-Version: 1.0
References: <karthik.poduval@gmail.com>
 <20200406073017.19462-1-karthik.poduval@gmail.com>
 <20200406073017.19462-4-karthik.poduval@gmail.com>
 <2fc95890-f938-30a5-a163-bf3fa2e223df@gmail.com>
In-Reply-To: <2fc95890-f938-30a5-a163-bf3fa2e223df@gmail.com>
From: karthik poduval <karthik.poduval@gmail.com>
Date: Sat, 11 Apr 2020 22:13:27 -0700
Message-ID: <CAFP0Ok-NxDDF8TMP4pN=xn6w3H=TYqN3DMfGW-vuiC5qB-Oj5g@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] ARM: dts: rockchip: add rk3288 ISP and DPHY
To: Johan Jonker <jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200411_221345_842840_2DA8367F 
X-CRM114-Status: GOOD (  26.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e42 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [karthik.poduval[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-rockchip@lists.infradead.org, Helen Koike <helen.koike@collabora.com>,
 Ezequiel Garcia <ezequiel@collabora.com>, heiko@sntech.de,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Thanks Johan for your valuable comments.

On Wed, Apr 8, 2020 at 6:19 PM Johan Jonker <jbx6244@gmail.com> wrote:
>
> Hi Karthik and others,
>
> Include all mail lists found with:
> ./scripts/get_maintainer.pl --nogit-fallback --nogit
>
> Helen is moving isp1 bindings out of staging.
> Clocks and other things don't fit with her patch serie.
> Maybe fix this while still in staging?
>
> arch/arm/boot/dts/rk3288-tinker.dt.yaml: isp@ff910000:
> 'phys' is a required property
> arch/arm/boot/dts/rk3288-tinker.dt.yaml: isp@ff910000:
> 'phy-names' is a required property
> arch/arm/boot/dts/rk3288-tinker.dt.yaml: isp@ff910000:
> 'ports' is a required property
>
> arch/arm/boot/dts/rk3288-tinker.dt.yaml: isp@ff910000:
> 'assigned-clock-rates', 'assigned-clocks'
> do not match any of the regexes: 'pinctrl-[0-9]+'
> arch/arm/boot/dts/rk3288-tinker.dt.yaml: isp@ff910000:
> clock-names:2: 'aclk_isp_wrap' was expected
> arch/arm/boot/dts/rk3288-tinker.dt.yaml: isp@ff910000:
> clock-names:3: 'hclk_isp' was expected
> arch/arm/boot/dts/rk3288-tinker.dt.yaml: isp@ff910000:
> clock-names:4: 'hclk_isp_wrap' was expected
>
> arch/arm/boot/dts/rk3288-tinker.dt.yaml: mipi-phy-rx0: 'power-domains'
> is a required property
>
> arch/arm/boot/dts/rk3288-tinker.dt.yaml: mipi-phy-rx0: clock-names:1:
> 'dphy-cfg' was expected
> arch/arm/boot/dts/rk3288-tinker.dt.yaml: mipi-phy-rx0: clock-names:
> ['dphy-ref', 'pclk'] is too short
> arch/arm/boot/dts/rk3288-tinker.dt.yaml: mipi-phy-rx0: clocks: [[7,
> 126], [7, 358]] is too short
>
>
> Inside yaml:
> Use enum and sort.
> >>  properties:
> >>    compatible:
>
> >>      const: rockchip,rk3399-cif-isp
> >> +    const: rockchip,rk3288-rkisp1
>
>     enum:
>       - rockchip,rk3288-rkisp1
>       - rockchip,rk3399-cif-isp
>
> >>  properties:
> >>    compatible:
> >>      const: rockchip,rk3399-mipi-dphy-rx0
> >> +    const: rockchip,rk3288-mipi-dphy-rx0
>
>     enum:
>       - rockchip,rk3288-mipi-dphy-rx0
>       - rockchip,rk3399-mipi-dphy-rx0
>
> >
> > Please, keep consistency, or rk3288-cif-isp, or we change rk3399-cif-isp to be rk3399-rkisp1.
>
>
> On 4/6/20 9:30 AM, Karthik Poduval wrote:
> > ISP and DPHY device entries missing so add them.
> >
>
> > tested on tinkerbaord with ov5647 using command
> > cam -c 1 -C -F cap
>
> Disclose dts node for ov5647 in cover letter, so people can reproduce
> this experiment.
>
> Caution!
> Without dts node this command doesn't work correct.
>
> make ARCH=arm dtbs_check
> DT_SCHEMA_FILES=Documentation/devicetree/bindings/media/rockchip-isp1.yaml
>
> make ARCH=arm dtbs_check
> DT_SCHEMA_FILES=Documentation/devicetree/bindings/phy/rockchip-mipi-dphy-rx0.yaml
>
> Needed to detect missing: phys, phy-names and ports ,etc.
>
> &isp {
>         status = "okay";
> };
>
Makes sense, that's why my kernel compilation passed and I didn't
these errors. Thanks for the command, I will verify dts for
correctness in next patch series.

> Needed to detect missing: power-domains, etc.
>
> &mipi_phy_rx0 {
>         status = "okay";
> };
>
> >
> > Reported-by: Karthik Poduval <karthik.poduval@gmail.com>
> > Signed-off-by: Karthik Poduval <karthik.poduval@gmail.com>
> > ---
> >  arch/arm/boot/dts/rk3288.dtsi | 25 +++++++++++++++++++++++++
> >  1 file changed, 25 insertions(+)
> >
> > diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.dtsi
> > index 9beb662166aa..adea8189abd9 100644
> > --- a/arch/arm/boot/dts/rk3288.dtsi
> > +++ b/arch/arm/boot/dts/rk3288.dtsi
> > @@ -247,6 +247,23 @@
> >               ports = <&vopl_out>, <&vopb_out>;
> >       };
> >
>
> > +     isp: isp@ff910000 {
>
> For nodes:
> Sort things without reg alphabetical first,
> then sort the rest by reg address.
>
Sure
> > +             compatible = "rockchip,rk3288-rkisp1";
> > +             reg = <0x0 0xff910000 0x0 0x4000>;
> > +             interrupts = <GIC_SPI 14 IRQ_TYPE_LEVEL_HIGH>;
> > +             clocks = <&cru SCLK_ISP>, <&cru ACLK_ISP>,
> > +                      <&cru HCLK_ISP>, <&cru PCLK_ISP_IN>,
> > +                      <&cru SCLK_ISP_JPE>;
> > +             clock-names = "clk_isp", "aclk_isp",
> > +                           "hclk_isp", "pclk_isp_in",
> > +                           "sclk_isp_jpe";
> > +             assigned-clocks = <&cru SCLK_ISP>, <&cru SCLK_ISP_JPE>;
> > +             assigned-clock-rates = <400000000>, <400000000>;
>
> > +             power-domains = <&power RK3288_PD_VIO>;
> > +             iommus = <&isp_mmu>;
>
> sort
>
> Something missing?
> Where are the ports and port nodes?

I was assuming that this would be a part of the board specific dtsi or
dts entry where the isp node would be overriden and the i2c camera
port
and the isp port remote-endpoints would be connected. I had this as a
part of my first patch series. However I was advised by Helen to not
include the ov5647
dtsi as it isn't hardwired to the SoC and resides on an camera adapter board.

Should this be defined without the remote-endpoint phandle since we
don't know exactly which sensor gets connected in this dtsi file ?

>
> > +             status = "disabled";
> > +     };
> > +
> >       sdmmc: mmc@ff0c0000 {
> >               compatible = "rockchip,rk3288-dw-mshc";
> >               max-frequency = <150000000>;
> > @@ -891,6 +908,14 @@
> >                       status = "disabled";
> >               };
> >
>
> > +             mipi_phy_rx0: mipi-phy-rx0 {
>
> Use separate patch.
>
> For nodes:
> Sort things without reg alphabetical first,
> then sort the rest by reg address.
>
Sure

> > +                     compatible = "rockchip,rk3288-mipi-dphy-rx0";
> > +                     clocks = <&cru SCLK_MIPIDSI_24M>, <&cru PCLK_MIPI_CSI>;
> > +                     clock-names = "dphy-ref", "pclk";
> Something missing?
> Does this phy have a power domain?
The tinkerboard debian kernel (where I referred to for this patch)
didn't have it defined for the DPHY. I would guess that it would be
the same as the ISP i.e. RK3288_PD_VIO,
does anyone know the answer to this or do I have to reach out to
Rockchip engineering ?
>
> > +                     #phy-cells = <0>;
> > +                     status = "disabled";
> > +             };
> > +
> >               io_domains: io-domains {
> >                       compatible = "rockchip,rk3288-io-voltage-domain";
> >                       status = "disabled";
> >
>


-- 
Regards,
Karthik Poduval

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

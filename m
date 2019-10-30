Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CEC43EA2D5
	for <lists+linux-rockchip@lfdr.de>; Wed, 30 Oct 2019 18:54:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gf3yiI5Bm+/D6zoQoD44OO/rY1mLW1wMH71maNCMvn4=; b=ioO/1l/kQz2awt
	f8wPBKeIBcnE+YhiSIZp9FM/YAvSA1c/Saw6PH7BTUy9s4sxnPoQeNy6oDGA3kOUc7BRASp64omh1
	/wRRy3gwH/pLCAHLQx9ZBvlgp/9zVNjGiMwRirnVhVvi53+ScgvtlPJ+aJV5q/wg1WWWcayx+N6h2
	rOZj0tiOU5yooJEj3zvdBPjqsjmYSAnatiTbjcw9BxwI3o5Icho6sgr5HNCxjaKvNiPeijRL1V6Kx
	DNmtqGdYFpnoB8tkwZUWBbLJus17ay2RjKPy7+46zT1n/ZV3r2UxtbD/jlPR97grNNlSESvvBw4M/
	WJCt9QqUDqlEgEYKzHWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPsBL-0002V7-Tk; Wed, 30 Oct 2019 17:54:55 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPsBI-0002UQ-Fg
 for linux-rockchip@lists.infradead.org; Wed, 30 Oct 2019 17:54:54 +0000
Received: by mail-qt1-x842.google.com with SMTP id o3so4421478qtj.8
 for <linux-rockchip@lists.infradead.org>; Wed, 30 Oct 2019 10:54:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wR0o751NsvYc2RPxkgOAeSwo7zHlG8SxjiG2jNEXdMA=;
 b=On5YoSWDqbsRSolR5ILyEkP7PTPKNKl3a6o4h2o2TIii9HCo1FrOxFEv0/Z8EdggBU
 2dz3Whqj7wJ4k+6gSCsPVkG8gc0GA8XnIfZScWOHDLz6wPS/lzd8Mcc0a/i1tToIiwRf
 iPYTqKlcxfy+XYE7BfqjKmwR/YIMI4E3ziKxVuYwdnbX/hF4qoSiP0vFxHr4v2w2Fas+
 9+uas7+UP4Hx8yPKGu7ir2Wd/1zHnkxIJWnTN5xQ0C+2Xn5mexCvhxRGHuiIKf+a4seE
 QaOH/EO0lAYttIjXLNEBHQtI9M/V3f/Ei23ESra/VtDWXwnmoIthAmF/Aiqa662QtJ1e
 ovKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wR0o751NsvYc2RPxkgOAeSwo7zHlG8SxjiG2jNEXdMA=;
 b=WWtFg+MPDh/kP6fdhfcgnBpU6Enj+3bNXJz4ScR7a2Zq8T1dNgtUiokYYYCc2UDr6z
 Nw99pS8QKUXT2d3f6f2DvDrxwBN7HybJexqBe5dUdFvMs06T+Ntzdh1EjetQIxYRntz+
 82y72lbM+pbMmuaSPp4Bt74VaVKocSfJ4S0F8JqQjwnsppXRDMrQ4dhdAct0791QN90Y
 TY1hHJro0XJHlWX1aRdirltMNfWzctnNNN5kKsrM78zCmUwoBnDGVpZX6e1j0fPWs3fe
 6RHxJOQ52ZOurZpqil5+1u8kX3ZC/oO/eGjJ/sIFGGmunTmml1ivokyynhyITVU/Iuty
 ZmDw==
X-Gm-Message-State: APjAAAW3Hh3KiNJVqZn2MX0+zWW94iQRQi6dZSbI6bulgAVkTJJsJ1GA
 cqy/79dVjp8BQSPv11TaqogA8kLBe1FYoO69ags=
X-Google-Smtp-Source: APXvYqzgumlTWuYIp/Oin9akcNHweWYqWWkBGR7S09L130WJt3F8KsoEUJaCeZNIyBLGmaqdCaDh2QgHvwwa8q9675A=
X-Received: by 2002:a05:6214:922:: with SMTP id
 dk2mr347646qvb.60.1572458091103; 
 Wed, 30 Oct 2019 10:54:51 -0700 (PDT)
MIME-Version: 1.0
References: <20191028182254.30739-1-pgwipeout@gmail.com>
 <20191028182254.30739-5-pgwipeout@gmail.com>
 <1572314332.18464.9.camel@mhfsdcap03>
 <CAMdYzYrn+KGH3LSrRXxfessQyzv_319RO+skotTkS7H0VDFC0A@mail.gmail.com>
 <1572402485.18464.22.camel@mhfsdcap03>
In-Reply-To: <1572402485.18464.22.camel@mhfsdcap03>
From: Peter Geis <pgwipeout@gmail.com>
Date: Wed, 30 Oct 2019 13:54:32 -0400
Message-ID: <CAMdYzYoKe5VSRb7Yf9C50YAkBSgvLB+5U15b_ndxaSFxUfGVQQ@mail.gmail.com>
Subject: Re: [PATCH 4/5] arm64: dts: rockchip: add usb3 to rk3328 devicetree
To: Chunfeng Yun <chunfeng.yun@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_105452_551560_ABE1F661 
X-CRM114-Status: GOOD (  22.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pgwipeout[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: katsuhiro@katsuster.net, linux-rockchip@lists.infradead.org,
 linux-usb@vger.kernel.org, Robin Murphy <robin.murphy@arm.com>,
 Heiko Stuebner <heiko@sntech.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Tue, Oct 29, 2019 at 10:28 PM Chunfeng Yun <chunfeng.yun@mediatek.com> wrote:
>
> On Tue, 2019-10-29 at 11:31 -0400, Peter Geis wrote:
> > On Mon, Oct 28, 2019 at 9:59 PM Chunfeng Yun <chunfeng.yun@mediatek.com> wrote:
> > >
> > > On Mon, 2019-10-28 at 18:22 +0000, Peter Geis wrote:
> > > > Now that we have a proper phy driver, we can add the requisite bits to the
> > > > rk3328 device tree.
> > > > Added the u3drd and u3phy nodes.
> > > >
> > > > Signed-off-by: Peter Geis <pgwipeout@gmail.com>
> > > > ---
> > > >  arch/arm64/boot/dts/rockchip/rk3328.dtsi | 72 ++++++++++++++++++++++++
> > > >  1 file changed, 72 insertions(+)
> > > >
> > > > diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
> > > > index 31cc1541f1f5..072e988ad655 100644
> > > > --- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
> > > > +++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
> > > > @@ -805,6 +805,47 @@
> > > >               };
> > > >       };
> > > >
> > > > +     usb3phy_grf: syscon@ff460000 {
> > > > +             compatible = "rockchip,usb3phy-grf", "syscon";
> > > > +             reg = <0x0 0xff460000 0x0 0x1000>;
> > > > +     };
> > > > +
> > > > +     u3phy: usb3-phy@ff470000 {
> > > usb-phy?
> >
> > This change does not seem wise, as there are also various usb2-phys
> > that are controlled via other drivers, while the usb3phy also has to
> > support usb2 as a fallback.
> We can use u3phy label, or phy-cells = <1>, to provide phys type to
> distighuish u3/u2phy if need.
>
> >
> > > > +             compatible = "rockchip,rk3328-u3phy";
> > > > +             reg = <0x0 0xff470000 0x0 0x0>;
> > > It's zero length, may be not necessary, how about use ranges with
> > > parameter ?
> >
> > I'll look into this.
> >
> > >
> > > > +             rockchip,u3phygrf = <&usb3phy_grf>;
> > > > +             rockchip,grf = <&grf>;
> > > > +             interrupts = <GIC_SPI 77 IRQ_TYPE_LEVEL_HIGH>;
> > > > +             interrupt-names = "linestate";
> > > > +             clocks = <&cru PCLK_USB3PHY_OTG>, <&cru PCLK_USB3PHY_PIPE>;
> > > > +             clock-names = "u3phy-otg", "u3phy-pipe";
> > > To me, no need u3phy prefix
> >
> > Same as above, since this could cause confusion with the usb2 phy devices.
> Other info can be used, e.g. compatible;
>
>
> >
> > > > +             resets = <&cru SRST_USB3PHY_U2>,
> > > > +                      <&cru SRST_USB3PHY_U3>,
> > > > +                      <&cru SRST_USB3PHY_PIPE>,
> > > > +                      <&cru SRST_USB3OTG_UTMI>,
> > > > +                      <&cru SRST_USB3PHY_OTG_P>,
> > > > +                      <&cru SRST_USB3PHY_PIPE_P>;
> > > > +             reset-names = "u3phy-u2-por", "u3phy-u3-por",
> > > > +                           "u3phy-pipe-mac", "u3phy-utmi-mac",
> > > > +                           "u3phy-utmi-apb", "u3phy-pipe-apb";
> > > ditto
> > >
> > > > +             #address-cells = <2>;
> > > > +             #size-cells = <2>;
> > > > +             ranges;
> > > > +             status = "disabled";
> > > > +
> > > > +             u3phy_utmi: utmi@ff470000 {
> > > usb-phy instead of utmi?
> >
> > The stock driver looks for these by name, and they are both different functions.
> > This change would break the driver.
> Use phy_type? refer to bindings/usb/generic.txt

Roger, thank you for your feedback.
I have a bit of work to do for v2, although I'm hoping for a few more
tests to come in.
So far all I have is my rk3328-roc-cc and Robin's test.

>
> >
> > >
> > > > +                     reg = <0x0 0xff470000 0x0 0x8000>;
> > > > +                     #phy-cells = <0>;
> > > > +                     status = "disabled";
> > > > +             };
> > > > +
> > > > +             u3phy_pipe: pipe@ff478000 {
> > > usb-phy
> >
> > Same as above.
> >
> > > > +                     reg = <0x0 0xff478000 0x0 0x8000>;
> > > > +                     #phy-cells = <0>;
> > > > +                     status = "disabled";
> > > > +             };
> > > > +     };
> > > > +
> > > >       sdmmc: dwmmc@ff500000 {
> > > >               compatible = "rockchip,rk3328-dw-mshc", "rockchip,rk3288-dw-mshc";
> > > >               reg = <0x0 0xff500000 0x0 0x4000>;
> > > > @@ -936,6 +977,37 @@
> > > >               status = "disabled";
> > > >       };
> > > >
> > > > +     usbdrd3: usb@ff600000 {
> > > > +             compatible = "rockchip,rk3328-dwc3", "rockchip,rk3399-dwc3";
> > > > +             clocks = <&cru SCLK_USB3OTG_REF>, <&cru ACLK_USB3OTG>,
> > > > +                      <&cru SCLK_USB3OTG_SUSPEND>;
> > > > +             clock-names = "ref", "bus_early",
> > > > +                           "suspend";
> > > > +             #address-cells = <2>;
> > > > +             #size-cells = <2>;
> > > > +             ranges;
> > > > +             clock-ranges;
> > > > +             status = "disabled";
> > > > +
> > > > +             usbdrd_dwc3: dwc3@ff600000 {
> > > > +                     compatible = "snps,dwc3";
> > > > +                     reg = <0x0 0xff600000 0x0 0x100000>;
> > > > +                     interrupts = <GIC_SPI 67 IRQ_TYPE_LEVEL_HIGH>;
> > > > +                     dr_mode = "otg";
> > > > +                     phys = <&u3phy_utmi>, <&u3phy_pipe>;
> > > > +                     phy-names = "usb2-phy", "usb3-phy";
> > > > +                     phy_type = "utmi_wide";
> > > > +                     snps,dis_enblslpm_quirk;
> > > > +                     snps,dis-u2-freeclk-exists-quirk;
> > > > +                     snps,dis_u2_susphy_quirk;
> > > > +                     snps,dis_u3_susphy_quirk;
> > > > +                     snps,dis-del-phy-power-chg-quirk;
> > > > +                     snps,dis-tx-ipgap-linecheck-quirk;
> > > > +                     snps,xhci-trb-ent-quirk;
> > > > +                     status = "disabled";
> > > > +             };
> > > > +     };
> > > > +
> > > >       gic: interrupt-controller@ff811000 {
> > > >               compatible = "arm,gic-400";
> > > >               #interrupt-cells = <3>;
> > >
> > >
> > >
> > > _______________________________________________
> > > Linux-rockchip mailing list
> > > Linux-rockchip@lists.infradead.org
> > > http://lists.infradead.org/mailman/listinfo/linux-rockchip
>
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

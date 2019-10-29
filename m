Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61597E8BD5
	for <lists+linux-rockchip@lfdr.de>; Tue, 29 Oct 2019 16:32:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KQwVzSMdvO9qmoqbyqdv0C08oBd+tVovOz9Is/aWSm4=; b=lDH6UITup0N1rz
	VnDqEooLXoUAloplgqH7FB8GOkmbLWr7gqxv+9dLK6uOphyCy5y7066qoG7mJks7xnZiNl8zTKlfa
	wkYZdcXm/k8s2XYY6gTghvGngMM6eYOcgpY/lxJ9b5wLuQQ7MARf8yUscf3ntLzHRcXf1KxlOqmWw
	e6pXWeiDRJJfNafPmWWNzChFZbB9tN2djNekXX54sFqQ2KvIdHoOSB70gd7Mb6IzgYscAPNgDBZYu
	yd3jIG4UZpdPYulUU6MSUK52ApPKH/PLxqG9g4TDSiNJB3rFTupo/l6mUfGTIog3O2ZRL2ByyJYCr
	mMZCPXBpHClRlt5EnnVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPTTh-0004U5-CJ; Tue, 29 Oct 2019 15:32:13 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPTTd-0004TP-Us
 for linux-rockchip@lists.infradead.org; Tue, 29 Oct 2019 15:32:11 +0000
Received: by mail-qk1-x744.google.com with SMTP id a194so12629044qkg.10
 for <linux-rockchip@lists.infradead.org>; Tue, 29 Oct 2019 08:32:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Zei+gdYRByPVoXVqWA0fH/rGL1BnVeufNXCkqNemMUs=;
 b=sV7zqkJZKjV5eb5kALYUjE+k1L17g2D2WVguEMsMLCdbLVYeSOnCktuTAbhQSnfB5S
 obZDvJqhBCuoGDYfUUErkECG99lNnQUSgdUCnoHMsAHNg9dXwWWNgOrJier9jLKW3mW9
 XAZG82zIuUP/zTzgtJT1vCTkEwkSfE/8FyE6KJIBF/7kUcAETrjQqyTbw4qZneJ/HX4i
 RiTbz5slTc927iC8E5G/7ELpKft+77KXyj1ll6oAw6fAfkRRYz3EXsGY/UczoDw6uCqZ
 b741/wofF/9/m7vxZ6P/aO6dCUvJngaAxyDqWcITo2StVZSS/b5wDdVcH1OFjakdF0wq
 r5ZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Zei+gdYRByPVoXVqWA0fH/rGL1BnVeufNXCkqNemMUs=;
 b=tw4W3/RYizT0wRHS2WB7s5wUCMF7EweyFtqJjmNnmWNdaKNqr2XzdhYbHmbTh56B07
 ptGGFMmv1h4pq8D9rUgHkv6sboJgKhFRqCpIm4OTascxAVL/Cd98fzkUxlGJChPMcnLE
 71FBteMHPCv6nw9QhD+yA5TA5mnuBLUscOnv+GAmJB2tciBbkln9pcBLsiB2/84J9hlY
 lYU1Z4+X+Ztm5yj/s95c6rFPi27RUFh2MwPcOYvFDJwVAwangaHPobgDxZYN5/G+lVZ6
 OyxB9U4eUH6KFTusmyghdniAn4ij2XKReRAJ1ZZ4VI/X8kP4qUssstYJ9e8EhiXfFCLG
 9i/Q==
X-Gm-Message-State: APjAAAUpT11bA4JADWwtQEb9s5EHMSkGP9Hm3PLZA8fMh9V+yT/+3YE3
 nswIevRVU0IG+ckipv8xIvpjEgX0fpzRpErSw6c=
X-Google-Smtp-Source: APXvYqxiA5S3RTcPgrzrCp7afxa8iBRK/X0WIfk6HCI0mRqO5qooMuQYu3gg3rnZ8Xhw3tVlpAy0CB3ZKu06ctJ5lRE=
X-Received: by 2002:ae9:ef0a:: with SMTP id d10mr20095737qkg.262.1572363128692; 
 Tue, 29 Oct 2019 08:32:08 -0700 (PDT)
MIME-Version: 1.0
References: <20191028182254.30739-1-pgwipeout@gmail.com>
 <20191028182254.30739-5-pgwipeout@gmail.com>
 <1572314332.18464.9.camel@mhfsdcap03>
In-Reply-To: <1572314332.18464.9.camel@mhfsdcap03>
From: Peter Geis <pgwipeout@gmail.com>
Date: Tue, 29 Oct 2019 11:31:51 -0400
Message-ID: <CAMdYzYrn+KGH3LSrRXxfessQyzv_319RO+skotTkS7H0VDFC0A@mail.gmail.com>
Subject: Re: [PATCH 4/5] arm64: dts: rockchip: add usb3 to rk3328 devicetree
To: Chunfeng Yun <chunfeng.yun@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_083210_023337_1AD512ED 
X-CRM114-Status: GOOD (  18.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pgwipeout[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: katsuhiro@katsuster.net, linux-rockchip@lists.infradead.org,
 linux-usb@vger.kernel.org, Robin Murphy <robin.murphy@arm.com>,
 Heiko Stuebner <heiko@sntech.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Mon, Oct 28, 2019 at 9:59 PM Chunfeng Yun <chunfeng.yun@mediatek.com> wrote:
>
> On Mon, 2019-10-28 at 18:22 +0000, Peter Geis wrote:
> > Now that we have a proper phy driver, we can add the requisite bits to the
> > rk3328 device tree.
> > Added the u3drd and u3phy nodes.
> >
> > Signed-off-by: Peter Geis <pgwipeout@gmail.com>
> > ---
> >  arch/arm64/boot/dts/rockchip/rk3328.dtsi | 72 ++++++++++++++++++++++++
> >  1 file changed, 72 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
> > index 31cc1541f1f5..072e988ad655 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
> > +++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
> > @@ -805,6 +805,47 @@
> >               };
> >       };
> >
> > +     usb3phy_grf: syscon@ff460000 {
> > +             compatible = "rockchip,usb3phy-grf", "syscon";
> > +             reg = <0x0 0xff460000 0x0 0x1000>;
> > +     };
> > +
> > +     u3phy: usb3-phy@ff470000 {
> usb-phy?

This change does not seem wise, as there are also various usb2-phys
that are controlled via other drivers, while the usb3phy also has to
support usb2 as a fallback.

> > +             compatible = "rockchip,rk3328-u3phy";
> > +             reg = <0x0 0xff470000 0x0 0x0>;
> It's zero length, may be not necessary, how about use ranges with
> parameter ?

I'll look into this.

>
> > +             rockchip,u3phygrf = <&usb3phy_grf>;
> > +             rockchip,grf = <&grf>;
> > +             interrupts = <GIC_SPI 77 IRQ_TYPE_LEVEL_HIGH>;
> > +             interrupt-names = "linestate";
> > +             clocks = <&cru PCLK_USB3PHY_OTG>, <&cru PCLK_USB3PHY_PIPE>;
> > +             clock-names = "u3phy-otg", "u3phy-pipe";
> To me, no need u3phy prefix

Same as above, since this could cause confusion with the usb2 phy devices.

> > +             resets = <&cru SRST_USB3PHY_U2>,
> > +                      <&cru SRST_USB3PHY_U3>,
> > +                      <&cru SRST_USB3PHY_PIPE>,
> > +                      <&cru SRST_USB3OTG_UTMI>,
> > +                      <&cru SRST_USB3PHY_OTG_P>,
> > +                      <&cru SRST_USB3PHY_PIPE_P>;
> > +             reset-names = "u3phy-u2-por", "u3phy-u3-por",
> > +                           "u3phy-pipe-mac", "u3phy-utmi-mac",
> > +                           "u3phy-utmi-apb", "u3phy-pipe-apb";
> ditto
>
> > +             #address-cells = <2>;
> > +             #size-cells = <2>;
> > +             ranges;
> > +             status = "disabled";
> > +
> > +             u3phy_utmi: utmi@ff470000 {
> usb-phy instead of utmi?

The stock driver looks for these by name, and they are both different functions.
This change would break the driver.

>
> > +                     reg = <0x0 0xff470000 0x0 0x8000>;
> > +                     #phy-cells = <0>;
> > +                     status = "disabled";
> > +             };
> > +
> > +             u3phy_pipe: pipe@ff478000 {
> usb-phy

Same as above.

> > +                     reg = <0x0 0xff478000 0x0 0x8000>;
> > +                     #phy-cells = <0>;
> > +                     status = "disabled";
> > +             };
> > +     };
> > +
> >       sdmmc: dwmmc@ff500000 {
> >               compatible = "rockchip,rk3328-dw-mshc", "rockchip,rk3288-dw-mshc";
> >               reg = <0x0 0xff500000 0x0 0x4000>;
> > @@ -936,6 +977,37 @@
> >               status = "disabled";
> >       };
> >
> > +     usbdrd3: usb@ff600000 {
> > +             compatible = "rockchip,rk3328-dwc3", "rockchip,rk3399-dwc3";
> > +             clocks = <&cru SCLK_USB3OTG_REF>, <&cru ACLK_USB3OTG>,
> > +                      <&cru SCLK_USB3OTG_SUSPEND>;
> > +             clock-names = "ref", "bus_early",
> > +                           "suspend";
> > +             #address-cells = <2>;
> > +             #size-cells = <2>;
> > +             ranges;
> > +             clock-ranges;
> > +             status = "disabled";
> > +
> > +             usbdrd_dwc3: dwc3@ff600000 {
> > +                     compatible = "snps,dwc3";
> > +                     reg = <0x0 0xff600000 0x0 0x100000>;
> > +                     interrupts = <GIC_SPI 67 IRQ_TYPE_LEVEL_HIGH>;
> > +                     dr_mode = "otg";
> > +                     phys = <&u3phy_utmi>, <&u3phy_pipe>;
> > +                     phy-names = "usb2-phy", "usb3-phy";
> > +                     phy_type = "utmi_wide";
> > +                     snps,dis_enblslpm_quirk;
> > +                     snps,dis-u2-freeclk-exists-quirk;
> > +                     snps,dis_u2_susphy_quirk;
> > +                     snps,dis_u3_susphy_quirk;
> > +                     snps,dis-del-phy-power-chg-quirk;
> > +                     snps,dis-tx-ipgap-linecheck-quirk;
> > +                     snps,xhci-trb-ent-quirk;
> > +                     status = "disabled";
> > +             };
> > +     };
> > +
> >       gic: interrupt-controller@ff811000 {
> >               compatible = "arm,gic-400";
> >               #interrupt-cells = <3>;
>
>
>
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

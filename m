Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D360A109D4
	for <lists+linux-rockchip@lfdr.de>; Wed,  1 May 2019 17:10:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qo0EWe/cpnQ03XbXTct22/c7P0paO7koT0DGo8jfZ5M=; b=Fn3hKYcsT2M8xk
	TrThgJtAGp29fKIQLYXJV9qFg0EJQw8ji2WmPJu6Rlt5TPLlNBJdnR2oqr1XBeDcwvAmvCtDTUjNG
	qXfUYeyu5k3wy+eaIldC4C9KWexWjLdsA9vGAJhOgivovd8EqMHSfiXdw8wrRZnVIhLjkvgpavWAo
	oGSKK5VM7ZV0VXmR18E+7y6G4LlH0yIY/E132xn4EbkbIWLhSo6fEiM0rSlXFn+Zgo/dEA5jjK2bk
	bEEBX8YptX++t8Ix384dzWuujfwIWpA2DIMBa1iIORHCZcf6kFEWaXVaInCda7wVtuvVtXNK1F2GW
	6Z2co/MpiDthOWNhjY0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLqrz-0003la-1d; Wed, 01 May 2019 15:10:03 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLqru-0003c3-01; Wed, 01 May 2019 15:10:00 +0000
Received: from [195.37.15.138] (helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hLqrj-000435-PA; Wed, 01 May 2019 17:09:47 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [DO NOT MERGE] [PATCH 2/2] arm64: rockchip: rk3399: nanopc-t4:
 Enable FriendlyELEC HD702E eDP panel
Date: Wed, 01 May 2019 17:09:46 +0200
Message-ID: <59905981.qcSMt8CUfq@phil>
In-Reply-To: <CAMty3ZBdko3+p6SoKYH-Mwism-Qnp3F5u7JV8YQTHzNP8A5kEg@mail.gmail.com>
References: <20190501121448.3812-1-jagan@amarulasolutions.com>
 <cc16498b-71f8-04ce-44d1-25417fd64757@arm.com>
 <CAMty3ZBdko3+p6SoKYH-Mwism-Qnp3F5u7JV8YQTHzNP8A5kEg@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_080958_181705_86E9ACF3 
X-CRM114-Status: GOOD (  19.10  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 devicetree <devicetree@vger.kernel.org>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Mittwoch, 1. Mai 2019, 16:09:46 CEST schrieb Jagan Teki:
> On Wed, May 1, 2019 at 6:17 PM Robin Murphy <robin.murphy@arm.com> wrote:
> >
> > On 01/05/2019 13:14, Jagan Teki wrote:
> > > FriendlyELEC HD702E is one of optional LCD panel for
> > > NanoPC T4 eDP interface.
> > >
> > > It features 800x1280 resolutions, with built in GT9271 captive
> > > touchscreen and adjustable backlight via PWM.
> > >
> > > eDP panel connections are:
> > > - VCC3V3_SYS: 3.3V panel power supply
> > > - GPIO4_C2: PWM0_BL pin
> > > - GPIO4_D5_LCD_BL_EN: Backlight enable pin
> > > - VCC12V0_SYS: 12V backlight power supply
> > > - Touchscreen connected via I2C4
> > > - GPIO1_C4_TP_INT: touchscreen interrupt pin
> > > - GPIO1_B5_TP_RST: touchscreen reset pin
> > >
> > > Add support for it.
> > >
> > > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> > > ---
> > > Note: we need to disable hdmi-cec pinctrl to work with
> > > edp-hpd since both share same pin, otherwise we can
> > > encounter below error during bootup
> > > [    1.047726] rockchip-pinctrl pinctrl: pin gpio4-23 already requested by ff940000.hdmi; cannot claim for ff970000.edp
> > > [    1.048655] rockchip-pinctrl pinctrl: pin-151 (ff970000.edp) status -22
> > > [    1.049235] rockchip-pinctrl pinctrl: could not request pin 151 (gpio4-23) from group edp-hpd  on device rockchip-pinctrl
> > > [    1.050191] rockchip-dp ff970000.edp: Error applying setting, reverse things back
> > > [    1.050867] rockchip-dp: probe of ff970000.edp failed with error -22
> >
> > Hmm, AFAICS that pin is exclusively wired to the HDMI connector and not
> > used for the eDP interface, so really it's the fault of rk3399.dtsi for
> > trying to claim it unconditionally. Ideally we'd pull those pinctrl
> > properties out into the board DTs which do actually need them, but the
> > quick and easy approach would be to add some "/delete-property/ ..."
> > workarounds to the &edp node here.
> 
> Thought that initially, but the same pin shared between HDMI CEC and
> eDP hotplug with different bit function to enable.
> 
> gpio4c7_sel
> GPIO4C[7] iomux select
> 2'b00: gpio
> 2'b01: hdmi_cecinout
> 2'b10: edp_hotplug
> 2'b11: reserved
> 
> GPIO4_C7/HDMI_CECINOUT/EDP_HOTPLUG is the shared pin, which is
> available in any nanopc-t4 as well in rk3399 datasheet, look like it's
> an SoC pin that driver hotplug to eDP and ie same reason is pinmux in
> rk3399.dtsi.

Yes the pin of the soc is shared between those functions, so you'll
have to check the schematics of your board where this pin is going
to.

If you check the schematics [0] page 11, GPIO4_C7's signal is named HDMI_CEC
and on page 18 you can see that it goes as expected to the cec-pin of the
hdmi connector. 

So the Nanopc-T4 should only select the cec signal.


Heiko
[0] http://wiki.friendlyarm.com/wiki/images/f/f4/NanoPC-T4-1802-Schematic.pdf




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6A3D99EB2
	for <lists+linux-rockchip@lfdr.de>; Thu, 22 Aug 2019 20:23:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5pvzgCBGCiBc5P7+f+GJ0aMWlJBdz5gCYNmAAYSkHyw=; b=rpN805eFPHsjJg
	L1zo4VNZhh5EJDWDvaFrBylvKMnwD5uGwePzxqOtX7FnOCvq7OT/YrFYWrMysY07VMbYIdrG00lp6
	Km5QzqpDGsLcA7t31YDL7DSteBLLsgsc4KZes/UrGAofyi2aXbUizEC8eui5XjbP6fLAyBqPnxWYp
	4PBGj6Wy0fMF89JbjdbOwPXw7MA0G9DercDn54Qjx0sfbZvHbcjqcmNHkDXYt7l1csTPTMIkDJU3z
	dkvLdWpCx0/fqejixilbLacxNjdFfV4Br3e+kPDOr9kRct69PAgpCzYqjfOm1hETNww5oZ98yrzSa
	xNsff1bsrHtDQwhxKUHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0rkQ-0006lH-Bp; Thu, 22 Aug 2019 18:23:46 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0rkB-0006FV-41; Thu, 22 Aug 2019 18:23:32 +0000
Received: from wsip-184-188-36-2.sd.sd.cox.net ([184.188.36.2]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1i0rjo-0001eW-0S; Thu, 22 Aug 2019 20:23:08 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Ulf Hansson <ulf.hansson@linaro.org>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>
Subject: Re: [PATCH v2 01/11] dt-bindings: mmc: arasan: Update documentation
 for SD Card Clock
Date: Thu, 22 Aug 2019 20:23:01 +0200
Message-ID: <4911073.ucheZMAtV3@phil>
In-Reply-To: <CAPDyKFqdLE7d9uz_KcpO0CihM+QsFyKbNsoDMoNLT2Qy_TmNdw@mail.gmail.com>
References: <1561958991-21935-1-git-send-email-manish.narani@xilinx.com>
 <MN2PR02MB60299EB8B83C4EA68A0F2B33C1A80@MN2PR02MB6029.namprd02.prod.outlook.com>
 <CAPDyKFqdLE7d9uz_KcpO0CihM+QsFyKbNsoDMoNLT2Qy_TmNdw@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_112331_317276_B13A6B97 
X-CRM114-Status: GOOD (  26.21  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 Rob Herring <robh@kernel.org>, "ayaka@soulik.info" <ayaka@soulik.info>,
 "kernel@esmil.dk" <kernel@esmil.dk>,
 "scott.branden@broadcom.com" <scott.branden@broadcom.com>,
 "viresh.kumar@linaro.org" <viresh.kumar@linaro.org>,
 Manish Narani <MNARANI@xilinx.com>,
 "adrian.hunter@intel.com" <adrian.hunter@intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 Rajan Vaja <RAJANV@xilinx.com>,
 "tony.xie@rock-chips.com" <tony.xie@rock-chips.com>,
 Michal Simek <michals@xilinx.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "philipp.tomsich@theobroma-systems.com"
 <philipp.tomsich@theobroma-systems.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "christoph.muellner@theobroma-systems.com"
 <christoph.muellner@theobroma-systems.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Donnerstag, 22. August 2019, 15:38:26 CEST schrieb Ulf Hansson:
> [...]
> 
> > > > > > ---
> > > > > >  Documentation/devicetree/bindings/mmc/arasan,sdhci.txt | 15
> > > ++++++++++-
> > > > > ----
> > > > > >  1 file changed, 10 insertions(+), 5 deletions(-)
> > > > > >
> > > > > > diff --git a/Documentation/devicetree/bindings/mmc/arasan,sdhci.txt
> > > > > b/Documentation/devicetree/bindings/mmc/arasan,sdhci.txt
> > > > > > index 1edbb04..15c6397 100644
> > > > > > --- a/Documentation/devicetree/bindings/mmc/arasan,sdhci.txt
> > > > > > +++ b/Documentation/devicetree/bindings/mmc/arasan,sdhci.txt
> > > > > > @@ -23,6 +23,10 @@ Required Properties:
> > > > > >    - reg: From mmc bindings: Register location and length.
> > > > > >    - clocks: From clock bindings: Handles to clock inputs.
> > > > > >    - clock-names: From clock bindings: Tuple including "clk_xin" and
> > > "clk_ahb"
> > > > > > +            Apart from these two there is one more optional clock which
> > > > > > +            is "clk_sdcard". This clock represents output clock from
> > > > > > +            controller and card. This must be specified when #clock-cells
> > > > > > +            is specified.
> > > > > >    - interrupts: Interrupt specifier
> > > > > >
> > > > > >  Required Properties for "arasan,sdhci-5.1":
> > > > > > @@ -36,9 +40,10 @@ Optional Properties:
> > > > > >    - clock-output-names: If specified, this will be the name of the card
> > > clock
> > > > > >      which will be exposed by this device.  Required if #clock-cells is
> > > > > >      specified.
> > > > > > -  - #clock-cells: If specified this should be the value <0>.  With this
> > > property
> > > > > > -    in place we will export a clock representing the Card Clock.  This clock
> > > > > > -    is expected to be consumed by our PHY.  You must also specify
> > > > > > +  - #clock-cells: If specified this should be the value <0>. With this
> > > > > > +    property in place we will export one clock representing the Card
> > > > > > +    Clock. This clock is expected to be consumed by our PHY. You must
> > > also
> > > > > > +    specify
> > > > >
> > > > > specify what?
> > > > I think this line was already there, I missed to correct it, Will update in v3.
> > > >
> > > > >
> > > > > The 3rd clock input I assume? This statement means any existing users
> > > > > with 2 clock inputs and #clock-cells are in error now. Is that correct?
> > > > Yes, this is correct. So far there was only one vendor using '#clock-cells'
> > > which is Rockchip. I have sent DT patch (02/11) for that also.
> > > > Here this is needed as earlier implementation isn't correct as suggested by
> > > Uffe. (https://lkml.org/lkml/2019/6/20/486) .
> > >
> > > I am not sure how big of a problem the backwards compatible thingy
> > > with DT is, in general we must not break it. What do you say Manish?
> >
> > Though I agree with Uffe on this, there is no other way from my understanding. Please suggest.
> >
> > >
> > > As a workaround, would it be possible to use
> > > of_clk_get_from_provider() somehow to address the compatibility issue?
> >
> > For this to be used we have to parse 'clkspec' from the DT node and pass the same as an argument to this function. In this case also the DT node needs to be updated, which is same as we have done in this series.
> 
> Alright. I guess breaking DTBs for Rockchip platforms isn't
> acceptable, especially if those are already widely deployed, which I
> have no idea of....

The arasan sdhci is part of the rk3399, so every SBC using that SoC, but
also the whole Gru series of ChromeOS devices (Samsung Chromebook Plus
among them) would be affected.

Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

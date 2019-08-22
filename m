Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B90BE99548
	for <lists+linux-rockchip@lfdr.de>; Thu, 22 Aug 2019 15:39:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hi5f4xNmHIw/oIV576/lMB+mgqArmDuizMwmRozUgRk=; b=Ml4d37M6bheOQV
	vHjbjeHBlG2+m/0ganMCLQLhiuPjRTFrW30k8TeQYp75yc7ViA/mTyrVtHBsENOwbzovBw01ZXlUT
	FqSWOxWEIu835cwn7gHi/c+kx+my7RcY2KtNYcdhfXYMPf1F56CZz/EzHuiZpb3FhfBH3DlOtyU3f
	nAG9JKFOyTl916hNpEaH1nNVr33UlODTDIWQo3G7L+PvS1fLJpZdLQXBTFRpvKPie1Md2osvJ2I8C
	xq/HYhIT6UeDbigxQ3SLuMnHRuU0ezSarC33Up/ZPJGRn4im0cKS6jn2evL2xNRRPaKoVTjrsHhEp
	F/95Tq5CdoUziiNe+DyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0nJA-0006XT-2z; Thu, 22 Aug 2019 13:39:20 +0000
Received: from mail-ua1-x942.google.com ([2607:f8b0:4864:20::942])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0nIt-0006L4-Q5
 for linux-rockchip@lists.infradead.org; Thu, 22 Aug 2019 13:39:05 +0000
Received: by mail-ua1-x942.google.com with SMTP id j21so2001257uap.2
 for <linux-rockchip@lists.infradead.org>; Thu, 22 Aug 2019 06:39:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=FeL+2QSM5K1YLKKF/js9TmuXZpGlOsVDG+4zs7enb+s=;
 b=vcFXE6FvKpiU/zrPeYmswemc9N4V2PgJ6+b3JrTcb/leP+MyngmDkrXMX6fNCC6dqn
 5U5DxhJ0+6trsoUFiL1UHaJoAtvD3avRnS5Jjn0hIWhxZH5BNh+UbEx7r03YoAl794Jw
 HR5w6Fc5AQ9DT3i4m4j2/UueQP7AxJY/ZOBZgowVNQz1pcUgPIDl6VPhzseEWNH2yhVL
 sFvrbBxAIf0ixOmb1AbOZTeD4bKcIaPo7/IS32eixFYAFFMtH0FSJExgG3ZVVpz5HtpK
 wpmlq/Au0mkNCg+tpVy6s1iBWLieOP1LhX0U0hAfS+Vy8qt+5L2lehHVNPiimzJsKJTU
 YaRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=FeL+2QSM5K1YLKKF/js9TmuXZpGlOsVDG+4zs7enb+s=;
 b=i9DkSNcWgXfRTILWpXCK/ZRj3k2B6yIBRW0mu9wPrZ1NvNLf9Xk2m42LRtonCrfTDl
 qCdY7FCilBGqmSXYgxCw+gGNpJAeCSl5bQfGvqfcdNxRQGtAwIPgeTq+fvQ5GA2IRD33
 qN+2DOIK7IA/q5yZtiw4CMFXqhsk04y5HZ8aecr0xezm8ViIHKbO0+LRrmvZqmVU0R6M
 t6JWNvTcO1Nun0b64F07Gs2Psn9Qg36x784YCgTV/rsI9vkPbwQZQy4YReG79FkKhm4p
 wS+mWTTD+Cpwn9YM0xxbgsVf8qIv8iKSTjnDYbk114xT6nFDHAVclwXcHdoyfie5IP8u
 XeIg==
X-Gm-Message-State: APjAAAVKSTxtsFIuxEUD+vg1gD5F/axKT0aio36HH/POr0zeCuaJ3idR
 Mmd2DOcydzeBKAk7AfEDUiaKbUv3Dssd5VWDsCi+mA==
X-Google-Smtp-Source: APXvYqyNGgp4CW1Vx1Kr/v3sCAPsdONPj1D+yM9NJraECZoktBBfmsmh2N05UsLj8cJbC+xyyKQktBrLSJpWnqXuTU4=
X-Received: by 2002:ab0:15e9:: with SMTP id j38mr5992611uae.19.1566481142313; 
 Thu, 22 Aug 2019 06:39:02 -0700 (PDT)
MIME-Version: 1.0
References: <1561958991-21935-1-git-send-email-manish.narani@xilinx.com>
 <1561958991-21935-2-git-send-email-manish.narani@xilinx.com>
 <20190722215404.GA28292@bogus>
 <MN2PR02MB602907616249FF19C1A737D8C1C70@MN2PR02MB6029.namprd02.prod.outlook.com>
 <CAPDyKFostBKYipTkCsDbggsrux7w8BPqARx7fwRsL1XqEEX2NQ@mail.gmail.com>
 <MN2PR02MB60299EB8B83C4EA68A0F2B33C1A80@MN2PR02MB6029.namprd02.prod.outlook.com>
In-Reply-To: <MN2PR02MB60299EB8B83C4EA68A0F2B33C1A80@MN2PR02MB6029.namprd02.prod.outlook.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 22 Aug 2019 15:38:26 +0200
Message-ID: <CAPDyKFqdLE7d9uz_KcpO0CihM+QsFyKbNsoDMoNLT2Qy_TmNdw@mail.gmail.com>
Subject: Re: [PATCH v2 01/11] dt-bindings: mmc: arasan: Update documentation
 for SD Card Clock
To: Manish Narani <MNARANI@xilinx.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_063903_878177_0CA7F023 
X-CRM114-Status: GOOD (  23.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:942 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "kernel@esmil.dk" <kernel@esmil.dk>,
 "viresh.kumar@linaro.org" <viresh.kumar@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jolly Shah <JOLLYS@xilinx.com>,
 "tony.xie@rock-chips.com" <tony.xie@rock-chips.com>,
 "philipp.tomsich@theobroma-systems.com"
 <philipp.tomsich@theobroma-systems.com>, "heiko@sntech.de" <heiko@sntech.de>,
 Rob Herring <robh@kernel.org>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 Rajan Vaja <RAJANV@xilinx.com>, Michal Simek <michals@xilinx.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Nava kishore Manne <navam@xilinx.com>,
 "scott.branden@broadcom.com" <scott.branden@broadcom.com>,
 "ayaka@soulik.info" <ayaka@soulik.info>, "mdf@kernel.org" <mdf@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 "adrian.hunter@intel.com" <adrian.hunter@intel.com>,
 "olof@lixom.net" <olof@lixom.net>,
 "christoph.muellner@theobroma-systems.com"
 <christoph.muellner@theobroma-systems.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

[...]

> > > > > ---
> > > > >  Documentation/devicetree/bindings/mmc/arasan,sdhci.txt | 15
> > ++++++++++-
> > > > ----
> > > > >  1 file changed, 10 insertions(+), 5 deletions(-)
> > > > >
> > > > > diff --git a/Documentation/devicetree/bindings/mmc/arasan,sdhci.txt
> > > > b/Documentation/devicetree/bindings/mmc/arasan,sdhci.txt
> > > > > index 1edbb04..15c6397 100644
> > > > > --- a/Documentation/devicetree/bindings/mmc/arasan,sdhci.txt
> > > > > +++ b/Documentation/devicetree/bindings/mmc/arasan,sdhci.txt
> > > > > @@ -23,6 +23,10 @@ Required Properties:
> > > > >    - reg: From mmc bindings: Register location and length.
> > > > >    - clocks: From clock bindings: Handles to clock inputs.
> > > > >    - clock-names: From clock bindings: Tuple including "clk_xin" and
> > "clk_ahb"
> > > > > +            Apart from these two there is one more optional clock which
> > > > > +            is "clk_sdcard". This clock represents output clock from
> > > > > +            controller and card. This must be specified when #clock-cells
> > > > > +            is specified.
> > > > >    - interrupts: Interrupt specifier
> > > > >
> > > > >  Required Properties for "arasan,sdhci-5.1":
> > > > > @@ -36,9 +40,10 @@ Optional Properties:
> > > > >    - clock-output-names: If specified, this will be the name of the card
> > clock
> > > > >      which will be exposed by this device.  Required if #clock-cells is
> > > > >      specified.
> > > > > -  - #clock-cells: If specified this should be the value <0>.  With this
> > property
> > > > > -    in place we will export a clock representing the Card Clock.  This clock
> > > > > -    is expected to be consumed by our PHY.  You must also specify
> > > > > +  - #clock-cells: If specified this should be the value <0>. With this
> > > > > +    property in place we will export one clock representing the Card
> > > > > +    Clock. This clock is expected to be consumed by our PHY. You must
> > also
> > > > > +    specify
> > > >
> > > > specify what?
> > > I think this line was already there, I missed to correct it, Will update in v3.
> > >
> > > >
> > > > The 3rd clock input I assume? This statement means any existing users
> > > > with 2 clock inputs and #clock-cells are in error now. Is that correct?
> > > Yes, this is correct. So far there was only one vendor using '#clock-cells'
> > which is Rockchip. I have sent DT patch (02/11) for that also.
> > > Here this is needed as earlier implementation isn't correct as suggested by
> > Uffe. (https://lkml.org/lkml/2019/6/20/486) .
> >
> > I am not sure how big of a problem the backwards compatible thingy
> > with DT is, in general we must not break it. What do you say Manish?
>
> Though I agree with Uffe on this, there is no other way from my understanding. Please suggest.
>
> >
> > As a workaround, would it be possible to use
> > of_clk_get_from_provider() somehow to address the compatibility issue?
>
> For this to be used we have to parse 'clkspec' from the DT node and pass the same as an argument to this function. In this case also the DT node needs to be updated, which is same as we have done in this series.

Alright. I guess breaking DTBs for Rockchip platforms isn't
acceptable, especially if those are already widely deployed, which I
have no idea of....

And having support for both options in the driver seems not a great
option either, so it looks like you need to convert back into the old
v1 approach. Huh, sorry.

Kind regards
Uffe

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

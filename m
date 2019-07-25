Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3252474EBA
	for <lists+linux-rockchip@lfdr.de>; Thu, 25 Jul 2019 15:01:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RC+S5SaDLbr52jbPcL3Liojbnr7k257bbm8cilTlPMU=; b=TUA3ijfahNHgKb
	w/cjr0+c3otzWQ5YUmPE5CL+yMo0A6/NkLWRlduBQFvImmZnTf5kzpaww+86no24vAoAGeeoRzxcD
	9PaJzXmpAfFEV103bD0n4Ue1zMXfwVDKtmaaBLH41quFqmlMDd3N6oXhAscAzNIU5e2/G7YashJyF
	Fr0UNUHtah9hGsqVNWKny4peVaWZlod5AQLYKGlXsnv7CjCofouWAZWLx3+vQ2qIG5Wjs/HTtpwVQ
	sTjMwC2Ib43HRJAsMq1dn+asg1QpYPRSVw36wVI3/FGQIzHKzhMN93rxnUURj9craO0H/KIQxatHT
	3HGwitDDZq+ejIbJObDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqdNb-0007Gc-1V; Thu, 25 Jul 2019 13:01:55 +0000
Received: from mail-vk1-xa41.google.com ([2607:f8b0:4864:20::a41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqdNF-00070E-J5
 for linux-rockchip@lists.infradead.org; Thu, 25 Jul 2019 13:01:35 +0000
Received: by mail-vk1-xa41.google.com with SMTP id 130so10056831vkn.9
 for <linux-rockchip@lists.infradead.org>; Thu, 25 Jul 2019 06:01:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=B1z3qSqeis7KRp59LvW3GrIz3rWu/CFv+sXSsB3MIv0=;
 b=S7zg9NIJWKApcIDLjPg7XBK9rjPeDYoBWNVm005ZjT5gIbIyVfUK1xk1sLRQw2MM6x
 0Mdkbzf6ixFn9ev3RGLQI0Euk3fBpj38V9Um9YNXmB8Nig9Gqm7yu3MXe9SGvtsSF/wm
 cBMTtWscvwBj58mpSYQZHP82mWWmXezEv903XajiM4H7GkdESKIQ2TWthd1ygp1tVdlf
 auy3V0rc8NfdYnkaaXDknQrzs7TI038ABRxdFGjrDH+niO5voLKTNLeZJ3SjiHVtixc8
 lxDg71dtEjf+ShJe5QILrIeZjUXh+f9GR/ZH/Tfe/MfFQcGDLs78lnMBTM2MtL7glJNB
 5yWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=B1z3qSqeis7KRp59LvW3GrIz3rWu/CFv+sXSsB3MIv0=;
 b=U3eouFaUN3X7oVOPL7Ylp9cEI2vR9EAl0GJNHz/6IaKyMAbPXQOrltiCHlswTxFwLH
 xSqIEQc3sCsLuE9azJoZShI2jhun5a9sVJuoKG1kV1sJKm9/ZYO2HGCTqPYJsWHLO6fP
 OAxXihReCpeH7t3FRf8myJtzSUgmonWMxTqM++KDwzNFsC9WE39s+XvmTicF72tg4EHh
 n90XbuQZxrH5j2iHcKMTjAFmTm8FMU7DlbthYU1ESa9JXyLgtrnoEt+QSnOCLewNiStH
 Q6Cfdb9CcESvgpMsGkQViYcCr0e9x1KaGY00Kd9yvh39f46N2GVStB9+9S9XR2bDHwTR
 ioPQ==
X-Gm-Message-State: APjAAAVjCIef1qNSeJYEnCMipiNkVTL1lkYiNFglVx9PJCTz3THFpRHy
 lY3deVHQe8qWZ0SeqALUr7UuhMWhoRJ+uE6SnplAEA==
X-Google-Smtp-Source: APXvYqzWSaFSn1p/xkKu/nTk8JDTShS1XkRJNDVHcXJf+E/HgRUTiWRJNBpO14sGxRyKRreBRD1/QWYHKp73a7558FA=
X-Received: by 2002:a1f:f282:: with SMTP id q124mr34325145vkh.4.1564059690186; 
 Thu, 25 Jul 2019 06:01:30 -0700 (PDT)
MIME-Version: 1.0
References: <1561958991-21935-1-git-send-email-manish.narani@xilinx.com>
 <1561958991-21935-2-git-send-email-manish.narani@xilinx.com>
 <20190722215404.GA28292@bogus>
 <MN2PR02MB602907616249FF19C1A737D8C1C70@MN2PR02MB6029.namprd02.prod.outlook.com>
In-Reply-To: <MN2PR02MB602907616249FF19C1A737D8C1C70@MN2PR02MB6029.namprd02.prod.outlook.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 25 Jul 2019 15:00:53 +0200
Message-ID: <CAPDyKFostBKYipTkCsDbggsrux7w8BPqARx7fwRsL1XqEEX2NQ@mail.gmail.com>
Subject: Re: [PATCH v2 01/11] dt-bindings: mmc: arasan: Update documentation
 for SD Card Clock
To: Manish Narani <MNARANI@xilinx.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_060133_655561_A15B77A0 
X-CRM114-Status: GOOD (  25.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On Tue, 23 Jul 2019 at 10:23, Manish Narani <MNARANI@xilinx.com> wrote:
>
> Hi Rob,
>
> Thanks a lot for the review!
>
>
> > -----Original Message-----
> > From: Rob Herring <robh@kernel.org>
> > Sent: Tuesday, July 23, 2019 3:24 AM
> > To: Manish Narani <MNARANI@xilinx.com>
> > Cc: ulf.hansson@linaro.org; mark.rutland@arm.com; heiko@sntech.de; Michal
> > Simek <michals@xilinx.com>; adrian.hunter@intel.com;
> > christoph.muellner@theobroma-systems.com; philipp.tomsich@theobroma-
> > systems.com; viresh.kumar@linaro.org; scott.branden@broadcom.com;
> > ayaka@soulik.info; kernel@esmil.dk; tony.xie@rock-chips.com; Rajan Vaja
> > <RAJANV@xilinx.com>; Jolly Shah <JOLLYS@xilinx.com>; Nava kishore Manne
> > <navam@xilinx.com>; mdf@kernel.org; olof@lixom.net; linux-
> > mmc@vger.kernel.org; devicetree@vger.kernel.org; linux-
> > kernel@vger.kernel.org; linux-arm-kernel@lists.infradead.org; linux-
> > rockchip@lists.infradead.org
> > Subject: Re: [PATCH v2 01/11] dt-bindings: mmc: arasan: Update
> > documentation for SD Card Clock
> >
> > On Mon, Jul 01, 2019 at 10:59:41AM +0530, Manish Narani wrote:
> > > The clock handling is to be updated in the Arasan SDHCI. As the
> > > 'devm_clk_register' is deprecated in the clock framework, this needs to
> > > specify one more clock named 'clk_sdcard' to get the clock in the driver
> > > via 'devm_clk_get()'. This clock represents the clock from controller to
> > > the card.
> >
> > Please explain why in terms of the binding, not some driver calls.
> Okay.
>
> >
> >
> > > Signed-off-by: Manish Narani <manish.narani@xilinx.com>
> > > ---
> > >  Documentation/devicetree/bindings/mmc/arasan,sdhci.txt | 15 ++++++++++-
> > ----
> > >  1 file changed, 10 insertions(+), 5 deletions(-)
> > >
> > > diff --git a/Documentation/devicetree/bindings/mmc/arasan,sdhci.txt
> > b/Documentation/devicetree/bindings/mmc/arasan,sdhci.txt
> > > index 1edbb04..15c6397 100644
> > > --- a/Documentation/devicetree/bindings/mmc/arasan,sdhci.txt
> > > +++ b/Documentation/devicetree/bindings/mmc/arasan,sdhci.txt
> > > @@ -23,6 +23,10 @@ Required Properties:
> > >    - reg: From mmc bindings: Register location and length.
> > >    - clocks: From clock bindings: Handles to clock inputs.
> > >    - clock-names: From clock bindings: Tuple including "clk_xin" and "clk_ahb"
> > > +            Apart from these two there is one more optional clock which
> > > +            is "clk_sdcard". This clock represents output clock from
> > > +            controller and card. This must be specified when #clock-cells
> > > +            is specified.
> > >    - interrupts: Interrupt specifier
> > >
> > >  Required Properties for "arasan,sdhci-5.1":
> > > @@ -36,9 +40,10 @@ Optional Properties:
> > >    - clock-output-names: If specified, this will be the name of the card clock
> > >      which will be exposed by this device.  Required if #clock-cells is
> > >      specified.
> > > -  - #clock-cells: If specified this should be the value <0>.  With this property
> > > -    in place we will export a clock representing the Card Clock.  This clock
> > > -    is expected to be consumed by our PHY.  You must also specify
> > > +  - #clock-cells: If specified this should be the value <0>. With this
> > > +    property in place we will export one clock representing the Card
> > > +    Clock. This clock is expected to be consumed by our PHY. You must also
> > > +    specify
> >
> > specify what?
> I think this line was already there, I missed to correct it, Will update in v3.
>
> >
> > The 3rd clock input I assume? This statement means any existing users
> > with 2 clock inputs and #clock-cells are in error now. Is that correct?
> Yes, this is correct. So far there was only one vendor using '#clock-cells'  which is Rockchip. I have sent DT patch (02/11) for that also.
> Here this is needed as earlier implementation isn't correct as suggested by Uffe. (https://lkml.org/lkml/2019/6/20/486) .

I am not sure how big of a problem the backwards compatible thingy
with DT is, in general we must not break it. What do you say Manish?

As a workaround, would it be possible to use
of_clk_get_from_provider() somehow to address the compatibility issue?
Or maybe there is another clock API that can help.

Kind regards
Uffe

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

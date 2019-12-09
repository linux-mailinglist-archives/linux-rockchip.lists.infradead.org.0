Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8522E116E35
	for <lists+linux-rockchip@lfdr.de>; Mon,  9 Dec 2019 14:54:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aPOt2r33+ZXgVHlwnAImYu1xUaHUw1tTflZme/gsJuY=; b=LDQMsIpnNQ4h+n
	/mdroSxFidDOIMSeBcbMenesmaBgpRY3PvUzm6nEZwA7Fc74+IDnyr5Gcbn8dbwo+3B6q/liqnDIm
	t5ylIaEPQDghH2c56n4GkwYKhejC/kfyk13eA/5Brk/ze8sX6lV0cyUtoHJ/yP3pjjkWig0sFsnSh
	LRD7gE5vKXmymy81gXLfQCrv3WnkJBD+Z9PEzLSVnlSOY64hZmoX0+tMRFejGf/5/9SdO6ytzrsWs
	SYpvDG1HB6fR4QqGJlGNistg6WkNkMxrtGTs32+s/VywWvbjnIgVVt3ve7cMQ6Pz49Ph+IkVlGWw1
	FMRtzt2s+oYHJb6GrAUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieJUN-00087H-Dr; Mon, 09 Dec 2019 13:54:15 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieJUB-0007xY-Rm; Mon, 09 Dec 2019 13:54:06 +0000
Received: from ip5f5a6266.dynamic.kabel-deutschland.de ([95.90.98.102]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1ieJU1-0000ns-B0; Mon, 09 Dec 2019 14:53:53 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Peter Geis <pgwipeout@gmail.com>
Subject: Re: [RFCv1 0/8] RK3399 clean shutdown issue
Date: Mon, 09 Dec 2019 14:53:52 +0100
Message-ID: <8087758.JvhXzBlCRf@diego>
In-Reply-To: <CAMdYzYoZY5gau=DGtPhk9CPV_WcyM4wjR9o+rPyaQfOzoy2Y=Q@mail.gmail.com>
References: <20191206184536.2507-1-linux.amoon@gmail.com>
 <724aa7db-3838-16f9-d344-1789ae2a5746@arm.com>
 <CAMdYzYoZY5gau=DGtPhk9CPV_WcyM4wjR9o+rPyaQfOzoy2Y=Q@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_055404_048995_FAEB3AA7 
X-CRM114-Status: GOOD (  23.48  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Daniel Schultz <d.schultz@phytec.de>, Anand Moon <linux.amoon@gmail.com>,
 linux-kernel@vger.kernel.org,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>, Jagan Teki <jagan@amarulasolutions.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi,

Am Montag, 9. Dezember 2019, 14:37:28 CET schrieb Peter Geis:
> On Mon, Dec 9, 2019 at 8:29 AM Robin Murphy <robin.murphy@arm.com> wrote:
> >
> > On 06/12/2019 6:45 pm, Anand Moon wrote:
> > > Most of the RK3399 SBC boards do not perform clean
> > > shutdown and clean reboot.
> >
> > FWIW reboot problems on RK3399 have been tracked down to issues in
> > upstream ATF, and are unrelated to the PMIC.
> >
> > > These patches try to help resolve the issue with proper
> > > shutdown by turning off the PMIC.
> >
> > As mentioned elsewhere[1], although this is what the BSP kernel seems to
> > do, and in practice it's unlikely to matter for the majority of devboard
> > users like you and me, I still feel a bit uncomfortable with this
> > solution for systems using ATF as in principle the secure world might
> > want to know about orderly shutdowns, and this effectively makes every
> > shutdown an unexpected power loss from secure software's point of view.
> >
> > Robin.
> 
> Since ATF is operating completely in volatile memory, and shouldn't be
> touching hardware once it passes off control to the kernel anyways,
> what is the harm of pulling the rug out from under it?

Secure-world doesn't end with ATF :-)

There can also be an instance of OP-TEE or another TEE on top and they
often actually do secure storage encrypted onto the hosts mass storage
(see kernel's optee module).


> If this idea is to prevent issues in the future, such as if ATF does
> gain the ability to preempt hardware control, then at that time ATF
> will need to be able to handle actually powering off devices using the
> same functionality.
> 
> But as we discussed previously, ATF doesn't have this capability, so
> in this case any board without a dedicated power-off gpio will be
> unable to power off at all.
> Also it seems that giving ATF this functionality, with the current
> state of ATF, would be cost prohibitive.
> 
> I personally feel that allowing the kernel to do this is a solution to
> the problem we have now.

For the rest I guess I'll just point to Robin's text and Ack under your
system-power-controller patch ;-)

Heiko


> > [1]
> > http://lists.infradead.org/pipermail/linux-rockchip/2019-December/028183.html
> >
> > > For reference
> > > RK805 PMCI data sheet:
> > > [0] http://rockchip.fr/RK805%20datasheet%20V1.3.pdf
> > > RK808 PMIC data sheet:
> > > [1] http://rockchip.fr/RK808%20datasheet%20V1.4.pdf
> > > RK817 PMIC data sheet:
> > > [2] http://rockchip.fr/RK817%20datasheet%20V1.01.pdf
> > > RK818 PMIC data sheet:
> > > [3] http://rockchip.fr/RK818%20datasheet%20V1.0.pdf
> > >
> > > Reboot issue:
> > > My guess is that we need to some proper sequence of
> > > setting to PMCI to perform clean.
> > >
> > > If you have any input please share them.
> > >
> > > Tested on SBC
> > > Rock960 Model A
> > > Odroid N1
> > > Rock64
> > >
> > > -Anand Moon
> > >
> > > Anand Moon (8):
> > >    mfd: rk808: Refactor shutdown functions
> > >    mfd: rk808: use syscore for RK805 PMIC shutdown
> > >    mfd: rk808: use syscore for RK808 PMIC shutdown
> > >    mfd: rk808: use syscore for RK818 PMIC shutdown
> > >    mfd: rk808: cleanup unused function pointer
> > >    mfd: rk808: use common syscore for all PMCI for clean shutdown
> > >    arm64: rockchip: drop unused field from rk8xx i2c node
> > >    arm: rockchip: drop unused field from rk8xx i2c node
> > >
> > >   arch/arm/boot/dts/rk3036-kylin.dts            |   1 -
> > >   arch/arm/boot/dts/rk3188-px3-evb.dts          |   1 -
> > >   arch/arm/boot/dts/rk3288-evb-rk808.dts        |   1 -
> > >   arch/arm/boot/dts/rk3288-phycore-som.dtsi     |   1 -
> > >   arch/arm/boot/dts/rk3288-popmetal.dts         |   1 -
> > >   arch/arm/boot/dts/rk3288-tinker.dtsi          |   1 -
> > >   arch/arm/boot/dts/rk3288-veyron.dtsi          |   1 -
> > >   arch/arm/boot/dts/rk3288-vyasa.dts            |   1 -
> > >   arch/arm/boot/dts/rv1108-elgin-r1.dts         |   1 -
> > >   arch/arm/boot/dts/rv1108-evb.dts              |   1 -
> > >   arch/arm64/boot/dts/rockchip/px30-evb.dts     |   1 -
> > >   arch/arm64/boot/dts/rockchip/rk3328-a1.dts    |   1 -
> > >   arch/arm64/boot/dts/rockchip/rk3328-evb.dts   |   1 -
> > >   .../arm64/boot/dts/rockchip/rk3328-roc-cc.dts |   1 -
> > >   .../arm64/boot/dts/rockchip/rk3328-rock64.dts |   1 -
> > >   .../boot/dts/rockchip/rk3368-geekbox.dts      |   1 -
> > >   arch/arm64/boot/dts/rockchip/rk3368-lion.dtsi |   1 -
> > >   .../boot/dts/rockchip/rk3368-px5-evb.dts      |   1 -
> > >   .../boot/dts/rockchip/rk3399-firefly.dts      |   1 -
> > >   .../boot/dts/rockchip/rk3399-hugsun-x99.dts   |   1 -
> > >   .../boot/dts/rockchip/rk3399-khadas-edge.dtsi |   1 -
> > >   .../boot/dts/rockchip/rk3399-leez-p710.dts    |   1 -
> > >   .../boot/dts/rockchip/rk3399-nanopi4.dtsi     |   1 -
> > >   .../boot/dts/rockchip/rk3399-orangepi.dts     |   1 -
> > >   arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi |   1 -
> > >   .../boot/dts/rockchip/rk3399-roc-pc.dtsi      |   1 -
> > >   .../boot/dts/rockchip/rk3399-rock-pi-4.dts    |   1 -
> > >   .../boot/dts/rockchip/rk3399-rock960.dtsi     |   1 -
> > >   .../boot/dts/rockchip/rk3399-rockpro64.dts    |   1 -
> > >   .../boot/dts/rockchip/rk3399-sapphire.dtsi    |   1 -
> > >   drivers/mfd/rk808.c                           | 144 +++++-------------
> > >   include/linux/mfd/rk808.h                     |   2 -
> > >   32 files changed, 42 insertions(+), 134 deletions(-)
> > >
> >
> > _______________________________________________
> > Linux-rockchip mailing list
> > Linux-rockchip@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-rockchip
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

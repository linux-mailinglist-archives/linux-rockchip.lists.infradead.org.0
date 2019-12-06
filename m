Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 639581154C7
	for <lists+linux-rockchip@lfdr.de>; Fri,  6 Dec 2019 17:02:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EfXaYTkhtaIYFKS7AZaNyxHg6brS/occ1gc++A9jyoM=; b=kZWPmPWImc9oGm
	WyN0COHE6OVd10i9jfZ5N2tk2T9CFJABBDtZBvIfRuvAaECMfF0A+sTzS9WJpGK2q58s/577h7NGv
	RQNWaBSV5NKnoYnH8WZsQbwuAgIOKdq5QpqHTwCWNsPW0fIUZehyMky/op1/OW1rCP5YGzLY47AMs
	J1g/TupNm1ozvaDBCRuhYFeoWVq3P8ePdL69w2tp7TtiTVzGg7RNnN9WnyLzUdLLR/SwpmhyYjfXA
	/3n3Q7QXna+d9J2o6j+SVtOybkrasfWCDBHRMTKQYVaF/D2gt5z7nmqZNbErARM16CmOn2AsA5CXn
	RpeKYv0WA3EIcTqp1teg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idG3Q-0003fM-HP; Fri, 06 Dec 2019 16:02:04 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idG3N-0003ez-RY
 for linux-rockchip@lists.infradead.org; Fri, 06 Dec 2019 16:02:03 +0000
Received: from p57b772b2.dip0.t-ipconnect.de ([87.183.114.178]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1idG3K-0003JS-JN; Fri, 06 Dec 2019 17:01:58 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Change RK809 PMIC interrupt polarity
Date: Fri, 06 Dec 2019 17:01:58 +0100
Message-ID: <1601413.9zADmrJRdp@phil>
In-Reply-To: <20191206165250.5877dec8@xps13>
References: <20191206154247.28057-1-miquel.raynal@bootlin.com>
 <3285991.EbEXlA3CnX@phil> <20191206165250.5877dec8@xps13>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_080202_039674_A43EA98D 
X-CRM114-Status: GOOD (  17.62  )
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
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Freitag, 6. Dezember 2019, 16:52:50 CET schrieb Miquel Raynal:
> Hi Heiko,
> =

> Heiko Stuebner <heiko@sntech.de> wrote on Fri, 06 Dec 2019 16:48:00
> +0100:
> =

> > Hi Miquel,
> > =

> > Am Freitag, 6. Dezember 2019, 16:42:47 CET schrieb Miquel Raynal:
> > > PMIC interrupt can be active high or active low depending on BIT(1) of
> > > the GPIO_INT_CFG pin. The default is 0x1, which means active
> > > high. Change the polarity in the device tree to reflect the default
> > > state.
> > > =

> > > Without this and with the current code base, the interrupt never stops
> > > triggering while the MFD driver does not see anything to
> > > check/clear/mask so after 100000 spurious IRQs, the kernel simply
> > > desactivates the interrupt:
> > > =

> > >         irq 36: nobody cared (try booting with the "irqpoll" option)
> > >         [...]
> > >         handlers:
> > >         [<(____ptrval____)>] irq_default_primary_handler threaded
> > > 	[<(____ptrval____)>] regmap_irq_thread
> > >         Disabling IRQ #36
> > > =

> > > Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>  =

> > =

> > *coughs slightly*
> > =

> > mfd: rk808: Set RK817 interrupt polarity to low
> > https://git.kernel.org/pub/scm/linux/kernel/git/lee/mfd.git/commit/driv=
ers/mfd/rk808.c?h=3Dfor-mfd-next&id=3Ddbd16ef53487084816a20f662423ab543a75f=
c83
> > =

> > Should be in the current merge window already I guess ;-)
> =

> This time I swear I checked your tree. But this time we did not ended
> with the same fix so I missed this one *again* :)

No worries ... I guess I should check where I hid additional patches ;-)

So right now px30 stuff is in the trees:
- mine
- mfd
- phy (first round of dsi phy, refinement pending on the list)
- nvmem (for the otp controller)
- drm (drm/rockchip: vop: add the definition of dclk_pol)
- clk

and pending on lists:
- drm (dsi support + timings)
- phy (refinement as mentioned above)

not submitted yet but planning to get this done this weekend:
- panel driver for px30-evb
- dsi devicetree stuff


Hope this helps a bit to prevent more double work ;-)
Heiko

> =

> > =

> > Having this consistent over all rk8xx seemed nicer.
> =

> I'm fine with this approach too.
> =

> Thanks,
> Miqu=E8l





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

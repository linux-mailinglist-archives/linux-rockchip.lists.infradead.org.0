Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AF881324F4
	for <lists+linux-rockchip@lfdr.de>; Tue,  7 Jan 2020 12:34:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8Qrph97o85k86fhv2qBYLIOU5Qca2yKUngmZQMUpATU=; b=eRy7apJ0nBoJeo
	GWcIK0X4XbQDH0KFvLGgs9y779DsT4arW3TWDlT92U5XaT6Ohy6z7IUP2mWS+OlFERd+7LYPwg35N
	4Z0NZJuqvfYxAL2KPJUc/TxY0LdL4LpUBeaqJEW44utJGaoQY2guZnRJKH7R7gpHAn+L8Cpl/LKAa
	kRAblv/ycR9/i0dg3s2kW8SRr4mZz0xqP0RCUt+A1niGGi9VpMHWHqZC1NgMjSH9OSI0HUkVEgVKA
	oA7e/OzmJ3yr495OY0DfZ4Nwn0ZHph2RosZyxTpan5voiMwMpAYRwNkKpL5xETU0KzY3PRl3zvkyv
	uqy4sSuC7Dpx8cpMFEUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ion7d-0006Wr-Vo; Tue, 07 Jan 2020 11:34:05 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ion7a-0006Uo-5h
 for linux-rockchip@lists.infradead.org; Tue, 07 Jan 2020 11:34:03 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1ion7T-0002sF-BX; Tue, 07 Jan 2020 12:33:55 +0100
Received: from ukl by ptx.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1ion7S-0007gx-AY; Tue, 07 Jan 2020 12:33:54 +0100
Date: Tue, 7 Jan 2020 12:33:54 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH 2/2] pwm: Enable compile testing for some of drivers
Message-ID: <20200107113354.ggq6zarewq5ip354@pengutronix.de>
References: <20191230172113.17222-1-krzk@kernel.org>
 <20191230172113.17222-2-krzk@kernel.org>
 <20200107072645.ko247bwhh3ibdu73@pengutronix.de>
 <20200107082539.GA31827@pi3>
 <20200107104234.wq74fska3szrg4ii@pengutronix.de>
 <20200107110359.GA32423@pi3>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200107110359.GA32423@pi3>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_033402_208863_C7C69569 
X-CRM114-Status: GOOD (  19.51  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-pwm@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 Richard Weinberger <richard@nod.at>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Thierry Reding <thierry.reding@gmail.com>,
 linux-mediatek@lists.infradead.org, linux-rpi-kernel@lists.infradead.org,
 kernel@pengutronix.de, linux-amlogic@lists.infradead.org,
 linux-tegra@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-riscv@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Tue, Jan 07, 2020 at 12:03:59PM +0100, Krzysztof Kozlowski wrote:
> On Tue, Jan 07, 2020 at 11:42:34AM +0100, Uwe Kleine-K=F6nig wrote:
> > > I guess other solution would be to add stubs for few clk functions...
> > > =

> > > > Also HAS_IOMEM is a typical requirement, but I tested with an ARCH=
=3Dum
> > > > config (which does't have HAS_IOMEM) and they all compile fine.
> > > =

> > > Because of !HAS_IOMEM, since some time ARCH=3Dum does not support
> > > COMPILE_TEST. Therefore HAS_IOMEM dependency is not needed for compile
> > > testing (and for regular build it is selected by ARCH).
> > =

> > Hehe, I didn't notice because for testing I just dropped the "depends on
> > ..." lines in Kconfig instead of adding "|| COMPILE_TEST" :-) Still they
> > compile fine on UML.
> > =

> > Ah, since bc083a64b6c0 ("init/Kconfig: make COMPILE_TEST depend on
> > !UML") =3D=3D v4.8-rc1~52^2~83 COMPILE_TEST cannot be enabled on UML, b=
ut
> > later 1bcbfbfdeb00 ("um: add dummy ioremap and iounmap functions")
> > =3D=3D v4.13-rc1~8^2~6 UM got a dummy implementation. So maybe we could
> > revert bc083a64b6c0 today? (And if not, a comment about why near the
> > "depends on !UML" in init/Kconfig would be great.)
> > =

> > Orthogonal to that, I wonder if depending on HAS_IOMEM is right even
> > though the compile testers won't notice it missing. Or should HAS_IOMEM
> > be dropped?
> =

> I think yes, it can be dropped, but this would require:
> 1. Fixing any dependencies on HAS_IOMEM, e.g.:
>     WARNING: unmet direct dependencies detected for MFD_SYSCON
>       Depends on [n]: HAS_IOMEM [=3Dn]
>       Selected by [y]:
>       - PHY_DA8XX_USB [=3Dy] && (ARCH_DAVINCI_DA8XX || COMPILE_TEST [=3Dy=
])

I don't understand that warning. What did you modify to trigger that?
Probably related to the big "if HAS_IOMEM" in drivers/mfd/Kconfig?!

> 2. Checking if all of stubs are implemented (not only IOMEM but maybe
>    DMA as well). Also 1bcbfbfdeb00 brought only few stubs. Still we
>    need devm_ioremap_resource() and others.

A problem is that it's unclear (to me at least) what the presence of
HAS_IOMEM actually implies. I thought it's about ioremap + readl +
writel (including their respective variants). Does it really include dma
stuff, too?

> Quick test shows mentioned "unmet direct dependencies" and:
>     phy-pxa-usb.c:(.text+0x2f5): undefined reference to `devm_ioremap_res=
ource'
>     dma-iommu.c:(.text+0x179): undefined reference to `dma_pgprot'

dma_pgprot seems to depend on HAS_DMA though, not HAS_IOMEM.

(Oh, HAS_DMA is defined using "depends on !NO_DMA" + "default y".
NO_DMA has three different definitions. Two of them (in
drivers/crypto/ccree/cc_hw_queue_defs.h and arch/arm/include/asm/dma.h)
unrelated.)

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

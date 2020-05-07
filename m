Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE8E11C982A
	for <lists+linux-rockchip@lfdr.de>; Thu,  7 May 2020 19:45:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bk688ohGaHTEfFSlXrI4e+hiMl4eQ75v3EWZWf7KqYo=; b=SEMmfw4f9VWteP
	hLlNfhzm2Vdstn7P66NkOTBEXiu9gPlTf2b8wLrREYMrPJENPnCjyAzUwSmTGm1yVeQ+bKKuflyd+
	30dPXNCPgXQQWpGlZYAhH/SwmezAwb+ypoz/P77HQKSwpzCH2TI3RODPS3NGRuij/egYmwA9otdGB
	kPYEixR5ftFkhPPYxm8Fqw1MhYEz2NThVIiCpR+ArxyAmQTqXis4Fef+rAZwsV53hSXHRkU9FjGxg
	GaIm2tZRLZ37jVJxb5m1BjVvdwt57mcjdsKTP0EfHcC1UuAhOQ05X5vp06E/6rW5PpgMLXmerT3BI
	XGnm1p33jOkxx5qA3RBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWkaM-0007CL-KY; Thu, 07 May 2020 17:45:26 +0000
Received: from jabberwock.ucw.cz ([46.255.230.98])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWkZq-0004SX-Dy; Thu, 07 May 2020 17:44:58 +0000
Received: by jabberwock.ucw.cz (Postfix, from userid 1017)
 id 34B2C1C0257; Thu,  7 May 2020 19:44:47 +0200 (CEST)
Date: Thu, 7 May 2020 19:44:46 +0200
From: Pavel Machek <pavel@ucw.cz>
To: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: Re: [PATCH v9 0/8] Add endpoint driver for R-Car PCIe controller
Message-ID: <20200507174446.GC1216@bug>
References: <1587666159-6035-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1587666159-6035-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_104454_622399_36FF2723 
X-CRM114-Status: UNSURE (   9.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: devicetree@vger.kernel.org, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Heiko Stuebner <heiko@sntech.de>, Jingoo Han <jingoohan1@gmail.com>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-renesas-soc@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Tom Joseph <tjoseph@cadence.com>,
 Rob Herring <robh+dt@kernel.org>, Geert Uytterhoeven <geert@linux-m68k.org>,
 Lad Prabhakar <prabhakar.csengg@gmail.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Marek Vasut <marek.vasut+renesas@gmail.com>,
 Shawn Lin <shawn.lin@rock-chips.com>, linux-arm-kernel@lists.infradead.org,
 Andrew Murray <amurray@thegoodpenguin.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi!


> R-Car/RZ-G2x SoC's, this also extends the epf framework to handle multiple windows
> supported by the controller for mapping PCI address locally.
> 
> Note:
> The cadence/rockchip/designware endpoint drivers are build tested only.
> 
> Changes for v9 (Re-spun this series as there were minimal changes requested):
...
> * Replaced mdelay(1) with usleep_range(1000, 1001) in rcar_pcie_ep_assert_intx()

Are you sure that is good idea? You are requesting 1ms sleep time with 1us tolerance,
I dont believe common systems can do that.

Best regards,
									Pavel

-- 
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blog.html

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

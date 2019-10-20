Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B67ADDE0C2
	for <lists+linux-rockchip@lfdr.de>; Sun, 20 Oct 2019 23:40:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HDTpQSBJlO0OmVojI7dIBaERccTw+edTMYxOtq7Sxrk=; b=O4GyVObCn9T0M0
	uBp2QSwiwu4tmcXCF0xCiK0qFF7S630aS2AqIfuSOYIE0ujqdH1zUHVmnFZgUz9IrJbs66TVNU2nM
	+IteosNZVGx20vAi2jGaEF01uZqvtBvQkqstEKJ5rEBqh1OEctuv+udapnTp70imaMgzL4Z3x+MLk
	PuTwZJKlDwet29mce/gkcK31vi5+X46OUQZJvNjpd9gDF+FCOgR06bNL0zeP9eATXY+CJ30gEqLmJ
	4C53QI4AqD55U9VndvJffYs14zC3nRuJlYaw2dDuE4PhgMUDbUYn5Y4o4Qa0bSZjxKPuk1CngPu0f
	FdgJARxZ1hEaB4REnTvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMIwH-0003rN-TE; Sun, 20 Oct 2019 21:40:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMIvr-0002Qn-3b; Sun, 20 Oct 2019 21:40:12 +0000
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com
 [209.85.160.182])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8B99422469;
 Sun, 20 Oct 2019 21:40:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571607610;
 bh=qgl8etf05zFSFgrmUt3a3ejlLNLZr9gR4jAYnTio8dk=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=Q+vGSyU0uunAMGyJHqC4IiX+kVlgyKYyHxP/pjaRaZmfKnRL2VTBpkfdpUAFBxG9q
 6c97x2oAjqdPPs4ysequSxUmA3zKFsb50RTtwqCTpO4QsDH+aaRWz04KuWj2yTvPWo
 Do6FKvjIOO5BaYpnds4KsoqGAuXrTt95tibK6ig0=
Received: by mail-qt1-f182.google.com with SMTP id 3so17799160qta.1;
 Sun, 20 Oct 2019 14:40:10 -0700 (PDT)
X-Gm-Message-State: APjAAAX+Je4kvoie+EFIlLe1WtTALJ2qAKgZ3RUrjUfWhwzI3EVM3wQr
 N51YjZWZLlTQxain9mOyzoDwckZotApDk4NN/g==
X-Google-Smtp-Source: APXvYqyPNdeHc97P9vjK6aAr1OKGgzvAPW2UkIiZ4oCT73veRFA/jHuYzT+Hd/cVM4y/SwD9YgTWhEfrCQ8HEGQNi2k=
X-Received: by 2002:ac8:4508:: with SMTP id q8mr5790443qtn.110.1571607609587; 
 Sun, 20 Oct 2019 14:40:09 -0700 (PDT)
MIME-Version: 1.0
References: <20191016200647.32050-1-robh@kernel.org>
 <20191016200647.32050-6-robh@kernel.org>
 <20191018123537.GG47056@e119886-lin.cambridge.arm.com>
In-Reply-To: <20191018123537.GG47056@e119886-lin.cambridge.arm.com>
From: Rob Herring <robh@kernel.org>
Date: Sun, 20 Oct 2019 16:39:58 -0500
X-Gmail-Original-Message-ID: <CAL_JsqLchmnwV3=Ufrs0sxc+ye5kzyKdenUa+cWxiMEzf0rFCA@mail.gmail.com>
Message-ID: <CAL_JsqLchmnwV3=Ufrs0sxc+ye5kzyKdenUa+cWxiMEzf0rFCA@mail.gmail.com>
Subject: Re: [PATCH v2 05/25] PCI: dwc: Use pci_parse_request_of_pci_ranges()
To: Andrew Murray <andrew.murray@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191020_144011_224471_204D6812 
X-CRM114-Status: GOOD (  16.56  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Heiko Stuebner <heiko@sntech.de>,
 Karthikeyan Mitran <m.karthikeyan@mobiveil.co.in>,
 PCI <linux-pci@vger.kernel.org>, Shawn Lin <shawn.lin@rock-chips.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Toan Le <toan@os.amperecomputing.com>, Will Deacon <will@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Michal Simek <michal.simek@xilinx.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 "maintainer:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <bcm-kernel-feedback-list@broadcom.com>,
 Linus Walleij <linus.walleij@linaro.org>, Ray Jui <rjui@broadcom.com>,
 Hou Zhiqiang <Zhiqiang.Hou@nxp.com>, Ryder Lee <ryder.lee@mediatek.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Bjorn Helgaas <bhelgaas@google.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Scott Branden <sbranden@broadcom.com>,
 Jingoo Han <jingoohan1@gmail.com>, rfi@lists.rocketboards.org,
 "open list:MEDIA DRIVERS FOR RENESAS - FCP"
 <linux-renesas-soc@vger.kernel.org>, Tom Joseph <tjoseph@cadence.com>,
 Simon Horman <horms@verge.net.au>,
 Srinath Mannam <srinath.mannam@broadcom.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Ley Foon Tan <lftan@altera.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Fri, Oct 18, 2019 at 7:35 AM Andrew Murray <andrew.murray@arm.com> wrote:
>
> On Wed, Oct 16, 2019 at 03:06:27PM -0500, Rob Herring wrote:
> > Convert the Designware host bridge to use the common
> > pci_parse_request_of_pci_ranges().
> >
> > Cc: Jingoo Han <jingoohan1@gmail.com>
> > Cc: Gustavo Pimentel <gustavo.pimentel@synopsys.com>
> > Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> > Cc: Andrew Murray <andrew.murray@arm.com>
> > Cc: Bjorn Helgaas <bhelgaas@google.com>
> > Signed-off-by: Rob Herring <robh@kernel.org>
> > ---
> > v2:
> > - New patch
> >
> >  .../pci/controller/dwc/pcie-designware-host.c | 28 ++++++-------------
> >  1 file changed, 8 insertions(+), 20 deletions(-)
> >
> > diff --git a/drivers/pci/controller/dwc/pcie-designware-host.c b/drivers/pci/controller/dwc/pcie-designware-host.c
> > index 0f36a926059a..aeec8b65eb97 100644
> > --- a/drivers/pci/controller/dwc/pcie-designware-host.c
> > +++ b/drivers/pci/controller/dwc/pcie-designware-host.c
> > @@ -319,7 +319,7 @@ int dw_pcie_host_init(struct pcie_port *pp)
> >       struct device *dev = pci->dev;
> >       struct device_node *np = dev->of_node;
> >       struct platform_device *pdev = to_platform_device(dev);
> > -     struct resource_entry *win, *tmp;
> > +     struct resource_entry *win;
> >       struct pci_bus *child;
> >       struct pci_host_bridge *bridge;
> >       struct resource *cfg_res;
> > @@ -342,31 +342,19 @@ int dw_pcie_host_init(struct pcie_port *pp)
> >       if (!bridge)
> >               return -ENOMEM;
> >
> > -     ret = devm_of_pci_get_host_bridge_resources(dev, 0, 0xff,
> > -                                     &bridge->windows, &pp->io_base);

[...]

> > +                     pp->io_bus_addr = pp->io->start - win->offset;
> > +                     pp->io_base = pci_pio_to_address(pp->io->start);
>
> Where did io_base come from? This wasn't here before, so why are we setting it
> now?

It was set in the removed devm_of_pci_get_host_bridge_resources().

Rob

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4E86DCA16
	for <lists+linux-rockchip@lfdr.de>; Fri, 18 Oct 2019 17:59:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FVpAWy1wyTVlQsXeSs3qJ1Br40KYH6zdToQK2QLK8b0=; b=tdyTSKxx8fr0gV
	zEvNEgNU6iTUydo3rjg3Zo5SxlR5/TnqvIAyYqeH6ecp1+txGi+bhf8YsccPlJ3avrT5/jX7J4uwp
	T0BE0efYUwt0FPTGtS7PJVRBrrsTFL8ueqIOGMajpojMve5uuHhlzEN0S2+hcA2Tea9zWga2fVa2b
	8Xx/wzcB3P/Hz1OZYgVR6O0NCzAbP1/JdmZ28GyDlOYmRRywQZgAOzuyXpCPQ0jbhZKECLYPlGS5d
	s2n7EPD5EJgnysgeuYTHGnkZf1V+LUxGIkTUccSkj2ADpfEt9OzlCpx07G+DdBUwyMjE7UuxGK7tJ
	gl95Fer6ItHyiGYDldaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLUfG-0001LE-S5; Fri, 18 Oct 2019 15:59:42 +0000
Received: from [217.140.110.172] (helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLUXt-0001uZ-Fx; Fri, 18 Oct 2019 15:52:08 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5ED99C8F;
 Fri, 18 Oct 2019 08:51:54 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B437C3F718;
 Fri, 18 Oct 2019 08:51:53 -0700 (PDT)
Date: Fri, 18 Oct 2019 16:51:52 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v2 10/25] PCI: rockchip: Use
 pci_parse_request_of_pci_ranges()
Message-ID: <20191018155152.GK47056@e119886-lin.cambridge.arm.com>
References: <20191016200647.32050-1-robh@kernel.org>
 <20191016200647.32050-11-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191016200647.32050-11-robh@kernel.org>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_085205_660910_C084726D 
X-CRM114-Status: GOOD (  19.82  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
 Karthikeyan Mitran <m.karthikeyan@mobiveil.co.in>, linux-pci@vger.kernel.org,
 Shawn Lin <shawn.lin@rock-chips.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Toan Le <toan@os.amperecomputing.com>, Will Deacon <will@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Michal Simek <michal.simek@xilinx.com>, linux-rockchip@lists.infradead.org,
 bcm-kernel-feedback-list@broadcom.com,
 Linus Walleij <linus.walleij@linaro.org>, Ray Jui <rjui@broadcom.com>,
 Hou Zhiqiang <Zhiqiang.Hou@nxp.com>, Ryder Lee <ryder.lee@mediatek.com>,
 linux-mediatek@lists.infradead.org, Bjorn Helgaas <bhelgaas@google.com>,
 linux-arm-kernel@lists.infradead.org, Scott Branden <sbranden@broadcom.com>,
 Jingoo Han <jingoohan1@gmail.com>, rfi@lists.rocketboards.org,
 linux-renesas-soc@vger.kernel.org, Tom Joseph <tjoseph@cadence.com>,
 Simon Horman <horms@verge.net.au>,
 Srinath Mannam <srinath.mannam@broadcom.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Ley Foon Tan <lftan@altera.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Wed, Oct 16, 2019 at 03:06:32PM -0500, Rob Herring wrote:
> Convert the Rockchip host bridge to use the common
> pci_parse_request_of_pci_ranges().
> 
> There's no need to assign the resources to a temporary list first. Just
> use bridge->windows directly and remove all the temporary list handling.
> 
> Cc: Shawn Lin <shawn.lin@rock-chips.com>
> Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> Cc: Andrew Murray <andrew.murray@arm.com>
> Cc: Bjorn Helgaas <bhelgaas@google.com>
> Cc: Heiko Stuebner <heiko@sntech.de>
> Cc: linux-rockchip@lists.infradead.org
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
> v2:
> - New patch
> 
>  drivers/pci/controller/pcie-rockchip-host.c | 36 ++++-----------------
>  1 file changed, 7 insertions(+), 29 deletions(-)
> 
> diff --git a/drivers/pci/controller/pcie-rockchip-host.c b/drivers/pci/controller/pcie-rockchip-host.c
> index ef8e677ce9d1..8d2e6f2e141e 100644
> --- a/drivers/pci/controller/pcie-rockchip-host.c
> +++ b/drivers/pci/controller/pcie-rockchip-host.c
> @@ -950,14 +950,10 @@ static int rockchip_pcie_probe(struct platform_device *pdev)
>  	struct device *dev = &pdev->dev;
>  	struct pci_bus *bus, *child;
>  	struct pci_host_bridge *bridge;
> +	struct resource *bus_res;
>  	struct resource_entry *win;
> -	resource_size_t io_base;
> -	struct resource	*mem;
> -	struct resource	*io;
>  	int err;
> 
> -	LIST_HEAD(res);
> -
>  	if (!dev->of_node)
>  		return -ENODEV;
> 
> @@ -995,29 +991,20 @@ static int rockchip_pcie_probe(struct platform_device *pdev)
>  	if (err < 0)
>  		goto err_deinit_port;
> 
> -	err = devm_of_pci_get_host_bridge_resources(dev, 0, 0xff,
> -						    &res, &io_base);
> +	err = pci_parse_request_of_pci_ranges(dev, &bridge->windows, &bus_res);
>  	if (err)
>  		goto err_remove_irq_domain;
> 
> -	err = devm_request_pci_bus_resources(dev, &res);
> -	if (err)
> -		goto err_free_res;
> +	rockchip->root_bus_nr = bus_res->start;
> 
>  	/* Get the I/O and memory ranges from DT */
> -	resource_list_for_each_entry(win, &res) {
> +	resource_list_for_each_entry(win, &bridge->windows) {
>  		switch (resource_type(win->res)) {
>  		case IORESOURCE_IO:
>  			io = win->res;
>  			io->name = "I/O";

In some patches of this series we drop the custom naming of memory resources,
yet in others, like this one, we preserve the custom naming.

Should we be consistent in preserving the existing naming?

Thanks,

Andrew Murray

>  			rockchip->io_size = resource_size(io);
>  			rockchip->io_bus_addr = io->start - win->offset;
> -			err = pci_remap_iospace(io, io_base);
> -			if (err) {
> -				dev_warn(dev, "error %d: failed to map resource %pR\n",
> -					 err, io);
> -				continue;
> -			}
>  			rockchip->io = io;
>  			break;
>  		case IORESOURCE_MEM:
> @@ -1026,9 +1013,6 @@ static int rockchip_pcie_probe(struct platform_device *pdev)
>  			rockchip->mem_size = resource_size(mem);
>  			rockchip->mem_bus_addr = mem->start - win->offset;
>  			break;
> -		case IORESOURCE_BUS:
> -			rockchip->root_bus_nr = win->res->start;
> -			break;
>  		default:
>  			continue;
>  		}
> @@ -1036,15 +1020,14 @@ static int rockchip_pcie_probe(struct platform_device *pdev)
> 
>  	err = rockchip_pcie_cfg_atu(rockchip);
>  	if (err)
> -		goto err_unmap_iospace;
> +		goto err_remove_irq_domain;
> 
>  	rockchip->msg_region = devm_ioremap(dev, rockchip->msg_bus_addr, SZ_1M);
>  	if (!rockchip->msg_region) {
>  		err = -ENOMEM;
> -		goto err_unmap_iospace;
> +		goto err_remove_irq_domain;
>  	}
> 
> -	list_splice_init(&res, &bridge->windows);
>  	bridge->dev.parent = dev;
>  	bridge->sysdata = rockchip;
>  	bridge->busnr = 0;
> @@ -1054,7 +1037,7 @@ static int rockchip_pcie_probe(struct platform_device *pdev)
> 
>  	err = pci_scan_root_bus_bridge(bridge);
>  	if (err < 0)
> -		goto err_unmap_iospace;
> +		goto err_remove_irq_domain;
> 
>  	bus = bridge->bus;
> 
> @@ -1068,10 +1051,6 @@ static int rockchip_pcie_probe(struct platform_device *pdev)
>  	pci_bus_add_devices(bus);
>  	return 0;
> 
> -err_unmap_iospace:
> -	pci_unmap_iospace(rockchip->io);
> -err_free_res:
> -	pci_free_resource_list(&res);
>  err_remove_irq_domain:
>  	irq_domain_remove(rockchip->irq_domain);
>  err_deinit_port:
> @@ -1097,7 +1076,6 @@ static int rockchip_pcie_remove(struct platform_device *pdev)
> 
>  	pci_stop_root_bus(rockchip->root_bus);
>  	pci_remove_root_bus(rockchip->root_bus);
> -	pci_unmap_iospace(rockchip->io);
>  	irq_domain_remove(rockchip->irq_domain);
> 
>  	rockchip_pcie_deinit_phys(rockchip);
> --
> 2.20.1

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

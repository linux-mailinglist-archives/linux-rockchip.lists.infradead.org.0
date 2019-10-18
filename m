Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EB5BDC458
	for <lists+linux-rockchip@lfdr.de>; Fri, 18 Oct 2019 14:06:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GNq7vGIgNLf6rO3aV+yHrTBB1LfNiDCousbYVUOL+u4=; b=EtjzIdhAPYVAxd
	uUEKZuFNS7voC/6JgBLIXdjO9zWpa72ZXaEUZNZ9Zy1P3vrrjljKv2uMG/dtQ9kQJARUTS2xsfub1
	KBDDMMrlQ2CfDBQmsWIYEFTaVdxqYy5nGdp6JgB4zN/0eGVv1hoF+MN0I2VyYMvW+pb18ujwPfq5H
	fezzpauwg24b5bMxI0s4kBolSFIb6Ox2trLNhFX3eTw6xlgTUXb9OTByJvloqmajEy2gdeBD6+HUM
	G8/ttGUb8q4r2NUIfehOpJ7+ARFrDtArhTPY2Mn3tG3p3AjEPFcG4sAMAR3yweWG+qDoypv3LpepL
	g3sj38ab6Js2crA9JG+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLR1f-0002dN-MC; Fri, 18 Oct 2019 12:06:35 +0000
Received: from [217.140.110.172] (helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLR1R-0002QD-QN; Fri, 18 Oct 2019 12:06:23 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 73E3BCA3;
 Fri, 18 Oct 2019 05:06:09 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CA9663F6C4;
 Fri, 18 Oct 2019 05:06:08 -0700 (PDT)
Date: Fri, 18 Oct 2019 13:06:07 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v2 02/25] PCI: Export pci_parse_request_of_pci_ranges()
Message-ID: <20191018120607.GD47056@e119886-lin.cambridge.arm.com>
References: <20191016200647.32050-1-robh@kernel.org>
 <20191016200647.32050-3-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191016200647.32050-3-robh@kernel.org>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_050621_897274_8E32C800 
X-CRM114-Status: GOOD (  14.94  )
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

On Wed, Oct 16, 2019 at 03:06:24PM -0500, Rob Herring wrote:
> pci_parse_request_of_pci_ranges() is missing a module export, so add it.
> 
> Cc: Bjorn Helgaas <bhelgaas@google.com>
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
> v2:
> - New patch
> 
>  drivers/pci/of.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/pci/of.c b/drivers/pci/of.c
> index 36891e7deee3..f3da49a31db4 100644
> --- a/drivers/pci/of.c
> +++ b/drivers/pci/of.c
> @@ -530,6 +530,7 @@ int pci_parse_request_of_pci_ranges(struct device *dev,
>  	pci_free_resource_list(resources);
>  	return err;
>  }
> +EXPORT_SYMBOL_GPL(pci_parse_request_of_pci_ranges);
> 

Reviewed-by: Andrew Murray <andrew.murray@arm.com>

>  #endif /* CONFIG_PCI */
> 
> --
> 2.20.1

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B212715AAA1
	for <lists+linux-rockchip@lfdr.de>; Wed, 12 Feb 2020 15:01:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=shIr+AIuq7e2OAZ4NW/BG9uV6uyuQiX76rweLh6/zTQ=; b=XoStM7+MkKoIgV
	6NwpHjdolilb4zNt7RU+UyiDnNRVlkOFdm98gBu73Hu5skuePYiK/w1CGz+YKJUBJEqAQN7Eemev7
	uXTarj7ywuSM/l9UyG8wchb0qUugel4uP1CmvMwpg2jNfwIibSSGV5dZywwjH1aV+tRzBFUIaUa+b
	67bo+jF2odFh+rJecAHJ1AaDjBIbJhWG3r6ubzqOfj46KBt2AMnDLpTCR7r7Gb/3/IC4u4NzoI24P
	lVf11kqBSdww6bdgvg/fUs8g9tZsFnxsSWkSIqus7njbCtiA7vTimKXHgQhYhNFLnLStKTvhZCxY6
	salsRTwZ2gJXlcING8ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1saA-0005wP-NQ; Wed, 12 Feb 2020 14:01:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1sa1-0005p7-Uv; Wed, 12 Feb 2020 14:01:31 +0000
Received: from localhost (173-25-83-245.client.mchsi.com [173.25.83.245])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EEEDB20658;
 Wed, 12 Feb 2020 14:01:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581516089;
 bh=k9etYqQgRrkh7cyiZwIyrLs0t114fOpffvtkOo61KWY=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=EPX57e7K2CocHRjleSrYsOC4jcMI5oxr+HevHew+S+JLsugZIC+yBlaB/zNAvFapK
 UZKM6UR6vbTNWupREPcs7S6z357GJD+mZV4emsonCxc74ssTH9I3BK6QzchZrhXNXT
 P5IrxlIh5dph6VfbTvbebxGRjB9m1vimurMg3Zds=
Date: Wed, 12 Feb 2020 08:01:28 -0600
From: Bjorn Helgaas <helgaas@kernel.org>
To: Lad Prabhakar <prabhakar.csengg@gmail.com>
Subject: Re: [PATCH v4 1/6] PCI: rcar: Preparation for adding endpoint support
Message-ID: <20200212140127.GA127398@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200208183641.6674-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_060130_034405_7B114967 
X-CRM114-Status: GOOD (  20.31  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 FAKE_REPLY_C           No description available.
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
Cc: Mark Rutland <mark.rutland@arm.com>, Heiko Stuebner <heiko@sntech.de>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Shawn Lin <shawn.lin@rock-chips.com>, Will Deacon <will@kernel.org>,
 Marek Vasut <marek.vasut+renesas@gmail.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-rockchip@lists.infradead.org,
 linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>,
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Jingoo Han <jingoohan1@gmail.com>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Andrew Murray <andrew.murray@arm.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

To make the changelog from "git log --oneline" read nicely, the
subject should begin with a verb, e.g.,

  PCI: rcar: Move shareable code to a common file

On Sat, Feb 08, 2020 at 06:36:36PM +0000, Lad Prabhakar wrote:
> Prepare for adding endpoint support to rcar controller, there are no
> functional changes with this patch, a common file is created so that
> it can be shared with endpoint driver.

This commit log doesn't tell us what this patch does.  "Prepare"
conveys no real information.  It's a giant patch and it's difficult
to verify that there's no functional change.

I *think* what you did was move most of the #defines from pcie-rcar.c
to pcie-rcar.h and most of the code from pcie-rcar.c to
pcie-rcar-host.c.  And in both case, these were strict *moves* without
any changes.  If that's the case, please say that explicitly in the
commit log.

That's good; thanks for making this a separate patch so it's not
mingled with real changes.

> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> ---
>  arch/arm64/configs/defconfig            |    2 +-
>  drivers/pci/controller/Kconfig          |    4 +-
>  drivers/pci/controller/Makefile         |    2 +-
>  drivers/pci/controller/pcie-rcar-host.c | 1044 ++++++++++++++++++++++++++
>  drivers/pci/controller/pcie-rcar.c      | 1229 ++-----------------------------
>  drivers/pci/controller/pcie-rcar.h      |  126 ++++
>  6 files changed, 1227 insertions(+), 1180 deletions(-)
>  create mode 100644 drivers/pci/controller/pcie-rcar-host.c
>  create mode 100644 drivers/pci/controller/pcie-rcar.h
> 
> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> index b2f6673..8a1f51d 100644
> --- a/arch/arm64/configs/defconfig
> +++ b/arch/arm64/configs/defconfig
> @@ -182,7 +182,7 @@ CONFIG_HOTPLUG_PCI=y
>  CONFIG_HOTPLUG_PCI_ACPI=y
>  CONFIG_PCI_AARDVARK=y
>  CONFIG_PCI_TEGRA=y
> -CONFIG_PCIE_RCAR=y
> +CONFIG_PCIE_RCAR_HOST=y
>  CONFIG_PCI_HOST_GENERIC=y
>  CONFIG_PCI_XGENE=y
>  CONFIG_PCIE_ALTERA=y
> diff --git a/drivers/pci/controller/Kconfig b/drivers/pci/controller/Kconfig
> index f84e5ff..94bb5e9 100644
> --- a/drivers/pci/controller/Kconfig
> +++ b/drivers/pci/controller/Kconfig
> @@ -54,12 +54,12 @@ config PCI_RCAR_GEN2
>  	  There are 3 internal PCI controllers available with a single
>  	  built-in EHCI/OHCI host controller present on each one.
>  
> -config PCIE_RCAR
> +config PCIE_RCAR_HOST

The config symbol change should be mentioned in the commit log.  In
general we try to avoid changing config symbols because it's likely to
confuse people who keep their .config and update their kernel.  But I
guess your audience is probably pretty small.

>  	bool "Renesas R-Car PCIe controller"

The description needs to be updated, too.  This is what people will
see in menuconfig.

>  	depends on ARCH_RENESAS || COMPILE_TEST
>  	depends on PCI_MSI_IRQ_DOMAIN
>  	help
> -	  Say Y here if you want PCIe controller support on R-Car SoCs.
> +	  Say Y here if you want PCIe controller support on R-Car SoCs in host mode.

Wrap this so it fits in 80 columns like the rest of the file.

Bjorn

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

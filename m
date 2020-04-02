Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB34419CA33
	for <lists+linux-rockchip@lfdr.de>; Thu,  2 Apr 2020 21:39:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=qU6ZLQjfkN4uUTP5qlpmdDoyzqk0q7Jyu78t3sdZOiQ=; b=dzO6LSc49yPUhGUP7uOZvdOjsv
	X9NP4B/Z12FZ5QDFWJrKuH94WNL+GgGEU4dY3OSlQZwdu3upz7IGie0W0QkhHG0tv7CUjwCRs8J7t
	ABzk3nCMM67JctftqGyct39+rp8fbLd3swNoFDVbZ9lPNHdOsfSz6F+ta4muDFTC1vEZ/6oCYUX4x
	maHQps3+mLfbFTsTe8SstmOIgmSEAPTffKZtztOB8nOxcdiF+ixa+RZrieLtax1Kgpk9HUw6fiu7y
	NkE/8WVb8zNPwlCWtW42ZsUHX3YMsD831wwX6nt+uuQumP3ShG6dC7yk4S9iHZ3HewVDhhgUNnkq/
	IP+wsdbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jK5gf-0005oC-G2; Thu, 02 Apr 2020 19:39:37 +0000
Received: from relmlor1.renesas.com ([210.160.252.171]
 helo=relmlie5.idc.renesas.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jK5g4-0005Gl-Nh; Thu, 02 Apr 2020 19:39:02 +0000
X-IronPort-AV: E=Sophos;i="5.72,336,1580742000"; d="scan'208";a="43555645"
Received: from unknown (HELO relmlir6.idc.renesas.com) ([10.200.68.152])
 by relmlie5.idc.renesas.com with ESMTP; 03 Apr 2020 04:38:58 +0900
Received: from localhost.localdomain (unknown [10.226.36.204])
 by relmlir6.idc.renesas.com (Postfix) with ESMTP id DE8C640C4F6C;
 Fri,  3 Apr 2020 04:38:51 +0900 (JST)
From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Bjorn Helgaas <bhelgaas@google.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Magnus Damm <magnus.damm@gmail.com>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Marek Vasut <marek.vasut+renesas@gmail.com>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 linux-pci@vger.kernel.org
Subject: [PATCH v6 01/11] PCI: rcar: Rename pcie-rcar.c to pcie-rcar-host.c
Date: Thu,  2 Apr 2020 20:38:29 +0100
Message-Id: <1585856319-4380-2-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1585856319-4380-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <1585856319-4380-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_123900_874482_295AAC79 
X-CRM114-Status: GOOD (  12.20  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.160.252.171 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, Chris Paterson <Chris.Paterson2@renesas.com>,
 Heiko Stuebner <heiko@sntech.de>, Arnd Bergmann <arnd@arndb.de>,
 Jingoo Han <jingoohan1@gmail.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Shawn Lin <shawn.lin@rock-chips.com>, Frank Rowand <frowand.list@gmail.com>,
 linux-kernel@vger.kernel.org,
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Tom Joseph <tjoseph@cadence.com>, Simon Horman <horms@verge.net.au>,
 Lad Prabhakar <prabhakar.csengg@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Andrew Murray <andrew.murray@arm.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

This commit renames pcie-rcar.c to pcie-rcar-host.c in preparation for
adding support for endpoint mode. CONFIG_PCIE_RCAR is kept so that arm64
defconfig change can be a separate patch.

With this patch both config options PCIE_RCAR and PCIE_RCAR_HOST will be
available but PCIE_RCAR internally selects PCIE_RCAR_HOST so that bisect
builds wont be affected.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
 drivers/pci/controller/Kconfig                         | 10 ++++++++++
 drivers/pci/controller/Makefile                        |  2 +-
 .../pci/controller/{pcie-rcar.c => pcie-rcar-host.c}   |  0
 3 files changed, 11 insertions(+), 1 deletion(-)
 rename drivers/pci/controller/{pcie-rcar.c => pcie-rcar-host.c} (100%)

diff --git a/drivers/pci/controller/Kconfig b/drivers/pci/controller/Kconfig
index af0f0bc11917..cfdc898450d0 100644
--- a/drivers/pci/controller/Kconfig
+++ b/drivers/pci/controller/Kconfig
@@ -58,8 +58,18 @@ config PCIE_RCAR
 	bool "Renesas R-Car PCIe controller"
 	depends on ARCH_RENESAS || COMPILE_TEST
 	depends on PCI_MSI_IRQ_DOMAIN
+	select PCIE_RCAR_HOST
 	help
 	  Say Y here if you want PCIe controller support on R-Car SoCs.
+	  This option will be removed after arm64 defconfig is updated.
+
+config PCIE_RCAR_HOST
+	bool "Renesas R-Car PCIe host controller"
+	depends on ARCH_RENESAS || COMPILE_TEST
+	depends on PCI_MSI_IRQ_DOMAIN
+	help
+	  Say Y here if you want PCIe controller support on R-Car SoCs in host
+	  mode.
 
 config PCI_HOST_COMMON
 	bool
diff --git a/drivers/pci/controller/Makefile b/drivers/pci/controller/Makefile
index 158c59771824..9dbccb5b24e1 100644
--- a/drivers/pci/controller/Makefile
+++ b/drivers/pci/controller/Makefile
@@ -7,7 +7,7 @@ obj-$(CONFIG_PCI_MVEBU) += pci-mvebu.o
 obj-$(CONFIG_PCI_AARDVARK) += pci-aardvark.o
 obj-$(CONFIG_PCI_TEGRA) += pci-tegra.o
 obj-$(CONFIG_PCI_RCAR_GEN2) += pci-rcar-gen2.o
-obj-$(CONFIG_PCIE_RCAR) += pcie-rcar.o
+obj-$(CONFIG_PCIE_RCAR_HOST) += pcie-rcar-host.o
 obj-$(CONFIG_PCI_HOST_COMMON) += pci-host-common.o
 obj-$(CONFIG_PCI_HOST_GENERIC) += pci-host-generic.o
 obj-$(CONFIG_PCIE_XILINX) += pcie-xilinx.o
diff --git a/drivers/pci/controller/pcie-rcar.c b/drivers/pci/controller/pcie-rcar-host.c
similarity index 100%
rename from drivers/pci/controller/pcie-rcar.c
rename to drivers/pci/controller/pcie-rcar-host.c
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

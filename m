Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1C0B11DFDC
	for <lists+linux-rockchip@lfdr.de>; Fri, 13 Dec 2019 09:50:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=piGBEOafdUj92oh+uUTqPT/2gjDikp00PS/e4deB9b4=; b=tfin2wMupcY5o9
	GUVpPpJ3Ejfrzxx7ksrFzhql0SsUJp6UbZLYCYWMBWgidU0oZAFAYQ/TqwnTIsSkW/Xva+vSNIizb
	65yISQKnaXRqQbD52QrZilZ+dtC6SyY9twarG0GLGhGFw2aKfbb+SoQP3llmuXkpwN+XBc2wYBOvi
	6kK7OyX9CMFSL2o2RpL+9slymhUxmbBzXMK0W7Skg/rC7v4af17ncspGTuXmKaUxVPcvH+fLXwlLl
	5nOt3/6SVoHTKU2dSrI8xqmezCU2PLxyNJrqnGTbngSi2Ba0wzzHcPTHkykIdU3rhzg3PC4hIXFFP
	PyANOf84QUcQ0z5gW7/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifgeS-0000NS-QG; Fri, 13 Dec 2019 08:50:20 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifgcu-0006RH-Nn; Fri, 13 Dec 2019 08:48:47 +0000
Received: by mail-pf1-x442.google.com with SMTP id y14so1084975pfm.13;
 Fri, 13 Dec 2019 00:48:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=R+rVN9melKva/C8SYQDT/3PjY+2oYXgwbZim++Rm4n8=;
 b=VjuBrSkjm+Aoa1LTczNhF83QIIyPtTtJlxNfhq7/02xIdF3IkzE0SK081YtU67CWJ0
 Wl+vkruQ8/K6MkfB8bOuvIoJIPmkmQp5QuePdulm9HAqZ8x4LSHwzIH40gUqM1Memibv
 o+hRqg0aEGXIR3SoHEzB+kLoLecKPFil3FjcFv1yUXM0ySe3lGGScLtU1Xll96PP6Uwy
 HiGFLjUY0sOvzs+SrMy99dQ7JPVRAHapEZtsyumUMLK5P0q9cy3m6CP+1Q2MmMesIFtf
 gMC/Sk152kG0q/5FX/fr54dZQ7ZdZcFj3S3oJY9yBoW7vHxGROpFjMjYHu4+EvXBVGEG
 dETg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=R+rVN9melKva/C8SYQDT/3PjY+2oYXgwbZim++Rm4n8=;
 b=H+Ofu/+ZGscamq/dbwcYurQicu3WuLYyQg/igoiVZ6/fACMeGaMmYmtQzJjiHT34+r
 spvb3gOY3Pj9Xg6WUaKn+pv95AXRKXE+sUTlWW5Eq5sj81a9dlLzv2FYOnDoPFvesvzh
 ciZOC5k6jv6KdRMR3HacLLbtse4lJdSZqMwCTccr1Bjj77txuBHTHnGYim/CmmXDog4f
 /dFkEdPI4iWIll4tpiBTEyaFx5kfAX4e5xW/j1SDbGeLeKN1ADGUM7vLbxq7U7s/Zmg5
 Qrepkoh2S19u7yzctv2ZwlJD0gbMhRDiLCeB0/wo31LXjLp9FO/IA4V2IKDqqQoNeGGS
 HcFg==
X-Gm-Message-State: APjAAAW/nLlNi8p9HxBHUrwYo8v4Jf5uVZiYffpS4hkXGRQdoveXUwBL
 dBxraAJ5CbJ0GLQA92eDa0s=
X-Google-Smtp-Source: APXvYqxI61+CaqugpszSabOB6Nbf5ljX1SFd3yl9odVGQBAaYUVFSCaPLd6oV4TAjyFJcpzuDGLHrg==
X-Received: by 2002:a63:5718:: with SMTP id l24mr15387341pgb.136.1576226923085; 
 Fri, 13 Dec 2019 00:48:43 -0800 (PST)
Received: from prasmi.domain.name ([103.219.60.167])
 by smtp.gmail.com with ESMTPSA id 68sm9985632pge.14.2019.12.13.00.48.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Dec 2019 00:48:42 -0800 (PST)
From: Lad Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Bjorn Helgaas <bhelgaas@google.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Magnus Damm <magnus.damm@gmail.com>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Marek Vasut <marek.vasut+renesas@gmail.com>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 linux-pci@vger.kernel.org
Subject: [v2 5/6] pci: rcar: add support for rcar pcie controller in endpoint
 mode
Date: Fri, 13 Dec 2019 08:47:47 +0000
Message-Id: <20191213084748.11210-6-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191213084748.11210-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20191213084748.11210-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_004844_904057_B765274B 
X-CRM114-Status: GOOD (  21.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (prabhakar.csengg[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Heiko Stuebner <heiko@sntech.de>, Arnd Bergmann <arnd@arndb.de>,
 Jingoo Han <jingoohan1@gmail.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Shawn Lin <shawn.lin@rock-chips.com>, Frank Rowand <frowand.list@gmail.com>,
 linux-kernel@vger.kernel.org, "Lad,
 Prabhakar" <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Tom Joseph <tjoseph@cadence.com>, Simon Horman <horms@verge.net.au>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Andrew Murray <andrew.murray@arm.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

From: "Lad, Prabhakar" <prabhakar.mahadev-lad.rj@bp.renesas.com>

this patch adds support for rcar pcie controller to work in
endpoint mode.

Signed-off-by: Lad, Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
 drivers/pci/controller/Kconfig        |   7 +
 drivers/pci/controller/Makefile       |   1 +
 drivers/pci/controller/pcie-rcar-ep.c | 494 ++++++++++++++++++++++++++++++++++
 3 files changed, 502 insertions(+)
 create mode 100644 drivers/pci/controller/pcie-rcar-ep.c

diff --git a/drivers/pci/controller/Kconfig b/drivers/pci/controller/Kconfig
index d3b82f7..41f497c 100644
--- a/drivers/pci/controller/Kconfig
+++ b/drivers/pci/controller/Kconfig
@@ -89,6 +89,13 @@ config PCIE_RCAR_HOST
 	help
 	  Say Y here if you want PCIe controller support on R-Car SoCs in host mode.
 
+config PCIE_RCAR_EP
+	bool "Renesas R-Car PCIe endpoint controller"
+	depends on ARCH_RENESAS || COMPILE_TEST
+	depends on PCI_ENDPOINT
+	help
+	  Say Y here if you want PCIe controller support on R-Car SoCs in endpoint mode.
+
 config PCI_HOST_COMMON
 	bool
 	select PCI_ECAM
diff --git a/drivers/pci/controller/Makefile b/drivers/pci/controller/Makefile
index 3577902..16aa1f7 100644
--- a/drivers/pci/controller/Makefile
+++ b/drivers/pci/controller/Makefile
@@ -10,6 +10,7 @@ obj-$(CONFIG_PCI_AARDVARK) += pci-aardvark.o
 obj-$(CONFIG_PCI_TEGRA) += pci-tegra.o
 obj-$(CONFIG_PCI_RCAR_GEN2) += pci-rcar-gen2.o
 obj-$(CONFIG_PCIE_RCAR_HOST) += pcie-rcar.o pcie-rcar-host.o
+obj-$(CONFIG_PCIE_RCAR_EP) += pcie-rcar.o pcie-rcar-ep.o
 obj-$(CONFIG_PCI_HOST_COMMON) += pci-host-common.o
 obj-$(CONFIG_PCI_HOST_GENERIC) += pci-host-generic.o
 obj-$(CONFIG_PCIE_XILINX) += pcie-xilinx.o
diff --git a/drivers/pci/controller/pcie-rcar-ep.c b/drivers/pci/controller/pcie-rcar-ep.c
new file mode 100644
index 0000000..c228901
--- /dev/null
+++ b/drivers/pci/controller/pcie-rcar-ep.c
@@ -0,0 +1,494 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * PCIe endpoint driver for Renesas R-Car SoCs
+ *  Copyright (c) 2019 Renesas Electronics Europe GmbH
+ *
+ * Author: Lad, Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
+ */
+
+#include <linux/clk.h>
+#include <linux/delay.h>
+#include <linux/of_address.h>
+#include <linux/of_irq.h>
+#include <linux/of_pci.h>
+#include <linux/of_platform.h>
+#include <linux/pci.h>
+#include <linux/pci-epc.h>
+#include <linux/phy/phy.h>
+#include <linux/platform_device.h>
+
+#include "pcie-rcar.h"
+
+#define MAX_NR_INBOUND_MAPS	6
+#define MAX_NR_OUTBOUND_MAPS	4
+
+/* Structure representing the PCIe interface */
+struct rcar_pcie {
+	phys_addr_t		*ob_addr;
+	struct pci_epc_mem_window *ob_window;
+	struct pci_epc		*epc;
+	struct device		*dev;
+	void __iomem		*base;
+	u8			max_functions;
+	unsigned int		bar_to_atu[MAX_NR_INBOUND_MAPS];
+	unsigned long		*ib_window_map;
+	u32			num_ib_windows;
+	u32			num_ob_windows;
+};
+
+static void rcar_pcie_ep_hw_init(struct rcar_pcie *pcie)
+{
+	u32 val;
+
+	rcar_pci_write_reg(pcie->base, 0, PCIETCTLR);
+
+	/* Set endpoint mode */
+	rcar_pci_write_reg(pcie->base, 0, PCIEMSR);
+
+	/* Initialize default capabilities. */
+	rcar_rmw32(pcie->base, REXPCAP(0), 0xff, PCI_CAP_ID_EXP);
+	rcar_rmw32(pcie->base, REXPCAP(PCI_EXP_FLAGS),
+		   PCI_EXP_FLAGS_TYPE, PCI_EXP_TYPE_ENDPOINT << 4);
+	rcar_rmw32(pcie->base, RCONF(PCI_HEADER_TYPE), 0x7f,
+		   PCI_HEADER_TYPE_NORMAL);
+
+	/* Write out the physical slot number = 0 */
+	rcar_rmw32(pcie->base, REXPCAP(PCI_EXP_SLTCAP), PCI_EXP_SLTCAP_PSN, 0);
+
+	val = rcar_pci_read_reg(pcie->base, EXPCAP(1));
+	/* device supports fixed 128 bytes MPSS */
+	val &= ~GENMASK(2, 0);
+	/* L1 to L0 transition latency no time limit */
+	val |= GENMASK(11, 9);
+	/* L0s to L0 transistion no time limit */
+	val |= GENMASK(8, 6);
+	rcar_pci_write_reg(pcie->base, val, EXPCAP(1));
+
+	val = rcar_pci_read_reg(pcie->base, EXPCAP(2));
+	/* read requests size 128 bytes */
+	val &= ~GENMASK(14, 12);
+	/* payload size 128 bytes */
+	val &= ~GENMASK(7, 5);
+	/* disable relaxed ordering transaction */
+	val &= ~BIT(4);
+	rcar_pci_write_reg(pcie->base, val, EXPCAP(2));
+
+	val = rcar_pci_read_reg(pcie->base, EXPCAP(4));
+	/* disable ASPM control */
+	val &= ~GENMASK(1, 0);
+	rcar_pci_write_reg(pcie->base, val, EXPCAP(4));
+
+	/* Set target link speed to 5.0 GT/s */
+	rcar_rmw32(pcie->base, EXPCAP(12), PCI_EXP_LNKSTA_CLS,
+		   PCI_EXP_LNKSTA_CLS_5_0GB);
+
+	/* Set the completion timer timeout to the maximum 50ms. */
+	rcar_rmw32(pcie->base, TLCTLR + 1, 0x3f, 50);
+
+	/* Terminate list of capabilities (Next Capability Offset=0) */
+	rcar_rmw32(pcie->base, RVCCAP(0), 0xfff00000, 0);
+
+	/* flush modifications */
+	wmb();
+}
+
+static int rcar_pcie_parse_outbound_ranges(struct rcar_pcie *pcie,
+					   struct platform_device *pdev)
+{
+	struct of_pci_outbound_range range;
+	struct of_pci_range_parser parser;
+	char outbound_name[10];
+	struct device_node *np;
+	unsigned int i = 0;
+
+	np = pdev->dev.of_node;
+	if (of_pci_outbound_range_parser_init(&parser, np))
+		return -EINVAL;
+
+	pcie->num_ob_windows = 0;
+	/* Get the outbound-ranges from DT */
+	for_each_of_pci_outbound_range(&parser, &range) {
+		sprintf(outbound_name, "memory%u", i);
+		if (!devm_request_mem_region(&pdev->dev, range.cpu_addr,
+					     range.size, outbound_name)) {
+			dev_err(pcie->dev, "Cannot request memory region %s.\n",
+				outbound_name);
+			return -EIO;
+		}
+
+		pcie->ob_window[i].phys_base = range.cpu_addr;
+		pcie->ob_window[i].size = range.size;
+		pcie->ob_window[i].flags = range.flags;
+		i++;
+	}
+	pcie->num_ob_windows = i;
+
+	return 0;
+}
+
+static int rcar_pcie_ep_get_pdata(struct rcar_pcie *pcie,
+				  struct platform_device *pdev)
+{
+	struct pci_epc_mem_window *window;
+	struct device *dev = pcie->dev;
+	struct resource res;
+	int err;
+
+	err = of_address_to_resource(dev->of_node, 0, &res);
+	if (err)
+		return err;
+	pcie->base = devm_ioremap_resource(dev, &res);
+	if (IS_ERR(pcie->base))
+		return PTR_ERR(pcie->base);
+
+	pcie->ob_window = devm_kcalloc(dev, MAX_NR_OUTBOUND_MAPS,
+				       sizeof(*window), GFP_KERNEL);
+	if (!pcie->ob_window)
+		return -ENOMEM;
+
+	rcar_pcie_parse_outbound_ranges(pcie, pdev);
+
+	err = of_property_read_u8(dev->of_node, "max-functions",
+				  &pcie->max_functions);
+	if (err < 0)
+		pcie->max_functions = 1;
+
+	return 0;
+}
+
+static int rcar_pcie_ep_write_header(struct pci_epc *epc, u8 fn,
+				     struct pci_epf_header *hdr)
+{
+	struct rcar_pcie *ep = epc_get_drvdata(epc);
+	u32 val;
+
+	if (!fn)
+		val = hdr->vendorid;
+	else
+		val = rcar_pci_read_reg(ep->base, IDSETR0);
+	val |= hdr->deviceid << DEVICE_ID_SHFIT;
+	rcar_pci_write_reg(ep->base, val, IDSETR0);
+
+	val = hdr->revid;
+	val |= hdr->progif_code << 8;
+	val |= hdr->subclass_code << 16;
+	val |= hdr->baseclass_code << 24;
+	rcar_pci_write_reg(ep->base, val, IDSETR1);
+
+	if (!fn)
+		val = hdr->subsys_vendor_id;
+	else
+		val = rcar_pci_read_reg(ep->base, SUBIDSETR);
+	val |= hdr->subsys_id << 16;
+	rcar_pci_write_reg(ep->base, val, SUBIDSETR);
+
+	if (hdr->interrupt_pin > PCI_INTERRUPT_INTA)
+		return -EINVAL;
+	val = rcar_pci_read_reg(ep->base, PCICONF(15));
+	val |= (hdr->interrupt_pin << 8);
+	rcar_pci_write_reg(ep->base, val, PCICONF(15));
+
+	return 0;
+}
+
+static int rcar_pcie_ep_set_bar(struct pci_epc *epc, u8 func_no,
+				struct pci_epf_bar *epf_bar)
+{
+	struct rcar_pcie *ep = epc_get_drvdata(epc);
+	dma_addr_t cpu_addr = epf_bar->phys_addr;
+	int flags = epf_bar->flags | LAR_ENABLE | LAM_64BIT;
+	enum pci_barno bar = epf_bar->barno;
+	u64 size = 1ULL << fls64(epf_bar->size - 1);
+	u32 mask;
+	int idx;
+	int err;
+
+	idx = find_first_zero_bit(ep->ib_window_map, ep->num_ib_windows);
+	if (idx >= ep->num_ib_windows) {
+		dev_err(ep->dev, "no free inbound window\n");
+		return -EINVAL;
+	}
+
+	if ((flags & PCI_BASE_ADDRESS_SPACE) == PCI_BASE_ADDRESS_SPACE_IO)
+		flags |= IO_SPACE;
+
+	ep->bar_to_atu[bar] = idx;
+	/* use 64 bit bars */
+	set_bit(idx, ep->ib_window_map);
+	set_bit(idx + 1, ep->ib_window_map);
+
+	if (cpu_addr > 0) {
+		unsigned long nr_zeros = __ffs64(cpu_addr);
+		u64 alignment = 1ULL << nr_zeros;
+
+		size = min(size, alignment);
+	} else {
+		size = size;
+	}
+
+	size = min(size, 1ULL << 32);
+
+	mask = roundup_pow_of_two(size) - 1;
+	mask &= ~0xf;
+
+	rcar_pcie_set_inbound(ep->base, cpu_addr,
+			      0x0, mask | flags, idx, false);
+
+	err = rcar_pcie_wait_for_phyrdy(ep->base);
+	if (err) {
+		dev_err(ep->dev, "phy not ready\n");
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+static void rcar_pcie_ep_clear_bar(struct pci_epc *epc, u8 fn,
+				   struct pci_epf_bar *epf_bar)
+{
+	struct rcar_pcie *ep = epc_get_drvdata(epc);
+	enum pci_barno bar = epf_bar->barno;
+	u32 atu_index = ep->bar_to_atu[bar];
+
+	rcar_pcie_set_inbound(ep->base, 0x0, 0x0, 0x0, bar, false);
+
+	clear_bit(atu_index, ep->ib_window_map);
+	clear_bit(atu_index + 1, ep->ib_window_map);
+}
+
+static int rcar_pcie_ep_map_addr(struct pci_epc *epc, u8 fn,
+				 phys_addr_t addr, int window,
+				 u64 pci_addr, size_t size)
+{
+	struct rcar_pcie *ep = epc_get_drvdata(epc);
+	struct resource res;
+	int err;
+
+	/* check if we have a link. */
+	err = rcar_pcie_wait_for_dl(ep->base);
+	if (err) {
+		dev_err(ep->dev, "link not up\n");
+		memset(&res, 0x0, sizeof(res));
+		rcar_pcie_set_outbound(window, ep->base, &res, false);
+		return err;
+	}
+
+	if (window >= ep->num_ob_windows) {
+		dev_err(ep->dev, "no free outbound window\n");
+		return -EINVAL;
+	}
+
+	memset(&res, 0x0, sizeof(res));
+	res.start = pci_addr;
+	res.end = pci_addr + size - 1;
+	res.flags = IORESOURCE_MEM;
+
+	rcar_pcie_set_outbound(window, ep->base, &res, false);
+
+	ep->ob_addr[window] = addr;
+
+	return 0;
+}
+
+static void rcar_pcie_ep_unmap_addr(struct pci_epc *epc, u8 fn,
+				    phys_addr_t addr)
+{
+	struct rcar_pcie *ep = epc_get_drvdata(epc);
+	struct resource res;
+	int idx;
+
+	for (idx = 0; idx < ep->num_ob_windows; idx++)
+		if (ep->ob_addr[idx] == addr)
+			break;
+
+	if (idx >= ep->num_ob_windows)
+		return;
+
+	memset(&res, 0x0, sizeof(res));
+	rcar_pcie_set_outbound(idx, ep->base, &res, false);
+
+	ep->ob_addr[idx] = 0;
+}
+
+static int rcar_pcie_ep_assert_intx(struct rcar_pcie *ep, u8 fn, u8 intx)
+{
+	u32 val;
+
+	val = rcar_pci_read_reg(ep->base, PCIEMSITXR);
+	if ((val & PCI_MSI_FLAGS_ENABLE)) {
+		dev_err(ep->dev, "MSI is enabled, cannot assert INTx\n");
+		return -EINVAL;
+	}
+
+	val = rcar_pci_read_reg(ep->base, PCICONF(1));
+	if ((val & INTDIS_SHIFT)) {
+		dev_err(ep->dev, "INTx message transmission is disabled\n");
+		return -EINVAL;
+	}
+
+	val = rcar_pci_read_reg(ep->base, PCIEINTXR);
+	if ((val & ASTINTX_SHIFT)) {
+		dev_err(ep->dev, "INTx is already asserted\n");
+		return -EINVAL;
+	}
+
+	val |= ASTINTX_SHIFT;
+	rcar_pci_write_reg(ep->base, val, PCIEINTXR);
+	mdelay(1);
+	val = rcar_pci_read_reg(ep->base, PCIEINTXR);
+	val &= ~ASTINTX_SHIFT;
+	rcar_pci_write_reg(ep->base, val, PCIEINTXR);
+
+	return 0;
+}
+
+static int rcar_pcie_ep_raise_irq(struct pci_epc *epc, u8 fn,
+				  enum pci_epc_irq_type type,
+				  u16 interrupt_num)
+{
+	struct rcar_pcie *ep = epc_get_drvdata(epc);
+
+	switch (type) {
+	case PCI_EPC_IRQ_LEGACY:
+		return rcar_pcie_ep_assert_intx(ep, fn, 0);
+	default:
+		return -EINVAL;
+	}
+}
+
+static int rcar_pcie_ep_start(struct pci_epc *epc)
+{
+	struct rcar_pcie *ep = epc_get_drvdata(epc);
+
+	rcar_pci_write_reg(ep->base, CFINIT, PCIETCTLR);
+
+	return 0;
+}
+
+static void rcar_pcie_ep_stop(struct pci_epc *epc)
+{
+	struct rcar_pcie *ep = epc_get_drvdata(epc);
+
+	rcar_pci_write_reg(ep->base, 0, PCIETCTLR);
+}
+
+static const struct pci_epc_features rcar_pcie_epc_features = {
+	.linkup_notifier = false,
+	.msi_capable = false,
+	.msix_capable = false,
+	/* use 64-bit bars so mark bar1/3/5 as reserved */
+	.reserved_bar = 1 << BAR_1 | 1 << BAR_3 | 1 << BAR_5,
+	.bar_fixed_64bit =  (1 << BAR_0) | (1 << BAR_2) | (1 << BAR_4),
+	.bar_fixed_size[0] = 128,
+	.bar_fixed_size[2] = 256,
+	.bar_fixed_size[4] = 256,
+};
+
+static const struct pci_epc_features*
+rcar_pcie_ep_get_features(struct pci_epc *epc, u8 func_no)
+{
+	return &rcar_pcie_epc_features;
+}
+
+static const struct pci_epc_ops rcar_pcie_epc_ops = {
+	.write_header	= rcar_pcie_ep_write_header,
+	.set_bar	= rcar_pcie_ep_set_bar,
+	.clear_bar	= rcar_pcie_ep_clear_bar,
+	.map_addr	= rcar_pcie_ep_map_addr,
+	.unmap_addr	= rcar_pcie_ep_unmap_addr,
+	.raise_irq	= rcar_pcie_ep_raise_irq,
+	.start		= rcar_pcie_ep_start,
+	.stop		= rcar_pcie_ep_stop,
+	.get_features	= rcar_pcie_ep_get_features,
+};
+
+static const struct of_device_id rcar_pcie_ep_of_match[] = {
+	{
+		.compatible = "renesas,pcie-ep-rcar-gen3"
+	},
+	{},
+};
+
+static int rcar_pcie_ep_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct rcar_pcie *pcie;
+	struct pci_epc *epc;
+	int err;
+
+	pcie = devm_kzalloc(dev, sizeof(*pcie), GFP_KERNEL);
+	if (!pcie)
+		return -ENOMEM;
+
+	pcie->dev = dev;
+
+	pm_runtime_enable(pcie->dev);
+	err = pm_runtime_get_sync(pcie->dev);
+	if (err < 0) {
+		dev_err(pcie->dev, "pm_runtime_get_sync failed\n");
+		goto err_pm_disable;
+	}
+
+	err = rcar_pcie_ep_get_pdata(pcie, pdev);
+	if (err < 0) {
+		dev_err(dev, "failed to request resources: %d\n", err);
+		goto err_pm_put;
+	}
+
+	pcie->num_ib_windows = MAX_NR_INBOUND_MAPS;
+	pcie->ib_window_map =
+			devm_kcalloc(dev, BITS_TO_LONGS(pcie->num_ib_windows),
+				     sizeof(long), GFP_KERNEL);
+	if (!pcie->ib_window_map) {
+		err = -ENOMEM;
+		dev_err(dev, "failed to allocate memory for inbound map\n");
+		goto err_pm_put;
+	}
+
+	pcie->ob_addr = devm_kcalloc(dev, pcie->num_ob_windows,
+				     sizeof(*pcie->ob_addr), GFP_KERNEL);
+	if (!pcie->ob_addr) {
+		err = -ENOMEM;
+		dev_err(dev, "failed to allocate memory for outbound memory pointers\n");
+		goto err_pm_put;
+	}
+
+	epc = devm_pci_epc_create(dev, &rcar_pcie_epc_ops);
+	if (IS_ERR(epc)) {
+		dev_err(dev, "failed to create epc device\n");
+		err = PTR_ERR(epc);
+		goto err_pm_put;
+	}
+
+	epc->max_functions = pcie->max_functions;
+	pcie->epc = epc;
+	epc_set_drvdata(epc, pcie);
+
+	err = pci_epc_mem_init(epc, pcie->ob_window, pcie->num_ob_windows);
+	if (err < 0) {
+		dev_err(dev, "failed to initialize the epc memory space\n");
+		goto err_pm_put;
+	}
+
+	rcar_pcie_ep_hw_init(pcie);
+
+	return 0;
+
+err_pm_put:
+	pm_runtime_put(dev);
+
+err_pm_disable:
+	pm_runtime_disable(dev);
+
+	return err;
+}
+
+static struct platform_driver rcar_pcie_ep_driver = {
+	.driver = {
+		.name = "rcar-pcie-ep",
+		.of_match_table = rcar_pcie_ep_of_match,
+		.suppress_bind_attrs = true,
+	},
+	.probe = rcar_pcie_ep_probe,
+};
+builtin_platform_driver(rcar_pcie_ep_driver);
-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

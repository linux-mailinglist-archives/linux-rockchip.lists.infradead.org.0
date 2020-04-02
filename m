Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3761B19CA58
	for <lists+linux-rockchip@lfdr.de>; Thu,  2 Apr 2020 21:41:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=lct9iM9lq0Cecbx1XCW/1ElerUoxFYmuCgbJOXdws4c=; b=gzcU9xDRIGYV6bgYoRVmYIVlLw
	5+M+TBdKMhVch1THzfZxjjUHywqwuCu4OTl052YTcP4mtVfaRldzDHj/MPLfignEC+v5jQUO7ENHb
	LHcbbUjq1jktf7t1vT4NRmSWfrI+q06svqgH76WBBQxyOJfP/DMT7i3xzayuRFeI2pz5OpV245RYH
	NcKjZtFPTlvA/DEIAj7JOa3sLzjLQ35vR/nUU/xmvkUBfVwFgidcKdShXaigmhUpTJ/Tc1mtVGWcc
	8mrMpGcW6tpD5mhzUZvzlj28SAoG+fljQu0BY+MJufhsFELlFQlxUG500JobsBjy0gSI1zulTASXy
	q+v5TIfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jK5ie-0001Sh-Vc; Thu, 02 Apr 2020 19:41:40 +0000
Received: from relmlor1.renesas.com ([210.160.252.171]
 helo=relmlie5.idc.renesas.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jK5gd-0005hl-E6; Thu, 02 Apr 2020 19:39:39 +0000
X-IronPort-AV: E=Sophos;i="5.72,336,1580742000"; d="scan'208";a="43555699"
Received: from unknown (HELO relmlir6.idc.renesas.com) ([10.200.68.152])
 by relmlie5.idc.renesas.com with ESMTP; 03 Apr 2020 04:39:34 +0900
Received: from localhost.localdomain (unknown [10.226.36.204])
 by relmlir6.idc.renesas.com (Postfix) with ESMTP id 2903E40C4F6C;
 Fri,  3 Apr 2020 04:39:27 +0900 (JST)
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
Subject: [PATCH v6 06/11] PCI: endpoint: Add support to handle multiple base
 for mapping outbound memory
Date: Thu,  2 Apr 2020 20:38:34 +0100
Message-Id: <1585856319-4380-7-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1585856319-4380-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <1585856319-4380-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_123935_960451_F71BEEEF 
X-CRM114-Status: GOOD (  24.15  )
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

R-Car PCIe controller has support to map multiple memory regions for
mapping the outbound memory in local system also the controller limits
single allocation for each region (that is, once a chunk is used from the
region it cannot be used to allocate a new one). This features inspires to
add support for handling multiple memory bases in endpoint framework.

With this patch pci_epc_mem_init() initializes address space for endpoint
controller which support single window and whereas __pci_epc_mem_init()
now accepts pointer to multiple windows supported by endpoint controller.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
 .../pci/controller/cadence/pcie-cadence-ep.c  |   3 +-
 .../pci/controller/dwc/pcie-designware-ep.c   |  16 +-
 drivers/pci/controller/pcie-rockchip-ep.c     |   2 +-
 drivers/pci/endpoint/pci-epc-mem.c            | 195 ++++++++++++------
 include/linux/pci-epc.h                       |  39 ++--
 5 files changed, 174 insertions(+), 81 deletions(-)

diff --git a/drivers/pci/controller/cadence/pcie-cadence-ep.c b/drivers/pci/controller/cadence/pcie-cadence-ep.c
index 1c173dad67d1..d62eec6bbbbb 100644
--- a/drivers/pci/controller/cadence/pcie-cadence-ep.c
+++ b/drivers/pci/controller/cadence/pcie-cadence-ep.c
@@ -450,7 +450,8 @@ int cdns_pcie_ep_setup(struct cdns_pcie_ep *ep)
 		epc->max_functions = 1;
 
 	ret = pci_epc_mem_init(epc, pcie->mem_res->start,
-			       resource_size(pcie->mem_res));
+			       resource_size(pcie->mem_res),
+			       PAGE_SIZE);
 	if (ret < 0) {
 		dev_err(dev, "failed to initialize the memory space\n");
 		goto err_init;
diff --git a/drivers/pci/controller/dwc/pcie-designware-ep.c b/drivers/pci/controller/dwc/pcie-designware-ep.c
index 1cdcbd102ce8..a78902cbf2f0 100644
--- a/drivers/pci/controller/dwc/pcie-designware-ep.c
+++ b/drivers/pci/controller/dwc/pcie-designware-ep.c
@@ -412,11 +412,11 @@ int dw_pcie_ep_raise_msi_irq(struct dw_pcie_ep *ep, u8 func_no,
 		reg = ep->msi_cap + PCI_MSI_DATA_32;
 		msg_data = dw_pcie_readw_dbi(pci, reg);
 	}
-	aligned_offset = msg_addr_lower & (epc->mem->page_size - 1);
+	aligned_offset = msg_addr_lower & (epc->mem->window.page_size - 1);
 	msg_addr = ((u64)msg_addr_upper) << 32 |
 			(msg_addr_lower & ~aligned_offset);
 	ret = dw_pcie_ep_map_addr(epc, func_no, ep->msi_mem_phys, msg_addr,
-				  epc->mem->page_size);
+				  epc->mem->window.page_size);
 	if (ret)
 		return ret;
 
@@ -459,9 +459,9 @@ int dw_pcie_ep_raise_msix_irq(struct dw_pcie_ep *ep, u8 func_no,
 		return -EPERM;
 	}
 
-	aligned_offset = msg_addr & (epc->mem->page_size - 1);
+	aligned_offset = msg_addr & (epc->mem->window.page_size - 1);
 	ret = dw_pcie_ep_map_addr(epc, func_no, ep->msi_mem_phys,  msg_addr,
-				  epc->mem->page_size);
+				  epc->mem->window.page_size);
 	if (ret)
 		return ret;
 
@@ -477,7 +477,7 @@ void dw_pcie_ep_exit(struct dw_pcie_ep *ep)
 	struct pci_epc *epc = ep->epc;
 
 	pci_epc_mem_free_addr(epc, ep->msi_mem_phys, ep->msi_mem,
-			      epc->mem->page_size);
+			      epc->mem->window.page_size);
 
 	pci_epc_mem_exit(epc);
 }
@@ -610,15 +610,15 @@ int dw_pcie_ep_init(struct dw_pcie_ep *ep)
 	if (ret < 0)
 		epc->max_functions = 1;
 
-	ret = __pci_epc_mem_init(epc, ep->phys_base, ep->addr_size,
-				 ep->page_size);
+	ret = pci_epc_mem_init(epc, ep->phys_base, ep->addr_size,
+			       ep->page_size);
 	if (ret < 0) {
 		dev_err(dev, "Failed to initialize address space\n");
 		return ret;
 	}
 
 	ep->msi_mem = pci_epc_mem_alloc_addr(epc, &ep->msi_mem_phys,
-					     epc->mem->page_size);
+					     epc->mem->window.page_size);
 	if (!ep->msi_mem) {
 		dev_err(dev, "Failed to reserve memory for MSI/MSI-X\n");
 		return -ENOMEM;
diff --git a/drivers/pci/controller/pcie-rockchip-ep.c b/drivers/pci/controller/pcie-rockchip-ep.c
index d743b0a48988..5eaf36629a75 100644
--- a/drivers/pci/controller/pcie-rockchip-ep.c
+++ b/drivers/pci/controller/pcie-rockchip-ep.c
@@ -615,7 +615,7 @@ static int rockchip_pcie_ep_probe(struct platform_device *pdev)
 	rockchip_pcie_write(rockchip, BIT(0), PCIE_CORE_PHY_FUNC_CFG);
 
 	err = pci_epc_mem_init(epc, rockchip->mem_res->start,
-			       resource_size(rockchip->mem_res));
+			       resource_size(rockchip->mem_res), PAGE_SIZE);
 	if (err < 0) {
 		dev_err(dev, "failed to initialize the memory space\n");
 		goto err_uninit_port;
diff --git a/drivers/pci/endpoint/pci-epc-mem.c b/drivers/pci/endpoint/pci-epc-mem.c
index abfac1109a13..87effe825f81 100644
--- a/drivers/pci/endpoint/pci-epc-mem.c
+++ b/drivers/pci/endpoint/pci-epc-mem.c
@@ -23,7 +23,7 @@
 static int pci_epc_mem_get_order(struct pci_epc_mem *mem, size_t size)
 {
 	int order;
-	unsigned int page_shift = ilog2(mem->page_size);
+	unsigned int page_shift = ilog2(mem->window.page_size);
 
 	size--;
 	size >>= page_shift;
@@ -38,61 +38,95 @@ static int pci_epc_mem_get_order(struct pci_epc_mem *mem, size_t size)
 /**
  * __pci_epc_mem_init() - initialize the pci_epc_mem structure
  * @epc: the EPC device that invoked pci_epc_mem_init
- * @phys_base: the physical address of the base
- * @size: the size of the address space
- * @page_size: size of each page
+ * @windows: pointer to windows supported by the device
+ * @num_windows: number of windows device supports
  *
  * Invoke to initialize the pci_epc_mem structure used by the
  * endpoint functions to allocate mapped PCI address.
  */
-int __pci_epc_mem_init(struct pci_epc *epc, phys_addr_t phys_base, size_t size,
-		       size_t page_size)
+int __pci_epc_mem_init(struct pci_epc *epc, struct pci_epc_mem_window *windows,
+		       unsigned int num_windows)
 {
-	int ret;
-	struct pci_epc_mem *mem;
-	unsigned long *bitmap;
+	struct pci_epc_mem *mem = NULL;
+	unsigned long *bitmap = NULL;
 	unsigned int page_shift;
-	int pages;
+	size_t page_size;
 	int bitmap_size;
+	int pages;
+	int ret;
+	int i;
 
-	if (page_size < PAGE_SIZE)
-		page_size = PAGE_SIZE;
+	epc->num_windows = 0;
 
-	page_shift = ilog2(page_size);
-	pages = size >> page_shift;
-	bitmap_size = BITS_TO_LONGS(pages) * sizeof(long);
+	if (!windows || !num_windows)
+		return -EINVAL;
 
-	mem = kzalloc(sizeof(*mem), GFP_KERNEL);
-	if (!mem) {
-		ret = -ENOMEM;
-		goto err;
-	}
+	epc->windows = kcalloc(num_windows, sizeof(*mem), GFP_KERNEL);
+	if (!epc->windows)
+		return -ENOMEM;
 
-	bitmap = kzalloc(bitmap_size, GFP_KERNEL);
-	if (!bitmap) {
-		ret = -ENOMEM;
-		goto err_mem;
-	}
+	for (i = 0; i < num_windows; i++) {
+		page_size = windows[i].page_size;
+		if (page_size < PAGE_SIZE)
+			page_size = PAGE_SIZE;
+		page_shift = ilog2(page_size);
+		pages = windows[i].size >> page_shift;
+		bitmap_size = BITS_TO_LONGS(pages) * sizeof(long);
+
+		mem = kzalloc(sizeof(*mem), GFP_KERNEL);
+		if (!mem) {
+			ret = -ENOMEM;
+			i -= 1;
+			goto err_mem;
+		}
+
+		bitmap = kzalloc(bitmap_size, GFP_KERNEL);
+		if (!bitmap) {
+			ret = -ENOMEM;
+			kfree(mem);
+			i -= 1;
+			goto err_mem;
+		}
 
-	mem->bitmap = bitmap;
-	mem->phys_base = phys_base;
-	mem->page_size = page_size;
-	mem->pages = pages;
-	mem->size = size;
-	mutex_init(&mem->lock);
+		mem->window.phys_base = windows[i].phys_base;
+		mem->window.size = windows[i].size;
+		mem->window.page_size = page_size;
+		mem->bitmap = bitmap;
+		mem->pages = pages;
+		mutex_init(&mem->lock);
+		epc->windows[i] = mem;
+	}
 
-	epc->mem = mem;
+	epc->mem = epc->windows[0];
+	epc->num_windows = num_windows;
 
 	return 0;
 
 err_mem:
-	kfree(mem);
+	for (; i >= 0; i--) {
+		mem = epc->windows[i];
+		kfree(mem->bitmap);
+		kfree(mem);
+	}
+	kfree(epc->windows);
 
-err:
-return ret;
+	return ret;
 }
 EXPORT_SYMBOL_GPL(__pci_epc_mem_init);
 
+int pci_epc_mem_init(struct pci_epc *epc, phys_addr_t base,
+		     size_t size, size_t page_size)
+{
+	struct pci_epc_mem_window mem_window;
+
+	mem_window.phys_base = base;
+	mem_window.size = size;
+	mem_window.page_size = page_size;
+
+	return __pci_epc_mem_init(epc, &mem_window, 1);
+}
+EXPORT_SYMBOL_GPL(pci_epc_mem_init);
+
 /**
  * pci_epc_mem_exit() - cleanup the pci_epc_mem structure
  * @epc: the EPC device that invoked pci_epc_mem_exit
@@ -102,11 +136,22 @@ EXPORT_SYMBOL_GPL(__pci_epc_mem_init);
  */
 void pci_epc_mem_exit(struct pci_epc *epc)
 {
-	struct pci_epc_mem *mem = epc->mem;
+	struct pci_epc_mem *mem;
+	int i;
+
+	if (!epc->num_windows)
+		return;
+
+	for (i = 0; i <= epc->num_windows; i++) {
+		mem = epc->windows[i];
+		kfree(mem->bitmap);
+		kfree(mem);
+	}
+	kfree(epc->windows);
 
+	epc->windows = NULL;
 	epc->mem = NULL;
-	kfree(mem->bitmap);
-	kfree(mem);
+	epc->num_windows = 0;
 }
 EXPORT_SYMBOL_GPL(pci_epc_mem_exit);
 
@@ -122,31 +167,56 @@ EXPORT_SYMBOL_GPL(pci_epc_mem_exit);
 void __iomem *pci_epc_mem_alloc_addr(struct pci_epc *epc,
 				     phys_addr_t *phys_addr, size_t size)
 {
-	int pageno;
 	void __iomem *virt_addr = NULL;
-	struct pci_epc_mem *mem = epc->mem;
-	unsigned int page_shift = ilog2(mem->page_size);
+	struct pci_epc_mem *mem;
+	unsigned int page_shift;
+	int pageno = -EINVAL;
 	int order;
+	int i;
 
-	size = ALIGN(size, mem->page_size);
-	order = pci_epc_mem_get_order(mem, size);
-
-	mutex_lock(&mem->lock);
-	pageno = bitmap_find_free_region(mem->bitmap, mem->pages, order);
-	if (pageno < 0)
-		goto ret;
+	for (i = 0; i < epc->num_windows; i++) {
+		mem = epc->windows[i];
+		mutex_lock(&mem->lock);
+		size = ALIGN(size, mem->window.page_size);
+		order = pci_epc_mem_get_order(mem, size);
 
-	*phys_addr = mem->phys_base + ((phys_addr_t)pageno << page_shift);
-	virt_addr = ioremap(*phys_addr, size);
-	if (!virt_addr)
-		bitmap_release_region(mem->bitmap, pageno, order);
+		pageno = bitmap_find_free_region(mem->bitmap, mem->pages,
+						 order);
+		if (pageno >= 0) {
+			page_shift = ilog2(mem->window.page_size);
+			*phys_addr = mem->window.phys_base +
+				((phys_addr_t)pageno << page_shift);
+			virt_addr = ioremap(*phys_addr, size);
+			if (!virt_addr)
+				bitmap_release_region(mem->bitmap,
+						      pageno, order);
+			mutex_unlock(&mem->lock);
+			return virt_addr;
+		}
+		mutex_unlock(&mem->lock);
+	}
 
-ret:
-	mutex_unlock(&mem->lock);
 	return virt_addr;
 }
 EXPORT_SYMBOL_GPL(pci_epc_mem_alloc_addr);
 
+struct pci_epc_mem *pci_epc_get_matching_window(struct pci_epc *epc,
+						phys_addr_t phys_addr)
+{
+	struct pci_epc_mem *mem;
+	int i;
+
+	for (i = 0; i < epc->num_windows; i++) {
+		mem = epc->windows[i];
+
+		if (phys_addr >= mem->window.phys_base &&
+		    phys_addr < (mem->window.phys_base + mem->window.size))
+			return mem;
+	}
+
+	return NULL;
+}
+
 /**
  * pci_epc_mem_free_addr() - free the allocated memory address
  * @epc: the EPC device on which memory was allocated
@@ -159,14 +229,23 @@ EXPORT_SYMBOL_GPL(pci_epc_mem_alloc_addr);
 void pci_epc_mem_free_addr(struct pci_epc *epc, phys_addr_t phys_addr,
 			   void __iomem *virt_addr, size_t size)
 {
+	struct pci_epc_mem *mem;
+	unsigned int page_shift;
+	size_t page_size;
 	int pageno;
-	struct pci_epc_mem *mem = epc->mem;
-	unsigned int page_shift = ilog2(mem->page_size);
 	int order;
 
+	mem = pci_epc_get_matching_window(epc, phys_addr);
+	if (!mem) {
+		pr_err("failed to get matching window\n");
+		return;
+	}
+
+	page_size = mem->window.page_size;
+	page_shift = ilog2(page_size);
 	iounmap(virt_addr);
-	pageno = (phys_addr - mem->phys_base) >> page_shift;
-	size = ALIGN(size, mem->page_size);
+	pageno = (phys_addr - mem->window.phys_base) >> page_shift;
+	size = ALIGN(size, page_size);
 	order = pci_epc_mem_get_order(mem, size);
 	mutex_lock(&mem->lock);
 	bitmap_release_region(mem->bitmap, pageno, order);
diff --git a/include/linux/pci-epc.h b/include/linux/pci-epc.h
index e0ed9d01f6e5..d5da11cf0f2a 100644
--- a/include/linux/pci-epc.h
+++ b/include/linux/pci-epc.h
@@ -65,20 +65,28 @@ struct pci_epc_ops {
 	struct module *owner;
 };
 
+/**
+ * struct pci_epc_mem_window - address window of the endpoint controller
+ * @phys_base: physical base address of the PCI address window
+ * @size: the size of the PCI address window
+ * @page_size: size of each page
+ */
+struct pci_epc_mem_window {
+	phys_addr_t	phys_base;
+	size_t		size;
+	size_t		page_size;
+};
+
 /**
  * struct pci_epc_mem - address space of the endpoint controller
- * @phys_base: physical base address of the PCI address space
- * @size: the size of the PCI address space
+ * @window: address window of the endpoint controller
  * @bitmap: bitmap to manage the PCI address space
- * @pages: number of bits representing the address region
- * @page_size: size of each page
  * @lock: mutex to protect bitmap
+ * @pages: number of bits representing the address region
  */
 struct pci_epc_mem {
-	phys_addr_t	phys_base;
-	size_t		size;
+	struct pci_epc_mem_window window;
 	unsigned long	*bitmap;
-	size_t		page_size;
 	int		pages;
 	/* mutex to protect against concurrent access for memory allocation*/
 	struct mutex	lock;
@@ -89,7 +97,11 @@ struct pci_epc_mem {
  * @dev: PCI EPC device
  * @pci_epf: list of endpoint functions present in this EPC device
  * @ops: function pointers for performing endpoint operations
- * @mem: address space of the endpoint controller
+ * @windows: array of address space of the endpoint controller
+ * @mem: first window of the endpoint controller, which corresponds to
+ *       default address space of the endpoint controller supporting
+ *       single window.
+ * @num_windows: number of windows supported by device
  * @max_functions: max number of functions that can be configured in this EPC
  * @group: configfs group representing the PCI EPC device
  * @lock: mutex to protect pci_epc ops
@@ -100,7 +112,9 @@ struct pci_epc {
 	struct device			dev;
 	struct list_head		pci_epf;
 	const struct pci_epc_ops	*ops;
+	struct pci_epc_mem		**windows;
 	struct pci_epc_mem		*mem;
+	unsigned int			num_windows;
 	u8				max_functions;
 	struct config_group		*group;
 	/* mutex to protect against concurrent access of EP controller */
@@ -137,9 +151,6 @@ struct pci_epc_features {
 #define devm_pci_epc_create(dev, ops)    \
 		__devm_pci_epc_create((dev), (ops), THIS_MODULE)
 
-#define pci_epc_mem_init(epc, phys_addr, size)	\
-		__pci_epc_mem_init((epc), (phys_addr), (size), PAGE_SIZE)
-
 static inline void epc_set_drvdata(struct pci_epc *epc, void *data)
 {
 	dev_set_drvdata(&epc->dev, data);
@@ -195,8 +206,10 @@ unsigned int pci_epc_get_first_free_bar(const struct pci_epc_features
 struct pci_epc *pci_epc_get(const char *epc_name);
 void pci_epc_put(struct pci_epc *epc);
 
-int __pci_epc_mem_init(struct pci_epc *epc, phys_addr_t phys_addr, size_t size,
-		       size_t page_size);
+int __pci_epc_mem_init(struct pci_epc *epc, struct pci_epc_mem_window *window,
+		       unsigned int num_windows);
+int pci_epc_mem_init(struct pci_epc *epc, phys_addr_t base,
+		     size_t size, size_t page_size);
 void pci_epc_mem_exit(struct pci_epc *epc);
 void __iomem *pci_epc_mem_alloc_addr(struct pci_epc *epc,
 				     phys_addr_t *phys_addr, size_t size);
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

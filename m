Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1C3110AA86
	for <lists+linux-rockchip@lfdr.de>; Wed, 27 Nov 2019 07:06:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bcosU4ZzB7cpxO579u+k8kF30J3dkRe/5bYvPhoDsGk=; b=n1W6Dg+uWPWfbM
	3mx0NcUKjMOrQHKrtmH79mLkHNqkkU+ZAJw1KmeQcoSImsuWENGmes12h7Aeb/wyKkAFYfUAUWigI
	3WcU2gbxtah1lvywzhQz6cmbgKzDIOwxK1nyaHAge9rLG4Dnl5q5jLvne0+ipknlNcKLKImy7Dd93
	xNFmftg9dTyJ4FCslNh35UNKEcYlYjdq0kXCjH9/mo+QYzMYJdvPFLRaRjkoQLkxDFGzSni8qbOSR
	acmKF1rZDyoGMTBQN00JkqSjv2bi98N01p+u5RDVop79cQ1WJVBWekePR8EyhgKnMAzfjf42Z4BeY
	mzZ3fWBwHCMuWHdQwH8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZqT7-0007AM-Mb; Wed, 27 Nov 2019 06:06:29 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZqT3-00079l-Ab; Wed, 27 Nov 2019 06:06:28 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id xAR667Dw026326;
 Wed, 27 Nov 2019 00:06:07 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1574834767;
 bh=gtuxN7XUN2cz1m9niC5Rtzh/VQ2wPTBJLhZUpjJtuwo=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=TV+1RzKV2xFPXfOVdI5y/vrCFyAcmQd64AN3iE1BJqTtAIjuXkObK0eiwhb40JshR
 mfzpVMGF5jmpKbo2hC7M1h5Zr9XjNjNZGC4FJj2qD+o3b1w8VIs+Mvr+wswmN7biPR
 cRO1lU2uSqr7OSfQAbKBJudLZC2kPMZKGNXrHVM4=
Received: from DFLE103.ent.ti.com (dfle103.ent.ti.com [10.64.6.24])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id xAR667EF106584;
 Wed, 27 Nov 2019 00:06:07 -0600
Received: from DFLE114.ent.ti.com (10.64.6.35) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Wed, 27
 Nov 2019 00:06:07 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Wed, 27 Nov 2019 00:06:07 -0600
Received: from [10.24.69.157] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id xAR65sdl023033;
 Wed, 27 Nov 2019 00:05:55 -0600
Subject: Re: [PATCH 2/5] pci: endpoint: add support to handle multiple base
 for mapping outbound memory
To: Lad Prabhakar <prabhakar.csengg@gmail.com>, Bjorn Helgaas
 <bhelgaas@google.com>, Rob Herring <robh+dt@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, Geert Uytterhoeven <geert+renesas@glider.be>,
 Magnus Damm <magnus.damm@gmail.com>,
 Marek Vasut <marek.vasut+renesas@gmail.com>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 <linux-pci@vger.kernel.org>
References: <20191106193609.19645-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20191106193609.19645-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Kishon Vijay Abraham I <kishon@ti.com>
Message-ID: <51563ddf-381f-3290-d9c0-82eb23aaa674@ti.com>
Date: Wed, 27 Nov 2019 11:35:12 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191106193609.19645-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_220625_455082_5A908240 
X-CRM114-Status: GOOD (  26.81  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Chris Paterson <Chris.Paterson2@renesas.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Heiko Stuebner <heiko@sntech.de>, Arnd Bergmann <arnd@arndb.de>,
 Jingoo Han <jingoohan1@gmail.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Shawn Lin <shawn.lin@rock-chips.com>, linux-kernel@vger.kernel.org, "Lad,
 Prabhakar" <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Tom Joseph <tjoseph@cadence.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Andrew Murray <andrew.murray@arm.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Prabhakar,

On 07/11/19 1:06 AM, Lad Prabhakar wrote:
> From: "Lad, Prabhakar" <prabhakar.mahadev-lad.rj@bp.renesas.com>
> 
> rcar pcie controller has support to map multiple memory regions
> for mapping the outbound memory in local system, this feature
> inspires to add support for handling multiple memory bases in
> endpoint framework. In case of multiple memory regions only chunk
> or complete region can be mapped and this window needs to be
> passed to the controller driver.

Wouldn't this result in lot of unused address and exhausting the memory regions
quickly? I think we could have a "type" associated with each of these regions
and smaller allocations could use one "type" and larger allocation could use a
different "type"? For instance we allocate memory regions for MSI interrupt and
for data transfer. We could use smaller allocations for MSI and larger
allocations for data transfers.

We could also extend the "type" for certain special requirements. For instance
I've seen platforms which have dedicated address space for high priority data
transfers (uses higher virtual channel numbers) and dedicated address space for
low priority data transfers (uses lower virtual channel numbers).

Here too we could give a special flag or type for higher priority address
regions and different type for lower priority address. While allocating, the
function drivers should provide a flag specifying the region where memory
should be allocated.

Can you add flags in struct pci_epc_mem_window and see how that comes out?

Thanks
Kishon

> 
> Signed-off-by: Lad, Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> Cc: <linux-rockchip@lists.infradead.org>
> Cc: Shawn Lin <shawn.lin@rock-chips.com>
> Cc: Heiko Stuebner <heiko@sntech.de>
> Cc: Tom Joseph <tjoseph@cadence.com>
> Cc: Jingoo Han <jingoohan1@gmail.com>
> Cc: Gustavo Pimentel <gustavo.pimentel@synopsys.com>
> ---
>  .../pci/controller/dwc/pcie-designware-ep.c   |  30 ++-
>  drivers/pci/controller/pcie-cadence-ep.c      |  11 +-
>  drivers/pci/controller/pcie-rockchip-ep.c     |  13 +-
>  drivers/pci/endpoint/functions/pci-epf-test.c |  29 +--
>  drivers/pci/endpoint/pci-epc-core.c           |   7 +-
>  drivers/pci/endpoint/pci-epc-mem.c            | 189 ++++++++++++++----
>  include/linux/pci-epc.h                       |  43 ++--
>  7 files changed, 234 insertions(+), 88 deletions(-)
> 
> diff --git a/drivers/pci/controller/dwc/pcie-designware-ep.c b/drivers/pci/controller/dwc/pcie-designware-ep.c
> index 3dd2e2697294..8d23c20b9afd 100644
> --- a/drivers/pci/controller/dwc/pcie-designware-ep.c
> +++ b/drivers/pci/controller/dwc/pcie-designware-ep.c
> @@ -195,7 +195,7 @@ static void dw_pcie_ep_unmap_addr(struct pci_epc *epc, u8 func_no,
>  }
>  
>  static int dw_pcie_ep_map_addr(struct pci_epc *epc, u8 func_no,
> -			       phys_addr_t addr,
> +			       phys_addr_t addr, int window,
>  			       u64 pci_addr, size_t size)
>  {
>  	int ret;
> @@ -367,6 +367,7 @@ int dw_pcie_ep_raise_msi_irq(struct dw_pcie_ep *ep, u8 func_no,
>  	unsigned int aligned_offset;
>  	u16 msg_ctrl, msg_data;
>  	u32 msg_addr_lower, msg_addr_upper, reg;
> +	int window = PCI_EPC_DEFAULT_WINDOW;
>  	u64 msg_addr;
>  	bool has_upper;
>  	int ret;
> @@ -390,11 +391,11 @@ int dw_pcie_ep_raise_msi_irq(struct dw_pcie_ep *ep, u8 func_no,
>  		reg = ep->msi_cap + PCI_MSI_DATA_32;
>  		msg_data = dw_pcie_readw_dbi(pci, reg);
>  	}
> -	aligned_offset = msg_addr_lower & (epc->mem->page_size - 1);
> +	aligned_offset = msg_addr_lower & (epc->mem[window]->page_size - 1);
>  	msg_addr = ((u64)msg_addr_upper) << 32 |
>  			(msg_addr_lower & ~aligned_offset);
> -	ret = dw_pcie_ep_map_addr(epc, func_no, ep->msi_mem_phys, msg_addr,
> -				  epc->mem->page_size);
> +	ret = dw_pcie_ep_map_addr(epc, func_no, ep->msi_mem_phys, window,
> +				  msg_addr, epc->mem[window]->page_size);
>  	if (ret)
>  		return ret;
>  
> @@ -416,6 +417,7 @@ int dw_pcie_ep_raise_msix_irq(struct dw_pcie_ep *ep, u8 func_no,
>  	u32 reg, msg_data, vec_ctrl;
>  	u64 tbl_addr, msg_addr, reg_u64;
>  	void __iomem *msix_tbl;
> +	int window = PCI_EPC_DEFAULT_WINDOW;
>  	int ret;
>  
>  	reg = ep->msix_cap + PCI_MSIX_TABLE;
> @@ -452,8 +454,8 @@ int dw_pcie_ep_raise_msix_irq(struct dw_pcie_ep *ep, u8 func_no,
>  		return -EPERM;
>  	}
>  
> -	ret = dw_pcie_ep_map_addr(epc, func_no, ep->msi_mem_phys, msg_addr,
> -				  epc->mem->page_size);
> +	ret = dw_pcie_ep_map_addr(epc, func_no, ep->msi_mem_phys, window,
> +				  msg_addr, epc->mem[window]->page_size);
>  	if (ret)
>  		return ret;
>  
> @@ -466,10 +468,11 @@ int dw_pcie_ep_raise_msix_irq(struct dw_pcie_ep *ep, u8 func_no,
>  
>  void dw_pcie_ep_exit(struct dw_pcie_ep *ep)
>  {
> +	int window = PCI_EPC_DEFAULT_WINDOW;
>  	struct pci_epc *epc = ep->epc;
>  
>  	pci_epc_mem_free_addr(epc, ep->msi_mem_phys, ep->msi_mem,
> -			      epc->mem->page_size);
> +			      epc->mem[window]->page_size);
>  
>  	pci_epc_mem_exit(epc);
>  }
> @@ -499,9 +502,12 @@ int dw_pcie_ep_init(struct dw_pcie_ep *ep)
>  	u32 reg;
>  	void *addr;
>  	u8 hdr_type;
> +	int window;
>  	unsigned int nbars;
>  	unsigned int offset;
>  	struct pci_epc *epc;
> +	size_t msi_page_size;
> +	struct pci_epc_mem_window mem_window;
>  	struct dw_pcie *pci = to_dw_pcie_from_ep(ep);
>  	struct device *dev = pci->dev;
>  	struct device_node *np = dev->of_node;
> @@ -574,15 +580,17 @@ int dw_pcie_ep_init(struct dw_pcie_ep *ep)
>  	if (ret < 0)
>  		epc->max_functions = 1;
>  
> -	ret = __pci_epc_mem_init(epc, ep->phys_base, ep->addr_size,
> -				 ep->page_size);
> +	mem_window.phys_base = ep->phys_base;
> +	mem_window.size = ep->addr_size;
> +	ret = __pci_epc_mem_init(epc, &mem_window, 1, ep->page_size);
>  	if (ret < 0) {
>  		dev_err(dev, "Failed to initialize address space\n");
>  		return ret;
>  	}
>  
> -	ep->msi_mem = pci_epc_mem_alloc_addr(epc, &ep->msi_mem_phys,
> -					     epc->mem->page_size);
> +	msi_page_size = epc->mem[PCI_EPC_DEFAULT_WINDOW]->page_size;
> +	ep->msi_mem = pci_epc_mem_alloc_addr(epc, &ep->msi_mem_phys, &window,
> +					     msi_page_size);
>  	if (!ep->msi_mem) {
>  		dev_err(dev, "Failed to reserve memory for MSI/MSI-X\n");
>  		return -ENOMEM;
> diff --git a/drivers/pci/controller/pcie-cadence-ep.c b/drivers/pci/controller/pcie-cadence-ep.c
> index def7820cb824..7991b38a5350 100644
> --- a/drivers/pci/controller/pcie-cadence-ep.c
> +++ b/drivers/pci/controller/pcie-cadence-ep.c
> @@ -172,7 +172,7 @@ static void cdns_pcie_ep_clear_bar(struct pci_epc *epc, u8 fn,
>  }
>  
>  static int cdns_pcie_ep_map_addr(struct pci_epc *epc, u8 fn, phys_addr_t addr,
> -				 u64 pci_addr, size_t size)
> +				 int window, u64 pci_addr, size_t size)
>  {
>  	struct cdns_pcie_ep *ep = epc_get_drvdata(epc);
>  	struct cdns_pcie *pcie = &ep->pcie;
> @@ -434,12 +434,14 @@ static int cdns_pcie_ep_probe(struct platform_device *pdev)
>  {
>  	struct device *dev = &pdev->dev;
>  	struct device_node *np = dev->of_node;
> +	struct pci_epc_mem_window mem_window;
>  	struct cdns_pcie_ep *ep;
>  	struct cdns_pcie *pcie;
>  	struct pci_epc *epc;
>  	struct resource *res;
>  	int ret;
>  	int phy_count;
> +	int window;
>  
>  	ep = devm_kzalloc(dev, sizeof(*ep), GFP_KERNEL);
>  	if (!ep)
> @@ -502,15 +504,16 @@ static int cdns_pcie_ep_probe(struct platform_device *pdev)
>  	if (of_property_read_u8(np, "max-functions", &epc->max_functions) < 0)
>  		epc->max_functions = 1;
>  
> -	ret = pci_epc_mem_init(epc, pcie->mem_res->start,
> -			       resource_size(pcie->mem_res));
> +	mem_window.phys_base = pcie->mem_res->start;
> +	mem_window.size = resource_size(pcie->mem_res);
> +	ret = pci_epc_mem_init(epc, &mem_window, 1);
>  	if (ret < 0) {
>  		dev_err(dev, "failed to initialize the memory space\n");
>  		goto err_init;
>  	}
>  
>  	ep->irq_cpu_addr = pci_epc_mem_alloc_addr(epc, &ep->irq_phys_addr,
> -						  SZ_128K);
> +						  &window, SZ_128K);
>  	if (!ep->irq_cpu_addr) {
>  		dev_err(dev, "failed to reserve memory space for MSI\n");
>  		ret = -ENOMEM;
> diff --git a/drivers/pci/controller/pcie-rockchip-ep.c b/drivers/pci/controller/pcie-rockchip-ep.c
> index d743b0a48988..d59e85c8d319 100644
> --- a/drivers/pci/controller/pcie-rockchip-ep.c
> +++ b/drivers/pci/controller/pcie-rockchip-ep.c
> @@ -256,8 +256,8 @@ static void rockchip_pcie_ep_clear_bar(struct pci_epc *epc, u8 fn,
>  }
>  
>  static int rockchip_pcie_ep_map_addr(struct pci_epc *epc, u8 fn,
> -				     phys_addr_t addr, u64 pci_addr,
> -				     size_t size)
> +				     phys_addr_t addr, int window,
> +				     u64 pci_addr, size_t size)
>  {
>  	struct rockchip_pcie_ep *ep = epc_get_drvdata(epc);
>  	struct rockchip_pcie *pcie = &ep->rockchip;
> @@ -562,11 +562,13 @@ static const struct of_device_id rockchip_pcie_ep_of_match[] = {
>  
>  static int rockchip_pcie_ep_probe(struct platform_device *pdev)
>  {
> +	struct pci_epc_mem_window mem_window;
>  	struct device *dev = &pdev->dev;
>  	struct rockchip_pcie_ep *ep;
>  	struct rockchip_pcie *rockchip;
>  	struct pci_epc *epc;
>  	size_t max_regions;
> +	int window;
>  	int err;
>  
>  	ep = devm_kzalloc(dev, sizeof(*ep), GFP_KERNEL);
> @@ -614,15 +616,16 @@ static int rockchip_pcie_ep_probe(struct platform_device *pdev)
>  	/* Only enable function 0 by default */
>  	rockchip_pcie_write(rockchip, BIT(0), PCIE_CORE_PHY_FUNC_CFG);
>  
> -	err = pci_epc_mem_init(epc, rockchip->mem_res->start,
> -			       resource_size(rockchip->mem_res));
> +	mem_window.phys_base = rockchip->mem_res->start;
> +	mem_window.size = resource_size(rockchip->mem_res);
> +	err = pci_epc_mem_init(epc, &mem_window, 1);
>  	if (err < 0) {
>  		dev_err(dev, "failed to initialize the memory space\n");
>  		goto err_uninit_port;
>  	}
>  
>  	ep->irq_cpu_addr = pci_epc_mem_alloc_addr(epc, &ep->irq_phys_addr,
> -						  SZ_128K);
> +						  &window, SZ_128K);
>  	if (!ep->irq_cpu_addr) {
>  		dev_err(dev, "failed to reserve memory space for MSI\n");
>  		err = -ENOMEM;
> diff --git a/drivers/pci/endpoint/functions/pci-epf-test.c b/drivers/pci/endpoint/functions/pci-epf-test.c
> index 5d74f81ddfe4..475228011703 100644
> --- a/drivers/pci/endpoint/functions/pci-epf-test.c
> +++ b/drivers/pci/endpoint/functions/pci-epf-test.c
> @@ -84,8 +84,10 @@ static int pci_epf_test_copy(struct pci_epf_test *epf_test)
>  	struct pci_epc *epc = epf->epc;
>  	enum pci_barno test_reg_bar = epf_test->test_reg_bar;
>  	struct pci_epf_test_reg *reg = epf_test->reg[test_reg_bar];
> +	int window;
>  
> -	src_addr = pci_epc_mem_alloc_addr(epc, &src_phys_addr, reg->size);
> +	src_addr = pci_epc_mem_alloc_addr(epc, &src_phys_addr,
> +					  &window, reg->size);
>  	if (!src_addr) {
>  		dev_err(dev, "Failed to allocate source address\n");
>  		reg->status = STATUS_SRC_ADDR_INVALID;
> @@ -93,15 +95,16 @@ static int pci_epf_test_copy(struct pci_epf_test *epf_test)
>  		goto err;
>  	}
>  
> -	ret = pci_epc_map_addr(epc, epf->func_no, src_phys_addr, reg->src_addr,
> -			       reg->size);
> +	ret = pci_epc_map_addr(epc, epf->func_no, src_phys_addr, window,
> +			       reg->src_addr, reg->size);
>  	if (ret) {
>  		dev_err(dev, "Failed to map source address\n");
>  		reg->status = STATUS_SRC_ADDR_INVALID;
>  		goto err_src_addr;
>  	}
>  
> -	dst_addr = pci_epc_mem_alloc_addr(epc, &dst_phys_addr, reg->size);
> +	dst_addr = pci_epc_mem_alloc_addr(epc, &dst_phys_addr,
> +					  &window, reg->size);
>  	if (!dst_addr) {
>  		dev_err(dev, "Failed to allocate destination address\n");
>  		reg->status = STATUS_DST_ADDR_INVALID;
> @@ -109,8 +112,8 @@ static int pci_epf_test_copy(struct pci_epf_test *epf_test)
>  		goto err_src_map_addr;
>  	}
>  
> -	ret = pci_epc_map_addr(epc, epf->func_no, dst_phys_addr, reg->dst_addr,
> -			       reg->size);
> +	ret = pci_epc_map_addr(epc, epf->func_no, dst_phys_addr, window,
> +			       reg->dst_addr, reg->size);
>  	if (ret) {
>  		dev_err(dev, "Failed to map destination address\n");
>  		reg->status = STATUS_DST_ADDR_INVALID;
> @@ -146,8 +149,9 @@ static int pci_epf_test_read(struct pci_epf_test *epf_test)
>  	struct pci_epc *epc = epf->epc;
>  	enum pci_barno test_reg_bar = epf_test->test_reg_bar;
>  	struct pci_epf_test_reg *reg = epf_test->reg[test_reg_bar];
> +	int window;
>  
> -	src_addr = pci_epc_mem_alloc_addr(epc, &phys_addr, reg->size);
> +	src_addr = pci_epc_mem_alloc_addr(epc, &phys_addr, &window, reg->size);
>  	if (!src_addr) {
>  		dev_err(dev, "Failed to allocate address\n");
>  		reg->status = STATUS_SRC_ADDR_INVALID;
> @@ -155,8 +159,8 @@ static int pci_epf_test_read(struct pci_epf_test *epf_test)
>  		goto err;
>  	}
>  
> -	ret = pci_epc_map_addr(epc, epf->func_no, phys_addr, reg->src_addr,
> -			       reg->size);
> +	ret = pci_epc_map_addr(epc, epf->func_no, phys_addr, window,
> +			       reg->src_addr, reg->size);
>  	if (ret) {
>  		dev_err(dev, "Failed to map address\n");
>  		reg->status = STATUS_SRC_ADDR_INVALID;
> @@ -193,13 +197,14 @@ static int pci_epf_test_write(struct pci_epf_test *epf_test)
>  	void __iomem *dst_addr;
>  	void *buf;
>  	phys_addr_t phys_addr;
> +	int window;
>  	struct pci_epf *epf = epf_test->epf;
>  	struct device *dev = &epf->dev;
>  	struct pci_epc *epc = epf->epc;
>  	enum pci_barno test_reg_bar = epf_test->test_reg_bar;
>  	struct pci_epf_test_reg *reg = epf_test->reg[test_reg_bar];
>  
> -	dst_addr = pci_epc_mem_alloc_addr(epc, &phys_addr, reg->size);
> +	dst_addr = pci_epc_mem_alloc_addr(epc, &phys_addr, &window, reg->size);
>  	if (!dst_addr) {
>  		dev_err(dev, "Failed to allocate address\n");
>  		reg->status = STATUS_DST_ADDR_INVALID;
> @@ -207,8 +212,8 @@ static int pci_epf_test_write(struct pci_epf_test *epf_test)
>  		goto err;
>  	}
>  
> -	ret = pci_epc_map_addr(epc, epf->func_no, phys_addr, reg->dst_addr,
> -			       reg->size);
> +	ret = pci_epc_map_addr(epc, epf->func_no, phys_addr, window,
> +			       reg->dst_addr, reg->size);
>  	if (ret) {
>  		dev_err(dev, "Failed to map address\n");
>  		reg->status = STATUS_DST_ADDR_INVALID;
> diff --git a/drivers/pci/endpoint/pci-epc-core.c b/drivers/pci/endpoint/pci-epc-core.c
> index 2091508c1620..289c266c2d90 100644
> --- a/drivers/pci/endpoint/pci-epc-core.c
> +++ b/drivers/pci/endpoint/pci-epc-core.c
> @@ -358,13 +358,15 @@ EXPORT_SYMBOL_GPL(pci_epc_unmap_addr);
>   * @epc: the EPC device on which address is allocated
>   * @func_no: the endpoint function number in the EPC device
>   * @phys_addr: physical address of the local system
> + * @window: index to the window region where PCI address will be mapped
>   * @pci_addr: PCI address to which the physical address should be mapped
>   * @size: the size of the allocation
>   *
>   * Invoke to map CPU address with PCI address.
>   */
>  int pci_epc_map_addr(struct pci_epc *epc, u8 func_no,
> -		     phys_addr_t phys_addr, u64 pci_addr, size_t size)
> +		     phys_addr_t phys_addr, int window,
> +		     u64 pci_addr, size_t size)
>  {
>  	int ret;
>  	unsigned long flags;
> @@ -376,7 +378,8 @@ int pci_epc_map_addr(struct pci_epc *epc, u8 func_no,
>  		return 0;
>  
>  	spin_lock_irqsave(&epc->lock, flags);
> -	ret = epc->ops->map_addr(epc, func_no, phys_addr, pci_addr, size);
> +	ret = epc->ops->map_addr(epc, func_no, phys_addr,
> +				 window, pci_addr, size);
>  	spin_unlock_irqrestore(&epc->lock, flags);
>  
>  	return ret;
> diff --git a/drivers/pci/endpoint/pci-epc-mem.c b/drivers/pci/endpoint/pci-epc-mem.c
> index d2b174ce15de..c955f2c97944 100644
> --- a/drivers/pci/endpoint/pci-epc-mem.c
> +++ b/drivers/pci/endpoint/pci-epc-mem.c
> @@ -39,56 +39,77 @@ static int pci_epc_mem_get_order(struct pci_epc_mem *mem, size_t size)
>   * __pci_epc_mem_init() - initialize the pci_epc_mem structure
>   * @epc: the EPC device that invoked pci_epc_mem_init
>   * @phys_base: the physical address of the base
> - * @size: the size of the address space
> + * @num_windows: number of windows device supports
>   * @page_size: size of each page
>   *
>   * Invoke to initialize the pci_epc_mem structure used by the
>   * endpoint functions to allocate mapped PCI address.
>   */
> -int __pci_epc_mem_init(struct pci_epc *epc, phys_addr_t phys_base, size_t size,
> -		       size_t page_size)
> +int __pci_epc_mem_init(struct pci_epc *epc, struct pci_epc_mem_window *windows,
> +		       int num_windows, size_t page_size)
>  {
> -	int ret;
> -	struct pci_epc_mem *mem;
> -	unsigned long *bitmap;
> +	struct pci_epc_mem *mem = NULL;
> +	unsigned long *bitmap = NULL;
>  	unsigned int page_shift;
> -	int pages;
>  	int bitmap_size;
> +	int pages;
> +	int ret;
> +	int i;
> +
> +	epc->mem_windows = 0;
> +
> +	if (!windows)
> +		return -EINVAL;
> +
> +	if (num_windows <= 0)
> +		return -EINVAL;
>  
>  	if (page_size < PAGE_SIZE)
>  		page_size = PAGE_SIZE;
>  
>  	page_shift = ilog2(page_size);
> -	pages = size >> page_shift;
> -	bitmap_size = BITS_TO_LONGS(pages) * sizeof(long);
>  
> -	mem = kzalloc(sizeof(*mem), GFP_KERNEL);
> -	if (!mem) {
> -		ret = -ENOMEM;
> -		goto err;
> -	}
> +	epc->mem = kcalloc(num_windows, sizeof(*mem), GFP_KERNEL);
> +	if (!epc->mem)
> +		return -EINVAL;
>  
> -	bitmap = kzalloc(bitmap_size, GFP_KERNEL);
> -	if (!bitmap) {
> -		ret = -ENOMEM;
> -		goto err_mem;
> -	}
> +	for (i = 0; i < num_windows; i++) {
> +		pages = windows[i].phys_base >> page_shift;
> +		bitmap_size = BITS_TO_LONGS(pages) * sizeof(long);
>  
> -	mem->bitmap = bitmap;
> -	mem->phys_base = phys_base;
> -	mem->page_size = page_size;
> -	mem->pages = pages;
> -	mem->size = size;
> +		mem = kzalloc(sizeof(*mem), GFP_KERNEL);
> +		if (!mem) {
> +			ret = -ENOMEM;
> +			goto err_mem;
> +		}
>  
> -	epc->mem = mem;
> +		bitmap = kzalloc(bitmap_size, GFP_KERNEL);
> +		if (!bitmap) {
> +			ret = -ENOMEM;
> +			goto err_mem;
> +		}
> +
> +		mem->bitmap = bitmap;
> +		mem->window.phys_base = windows[i].phys_base;
> +		mem->page_size = page_size;
> +		mem->pages = pages;
> +		mem->window.size = windows[i].size;
> +		mem->window.map_size = 0;
> +
> +		epc->mem[i] = mem;
> +	}
> +	epc->mem_windows = num_windows;
>  
>  	return 0;
>  
>  err_mem:
> -	kfree(mem);
> +	for (; i >= 0; i--) {
> +		kfree(mem->bitmap);
> +		kfree(epc->mem[i]);
> +	}
> +	kfree(epc->mem);
>  
> -err:
> -return ret;
> +	return ret;
>  }
>  EXPORT_SYMBOL_GPL(__pci_epc_mem_init);
>  
> @@ -101,48 +122,126 @@ EXPORT_SYMBOL_GPL(__pci_epc_mem_init);
>   */
>  void pci_epc_mem_exit(struct pci_epc *epc)
>  {
> -	struct pci_epc_mem *mem = epc->mem;
> +	struct pci_epc_mem *mem;
> +	int i;
> +
> +	if (!epc->mem_windows)
> +		return;
> +
> +	for (i = 0; i <= epc->mem_windows; i--) {
> +		mem = epc->mem[i];
> +		kfree(mem->bitmap);
> +		kfree(epc->mem[i]);
> +	}
> +	kfree(epc->mem);
>  
>  	epc->mem = NULL;
> -	kfree(mem->bitmap);
> -	kfree(mem);
> +	epc->mem_windows = 0;
>  }
>  EXPORT_SYMBOL_GPL(pci_epc_mem_exit);
>  
> +static int pci_epc_find_best_fit_window(struct pci_epc *epc, size_t size)
> +{
> +	size_t window_least_size = 0;
> +	int best_fit_window = -1;
> +	struct pci_epc_mem *mem;
> +	size_t actual_size;
> +	int i;
> +
> +	for (i = 0; i < epc->mem_windows; i++) {
> +		mem = epc->mem[i];
> +
> +		/* if chunk from this region is already used skip it */
> +		if (mem->window.map_size)
> +			continue;
> +
> +		actual_size = ALIGN(size, mem->page_size);
> +
> +		if (best_fit_window == -1) {
> +			best_fit_window = i;
> +			window_least_size = mem->window.size;
> +		} else {
> +			if (actual_size <= mem->window.size &&
> +			    mem->window.size < window_least_size) {
> +				best_fit_window = i;
> +				window_least_size = mem->window.size;
> +			}
> +		}
> +	}
> +
> +	return best_fit_window;
> +}
> +
>  /**
>   * pci_epc_mem_alloc_addr() - allocate memory address from EPC addr space
>   * @epc: the EPC device on which memory has to be allocated
>   * @phys_addr: populate the allocated physical address here
> + * @window: populate the window here which will be used to map PCI address
>   * @size: the size of the address space that has to be allocated
>   *
>   * Invoke to allocate memory address from the EPC address space. This
>   * is usually done to map the remote RC address into the local system.
>   */
>  void __iomem *pci_epc_mem_alloc_addr(struct pci_epc *epc,
> -				     phys_addr_t *phys_addr, size_t size)
> +				     phys_addr_t *phys_addr,
> +				     int *window, size_t size)
>  {
> +	int best_fit = PCI_EPC_DEFAULT_WINDOW;
> +	void __iomem *virt_addr = NULL;
> +	struct pci_epc_mem *mem;
> +	unsigned int page_shift;
>  	int pageno;
> -	void __iomem *virt_addr;
> -	struct pci_epc_mem *mem = epc->mem;
> -	unsigned int page_shift = ilog2(mem->page_size);
>  	int order;
>  
> +	if (epc->mem_windows <= 0)
> +		return NULL;
> +
> +	if (epc->mem_windows > 1) {
> +		best_fit = pci_epc_find_best_fit_window(epc, size);
> +		if (best_fit < 0)
> +			return NULL;
> +	}
> +
> +	mem = epc->mem[best_fit];
>  	size = ALIGN(size, mem->page_size);
> +	if (size > (mem->window.size - mem->window.map_size))
> +		return NULL;
> +	page_shift = ilog2(mem->page_size);
>  	order = pci_epc_mem_get_order(mem, size);
>  
>  	pageno = bitmap_find_free_region(mem->bitmap, mem->pages, order);
>  	if (pageno < 0)
>  		return NULL;
>  
> -	*phys_addr = mem->phys_base + ((phys_addr_t)pageno << page_shift);
> +	*phys_addr = mem->window.phys_base + (pageno << page_shift);
>  	virt_addr = ioremap(*phys_addr, size);
> -	if (!virt_addr)
> +	if (!virt_addr) {
>  		bitmap_release_region(mem->bitmap, pageno, order);
> +	} else {
> +		mem->window.map_size += size;
> +		*window = best_fit;
> +	}
>  
>  	return virt_addr;
>  }
>  EXPORT_SYMBOL_GPL(pci_epc_mem_alloc_addr);
>  
> +static int pci_epc_get_matching_window(struct pci_epc *epc,
> +				       phys_addr_t phys_addr)
> +{
> +	struct pci_epc_mem *mem;
> +	int i;
> +
> +	for (i = 0; i < epc->mem_windows; i++) {
> +		mem = epc->mem[i];
> +
> +		if (mem->window.phys_base == phys_addr)
> +			return i;
> +	}
> +
> +	return -EINVAL;
> +}
> +
>  /**
>   * pci_epc_mem_free_addr() - free the allocated memory address
>   * @epc: the EPC device on which memory was allocated
> @@ -155,16 +254,26 @@ EXPORT_SYMBOL_GPL(pci_epc_mem_alloc_addr);
>  void pci_epc_mem_free_addr(struct pci_epc *epc, phys_addr_t phys_addr,
>  			   void __iomem *virt_addr, size_t size)
>  {
> +	struct pci_epc_mem *mem;
> +	unsigned int page_shift;
> +	int window = 0;
>  	int pageno;
> -	struct pci_epc_mem *mem = epc->mem;
> -	unsigned int page_shift = ilog2(mem->page_size);
>  	int order;
>  
> +	if (epc->mem_windows > 1) {
> +		window = pci_epc_get_matching_window(epc, phys_addr);
> +		if (window < 0)
> +			return;
> +	}
> +
> +	mem = epc->mem[window];
> +	page_shift = ilog2(mem->page_size);
>  	iounmap(virt_addr);
> -	pageno = (phys_addr - mem->phys_base) >> page_shift;
> +	pageno = (phys_addr - mem->window.phys_base) >> page_shift;
>  	size = ALIGN(size, mem->page_size);
>  	order = pci_epc_mem_get_order(mem, size);
>  	bitmap_release_region(mem->bitmap, pageno, order);
> +	mem->window.map_size -= size;
>  }
>  EXPORT_SYMBOL_GPL(pci_epc_mem_free_addr);
>  
> diff --git a/include/linux/pci-epc.h b/include/linux/pci-epc.h
> index 56f1846b9d39..5e86d22dd5c5 100644
> --- a/include/linux/pci-epc.h
> +++ b/include/linux/pci-epc.h
> @@ -48,7 +48,8 @@ struct pci_epc_ops {
>  	void	(*clear_bar)(struct pci_epc *epc, u8 func_no,
>  			     struct pci_epf_bar *epf_bar);
>  	int	(*map_addr)(struct pci_epc *epc, u8 func_no,
> -			    phys_addr_t addr, u64 pci_addr, size_t size);
> +			    phys_addr_t addr, int window,
> +			    u64 pci_addr, size_t size);
>  	void	(*unmap_addr)(struct pci_epc *epc, u8 func_no,
>  			      phys_addr_t addr);
>  	int	(*set_msi)(struct pci_epc *epc, u8 func_no, u8 interrupts);
> @@ -64,17 +65,28 @@ struct pci_epc_ops {
>  	struct module *owner;
>  };
>  
> +#define PCI_EPC_DEFAULT_WINDOW		0
> +
> +/**
> + * struct pci_epc_mem_window - address window of the endpoint controller
> + * @phys_base: physical base address of the PCI address window
> + * @size: the size of the PCI address window
> + */
> +struct pci_epc_mem_window {
> +	phys_addr_t	phys_base;
> +	size_t		size;
> +	size_t		map_size;
> +};
> +
>  /**
>   * struct pci_epc_mem - address space of the endpoint controller
> - * @phys_base: physical base address of the PCI address space
> - * @size: the size of the PCI address space
> + * @window: address window of the endpoint controller
>   * @bitmap: bitmap to manage the PCI address space
> - * @pages: number of bits representing the address region
>   * @page_size: size of each page
> + * @pages: number of bits representing the address region
>   */
>  struct pci_epc_mem {
> -	phys_addr_t	phys_base;
> -	size_t		size;
> +	struct pci_epc_mem_window window;
>  	unsigned long	*bitmap;
>  	size_t		page_size;
>  	int		pages;
> @@ -85,7 +97,8 @@ struct pci_epc_mem {
>   * @dev: PCI EPC device
>   * @pci_epf: list of endpoint functions present in this EPC device
>   * @ops: function pointers for performing endpoint operations
> - * @mem: address space of the endpoint controller
> + * @mem: array of address space of the endpoint controller
> + * @mem_windows: number of windows supported by device
>   * @max_functions: max number of functions that can be configured in this EPC
>   * @group: configfs group representing the PCI EPC device
>   * @lock: spinlock to protect pci_epc ops
> @@ -94,7 +107,8 @@ struct pci_epc {
>  	struct device			dev;
>  	struct list_head		pci_epf;
>  	const struct pci_epc_ops	*ops;
> -	struct pci_epc_mem		*mem;
> +	struct pci_epc_mem		**mem;
> +	int				mem_windows;
>  	u8				max_functions;
>  	struct config_group		*group;
>  	/* spinlock to protect against concurrent access of EP controller */
> @@ -128,8 +142,8 @@ struct pci_epc_features {
>  #define devm_pci_epc_create(dev, ops)    \
>  		__devm_pci_epc_create((dev), (ops), THIS_MODULE)
>  
> -#define pci_epc_mem_init(epc, phys_addr, size)	\
> -		__pci_epc_mem_init((epc), (phys_addr), (size), PAGE_SIZE)
> +#define pci_epc_mem_init(epc, windows, num_windows)	\
> +		__pci_epc_mem_init((epc), windows, num_windows, PAGE_SIZE)
>  
>  static inline void epc_set_drvdata(struct pci_epc *epc, void *data)
>  {
> @@ -159,7 +173,7 @@ int pci_epc_set_bar(struct pci_epc *epc, u8 func_no,
>  void pci_epc_clear_bar(struct pci_epc *epc, u8 func_no,
>  		       struct pci_epf_bar *epf_bar);
>  int pci_epc_map_addr(struct pci_epc *epc, u8 func_no,
> -		     phys_addr_t phys_addr,
> +		     phys_addr_t phys_addr, int window,
>  		     u64 pci_addr, size_t size);
>  void pci_epc_unmap_addr(struct pci_epc *epc, u8 func_no,
>  			phys_addr_t phys_addr);
> @@ -178,11 +192,12 @@ unsigned int pci_epc_get_first_free_bar(const struct pci_epc_features
>  struct pci_epc *pci_epc_get(const char *epc_name);
>  void pci_epc_put(struct pci_epc *epc);
>  
> -int __pci_epc_mem_init(struct pci_epc *epc, phys_addr_t phys_addr, size_t size,
> -		       size_t page_size);
> +int __pci_epc_mem_init(struct pci_epc *epc, struct pci_epc_mem_window *window,
> +		       int num_windows, size_t page_size);
>  void pci_epc_mem_exit(struct pci_epc *epc);
>  void __iomem *pci_epc_mem_alloc_addr(struct pci_epc *epc,
> -				     phys_addr_t *phys_addr, size_t size);
> +				     phys_addr_t *phys_addr,
> +				     int *window, size_t size);
>  void pci_epc_mem_free_addr(struct pci_epc *epc, phys_addr_t phys_addr,
>  			   void __iomem *virt_addr, size_t size);
>  #endif /* __LINUX_PCI_EPC_H */
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

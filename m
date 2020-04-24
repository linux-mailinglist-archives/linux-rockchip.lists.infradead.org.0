Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC51F1B6DDB
	for <lists+linux-rockchip@lfdr.de>; Fri, 24 Apr 2020 08:14:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/9+OH9lWb0PCoute8Gg2PlHSxRqP+xGY40Umb2Rxyvw=; b=khKai+Lhhdypz0
	tElQkHqJYy8w4cXEa3JP+wRwHW2jbAWirBmfr3slbBQUCdN446FO/WmX0gwyQPlyHYKU7akF8DlTO
	NYmcQtw/d9uTDnQd9bcWnnP1sC88Ag6fDJ+mFOKDl6SLJrIot3YigrubIuLfa4koOSc1xH9SSOfx+
	nnlyXOzgtrsww+CCGuJMYFKSU9yn95e4SZ+mFSoCzpwbfc7Xm0ZMiwLt9p/aRCvce/ViIxvcxo6IE
	u+fUa2v8zHWm16mXko9X1QvEtf/WPsqNhKyikqtmZT2NIL81U8KVZQiTJntAHJQelrNylYj6K5iFl
	VpIJ2hysqBvwS4xxJHkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRrbA-0005AU-IZ; Fri, 24 Apr 2020 06:14:04 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRrb6-00058f-5p; Fri, 24 Apr 2020 06:14:02 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 03O6Dfre037510;
 Fri, 24 Apr 2020 01:13:41 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1587708821;
 bh=j8PQmpQJKpFXOvIlwGEAgESygofkuW/6gQ8hJMj0h1g=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=fIqaDoXOX8D2El5s4iYwlKieIGhwfVe1aZMLe/6cKEHeqs0e4rTB3oOEo3bX50rPu
 qvAcXcaombqQqxlKq/jDUTk5cS+/8G1VMm0yNFQQZIvhwvV+EajjWj71LUBK16LQBK
 WmI3r4s1A44HbavHJELTouDZt6LUXou8tVwu7MHQ=
Received: from DFLE109.ent.ti.com (dfle109.ent.ti.com [10.64.6.30])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 03O6Dfo9056942;
 Fri, 24 Apr 2020 01:13:41 -0500
Received: from DFLE112.ent.ti.com (10.64.6.33) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 24
 Apr 2020 01:13:40 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 24 Apr 2020 01:13:40 -0500
Received: from [10.250.233.85] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 03O6DZ6T053821;
 Fri, 24 Apr 2020 01:13:35 -0500
Subject: Re: [PATCH v9 5/8] PCI: endpoint: Add support to handle multiple base
 for mapping outbound memory
To: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, Yoshihiro Shimoda
 <yoshihiro.shimoda.uh@renesas.com>, Lorenzo Pieralisi
 <lorenzo.pieralisi@arm.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Rob Herring <robh+dt@kernel.org>,
 Andrew Murray <amurray@thegoodpenguin.co.uk>, Tom
 Joseph <tjoseph@cadence.com>, Jingoo Han <jingoohan1@gmail.com>, Gustavo
 Pimentel <gustavo.pimentel@synopsys.com>, Marek Vasut
 <marek.vasut+renesas@gmail.com>, Shawn Lin <shawn.lin@rock-chips.com>,
 Heiko Stuebner <heiko@sntech.de>
References: <1587666159-6035-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1587666159-6035-6-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Kishon Vijay Abraham I <kishon@ti.com>
Message-ID: <99ff8fb8-101c-a548-7d6e-07c3a31ced2c@ti.com>
Date: Fri, 24 Apr 2020 11:43:34 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <1587666159-6035-6-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_231400_304990_E7D0E59F 
X-CRM114-Status: GOOD (  27.71  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Lad Prabhakar <prabhakar.csengg@gmail.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Prabhakar,

On 4/23/2020 11:52 PM, Lad Prabhakar wrote:
> R-Car PCIe controller has support to map multiple memory regions for
> mapping the outbound memory in local system also the controller limits
> single allocation for each region (that is, once a chunk is used from the
> region it cannot be used to allocate a new one). This features inspires to
> add support for handling multiple memory bases in endpoint framework.
> 
> With this patch pci_epc_mem_init() initializes address space for endpoint
> controller which support single window and pci_epc_multi_mem_init()
> initializes multiple windows supported by endpoint controller.

Have a couple of clean-up comments. See below.
> 
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> ---
>  .../pci/controller/dwc/pcie-designware-ep.c   |  16 +-
>  drivers/pci/endpoint/pci-epc-mem.c            | 199 ++++++++++++------
>  include/linux/pci-epc.h                       |  33 ++-
>  3 files changed, 170 insertions(+), 78 deletions(-)
> 
.
.
<snip>
.
.
> diff --git a/drivers/pci/endpoint/pci-epc-mem.c b/drivers/pci/endpoint/pci-epc-mem.c
> index cdd1d3821249..a3466da2a16f 100644
> --- a/drivers/pci/endpoint/pci-epc-mem.c
> +++ b/drivers/pci/endpoint/pci-epc-mem.c
> @@ -23,7 +23,7 @@
>  static int pci_epc_mem_get_order(struct pci_epc_mem *mem, size_t size)
>  {
>  	int order;
> -	unsigned int page_shift = ilog2(mem->page_size);
> +	unsigned int page_shift = ilog2(mem->window.page_size);
>  
>  	size--;
>  	size >>= page_shift;
> @@ -36,67 +36,95 @@ static int pci_epc_mem_get_order(struct pci_epc_mem *mem, size_t size)
>  }
>  
>  /**
> - * __pci_epc_mem_init() - initialize the pci_epc_mem structure
> + * pci_epc_multi_mem_init() - initialize the pci_epc_mem structure
>   * @epc: the EPC device that invoked pci_epc_mem_init
> - * @phys_base: the physical address of the base
> - * @size: the size of the address space
> - * @page_size: size of each page
> + * @windows: pointer to windows supported by the device
> + * @num_windows: number of windows device supports
>   *
>   * Invoke to initialize the pci_epc_mem structure used by the
>   * endpoint functions to allocate mapped PCI address.
>   */
> -int __pci_epc_mem_init(struct pci_epc *epc, phys_addr_t phys_base, size_t size,
> -		       size_t page_size)
> +int pci_epc_multi_mem_init(struct pci_epc *epc,
> +			   struct pci_epc_mem_window *windows,
> +			   unsigned int num_windows)
>  {
> -	int ret;
> -	struct pci_epc_mem *mem;
> -	unsigned long *bitmap;
> +	struct pci_epc_mem *mem = NULL;
> +	unsigned long *bitmap = NULL;
>  	unsigned int page_shift;
> -	int pages;
> +	size_t page_size;
>  	int bitmap_size;
> +	int pages;
> +	int ret;
> +	int i;
>  
> -	if (page_size < PAGE_SIZE)
> -		page_size = PAGE_SIZE;
> +	epc->num_windows = 0;
>  
> -	page_shift = ilog2(page_size);
> -	pages = size >> page_shift;
> -	bitmap_size = BITS_TO_LONGS(pages) * sizeof(long);
> +	if (!windows || !num_windows)
> +		return -EINVAL;
>  
> -	mem = kzalloc(sizeof(*mem), GFP_KERNEL);
> -	if (!mem) {
> -		ret = -ENOMEM;
> -		goto err;
> -	}
> +	epc->windows = kcalloc(num_windows, sizeof(*mem), GFP_KERNEL);
> +	if (!epc->windows)
> +		return -ENOMEM;
>  
> -	bitmap = kzalloc(bitmap_size, GFP_KERNEL);
> -	if (!bitmap) {
> -		ret = -ENOMEM;
> -		goto err_mem;
> -	}
> +	for (i = 0; i < num_windows; i++) {
> +		page_size = windows[i].page_size;
> +		if (page_size < PAGE_SIZE)
> +			page_size = PAGE_SIZE;
> +		page_shift = ilog2(page_size);
> +		pages = windows[i].size >> page_shift;
> +		bitmap_size = BITS_TO_LONGS(pages) * sizeof(long);
>  
> -	mem->bitmap = bitmap;
> -	mem->phys_base = phys_base;
> -	mem->page_size = page_size;
> -	mem->pages = pages;
> -	mem->size = size;
> -	mutex_init(&mem->lock);
> +		mem = kzalloc(sizeof(*mem), GFP_KERNEL);
> +		if (!mem) {
> +			ret = -ENOMEM;
> +			i--;
> +			goto err_mem;
> +		}
>  
> -	epc->mem = mem;
> +		bitmap = kzalloc(bitmap_size, GFP_KERNEL);
> +		if (!bitmap) {
> +			ret = -ENOMEM;
> +			kfree(mem);
> +			i--;
> +			goto err_mem;
> +		}
> +
> +		mem->window.phys_base = windows[i].phys_base;
> +		mem->window.size = windows[i].size;
> +		mem->window.page_size = page_size;
> +		mem->bitmap = bitmap;
> +		mem->pages = pages;
> +		mutex_init(&mem->lock);
> +		epc->windows[i] = mem;
> +	}
> +
> +	epc->mem = epc->windows[0];

"mem" member of EPC looks unnecessary since that value is available at
epc->windows[0].
> +	epc->num_windows = num_windows;
>  
>  	return 0;
>  
>  err_mem:
> -	kfree(mem);
> +	for (; i >= 0; i--) {
> +		mem = epc->windows[i];
> +		kfree(mem->bitmap);
> +		kfree(mem);
> +	}
> +	kfree(epc->windows);
>  
> -err:
> -return ret;
> +	return ret;
>  }
> -EXPORT_SYMBOL_GPL(__pci_epc_mem_init);
> +EXPORT_SYMBOL_GPL(pci_epc_multi_mem_init);
>  
>  int pci_epc_mem_init(struct pci_epc *epc, phys_addr_t base,
>  		     size_t size, size_t page_size)
>  {
> -	return __pci_epc_mem_init(epc, base, size, page_size);
> +	struct pci_epc_mem_window mem_window;
> +
> +	mem_window.phys_base = base;
> +	mem_window.size = size;
> +	mem_window.page_size = page_size;
> +
> +	return pci_epc_multi_mem_init(epc, &mem_window, 1);
>  }
>  EXPORT_SYMBOL_GPL(pci_epc_mem_init);
>  
> @@ -109,11 +137,22 @@ EXPORT_SYMBOL_GPL(pci_epc_mem_init);
>   */
>  void pci_epc_mem_exit(struct pci_epc *epc)
>  {
> -	struct pci_epc_mem *mem = epc->mem;
> +	struct pci_epc_mem *mem;
> +	int i;
>  
> +	if (!epc->num_windows)
> +		return;
> +
> +	for (i = 0; i < epc->num_windows; i++) {
> +		mem = epc->windows[i];
> +		kfree(mem->bitmap);
> +		kfree(mem);
> +	}
> +	kfree(epc->windows);
> +
> +	epc->windows = NULL;
>  	epc->mem = NULL;
> -	kfree(mem->bitmap);
> -	kfree(mem);
> +	epc->num_windows = 0;
>  }
>  EXPORT_SYMBOL_GPL(pci_epc_mem_exit);
>  
> @@ -129,31 +168,60 @@ EXPORT_SYMBOL_GPL(pci_epc_mem_exit);
>  void __iomem *pci_epc_mem_alloc_addr(struct pci_epc *epc,
>  				     phys_addr_t *phys_addr, size_t size)
>  {
> -	int pageno;
>  	void __iomem *virt_addr = NULL;
> -	struct pci_epc_mem *mem = epc->mem;
> -	unsigned int page_shift = ilog2(mem->page_size);
> +	struct pci_epc_mem *mem;
> +	unsigned int page_shift;
> +	size_t align_size;
> +	int pageno;
>  	int order;
> +	int i;
>  
> -	size = ALIGN(size, mem->page_size);
> -	order = pci_epc_mem_get_order(mem, size);
> -
> -	mutex_lock(&mem->lock);
> -	pageno = bitmap_find_free_region(mem->bitmap, mem->pages, order);
> -	if (pageno < 0)
> -		goto ret;
> +	for (i = 0; i < epc->num_windows; i++) {
> +		mem = epc->windows[i];
> +		mutex_lock(&mem->lock);
> +		align_size = ALIGN(size, mem->window.page_size);
> +		order = pci_epc_mem_get_order(mem, align_size);
>  
> -	*phys_addr = mem->phys_base + ((phys_addr_t)pageno << page_shift);
> -	virt_addr = ioremap(*phys_addr, size);
> -	if (!virt_addr)
> -		bitmap_release_region(mem->bitmap, pageno, order);
> +		pageno = bitmap_find_free_region(mem->bitmap, mem->pages,
> +						 order);
> +		if (pageno >= 0) {
> +			page_shift = ilog2(mem->window.page_size);
> +			*phys_addr = mem->window.phys_base +
> +				((phys_addr_t)pageno << page_shift);
> +			virt_addr = ioremap(*phys_addr, align_size);
> +			if (!virt_addr) {
> +				bitmap_release_region(mem->bitmap,
> +						      pageno, order);
> +				mutex_unlock(&mem->lock);
> +				continue;
> +			}
> +			mutex_unlock(&mem->lock);
> +			return virt_addr;
> +		}
> +		mutex_unlock(&mem->lock);
> +	}
>  
> -ret:
> -	mutex_unlock(&mem->lock);
>  	return virt_addr;
>  }
>  EXPORT_SYMBOL_GPL(pci_epc_mem_alloc_addr);
>  
> +struct pci_epc_mem *pci_epc_get_matching_window(struct pci_epc *epc,
> +						phys_addr_t phys_addr)
> +{
> +	struct pci_epc_mem *mem;
> +	int i;
> +
> +	for (i = 0; i < epc->num_windows; i++) {
> +		mem = epc->windows[i];
> +
> +		if (phys_addr >= mem->window.phys_base &&
> +		    phys_addr < (mem->window.phys_base + mem->window.size))
> +			return mem;
> +	}
> +
> +	return NULL;
> +}
> +
>  /**
>   * pci_epc_mem_free_addr() - free the allocated memory address
>   * @epc: the EPC device on which memory was allocated
> @@ -166,14 +234,23 @@ EXPORT_SYMBOL_GPL(pci_epc_mem_alloc_addr);
>  void pci_epc_mem_free_addr(struct pci_epc *epc, phys_addr_t phys_addr,
>  			   void __iomem *virt_addr, size_t size)
>  {
> +	struct pci_epc_mem *mem;
> +	unsigned int page_shift;
> +	size_t page_size;
>  	int pageno;
> -	struct pci_epc_mem *mem = epc->mem;
> -	unsigned int page_shift = ilog2(mem->page_size);
>  	int order;
>  
> +	mem = pci_epc_get_matching_window(epc, phys_addr);
> +	if (!mem) {
> +		pr_err("failed to get matching window\n");
> +		return;
> +	}
> +
> +	page_size = mem->window.page_size;
> +	page_shift = ilog2(page_size);
>  	iounmap(virt_addr);
> -	pageno = (phys_addr - mem->phys_base) >> page_shift;
> -	size = ALIGN(size, mem->page_size);
> +	pageno = (phys_addr - mem->window.phys_base) >> page_shift;
> +	size = ALIGN(size, page_size);
>  	order = pci_epc_mem_get_order(mem, size);
>  	mutex_lock(&mem->lock);
>  	bitmap_release_region(mem->bitmap, pageno, order);
> diff --git a/include/linux/pci-epc.h b/include/linux/pci-epc.h
> index 5bc1de65849e..cc66bec8be90 100644
> --- a/include/linux/pci-epc.h
> +++ b/include/linux/pci-epc.h
> @@ -65,20 +65,28 @@ struct pci_epc_ops {
>  	struct module *owner;
>  };
>  
> +/**
> + * struct pci_epc_mem_window - address window of the endpoint controller
> + * @phys_base: physical base address of the PCI address window
> + * @size: the size of the PCI address window
> + * @page_size: size of each page
> + */
> +struct pci_epc_mem_window {
> +	phys_addr_t	phys_base;
> +	size_t		size;
> +	size_t		page_size;
> +};
> +
>  /**
>   * struct pci_epc_mem - address space of the endpoint controller
> - * @phys_base: physical base address of the PCI address space
> - * @size: the size of the PCI address space
> + * @window: address window of the endpoint controller
>   * @bitmap: bitmap to manage the PCI address space
>   * @pages: number of bits representing the address region
> - * @page_size: size of each page
>   * @lock: mutex to protect bitmap
>   */
>  struct pci_epc_mem {
> -	phys_addr_t	phys_base;
> -	size_t		size;
> +	struct pci_epc_mem_window window;

Don't see any additional value in moving phys_base, size, page_size to a new
structure and again including it here.

Thanks
Kishon

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

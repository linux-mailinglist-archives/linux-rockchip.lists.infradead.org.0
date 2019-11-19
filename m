Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E0F21022B0
	for <lists+linux-rockchip@lfdr.de>; Tue, 19 Nov 2019 12:13:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J8E6PUWNTx/1cEJ4eevWda1T7346JwF8Pls+MO8OLSE=; b=hVEYMmiG0uw+Uz
	2UX8oVcfW08kKj5jrNF4w6cEbfvuE1eRg2JpXm0WR0g9u7gnExsE1d0JBzbrd7vQDJI9eywIZ5HBh
	QLvqI5azzWwJEvKk/74N0KVJq28L7KoanvuLF/mtGb/DVy9u752Wz/Ut9Yv5g0KGFK+K3R2fEYO8k
	MnaLcNnyiTbJl/eWF0V+ViFDXaMXIpxJMSCX1J9pzo24CPH8sp2UiM5gad40lqkhv51U8lmJZRwtE
	xBlLHDKTOE8m26LaifJ//0tE+MNQobxrF/JnIVxtU/VROhoCWngpwqhXUF/475ml/Okn8MTAL0ywG
	4NV0OkDVvGQKEhpqEyLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iX1Ry-0007je-9i; Tue, 19 Nov 2019 11:13:38 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX1Rl-0007aM-OW; Tue, 19 Nov 2019 11:13:28 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D85D51FB;
 Tue, 19 Nov 2019 03:13:23 -0800 (PST)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4197A3F703;
 Tue, 19 Nov 2019 03:13:23 -0800 (PST)
Date: Tue, 19 Nov 2019 11:13:21 +0000
From: Andrew Murray <andrew.murray@arm.com>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: Re: [PATCH v2 1/6] linux/log2.h: Add roundup/rounddown_pow_two64()
 family of functions
Message-ID: <20191119111320.GP43905@e119886-lin.cambridge.arm.com>
References: <20191112155926.16476-1-nsaenzjulienne@suse.de>
 <20191112155926.16476-2-nsaenzjulienne@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191112155926.16476-2-nsaenzjulienne@suse.de>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_031325_886992_F1A61158 
X-CRM114-Status: GOOD (  24.41  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
 Shawn Lin <shawn.lin@rock-chips.com>, Christoph Hellwig <hch@lst.de>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, linux-rdma@vger.kernel.org,
 maz@kernel.org, phil@raspberrypi.org, iommu@lists.linux-foundation.org,
 linux-rockchip@lists.infradead.org, f.fainelli@gmail.com,
 Bjorn Helgaas <bhelgaas@google.com>, linux-arm-kernel@lists.infradead.org,
 mbrugger@suse.com, netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 jeremy.linton@arm.com, Tom Joseph <tjoseph@cadence.com>, wahrenst@gmx.net,
 james.quinlan@broadcom.com, Robin Murphy <robin.murphy@arm.com>,
 "David S. Miller" <davem@davemloft.net>, Tariq Toukan <tariqt@mellanox.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Tue, Nov 12, 2019 at 04:59:20PM +0100, Nicolas Saenz Julienne wrote:
> Some users need to make sure their rounding function accepts and returns
> 64bit long variables regardless of the architecture. Sadly
> roundup/rounddown_pow_two() takes and returns unsigned longs. Create a
> new generic 64bit variant of the function and cleanup rougue custom
> implementations.
> 
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> ---
>  drivers/net/ethernet/mellanox/mlx4/en_clock.c |  3 +-
>  drivers/pci/controller/pcie-cadence-ep.c      |  7 +--
>  drivers/pci/controller/pcie-cadence.c         |  7 +--
>  drivers/pci/controller/pcie-rockchip-ep.c     |  9 ++--

Thanks for making this change. See comments inline...

>  include/linux/log2.h                          | 52 +++++++++++++++++++
>  kernel/dma/direct.c                           |  3 +-
>  6 files changed, 63 insertions(+), 18 deletions(-)
> 
> diff --git a/drivers/net/ethernet/mellanox/mlx4/en_clock.c b/drivers/net/ethernet/mellanox/mlx4/en_clock.c
> index 024788549c25..027bd72505e2 100644
> --- a/drivers/net/ethernet/mellanox/mlx4/en_clock.c
> +++ b/drivers/net/ethernet/mellanox/mlx4/en_clock.c
> @@ -33,6 +33,7 @@
>  
>  #include <linux/mlx4/device.h>
>  #include <linux/clocksource.h>
> +#include <linux/log2.h>
>  
>  #include "mlx4_en.h"
>  
> @@ -252,7 +253,7 @@ static u32 freq_to_shift(u16 freq)
>  {
>  	u32 freq_khz = freq * 1000;
>  	u64 max_val_cycles = freq_khz * 1000 * MLX4_EN_WRAP_AROUND_SEC;
> -	u64 max_val_cycles_rounded = 1ULL << fls64(max_val_cycles - 1);
> +	u64 max_val_cycles_rounded = roundup_pow_of_two64(max_val_cycles);
>  	/* calculate max possible multiplier in order to fit in 64bit */
>  	u64 max_mul = div64_u64(ULLONG_MAX, max_val_cycles_rounded);
>  
> diff --git a/drivers/pci/controller/pcie-cadence-ep.c b/drivers/pci/controller/pcie-cadence-ep.c
> index def7820cb824..26ff424b16f5 100644
> --- a/drivers/pci/controller/pcie-cadence-ep.c
> +++ b/drivers/pci/controller/pcie-cadence-ep.c
> @@ -10,6 +10,7 @@
>  #include <linux/platform_device.h>
>  #include <linux/pm_runtime.h>
>  #include <linux/sizes.h>
> +#include <linux/log2.h>
>  
>  #include "pcie-cadence.h"
>  
> @@ -90,11 +91,7 @@ static int cdns_pcie_ep_set_bar(struct pci_epc *epc, u8 fn,
>  
>  	/* BAR size is 2^(aperture + 7) */
>  	sz = max_t(size_t, epf_bar->size, CDNS_PCIE_EP_MIN_APERTURE);
> -	/*
> -	 * roundup_pow_of_two() returns an unsigned long, which is not suited
> -	 * for 64bit values.
> -	 */
> -	sz = 1ULL << fls64(sz - 1);
> +	sz = roundup_pow_of_two64(sz);
>  	aperture = ilog2(sz) - 7; /* 128B -> 0, 256B -> 1, 512B -> 2, ... */
>  
>  	if ((flags & PCI_BASE_ADDRESS_SPACE) == PCI_BASE_ADDRESS_SPACE_IO) {
> diff --git a/drivers/pci/controller/pcie-cadence.c b/drivers/pci/controller/pcie-cadence.c
> index cd795f6fc1e2..b2278e6b955c 100644
> --- a/drivers/pci/controller/pcie-cadence.c
> +++ b/drivers/pci/controller/pcie-cadence.c
> @@ -4,6 +4,7 @@
>  // Author: Cyrille Pitchen <cyrille.pitchen@free-electrons.com>
>  
>  #include <linux/kernel.h>
> +#include <linux/log2.h>
>  
>  #include "pcie-cadence.h"
>  
> @@ -11,11 +12,7 @@ void cdns_pcie_set_outbound_region(struct cdns_pcie *pcie, u8 fn,
>  				   u32 r, bool is_io,
>  				   u64 cpu_addr, u64 pci_addr, size_t size)
>  {
> -	/*
> -	 * roundup_pow_of_two() returns an unsigned long, which is not suited
> -	 * for 64bit values.
> -	 */
> -	u64 sz = 1ULL << fls64(size - 1);
> +	u64 sz = roundup_pow_of_two64(size);
>  	int nbits = ilog2(sz);
>  	u32 addr0, addr1, desc0, desc1;
>  
> diff --git a/drivers/pci/controller/pcie-rockchip-ep.c b/drivers/pci/controller/pcie-rockchip-ep.c
> index d743b0a48988..ed50aaf27784 100644
> --- a/drivers/pci/controller/pcie-rockchip-ep.c
> +++ b/drivers/pci/controller/pcie-rockchip-ep.c
> @@ -16,6 +16,7 @@
>  #include <linux/platform_device.h>
>  #include <linux/pci-epf.h>
>  #include <linux/sizes.h>
> +#include <linux/log2.h>
>  
>  #include "pcie-rockchip.h"
>  
> @@ -70,7 +71,7 @@ static void rockchip_pcie_prog_ep_ob_atu(struct rockchip_pcie *rockchip, u8 fn,
>  					 u32 r, u32 type, u64 cpu_addr,
>  					 u64 pci_addr, size_t size)
>  {
> -	u64 sz = 1ULL << fls64(size - 1);
> +	u64 sz = roundup_pow_of_two64(size);
>  	int num_pass_bits = ilog2(sz);
>  	u32 addr0, addr1, desc0, desc1;
>  	bool is_nor_msg = (type == AXI_WRAPPER_NOR_MSG);
> @@ -172,11 +173,7 @@ static int rockchip_pcie_ep_set_bar(struct pci_epc *epc, u8 fn,
>  	/* BAR size is 2^(aperture + 7) */
>  	sz = max_t(size_t, epf_bar->size, MIN_EP_APERTURE);
>  
> -	/*
> -	 * roundup_pow_of_two() returns an unsigned long, which is not suited
> -	 * for 64bit values.
> -	 */
> -	sz = 1ULL << fls64(sz - 1);
> +	sz = roundup_pow_of_two64(sz);
>  	aperture = ilog2(sz) - 7; /* 128B -> 0, 256B -> 1, 512B -> 2, ... */
>  
>  	if ((flags & PCI_BASE_ADDRESS_SPACE) == PCI_BASE_ADDRESS_SPACE_IO) {
> diff --git a/include/linux/log2.h b/include/linux/log2.h
> index 83a4a3ca3e8a..db12d92ab6eb 100644
> --- a/include/linux/log2.h
> +++ b/include/linux/log2.h
> @@ -67,6 +67,24 @@ unsigned long __rounddown_pow_of_two(unsigned long n)
>  	return 1UL << (fls_long(n) - 1);
>  }
>  
> +/**
> + * __roundup_pow_of_two64() - round 64bit value up to nearest power of two
> + * @n: value to round up
> + */
> +static inline __attribute__((const)) __u64 __roundup_pow_of_two64(__u64 n)

To be consistent with other functions in the same file (__ilog_u64) you may
want to rename this to __roundup_pow_of_two_u64.

Also do you know why u64 is used in some places and __u64 in others?

> +{
> +	return 1UL << fls64(n - 1);

Does this need to be (and for the others):

return 1ULL << fls64(n - 1);

Notice that the PCI drivers you convert, all use 1ULL.

Thanks,

Andrew Murray 


> +}
> +
> +/**
> + * __rounddown_pow_of_two64() - round 64bit value down to nearest power of two
> + * @n: value to round down
> + */
> +static inline __attribute__((const)) __u64 __rounddown_pow_of_two64(__u64 n)
> +{
> +	return 1UL << (fls64(n) - 1);
> +}
> +
>  /**
>   * const_ilog2 - log base 2 of 32-bit or a 64-bit constant unsigned value
>   * @n: parameter
> @@ -194,6 +212,40 @@ unsigned long __rounddown_pow_of_two(unsigned long n)
>  	__rounddown_pow_of_two(n)		\
>   )
>  
> +/**
> + * roundup_pow_of_two64 - round the given 64bit value up to nearest power of
> + * two
> + * @n: parameter
> + *
> + * round the given value up to the nearest power of two
> + * - the result is undefined when n == 0
> + * - this can be used to initialise global variables from constant data
> + */
> +#define roundup_pow_of_two64(n)			\
> +(						\
> +	__builtin_constant_p(n) ? (		\
> +		(n == 1) ? 1 :			\
> +		(1UL << (ilog2((n) - 1) + 1))	\
> +				   ) :		\
> +	__roundup_pow_of_two64(n)		\
> +)
> +
> +/**
> + * rounddown_pow_of_two64 - round the given 64bit value down to nearest power
> + * of two
> + * @n: parameter
> + *
> + * round the given value down to the nearest power of two
> + * - the result is undefined when n == 0
> + * - this can be used to initialise global variables from constant data
> + */
> +#define rounddown_pow_of_two64(n)		\
> +(						\
> +	__builtin_constant_p(n) ? (		\
> +		(1UL << ilog2(n))) :		\
> +	__rounddown_pow_of_two64(n)		\
> +)
> +
>  static inline __attribute_const__
>  int __order_base_2(unsigned long n)
>  {
> diff --git a/kernel/dma/direct.c b/kernel/dma/direct.c
> index b9e1744999d9..a419530abd3e 100644
> --- a/kernel/dma/direct.c
> +++ b/kernel/dma/direct.c
> @@ -15,6 +15,7 @@
>  #include <linux/vmalloc.h>
>  #include <linux/set_memory.h>
>  #include <linux/swiotlb.h>
> +#include <linux/log2.h>
>  
>  /*
>   * Most architectures use ZONE_DMA for the first 16 Megabytes, but some use it
> @@ -53,7 +54,7 @@ u64 dma_direct_get_required_mask(struct device *dev)
>  {
>  	u64 max_dma = phys_to_dma_direct(dev, (max_pfn - 1) << PAGE_SHIFT);
>  
> -	return (1ULL << (fls64(max_dma) - 1)) * 2 - 1;
> +	return rounddown_pow_of_two64(max_dma) * 2 - 1;
>  }
>  
>  static gfp_t __dma_direct_optimal_gfp_mask(struct device *dev, u64 dma_mask,
> -- 
> 2.24.0
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

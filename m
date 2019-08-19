Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B868994D28
	for <lists+linux-rockchip@lfdr.de>; Mon, 19 Aug 2019 20:40:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=P5h6/m1HNcrLdTTQ02mkHvB9wILGSfgNXexqYWo8OEg=; b=br9OIF0CJ68MurF8Nn/qObKrr
	9Cm+WvWnWUQxoAvoeaDYiS0O+CNZKA6wCN9TKk3PGrMBV+TIE4pendQ8/4Zcnfn80ClQWSdnVzku+
	IaGRCAk+ETst4xUVyqpNHsxpKD42anwC486gAQNWJUvQ86TIrMGYVrxbFButDXCb5MeIdOiU+tF57
	KuU489LaNPyu1mTB3oLDNEQSqETMZUHCi7jxtp5tHd71YMoQ4OGz/g/kjOqRm2lIfMtuyj0iGd4SE
	dmPre8zo/TM4NS3KQzUkYlrT+NTkwZ6Z85AHOTMSSNqzOl+d8+0lURi2BdY4CFhRckjtBlZAnwpah
	gRr7k67Fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzmZj-0007Dq-DH; Mon, 19 Aug 2019 18:40:16 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hzmYy-00068Y-LN; Mon, 19 Aug 2019 18:39:30 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F1408360;
 Mon, 19 Aug 2019 11:39:27 -0700 (PDT)
Received: from [10.1.197.57] (e110467-lin.cambridge.arm.com [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 963663F246;
 Mon, 19 Aug 2019 11:39:24 -0700 (PDT)
Subject: Re: [PATCH V5 4/5] iommu/dma-iommu: Use the dev->coherent_dma_mask
To: Tom Murphy <murphyt7@tcd.ie>, iommu@lists.linux-foundation.org
References: <20190815110944.3579-1-murphyt7@tcd.ie>
 <20190815110944.3579-5-murphyt7@tcd.ie>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <d3c8d4ce-8ffb-bf69-a8f3-d64108f5987a@arm.com>
Date: Mon, 19 Aug 2019 19:39:23 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190815110944.3579-5-murphyt7@tcd.ie>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_113929_029407_995CEE89 
X-CRM114-Status: GOOD (  20.90  )
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
Cc: Heiko Stuebner <heiko@sntech.de>, virtualization@lists.linux-foundation.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thierry Reding <thierry.reding@gmail.com>, Will Deacon <will@kernel.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Jean-Philippe Brucker <jean-philippe@linaro.org>,
 linux-samsung-soc@vger.kernel.org, Joerg Roedel <joro@8bytes.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 linux-rockchip@lists.infradead.org, Andy Gross <agross@kernel.org>,
 Gerald Schaefer <gerald.schaefer@de.ibm.com>, linux-s390@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-tegra@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, Rob Clark <robdclark@gmail.com>,
 Kukjin Kim <kgene@kernel.org>, David Woodhouse <dwmw2@infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On 15/08/2019 12:09, Tom Murphy wrote:
> Use the dev->coherent_dma_mask when allocating in the dma-iommu ops api.

Oops... I suppose technically that's my latent bug, but since we've all 
missed it so far, I doubt arm64 systems ever see any devices which 
actually have different masks.

Reviewed-by: Robin Murphy <robin.murphy@arm.com>

> Signed-off-by: Tom Murphy <murphyt7@tcd.ie>
> ---
>   drivers/iommu/dma-iommu.c | 12 +++++++-----
>   1 file changed, 7 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/iommu/dma-iommu.c b/drivers/iommu/dma-iommu.c
> index 906b7fa14d3c..b9a3ab02434b 100644
> --- a/drivers/iommu/dma-iommu.c
> +++ b/drivers/iommu/dma-iommu.c
> @@ -471,7 +471,7 @@ static void __iommu_dma_unmap(struct device *dev, dma_addr_t dma_addr,
>   }
>   
>   static dma_addr_t __iommu_dma_map(struct device *dev, phys_addr_t phys,
> -		size_t size, int prot)
> +		size_t size, int prot, dma_addr_t dma_mask)
>   {
>   	struct iommu_domain *domain = iommu_get_dma_domain(dev);
>   	struct iommu_dma_cookie *cookie = domain->iova_cookie;
> @@ -484,7 +484,7 @@ static dma_addr_t __iommu_dma_map(struct device *dev, phys_addr_t phys,
>   
>   	size = iova_align(iovad, size + iova_off);
>   
> -	iova = iommu_dma_alloc_iova(domain, size, dma_get_mask(dev), dev);
> +	iova = iommu_dma_alloc_iova(domain, size, dma_mask, dev);
>   	if (!iova)
>   		return DMA_MAPPING_ERROR;
>   
> @@ -735,7 +735,7 @@ static dma_addr_t iommu_dma_map_page(struct device *dev, struct page *page,
>   	int prot = dma_info_to_prot(dir, coherent, attrs);
>   	dma_addr_t dma_handle;
>   
> -	dma_handle = __iommu_dma_map(dev, phys, size, prot);
> +	dma_handle = __iommu_dma_map(dev, phys, size, prot, dma_get_mask(dev));
>   	if (!coherent && !(attrs & DMA_ATTR_SKIP_CPU_SYNC) &&
>   	    dma_handle != DMA_MAPPING_ERROR)
>   		arch_sync_dma_for_device(dev, phys, size, dir);
> @@ -938,7 +938,8 @@ static dma_addr_t iommu_dma_map_resource(struct device *dev, phys_addr_t phys,
>   		size_t size, enum dma_data_direction dir, unsigned long attrs)
>   {
>   	return __iommu_dma_map(dev, phys, size,
> -			dma_info_to_prot(dir, false, attrs) | IOMMU_MMIO);
> +			dma_info_to_prot(dir, false, attrs) | IOMMU_MMIO,
> +			dma_get_mask(dev));
>   }
>   
>   static void iommu_dma_unmap_resource(struct device *dev, dma_addr_t handle,
> @@ -1041,7 +1042,8 @@ static void *iommu_dma_alloc(struct device *dev, size_t size,
>   	if (!cpu_addr)
>   		return NULL;
>   
> -	*handle = __iommu_dma_map(dev, page_to_phys(page), size, ioprot);
> +	*handle = __iommu_dma_map(dev, page_to_phys(page), size, ioprot,
> +			dev->coherent_dma_mask);
>   	if (*handle == DMA_MAPPING_ERROR) {
>   		__iommu_dma_free(dev, size, cpu_addr);
>   		return NULL;
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 224DD1436D
	for <lists+linux-rockchip@lfdr.de>; Mon,  6 May 2019 03:48:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=LXTmk0tmx+uAQLSoJjRcoBxWt2b1jfpftC8hXSn8Gl8=; b=cAPeXK0YUaPKb5qw/z4cgtpC8
	pFONx7tJ9xV/RpPswkoopl2DGMwU29UedMC1HT9d3b7jHRU7kDy0TMRMoCnvq6VHmiAt/EU/XFPN4
	0pOjIpbsPGopdmjMERpq0YZCfn00iVq4IH0+k6HQRSq2R3vPF8pcrLJTj/jjsWxIY/o7edszlR34l
	VmZqhJHlKL8l7Bfqr96Vb36ba/M36JWnd6Cwfyhuc+IculeWIMt8P7oTDH+TKVkovdVk97V0WtaOq
	Q5mtCjDqgyE+G2y8ZoXInC1OuHS8yyJ04w9fHPktnegJDa6mA6EmC8NbnWK7Il9fWTo8NmbeH1hWm
	20NAH4l8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNSkL-0007h8-R6; Mon, 06 May 2019 01:48:49 +0000
Received: from mga12.intel.com ([192.55.52.136])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNSkH-0007gT-HE; Mon, 06 May 2019 01:48:46 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 May 2019 18:48:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,435,1549958400"; d="scan'208";a="146640656"
Received: from allen-box.sh.intel.com (HELO [10.239.159.136])
 ([10.239.159.136])
 by fmsmga008.fm.intel.com with ESMTP; 05 May 2019 18:48:39 -0700
Subject: Re: [RFC 1/7] iommu/vt-d: Set the dma_ops per device so we can remove
 the iommu_no_mapping code
To: Tom Murphy <tmurphy@arista.com>, iommu@lists.linux-foundation.org
References: <20190504132327.27041-1-tmurphy@arista.com>
 <20190504132327.27041-2-tmurphy@arista.com>
From: Lu Baolu <baolu.lu@linux.intel.com>
Message-ID: <8fef18f5-773c-e1c9-2537-c9dff5bfd35e@linux.intel.com>
Date: Mon, 6 May 2019 09:42:15 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190504132327.27041-2-tmurphy@arista.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190505_184845_591552_7A65A273 
X-CRM114-Status: GOOD (  21.81  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.136 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.21
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
Cc: Heiko Stuebner <heiko@sntech.de>, kvm@vger.kernel.org,
 Will Deacon <will.deacon@arm.com>, David Brown <david.brown@linaro.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>, linux-s390@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, Joerg Roedel <joro@8bytes.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 linux-rockchip@lists.infradead.org, Kukjin Kim <kgene@kernel.org>,
 Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 Andy Gross <andy.gross@linaro.org>, linux-tegra@vger.kernel.org,
 Marc Zyngier <marc.zyngier@arm.com>, linux-arm-msm@vger.kernel.org,
 Alex Williamson <alex.williamson@redhat.com>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Robin Murphy <robin.murphy@arm.com>, linux-kernel@vger.kernel.org,
 murphyt7@tcd.ie, Rob Clark <robdclark@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>, baolu.lu@linux.intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi,

On 5/4/19 9:23 PM, Tom Murphy wrote:
> Set the dma_ops per device so we can remove the iommu_no_mapping code.
> 
> Signed-off-by: Tom Murphy<tmurphy@arista.com>
> ---
>   drivers/iommu/intel-iommu.c | 85 +++----------------------------------
>   1 file changed, 6 insertions(+), 79 deletions(-)
> 
> diff --git a/drivers/iommu/intel-iommu.c b/drivers/iommu/intel-iommu.c
> index eace915602f0..2db1dc47e7e4 100644
> --- a/drivers/iommu/intel-iommu.c
> +++ b/drivers/iommu/intel-iommu.c
> @@ -2622,17 +2622,6 @@ static int __init si_domain_init(int hw)
>   	return 0;
>   }
>   
> -static int identity_mapping(struct device *dev)
> -{
> -	struct device_domain_info *info;
> -
> -	info = dev->archdata.iommu;
> -	if (info && info != DUMMY_DEVICE_DOMAIN_INFO)
> -		return (info->domain == si_domain);
> -
> -	return 0;
> -}
> -
>   static int domain_add_dev_info(struct dmar_domain *domain, struct device *dev)
>   {
>   	struct dmar_domain *ndomain;
> @@ -3270,43 +3259,6 @@ static unsigned long intel_alloc_iova(struct device *dev,
>   	return iova_pfn;
>   }
>   
> -/* Check if the dev needs to go through non-identity map and unmap process.*/
> -static int iommu_no_mapping(struct device *dev)
> -{
> -	int found;
> -
> -	if (iommu_dummy(dev))
> -		return 1;
> -
> -	found = identity_mapping(dev);
> -	if (found) {
> -		/*
> -		 * If the device's dma_mask is less than the system's memory
> -		 * size then this is not a candidate for identity mapping.
> -		 */
> -		u64 dma_mask = *dev->dma_mask;
> -
> -		if (dev->coherent_dma_mask &&
> -		    dev->coherent_dma_mask < dma_mask)
> -			dma_mask = dev->coherent_dma_mask;
> -
> -		if (dma_mask < dma_get_required_mask(dev)) {
> -			/*
> -			 * 32 bit DMA is removed from si_domain and fall back
> -			 * to non-identity mapping.
> -			 */
> -			dmar_remove_one_dev_info(dev);
> -			dev_warn(dev, "32bit DMA uses non-identity mapping\n");
> -
> -			return 0;
> -		}

The iommu_no_mapping() also checks whether any 32bit DMA device uses
identity mapping. The device might not work if the system memory space
is bigger than 4G.

Will you add this to other place, or it's unnecessary?

Best regards,
Lu Baolu

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

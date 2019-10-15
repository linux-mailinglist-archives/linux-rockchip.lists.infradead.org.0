Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B97A2D755A
	for <lists+linux-rockchip@lfdr.de>; Tue, 15 Oct 2019 13:43:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=33nXi1Tsd2xyso5rMHSPlQ63LIwDCfiz9IrDzqgWJjU=; b=smVWORVHfSPY+e344w+dDeEAo
	Bi2uDBwKShCeDQF5tbR9hvF1FLTpniV+FySzdx+5OMioiFC+8D54wrNvOrta80WxnJrPZORbmnoSg
	miFHKs0KdLOiZyHMQEowsfBD9HU+pD+/S23kvG7iEscmDo6QrciZ+Ol3lnjp9pBbWvSRW8TrTu2V4
	DxBE8fp3BwE+hMtIZezp1p7zLKsrB6DP33SUeF2+D5Z0oK+G547q3AQmPC4yWm431YX2mYinQpgsj
	zkSFJok8Wp0xuFkpgdK4Q1W2+VA/j0ogQ+7PxnNw5rwR6i5psgRVFSNVIjHVAUEk1D7RV00nWna4Q
	LFam+TNrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKLEn-0000rG-Rh; Tue, 15 Oct 2019 11:43:37 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKLEk-0000qw-OO
 for linux-rockchip@lists.infradead.org; Tue, 15 Oct 2019 11:43:36 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 39529337;
 Tue, 15 Oct 2019 04:43:34 -0700 (PDT)
Received: from [10.1.197.57] (e110467-lin.cambridge.arm.com [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3A6F43F68E;
 Tue, 15 Oct 2019 04:43:33 -0700 (PDT)
Subject: Re: [PATCH] iommu: rockchip: Free domain on .domain_free
To: Ezequiel Garcia <ezequiel@collabora.com>, Joerg Roedel <joro@8bytes.org>, 
 Heiko Stuebner <heiko@sntech.de>
References: <20191002172923.22430-1-ezequiel@collabora.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <815abfca-a15f-365d-438c-5616a05b0513@arm.com>
Date: Tue, 15 Oct 2019 12:43:31 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20191002172923.22430-1-ezequiel@collabora.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_044334_839449_02BC66E9 
X-CRM114-Status: GOOD (  19.26  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-rockchip@lists.infradead.org, iommu@lists.linux-foundation.org,
 kernel@collabora.com, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On 02/10/2019 18:29, Ezequiel Garcia wrote:
> IOMMU domain resource life is well-defined, managed
> by .domain_alloc and .domain_free.
> 
> Therefore, domain-specific resources shouldn't be tied to
> the device life, but instead to its domain.

FWIW,

Reviewed-by: Robin Murphy <robin.murphy@arm.com>

> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> ---
>   drivers/iommu/rockchip-iommu.c | 7 +++++--
>   1 file changed, 5 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/iommu/rockchip-iommu.c b/drivers/iommu/rockchip-iommu.c
> index 26290f310f90..e845bd01a1a2 100644
> --- a/drivers/iommu/rockchip-iommu.c
> +++ b/drivers/iommu/rockchip-iommu.c
> @@ -979,13 +979,13 @@ static struct iommu_domain *rk_iommu_domain_alloc(unsigned type)
>   	if (!dma_dev)
>   		return NULL;
>   
> -	rk_domain = devm_kzalloc(dma_dev, sizeof(*rk_domain), GFP_KERNEL);
> +	rk_domain = kzalloc(sizeof(*rk_domain), GFP_KERNEL);
>   	if (!rk_domain)
>   		return NULL;
>   
>   	if (type == IOMMU_DOMAIN_DMA &&
>   	    iommu_get_dma_cookie(&rk_domain->domain))
> -		return NULL;
> +		goto err_free_domain;
>   
>   	/*
>   	 * rk32xx iommus use a 2 level pagetable.
> @@ -1020,6 +1020,8 @@ static struct iommu_domain *rk_iommu_domain_alloc(unsigned type)
>   err_put_cookie:
>   	if (type == IOMMU_DOMAIN_DMA)
>   		iommu_put_dma_cookie(&rk_domain->domain);
> +err_free_domain:
> +	kfree(rk_domain);
>   
>   	return NULL;
>   }
> @@ -1048,6 +1050,7 @@ static void rk_iommu_domain_free(struct iommu_domain *domain)
>   
>   	if (domain->type == IOMMU_DOMAIN_DMA)
>   		iommu_put_dma_cookie(&rk_domain->domain);
> +	kfree(rk_domain);
>   }
>   
>   static int rk_iommu_add_device(struct device *dev)
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

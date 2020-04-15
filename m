Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3DFC1A92EF
	for <lists+linux-rockchip@lfdr.de>; Wed, 15 Apr 2020 08:10:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dM8jWKGIpNWIDDAzvhU5o88v+Kg+aMkCeeqHnWllPuo=; b=rOa79oLvLeLBqHaRy19Vm8kzj
	ITWv8G9bCliPw4oKovRm/DzhJzcg6x1JUR6kEtgSFW7BotVfy4xrxlVsBivSVWS9eo4hhZV54ilsW
	B4xygqBYoDRlSQAkHYbHLlHGpdhWyquwp+B7BTI9bxrXoB30ysnn5kJQu/8qCnR2aDJOHWPQxFS/I
	+rlqwsYIVJt9R0EGS7dtchxFnsJGKIipaJP41p2UZXGwWQVyB/uKZSUciPPf+B4nGcBxIRBTMLIn2
	OLyTb7JiOPMAqxkWHOsBFqLEpFGzC3lmOtRtDf0YkFoG7i9hMakYAKJl5YTtSVjiDA3LUvhYC/kvl
	mBEA4A/QA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jObFW-0004ya-KX; Wed, 15 Apr 2020 06:10:14 +0000
Received: from mga18.intel.com ([134.134.136.126])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jObFU-0004we-5g; Wed, 15 Apr 2020 06:10:13 +0000
IronPort-SDR: aZxUC6ZJV7DL7w9SljH2XD0Dio9z89PrLYrJzU3WIVwUpe6kSFyFuLeb/eBamqK/+JsgaHZmKU
 rcybm8VYJjVQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2020 23:10:11 -0700
IronPort-SDR: Xrzeker15iDL0GxYgNylnyNCcgOHg/5LrDmSleRIXI69KwIrj67IOyQN42jm1/hyg4yAT+vZ4w
 my6GtVMJbzjQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,385,1580803200"; d="scan'208";a="363586963"
Received: from blu2-mobl3.ccr.corp.intel.com (HELO [10.254.210.208])
 ([10.254.210.208])
 by fmsmga001.fm.intel.com with ESMTP; 14 Apr 2020 23:10:04 -0700
Subject: Re: [PATCH v2 13/33] iommu: Export bus_iommu_probe() and make is safe
 for re-probing
To: Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, David Woodhouse
 <dwmw2@infradead.org>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Rob Clark <robdclark@gmail.com>,
 Heiko Stuebner <heiko@sntech.de>,
 Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Jean-Philippe Brucker <jean-philippe@linaro.org>
References: <20200414131542.25608-1-joro@8bytes.org>
 <20200414131542.25608-14-joro@8bytes.org>
From: Lu Baolu <baolu.lu@linux.intel.com>
Message-ID: <1853992c-47a6-3724-812c-a52558c13732@linux.intel.com>
Date: Wed, 15 Apr 2020 14:10:03 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200414131542.25608-14-joro@8bytes.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_231012_267714_EAEA1545 
X-CRM114-Status: GOOD (  20.59  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.126 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-s390@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 virtualization@lists.linux-foundation.org, linux-rockchip@lists.infradead.org,
 iommu@lists.linux-foundation.org, Joerg Roedel <jroedel@suse.de>,
 linux-mediatek@lists.infradead.org, linux-tegra@vger.kernel.org,
 baolu.lu@linux.intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On 2020/4/14 21:15, Joerg Roedel wrote:
> From: Joerg Roedel <jroedel@suse.de>
> 
> Add a check to the bus_iommu_probe() call-path to make sure it ignores
> devices which have already been successfully probed. Then export the
> bus_iommu_probe() function so it can be used by IOMMU drivers.
> 
> Signed-off-by: Joerg Roedel <jroedel@suse.de>
> ---
>   drivers/iommu/iommu.c | 6 +++++-
>   include/linux/iommu.h | 1 +
>   2 files changed, 6 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/iommu/iommu.c b/drivers/iommu/iommu.c
> index 834a45da0ed0..a2ff95424044 100644
> --- a/drivers/iommu/iommu.c
> +++ b/drivers/iommu/iommu.c
> @@ -1615,6 +1615,10 @@ static int probe_iommu_group(struct device *dev, void *data)
>   	if (!dev_iommu_get(dev))
>   		return -ENOMEM;
>   
> +	/* Device is probed already if in a group */
> +	if (iommu_group_get(dev) != NULL)

Same as
	if (iommu_group_get(dev))
?

By the way, do we need to put the group if device has already been
probed?

Best regards,
baolu

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

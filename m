Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 112C81A2165
	for <lists+linux-rockchip@lfdr.de>; Wed,  8 Apr 2020 14:09:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KAaFGx8c2b1E2+LHoa/RmMF/0PJqGGIvzMtGJhdN/zM=; b=g0m7eTqrMXqCZ653ZrgGkwOan
	1fyrE7A2WNu/h8Cx0at8kgv7eAS4oezd4x4v60VCf4MhaifdTKsIrHjxXEub2M0wgrjNZ/NpvMKzH
	UnNIHCp5DVd8RhPAKyXzB+B3OtEN9U2FLffMypnK7g5kEoeeM4CgJ0OhHDqqygGd+DQkufo0opzXf
	Fi0VXG1JtHVypTNpAPs1yo3uGWHzWDVV7OZD3OZ2+Fx9Tc43rgdCOu7uGrQGyNaxwIsvlRVLt6o24
	1/+PC1fWGCn/uZ+okJ9Ixq02JdSmo16joF/bpHcr/hIRcwELJRP4rJ9eWGUj+dMnP2JWxxo8rVsBL
	MfKajKC/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jM9Wk-00072M-So; Wed, 08 Apr 2020 12:09:54 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jM9Wg-00070j-Cn; Wed, 08 Apr 2020 12:09:51 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5703C31B;
 Wed,  8 Apr 2020 05:09:47 -0700 (PDT)
Received: from [10.57.55.221] (unknown [10.57.55.221])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id AA7BA3F73D;
 Wed,  8 Apr 2020 05:09:43 -0700 (PDT)
Subject: Re: [RFC PATCH 17/34] iommu/arm-smmu: Store device instead of group
 in arm_smmu_s2cr
To: Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, David Woodhouse
 <dwmw2@infradead.org>, Lu Baolu <baolu.lu@linux.intel.com>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson
 <bjorn.andersson@linaro.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Rob Clark <robdclark@gmail.com>, Heiko Stuebner <heiko@sntech.de>,
 Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Jean-Philippe Brucker <jean-philippe@linaro.org>
References: <20200407183742.4344-1-joro@8bytes.org>
 <20200407183742.4344-18-joro@8bytes.org>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <98c10a41-d223-e375-9742-b6471c3dc33c@arm.com>
Date: Wed, 8 Apr 2020 13:09:40 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200407183742.4344-18-joro@8bytes.org>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_050950_477074_043AA882 
X-CRM114-Status: GOOD (  24.18  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: linux-s390@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 virtualization@lists.linux-foundation.org, linux-rockchip@lists.infradead.org,
 iommu@lists.linux-foundation.org, Joerg Roedel <jroedel@suse.de>,
 linux-mediatek@lists.infradead.org, linux-tegra@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On 2020-04-07 7:37 pm, Joerg Roedel wrote:
> From: Joerg Roedel <jroedel@suse.de>
> 
> This is required to convert the arm-smmu driver to the
> probe/release_device() interface.
> 
> Signed-off-by: Joerg Roedel <jroedel@suse.de>
> ---
>   drivers/iommu/arm-smmu.c | 14 +++++++++-----
>   1 file changed, 9 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
> index a6a5796e9c41..3493501d8b2c 100644
> --- a/drivers/iommu/arm-smmu.c
> +++ b/drivers/iommu/arm-smmu.c
> @@ -69,7 +69,7 @@ MODULE_PARM_DESC(disable_bypass,
>   	"Disable bypass streams such that incoming transactions from devices that are not attached to an iommu domain will report an abort back to the device and will not be allowed to pass through the SMMU.");
>   
>   struct arm_smmu_s2cr {
> -	struct iommu_group		*group;
> +	struct device			*dev;
>   	int				count;
>   	enum arm_smmu_s2cr_type		type;
>   	enum arm_smmu_s2cr_privcfg	privcfg;
> @@ -1100,7 +1100,7 @@ static int arm_smmu_master_alloc_smes(struct device *dev)
>   	/* It worked! Now, poke the actual hardware */
>   	for_each_cfg_sme(cfg, fwspec, i, idx) {
>   		arm_smmu_write_sme(smmu, idx);
> -		smmu->s2crs[idx].group = group;
> +		smmu->s2crs[idx].dev = dev;
>   	}
>   
>   	mutex_unlock(&smmu->stream_map_mutex);
> @@ -1495,11 +1495,15 @@ static struct iommu_group *arm_smmu_device_group(struct device *dev)
>   	int i, idx;
>   
>   	for_each_cfg_sme(cfg, fwspec, i, idx) {
> -		if (group && smmu->s2crs[idx].group &&
> -		    group != smmu->s2crs[idx].group)
> +		struct iommu_group *idx_grp = NULL;
> +
> +		if (smmu->s2crs[idx].dev)
> +			idx_grp = smmu->s2crs[idx].dev->iommu_group;

For a hot-pluggable bus where logical devices may share Stream IDs (like 
fsl-mc), this could happen:

   create device A
   iommu_probe_device(A)
     iommu_device_group(A) -> alloc group X
   create device B
   iommu_probe_device(B)
     iommu_device_group(A) -> lookup returns group X
   ...
   iommu_remove_device(A)
   delete device A
   create device C
   iommu_probe_device(C)
     iommu_device_group(C) -> use-after-free of A

Preserving the logical behaviour here would probably look *something* 
like the mangled diff below, but I haven't thought it through 100%.

Robin.

----->8-----
diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
index 16c4b87af42b..e88612ee47fe 100644
--- a/drivers/iommu/arm-smmu.c
+++ b/drivers/iommu/arm-smmu.c
@@ -1100,10 +1100,8 @@ static int arm_smmu_master_alloc_smes(struct 
device *dev)
         iommu_group_put(group);

         /* It worked! Now, poke the actual hardware */
-       for_each_cfg_sme(fwspec, i, idx) {
+       for_each_cfg_sme(fwspec, i, idx)
                 arm_smmu_write_sme(smmu, idx);
-               smmu->s2crs[idx].group = group;
-       }

         mutex_unlock(&smmu->stream_map_mutex);
         return 0;
@@ -1500,15 +1498,17 @@ static struct iommu_group 
*arm_smmu_device_group(struct device *dev)
         }

         if (group)
-               return iommu_group_ref_get(group);
-
-       if (dev_is_pci(dev))
+               iommu_group_ref_get(group);
+       else if (dev_is_pci(dev))
                 group = pci_device_group(dev);
         else if (dev_is_fsl_mc(dev))
                 group = fsl_mc_device_group(dev);
         else
                 group = generic_device_group(dev);

+       for_each_cfg_sme(fwspec, i, idx)
+               smmu->s2crs[idx].group = group;
+
         return group;
  }

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

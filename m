Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 150B61A242C
	for <lists+linux-rockchip@lfdr.de>; Wed,  8 Apr 2020 16:37:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xmUUOyFLvIV7iHoiTxXNqRs0IvFFV/uCVE00fHLDi98=; b=mGMt7SFeg4aeh8
	756XN0RmuuaHciVy41tIEX+hplyBaElnEc31AYcRMPIM/7XTZVUbC3c8NuILNu7pv8TuHNsRUJCWo
	QKUtdJANCFEffcZQIbkpO2UDqCwh4m7Vo/vv6lUlWH9r/VGcZFxOhIiRUZKaWuneqqu4/9gG4ZQA6
	XEPyR3ggwAXjoS4KSvD4PSgj5OG0csarC9C3gMqapHGFNuxLRDpyj9o4fJnyrea1AjJyslHj2skpj
	E2EnnNdKD67Y+6zWGWWUV4pjLLHl6hJkn+nh2kOjfsPrzx1TI+1I0/V0lFpBC1rgw7aASEeMd4YOZ
	gSDB9wXCQX4X0e+f3wCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMBpQ-0006cm-1s; Wed, 08 Apr 2020 14:37:20 +0000
Received: from 8bytes.org ([81.169.241.247] helo=theia.8bytes.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMBpM-0006an-0I; Wed, 08 Apr 2020 14:37:17 +0000
Received: by theia.8bytes.org (Postfix, from userid 1000)
 id 3E3B4387; Wed,  8 Apr 2020 16:37:09 +0200 (CEST)
Date: Wed, 8 Apr 2020 16:37:07 +0200
From: Joerg Roedel <joro@8bytes.org>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [RFC PATCH 17/34] iommu/arm-smmu: Store device instead of group
 in arm_smmu_s2cr
Message-ID: <20200408143707.GK3103@8bytes.org>
References: <20200407183742.4344-1-joro@8bytes.org>
 <20200407183742.4344-18-joro@8bytes.org>
 <98c10a41-d223-e375-9742-b6471c3dc33c@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <98c10a41-d223-e375-9742-b6471c3dc33c@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_073716_195840_E868B745 
X-CRM114-Status: GOOD (  10.83  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [81.169.241.247 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Heiko Stuebner <heiko@sntech.de>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, linux-tegra@vger.kernel.org,
 Thierry Reding <thierry.reding@gmail.com>, Will Deacon <will@kernel.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Jean-Philippe Brucker <jean-philippe@linaro.org>,
 linux-samsung-soc@vger.kernel.org, Rob Clark <robdclark@gmail.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 linux-rockchip@lists.infradead.org, Andy Gross <agross@kernel.org>,
 Joerg Roedel <jroedel@suse.de>, linux-s390@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 virtualization@lists.linux-foundation.org,
 Gerald Schaefer <gerald.schaefer@de.ibm.com>, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, Kukjin Kim <kgene@kernel.org>,
 David Woodhouse <dwmw2@infradead.org>, Lu Baolu <baolu.lu@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Robin,

thanks for looking into this.

On Wed, Apr 08, 2020 at 01:09:40PM +0100, Robin Murphy wrote:
> For a hot-pluggable bus where logical devices may share Stream IDs (like
> fsl-mc), this could happen:
> 
>   create device A
>   iommu_probe_device(A)
>     iommu_device_group(A) -> alloc group X
>   create device B
>   iommu_probe_device(B)
>     iommu_device_group(A) -> lookup returns group X
>   ...
>   iommu_remove_device(A)
>   delete device A
>   create device C
>   iommu_probe_device(C)
>     iommu_device_group(C) -> use-after-free of A
> 
> Preserving the logical behaviour here would probably look *something* like
> the mangled diff below, but I haven't thought it through 100%.

Yeah, I think you are right. How about just moving the loop which sets
s2crs[idx].group to arm_smmu_device_group()? In that case I can drop
this patch and leave the group pointer in place.

Regards,

	Joerg


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

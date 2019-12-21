Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0C63128A00
	for <lists+linux-rockchip@lfdr.de>; Sat, 21 Dec 2019 16:06:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m0XANdTRXL+UIP5EbNKfp6XR4YJLGA+9BWApAUvr99E=; b=CbBZZaMtoAVJ1R
	9B0tpNAPVWVaulKFXVEoL61795rB+5hM+mzTjWNztiw7FRX5J+/yTAiREJS/cmIcgHWHUSPB/OnH0
	cuW7dh/gckJ1+Fp8etmXYx9dGzOPaF0UTWASvmtuZgywoxirjuPgTJs+z7XZYZzUAJEPk8sEg3XBy
	ExxDsNVPNoyeSgcZnxEHbj84e/1oLPifX1wYA3tcdD8HJMSzF8u13o8pEL+bjEy7K8vbsu5gs4kvY
	uRfX0UFUihGLhaY/0P20DoOmszEhuPe/EDafNLtZyI6onHv7jDo2QV2AMHHc3JIN4aqN93g25mO1X
	F0enoOwc9CtRI8a3pLJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iigKi-0001vq-R2; Sat, 21 Dec 2019 15:06:20 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iigJ1-0007jj-LM
 for linux-rockchip@lists.infradead.org; Sat, 21 Dec 2019 15:04:38 +0000
Received: by mail-ed1-x544.google.com with SMTP id m8so11371790edi.13
 for <linux-rockchip@lists.infradead.org>; Sat, 21 Dec 2019 07:04:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=tcd-ie.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=3kw9XOM83Gnbnm5VBWA2//dqKfolDXj7oZ7r7B1xmXk=;
 b=LF2xaqTBBlPQ7i0KVmncE+goIEe89wuyJqhz7klIJWAT71TTSCk30NViAVT7SqjMw+
 7mDm8B7wD8nu4PWLGnZXpzTlibPXPwnZcaD0bsKB74d0NgcPmlUzaRXKjLR17+gOcimK
 8fjIXvrME+nRk1BO7gm1A2LxBEHGbznK81gTHWmTZMMCaBlZyxrmIn7FGdI85YZOwsIG
 mZw5pwH6nNkr1sXWvObIhq7po60PRXw2xmIt1UG+M5Qvx3peWdtOiYVPQYFu+brgYfWA
 HDkIR8dxB86cKmJJ7DVe6QZcvYxm/BF8hmbwSr9yCIqznQUjonCUJj32NcQy9vmF1Oq+
 PxqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=3kw9XOM83Gnbnm5VBWA2//dqKfolDXj7oZ7r7B1xmXk=;
 b=pbTYfpoZSHhfuO00iUqeRFpH6V2G0Z/52Z/WFl/y48ars7Ouw+96PaTCRcVDc/lwYD
 tV9SWtbyoci0sseVJq0az69Lxi9cxwTGmuM9lDshoQkaLXoYF/eP51q78KEnCFwQNv13
 RKyY/TH8J7pS8AEE/z493toAoZmDeCgUqCJq0RGcejPkdNsl4zdwbWV7SqE0pmOZQ6An
 weFVxdxNQUY4oCjOiTElnf0/lPgP/sm7qGvBvHJmHlOCUfoJhmd3W7U2Uza3vfDAlsEy
 8nEZV4jWiz0X0CuaqoMtj/ONiT4o4NMU+c9pq9HJNuTeFMqRC7Kim3VlbzGHevLSUrVm
 BJHQ==
X-Gm-Message-State: APjAAAXLcQXZU0uvMtHqIG3HSMQRIUP4ITH5kEybSRyB9wHwiAhxL0P0
 OKyzyqN3D/5haVwV65GLM2mgtg==
X-Google-Smtp-Source: APXvYqyaL08IHL0GcHhm3cVmdCwxRxirUVhP6DZU/+/bnczE7blAGMOLi2oiWq+7pBmE+gO544tPVg==
X-Received: by 2002:a17:906:49c4:: with SMTP id
 w4mr22272847ejv.158.1576940673039; 
 Sat, 21 Dec 2019 07:04:33 -0800 (PST)
Received: from localhost.localdomain ([80.233.37.20])
 by smtp.googlemail.com with ESMTPSA id u13sm1517639ejz.69.2019.12.21.07.04.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 21 Dec 2019 07:04:32 -0800 (PST)
From: Tom Murphy <murphyt7@tcd.ie>
To: iommu@lists.linux-foundation.org
Subject: [PATCH 3/8] iommu/vt-d: Remove IOVA handling code from non-dma_ops
 path
Date: Sat, 21 Dec 2019 15:03:55 +0000
Message-Id: <20191221150402.13868-4-murphyt7@tcd.ie>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191221150402.13868-1-murphyt7@tcd.ie>
References: <20191221150402.13868-1-murphyt7@tcd.ie>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191221_070435_738726_45F008FA 
X-CRM114-Status: GOOD (  18.33  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Heiko Stuebner <heiko@sntech.de>, kvm@vger.kernel.org,
 David Airlie <airlied@linux.ie>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 dri-devel@lists.freedesktop.org, Bjorn Andersson <bjorn.andersson@linaro.org>,
 linux-tegra@vger.kernel.org, Julien Grall <julien.grall@arm.com>,
 Thierry Reding <thierry.reding@gmail.com>, Will Deacon <will@kernel.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Jean-Philippe Brucker <jean-philippe@linaro.org>,
 linux-samsung-soc@vger.kernel.org, Marc Zyngier <maz@kernel.org>,
 Joerg Roedel <joro@8bytes.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, linux-rockchip@lists.infradead.org,
 Andy Gross <agross@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-s390@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, Jani Nikula <jani.nikula@linux.intel.com>,
 Eric Auger <eric.auger@redhat.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 linux-mediatek@lists.infradead.org, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 virtualization@lists.linux-foundation.org,
 Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 David Woodhouse <dwmw2@infradead.org>, Cornelia Huck <cohuck@redhat.com>,
 linux-kernel@vger.kernel.org, Tom Murphy <murphyt7@tcd.ie>,
 Rob Clark <robdclark@gmail.com>, Kukjin Kim <kgene@kernel.org>,
 Daniel Vetter <daniel@ffwll.ch>, Robin Murphy <robin.murphy@arm.com>,
 Lu Baolu <baolu.lu@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Remove all IOVA handling code from the non-dma_ops path in the intel
iommu driver.

There's no need for the non-dma_ops path to keep track of IOVAs. The
whole point of the non-dma_ops path is that it allows the IOVAs to be
handled separately. The IOVA handling code removed in this patch is
pointless.

Signed-off-by: Tom Murphy <murphyt7@tcd.ie>
---
 drivers/iommu/intel-iommu.c | 89 ++++++++++++++-----------------------
 1 file changed, 33 insertions(+), 56 deletions(-)

diff --git a/drivers/iommu/intel-iommu.c b/drivers/iommu/intel-iommu.c
index 64b1a9793daa..8d72ea0fb843 100644
--- a/drivers/iommu/intel-iommu.c
+++ b/drivers/iommu/intel-iommu.c
@@ -1908,7 +1908,8 @@ static void domain_exit(struct dmar_domain *domain)
 	domain_remove_dev_info(domain);
 
 	/* destroy iovas */
-	put_iova_domain(&domain->iovad);
+	if (domain->domain.type == IOMMU_DOMAIN_DMA)
+		put_iova_domain(&domain->iovad);
 
 	if (domain->pgd) {
 		struct page *freelist;
@@ -2671,19 +2672,9 @@ static struct dmar_domain *set_domain_for_dev(struct device *dev,
 }
 
 static int iommu_domain_identity_map(struct dmar_domain *domain,
-				     unsigned long long start,
-				     unsigned long long end)
+				     unsigned long first_vpfn,
+				     unsigned long last_vpfn)
 {
-	unsigned long first_vpfn = start >> VTD_PAGE_SHIFT;
-	unsigned long last_vpfn = end >> VTD_PAGE_SHIFT;
-
-	if (!reserve_iova(&domain->iovad, dma_to_mm_pfn(first_vpfn),
-			  dma_to_mm_pfn(last_vpfn))) {
-		pr_err("Reserving iova failed\n");
-		return -ENOMEM;
-	}
-
-	pr_debug("Mapping reserved region %llx-%llx\n", start, end);
 	/*
 	 * RMRR range might have overlap with physical memory range,
 	 * clear it first
@@ -2760,7 +2751,8 @@ static int __init si_domain_init(int hw)
 
 		for_each_mem_pfn_range(i, nid, &start_pfn, &end_pfn, NULL) {
 			ret = iommu_domain_identity_map(si_domain,
-					PFN_PHYS(start_pfn), PFN_PHYS(end_pfn));
+					mm_to_dma_pfn(start_pfn),
+					mm_to_dma_pfn(end_pfn));
 			if (ret)
 				return ret;
 		}
@@ -4593,58 +4585,37 @@ static int intel_iommu_memory_notifier(struct notifier_block *nb,
 				       unsigned long val, void *v)
 {
 	struct memory_notify *mhp = v;
-	unsigned long long start, end;
-	unsigned long start_vpfn, last_vpfn;
+	unsigned long start_vpfn = mm_to_dma_pfn(mhp->start_pfn);
+	unsigned long last_vpfn = mm_to_dma_pfn(mhp->start_pfn +
+			mhp->nr_pages - 1);
 
 	switch (val) {
 	case MEM_GOING_ONLINE:
-		start = mhp->start_pfn << PAGE_SHIFT;
-		end = ((mhp->start_pfn + mhp->nr_pages) << PAGE_SHIFT) - 1;
-		if (iommu_domain_identity_map(si_domain, start, end)) {
-			pr_warn("Failed to build identity map for [%llx-%llx]\n",
-				start, end);
+		if (iommu_domain_identity_map(si_domain, start_vpfn,
+					last_vpfn)) {
+			pr_warn("Failed to build identity map for [%lx-%lx]\n",
+				start_vpfn, last_vpfn);
 			return NOTIFY_BAD;
 		}
 		break;
 
 	case MEM_OFFLINE:
 	case MEM_CANCEL_ONLINE:
-		start_vpfn = mm_to_dma_pfn(mhp->start_pfn);
-		last_vpfn = mm_to_dma_pfn(mhp->start_pfn + mhp->nr_pages - 1);
-		while (start_vpfn <= last_vpfn) {
-			struct iova *iova;
+		{
 			struct dmar_drhd_unit *drhd;
 			struct intel_iommu *iommu;
 			struct page *freelist;
 
-			iova = find_iova(&si_domain->iovad, start_vpfn);
-			if (iova == NULL) {
-				pr_debug("Failed get IOVA for PFN %lx\n",
-					 start_vpfn);
-				break;
-			}
-
-			iova = split_and_remove_iova(&si_domain->iovad, iova,
-						     start_vpfn, last_vpfn);
-			if (iova == NULL) {
-				pr_warn("Failed to split IOVA PFN [%lx-%lx]\n",
-					start_vpfn, last_vpfn);
-				return NOTIFY_BAD;
-			}
-
-			freelist = domain_unmap(si_domain, iova->pfn_lo,
-					       iova->pfn_hi);
+			freelist = domain_unmap(si_domain, start_vpfn,
+					last_vpfn);
 
 			rcu_read_lock();
 			for_each_active_iommu(iommu, drhd)
 				iommu_flush_iotlb_psi(iommu, si_domain,
-					iova->pfn_lo, iova_size(iova),
+					start_vpfn, mhp->nr_pages,
 					!freelist, 0);
 			rcu_read_unlock();
 			dma_free_pagelist(freelist);
-
-			start_vpfn = iova->pfn_hi + 1;
-			free_iova_mem(iova);
 		}
 		break;
 	}
@@ -4672,8 +4643,9 @@ static void free_all_cpu_cached_iovas(unsigned int cpu)
 		for (did = 0; did < cap_ndoms(iommu->cap); did++) {
 			domain = get_iommu_domain(iommu, (u16)did);
 
-			if (!domain)
+			if (!domain || domain->domain.type != IOMMU_DOMAIN_DMA)
 				continue;
+
 			free_cpu_cached_iovas(cpu, &domain->iovad);
 		}
 	}
@@ -5095,9 +5067,6 @@ static int md_domain_init(struct dmar_domain *domain, int guest_width)
 {
 	int adjust_width;
 
-	init_iova_domain(&domain->iovad, VTD_PAGE_SIZE, IOVA_START_PFN);
-	domain_reserve_special_ranges(domain);
-
 	/* calculate AGAW */
 	domain->gaw = guest_width;
 	adjust_width = guestwidth_to_adjustwidth(guest_width);
@@ -5116,6 +5085,18 @@ static int md_domain_init(struct dmar_domain *domain, int guest_width)
 	return 0;
 }
 
+static void intel_init_iova_domain(struct dmar_domain *dmar_domain)
+{
+	init_iova_domain(&dmar_domain->iovad, VTD_PAGE_SIZE, IOVA_START_PFN);
+	copy_reserved_iova(&reserved_iova_list, &dmar_domain->iovad);
+
+	if (init_iova_flush_queue(&dmar_domain->iovad, iommu_flush_iova,
+				iova_entry_free)) {
+		pr_warn("iova flush queue initialization failed\n");
+		intel_iommu_strict = 1;
+	}
+}
+
 static struct iommu_domain *intel_iommu_domain_alloc(unsigned type)
 {
 	struct dmar_domain *dmar_domain;
@@ -5136,12 +5117,8 @@ static struct iommu_domain *intel_iommu_domain_alloc(unsigned type)
 			return NULL;
 		}
 
-		if (type == IOMMU_DOMAIN_DMA &&
-		    init_iova_flush_queue(&dmar_domain->iovad,
-					  iommu_flush_iova, iova_entry_free)) {
-			pr_warn("iova flush queue initialization failed\n");
-			intel_iommu_strict = 1;
-		}
+		if (type == IOMMU_DOMAIN_DMA)
+			intel_init_iova_domain(dmar_domain);
 
 		domain_update_iommu_cap(dmar_domain);
 
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

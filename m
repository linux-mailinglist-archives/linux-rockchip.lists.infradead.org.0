Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01CDA8E9D9
	for <lists+linux-rockchip@lfdr.de>; Thu, 15 Aug 2019 13:12:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7xZMKz1bSszZqUTf9WNF1W+rLcLRbI8e0IUL2k10fRs=; b=a+SmBHssW1y85e
	E/SycCgYc88rHS+LNBwptCoCTnnESPn64YKz/YW73GDuwAKB9WPRrYzaTotL4P8fZkQYRiIhpnHAp
	oHTHd0NV8F+23zKousxQPdWGkRevasrpLUe7MN6iy+cLZXG51c09Tnlz2Ndc5J2QfIObgugUt20fW
	Lz6CA3mHouJ1o3UHx67pUSfLvZaScKfhSmF0b6iVLgakGy1sowR50nytWRXo46Wq5pRTcrj98gxzl
	YE00p3x3UJYstKvOVridslXpTk2+fY2Xp6S1NDHK/o2ukfGvex4P97cYmIeqVHJqTJ4erpNA7t+i5
	ifCjQm5+qne0c4SErCQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyDg1-00065g-3k; Thu, 15 Aug 2019 11:12:17 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyDeT-00055l-8a
 for linux-rockchip@lists.infradead.org; Thu, 15 Aug 2019 11:10:42 +0000
Received: by mail-pf1-x441.google.com with SMTP id q139so1163340pfc.13
 for <linux-rockchip@lists.infradead.org>; Thu, 15 Aug 2019 04:10:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=tcd-ie.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=wEXYBj4ZBszv35LjPu3E0u6/kt/85OrrD2EeNCzkUBc=;
 b=XPPWwuG3BDtz9zLilW2olnPQ8ky35xrZG26qdZoB3LKh+/iwHAy+bQF2KDrKdeZV2N
 CMTiP1KN8tbu+2JHXJXi4WMKf7pv6aJchfGyVAIQeRPVOA5SHX+VjgzKcX/YdgQ2Q49J
 WHVoRkKJQkRRYx/ESCBuBgwYULgKq63cchemUhQyQD+fGZ/EwFT7thT98qu4z4y1OJOr
 KUn/PiuD6xKX7UW6sGW0qNLIpt/JJJS6XPXy2MM+c1i9GQSQcdjzaTzojhkUzjY+53Zo
 QQZXJx9rjkb87RL67ZGpbXqvGzPC8NuSgWdiBT9lKeJvkxiOGe+F68SjIGE3NiZJVCHu
 f0nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=wEXYBj4ZBszv35LjPu3E0u6/kt/85OrrD2EeNCzkUBc=;
 b=eoV2gIw43CaP+Kb5PoFLSz/GamkQj5M2YwY78/rSaLKvoLT8uSfJh1jgOKbwls1SMT
 nWEohVa6a4lfezmjIlc49zZ0Y0GnuvYD0IQUwPR4WLPrPNt271BBbBsKLnL7Q7OFO31k
 B8+WOqCUSyMuOHPTfhRxM05gMCmrOVhbvHV7HZt4j3HNLPrFHstJz/EmH9FENaFdp/Jp
 G/ZCCSlzYz38clxiCCxYNmTNVHi/3wWgkmglhJRdcPQQr6bTxc7ii/C9CLBFn9sJ1owt
 mizD1ztnQIlz1C6AldUL24bSF8g+uUjZfTChxBMShS01+MKpPTUwKDIViDTkf22y5G5g
 TQlQ==
X-Gm-Message-State: APjAAAXgV/tHgyicdzv5OARW3hICsyMGfFmP9ZXqq+UtzJNUMKd8RgAv
 fv5OBh1UX/ckE3Re6iXZiI+Wpw==
X-Google-Smtp-Source: APXvYqzSB4whsCSMrGCbOhHnYoZ8j/zh/fuAVTXq5C215cfTrXcxsBzvL3L0WHO6kT05nQmnVEnbRg==
X-Received: by 2002:aa7:91cc:: with SMTP id z12mr4887018pfa.76.1565867440836; 
 Thu, 15 Aug 2019 04:10:40 -0700 (PDT)
Received: from localhost.localdomain
 ([2404:e801:200e:19c4:6c3f:b548:3a9c:7867])
 by smtp.googlemail.com with ESMTPSA id z13sm1042678pjn.32.2019.08.15.04.10.34
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 15 Aug 2019 04:10:40 -0700 (PDT)
From: Tom Murphy <murphyt7@tcd.ie>
To: iommu@lists.linux-foundation.org
Subject: [PATCH V5 3/5] iommu/dma-iommu: Handle deferred devices
Date: Thu, 15 Aug 2019 12:09:41 +0100
Message-Id: <20190815110944.3579-4-murphyt7@tcd.ie>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190815110944.3579-1-murphyt7@tcd.ie>
References: <20190815110944.3579-1-murphyt7@tcd.ie>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_041041_400122_DAA76F5E 
X-CRM114-Status: GOOD (  14.84  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 linux-tegra@vger.kernel.org, Thierry Reding <thierry.reding@gmail.com>,
 Will Deacon <will@kernel.org>, Marek Szyprowski <m.szyprowski@samsung.com>,
 Jean-Philippe Brucker <jean-philippe@linaro.org>,
 linux-samsung-soc@vger.kernel.org, Joerg Roedel <joro@8bytes.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 linux-rockchip@lists.infradead.org, Andy Gross <agross@kernel.org>,
 Gerald Schaefer <gerald.schaefer@de.ibm.com>, linux-s390@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org, David Woodhouse <dwmw2@infradead.org>,
 linux-kernel@vger.kernel.org, Tom Murphy <murphyt7@tcd.ie>,
 Rob Clark <robdclark@gmail.com>, Kukjin Kim <kgene@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Handle devices which defer their attach to the iommu in the dma-iommu api

Signed-off-by: Tom Murphy <murphyt7@tcd.ie>
---
 drivers/iommu/dma-iommu.c | 27 ++++++++++++++++++++++++++-
 1 file changed, 26 insertions(+), 1 deletion(-)

diff --git a/drivers/iommu/dma-iommu.c b/drivers/iommu/dma-iommu.c
index 2712fbc68b28..906b7fa14d3c 100644
--- a/drivers/iommu/dma-iommu.c
+++ b/drivers/iommu/dma-iommu.c
@@ -22,6 +22,7 @@
 #include <linux/pci.h>
 #include <linux/scatterlist.h>
 #include <linux/vmalloc.h>
+#include <linux/crash_dump.h>
 
 struct iommu_dma_msi_page {
 	struct list_head	list;
@@ -351,6 +352,21 @@ static int iommu_dma_init_domain(struct iommu_domain *domain, dma_addr_t base,
 	return iova_reserve_iommu_regions(dev, domain);
 }
 
+static int handle_deferred_device(struct device *dev,
+	struct iommu_domain *domain)
+{
+	const struct iommu_ops *ops = domain->ops;
+
+	if (!is_kdump_kernel())
+		return 0;
+
+	if (unlikely(ops->is_attach_deferred &&
+		ops->is_attach_deferred(domain, dev)))
+		return iommu_attach_device(domain, dev);
+
+	return 0;
+}
+
 /**
  * dma_info_to_prot - Translate DMA API directions and attributes to IOMMU API
  *                    page flags.
@@ -463,6 +479,9 @@ static dma_addr_t __iommu_dma_map(struct device *dev, phys_addr_t phys,
 	size_t iova_off = iova_offset(iovad, phys);
 	dma_addr_t iova;
 
+	if (unlikely(handle_deferred_device(dev, domain)))
+		return DMA_MAPPING_ERROR;
+
 	size = iova_align(iovad, size + iova_off);
 
 	iova = iommu_dma_alloc_iova(domain, size, dma_get_mask(dev), dev);
@@ -581,6 +600,9 @@ static void *iommu_dma_alloc_remap(struct device *dev, size_t size,
 
 	*dma_handle = DMA_MAPPING_ERROR;
 
+	if (unlikely(handle_deferred_device(dev, domain)))
+		return NULL;
+
 	min_size = alloc_sizes & -alloc_sizes;
 	if (min_size < PAGE_SIZE) {
 		min_size = PAGE_SIZE;
@@ -713,7 +735,7 @@ static dma_addr_t iommu_dma_map_page(struct device *dev, struct page *page,
 	int prot = dma_info_to_prot(dir, coherent, attrs);
 	dma_addr_t dma_handle;
 
-	dma_handle =__iommu_dma_map(dev, phys, size, prot);
+	dma_handle = __iommu_dma_map(dev, phys, size, prot);
 	if (!coherent && !(attrs & DMA_ATTR_SKIP_CPU_SYNC) &&
 	    dma_handle != DMA_MAPPING_ERROR)
 		arch_sync_dma_for_device(dev, phys, size, dir);
@@ -823,6 +845,9 @@ static int iommu_dma_map_sg(struct device *dev, struct scatterlist *sg,
 	unsigned long mask = dma_get_seg_boundary(dev);
 	int i;
 
+	if (unlikely(handle_deferred_device(dev, domain)))
+		return 0;
+
 	if (!(attrs & DMA_ATTR_SKIP_CPU_SYNC))
 		iommu_dma_sync_sg_for_device(dev, sg, nents, dir);
 
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

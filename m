Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6267DAD015
	for <lists+linux-rockchip@lfdr.de>; Sun,  8 Sep 2019 18:58:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O3+1C4gHqv1tLFPIqweR4RoYOIfbLaV7tMdjITjio6w=; b=VyuEN2ZrTnapXK
	dS9ctIYGfkRmkmkzMCE2OMpnM+sFcy7xzwnzIdbG9tOzWk5Ir+unG5fCHHU9inofj/MY7AUEV5qfF
	JE3iAPwY4K+4zAEs0ysiFkZ1PR7QM619HM+FsG6y4y0iW4NGS/r7ax2+4uM4W+Gmaix8FUTy0Pksq
	rhQFh9RiNG0Z9kHAQq1cydaOoFql2T6Ty12CQql3hU6hMtBCC60bD/Bfn1W84S7mazEr6tZccT6iX
	WFR7B6B7tE8pUpwm/JXYWV48mjlpIpjuChoe+U0gTNknt3LwGoAcukqs/Iz/F9x6NXt/N9fasgyhT
	gvelQZtvTQ1r5DenDD7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i70WE-0001j6-Rq; Sun, 08 Sep 2019 16:58:30 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i70Uv-0006IV-2m
 for linux-rockchip@lists.infradead.org; Sun, 08 Sep 2019 16:57:13 +0000
Received: by mail-pl1-x644.google.com with SMTP id k1so5454007pls.11
 for <linux-rockchip@lists.infradead.org>; Sun, 08 Sep 2019 09:57:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=tcd-ie.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=fAJIaeMy2eQobkqze5gpyoS/QeZKT96RyPc/Fq8itMQ=;
 b=gIzGX1RTmcudGCJKOn/C+BiFyjNYhfDmzcWXTYF+GB+qYZsgO8XgeYRVyeQwPkY9H9
 wfcau0BPSQZIc6VAMovCcu1x8zDws3CiXhc1r6OYf4EtX2tQYvlMR3BEakgC4F6WP7Op
 79lex3NN6lZ+6TqnODebKT25rPq9q2Ad7p3Ut4sP8GPNT+7DIHZ19pOA0zDuRx4Ve3NY
 wp5WrvVtMXdljRkCSQiTIk2IaQjfmdoveQnUnhEIELuxE8lz6PcBZTU/HM4WKB4UxloM
 qPm0/gAXG7FBDBK6aDWzi9nPMPolJ3ZyPfs2DEfSVL2fVvMhQ8jDgmTtmLFwp7IOmIWY
 n7kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=fAJIaeMy2eQobkqze5gpyoS/QeZKT96RyPc/Fq8itMQ=;
 b=noLAOC4Qa4XY9MC7lhk9gJRKpyBC2Lsi5FLgkNUNrcxWwRLqO9fvwz4W7/QWE9J9jf
 MvvQ2wmQcrpT6xYj3r/pI/LEC0M914SkrqD5Um31ciOoHiQ5v/D7Bs9myEr/aVg7As0S
 nd6o/1uKhiopAoE2x4UK9hobfjPKHkJ327OLuNwUQVbUuqh26+JLX+h6BDpcsMDTdisS
 aPq5Dlaka3RsYdyIvIBZpW/x2TCfR4yqg2Dklzd4XX2PLvlZAwtMEIY6Ib9vPZeXUiln
 yXuUZ6xWbrcPTnKP5hSLOgp6qUOLkcS7+YJ/N3HEAPWxBEJlm/6Dkm2gOnZv/SGoZAii
 +C6Q==
X-Gm-Message-State: APjAAAV22bLG++W5F5zDYefuZSy9TvvzoqjNnQaqf+ObcLrPFi6MXTla
 2J/kWDNgle5ri/Fz0N/XBy/7sg==
X-Google-Smtp-Source: APXvYqzPhfrkAZBGVLAMVQJgc4sTyV+jrwe7GCElyOlS0MKLQHm4nHnT+K5O7UwOhB9dVwQiBTXNrw==
X-Received: by 2002:a17:902:8486:: with SMTP id
 c6mr1779387plo.341.1567961828443; 
 Sun, 08 Sep 2019 09:57:08 -0700 (PDT)
Received: from localhost.localdomain ([24.244.23.109])
 by smtp.googlemail.com with ESMTPSA id
 f188sm13834631pfa.170.2019.09.08.09.57.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 08 Sep 2019 09:57:07 -0700 (PDT)
From: Tom Murphy <murphyt7@tcd.ie>
To: iommu@lists.linux-foundation.org
Subject: [PATCH V6 4/5] iommu/dma-iommu: Use the dev->coherent_dma_mask
Date: Sun,  8 Sep 2019 09:56:40 -0700
Message-Id: <20190908165642.22253-5-murphyt7@tcd.ie>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190908165642.22253-1-murphyt7@tcd.ie>
References: <20190908165642.22253-1-murphyt7@tcd.ie>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190908_095709_173390_AC4C6EC3 
X-CRM114-Status: GOOD (  13.49  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Heiko Stuebner <heiko@sntech.de>, virtualization@lists.linux-foundation.org,
 linux-tegra@vger.kernel.org, Thierry Reding <thierry.reding@gmail.com>,
 Will Deacon <will@kernel.org>, Christoph Hellwig <hch@lst.de>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
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

Use the dev->coherent_dma_mask when allocating in the dma-iommu ops api.

Signed-off-by: Tom Murphy <murphyt7@tcd.ie>
Reviewed-by: Robin Murphy <robin.murphy@arm.com>
Reviewed-by: Christoph Hellwig <hch@lst.de>
---
 drivers/iommu/dma-iommu.c | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/drivers/iommu/dma-iommu.c b/drivers/iommu/dma-iommu.c
index bd09b6b31c4e..0cf52fae1471 100644
--- a/drivers/iommu/dma-iommu.c
+++ b/drivers/iommu/dma-iommu.c
@@ -471,7 +471,7 @@ static void __iommu_dma_unmap(struct device *dev, dma_addr_t dma_addr,
 }
 
 static dma_addr_t __iommu_dma_map(struct device *dev, phys_addr_t phys,
-		size_t size, int prot)
+		size_t size, int prot, dma_addr_t dma_mask)
 {
 	struct iommu_domain *domain = iommu_get_dma_domain(dev);
 	struct iommu_dma_cookie *cookie = domain->iova_cookie;
@@ -484,7 +484,7 @@ static dma_addr_t __iommu_dma_map(struct device *dev, phys_addr_t phys,
 
 	size = iova_align(iovad, size + iova_off);
 
-	iova = iommu_dma_alloc_iova(domain, size, dma_get_mask(dev), dev);
+	iova = iommu_dma_alloc_iova(domain, size, dma_mask, dev);
 	if (!iova)
 		return DMA_MAPPING_ERROR;
 
@@ -735,7 +735,7 @@ static dma_addr_t iommu_dma_map_page(struct device *dev, struct page *page,
 	int prot = dma_info_to_prot(dir, coherent, attrs);
 	dma_addr_t dma_handle;
 
-	dma_handle = __iommu_dma_map(dev, phys, size, prot);
+	dma_handle = __iommu_dma_map(dev, phys, size, prot, dma_get_mask(dev));
 	if (!coherent && !(attrs & DMA_ATTR_SKIP_CPU_SYNC) &&
 	    dma_handle != DMA_MAPPING_ERROR)
 		arch_sync_dma_for_device(dev, phys, size, dir);
@@ -938,7 +938,8 @@ static dma_addr_t iommu_dma_map_resource(struct device *dev, phys_addr_t phys,
 		size_t size, enum dma_data_direction dir, unsigned long attrs)
 {
 	return __iommu_dma_map(dev, phys, size,
-			dma_info_to_prot(dir, false, attrs) | IOMMU_MMIO);
+			dma_info_to_prot(dir, false, attrs) | IOMMU_MMIO,
+			dma_get_mask(dev));
 }
 
 static void iommu_dma_unmap_resource(struct device *dev, dma_addr_t handle,
@@ -1041,7 +1042,8 @@ static void *iommu_dma_alloc(struct device *dev, size_t size,
 	if (!cpu_addr)
 		return NULL;
 
-	*handle = __iommu_dma_map(dev, page_to_phys(page), size, ioprot);
+	*handle = __iommu_dma_map(dev, page_to_phys(page), size, ioprot,
+			dev->coherent_dma_mask);
 	if (*handle == DMA_MAPPING_ERROR) {
 		__iommu_dma_free(dev, size, cpu_addr);
 		return NULL;
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

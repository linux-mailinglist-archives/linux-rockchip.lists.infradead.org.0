Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEB008E9DF
	for <lists+linux-rockchip@lfdr.de>; Thu, 15 Aug 2019 13:12:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6YJYNikoGgCejUT08w/ENR4eOTd7vic4VAsCpVK4B5s=; b=VpgHXbnY39sTwX
	o1xqxQ5gynNz3i0Je5BVB0spxxbNsLHLwt7tZBCCBUE2/OaMej38zzOBH2iKO9Yyjqbe2Dk5H5T1h
	8y2fNDAjVthrYGSvrTImuiztkENehAoO4KdF32vwcH9L2aifZnKuL1tX31MgcbZ91IO1vJj8RnA5Y
	zLDtcUStdRZfCvKnKEB+5+rxaASrV9+ZXeFzOJ6hPSMe54UZWJbZzYnSgz/gTMytX5U6VqKMZfuWz
	JM2SjICeL8kA4UXS9QzOWAysI6Ejut5y6UMNSBXFGL7hsznMz3a1PiP8lo5/GjRqlW826aBFkQFmw
	F9FOglaTmiHoBMr+zP/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyDgT-0006T9-HL; Thu, 15 Aug 2019 11:12:45 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyDeb-0005Bu-CU
 for linux-rockchip@lists.infradead.org; Thu, 15 Aug 2019 11:10:51 +0000
Received: by mail-pg1-x541.google.com with SMTP id e11so1171082pga.5
 for <linux-rockchip@lists.infradead.org>; Thu, 15 Aug 2019 04:10:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=tcd-ie.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Rq9oE/+ABrAqTFJN5so5jGPiSZbG95oHkV+cKhmZyPI=;
 b=v0n9o//BaoQ1ESwTpE6LtJwM0UMlZU6SHT31oFerAYe/9QP4IZ43sL++jjJ0lO7I0r
 33cFC5OPDHrUbaK1kRyeDxXqJw2kxWv1QBDKSRUAQYrFStgCOFm5F+WNNMG+odjGyiZr
 /nlAC34vY56gV4YH0EknAGiSIPRMu5D4jUi++DxYjMgJWJcvn7Trmg3g8cjHIW/PoZht
 I/MzH4/h0Y00wXwjjED/qhh151NQx8hzpG2BjjF6k/JBGMhtwrhWIiYFTHUGgQ31Zgu3
 3jTVnlzHTiNwLqrywAN5HiEUhVZ8Pcr9uu/E3P1MS3NDkKTzXbAxW83+7o1w3VSOxUBu
 pqrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Rq9oE/+ABrAqTFJN5so5jGPiSZbG95oHkV+cKhmZyPI=;
 b=bKI8ifQ/tXE2coJhWl08mjUTwIGXs7EeAqiwSN8lFD3kERKeBOSHuGieYF0TRpbq7N
 4wazXPH4Pz27C1F3sB5tUVENGl7CQ3R7ev5hZXpe3VREORwQ3pSzifM7aNx1Zveq1pAn
 vqBYCHYcHUH59rwmlF9kWwC7p6RKtMRqEwpyAKJgdtWfTTmboteXUqmzblD8Z3Eflxzf
 30jR1eDn9jhmPVF2IrjyfduZ4r8lxmIe5EhimH5Ze4Dd2hPoI3X8yCQDcnhqQTxL3JM7
 hiaeOjONBI6zQeE4lvtKbbN+S1jEArBC5N2YjDR0c5MTme7Onp4EAiy8nceTrcoJJkq8
 uuTA==
X-Gm-Message-State: APjAAAWXKOJJL3hgRA1G8dLUB8ClkYhVMWW2KRmepBpXJFw+nKSzdsVO
 qLiZtNGp4WnVPEi0QmO9KOjJgw==
X-Google-Smtp-Source: APXvYqy/ZF1W56BYZyMWgqSYtJ5QoXnk2Q5jOdJW84PVtYVDa3GxlwLtVVqiFXWVLJYqEOcXHYdi2Q==
X-Received: by 2002:a65:6546:: with SMTP id a6mr3208852pgw.220.1565867448258; 
 Thu, 15 Aug 2019 04:10:48 -0700 (PDT)
Received: from localhost.localdomain
 ([2404:e801:200e:19c4:6c3f:b548:3a9c:7867])
 by smtp.googlemail.com with ESMTPSA id z13sm1042678pjn.32.2019.08.15.04.10.41
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 15 Aug 2019 04:10:47 -0700 (PDT)
From: Tom Murphy <murphyt7@tcd.ie>
To: iommu@lists.linux-foundation.org
Subject: [PATCH V5 4/5] iommu/dma-iommu: Use the dev->coherent_dma_mask
Date: Thu, 15 Aug 2019 12:09:42 +0100
Message-Id: <20190815110944.3579-5-murphyt7@tcd.ie>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190815110944.3579-1-murphyt7@tcd.ie>
References: <20190815110944.3579-1-murphyt7@tcd.ie>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_041049_717433_3B8AB2C4 
X-CRM114-Status: GOOD (  13.35  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
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

Use the dev->coherent_dma_mask when allocating in the dma-iommu ops api.

Signed-off-by: Tom Murphy <murphyt7@tcd.ie>
---
 drivers/iommu/dma-iommu.c | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/drivers/iommu/dma-iommu.c b/drivers/iommu/dma-iommu.c
index 906b7fa14d3c..b9a3ab02434b 100644
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

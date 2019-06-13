Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6B9044F62
	for <lists+linux-rockchip@lfdr.de>; Fri, 14 Jun 2019 00:41:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zY+TBlaiJF3a3YE3qv6KNhR8OlsTzzrmTypAKYHipBw=; b=hQwmufCIwN5ssW
	CAaqUQd0WwH2mDNNdy2nkNJp27Mjt0GlxiLbF8spGugFSCcv7WCLyNyZu2hOKEfaMYeoaGQXQ3OqO
	/sidNbVZfP1OUIX74lKHHKlI1F87vMuuNlJxRdDaZ6Yu30KbHjpum0wXlEQkjnDDoxwXQQwVzzkQ9
	BaML8Bc+lD4dIrU+5NgALdctIbq3MyMJgvIp2qTDQU4qZ0dXNLhNbGooFKFEhaztVRiSDAxYdikuF
	eEaq5XyNYhbH7Qsn8d0oUntYKdftmOHNb1vqqnC8FACrhHYC2Pdbl5XW7FFch0seUmps6uexmyJbE
	OiOu4pobD67MtiKTGsyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbYPF-00059D-8U; Thu, 13 Jun 2019 22:41:17 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbYNZ-0002Ug-KR
 for linux-rockchip@lists.infradead.org; Thu, 13 Jun 2019 22:39:35 +0000
Received: by mail-ed1-x543.google.com with SMTP id d4so446564edr.13
 for <linux-rockchip@lists.infradead.org>; Thu, 13 Jun 2019 15:39:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=tcd-ie.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=VIfV1OsDOCOIqv6MGdwh5qyRNpWkUFsV6JcVvbdsKMU=;
 b=JTF8mvZhJ/EJnKSb2g8yYVwCI7gY6AOBJvHEmxI98vcIdBtLCHSGqNBLdR66ae+p3N
 Gz0InBZJxBwcsA2tjrxO7l/2SbOW9EC/J1NpN0q7ctUvhDyiy6gcYSquuay1uuRjHT0l
 YMCpGS8YP90uVBR7O2fFjUN4fpSk/Um0odBXe4DqJz7/xdmuiw3TAlj0hxdMDoWq/uEX
 RG3tSMQSl86NA27lig6IIG+QyQL9PoQFyZu2igpH5UvBqmMPLOASs5VkPg6T4OTwrWrD
 sx/2LKFbOUyC2/QeLMuD34t20k1dyG1V73h2F+lWe0JPXWsoQ86NzkR4a3bo6x0/xWPW
 M2Jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=VIfV1OsDOCOIqv6MGdwh5qyRNpWkUFsV6JcVvbdsKMU=;
 b=JVNNQPYD57yUqiP8h9JUISHupxN6kZKcNqN+F73AiN5ci7wxymXv9fAsMns1J9rPPQ
 fvhwr8T/iFCtrYXWkUv2mn15tACmBAr8ypwy3s9LarY68Ja2/BBYCGkm30UtrNLYcmNc
 fR5+F+/GmzUsPdYZcHs5iGs4nmbfbcnD6OpJGvhDYIS0dS8G6ILwReGa9oxMwn+yghdT
 YpTpjHlAMEor9YPhqMXgqnnG+Z911BPsEzEwteCRYcTdsqK/6ikSVt3+7TvnlWJwOl8h
 YRByL9jCYxGOItYaQjPcMW5gODuZYWfY7iDx7nOuD6HIb4SeX8D0HHrqJheUQENcj71C
 Vbuw==
X-Gm-Message-State: APjAAAVJQa64GXO5gnv1XG6FyYTgQ0QCxJzdr86q8d7PJxTh+HZzn5O1
 pnbugQcbJRAw1txiXDeHJwe6OA==
X-Google-Smtp-Source: APXvYqztuOfR2YM2Du1Zdlax7/DpXIkbSCgn46ot/nG+g0htY0BBU7yj7/Fpx5Lf97ZANT/nGWWzUg==
X-Received: by 2002:a50:a941:: with SMTP id m1mr99843943edc.157.1560465571973; 
 Thu, 13 Jun 2019 15:39:31 -0700 (PDT)
Received: from localhost.localdomain ([2a02:8084:a0:bc00:8042:d435:a754:1f22])
 by smtp.googlemail.com with ESMTPSA id
 s16sm216522eji.27.2019.06.13.15.39.30
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 13 Jun 2019 15:39:31 -0700 (PDT)
From: Tom Murphy <murphyt7@tcd.ie>
To: iommu@lists.linux-foundation.org
Subject: [PATCH v4 3/5] iommu/dma-iommu: Handle deferred devices
Date: Thu, 13 Jun 2019 23:38:58 +0100
Message-Id: <20190613223901.9523-4-murphyt7@tcd.ie>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190613223901.9523-1-murphyt7@tcd.ie>
References: <20190613223901.9523-1-murphyt7@tcd.ie>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_153933_885347_6AD52146 
X-CRM114-Status: GOOD (  14.74  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Heiko Stuebner <heiko@sntech.de>, Will Deacon <will.deacon@arm.com>,
 virtualization@lists.linux-foundation.org,
 David Brown <david.brown@linaro.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>, linux-s390@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org,
 Jean-Philippe Brucker <jean-philippe.brucker@arm.com>,
 Joerg Roedel <joro@8bytes.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, linux-rockchip@lists.infradead.org,
 Andy Gross <agross@kernel.org>, Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 linux-tegra@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Robin Murphy <robin.murphy@arm.com>,
 linux-kernel@vger.kernel.org, Tom Murphy <murphyt7@tcd.ie>,
 Rob Clark <robdclark@gmail.com>, Kukjin Kim <kgene@kernel.org>,
 David Woodhouse <dwmw2@infradead.org>
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
index e64dbbcde63c..f303bbe20e51 100644
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
@@ -462,6 +478,9 @@ static dma_addr_t __iommu_dma_map(struct device *dev, phys_addr_t phys,
 	size_t iova_off = 0;
 	dma_addr_t iova;
 
+	if (unlikely(handle_deferred_device(dev, domain)))
+		return DMA_MAPPING_ERROR;
+
 	if (cookie->type == IOMMU_DMA_IOVA_COOKIE) {
 		iova_off = iova_offset(&cookie->iovad, phys);
 		size = iova_align(&cookie->iovad, size + iova_off);
@@ -583,6 +602,9 @@ static void *iommu_dma_alloc_remap(struct device *dev, size_t size,
 
 	*dma_handle = DMA_MAPPING_ERROR;
 
+	if (unlikely(handle_deferred_device(dev, domain)))
+		return NULL;
+
 	min_size = alloc_sizes & -alloc_sizes;
 	if (min_size < PAGE_SIZE) {
 		min_size = PAGE_SIZE;
@@ -715,7 +737,7 @@ static dma_addr_t iommu_dma_map_page(struct device *dev, struct page *page,
 	int prot = dma_info_to_prot(dir, coherent, attrs);
 	dma_addr_t dma_handle;
 
-	dma_handle =__iommu_dma_map(dev, phys, size, prot);
+	dma_handle = __iommu_dma_map(dev, phys, size, prot);
 	if (!coherent && !(attrs & DMA_ATTR_SKIP_CPU_SYNC) &&
 	    dma_handle != DMA_MAPPING_ERROR)
 		arch_sync_dma_for_device(dev, phys, size, dir);
@@ -825,6 +847,9 @@ static int iommu_dma_map_sg(struct device *dev, struct scatterlist *sg,
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

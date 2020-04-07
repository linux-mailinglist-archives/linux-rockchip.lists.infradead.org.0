Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8D421A14C4
	for <lists+linux-rockchip@lfdr.de>; Tue,  7 Apr 2020 20:40:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=eaJenfGJhxEO6xI6TSFSoJgGpTAVCMoKI899+0J2BIE=; b=o3tAuQcJlKj/tLnfzb74ZARsO3
	SbW6DszIpZwKFKLKu1chTI0y0b3XVkVzX62T+2QClqgFDq2dFHpNqWz4jJ8uLcf735ADe1vS4VleZ
	S0HUzH+/kKv9/eUoflYfnmKT4PvpeUSW/Mg41Uvxvh/lQhTDu0QVkJ6kWbCBKpTXa8m9zqP2nVkIy
	nTC4/rQ1Wwpj8HagcAh21Xi1g+AVHcagKMWOQuacxVDHzMMXqzv+E0jUu1p5ztD3nsTjb4NvprQyT
	HejRHcMUmgvCg141mxARpXId+6bGXz/M6QEDZxAn+RWtaBNQJoJQUzmPMl08tOuYlVvQOXAubUYvF
	vim+h9eQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLt8o-0000m5-Ht; Tue, 07 Apr 2020 18:40:06 +0000
Received: from 8bytes.org ([2a01:238:4383:600:38bc:a715:4b6d:a889]
 helo=theia.8bytes.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLt70-0006uq-1X; Tue, 07 Apr 2020 18:38:16 +0000
Received: by theia.8bytes.org (Postfix, from userid 1000)
 id A01776A7; Tue,  7 Apr 2020 20:37:54 +0200 (CEST)
From: Joerg Roedel <joro@8bytes.org>
To: Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 David Woodhouse <dwmw2@infradead.org>, Lu Baolu <baolu.lu@linux.intel.com>,
 Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Rob Clark <robdclark@gmail.com>,
 Heiko Stuebner <heiko@sntech.de>,
 Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Jean-Philippe Brucker <jean-philippe@linaro.org>
Subject: [RFC PATCH 32/34] iommu/exynos: Convert to probe/release_device()
 call-backs
Date: Tue,  7 Apr 2020 20:37:40 +0200
Message-Id: <20200407183742.4344-33-joro@8bytes.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200407183742.4344-1-joro@8bytes.org>
References: <20200407183742.4344-1-joro@8bytes.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_113814_245493_40C9F715 
X-CRM114-Status: GOOD (  12.83  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

From: Joerg Roedel <jroedel@suse.de>

Convert the Exynos IOMMU drivers to use the probe_device() and
release_device() call-backs of iommu_ops, so that the iommu core code
does the group and sysfs setup.

Signed-off-by: Joerg Roedel <jroedel@suse.de>
---
 drivers/iommu/exynos-iommu.c | 23 ++++++-----------------
 1 file changed, 6 insertions(+), 17 deletions(-)

diff --git a/drivers/iommu/exynos-iommu.c b/drivers/iommu/exynos-iommu.c
index 86ecccbf0438..f865c9093722 100644
--- a/drivers/iommu/exynos-iommu.c
+++ b/drivers/iommu/exynos-iommu.c
@@ -1223,19 +1223,13 @@ static phys_addr_t exynos_iommu_iova_to_phys(struct iommu_domain *iommu_domain,
 	return phys;
 }
 
-static int exynos_iommu_add_device(struct device *dev)
+static struct iommu_device *exynos_iommu_probe_device(struct device *dev)
 {
 	struct exynos_iommu_owner *owner = dev->archdata.iommu;
 	struct sysmmu_drvdata *data;
-	struct iommu_group *group;
 
 	if (!has_sysmmu(dev))
-		return -ENODEV;
-
-	group = iommu_group_get_for_dev(dev);
-
-	if (IS_ERR(group))
-		return PTR_ERR(group);
+		return ERR_PTR(-ENODEV);
 
 	list_for_each_entry(data, &owner->controllers, owner_node) {
 		/*
@@ -1247,14 +1241,11 @@ static int exynos_iommu_add_device(struct device *dev)
 					     DL_FLAG_STATELESS |
 					     DL_FLAG_PM_RUNTIME);
 	}
-	iommu_group_put(group);
 
-	iommu_device_link(&owner->iommu, dev);
-
-	return 0;
+	return &owner->iommu;
 }
 
-static void exynos_iommu_remove_device(struct device *dev)
+static void exynos_iommu_release_device(struct device *dev)
 {
 	struct exynos_iommu_owner *owner = dev->archdata.iommu;
 	struct sysmmu_drvdata *data;
@@ -1272,8 +1263,6 @@ static void exynos_iommu_remove_device(struct device *dev)
 			iommu_group_put(group);
 		}
 	}
-	iommu_device_unlink(&owner->iommu, dev);
-	iommu_group_remove_device(dev);
 
 	list_for_each_entry(data, &owner->controllers, owner_node)
 		device_link_del(data->link);
@@ -1381,8 +1370,8 @@ static const struct iommu_ops exynos_iommu_ops = {
 	.unmap = exynos_iommu_unmap,
 	.iova_to_phys = exynos_iommu_iova_to_phys,
 	.device_group = generic_device_group,
-	.add_device = exynos_iommu_add_device,
-	.remove_device = exynos_iommu_remove_device,
+	.probe_device = exynos_iommu_probe_device,
+	.release_device = exynos_iommu_release_device,
 	.pgsize_bitmap = SECT_SIZE | LPAGE_SIZE | SPAGE_SIZE,
 	.of_xlate = exynos_iommu_of_xlate,
 };
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E00E31A7D8B
	for <lists+linux-rockchip@lfdr.de>; Tue, 14 Apr 2020 15:25:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=0VGzU6S9GbcoB5xCbqSNXBv1lHRGJooNG3ygxl+E3bM=; b=gjFJRb4uAW1TPv6lD3/D0YXNdb
	I3bPlKyW6gvbsO7FjuRUtWhHSgskift2LU3bnSuftuVHzre9byErDMhe453VeIgWEa6yWT6WODehV
	3CCzkQ3TzbakIOzm0NvMrsnQLP/0G6cdZRgtalf4/8HuDEgxXk5bJBizINZU2oha4LgDhJ700FMe8
	R49SQVJwdgWE+Ee+MUaFAQNJ+18e/KlA+kLbySIlusForIYAmZN3ynzyYjLErkUKyGLifLUEhC6Yy
	lNmnJyQXqjQ5nJ2SWfNbkTVmZg6RTpT9grfA0L0bilBtv1aP9l1cltEF/GKzN3XblN/QWB/Oqevi9
	n/9RkX3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOLYx-0006Gl-V0; Tue, 14 Apr 2020 13:25:15 +0000
Received: from 8bytes.org ([2a01:238:4383:600:38bc:a715:4b6d:a889]
 helo=theia.8bytes.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOLQE-0002jI-Im; Tue, 14 Apr 2020 13:16:20 +0000
Received: by theia.8bytes.org (Postfix, from userid 1000)
 id 7D810695; Tue, 14 Apr 2020 15:15:55 +0200 (CEST)
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
Subject: [PATCH v2 21/33] iommu/msm: Convert to probe/release_device()
 call-backs
Date: Tue, 14 Apr 2020 15:15:30 +0200
Message-Id: <20200414131542.25608-22-joro@8bytes.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200414131542.25608-1-joro@8bytes.org>
References: <20200414131542.25608-1-joro@8bytes.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_061614_889685_B16D340E 
X-CRM114-Status: GOOD (  12.91  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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

Convert the MSM IOMMU driver to use the probe_device() and
release_device() call-backs of iommu_ops, so that the iommu core code
does the group and sysfs setup.

Signed-off-by: Joerg Roedel <jroedel@suse.de>
---
 drivers/iommu/msm_iommu.c | 34 +++++++---------------------------
 1 file changed, 7 insertions(+), 27 deletions(-)

diff --git a/drivers/iommu/msm_iommu.c b/drivers/iommu/msm_iommu.c
index 94a6df1bddd6..10cd4db0710a 100644
--- a/drivers/iommu/msm_iommu.c
+++ b/drivers/iommu/msm_iommu.c
@@ -388,43 +388,23 @@ static struct msm_iommu_dev *find_iommu_for_dev(struct device *dev)
 	return ret;
 }
 
-static int msm_iommu_add_device(struct device *dev)
+static struct iommu_device *msm_iommu_probe_device(struct device *dev)
 {
 	struct msm_iommu_dev *iommu;
-	struct iommu_group *group;
 	unsigned long flags;
 
 	spin_lock_irqsave(&msm_iommu_lock, flags);
 	iommu = find_iommu_for_dev(dev);
 	spin_unlock_irqrestore(&msm_iommu_lock, flags);
 
-	if (iommu)
-		iommu_device_link(&iommu->iommu, dev);
-	else
-		return -ENODEV;
-
-	group = iommu_group_get_for_dev(dev);
-	if (IS_ERR(group))
-		return PTR_ERR(group);
-
-	iommu_group_put(group);
+	if (!iommu)
+		return ERR_PTR(-ENODEV);
 
-	return 0;
+	return &iommu->iommu;
 }
 
-static void msm_iommu_remove_device(struct device *dev)
+static void msm_iommu_release_device(struct device *dev)
 {
-	struct msm_iommu_dev *iommu;
-	unsigned long flags;
-
-	spin_lock_irqsave(&msm_iommu_lock, flags);
-	iommu = find_iommu_for_dev(dev);
-	spin_unlock_irqrestore(&msm_iommu_lock, flags);
-
-	if (iommu)
-		iommu_device_unlink(&iommu->iommu, dev);
-
-	iommu_group_remove_device(dev);
 }
 
 static int msm_iommu_attach_dev(struct iommu_domain *domain, struct device *dev)
@@ -708,8 +688,8 @@ static struct iommu_ops msm_iommu_ops = {
 	 */
 	.iotlb_sync = NULL,
 	.iova_to_phys = msm_iommu_iova_to_phys,
-	.add_device = msm_iommu_add_device,
-	.remove_device = msm_iommu_remove_device,
+	.probe_device = msm_iommu_probe_device,
+	.release_device = msm_iommu_release_device,
 	.device_group = generic_device_group,
 	.pgsize_bitmap = MSM_IOMMU_PGSIZES,
 	.of_xlate = qcom_iommu_of_xlate,
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

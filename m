Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE6141A7D5D
	for <lists+linux-rockchip@lfdr.de>; Tue, 14 Apr 2020 15:24:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=2wAdvnkWh6h8VxtM7sAXxzZKkTOLiFHcsQyLz/mCNR4=; b=SxmGyDXjZhbB10W+Z+1UxCK7YW
	4av2DSOeQn3tWY4ZHfknzw6N5gjqIJGUUNc18Le/6VyrngHMpuUTWSk1TYp7IMDFvMUQZxZnscXKF
	iNjv0SqKAjyYqNXWypMfHnPK+DIBv84e6JMU2pW7JzuYQyvCBXXD4Eo0q7ADvwQ3JWGBcX5lNmQ4o
	ljdaTSz631Dt8RdbySr+Q01xjknFn6oFrNZCwrUDtoTgZa0OMHZdRy3QdzD1z3yYIwIDQ5QQvfLpW
	XAOKtl6wn2p+7u2tuARXCmHYsUh1pDjnm54ok0w5eKI4E5XiSWMsbOJK0MLRVsLyyi4MOkvgvt7B4
	5Fkac7Dg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOLYV-0005eI-Ks; Tue, 14 Apr 2020 13:24:47 +0000
Received: from 8bytes.org ([81.169.241.247] helo=theia.8bytes.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOLQ8-0002bk-KN; Tue, 14 Apr 2020 13:16:17 +0000
Received: by theia.8bytes.org (Postfix, from userid 1000)
 id 3E7BB60E; Tue, 14 Apr 2020 15:15:54 +0200 (CEST)
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
Subject: [PATCH v2 15/33] iommu/amd: Convert to probe/release_device()
 call-backs
Date: Tue, 14 Apr 2020 15:15:24 +0200
Message-Id: <20200414131542.25608-16-joro@8bytes.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200414131542.25608-1-joro@8bytes.org>
References: <20200414131542.25608-1-joro@8bytes.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_061608_852759_613D0973 
X-CRM114-Status: GOOD (  17.13  )
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

Convert the AMD IOMMU Driver to use the probe_device() and
release_device() call-backs of iommu_ops, so that the iommu core code
does the group and sysfs setup.

Signed-off-by: Joerg Roedel <jroedel@suse.de>
---
 drivers/iommu/amd_iommu.c | 71 ++++++++++++---------------------------
 1 file changed, 22 insertions(+), 49 deletions(-)

diff --git a/drivers/iommu/amd_iommu.c b/drivers/iommu/amd_iommu.c
index 0b4b4faa876d..c30367413683 100644
--- a/drivers/iommu/amd_iommu.c
+++ b/drivers/iommu/amd_iommu.c
@@ -343,21 +343,9 @@ static bool check_device(struct device *dev)
 	return true;
 }
 
-static void init_iommu_group(struct device *dev)
-{
-	struct iommu_group *group;
-
-	group = iommu_group_get_for_dev(dev);
-	if (IS_ERR(group))
-		return;
-
-	iommu_group_put(group);
-}
-
 static int iommu_init_device(struct device *dev)
 {
 	struct iommu_dev_data *dev_data;
-	struct amd_iommu *iommu;
 	int devid;
 
 	if (dev->archdata.iommu)
@@ -367,8 +355,6 @@ static int iommu_init_device(struct device *dev)
 	if (devid < 0)
 		return devid;
 
-	iommu = amd_iommu_rlookup_table[devid];
-
 	dev_data = find_dev_data(devid);
 	if (!dev_data)
 		return -ENOMEM;
@@ -391,8 +377,6 @@ static int iommu_init_device(struct device *dev)
 
 	dev->archdata.iommu = dev_data;
 
-	iommu_device_link(&iommu->iommu, dev);
-
 	return 0;
 }
 
@@ -410,7 +394,7 @@ static void iommu_ignore_device(struct device *dev)
 	setup_aliases(dev);
 }
 
-static void iommu_uninit_device(struct device *dev)
+static void amd_iommu_uninit_device(struct device *dev)
 {
 	struct iommu_dev_data *dev_data;
 	struct amd_iommu *iommu;
@@ -429,13 +413,6 @@ static void iommu_uninit_device(struct device *dev)
 	if (dev_data->domain)
 		detach_device(dev);
 
-	iommu_device_unlink(&iommu->iommu, dev);
-
-	iommu_group_remove_device(dev);
-
-	/* Remove dma-ops */
-	dev->dma_ops = NULL;
-
 	/*
 	 * We keep dev_data around for unplugged devices and reuse it when the
 	 * device is re-plugged - not doing so would introduce a ton of races.
@@ -2152,55 +2129,50 @@ static void detach_device(struct device *dev)
 	spin_unlock_irqrestore(&domain->lock, flags);
 }
 
-static int amd_iommu_add_device(struct device *dev)
+static struct iommu_device *amd_iommu_probe_device(struct device *dev)
 {
-	struct iommu_dev_data *dev_data;
-	struct iommu_domain *domain;
+	struct iommu_device *iommu_dev;
 	struct amd_iommu *iommu;
 	int ret, devid;
 
-	if (get_dev_data(dev))
-		return 0;
-
 	if (!check_device(dev))
-		return -ENODEV;
+		return ERR_PTR(-ENODEV);
 
 	devid = get_device_id(dev);
 	if (devid < 0)
-		return devid;
+		return ERR_PTR(devid);
 
 	iommu = amd_iommu_rlookup_table[devid];
 
+	if (get_dev_data(dev))
+		return &iommu->iommu;
+
 	ret = iommu_init_device(dev);
 	if (ret) {
 		if (ret != -ENOTSUPP)
 			dev_err(dev, "Failed to initialize - trying to proceed anyway\n");
-
+		iommu_dev = ERR_PTR(ret);
 		iommu_ignore_device(dev);
-		dev->dma_ops = NULL;
-		goto out;
+	} else {
+		iommu_dev = &iommu->iommu;
 	}
-	init_iommu_group(dev);
 
-	dev_data = get_dev_data(dev);
+	iommu_completion_wait(iommu);
 
-	BUG_ON(!dev_data);
+	return iommu_dev;
+}
 
-	if (dev_data->iommu_v2)
-		iommu_request_dm_for_dev(dev);
+static void amd_iommu_probe_finalize(struct device *dev)
+{
+	struct iommu_domain *domain;
 
 	/* Domains are initialized for this device - have a look what we ended up with */
 	domain = iommu_get_domain_for_dev(dev);
 	if (domain->type == IOMMU_DOMAIN_DMA)
 		iommu_setup_dma_ops(dev, IOVA_START_PFN << PAGE_SHIFT, 0);
-
-out:
-	iommu_completion_wait(iommu);
-
-	return 0;
 }
 
-static void amd_iommu_remove_device(struct device *dev)
+static void amd_iommu_release_device(struct device *dev)
 {
 	struct amd_iommu *iommu;
 	int devid;
@@ -2214,7 +2186,7 @@ static void amd_iommu_remove_device(struct device *dev)
 
 	iommu = amd_iommu_rlookup_table[devid];
 
-	iommu_uninit_device(dev);
+	amd_iommu_uninit_device(dev);
 	iommu_completion_wait(iommu);
 }
 
@@ -2687,8 +2659,9 @@ const struct iommu_ops amd_iommu_ops = {
 	.map = amd_iommu_map,
 	.unmap = amd_iommu_unmap,
 	.iova_to_phys = amd_iommu_iova_to_phys,
-	.add_device = amd_iommu_add_device,
-	.remove_device = amd_iommu_remove_device,
+	.probe_device = amd_iommu_probe_device,
+	.release_device = amd_iommu_release_device,
+	.probe_finalize = amd_iommu_probe_finalize,
 	.device_group = amd_iommu_device_group,
 	.domain_get_attr = amd_iommu_domain_get_attr,
 	.get_resv_regions = amd_iommu_get_resv_regions,
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

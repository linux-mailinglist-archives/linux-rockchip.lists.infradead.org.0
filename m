Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBC101A7D6D
	for <lists+linux-rockchip@lfdr.de>; Tue, 14 Apr 2020 15:25:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=cq5azehluAPxaJvuLZIjaPlxi8I+gtOdw17Qyu/lBws=; b=NArL2C55Jrm8AfTwnVISzJIVqb
	mAZsZA5LFu9Pgx0GOEOSJ356HAWKviQLRvY5xRp1wdrf0SNJ/Nd2eIUFXXquYo3+mak/gpX4j3tak
	E5ldQtdr/Na6p63IHJO1XaxeoWZisIYGOXTVM5/TmUglTzZjl2mlc2PsonjIGjrkk0JhZJU29cfJW
	tz9izCK9Y6c8NlZzkTyzHLdZPQM8hsFpfB5PSYtVylwqNG2wINcVUIxHHXiYjM2o3cv4/2y20cnq+
	lUoNCNTYH6u7FwNyt32v+ZFxdouQElKhP628K9JCpZ3OmCIOT/ZjxRUUFln7/70Zc824JRPn7rJ2B
	447oeJfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOLYm-00062Q-AM; Tue, 14 Apr 2020 13:25:04 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOLQK-0002r1-V1; Tue, 14 Apr 2020 13:16:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=References:In-Reply-To:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=zHFhXPr24C40KrJ7Mzefvyw//VQSUVn593eIysM2U+w=; b=vSqXCVOTfA1uyl7dI9r2aS/LHi
 Yy65eu09NygSVLNqEgF92LY/pC1JhSlM1wYq2hp4ceVmJM0Uw3sr+GbZPP0p53H0B0QsZi+EtBDsp
 w+8KlDRNUjndZDEPTyKFEKXehd0C1SRMrpEmB9m9N4hKNqEvze7euWzDR8TKriMO69VSIBruPIecL
 BagnSSu3Kb7iov3JHk89g1bqtd+40hgygViZUtzZKlsrakEcCLyezfE9cdh+bpQLn7JuxdBUC71GN
 53kYpmQUOtf7r52Ep40LK4um/iWy6u1OH4EPn6JWtYRWGTCQ3crrHOquC7u+B7ciRaRxenQPdR0q8
 xP+O0Fhg==;
Received: from 8bytes.org ([2a01:238:4383:600:38bc:a715:4b6d:a889]
 helo=theia.8bytes.org)
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOLQI-0007xr-7X; Tue, 14 Apr 2020 13:16:19 +0000
Received: by theia.8bytes.org (Postfix, from userid 1000)
 id ACA86A6A; Tue, 14 Apr 2020 15:15:57 +0200 (CEST)
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
Subject: [PATCH v2 32/33] iommu: Remove add_device()/remove_device() code-paths
Date: Tue, 14 Apr 2020 15:15:41 +0200
Message-Id: <20200414131542.25608-33-joro@8bytes.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200414131542.25608-1-joro@8bytes.org>
References: <20200414131542.25608-1-joro@8bytes.org>
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on merlin.infradead.org summary:
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

All drivers are converted to use the probe/release_device()
call-backs, so the add_device/remove_device() pointers are unused and
the code using them can be removed.

Signed-off-by: Joerg Roedel <jroedel@suse.de>
---
 drivers/iommu/iommu.c | 149 ++++++++----------------------------------
 include/linux/iommu.h |   4 --
 2 files changed, 29 insertions(+), 124 deletions(-)

diff --git a/drivers/iommu/iommu.c b/drivers/iommu/iommu.c
index a2ff95424044..9a7120746b8e 100644
--- a/drivers/iommu/iommu.c
+++ b/drivers/iommu/iommu.c
@@ -220,7 +220,7 @@ static int __iommu_probe_device(struct device *dev, struct list_head *group_list
 	return ret;
 }
 
-static int __iommu_probe_device_helper(struct device *dev)
+int iommu_probe_device(struct device *dev)
 {
 	const struct iommu_ops *ops = dev->bus->iommu_ops;
 	struct iommu_group *group;
@@ -264,70 +264,17 @@ static int __iommu_probe_device_helper(struct device *dev)
 
 }
 
-int iommu_probe_device(struct device *dev)
+void iommu_release_device(struct device *dev)
 {
 	const struct iommu_ops *ops = dev->bus->iommu_ops;
-	struct iommu_group *group;
-	int ret;
-
-	WARN_ON(dev->iommu_group);
-
-	if (!ops)
-		return -EINVAL;
-
-	if (!dev_iommu_get(dev))
-		return -ENOMEM;
-
-	if (!try_module_get(ops->owner)) {
-		ret = -EINVAL;
-		goto err_free_dev_param;
-	}
-
-	if (ops->probe_device)
-		return __iommu_probe_device_helper(dev);
-
-	ret = ops->add_device(dev);
-	if (ret)
-		goto err_module_put;
-
-	group = iommu_group_get(dev);
-	iommu_create_device_direct_mappings(group, dev);
-	iommu_group_put(group);
-
-	if (ops->probe_finalize)
-		ops->probe_finalize(dev);
 
-	return 0;
-
-err_module_put:
-	module_put(ops->owner);
-err_free_dev_param:
-	dev_iommu_free(dev);
-	return ret;
-}
-
-static void __iommu_release_device(struct device *dev)
-{
-	const struct iommu_ops *ops = dev->bus->iommu_ops;
+	if (!dev->iommu)
+		return;
 
 	iommu_device_unlink(dev->iommu->iommu_dev, dev);
-
 	iommu_group_remove_device(dev);
 
 	ops->release_device(dev);
-}
-
-void iommu_release_device(struct device *dev)
-{
-	const struct iommu_ops *ops = dev->bus->iommu_ops;
-
-	if (!dev->iommu)
-		return;
-
-	if (ops->release_device)
-		__iommu_release_device(dev);
-	else if (dev->iommu_group)
-		ops->remove_device(dev);
 
 	module_put(ops->owner);
 	dev_iommu_free(dev);
@@ -1560,23 +1507,6 @@ struct iommu_group *iommu_group_get_for_dev(struct device *dev)
 	if (ret)
 		goto out_put_group;
 
-	/*
-	 * Try to allocate a default domain - needs support from the
-	 * IOMMU driver. There are still some drivers which don't support
-	 * default domains, so the return value is not yet checked. Only
-	 * allocate the domain here when the driver still has the
-	 * add_device/remove_device call-backs implemented.
-	 */
-	if (!ops->probe_device) {
-		iommu_alloc_default_domain(dev);
-
-		if (group->default_domain)
-			ret = __iommu_attach_device(group->default_domain, dev);
-
-		if (ret)
-			goto out_put_group;
-	}
-
 	return group;
 
 out_put_group:
@@ -1591,21 +1521,6 @@ struct iommu_domain *iommu_group_default_domain(struct iommu_group *group)
 	return group->default_domain;
 }
 
-static int add_iommu_group(struct device *dev, void *data)
-{
-	int ret = iommu_probe_device(dev);
-
-	/*
-	 * We ignore -ENODEV errors for now, as they just mean that the
-	 * device is not translated by an IOMMU. We still care about
-	 * other errors and fail to initialize when they happen.
-	 */
-	if (ret == -ENODEV)
-		ret = 0;
-
-	return ret;
-}
-
 static int probe_iommu_group(struct device *dev, void *data)
 {
 	const struct iommu_ops *ops = dev->bus->iommu_ops;
@@ -1789,47 +1704,41 @@ static int iommu_group_create_direct_mappings(struct iommu_group *group)
 
 int bus_iommu_probe(struct bus_type *bus)
 {
-	const struct iommu_ops *ops = bus->iommu_ops;
+	struct iommu_group *group, *next;
+	LIST_HEAD(group_list);
 	int ret;
 
-	if (ops->probe_device) {
-		struct iommu_group *group, *next;
-		LIST_HEAD(group_list);
-
-		/*
-		 * This code-path does not allocate the default domain when
-		 * creating the iommu group, so do it after the groups are
-		 * created.
-		 */
-		ret = bus_for_each_dev(bus, NULL, &group_list, probe_iommu_group);
-		if (ret)
-			return ret;
+	/*
+	 * This code-path does not allocate the default domain when
+	 * creating the iommu group, so do it after the groups are
+	 * created.
+	 */
+	ret = bus_for_each_dev(bus, NULL, &group_list, probe_iommu_group);
+	if (ret)
+		return ret;
 
-		list_for_each_entry_safe(group, next, &group_list, entry) {
-			/* Remove item from the list */
-			list_del_init(&group->entry);
+	list_for_each_entry_safe(group, next, &group_list, entry) {
+		/* Remove item from the list */
+		list_del_init(&group->entry);
 
-			mutex_lock(&group->mutex);
+		mutex_lock(&group->mutex);
 
-			/* Try to allocate default domain */
-			probe_alloc_default_domain(bus, group);
+		/* Try to allocate default domain */
+		probe_alloc_default_domain(bus, group);
 
-			if (!group->default_domain) {
-				mutex_unlock(&group->mutex);
-				continue;
-			}
+		if (!group->default_domain) {
+			mutex_unlock(&group->mutex);
+			continue;
+		}
 
-			iommu_group_create_direct_mappings(group);
+		iommu_group_create_direct_mappings(group);
 
-			ret = __iommu_group_dma_attach(group);
+		ret = __iommu_group_dma_attach(group);
 
-			mutex_unlock(&group->mutex);
+		mutex_unlock(&group->mutex);
 
-			if (ret)
-				break;
-		}
-	} else {
-		ret = bus_for_each_dev(bus, NULL, NULL, add_iommu_group);
+		if (ret)
+			break;
 	}
 
 	return ret;
diff --git a/include/linux/iommu.h b/include/linux/iommu.h
index fea1622408ad..dd076366383f 100644
--- a/include/linux/iommu.h
+++ b/include/linux/iommu.h
@@ -223,8 +223,6 @@ struct iommu_iotlb_gather {
  * @iotlb_sync: Flush all queued ranges from the hardware TLBs and empty flush
  *            queue
  * @iova_to_phys: translate iova to physical address
- * @add_device: add device to iommu grouping
- * @remove_device: remove device from iommu grouping
  * @probe_device: Add device to iommu driver handling
  * @release_device: Remove device from iommu driver handling
  * @probe_finalize: Do final setup work after the device is added to an IOMMU
@@ -277,8 +275,6 @@ struct iommu_ops {
 	void (*iotlb_sync)(struct iommu_domain *domain,
 			   struct iommu_iotlb_gather *iotlb_gather);
 	phys_addr_t (*iova_to_phys)(struct iommu_domain *domain, dma_addr_t iova);
-	int (*add_device)(struct device *dev);
-	void (*remove_device)(struct device *dev);
 	struct iommu_device *(*probe_device)(struct device *dev);
 	void (*release_device)(struct device *dev);
 	void (*probe_finalize)(struct device *dev);
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

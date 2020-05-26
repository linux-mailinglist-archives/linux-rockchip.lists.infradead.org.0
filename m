Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E47A01A7D57
	for <lists+linux-rockchip@lfdr.de>; Tue, 14 Apr 2020 15:24:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=eAKPAuTI71K9QW+D0fgyGkYGYSpFPRvLJc5URSkiv24=; b=lS5YWTVCJ7wIZwr/UICG0knroX
	SGLPugAvlKAn5JgIWH6OhIj5UHJ2t8z66gfgGpfQsQZGgBsnWJCzj6O7WPN8nTuI3JZmErsEVcZtb
	pey4WZy7QGzW1CZbUqOHsi/BpwliK5cXuuChJeABKMivWH58kMf1oMWjCynBKiR1TPVPOrvOrgwB3
	+HM7mPdCrs8c/sSMfBWvE7+F8vUxwTI7dQVRTD2N2dtJufQ2STC512AgX8JbzHCtn3MOU9bnnD43m
	vVbyWWbqIhDD5qe2XIYpb7WJdfE8a862CmPOuAfpn6CcndQFHOvUSGCRkYqK+OvfGyUheHlM0xpdx
	W+/FnZ0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOLY5-0004wN-Cx; Tue, 14 Apr 2020 13:24:21 +0000
Received: from 8bytes.org ([2a01:238:4383:600:38bc:a715:4b6d:a889]
 helo=theia.8bytes.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOLQ4-0002Pk-LF; Tue, 14 Apr 2020 13:16:11 +0000
Received: by theia.8bytes.org (Postfix, from userid 1000)
 id A226749B; Tue, 14 Apr 2020 15:15:52 +0200 (CEST)
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
Subject: [PATCH v2 07/33] iommu: Add probe_device() and remove_device()
 call-backs
Date: Tue, 14 Apr 2020 15:15:16 +0200
Message-Id: <20200414131542.25608-8-joro@8bytes.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200414131542.25608-1-joro@8bytes.org>
References: <20200414131542.25608-1-joro@8bytes.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_061605_068326_720A81AD 
X-CRM114-Status: GOOD (  17.02  )
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

Add call-backs to 'struct iommu_ops' as an alternative to the
add_device() and remove_device() call-backs, which will be removed when
all drivers are converted.

The new call-backs will not setupt IOMMU groups and domains anymore,
so also add a probe_finalize() call-back where the IOMMU driver can do
per-device setup work which require the device to be set up with a
group and a domain.

Signed-off-by: Joerg Roedel <jroedel@suse.de>
---
 drivers/iommu/iommu.c | 63 ++++++++++++++++++++++++++++++++++++++-----
 include/linux/iommu.h |  9 +++++++
 2 files changed, 66 insertions(+), 6 deletions(-)

diff --git a/drivers/iommu/iommu.c b/drivers/iommu/iommu.c
index 5877abd9b693..6cfe7799dc8c 100644
--- a/drivers/iommu/iommu.c
+++ b/drivers/iommu/iommu.c
@@ -174,6 +174,36 @@ static void dev_iommu_free(struct device *dev)
 	dev->iommu = NULL;
 }
 
+static int __iommu_probe_device(struct device *dev)
+{
+	const struct iommu_ops *ops = dev->bus->iommu_ops;
+	struct iommu_device *iommu_dev;
+	struct iommu_group *group;
+	int ret;
+
+	iommu_dev = ops->probe_device(dev);
+	if (IS_ERR(iommu_dev))
+		return PTR_ERR(iommu_dev);
+
+	dev->iommu->iommu_dev = iommu_dev;
+
+	group = iommu_group_get_for_dev(dev);
+	if (!IS_ERR(group)) {
+		ret = PTR_ERR(group);
+		goto out_release;
+	}
+	iommu_group_put(group);
+
+	iommu_device_link(iommu_dev, dev);
+
+	return 0;
+
+out_release:
+	ops->release_device(dev);
+
+	return ret;
+}
+
 int iommu_probe_device(struct device *dev)
 {
 	const struct iommu_ops *ops = dev->bus->iommu_ops;
@@ -191,10 +221,17 @@ int iommu_probe_device(struct device *dev)
 		goto err_free_dev_param;
 	}
 
-	ret = ops->add_device(dev);
+	if (ops->probe_device)
+		ret = __iommu_probe_device(dev);
+	else
+		ret = ops->add_device(dev);
+
 	if (ret)
 		goto err_module_put;
 
+	if (ops->probe_finalize)
+		ops->probe_finalize(dev);
+
 	return 0;
 
 err_module_put:
@@ -204,17 +241,31 @@ int iommu_probe_device(struct device *dev)
 	return ret;
 }
 
+static void __iommu_release_device(struct device *dev)
+{
+	const struct iommu_ops *ops = dev->bus->iommu_ops;
+
+	iommu_device_unlink(dev->iommu->iommu_dev, dev);
+
+	iommu_group_remove_device(dev);
+
+	ops->release_device(dev);
+}
+
 void iommu_release_device(struct device *dev)
 {
 	const struct iommu_ops *ops = dev->bus->iommu_ops;
 
-	if (dev->iommu_group)
+	if (!dev->iommu)
+		return;
+
+	if (ops->release_device)
+		__iommu_release_device(dev);
+	else if (dev->iommu_group)
 		ops->remove_device(dev);
 
-	if (dev->iommu) {
-		module_put(ops->owner);
-		dev_iommu_free(dev);
-	}
+	module_put(ops->owner);
+	dev_iommu_free(dev);
 }
 
 static struct iommu_domain *__iommu_domain_alloc(struct bus_type *bus,
diff --git a/include/linux/iommu.h b/include/linux/iommu.h
index 1f027b07e499..30170d191e5e 100644
--- a/include/linux/iommu.h
+++ b/include/linux/iommu.h
@@ -225,6 +225,10 @@ struct iommu_iotlb_gather {
  * @iova_to_phys: translate iova to physical address
  * @add_device: add device to iommu grouping
  * @remove_device: remove device from iommu grouping
+ * @probe_device: Add device to iommu driver handling
+ * @release_device: Remove device from iommu driver handling
+ * @probe_finalize: Do final setup work after the device is added to an IOMMU
+ *                  group and attached to the groups domain
  * @device_group: find iommu group for a particular device
  * @domain_get_attr: Query domain attributes
  * @domain_set_attr: Change domain attributes
@@ -275,6 +279,9 @@ struct iommu_ops {
 	phys_addr_t (*iova_to_phys)(struct iommu_domain *domain, dma_addr_t iova);
 	int (*add_device)(struct device *dev);
 	void (*remove_device)(struct device *dev);
+	struct iommu_device *(*probe_device)(struct device *dev);
+	void (*release_device)(struct device *dev);
+	void (*probe_finalize)(struct device *dev);
 	struct iommu_group *(*device_group)(struct device *dev);
 	int (*domain_get_attr)(struct iommu_domain *domain,
 			       enum iommu_attr attr, void *data);
@@ -375,6 +382,7 @@ struct iommu_fault_param {
  *
  * @fault_param: IOMMU detected device fault reporting data
  * @fwspec:	 IOMMU fwspec data
+ * @iommu_dev:	 IOMMU device this device is linked to
  * @priv:	 IOMMU Driver private data
  *
  * TODO: migrate other per device data pointers under iommu_dev_data, e.g.
@@ -384,6 +392,7 @@ struct dev_iommu {
 	struct mutex lock;
 	struct iommu_fault_param	*fault_param;
 	struct iommu_fwspec		*fwspec;
+	struct iommu_device		*iommu_dev;
 	void				*priv;
 };
 
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32FA21BDEAA
	for <lists+linux-rockchip@lfdr.de>; Wed, 29 Apr 2020 15:39:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ZAoiFwIbTPIXJDqEBVe8rfO2PAGtiQCWrjwk04ds1go=; b=DMTYeUFDffF9BfdEbzvtQmkobb
	jmA5K4cQ6Wmbvi/KhMs2f3CIn/uyv7YNzUeCuxYX8GqJe3rff21TAKSULOQhJo0e7Io/H+y5JUkg7
	Lr9L+uUkdSXo3pnkDenCzK/KKj9TtL1Ui12CG2E5YAGAekoe7UzHuILYQkmB7zT8NCGDZht3CxQuW
	jErfxkoq0lTQeUKlmOcv7zig16VQJ+O2hP6zsCL4tTTJkTARvJa9EIwcrR96fDhgRve1PhuJ08Amw
	OnjKVAu4/Ait1N7j3fwb3AsjGhSNew+YKzKmxsdG5SAXuNbj2z7p4WPkHxMKNn2EYInpysGJsEnZw
	bpfQ6ctA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTmwA-0000R8-1P; Wed, 29 Apr 2020 13:39:42 +0000
Received: from 8bytes.org ([81.169.241.247] helo=theia.8bytes.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTmuQ-0006Om-UO; Wed, 29 Apr 2020 13:37:59 +0000
Received: by theia.8bytes.org (Postfix, from userid 1000)
 id BBE82BFC; Wed, 29 Apr 2020 15:37:37 +0200 (CEST)
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
Subject: [PATCH v3 13/34] iommu: Export bus_iommu_probe() and make is safe for
 re-probing
Date: Wed, 29 Apr 2020 15:36:51 +0200
Message-Id: <20200429133712.31431-14-joro@8bytes.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200429133712.31431-1-joro@8bytes.org>
References: <20200429133712.31431-1-joro@8bytes.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_063755_144141_6BC61499 
X-CRM114-Status: GOOD (  15.22  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [81.169.241.247 listed in list.dnswl.org]
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
 Daniel Drake <drake@endlessm.com>, linux-rockchip@lists.infradead.org,
 iommu@lists.linux-foundation.org, Joerg Roedel <jroedel@suse.de>,
 linux-mediatek@lists.infradead.org, linux-tegra@vger.kernel.org,
 virtualization@lists.linux-foundation.org, jonathan.derrick@intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

From: Joerg Roedel <jroedel@suse.de>

Add a check to the bus_iommu_probe() call-path to make sure it ignores
devices which have already been successfully probed. Then export the
bus_iommu_probe() function so it can be used by IOMMU drivers.

Tested-by: Marek Szyprowski <m.szyprowski@samsung.com>
Acked-by: Marek Szyprowski <m.szyprowski@samsung.com>
Signed-off-by: Joerg Roedel <jroedel@suse.de>
---
 drivers/iommu/iommu.c | 10 +++++++++-
 include/linux/iommu.h |  1 +
 2 files changed, 10 insertions(+), 1 deletion(-)

diff --git a/drivers/iommu/iommu.c b/drivers/iommu/iommu.c
index 834a45da0ed0..397fd4fd0c32 100644
--- a/drivers/iommu/iommu.c
+++ b/drivers/iommu/iommu.c
@@ -1610,11 +1610,19 @@ static int probe_iommu_group(struct device *dev, void *data)
 {
 	const struct iommu_ops *ops = dev->bus->iommu_ops;
 	struct list_head *group_list = data;
+	struct iommu_group *group;
 	int ret;
 
 	if (!dev_iommu_get(dev))
 		return -ENOMEM;
 
+	/* Device is probed already if in a group */
+	group = iommu_group_get(dev);
+	if (group) {
+		iommu_group_put(group);
+		return 0;
+	}
+
 	if (!try_module_get(ops->owner)) {
 		ret = -EINVAL;
 		goto err_free_dev_iommu;
@@ -1783,7 +1791,7 @@ static int iommu_group_create_direct_mappings(struct iommu_group *group)
 					  iommu_do_create_direct_mappings);
 }
 
-static int bus_iommu_probe(struct bus_type *bus)
+int bus_iommu_probe(struct bus_type *bus)
 {
 	const struct iommu_ops *ops = bus->iommu_ops;
 	int ret;
diff --git a/include/linux/iommu.h b/include/linux/iommu.h
index 30170d191e5e..fea1622408ad 100644
--- a/include/linux/iommu.h
+++ b/include/linux/iommu.h
@@ -445,6 +445,7 @@ static inline void iommu_iotlb_gather_init(struct iommu_iotlb_gather *gather)
 #define IOMMU_GROUP_NOTIFY_UNBOUND_DRIVER	6 /* Post Driver unbind */
 
 extern int bus_set_iommu(struct bus_type *bus, const struct iommu_ops *ops);
+extern int bus_iommu_probe(struct bus_type *bus);
 extern bool iommu_present(struct bus_type *bus);
 extern bool iommu_capable(struct bus_type *bus, enum iommu_cap cap);
 extern struct iommu_domain *iommu_domain_alloc(struct bus_type *bus);
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

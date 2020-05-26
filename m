Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9241A1A7D54
	for <lists+linux-rockchip@lfdr.de>; Tue, 14 Apr 2020 15:24:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=s/Et0B1xWJIoxrTjDmrA07aIixcPmQ9V7nwOj0ZRktA=; b=UsCq4mP4k3ri/ITFUQQJj8V4vV
	EMe5+PUirzZA9sqk5V9J1zFb45UcV38LuZFtwFlg/OAVz6HrZtIQ92k2FfUnoMSImEpuSUw7ncEg8
	NzZGsKdATTIkHTaz0W2oa3+aFfeUx3fKxm9xaV0CPgYwPneo5WgHle1T711vzCkMmDi/vckDWIshj
	vMy40uDeqCRew/J6CCrrR6i8mWgVeK0z2g6xmgynJZTcdidBGPu7LVfM//OeI47xPSmVfvhnlb4W/
	8GlwH51pK3zMLFtmpLxFL7c+AT4kHmmyu2XPbvZj6DbR4goAYMN+i9/IdrxdSaeruM1U50Ztla+YI
	85Nmz8EA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOLXz-0004p0-AR; Tue, 14 Apr 2020 13:24:15 +0000
Received: from 8bytes.org ([81.169.241.247] helo=theia.8bytes.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOLQ4-0002Pl-RV; Tue, 14 Apr 2020 13:16:12 +0000
Received: by theia.8bytes.org (Postfix, from userid 1000)
 id 06C7E4CA; Tue, 14 Apr 2020 15:15:52 +0200 (CEST)
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
Subject: [PATCH v2 08/33] iommu: Move default domain allocation to
 iommu_probe_device()
Date: Tue, 14 Apr 2020 15:15:17 +0200
Message-Id: <20200414131542.25608-9-joro@8bytes.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200414131542.25608-1-joro@8bytes.org>
References: <20200414131542.25608-1-joro@8bytes.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_061605_369889_DC56FF65 
X-CRM114-Status: GOOD (  19.64  )
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

Well, not really. The call to iommu_alloc_default_domain() in
iommu_group_get_for_dev() has to stay around as long as there are
IOMMU drivers using the add/remove_device() call-backs instead of
probe/release_device().

Those drivers expect that iommu_group_get_for_dev() returns the device
attached to a group and the group set up with a default domain (and
the device attached to the groups current domain).

But when all drivers are converted this compatability mess can be
removed.

Signed-off-by: Joerg Roedel <jroedel@suse.de>
---
 drivers/iommu/iommu.c | 102 +++++++++++++++++++++++++++++-------------
 1 file changed, 71 insertions(+), 31 deletions(-)

diff --git a/drivers/iommu/iommu.c b/drivers/iommu/iommu.c
index 6cfe7799dc8c..7a385c18e1a5 100644
--- a/drivers/iommu/iommu.c
+++ b/drivers/iommu/iommu.c
@@ -79,6 +79,16 @@ static bool iommu_cmd_line_dma_api(void)
 	return !!(iommu_cmd_line & IOMMU_CMD_LINE_DMA_API);
 }
 
+static int iommu_alloc_default_domain(struct device *dev);
+static struct iommu_domain *__iommu_domain_alloc(struct bus_type *bus,
+						 unsigned type);
+static int __iommu_attach_device(struct iommu_domain *domain,
+				 struct device *dev);
+static int __iommu_attach_group(struct iommu_domain *domain,
+				struct iommu_group *group);
+static void __iommu_detach_group(struct iommu_domain *domain,
+				 struct iommu_group *group);
+
 #define IOMMU_GROUP_ATTR(_name, _mode, _show, _store)		\
 struct iommu_group_attribute iommu_group_attr_##_name =		\
 	__ATTR(_name, _mode, _show, _store)
@@ -221,10 +231,29 @@ int iommu_probe_device(struct device *dev)
 		goto err_free_dev_param;
 	}
 
-	if (ops->probe_device)
+	if (ops->probe_device) {
+		struct iommu_group *group;
+
 		ret = __iommu_probe_device(dev);
-	else
+
+		/*
+		 * Try to allocate a default domain - needs support from the
+		 * IOMMU driver. There are still some drivers which don't
+		 * support default domains, so the return value is not yet
+		 * checked.
+		 */
+		if (!ret)
+			iommu_alloc_default_domain(dev);
+
+		group = iommu_group_get(dev);
+		if (group && group->default_domain) {
+			ret = __iommu_attach_device(group->default_domain, dev);
+			iommu_group_put(group);
+		}
+
+	} else {
 		ret = ops->add_device(dev);
+	}
 
 	if (ret)
 		goto err_module_put;
@@ -268,15 +297,6 @@ void iommu_release_device(struct device *dev)
 	dev_iommu_free(dev);
 }
 
-static struct iommu_domain *__iommu_domain_alloc(struct bus_type *bus,
-						 unsigned type);
-static int __iommu_attach_device(struct iommu_domain *domain,
-				 struct device *dev);
-static int __iommu_attach_group(struct iommu_domain *domain,
-				struct iommu_group *group);
-static void __iommu_detach_group(struct iommu_domain *domain,
-				 struct iommu_group *group);
-
 static int __init iommu_set_def_domain_type(char *str)
 {
 	bool pt;
@@ -1423,25 +1443,18 @@ static int iommu_get_def_domain_type(struct device *dev)
 	return (type == 0) ? iommu_def_domain_type : type;
 }
 
-static int iommu_alloc_default_domain(struct device *dev,
-				      struct iommu_group *group)
+static int iommu_group_alloc_default_domain(struct bus_type *bus,
+					    struct iommu_group *group,
+					    unsigned int type)
 {
 	struct iommu_domain *dom;
-	unsigned int type;
-
-	if (group->default_domain)
-		return 0;
 
-	type = iommu_get_def_domain_type(dev);
-
-	dom = __iommu_domain_alloc(dev->bus, type);
+	dom = __iommu_domain_alloc(bus, type);
 	if (!dom && type != IOMMU_DOMAIN_DMA) {
-		dom = __iommu_domain_alloc(dev->bus, IOMMU_DOMAIN_DMA);
-		if (dom) {
-			dev_warn(dev,
-				 "failed to allocate default IOMMU domain of type %u; falling back to IOMMU_DOMAIN_DMA",
-				 type);
-		}
+		dom = __iommu_domain_alloc(bus, IOMMU_DOMAIN_DMA);
+		if (dom)
+			pr_warn("Failed to allocate default IOMMU domain of type %u for group %s - Falling back to IOMMU_DOMAIN_DMA",
+				type, group->name);
 	}
 
 	if (!dom)
@@ -1461,6 +1474,23 @@ static int iommu_alloc_default_domain(struct device *dev,
 	return 0;
 }
 
+static int iommu_alloc_default_domain(struct device *dev)
+{
+	struct iommu_group *group;
+	unsigned int type;
+
+	group = iommu_group_get(dev);
+	if (!group)
+		return -ENODEV;
+
+	if (group->default_domain)
+		return 0;
+
+	type = iommu_get_def_domain_type(dev);
+
+	return iommu_group_alloc_default_domain(dev->bus, group, type);
+}
+
 /**
  * iommu_group_get_for_dev - Find or create the IOMMU group for a device
  * @dev: target device
@@ -1491,16 +1521,26 @@ struct iommu_group *iommu_group_get_for_dev(struct device *dev)
 	if (IS_ERR(group))
 		return group;
 
+	ret = iommu_group_add_device(group, dev);
+	if (ret)
+		goto out_put_group;
+
 	/*
 	 * Try to allocate a default domain - needs support from the
 	 * IOMMU driver. There are still some drivers which don't support
-	 * default domains, so the return value is not yet checked.
+	 * default domains, so the return value is not yet checked. Only
+	 * allocate the domain here when the driver still has the
+	 * add_device/remove_device call-backs implemented.
 	 */
-	iommu_alloc_default_domain(dev, group);
+	if (!ops->probe_device) {
+		iommu_alloc_default_domain(dev);
 
-	ret = iommu_group_add_device(group, dev);
-	if (ret)
-		goto out_put_group;
+		if (group->default_domain)
+			ret = __iommu_attach_device(group->default_domain, dev);
+
+		if (ret)
+			goto out_put_group;
+	}
 
 	return group;
 
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

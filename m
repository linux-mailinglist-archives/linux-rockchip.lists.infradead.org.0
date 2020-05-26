Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E90221A14BB
	for <lists+linux-rockchip@lfdr.de>; Tue,  7 Apr 2020 20:39:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Mk+X8ZNh5rdgeztH/nTiAJgeBBqr9ipaCr/L1VkSu48=; b=M2dj0LaSLzvQMwJziAveoerkce
	g8+RvN+aoDlpwxdrEovqMg7udb6GuJhLTCi6LUPVDPwuSUIwwCYvZyYd6zmLGTkEOm/GUKEon1y78
	veV81sT5YsTP8eB9Lp749uNX8elEltS6G3SdkyD2cmaoT2mDk6ntp6849wT5sGfyDh1pJxPfsYoxt
	Aw2tyhsu2uIXtrYsnQwgu63nlR4w+fR181sK12ONuigg1G6MesJE21129dvN2d54xNW1bN5WMpbvQ
	i+FEm4RGOtA4QyTrdhjni9t4leKhTuqEmtgrmJhNHdJ9NOCERF+FTOOjklu4MSh5SBuFh1cG4wdFI
	AyAWZV6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLt8Q-0000MB-4k; Tue, 07 Apr 2020 18:39:42 +0000
Received: from 8bytes.org ([81.169.241.247] helo=theia.8bytes.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLt6q-0006jd-Uc; Tue, 07 Apr 2020 18:38:09 +0000
Received: by theia.8bytes.org (Postfix, from userid 1000)
 id 89337396; Tue,  7 Apr 2020 20:37:50 +0200 (CEST)
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
Subject: [RFC PATCH 12/34] iommu: Move iommu_group_create_direct_mappings()
 out of iommu_group_add_device()
Date: Tue,  7 Apr 2020 20:37:20 +0200
Message-Id: <20200407183742.4344-13-joro@8bytes.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200407183742.4344-1-joro@8bytes.org>
References: <20200407183742.4344-1-joro@8bytes.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_113805_138510_1F403412 
X-CRM114-Status: GOOD (  13.82  )
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
 virtualization@lists.linux-foundation.org, linux-rockchip@lists.infradead.org,
 iommu@lists.linux-foundation.org, Joerg Roedel <jroedel@suse.de>,
 linux-mediatek@lists.infradead.org, linux-tegra@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

From: Joerg Roedel <jroedel@suse.de>

After the previous changes the iommu group may not have a default
domain when iommu_group_add_device() is called. With no default domain
iommu_group_create_direct_mappings() will do nothing and no direct
mappings will be created.

Rename iommu_group_create_direct_mappings() to
iommu_create_device_direct_mappings() to better reflect that the
function creates direct mappings only for one device and not for all
devices in the group. Then move the call to the places where a default
domain actually exists.

Signed-off-by: Joerg Roedel <jroedel@suse.de>
---
 drivers/iommu/iommu.c | 35 ++++++++++++++++++++++++++++++-----
 1 file changed, 30 insertions(+), 5 deletions(-)

diff --git a/drivers/iommu/iommu.c b/drivers/iommu/iommu.c
index 44514e3e8ca2..844613850595 100644
--- a/drivers/iommu/iommu.c
+++ b/drivers/iommu/iommu.c
@@ -89,6 +89,8 @@ static int __iommu_attach_group(struct iommu_domain *domain,
 				struct iommu_group *group);
 static void __iommu_detach_group(struct iommu_domain *domain,
 				 struct iommu_group *group);
+static int iommu_create_device_direct_mappings(struct iommu_group *group,
+					       struct device *dev);
 
 #define IOMMU_GROUP_ATTR(_name, _mode, _show, _store)		\
 struct iommu_group_attribute iommu_group_attr_##_name =		\
@@ -243,6 +245,8 @@ static int __iommu_probe_device_helper(struct device *dev)
 	if (group->default_domain)
 		ret = __iommu_attach_device(group->default_domain, dev);
 
+	iommu_create_device_direct_mappings(group, dev);
+
 	iommu_group_put(group);
 
 	if (ret)
@@ -263,6 +267,7 @@ static int __iommu_probe_device_helper(struct device *dev)
 int iommu_probe_device(struct device *dev)
 {
 	const struct iommu_ops *ops = dev->bus->iommu_ops;
+	struct iommu_group *group;
 	int ret;
 
 	WARN_ON(dev->iommu_group);
@@ -285,6 +290,10 @@ int iommu_probe_device(struct device *dev)
 	if (ret)
 		goto err_module_put;
 
+	group = iommu_group_get(dev);
+	iommu_create_device_direct_mappings(group, dev);
+	iommu_group_put(group);
+
 	if (ops->probe_finalize)
 		ops->probe_finalize(dev);
 
@@ -736,8 +745,8 @@ int iommu_group_set_name(struct iommu_group *group, const char *name)
 }
 EXPORT_SYMBOL_GPL(iommu_group_set_name);
 
-static int iommu_group_create_direct_mappings(struct iommu_group *group,
-					      struct device *dev)
+static int iommu_create_device_direct_mappings(struct iommu_group *group,
+					       struct device *dev)
 {
 	struct iommu_domain *domain = group->default_domain;
 	struct iommu_resv_region *entry;
@@ -841,8 +850,6 @@ int iommu_group_add_device(struct iommu_group *group, struct device *dev)
 
 	dev->iommu_group = group;
 
-	iommu_group_create_direct_mappings(group, dev);
-
 	mutex_lock(&group->mutex);
 	list_add_tail(&device->list, &group->devices);
 	if (group->domain)
@@ -1736,6 +1743,7 @@ static void probe_alloc_default_domain(struct bus_type *bus,
 		gtype.type = iommu_def_domain_type;
 
 	iommu_group_alloc_default_domain(bus, group, gtype.type);
+
 }
 
 static int iommu_group_do_dma_attach(struct device *dev, void *data)
@@ -1760,6 +1768,21 @@ static int __iommu_group_dma_attach(struct iommu_group *group)
 					  iommu_group_do_dma_attach);
 }
 
+static int iommu_do_create_direct_mappings(struct device *dev, void *data)
+{
+	struct iommu_group *group = data;
+
+	iommu_create_device_direct_mappings(group, dev);
+
+	return 0;
+}
+
+static int iommu_group_create_direct_mappings(struct iommu_group *group)
+{
+	return __iommu_group_for_each_dev(group, group,
+					  iommu_do_create_direct_mappings);
+}
+
 static int bus_iommu_probe(struct bus_type *bus)
 {
 	const struct iommu_ops *ops = bus->iommu_ops;
@@ -1790,6 +1813,8 @@ static int bus_iommu_probe(struct bus_type *bus)
 			if (!group->default_domain)
 				continue;
 
+			iommu_group_create_direct_mappings(group);
+
 			ret = __iommu_group_dma_attach(group);
 
 			mutex_unlock(&group->mutex);
@@ -2630,7 +2655,7 @@ request_default_domain_for_dev(struct device *dev, unsigned long type)
 		iommu_domain_free(group->default_domain);
 	group->default_domain = domain;
 
-	iommu_group_create_direct_mappings(group, dev);
+	iommu_create_device_direct_mappings(group, dev);
 
 	dev_info(dev, "Using iommu %s mapping\n",
 		 type == IOMMU_DOMAIN_DMA ? "dma" : "direct");
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

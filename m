Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A5E71BDEB6
	for <lists+linux-rockchip@lfdr.de>; Wed, 29 Apr 2020 15:40:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=JSf2M17DV8DcbIclDT6ZUwhK5t1mciMuBT9WZiy+eIQ=; b=P+Dx7Ls81YeoKD6RHboFdkzU8a
	LCD5jDDLEAOpaQZ/OC1/RA5WmL8I1CEjYnLGrQJxwtXBT7blq4vPin6WoPFoPVFB17eIfE6fcLDJU
	bCs/M2gtrGzybaw1LDu6MAzrXT4MJ5ocF3vr9t0djGScpNCmSHEcfGlsHGkHXzOeaG5LIEB4h80Xp
	Rk9OTzcyLJtctG2qfGAxznrRXHezniK9FhesZz+NQ0OsiogWkocp5mLbmDQCUgBp9LBE+oWv6JPE7
	EsoFEzke7pMvn3s8dT+9vbP3BqWZef8LdLRKowAO0T0WcjYL/ty2g+mW0rkYCZyr92lRpSmJjbmXB
	jo32i1lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTmwR-0000xi-Lp; Wed, 29 Apr 2020 13:39:59 +0000
Received: from 8bytes.org ([81.169.241.247] helo=theia.8bytes.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTmuQ-0006O0-0c; Wed, 29 Apr 2020 13:37:58 +0000
Received: by theia.8bytes.org (Postfix, from userid 1000)
 id 50F30F06; Wed, 29 Apr 2020 15:37:40 +0200 (CEST)
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
Subject: [PATCH v3 26/34] iommu/tegra: Convert to probe/release_device()
 call-backs
Date: Wed, 29 Apr 2020 15:37:04 +0200
Message-Id: <20200429133712.31431-27-joro@8bytes.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200429133712.31431-1-joro@8bytes.org>
References: <20200429133712.31431-1-joro@8bytes.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_063754_302144_8D09CDD2 
X-CRM114-Status: GOOD (  15.44  )
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

Convert the Tegra IOMMU drivers to use the probe_device() and
release_device() call-backs of iommu_ops, so that the iommu core code
does the group and sysfs setup.

Signed-off-by: Joerg Roedel <jroedel@suse.de>
---
 drivers/iommu/tegra-gart.c | 24 ++++++------------------
 drivers/iommu/tegra-smmu.c | 31 ++++++++-----------------------
 2 files changed, 14 insertions(+), 41 deletions(-)

diff --git a/drivers/iommu/tegra-gart.c b/drivers/iommu/tegra-gart.c
index db6559e8336f..5fbdff6ff41a 100644
--- a/drivers/iommu/tegra-gart.c
+++ b/drivers/iommu/tegra-gart.c
@@ -243,28 +243,16 @@ static bool gart_iommu_capable(enum iommu_cap cap)
 	return false;
 }
 
-static int gart_iommu_add_device(struct device *dev)
+static struct iommu_device *gart_iommu_probe_device(struct device *dev)
 {
-	struct iommu_group *group;
-
 	if (!dev_iommu_fwspec_get(dev))
-		return -ENODEV;
-
-	group = iommu_group_get_for_dev(dev);
-	if (IS_ERR(group))
-		return PTR_ERR(group);
-
-	iommu_group_put(group);
+		return ERR_PTR(-ENODEV);
 
-	iommu_device_link(&gart_handle->iommu, dev);
-
-	return 0;
+	return &gart_handle->iommu;
 }
 
-static void gart_iommu_remove_device(struct device *dev)
+static void gart_iommu_release_device(struct device *dev)
 {
-	iommu_group_remove_device(dev);
-	iommu_device_unlink(&gart_handle->iommu, dev);
 }
 
 static int gart_iommu_of_xlate(struct device *dev,
@@ -290,8 +278,8 @@ static const struct iommu_ops gart_iommu_ops = {
 	.domain_free	= gart_iommu_domain_free,
 	.attach_dev	= gart_iommu_attach_dev,
 	.detach_dev	= gart_iommu_detach_dev,
-	.add_device	= gart_iommu_add_device,
-	.remove_device	= gart_iommu_remove_device,
+	.probe_device	= gart_iommu_probe_device,
+	.release_device	= gart_iommu_release_device,
 	.device_group	= generic_device_group,
 	.map		= gart_iommu_map,
 	.unmap		= gart_iommu_unmap,
diff --git a/drivers/iommu/tegra-smmu.c b/drivers/iommu/tegra-smmu.c
index 63a147b623e6..7426b7666e2b 100644
--- a/drivers/iommu/tegra-smmu.c
+++ b/drivers/iommu/tegra-smmu.c
@@ -757,11 +757,10 @@ static int tegra_smmu_configure(struct tegra_smmu *smmu, struct device *dev,
 	return 0;
 }
 
-static int tegra_smmu_add_device(struct device *dev)
+static struct iommu_device *tegra_smmu_probe_device(struct device *dev)
 {
 	struct device_node *np = dev->of_node;
 	struct tegra_smmu *smmu = NULL;
-	struct iommu_group *group;
 	struct of_phandle_args args;
 	unsigned int index = 0;
 	int err;
@@ -774,7 +773,7 @@ static int tegra_smmu_add_device(struct device *dev)
 			of_node_put(args.np);
 
 			if (err < 0)
-				return err;
+				return ERR_PTR(err);
 
 			/*
 			 * Only a single IOMMU master interface is currently
@@ -783,8 +782,6 @@ static int tegra_smmu_add_device(struct device *dev)
 			 */
 			dev->archdata.iommu = smmu;
 
-			iommu_device_link(&smmu->iommu, dev);
-
 			break;
 		}
 
@@ -793,26 +790,14 @@ static int tegra_smmu_add_device(struct device *dev)
 	}
 
 	if (!smmu)
-		return -ENODEV;
-
-	group = iommu_group_get_for_dev(dev);
-	if (IS_ERR(group))
-		return PTR_ERR(group);
-
-	iommu_group_put(group);
+		return ERR_PTR(-ENODEV);
 
-	return 0;
+	return &smmu->iommu;
 }
 
-static void tegra_smmu_remove_device(struct device *dev)
+static void tegra_smmu_release_device(struct device *dev)
 {
-	struct tegra_smmu *smmu = dev->archdata.iommu;
-
-	if (smmu)
-		iommu_device_unlink(&smmu->iommu, dev);
-
 	dev->archdata.iommu = NULL;
-	iommu_group_remove_device(dev);
 }
 
 static const struct tegra_smmu_group_soc *
@@ -895,8 +880,8 @@ static const struct iommu_ops tegra_smmu_ops = {
 	.domain_free = tegra_smmu_domain_free,
 	.attach_dev = tegra_smmu_attach_dev,
 	.detach_dev = tegra_smmu_detach_dev,
-	.add_device = tegra_smmu_add_device,
-	.remove_device = tegra_smmu_remove_device,
+	.probe_device = tegra_smmu_probe_device,
+	.release_device = tegra_smmu_release_device,
 	.device_group = tegra_smmu_device_group,
 	.map = tegra_smmu_map,
 	.unmap = tegra_smmu_unmap,
@@ -1015,7 +1000,7 @@ struct tegra_smmu *tegra_smmu_probe(struct device *dev,
 	 * value. However the IOMMU registration process will attempt to add
 	 * all devices to the IOMMU when bus_set_iommu() is called. In order
 	 * not to rely on global variables to track the IOMMU instance, we
-	 * set it here so that it can be looked up from the .add_device()
+	 * set it here so that it can be looked up from the .probe_device()
 	 * callback via the IOMMU device's .drvdata field.
 	 */
 	mc->smmu = smmu;
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

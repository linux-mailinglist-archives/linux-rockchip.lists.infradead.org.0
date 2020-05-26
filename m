Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E02BB1A7D7F
	for <lists+linux-rockchip@lfdr.de>; Tue, 14 Apr 2020 15:25:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=AUDWM57qq548B40MT+lwoIFJjZMGzjPPABXuJIRvOtc=; b=L08+cy0cxv4vabhKCznu45sZdh
	IlPWIB11K+6txQsImgMvTyyjFCZPZOKryKPyTHagyCytw9mxhbiyJjFZ2owB+YuwIXsJpZr6u3HsR
	v9DlKaXfz/ldx3JHvoVlMKOhZD1ThZNzrvLW0heuHMyL3dQ+A288e5oz6+NOVp0MERs6kpKRGSZq2
	dnqp+dJ5tqIQHqF/BlXO1Qh0dJQxWi1JE1xNWzoI9YI8OldHvzKpbGCcnfE2hSxwYwhy17LuEUkur
	MBtNZs4NJRz+dczh6CEHIKn6TStfdNivvSeEVPArjYfU89XRXU3fuZADkHPdRiaarefJ6C59bvsn4
	hkhVBzJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOLYt-00069J-KB; Tue, 14 Apr 2020 13:25:11 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOLQK-0002qr-Te; Tue, 14 Apr 2020 13:16:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=References:In-Reply-To:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=ezIcyRMiPGZm7PvEZbHm5gxVf6Pdmy4EhVwWSrt2Oa4=; b=rJTBK+TjnrVO/kI5aXKW2rbmk2
 0umiqzu/t7pWZfnH+eEPyYQZTwkNkCRXBV7I0chclV7wixxslQ0JhAqghM6HHwLxIVCEewEAFzdL7
 3nixjtaWTXTffQe6F7arf9emxKJSXBRU6u9BrhtFXwNLGeF85jU8k/Dg4kXWos5G+EmHgUu1xhJzB
 rLbIBdmWZY5sHqTX/40LVp4+DQC3vO1E6tnypLdhC9heUPwo7so1dvX5Yq43CL3wARb2CiUmQdHd1
 PU6gbgbREtxtFMeJF3QKGxWLwYd+gNG7J7NUmCMj8hZm6Y9PwXl3Vg+RoNRgjRdUzJk/bLgDkximY
 RfSX9DVA==;
Received: from 8bytes.org ([2a01:238:4383:600:38bc:a715:4b6d:a889]
 helo=theia.8bytes.org)
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOLQI-0007xq-5i; Tue, 14 Apr 2020 13:16:19 +0000
Received: by theia.8bytes.org (Postfix, from userid 1000)
 id 701C280A; Tue, 14 Apr 2020 15:15:57 +0200 (CEST)
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
Subject: [PATCH v2 31/33] iommu/exynos: Convert to probe/release_device()
 call-backs
Date: Tue, 14 Apr 2020 15:15:40 +0200
Message-Id: <20200414131542.25608-32-joro@8bytes.org>
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

Convert the Exynos IOMMU driver to use the probe_device() and
release_device() call-backs of iommu_ops, so that the iommu core code
does the group and sysfs setup.

Signed-off-by: Joerg Roedel <jroedel@suse.de>
---
 drivers/iommu/exynos-iommu.c | 26 ++++++--------------------
 1 file changed, 6 insertions(+), 20 deletions(-)

diff --git a/drivers/iommu/exynos-iommu.c b/drivers/iommu/exynos-iommu.c
index 09cdd163560a..60c8a56e4a3f 100644
--- a/drivers/iommu/exynos-iommu.c
+++ b/drivers/iommu/exynos-iommu.c
@@ -1235,19 +1235,13 @@ static phys_addr_t exynos_iommu_iova_to_phys(struct iommu_domain *iommu_domain,
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
@@ -1259,17 +1253,15 @@ static int exynos_iommu_add_device(struct device *dev)
 					     DL_FLAG_STATELESS |
 					     DL_FLAG_PM_RUNTIME);
 	}
-	iommu_group_put(group);
 
 	/* There is always at least one entry, see exynos_iommu_of_xlate() */
 	data = list_first_entry(&owner->controllers,
 				struct sysmmu_drvdata, owner_node);
-	iommu_device_link(&data->iommu, dev);
 
-	return 0;
+	return &data->iommu;
 }
 
-static void exynos_iommu_remove_device(struct device *dev)
+static void exynos_iommu_release_device(struct device *dev)
 {
 	struct exynos_iommu_owner *owner = dev->archdata.iommu;
 	struct sysmmu_drvdata *data;
@@ -1287,15 +1279,9 @@ static void exynos_iommu_remove_device(struct device *dev)
 			iommu_group_put(group);
 		}
 	}
-	iommu_group_remove_device(dev);
 
 	list_for_each_entry(data, &owner->controllers, owner_node)
 		device_link_del(data->link);
-
-	/* There is always at least one entry, see exynos_iommu_of_xlate() */
-	data = list_first_entry(&owner->controllers,
-				struct sysmmu_drvdata, owner_node);
-	iommu_device_unlink(&data->iommu, dev);
 }
 
 static int exynos_iommu_of_xlate(struct device *dev,
@@ -1341,8 +1327,8 @@ static const struct iommu_ops exynos_iommu_ops = {
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

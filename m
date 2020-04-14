Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE6561A7D58
	for <lists+linux-rockchip@lfdr.de>; Tue, 14 Apr 2020 15:24:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=cd4s1xJNdZEh+lOlc92jFJyfHqOmullxlW09YJ+yOxs=; b=fA51mpTH8sp4U19hy7Rp5HOmd4
	cWxOErFxJ7yLg6gqtwDo0H5ZKeiFx+HZdHSbOtITGa30alFGSZUIJKpNPHSk9uvp84nvgIzo0Sq0H
	Vg34F/uHi0jkzzprSrbSFEOntEdQIvg8CGYL0x8pORqv+lqsPgwYmzGUzPylOyv3UlWumPipA9jmN
	iI9ZZ6AssAhbFaP7+fx3/gANAg0t1Apadn6cLwZKx3FWWZik7zpRkjrdcO6lw6EwQJzFjTdRVjbPX
	xiuoMDAyCwu6fFjPtvpquFWI9/dT7EsmB4hON+6ygfHILfzCaV09Ljb+TzD4X3Ae4Fjt4cJHj2WP4
	WDHKM6+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOLYC-00058M-Ot; Tue, 14 Apr 2020 13:24:28 +0000
Received: from 8bytes.org ([81.169.241.247] helo=theia.8bytes.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOLQ5-0002QJ-9X; Tue, 14 Apr 2020 13:16:13 +0000
Received: by theia.8bytes.org (Postfix, from userid 1000)
 id 31ED54F2; Tue, 14 Apr 2020 15:15:53 +0200 (CEST)
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
Subject: [PATCH v2 10/33] iommu: Move new probe_device path to separate
 function
Date: Tue, 14 Apr 2020 15:15:19 +0200
Message-Id: <20200414131542.25608-11-joro@8bytes.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200414131542.25608-1-joro@8bytes.org>
References: <20200414131542.25608-1-joro@8bytes.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_061605_612152_4DD8EF40 
X-CRM114-Status: GOOD (  16.15  )
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

This makes it easier to remove to old code-path when all drivers are
converted. As a side effect that it also fixes the error cleanup
path.

Signed-off-by: Joerg Roedel <jroedel@suse.de>
---
 drivers/iommu/iommu.c | 69 ++++++++++++++++++++++++++++---------------
 1 file changed, 46 insertions(+), 23 deletions(-)

diff --git a/drivers/iommu/iommu.c b/drivers/iommu/iommu.c
index 18eb3623bd00..8be047a4808f 100644
--- a/drivers/iommu/iommu.c
+++ b/drivers/iommu/iommu.c
@@ -218,12 +218,55 @@ static int __iommu_probe_device(struct device *dev, struct list_head *group_list
 	return ret;
 }
 
+static int __iommu_probe_device_helper(struct device *dev)
+{
+	const struct iommu_ops *ops = dev->bus->iommu_ops;
+	struct iommu_group *group;
+	int ret;
+
+	ret = __iommu_probe_device(dev, NULL);
+	if (ret)
+		goto err_out;
+
+	/*
+	 * Try to allocate a default domain - needs support from the
+	 * IOMMU driver. There are still some drivers which don't
+	 * support default domains, so the return value is not yet
+	 * checked.
+	 */
+	iommu_alloc_default_domain(dev);
+
+	group = iommu_group_get(dev);
+	if (!group)
+		goto err_release;
+
+	if (group->default_domain)
+		ret = __iommu_attach_device(group->default_domain, dev);
+
+	iommu_group_put(group);
+
+	if (ret)
+		goto err_release;
+
+	if (ops->probe_finalize)
+		ops->probe_finalize(dev);
+
+	return 0;
+
+err_release:
+	iommu_release_device(dev);
+err_out:
+	return ret;
+
+}
+
 int iommu_probe_device(struct device *dev)
 {
 	const struct iommu_ops *ops = dev->bus->iommu_ops;
 	int ret;
 
 	WARN_ON(dev->iommu_group);
+
 	if (!ops)
 		return -EINVAL;
 
@@ -235,30 +278,10 @@ int iommu_probe_device(struct device *dev)
 		goto err_free_dev_param;
 	}
 
-	if (ops->probe_device) {
-		struct iommu_group *group;
-
-		ret = __iommu_probe_device(dev, NULL);
-
-		/*
-		 * Try to allocate a default domain - needs support from the
-		 * IOMMU driver. There are still some drivers which don't
-		 * support default domains, so the return value is not yet
-		 * checked.
-		 */
-		if (!ret)
-			iommu_alloc_default_domain(dev);
-
-		group = iommu_group_get(dev);
-		if (group && group->default_domain) {
-			ret = __iommu_attach_device(group->default_domain, dev);
-			iommu_group_put(group);
-		}
-
-	} else {
-		ret = ops->add_device(dev);
-	}
+	if (ops->probe_device)
+		return __iommu_probe_device_helper(dev);
 
+	ret = ops->add_device(dev);
 	if (ret)
 		goto err_module_put;
 
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

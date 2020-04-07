Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53D6B1A14BF
	for <lists+linux-rockchip@lfdr.de>; Tue,  7 Apr 2020 20:39:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=0K2Uq7+Ec/wDnwU5dSdciglAdU8a6p+h2bZTBflNd9w=; b=uiL+uYjpaUS/EjxLeKIW6C56cr
	rJhYo7zxgD2SyZrvZcvIt8LUS6om/ax0BBW0mpN2CpYVstocvAlPURF43lvNX6oTBqZLZNaTDlpdA
	2uvE0bpI+UtBYahdGgdAk/+BDdY4Kvuz+pnHWcWcJ5oO1b4Pp3cw0F5Hc8Aq8nRs17RZZrerNvc5Y
	Gka4Hkp+8MwHkwwewoP7IAcu3DB0Qu/zvYPIhWYxUafObUN1jACGfFeivVhe82iC7EettwziJi2cy
	WcWzuukUwIO8dWqLTMqOy9AuJU1nJnVDx0YxaiVzpeakNi1dHd4SV2PWUSYItE3rTHGLbAfIHUngt
	5r1p8ErQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLt8Y-0000Xc-L3; Tue, 07 Apr 2020 18:39:50 +0000
Received: from 8bytes.org ([81.169.241.247] helo=theia.8bytes.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLt6x-0006rv-1B; Tue, 07 Apr 2020 18:38:15 +0000
Received: by theia.8bytes.org (Postfix, from userid 1000)
 id D53E25D8; Tue,  7 Apr 2020 20:37:52 +0200 (CEST)
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
Subject: [RFC PATCH 24/34] iommu/mediatek-v1 Convert to probe/release_device()
 call-backs
Date: Tue,  7 Apr 2020 20:37:32 +0200
Message-Id: <20200407183742.4344-25-joro@8bytes.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200407183742.4344-1-joro@8bytes.org>
References: <20200407183742.4344-1-joro@8bytes.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_113811_261303_77EEC166 
X-CRM114-Status: GOOD (  14.45  )
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

Convert the Mediatek-v1 IOMMU driver to use the probe_device() and
release_device() call-backs of iommu_ops, so that the iommu core code
does the group and sysfs setup.

Signed-off-by: Joerg Roedel <jroedel@suse.de>
---
 drivers/iommu/mtk_iommu_v1.c | 50 +++++++++++++++---------------------
 1 file changed, 20 insertions(+), 30 deletions(-)

diff --git a/drivers/iommu/mtk_iommu_v1.c b/drivers/iommu/mtk_iommu_v1.c
index a31be05601c9..7bdd74c7cb9f 100644
--- a/drivers/iommu/mtk_iommu_v1.c
+++ b/drivers/iommu/mtk_iommu_v1.c
@@ -416,14 +416,12 @@ static int mtk_iommu_create_mapping(struct device *dev,
 	return 0;
 }
 
-static int mtk_iommu_add_device(struct device *dev)
+static struct iommu_device *mtk_iommu_probe_device(struct device *dev)
 {
 	struct iommu_fwspec *fwspec = dev_iommu_fwspec_get(dev);
-	struct dma_iommu_mapping *mtk_mapping;
 	struct of_phandle_args iommu_spec;
 	struct of_phandle_iterator it;
 	struct mtk_iommu_data *data;
-	struct iommu_group *group;
 	int err;
 
 	of_for_each_phandle(&it, err, dev->of_node, "iommus",
@@ -442,35 +440,28 @@ static int mtk_iommu_add_device(struct device *dev)
 	}
 
 	if (!fwspec || fwspec->ops != &mtk_iommu_ops)
-		return -ENODEV; /* Not a iommu client device */
+		return ERR_PTR(-ENODEV); /* Not a iommu client device */
 
-	/*
-	 * This is a short-term bodge because the ARM DMA code doesn't
-	 * understand multi-device groups, but we have to call into it
-	 * successfully (and not just rely on a normal IOMMU API attach
-	 * here) in order to set the correct DMA API ops on @dev.
-	 */
-	group = iommu_group_alloc();
-	if (IS_ERR(group))
-		return PTR_ERR(group);
+	data = dev_iommu_priv_get(dev);
 
-	err = iommu_group_add_device(group, dev);
-	iommu_group_put(group);
-	if (err)
-		return err;
+	return &data->iommu;
+}
 
-	data = dev_iommu_priv_get(dev);
+static void mtk_iommu_probe_finalize(struct device *dev)
+{
+	struct dma_iommu_mapping *mtk_mapping;
+	struct mtk_iommu_data *data;
+	int err;
+
+	data        = dev_iommu_priv_get(dev);
 	mtk_mapping = data->dev->archdata.iommu;
-	err = arm_iommu_attach_device(dev, mtk_mapping);
-	if (err) {
-		iommu_group_remove_device(dev);
-		return err;
-	}
 
-	return iommu_device_link(&data->iommu, dev);
+	err = arm_iommu_attach_device(dev, mtk_mapping);
+	if (err)
+		dev_err(dev, "Can't create IOMMU mapping - DMA-OPS will not work\n");
 }
 
-static void mtk_iommu_remove_device(struct device *dev)
+static void mtk_iommu_release_device(struct device *dev)
 {
 	struct iommu_fwspec *fwspec = dev_iommu_fwspec_get(dev);
 	struct mtk_iommu_data *data;
@@ -479,9 +470,6 @@ static void mtk_iommu_remove_device(struct device *dev)
 		return;
 
 	data = dev_iommu_priv_get(dev);
-	iommu_device_unlink(&data->iommu, dev);
-
-	iommu_group_remove_device(dev);
 	iommu_fwspec_free(dev);
 }
 
@@ -534,8 +522,10 @@ static const struct iommu_ops mtk_iommu_ops = {
 	.map		= mtk_iommu_map,
 	.unmap		= mtk_iommu_unmap,
 	.iova_to_phys	= mtk_iommu_iova_to_phys,
-	.add_device	= mtk_iommu_add_device,
-	.remove_device	= mtk_iommu_remove_device,
+	.probe_device	= mtk_iommu_probe_device,
+	.probe_finalize = mtk_iommu_probe_finalize,
+	.release_device	= mtk_iommu_release_device,
+	.device_group	= generic_device_group,
 	.pgsize_bitmap	= ~0UL << MT2701_IOMMU_PAGE_SHIFT,
 };
 
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

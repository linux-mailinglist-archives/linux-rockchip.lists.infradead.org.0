Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D7991A14D3
	for <lists+linux-rockchip@lfdr.de>; Tue,  7 Apr 2020 20:40:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=+1tnDUFLZ2bHix0/qzQH90SsyVzvH6KcaNC4y+mDmRI=; b=G6WF40DvqIG9HzEEhoQE1bXdvh
	KDgPot7BeTiEy+3EUNwwyaAOTX5fckX8dq+kXZcJlZhiTdshXTAToMgiuxj0VgEso0JTVk1mpCfHF
	1n0kIOXb/IY1ebj0zl3VyEv6eNZrCh5CVct0KbYVBulIwAFktllAHfFBLiHWXImyPF7aa6wb2SdX9
	y4MA7FcWTrbDdr6fM/hXGIqQ4Xu1W9wpT1Y7ZeDxa8VGEzDsDo/S7qgqPxQXVXc6UQ5pSeGSHXwum
	XgdKd/O5r3XHif6UWb4Nsn9/9ecX111iZSp7tTOgCPUpzg6RNjf76D25jngLfe6LAmoQPlIrc0YyR
	bNiIIAXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLt8z-0003U8-NC; Tue, 07 Apr 2020 18:40:17 +0000
Received: from 8bytes.org ([2a01:238:4383:600:38bc:a715:4b6d:a889]
 helo=theia.8bytes.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLt6w-0006rp-Fp; Tue, 07 Apr 2020 18:38:15 +0000
Received: by theia.8bytes.org (Postfix, from userid 1000)
 id 45F6455F; Tue,  7 Apr 2020 20:37:52 +0200 (CEST)
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
Subject: [RFC PATCH 21/34] iommu/virtio: Convert to probe/release_device()
 call-backs
Date: Tue,  7 Apr 2020 20:37:29 +0200
Message-Id: <20200407183742.4344-22-joro@8bytes.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200407183742.4344-1-joro@8bytes.org>
References: <20200407183742.4344-1-joro@8bytes.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_113810_888106_60483566 
X-CRM114-Status: GOOD (  14.02  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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

Convert the VirtIO IOMMU driver to use the probe_device() and
release_device() call-backs of iommu_ops, so that the iommu core code
does the group and sysfs setup.

Signed-off-by: Joerg Roedel <jroedel@suse.de>
---
 drivers/iommu/virtio-iommu.c | 41 +++++++++---------------------------
 1 file changed, 10 insertions(+), 31 deletions(-)

diff --git a/drivers/iommu/virtio-iommu.c b/drivers/iommu/virtio-iommu.c
index d5cac4f46ca5..bda300c2a438 100644
--- a/drivers/iommu/virtio-iommu.c
+++ b/drivers/iommu/virtio-iommu.c
@@ -865,24 +865,23 @@ static struct viommu_dev *viommu_get_by_fwnode(struct fwnode_handle *fwnode)
 	return dev ? dev_to_virtio(dev)->priv : NULL;
 }
 
-static int viommu_add_device(struct device *dev)
+static struct iommu_device *viommu_probe_device(struct device *dev)
 {
 	int ret;
-	struct iommu_group *group;
 	struct viommu_endpoint *vdev;
 	struct viommu_dev *viommu = NULL;
 	struct iommu_fwspec *fwspec = dev_iommu_fwspec_get(dev);
 
 	if (!fwspec || fwspec->ops != &viommu_ops)
-		return -ENODEV;
+		return ERR_PTR(-ENODEV);
 
 	viommu = viommu_get_by_fwnode(fwspec->iommu_fwnode);
 	if (!viommu)
-		return -ENODEV;
+		return ERR_PTR(-ENODEV);
 
 	vdev = kzalloc(sizeof(*vdev), GFP_KERNEL);
 	if (!vdev)
-		return -ENOMEM;
+		return ERR_PTR(-ENOMEM);
 
 	vdev->dev = dev;
 	vdev->viommu = viommu;
@@ -896,45 +895,25 @@ static int viommu_add_device(struct device *dev)
 			goto err_free_dev;
 	}
 
-	ret = iommu_device_link(&viommu->iommu, dev);
-	if (ret)
-		goto err_free_dev;
+	return &viommu->iommu;
 
-	/*
-	 * Last step creates a default domain and attaches to it. Everything
-	 * must be ready.
-	 */
-	group = iommu_group_get_for_dev(dev);
-	if (IS_ERR(group)) {
-		ret = PTR_ERR(group);
-		goto err_unlink_dev;
-	}
-
-	iommu_group_put(group);
-
-	return PTR_ERR_OR_ZERO(group);
-
-err_unlink_dev:
-	iommu_device_unlink(&viommu->iommu, dev);
 err_free_dev:
 	generic_iommu_put_resv_regions(dev, &vdev->resv_regions);
 	kfree(vdev);
 
-	return ret;
+	return ERR_PTR(ret);
 }
 
-static void viommu_remove_device(struct device *dev)
+static void viommu_release_device(struct device *dev)
 {
-	struct viommu_endpoint *vdev;
 	struct iommu_fwspec *fwspec = dev_iommu_fwspec_get(dev);
+	struct viommu_endpoint *vdev;
 
 	if (!fwspec || fwspec->ops != &viommu_ops)
 		return;
 
 	vdev = dev_iommu_priv_get(dev);
 
-	iommu_group_remove_device(dev);
-	iommu_device_unlink(&vdev->viommu->iommu, dev);
 	generic_iommu_put_resv_regions(dev, &vdev->resv_regions);
 	kfree(vdev);
 }
@@ -960,8 +939,8 @@ static struct iommu_ops viommu_ops = {
 	.unmap			= viommu_unmap,
 	.iova_to_phys		= viommu_iova_to_phys,
 	.iotlb_sync		= viommu_iotlb_sync,
-	.add_device		= viommu_add_device,
-	.remove_device		= viommu_remove_device,
+	.probe_device		= viommu_probe_device,
+	.release_device		= viommu_release_device,
 	.device_group		= viommu_device_group,
 	.get_resv_regions	= viommu_get_resv_regions,
 	.put_resv_regions	= generic_iommu_put_resv_regions,
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

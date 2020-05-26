Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99D921A1501
	for <lists+linux-rockchip@lfdr.de>; Tue,  7 Apr 2020 20:40:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=WbfEgaSuinoDRl/6sBNFlxAmYXxRQQg3Bu7/l0FXVOM=; b=S9FHfN8WWWPu+Hxep02mwpEhvQ
	xoQTTnpaUsbJVofi+0bmKvgHgpNncZ4vE2pk0aTRuHFYsgh/HDFHunCrUvmbekVx6K6VLo2wKbnOd
	k3+B+XXCojSubalfMBrjSqEBT8/473gQZEK81VgANEmA99UnuACzvY/IRFCSdFKgFyWbSFQjWJ6cy
	/JiKk9ZI6Iky+xs+/kcQWtyMknelJeoJEOC5qUXar9mRaQ4aC18dXq9n4BPR+ciQRpIckqqSBiel8
	Uie3iT7skM1nLzzH/evTbpaIOHkwxjPHS6lNDSALP+wMxnaKfaqNneDi8J07hAQTq6GB+00gGPaRn
	DumQRLFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLt9L-0003vd-AA; Tue, 07 Apr 2020 18:40:39 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLt7H-0007Db-4h; Tue, 07 Apr 2020 18:38:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=References:In-Reply-To:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=R14dpopxU1+71l9KPXA8mEnokBzhrXW/HtbqMpv1HZk=; b=WtorbJH/DlZEOwUxKvYT35nx8Y
 oKDZpzLAFhp7YuCEJyRyp9FgiGEYjCMVShJc4BgcnUSBEGDidRDcvBgw5RAN1PV/KUkesz3EWehIs
 iWQ7tacsjoQD0RZ7I0vkaiEWYg3e82+AcfHx1OHaQ29g9myrotlmxvFzgloiDLR1vulpLOQrpuf60
 5DlK81u+Db4zPdSJ2wOjVmnlZZl1fecUYU9spjkVCXGiNVhkYB324X8TG90M32pELA/o3/iXkngUM
 2dPXIBO9oyE6FTxCsodlQLj+PRXSRSOfrBDAmv3cPFGhGh9g7jB02Moa6bfT4vTDYbo7vyImSJSuN
 ICt5eQIQ==;
Received: from 8bytes.org ([2a01:238:4383:600:38bc:a715:4b6d:a889]
 helo=theia.8bytes.org)
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLt78-0004pk-21; Tue, 07 Apr 2020 18:38:29 +0000
Received: by theia.8bytes.org (Postfix, from userid 1000)
 id A693A65F; Tue,  7 Apr 2020 20:37:53 +0200 (CEST)
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
Subject: [RFC PATCH 28/34] iommu/renesas: Convert to probe/release_device()
 call-backs
Date: Tue,  7 Apr 2020 20:37:36 +0200
Message-Id: <20200407183742.4344-29-joro@8bytes.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200407183742.4344-1-joro@8bytes.org>
References: <20200407183742.4344-1-joro@8bytes.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_193823_131381_09B44ECE 
X-CRM114-Status: GOOD (  19.01  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: SpamAssassin version 3.4.4 on casper.infradead.org summary:
 Content analysis details:   (-1.9 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
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

Convert the Renesas IOMMU driver to use the probe_device() and
release_device() call-backs of iommu_ops, so that the iommu core code
does the group and sysfs setup.

Signed-off-by: Joerg Roedel <jroedel@suse.de>
---
 drivers/iommu/ipmmu-vmsa.c | 60 +++++++++++++-------------------------
 1 file changed, 20 insertions(+), 40 deletions(-)

diff --git a/drivers/iommu/ipmmu-vmsa.c b/drivers/iommu/ipmmu-vmsa.c
index 310cf09feea3..fb7e702dee23 100644
--- a/drivers/iommu/ipmmu-vmsa.c
+++ b/drivers/iommu/ipmmu-vmsa.c
@@ -805,24 +805,8 @@ static int ipmmu_of_xlate(struct device *dev,
 static int ipmmu_init_arm_mapping(struct device *dev)
 {
 	struct ipmmu_vmsa_device *mmu = to_ipmmu(dev);
-	struct iommu_group *group;
 	int ret;
 
-	/* Create a device group and add the device to it. */
-	group = iommu_group_alloc();
-	if (IS_ERR(group)) {
-		dev_err(dev, "Failed to allocate IOMMU group\n");
-		return PTR_ERR(group);
-	}
-
-	ret = iommu_group_add_device(group, dev);
-	iommu_group_put(group);
-
-	if (ret < 0) {
-		dev_err(dev, "Failed to add device to IPMMU group\n");
-		return ret;
-	}
-
 	/*
 	 * Create the ARM mapping, used by the ARM DMA mapping core to allocate
 	 * VAs. This will allocate a corresponding IOMMU domain.
@@ -856,48 +840,39 @@ static int ipmmu_init_arm_mapping(struct device *dev)
 	return 0;
 
 error:
-	iommu_group_remove_device(dev);
 	if (mmu->mapping)
 		arm_iommu_release_mapping(mmu->mapping);
 
 	return ret;
 }
 
-static int ipmmu_add_device(struct device *dev)
+static struct iommu_device *ipmmu_probe_device(struct device *dev)
 {
 	struct ipmmu_vmsa_device *mmu = to_ipmmu(dev);
-	struct iommu_group *group;
-	int ret;
 
 	/*
 	 * Only let through devices that have been verified in xlate()
 	 */
 	if (!mmu)
-		return -ENODEV;
+		return ERR_PTR(-ENODEV);
 
-	if (IS_ENABLED(CONFIG_ARM) && !IS_ENABLED(CONFIG_IOMMU_DMA)) {
-		ret = ipmmu_init_arm_mapping(dev);
-		if (ret)
-			return ret;
-	} else {
-		group = iommu_group_get_for_dev(dev);
-		if (IS_ERR(group))
-			return PTR_ERR(group);
+	return &mmu->iommu;
+}
 
-		iommu_group_put(group);
-	}
+static void ipmmu_probe_finalize(struct device *dev)
+{
+	int ret = 0;
 
-	iommu_device_link(&mmu->iommu, dev);
-	return 0;
+	if (IS_ENABLED(CONFIG_ARM) && !IS_ENABLED(CONFIG_IOMMU_DMA))
+		ret = ipmmu_init_arm_mapping(dev);
+
+	if (ret)
+		dev_err(dev, "Can't create IOMMU mapping - DMA-OPS will not work\n");
 }
 
-static void ipmmu_remove_device(struct device *dev)
+static void ipmmu_release_device(struct device *dev)
 {
-	struct ipmmu_vmsa_device *mmu = to_ipmmu(dev);
-
-	iommu_device_unlink(&mmu->iommu, dev);
 	arm_iommu_detach_device(dev);
-	iommu_group_remove_device(dev);
 }
 
 static struct iommu_group *ipmmu_find_group(struct device *dev)
@@ -925,9 +900,14 @@ static const struct iommu_ops ipmmu_ops = {
 	.flush_iotlb_all = ipmmu_flush_iotlb_all,
 	.iotlb_sync = ipmmu_iotlb_sync,
 	.iova_to_phys = ipmmu_iova_to_phys,
-	.add_device = ipmmu_add_device,
-	.remove_device = ipmmu_remove_device,
+	.probe_device = ipmmu_probe_device,
+	.release_device = ipmmu_release_device,
+	.probe_finalize = ipmmu_probe_finalize,
+#if defined(CONFIG_ARM) && !defined(CONFIG_IOMMU_DMA)
+	.device_group = generic_device_group,
+#else
 	.device_group = ipmmu_find_group,
+#endif
 	.pgsize_bitmap = SZ_1G | SZ_2M | SZ_4K,
 	.of_xlate = ipmmu_of_xlate,
 };
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

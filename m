Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D7961A7D5F
	for <lists+linux-rockchip@lfdr.de>; Tue, 14 Apr 2020 15:24:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=o+aN2Ajv85+FpcIsbZ4oYwYTP5YnnCX4+FU5xPEF/uw=; b=WxMCDRyUL1QT9lYSHm3nZFdHV1
	ujpixtAiQJW5/+AsJY5M8KhnHbfhs8b4q+81LxzyLx/GtvYJCOxdOKLH1R929G3S6tkb/9JUWDM6o
	DdibZlR83G7qbpwbyRP9RgfK6fy0zRfmq16mEswwNCkOIaJuP7GIDrsz607a9TldCwDZ55CHFrTqU
	RDd1FnrIMxhaOEvYaNQyEddYMT5zxmzCBDChaiAzx3ZkNPRJKcscq285rZ6zrraO58Ld9tAIsVx+Y
	cnsdE4bmIEcxeOZ1dB2ZM8fEzO/uOjGy7FfAhpwFLbdn/oocWBEBBnIuhlpTTJxMJuabs/l1BzzKa
	AzyIOZ4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOLYa-0005lR-IE; Tue, 14 Apr 2020 13:24:52 +0000
Received: from 8bytes.org ([81.169.241.247] helo=theia.8bytes.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOLQD-0002iW-Ks; Tue, 14 Apr 2020 13:16:19 +0000
Received: by theia.8bytes.org (Postfix, from userid 1000)
 id 1211B68C; Tue, 14 Apr 2020 15:15:54 +0200 (CEST)
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
Subject: [PATCH v2 19/33] iommu/s390: Convert to probe/release_device()
 call-backs
Date: Tue, 14 Apr 2020 15:15:28 +0200
Message-Id: <20200414131542.25608-20-joro@8bytes.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200414131542.25608-1-joro@8bytes.org>
References: <20200414131542.25608-1-joro@8bytes.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_061613_932370_F55A1B99 
X-CRM114-Status: GOOD (  13.13  )
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

Convert the S390 IOMMU driver to use the probe_device() and
release_device() call-backs of iommu_ops, so that the iommu core code
does the group and sysfs setup.

Signed-off-by: Joerg Roedel <jroedel@suse.de>
---
 drivers/iommu/s390-iommu.c | 22 ++++++----------------
 1 file changed, 6 insertions(+), 16 deletions(-)

diff --git a/drivers/iommu/s390-iommu.c b/drivers/iommu/s390-iommu.c
index 1137f3ddcb85..610f0828f22d 100644
--- a/drivers/iommu/s390-iommu.c
+++ b/drivers/iommu/s390-iommu.c
@@ -166,21 +166,14 @@ static void s390_iommu_detach_device(struct iommu_domain *domain,
 	}
 }
 
-static int s390_iommu_add_device(struct device *dev)
+static struct iommu_device *s390_iommu_probe_device(struct device *dev)
 {
-	struct iommu_group *group = iommu_group_get_for_dev(dev);
 	struct zpci_dev *zdev = to_pci_dev(dev)->sysdata;
 
-	if (IS_ERR(group))
-		return PTR_ERR(group);
-
-	iommu_group_put(group);
-	iommu_device_link(&zdev->iommu_dev, dev);
-
-	return 0;
+	return &zdev->iommu_dev;
 }
 
-static void s390_iommu_remove_device(struct device *dev)
+static void s390_iommu_release_device(struct device *dev)
 {
 	struct zpci_dev *zdev = to_pci_dev(dev)->sysdata;
 	struct iommu_domain *domain;
@@ -191,7 +184,7 @@ static void s390_iommu_remove_device(struct device *dev)
 	 * to vfio-pci and completing the VFIO_SET_IOMMU ioctl (which triggers
 	 * the attach_dev), removing the device via
 	 * "echo 1 > /sys/bus/pci/devices/.../remove" won't trigger detach_dev,
-	 * only remove_device will be called via the BUS_NOTIFY_REMOVED_DEVICE
+	 * only release_device will be called via the BUS_NOTIFY_REMOVED_DEVICE
 	 * notifier.
 	 *
 	 * So let's call detach_dev from here if it hasn't been called before.
@@ -201,9 +194,6 @@ static void s390_iommu_remove_device(struct device *dev)
 		if (domain)
 			s390_iommu_detach_device(domain, dev);
 	}
-
-	iommu_device_unlink(&zdev->iommu_dev, dev);
-	iommu_group_remove_device(dev);
 }
 
 static int s390_iommu_update_trans(struct s390_domain *s390_domain,
@@ -373,8 +363,8 @@ static const struct iommu_ops s390_iommu_ops = {
 	.map = s390_iommu_map,
 	.unmap = s390_iommu_unmap,
 	.iova_to_phys = s390_iommu_iova_to_phys,
-	.add_device = s390_iommu_add_device,
-	.remove_device = s390_iommu_remove_device,
+	.probe_device = s390_iommu_probe_device,
+	.release_device = s390_iommu_release_device,
 	.device_group = generic_device_group,
 	.pgsize_bitmap = S390_IOMMU_PGSIZES,
 };
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

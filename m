Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95B201BDEA8
	for <lists+linux-rockchip@lfdr.de>; Wed, 29 Apr 2020 15:39:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=GK63EtSeSSfEQ1hZCQFg6CKvBN7WlTIwyzc4h0e+qpk=; b=cOzZNd7v/VeLt2tliLJKOmFoHq
	8qOfW1TiAcov2ZyEKojvqEHQS8Io4gMIJ0Hy62SGgmetx3DJic1ywnfv/x1vCgbf4Kmkdoxkzbtzk
	wHEGfe61v0XbKjC8FznPZ6eJtBaiFAl3jLStzSkF+hfVGNEvvjgnibZJ6Dxp2DhuyivsdWiFLtNva
	6QQOV2L6VoB2Dl9Xrrc4RiQV/u8vOo0ixqHr9XHxV0znytgO4lfu4x2mCXI5vfbKWAueFhEzO00Sx
	wT1Rnggnbu4GqhoClPNfbFBx7/9ICND5ABi2wcVCnk0R8prgkLG9Wuh2e4Uj+3nOvbqWJry+vqCU5
	BhlB7HrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTmw4-0000M7-5D; Wed, 29 Apr 2020 13:39:36 +0000
Received: from merlin.infradead.org ([205.233.59.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTmuU-0006V3-Or; Wed, 29 Apr 2020 13:37:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=References:In-Reply-To:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=tBM90ug8dReFUk/0mF17YDyp6x5pBNMkMLHmgIm7lsg=; b=M5lQ2Bu9P6/lx1K+fbh/s+VgY0
 pfth+v4Uy2MoT08PAWY3EtkSy/gW9D53Yc+XqTqIWebqcBGOjkFFI/zdL+/S/n0gVEBgk4J/BEhYu
 mje0f4L177F9qg8W36Y3qHfcEveivYPs8YriBkh2WYp6Z2ITOoyEVhSPGqeLTWeRivBZnm4UvQV2T
 ba+LveOgrwcaHWIZ4E+3ti7uoIOFX9EX0xniCUbAN08lUWy+mTk4alUb1/ihU7gCt/QhqXgltIWGi
 6sLX5uM8n2m4ZslM9f/GBQmw82jP1fjWxBgt6Q7nqMTiu5iWlUxiOCKTwrD5a0uL26Kvljz1CEp0h
 sXmD0Mxw==;
Received: from 8bytes.org ([2a01:238:4383:600:38bc:a715:4b6d:a889]
 helo=theia.8bytes.org)
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTmuQ-0007D1-MX; Wed, 29 Apr 2020 13:37:57 +0000
Received: by theia.8bytes.org (Postfix, from userid 1000)
 id 16EEAF04; Wed, 29 Apr 2020 15:37:40 +0200 (CEST)
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
Subject: [PATCH v3 25/34] iommu/rockchip: Convert to probe/release_device()
 call-backs
Date: Wed, 29 Apr 2020 15:37:03 +0200
Message-Id: <20200429133712.31431-26-joro@8bytes.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200429133712.31431-1-joro@8bytes.org>
References: <20200429133712.31431-1-joro@8bytes.org>
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on merlin.infradead.org summary:
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

Convert the Rockchip IOMMU driver to use the probe_device() and
release_device() call-backs of iommu_ops, so that the iommu core code
does the group and sysfs setup.

Signed-off-by: Joerg Roedel <jroedel@suse.de>
---
 drivers/iommu/rockchip-iommu.c | 26 +++++++-------------------
 1 file changed, 7 insertions(+), 19 deletions(-)

diff --git a/drivers/iommu/rockchip-iommu.c b/drivers/iommu/rockchip-iommu.c
index b33cdd5aad81..d25c2486ca07 100644
--- a/drivers/iommu/rockchip-iommu.c
+++ b/drivers/iommu/rockchip-iommu.c
@@ -1054,40 +1054,28 @@ static void rk_iommu_domain_free(struct iommu_domain *domain)
 	kfree(rk_domain);
 }
 
-static int rk_iommu_add_device(struct device *dev)
+static struct iommu_device *rk_iommu_probe_device(struct device *dev)
 {
-	struct iommu_group *group;
-	struct rk_iommu *iommu;
 	struct rk_iommudata *data;
+	struct rk_iommu *iommu;
 
 	data = dev->archdata.iommu;
 	if (!data)
-		return -ENODEV;
+		return ERR_PTR(-ENODEV);
 
 	iommu = rk_iommu_from_dev(dev);
 
-	group = iommu_group_get_for_dev(dev);
-	if (IS_ERR(group))
-		return PTR_ERR(group);
-	iommu_group_put(group);
-
-	iommu_device_link(&iommu->iommu, dev);
 	data->link = device_link_add(dev, iommu->dev,
 				     DL_FLAG_STATELESS | DL_FLAG_PM_RUNTIME);
 
-	return 0;
+	return &iommu->iommu;
 }
 
-static void rk_iommu_remove_device(struct device *dev)
+static void rk_iommu_release_device(struct device *dev)
 {
-	struct rk_iommu *iommu;
 	struct rk_iommudata *data = dev->archdata.iommu;
 
-	iommu = rk_iommu_from_dev(dev);
-
 	device_link_del(data->link);
-	iommu_device_unlink(&iommu->iommu, dev);
-	iommu_group_remove_device(dev);
 }
 
 static struct iommu_group *rk_iommu_device_group(struct device *dev)
@@ -1126,8 +1114,8 @@ static const struct iommu_ops rk_iommu_ops = {
 	.detach_dev = rk_iommu_detach_device,
 	.map = rk_iommu_map,
 	.unmap = rk_iommu_unmap,
-	.add_device = rk_iommu_add_device,
-	.remove_device = rk_iommu_remove_device,
+	.probe_device = rk_iommu_probe_device,
+	.release_device = rk_iommu_release_device,
 	.iova_to_phys = rk_iommu_iova_to_phys,
 	.device_group = rk_iommu_device_group,
 	.pgsize_bitmap = RK_IOMMU_PGSIZE_BITMAP,
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C4871A14C3
	for <lists+linux-rockchip@lfdr.de>; Tue,  7 Apr 2020 20:40:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=jlWTkIZPVG/bvszHDZvjmnk0wV5ltoqTxSSWtwML9Hs=; b=ZYaKd9+qK5isO2Z26oAIzzGbKK
	+Z1k10//gKEqaCSq+THjE0Zp+R9Y/T/8Obc44qdUvypomLcGGMCAa2OPZwBvsXMzPXSyzacJxUxsK
	fHx7h5eWKU/v7aKjpGPhl3LHtDQUXaOTM9n5Ppy+P1JuiP4K2+ERV/wQKcrsijpJl9rK+Gby1X4eD
	Z2RTVRPHl9lQY+T25JwLHGs4l1ZbvLg11uKIhEOoybfeJlBroyti6FIhvbePuNJLqwKmR+ptvKVPF
	2Vq6QBC3497eoHBFsSMC6q0lIzrVmpVEG8KU8jSVzjpRKY8FL/MS1zer7S/wMriP7HhRkWQ8NBM8O
	O7gIs7UA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLt8i-0000jP-Jf; Tue, 07 Apr 2020 18:40:00 +0000
Received: from 8bytes.org ([81.169.241.247] helo=theia.8bytes.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLt6w-0006rB-0E; Tue, 07 Apr 2020 18:38:13 +0000
Received: by theia.8bytes.org (Postfix, from userid 1000)
 id E4DB248C; Tue,  7 Apr 2020 20:37:51 +0200 (CEST)
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
Subject: [RFC PATCH 19/34] iommu/pamu: Convert to probe/release_device()
 call-backs
Date: Tue,  7 Apr 2020 20:37:27 +0200
Message-Id: <20200407183742.4344-20-joro@8bytes.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200407183742.4344-1-joro@8bytes.org>
References: <20200407183742.4344-1-joro@8bytes.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_113810_227922_1ACAE628 
X-CRM114-Status: GOOD (  12.60  )
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

Convert the PAMU IOMMU driver to use the probe_device() and
release_device() call-backs of iommu_ops, so that the iommu core code
does the group and sysfs setup.

Signed-off-by: Joerg Roedel <jroedel@suse.de>
---
 drivers/iommu/fsl_pamu_domain.c | 22 +++++-----------------
 1 file changed, 5 insertions(+), 17 deletions(-)

diff --git a/drivers/iommu/fsl_pamu_domain.c b/drivers/iommu/fsl_pamu_domain.c
index 06828e2698d5..928d37771ece 100644
--- a/drivers/iommu/fsl_pamu_domain.c
+++ b/drivers/iommu/fsl_pamu_domain.c
@@ -1016,25 +1016,13 @@ static struct iommu_group *fsl_pamu_device_group(struct device *dev)
 	return group;
 }
 
-static int fsl_pamu_add_device(struct device *dev)
+static struct iommu_device *fsl_pamu_probe_device(struct device *dev)
 {
-	struct iommu_group *group;
-
-	group = iommu_group_get_for_dev(dev);
-	if (IS_ERR(group))
-		return PTR_ERR(group);
-
-	iommu_group_put(group);
-
-	iommu_device_link(&pamu_iommu, dev);
-
-	return 0;
+	return &pamu_iommu;
 }
 
-static void fsl_pamu_remove_device(struct device *dev)
+static void fsl_pamu_release_device(struct device *dev)
 {
-	iommu_device_unlink(&pamu_iommu, dev);
-	iommu_group_remove_device(dev);
 }
 
 static const struct iommu_ops fsl_pamu_ops = {
@@ -1048,8 +1036,8 @@ static const struct iommu_ops fsl_pamu_ops = {
 	.iova_to_phys	= fsl_pamu_iova_to_phys,
 	.domain_set_attr = fsl_pamu_set_domain_attr,
 	.domain_get_attr = fsl_pamu_get_domain_attr,
-	.add_device	= fsl_pamu_add_device,
-	.remove_device	= fsl_pamu_remove_device,
+	.probe_device	= fsl_pamu_probe_device,
+	.release_device	= fsl_pamu_release_device,
 	.device_group   = fsl_pamu_device_group,
 };
 
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AD18BE4E0
	for <lists+linux-rockchip@lfdr.de>; Wed, 25 Sep 2019 20:44:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2e6MFOLIbLAsD1YFijjWHFfmkS/RFkxZxHYKNRBgaDc=; b=plG2TSoAxhKTgG
	CI33WHGO1v+xW9X29obAJHBvvRqOMtXNenPXc8Ol1QNRAvj3IvLzi7GIn1cWy5MlveFJ0vYMux8mI
	rYC7c6XwmqokZZNNMouCAbntjKLtrgshKfbkyhzocyU6qpDADQyf0YV2bIrqDMxeTKlXEq6gWi+UP
	pnyWIzaWQo01nvG+8XO+LaBscnG/X68TZAJHLm/fJ7fimyhYf+TTzNQ8lOmW9qaIm8h3dsrh88HPQ
	tkWWi0qCdlvw/1Px3jaEuscyqZtunaSCQnP/oPAaQjGidtCDJ1iHcyO7wDW/gLoahx/62RAQOtkm6
	1tvKStd5/A7xRDRDC04g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDCGt-0008Ux-L9; Wed, 25 Sep 2019 18:44:16 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDCGe-0008Ly-Ik; Wed, 25 Sep 2019 18:44:02 +0000
Received: from muedsl-82-207-238-254.citykom.de ([82.207.238.254]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iDCGZ-0005Fa-At; Wed, 25 Sep 2019 20:43:55 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: joro@8bytes.org
Subject: [PATCH] iommu/rockchip: don't use platform_get_irq to implicitly
 count irqs
Date: Wed, 25 Sep 2019 20:43:46 +0200
Message-Id: <20190925184346.14121-1-heiko@sntech.de>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_114400_769302_EAC09AA8 
X-CRM114-Status: GOOD (  12.97  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-rockchip@lists.infradead.org, iommu@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Heiko Stuebner <heiko@sntech.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Till now the Rockchip iommu driver walked through the irq list via
platform_get_irq() until it encountered an ENXIO error. With the
recent change to add a central error message, this always results
in such an error for each iommu on probe and shutdown.

To not confuse people, switch to platform_count_irqs() to get the
actual number of interrupts before walking through them.

Fixes: 7723f4c5ecdb ("driver core: platform: Add an error message to platform_get_irq*()")
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 drivers/iommu/rockchip-iommu.c | 19 ++++++++++++++-----
 1 file changed, 14 insertions(+), 5 deletions(-)

diff --git a/drivers/iommu/rockchip-iommu.c b/drivers/iommu/rockchip-iommu.c
index 26290f310f90..4dcbf68dfda4 100644
--- a/drivers/iommu/rockchip-iommu.c
+++ b/drivers/iommu/rockchip-iommu.c
@@ -100,6 +100,7 @@ struct rk_iommu {
 	struct device *dev;
 	void __iomem **bases;
 	int num_mmu;
+	int num_irq;
 	struct clk_bulk_data *clocks;
 	int num_clocks;
 	bool reset_disabled;
@@ -1136,7 +1137,7 @@ static int rk_iommu_probe(struct platform_device *pdev)
 	struct rk_iommu *iommu;
 	struct resource *res;
 	int num_res = pdev->num_resources;
-	int err, i, irq;
+	int err, i;
 
 	iommu = devm_kzalloc(dev, sizeof(*iommu), GFP_KERNEL);
 	if (!iommu)
@@ -1163,6 +1164,10 @@ static int rk_iommu_probe(struct platform_device *pdev)
 	if (iommu->num_mmu == 0)
 		return PTR_ERR(iommu->bases[0]);
 
+	iommu->num_irq = platform_irq_count(pdev);
+	if (iommu->num_irq < 0)
+		return iommu->num_irq;
+
 	iommu->reset_disabled = device_property_read_bool(dev,
 					"rockchip,disable-mmu-reset");
 
@@ -1219,8 +1224,9 @@ static int rk_iommu_probe(struct platform_device *pdev)
 
 	pm_runtime_enable(dev);
 
-	i = 0;
-	while ((irq = platform_get_irq(pdev, i++)) != -ENXIO) {
+	for (i = 0; i < iommu->num_irq; i++) {
+		int irq = platform_get_irq(pdev, i);
+
 		if (irq < 0)
 			return irq;
 
@@ -1245,10 +1251,13 @@ static int rk_iommu_probe(struct platform_device *pdev)
 static void rk_iommu_shutdown(struct platform_device *pdev)
 {
 	struct rk_iommu *iommu = platform_get_drvdata(pdev);
-	int i = 0, irq;
+	int i;
+
+	for (i = 0; i < iommu->num_irq; i++) {
+		int irq = platform_get_irq(pdev, i);
 
-	while ((irq = platform_get_irq(pdev, i++)) != -ENXIO)
 		devm_free_irq(iommu->dev, irq, iommu);
+	}
 
 	pm_runtime_force_suspend(&pdev->dev);
 }
-- 
2.23.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37F6FF7D4E
	for <lists+linux-rockchip@lfdr.de>; Mon, 11 Nov 2019 19:55:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=G+OLp2VQNrgztCzwb280TVS99U02HeCWHb4A2x4bBK8=; b=eMEY0yCBkr7+Wl
	+R+SatWUQ1+Goavde/15SZq1929vXaxjjV90of6L/SUZh/0Q/akO92GShRn/XC766XZPfpccFushz
	hQsg/pVafg0Pn+Srt+DSCwx1gVk9v+4PcXSzn5tJ65XJI9+5EIX7QFKTNCH6XjU4FRbf3Cvpo+2lO
	zBhJZ1PjCgTE3BYbxEHdcUtENJ0DoS5UHSSMUumIZ/RaGx422TCLrqkbofL6z4UPrUb6fevASdoHw
	pte/ik7KzbnF24sFJCN1+aC/jCcFBwAOSxyY2TG3f4JNsnXH/F9Bv73/QXo0Zc4bze82ujbc5cCr7
	WJIOs+esNwzEBQ0Ns7Ww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUEqj-0004D1-FS; Mon, 11 Nov 2019 18:55:41 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUEqW-000433-7V; Mon, 11 Nov 2019 18:55:30 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 899DB1FB;
 Mon, 11 Nov 2019 10:55:27 -0800 (PST)
Received: from e121345-lin.cambridge.arm.com (e121345-lin.cambridge.arm.com
 [10.1.196.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 7C5DD3F52E;
 Mon, 11 Nov 2019 10:55:26 -0800 (PST)
From: Robin Murphy <robin.murphy@arm.com>
To: joro@8bytes.org
Subject: [PATCH] iommu/rockchip: Don't provoke WARN for harmless IRQs
Date: Mon, 11 Nov 2019 18:55:18 +0000
Message-Id: <82cba203551939399d219e4cb6c602315fd0c410.1573498518.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_105528_312488_4EB18A31 
X-CRM114-Status: GOOD (  13.95  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: heiko@sntech.de, maz@kernel.org, Vasily Khoruzhick <anarsoul@gmail.com>,
 linux-rockchip@lists.infradead.org, iommu@lists.linux-foundation.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Although we don't generally expect IRQs to fire for a suspended IOMMU,
there are certain situations (particularly with debug options) where
we might legitimately end up with the pm_runtime_get_if_in_use() call
from rk_iommu_irq() returning 0. Since this doesn't represent an actual
error, follow the other parts of the driver and save the WARN_ON()
condition for a genuine negative value. Even if we do have spurious
IRQs due to a wedged VOP asserting the shared line, it's not this
driver's job to try to second-guess the IRQ core to warn about that.

Reported-by: Vasily Khoruzhick <anarsoul@gmail.com>
Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 drivers/iommu/rockchip-iommu.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/iommu/rockchip-iommu.c b/drivers/iommu/rockchip-iommu.c
index 4dcbf68dfda4..bd7e9b1e40ac 100644
--- a/drivers/iommu/rockchip-iommu.c
+++ b/drivers/iommu/rockchip-iommu.c
@@ -527,7 +527,7 @@ static irqreturn_t rk_iommu_irq(int irq, void *dev_id)
 	int i, err;
 
 	err = pm_runtime_get_if_in_use(iommu->dev);
-	if (WARN_ON_ONCE(err <= 0))
+	if (!err || WARN_ON_ONCE(err < 0))
 		return ret;
 
 	if (WARN_ON(clk_bulk_enable(iommu->num_clocks, iommu->clocks)))
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

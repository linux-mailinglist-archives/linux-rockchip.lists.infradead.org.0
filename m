Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C887A82A2
	for <lists+linux-rockchip@lfdr.de>; Wed,  4 Sep 2019 14:39:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F2uUqEo59mYxjEaZLnbHzZZ3LDz4doOpZgS9fP77QuE=; b=obnhxMYQUrchzc
	ISmEQ7yL9+Bvicku8W9Utq2xoJ9kNH3KdjNhCir5lRKd7s611ikzMvDcG1uruAI/70ULGITD6SPtF
	mM1GF/4fJNxegD7LgAoG2VDYzMcUPfI59uZPYLgtuAHTbFb/P/Cr4p4ASDAlyZhR1FP/Ay631Y/3+
	v5n0w17tyY4xk6lFT9mbYim8EzSXhPuHeDeot9sjtJU+WSXPTcgDjo48TC9P3/QeNxf8ne4NmW9qR
	Cd+wdWi4I7+VYyf4FPJONsdhbtxfm7UWspr6FeBhL54sFMJHTsDVrT1J5LZh4cgckHz74V+b4q21D
	IzC53RH9lAWM8883LVmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5UZU-0007Kc-W1; Wed, 04 Sep 2019 12:39:37 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5UV1-0001v0-90; Wed, 04 Sep 2019 12:35:01 +0000
Received: from DGGEMS414-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 96905D15FA8A6C9EB11B;
 Wed,  4 Sep 2019 20:34:57 +0800 (CST)
Received: from localhost (10.133.213.239) by DGGEMS414-HUB.china.huawei.com
 (10.3.19.214) with Microsoft SMTP Server id 14.3.439.0; Wed, 4 Sep 2019
 20:34:51 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <miquel.raynal@bootlin.com>, <rui.zhang@intel.com>, <edubezval@gmail.com>, 
 <daniel.lezcano@linaro.org>, <amit.kucheria@verdurent.com>,
 <eric@anholt.net>, <wahrenst@gmx.net>, <f.fainelli@gmail.com>,
 <rjui@broadcom.com>, <sbranden@broadcom.com>, <mmayer@broadcom.com>,
 <computersforpeace@gmail.com>, <gregory.0xf0@gmail.com>,
 <matthias.bgg@gmail.com>, <agross@kernel.org>, <heiko@sntech.de>,
 <mcoquelin.stm32@gmail.com>, <alexandre.torgue@st.com>,
 <marc.w.gonzalez@free.fr>, <mans@mansr.com>, <talel@amazon.com>,
 <jun.nie@linaro.org>, <shawnguo@kernel.org>, <phil@raspberrypi.org>,
 <yuehaibing@huawei.com>, <gregkh@linuxfoundation.org>,
 <david.hernandezsanchez@st.com>, <horms+renesas@verge.net.au>,
 <wsa+renesas@sang-engineering.com>
Subject: [PATCH -next 13/15] thermal: thermal_mmio: use
 devm_platform_ioremap_resource() to simplify code
Date: Wed, 4 Sep 2019 20:29:37 +0800
Message-ID: <20190904122939.23780-14-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
In-Reply-To: <20190904122939.23780-1-yuehaibing@huawei.com>
References: <20190904122939.23780-1-yuehaibing@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.133.213.239]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_053459_603091_BB406672 
X-CRM114-Status: UNSURE (   8.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
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
Cc: linux-pm@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-mediatek@lists.infradead.org, linux-rpi-kernel@lists.infradead.org,
 bcm-kernel-feedback-list@broadcom.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Use devm_platform_ioremap_resource() to simplify the code a bit.
This is detected by coccinelle.

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
 drivers/thermal/thermal_mmio.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/thermal/thermal_mmio.c b/drivers/thermal/thermal_mmio.c
index 40524fa..1663152 100644
--- a/drivers/thermal/thermal_mmio.c
+++ b/drivers/thermal/thermal_mmio.c
@@ -40,7 +40,6 @@ static struct thermal_zone_of_device_ops thermal_mmio_ops = {
 
 static int thermal_mmio_probe(struct platform_device *pdev)
 {
-	struct resource *resource;
 	struct thermal_mmio *sensor;
 	int (*sensor_init_func)(struct platform_device *pdev,
 				struct thermal_mmio *sensor);
@@ -52,8 +51,7 @@ static int thermal_mmio_probe(struct platform_device *pdev)
 	if (!sensor)
 		return -ENOMEM;
 
-	resource = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	sensor->mmio_base = devm_ioremap_resource(&pdev->dev, resource);
+	sensor->mmio_base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(sensor->mmio_base)) {
 		dev_err(&pdev->dev, "failed to ioremap memory (%ld)\n",
 			PTR_ERR(sensor->mmio_base));
-- 
2.7.4



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7FCCA8298
	for <lists+linux-rockchip@lfdr.de>; Wed,  4 Sep 2019 14:38:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d9A6hrudXeoyvkJsL5VPoWi/dJYnzA69eSrU7NtL8b0=; b=BfXIDPrND53CCW
	uYq2PPJ33ETUQNPgYAXM958oqr5d9dChFmQMieObZKxDLco1lns16Td/6zOGCilvt1iPKjyTFfy8L
	8+YpXpzHC3INQZgQd9KtXHvX7WehYbDc6qUFm5iHVzqmNuiPRIauNsPpcmj2obPO1VJhlhhe4aN7h
	sSHN1zmRHM/gPlfayjA+aLyuRzmuYN2chy/H2ED9yf2B6366MHbKTRwd49UXEOAoGDM8YhIMryydR
	bHPI7BdUMnGL+m2FWEw+5/gVcirR+VNf+Ncu6VZTieD88He9F3CpsVkTpNV07cRIh4joOZfZVMs+I
	+3xiHVhQ5czQZYu9anlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5UYM-0006Hq-LR; Wed, 04 Sep 2019 12:38:26 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5UUr-0001lK-OS; Wed, 04 Sep 2019 12:34:53 +0000
Received: from DGGEMS414-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 80A6C828F4A9CBFC9278;
 Wed,  4 Sep 2019 20:34:47 +0800 (CST)
Received: from localhost (10.133.213.239) by DGGEMS414-HUB.china.huawei.com
 (10.3.19.214) with Microsoft SMTP Server id 14.3.439.0; Wed, 4 Sep 2019
 20:34:40 +0800
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
Subject: [PATCH -next 09/15] thermal: rockchip: use
 devm_platform_ioremap_resource() to simplify code
Date: Wed, 4 Sep 2019 20:29:33 +0800
Message-ID: <20190904122939.23780-10-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
In-Reply-To: <20190904122939.23780-1-yuehaibing@huawei.com>
References: <20190904122939.23780-1-yuehaibing@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.133.213.239]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_053450_121785_15B3D32A 
X-CRM114-Status: UNSURE (   8.48  )
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
 drivers/thermal/rockchip_thermal.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/thermal/rockchip_thermal.c b/drivers/thermal/rockchip_thermal.c
index 343c2f5..044e6eb 100644
--- a/drivers/thermal/rockchip_thermal.c
+++ b/drivers/thermal/rockchip_thermal.c
@@ -1219,7 +1219,6 @@ static int rockchip_thermal_probe(struct platform_device *pdev)
 	struct device_node *np = pdev->dev.of_node;
 	struct rockchip_thermal_data *thermal;
 	const struct of_device_id *match;
-	struct resource *res;
 	int irq;
 	int i;
 	int error;
@@ -1245,8 +1244,7 @@ static int rockchip_thermal_probe(struct platform_device *pdev)
 	if (!thermal->chip)
 		return -EINVAL;
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	thermal->regs = devm_ioremap_resource(&pdev->dev, res);
+	thermal->regs = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(thermal->regs))
 		return PTR_ERR(thermal->regs);
 
-- 
2.7.4



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

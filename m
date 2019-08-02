Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E7FA7FA61
	for <lists+linux-rockchip@lfdr.de>; Fri,  2 Aug 2019 15:33:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZVC+BggVBPJ9U6exmeBO3vyWd66jNTAijk2wRgJ81ZI=; b=RQK2eJDC7ubv9y
	gMPMyKpfqhGYPC5z8C27ZSgVQ26jk42yiocOawnjuapepEY/XnFUQ/7/uehcv7/+leULgcfDDNllW
	I2j7rh2uDhtcHEsYR/MuFZAN6JDeXG1QLklOh5OoAhsX/8RL+lSjopHpJCJ64PlAumnK/mC3pXy8E
	EI6xhHnzzmw7GzQxfVNp/MujSiUVFOuGDTAq1VmTA0HheUjm6tm/omsdgQWTVFuNEiF0f2sWW3xYm
	mBGZ0kZ9Eq6vub8dqxDr9PbAoYuCJYddS1tUOxGEk8wAznsEf+DlTDLh5VFYwg2gdkKOOpvJOoi7+
	KTjyVq7lc6oT8qUdnAow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htXg3-0003EN-2l; Fri, 02 Aug 2019 13:32:59 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htXeX-0000sf-Ra; Fri, 02 Aug 2019 13:31:27 +0000
Received: from DGGEMS403-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id BE7269234E05EA62B8D9;
 Fri,  2 Aug 2019 21:31:23 +0800 (CST)
Received: from localhost (10.133.213.239) by DGGEMS403-HUB.china.huawei.com
 (10.3.19.203) with Microsoft SMTP Server id 14.3.439.0; Fri, 2 Aug 2019
 21:31:17 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <herbert@gondor.apana.org.au>, <lars.persson@axis.com>,
 <jesper.nilsson@axis.com>, <davem@davemloft.net>, <thomas.lendacky@amd.com>,
 <gary.hook@amd.com>, <krzk@kernel.org>, <kgene@kernel.org>,
 <antoine.tenart@bootlin.com>, <matthias.bgg@gmail.com>,
 <jamie@jamieiles.com>, <agross@kernel.org>, <heiko@sntech.de>,
 <mcoquelin.stm32@gmail.com>, <alexandre.torgue@st.com>,
 <clabbe.montjoie@gmail.com>, <mripard@kernel.org>, <wens@csie.org>
Subject: [PATCH -next 07/12] crypto: picoxcell - use
 devm_platform_ioremap_resource() to simplify code
Date: Fri, 2 Aug 2019 21:28:04 +0800
Message-ID: <20190802132809.8116-8-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
In-Reply-To: <20190802132809.8116-1-yuehaibing@huawei.com>
References: <20190802132809.8116-1-yuehaibing@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.133.213.239]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_063126_097467_9E4342E4 
X-CRM114-Status: UNSURE (   7.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
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
Cc: linux-samsung-soc@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 YueHaibing <yuehaibing@huawei.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@axis.com, linux-rockchip@lists.infradead.org,
 linux-mediatek@lists.infradead.org, linux-crypto@vger.kernel.org,
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
 drivers/crypto/picoxcell_crypto.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/crypto/picoxcell_crypto.c b/drivers/crypto/picoxcell_crypto.c
index b985cb85..9a939b4 100644
--- a/drivers/crypto/picoxcell_crypto.c
+++ b/drivers/crypto/picoxcell_crypto.c
@@ -1624,7 +1624,7 @@ MODULE_DEVICE_TABLE(of, spacc_of_id_table);
 static int spacc_probe(struct platform_device *pdev)
 {
 	int i, err, ret;
-	struct resource *mem, *irq;
+	struct resource *irq;
 	struct device_node *np = pdev->dev.of_node;
 	struct spacc_engine *engine = devm_kzalloc(&pdev->dev, sizeof(*engine),
 						   GFP_KERNEL);
@@ -1653,8 +1653,7 @@ static int spacc_probe(struct platform_device *pdev)
 
 	engine->name = dev_name(&pdev->dev);
 
-	mem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	engine->regs = devm_ioremap_resource(&pdev->dev, mem);
+	engine->regs = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(engine->regs))
 		return PTR_ERR(engine->regs);
 
-- 
2.7.4



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

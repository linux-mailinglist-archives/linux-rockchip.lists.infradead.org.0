Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A84EB48EF
	for <lists+linux-rockchip@lfdr.de>; Tue, 17 Sep 2019 10:13:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kkglppgVeKAi6i8U2npS2m7ZOkySDsy2XS/2rY9WikY=; b=NNllaTpphTDak9
	6WMR3JMX8IHQnkhEqyA5YYF8UzoVtk1+CZbjKL9QGyZDpyz27J+ceOwN33VXy8trd2MXy1/+RCUjY
	H9lGWYFJ6v2hrxJYQE3XM/iwXxZ717OtLoWfHgLRvzqXiJwtwXd/17JqPL0yMHapJLmtD/nRuJQvH
	bm5KjKWs8qMYQgExI5AMI54QyOAl+SLQ2mj4UusYFHgpHBJ14n9s8pyqbTTg42vzpp6CAVvXBRSTn
	CwjYwiRl7eyUpxTibLjeSwMHJDWlDaP9R9BOUzgaWlTRO8R38Fi7U9OmgAvpnJNy54xhaME6k5DPX
	lf8gUmZo+bmyKHP/+wtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iA8cM-00059a-Q4; Tue, 17 Sep 2019 08:13:46 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iA8c7-00051v-0m
 for linux-rockchip@lists.infradead.org; Tue, 17 Sep 2019 08:13:34 +0000
Received: from ip5f5a6266.dynamic.kabel-deutschland.de ([95.90.98.102]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iA8c0-0005RU-95; Tue, 17 Sep 2019 10:13:24 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: lee.jones@linaro.org
Subject: [PATCH 2/4] mfd: rk808: fix rk817 powerkey integration
Date: Tue, 17 Sep 2019 10:12:54 +0200
Message-Id: <20190917081256.24919-2-heiko@sntech.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190917081256.24919-1-heiko@sntech.de>
References: <20190917081256.24919-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_011331_295237_804DFB74 
X-CRM114-Status: GOOD (  11.10  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: d.schultz@phytec.de, Heiko Stuebner <heiko@sntech.de>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 tony.xie@rock-chips.com, christoph.muellner@theobroma-systems.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

The pwrkey integration seems to stem from the vendor kernel, as the
compatible is wrong and also the order of key-irqs is swapped.

So fix these issues to make the pwrkey on rk817 actually work.

Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 drivers/mfd/rk808.c | 14 +++-----------
 1 file changed, 3 insertions(+), 11 deletions(-)

diff --git a/drivers/mfd/rk808.c b/drivers/mfd/rk808.c
index 050478cabc95..966841744ee6 100644
--- a/drivers/mfd/rk808.c
+++ b/drivers/mfd/rk808.c
@@ -121,16 +121,8 @@ static struct resource rk817_rtc_resources[] = {
 };
 
 static struct resource rk805_key_resources[] = {
-	{
-		.start  = RK805_IRQ_PWRON_FALL,
-		.end    = RK805_IRQ_PWRON_FALL,
-		.flags  = IORESOURCE_IRQ,
-	},
-	{
-		.start  = RK805_IRQ_PWRON_RISE,
-		.end    = RK805_IRQ_PWRON_RISE,
-		.flags  = IORESOURCE_IRQ,
-	}
+	DEFINE_RES_IRQ(RK805_IRQ_PWRON_RISE),
+	DEFINE_RES_IRQ(RK805_IRQ_PWRON_FALL),
 };
 
 static struct resource rk817_pwrkey_resources[] = {
@@ -167,7 +159,7 @@ static const struct mfd_cell rk817s[] = {
 	{ .name = "rk808-clkout",},
 	{ .name = "rk808-regulator",},
 	{
-		.name = "rk8xx-pwrkey",
+		.name = "rk805-pwrkey",
 		.num_resources = ARRAY_SIZE(rk817_pwrkey_resources),
 		.resources = &rk817_pwrkey_resources[0],
 	},
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

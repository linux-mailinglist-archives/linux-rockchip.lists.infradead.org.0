Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E67013847F
	for <lists+linux-rockchip@lfdr.de>; Sun, 12 Jan 2020 02:55:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=oiczDMTLNSCWUnEPl+MVKLktAlXIWrgqYxMGKmPFLc8=; b=L5jKkEtmiaGnW8/AIjtm5IHnwp
	oT66ZoUg69f1tELPuSQv/PnQWILHAGcmC0kF8ij7Rp/vdMR4STpYFiWozl03sv7l/Ed1049xP4j8e
	aqVWxSAmdoXyWT8sKVPcsicbuTG+XTO7JNvj93XiesA+lGMh/1DNEaXN+f1HTg/MRGpPSt11HBj8l
	/ADNNK8lFCii1eiZWoAYIHmSptEiozJYRWZdA3sAn1XSwTsuKf0F9rnAZezzYGpVFdNMHrdNNlFkn
	H/Z3s/EdU2IF2R6b4UzZXsZRh+MR0c6FfHOOCw4ioGT9bP17FB3LphUqK34qGu/gwrwGlyFV+HVq5
	s0Q/kasA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqSTP-00048q-WD; Sun, 12 Jan 2020 01:55:28 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqSTK-00043v-OP
 for linux-rockchip@lists.infradead.org; Sun, 12 Jan 2020 01:55:24 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EFAC611B3;
 Sat, 11 Jan 2020 17:55:20 -0800 (PST)
Received: from DESKTOP-VLO843J.lan (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 18F633F6C4;
 Sat, 11 Jan 2020 17:55:19 -0800 (PST)
From: Robin Murphy <robin.murphy@arm.com>
To: lee.jones@linaro.org
Subject: [PATCH v2 3/5] mfd: rk808: Stop using syscore ops
Date: Sun, 12 Jan 2020 01:55:02 +0000
Message-Id: <7fdcdb900c7dc4fba38266e1db637131c3090a67.1578789410.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1578789410.git.robin.murphy@arm.com>
References: <cover.1578789410.git.robin.murphy@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200111_175522_841798_BB7F7A18 
X-CRM114-Status: GOOD (  14.90  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-rockchip@lists.infradead.org, smoch@web.de,
 linux-kernel@vger.kernel.org, heiko@sntech.de
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Setting the SLEEP pin to its shutdown function for appropriate PMICs
doesn't need to happen in single-CPU context, so there's really no point
involving the syscore machinery. Hook it up to the standard driver model
shutdown method instead. This also obviates the issue that the syscore
ops weren't being unregistered on probe failure or module removal.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 drivers/mfd/rk808.c | 26 ++++++++++++--------------
 1 file changed, 12 insertions(+), 14 deletions(-)

diff --git a/drivers/mfd/rk808.c b/drivers/mfd/rk808.c
index ac798053c26a..8116ed6cf2e7 100644
--- a/drivers/mfd/rk808.c
+++ b/drivers/mfd/rk808.c
@@ -19,7 +19,6 @@
 #include <linux/module.h>
 #include <linux/of_device.h>
 #include <linux/regmap.h>
-#include <linux/syscore_ops.h>
 
 struct rk808_reg_data {
 	int addr;
@@ -509,28 +508,27 @@ static void rk818_device_shutdown(void)
 		dev_err(&rk808_i2c_client->dev, "Failed to shutdown device!\n");
 }
 
-static void rk8xx_syscore_shutdown(void)
+static void rk8xx_shutdown(struct i2c_client *client)
 {
-	struct rk808 *rk808 = i2c_get_clientdata(rk808_i2c_client);
+	struct rk808 *rk808 = i2c_get_clientdata(client);
 	int ret;
 
-	if (system_state == SYSTEM_POWER_OFF &&
-	    (rk808->variant == RK809_ID || rk808->variant == RK817_ID)) {
+	switch (rk808->variant) {
+	case RK809_ID:
+	case RK817_ID:
 		ret = regmap_update_bits(rk808->regmap,
 					 RK817_SYS_CFG(3),
 					 RK817_SLPPIN_FUNC_MSK,
 					 SLPPIN_DN_FUN);
-		if (ret) {
-			dev_warn(&rk808_i2c_client->dev,
-				 "Cannot switch to power down function\n");
-		}
+		break;
+	default:
+		return;
 	}
+	if (ret)
+		dev_warn(&client->dev,
+			 "Cannot switch to power down function\n");
 }
 
-static struct syscore_ops rk808_syscore_ops = {
-	.shutdown = rk8xx_syscore_shutdown,
-};
-
 static const struct of_device_id rk808_of_match[] = {
 	{ .compatible = "rockchip,rk805" },
 	{ .compatible = "rockchip,rk808" },
@@ -623,7 +621,6 @@ static int rk808_probe(struct i2c_client *client,
 		nr_pre_init_regs = ARRAY_SIZE(rk817_pre_init_reg);
 		cells = rk817s;
 		nr_cells = ARRAY_SIZE(rk817s);
-		register_syscore_ops(&rk808_syscore_ops);
 		break;
 	default:
 		dev_err(&client->dev, "Unsupported RK8XX ID %lu\n",
@@ -759,6 +756,7 @@ static struct i2c_driver rk808_i2c_driver = {
 	},
 	.probe    = rk808_probe,
 	.remove   = rk808_remove,
+	.shutdown = rk8xx_shutdown,
 };
 
 module_i2c_driver(rk808_i2c_driver);
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

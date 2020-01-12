Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F71C138481
	for <lists+linux-rockchip@lfdr.de>; Sun, 12 Jan 2020 02:55:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=UIMBaC7VFjXEr+9E/OhJBxFCWnvzEje+6cnYtwQLVOE=; b=IStXER6lc1ruB2qJh8o9/WvIi7
	owtRdQ2uQKzhz0xRK0JFyHgpGzND3KvDXhfdhRhJgODX9UIZqDvnMfi9Ln8Nmh3Ods1H64nOT2/wA
	/CUOMS9hBgCmaq8hBGouiQGgnyucADUsLkgKbY4w4Qezd8qHcBWXMoX7cqrXQH2CzDMiERFq6qAq6
	l7HZMOhMZITofd/+3GLXa5fJEWCunLqDR4a3XyChDbxSkYDevNXKnt/cUWCBop/uda5457M3gCjbs
	aZlOvX8Q6AFDuUGDTppl0S7tVkoKEZqNLIwMBkeBSMiie1g26y2G5tmnJgSGNp7kSLqFhBGySyoPC
	22ZiBx2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqSTS-0004CL-BQ; Sun, 12 Jan 2020 01:55:30 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqSTM-00043s-Ph
 for linux-rockchip@lists.infradead.org; Sun, 12 Jan 2020 01:55:26 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 50946DA7;
 Sat, 11 Jan 2020 17:55:23 -0800 (PST)
Received: from DESKTOP-VLO843J.lan (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 708AE3F6C4;
 Sat, 11 Jan 2020 17:55:22 -0800 (PST)
From: Robin Murphy <robin.murphy@arm.com>
To: lee.jones@linaro.org
Subject: [PATCH v2 5/5] mfd: rk808: Convert RK805 to shutdown/suspend hooks
Date: Sun, 12 Jan 2020 01:55:04 +0000
Message-Id: <02639ae880b9d945c4134a28b1eef3db2ed9353f.1578789410.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1578789410.git.robin.murphy@arm.com>
References: <cover.1578789410.git.robin.murphy@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200111_175524_935306_282F926F 
X-CRM114-Status: GOOD (  16.06  )
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

RK805 has the same kind of dual-role sleep/shutdown pin as RK809/RK817,
so it makes little sense for the driver to have to have two completely
different mechanisms to handle essentially the same thing. Move RK805
over to the shutdown/suspend flow to clean things up.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 drivers/mfd/rk808.c       | 37 ++++++++++++-------------------------
 include/linux/mfd/rk808.h |  1 -
 2 files changed, 12 insertions(+), 26 deletions(-)

diff --git a/drivers/mfd/rk808.c b/drivers/mfd/rk808.c
index b2265c6e94ae..d109b9f14407 100644
--- a/drivers/mfd/rk808.c
+++ b/drivers/mfd/rk808.c
@@ -185,7 +185,6 @@ static const struct rk808_reg_data rk805_pre_init_reg[] = {
 	{RK805_BUCK4_CONFIG_REG, RK805_BUCK3_4_ILMAX_MASK,
 				 RK805_BUCK4_ILMAX_3500MA},
 	{RK805_BUCK4_CONFIG_REG, BUCK_ILMIN_MASK, BUCK_ILMIN_400MA},
-	{RK805_GPIO_IO_POL_REG, SLP_SD_MSK, SLEEP_FUN},
 	{RK805_THERMAL_REG, TEMP_HOTDIE_MSK, TEMP115C},
 };
 
@@ -448,21 +447,6 @@ static const struct regmap_irq_chip rk818_irq_chip = {
 
 static struct i2c_client *rk808_i2c_client;
 
-static void rk805_device_shutdown_prepare(void)
-{
-	int ret;
-	struct rk808 *rk808 = i2c_get_clientdata(rk808_i2c_client);
-
-	if (!rk808)
-		return;
-
-	ret = regmap_update_bits(rk808->regmap,
-				 RK805_GPIO_IO_POL_REG,
-				 SLP_SD_MSK, SHUTDOWN_FUN);
-	if (ret)
-		dev_err(&rk808_i2c_client->dev, "Failed to shutdown device!\n");
-}
-
 static void rk808_pm_power_off(void)
 {
 	int ret;
@@ -496,6 +480,12 @@ static void rk8xx_shutdown(struct i2c_client *client)
 	int ret;
 
 	switch (rk808->variant) {
+	case RK805_ID:
+		ret = regmap_update_bits(rk808->regmap,
+					 RK805_GPIO_IO_POL_REG,
+					 SLP_SD_MSK,
+					 SHUTDOWN_FUN);
+		break;
 	case RK809_ID:
 	case RK817_ID:
 		ret = regmap_update_bits(rk808->regmap,
@@ -574,7 +564,6 @@ static int rk808_probe(struct i2c_client *client,
 		nr_pre_init_regs = ARRAY_SIZE(rk805_pre_init_reg);
 		cells = rk805s;
 		nr_cells = ARRAY_SIZE(rk805s);
-		rk808->pm_pwroff_prep_fn = rk805_device_shutdown_prepare;
 		break;
 	case RK808_ID:
 		rk808->regmap_cfg = &rk808_regmap_config;
@@ -653,7 +642,6 @@ static int rk808_probe(struct i2c_client *client,
 	if (of_property_read_bool(np, "rockchip,system-power-controller")) {
 		rk808_i2c_client = client;
 		pm_power_off = rk808_pm_power_off;
-		pm_power_off_prepare = rk808->pm_pwroff_prep_fn;
 	}
 
 	return 0;
@@ -676,13 +664,6 @@ static int rk808_remove(struct i2c_client *client)
 	if (pm_power_off == rk808_pm_power_off)
 		pm_power_off = NULL;
 
-	/**
-	 * As above, check if the pointer is set by us before overwrite.
-	 */
-	if (rk808->pm_pwroff_prep_fn &&
-	    pm_power_off_prepare == rk808->pm_pwroff_prep_fn)
-		pm_power_off_prepare = NULL;
-
 	return 0;
 }
 
@@ -692,6 +673,12 @@ static int __maybe_unused rk8xx_suspend(struct device *dev)
 	int ret = 0;
 
 	switch (rk808->variant) {
+	case RK805_ID:
+		ret = regmap_update_bits(rk808->regmap,
+					 RK805_GPIO_IO_POL_REG,
+					 SLP_SD_MSK,
+					 SLEEP_FUN);
+		break;
 	case RK809_ID:
 	case RK817_ID:
 		ret = regmap_update_bits(rk808->regmap,
diff --git a/include/linux/mfd/rk808.h b/include/linux/mfd/rk808.h
index b038653fa87e..e07f6e61cd38 100644
--- a/include/linux/mfd/rk808.h
+++ b/include/linux/mfd/rk808.h
@@ -620,6 +620,5 @@ struct rk808 {
 	long				variant;
 	const struct regmap_config	*regmap_cfg;
 	const struct regmap_irq_chip	*regmap_irq_chip;
-	void				(*pm_pwroff_prep_fn)(void);
 };
 #endif /* __LINUX_REGULATOR_RK808_H */
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

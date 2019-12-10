Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 265201189BE
	for <lists+linux-rockchip@lfdr.de>; Tue, 10 Dec 2019 14:27:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=DWXepmcTEUiFYB8Mo0MQNseJKhuSl4VuSh2aTmfl2PI=; b=qUaf5C2Srfuhtp/naG9xAFuQE1
	hLIbCx/5HYTpccJCtSc+FTeD5QFNmGTogGlplmRF713dV4+J8Sh1q4C5SGg3HrsB8v1Vy6JsbR+hf
	Njkbun8Y+uu5t78N3Tpk7O0urk5DehIJ880y1GS2CyyXA/L6dQfRXVgLJPWmNx0U7n5DosbQt9FZp
	Q9rkXAPwl8u1vtUVpjM7BulLHoX9N1puOxgqC3/DUgycwzznFMQHxdIWSdp3R/1lFCrh8LgyFQhsw
	2d6ar0yIQQs79I3pIjRECwUOHhRHgfGTttdfv8gdieap6PEldMNAWETWQneMC35/GtMgxOTC1wAbP
	0vQeBtJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iefY9-0006Rd-31; Tue, 10 Dec 2019 13:27:37 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iefV9-0002At-TP
 for linux-rockchip@lists.infradead.org; Tue, 10 Dec 2019 13:24:33 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 39A411045;
 Tue, 10 Dec 2019 05:24:31 -0800 (PST)
Received: from DESKTOP-VLO843J.cambridge.arm.com
 (DESKTOP-VLO843J.cambridge.arm.com [10.1.26.198])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 4DD263F52E;
 Tue, 10 Dec 2019 05:24:30 -0800 (PST)
From: Robin Murphy <robin.murphy@arm.com>
To: lee.jones@linaro.org
Subject: [PATCH 4/4] mfd: rk808: Convert RK805 to syscore/PM ops
Date: Tue, 10 Dec 2019 13:24:33 +0000
Message-Id: <8642045f0657c9e782cd698eb08777c9d4c10c8d.1575932654.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1575932654.git.robin.murphy@arm.com>
References: <cover.1575932654.git.robin.murphy@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_052432_046693_7D0F4B08 
X-CRM114-Status: GOOD (  16.80  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: linux.amoon@gmail.com, linux-rockchip@lists.infradead.org, smoch@web.de,
 linux-kernel@vger.kernel.org, heiko@sntech.de
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

RK805 has the same kind of dual-role sleep/shutdown pin as RK809/RK817,
so it makes little sense for the driver to have to have two completely
different mechanisms to handle essentially the same thing. Bring RK805
in line with the RK809/RK817 flow to clean things up.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 drivers/mfd/rk808.c       | 58 +++++++++++++++++----------------------
 include/linux/mfd/rk808.h |  1 -
 2 files changed, 25 insertions(+), 34 deletions(-)

diff --git a/drivers/mfd/rk808.c b/drivers/mfd/rk808.c
index 657b8baa3b8a..e88bdb889d3a 100644
--- a/drivers/mfd/rk808.c
+++ b/drivers/mfd/rk808.c
@@ -186,7 +186,6 @@ static const struct rk808_reg_data rk805_pre_init_reg[] = {
 	{RK805_BUCK4_CONFIG_REG, RK805_BUCK3_4_ILMAX_MASK,
 				 RK805_BUCK4_ILMAX_3500MA},
 	{RK805_BUCK4_CONFIG_REG, BUCK_ILMIN_MASK, BUCK_ILMIN_400MA},
-	{RK805_GPIO_IO_POL_REG, SLP_SD_MSK, SLEEP_FUN},
 	{RK805_THERMAL_REG, TEMP_HOTDIE_MSK, TEMP115C},
 };
 
@@ -449,21 +448,6 @@ static const struct regmap_irq_chip rk818_irq_chip = {
 
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
 static void rk808_device_shutdown(void)
 {
 	int ret;
@@ -499,17 +483,29 @@ static void rk8xx_syscore_shutdown(void)
 	struct rk808 *rk808 = i2c_get_clientdata(rk808_i2c_client);
 	int ret;
 
-	if (system_state == SYSTEM_POWER_OFF &&
-	    (rk808->variant == RK809_ID || rk808->variant == RK817_ID)) {
+	if (system_state != SYSTEM_POWER_OFF)
+	       return;
+
+	switch (rk808->variant) {
+	case RK805_ID:
+		ret = regmap_update_bits(rk808->regmap,
+					 RK805_GPIO_IO_POL_REG,
+					 SLP_SD_MSK,
+					 SHUTDOWN_FUN);
+		break;
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
+		dev_warn(&rk808_i2c_client->dev,
+			 "Cannot switch to power down function\n");
 }
 
 static struct syscore_ops rk808_syscore_ops = {
@@ -579,7 +575,6 @@ static int rk808_probe(struct i2c_client *client,
 		nr_pre_init_regs = ARRAY_SIZE(rk805_pre_init_reg);
 		cells = rk805s;
 		nr_cells = ARRAY_SIZE(rk805s);
-		rk808->pm_pwroff_prep_fn = rk805_device_shutdown_prepare;
 		break;
 	case RK808_ID:
 		rk808->regmap_cfg = &rk808_regmap_config;
@@ -658,10 +653,8 @@ static int rk808_probe(struct i2c_client *client,
 		goto err_irq;
 	}
 
-	if (of_property_read_bool(np, "rockchip,system-power-controller")) {
+	if (of_property_read_bool(np, "rockchip,system-power-controller"))
 		pm_power_off = rk808_device_shutdown;
-		pm_power_off_prepare = rk808->pm_pwroff_prep_fn;
-	}
 
 	return 0;
 
@@ -686,13 +679,6 @@ static int rk808_remove(struct i2c_client *client)
 	if (pm_power_off == rk808_device_shutdown)
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
 
@@ -702,6 +688,12 @@ static int __maybe_unused rk8xx_suspend(struct device *dev)
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

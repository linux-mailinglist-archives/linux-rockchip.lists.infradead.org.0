Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8BF01189BC
	for <lists+linux-rockchip@lfdr.de>; Tue, 10 Dec 2019 14:27:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=s3jv7fzULu+C5iZ9VcniI2OqgHjb2poPyqy4XseTAdY=; b=d4tYWdvN+Ne8cleoxUScvqUINB
	pauKMej9PgXspBRNWY34q59+S1tjwIaI73P/rd6ELF/Hix2qVwMd9XXj8USjGDNp5VqPHggogZ+NG
	+priUKTO3PqnV+NtuwiAwjCXAfP2UJiwyu7yVJ0xwIxl/XzoUw3H0LOwoaVd2IasEeie1Jz+yqKoQ
	1Vr30x3kTPqHaRPF5CelG2b+bb3qbgs1J39ivlM1l1GBgRGnV5nQcxjqW7Z7NQ+wmtG8dD2P8rDYU
	Yidr79wQmLg6ObwOlvahItKODVHqE1ZZOcAFT3J8URTR8NHKP3jk8XjMLvTYRLC8S/s/JTnbfjnMD
	taeA9ZdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iefY6-0006Pd-LD; Tue, 10 Dec 2019 13:27:34 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iefV8-00029c-M5
 for linux-rockchip@lists.infradead.org; Tue, 10 Dec 2019 13:24:32 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0C03D328;
 Tue, 10 Dec 2019 05:24:30 -0800 (PST)
Received: from DESKTOP-VLO843J.cambridge.arm.com
 (DESKTOP-VLO843J.cambridge.arm.com [10.1.26.198])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 1EE7B3F52E;
 Tue, 10 Dec 2019 05:24:29 -0800 (PST)
From: Robin Murphy <robin.murphy@arm.com>
To: lee.jones@linaro.org
Subject: [PATCH 3/4] mfd: rk808: Reduce shutdown duplication
Date: Tue, 10 Dec 2019 13:24:32 +0000
Message-Id: <2376f722b917f55cbf49c5f3da0c341457900dee.1575932654.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1575932654.git.robin.murphy@arm.com>
References: <cover.1575932654.git.robin.murphy@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_052430_862434_A8CE8BDB 
X-CRM114-Status: GOOD (  15.61  )
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

Rather than having 3 almost-identical functions plus the machinery to
keep track of them, it's far simpler to just dynamically select the
appropriate register field per variant.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 drivers/mfd/rk808.c       | 56 +++++++++++++--------------------------
 include/linux/mfd/rk808.h |  1 -
 2 files changed, 19 insertions(+), 38 deletions(-)

diff --git a/drivers/mfd/rk808.c b/drivers/mfd/rk808.c
index 387105830736..657b8baa3b8a 100644
--- a/drivers/mfd/rk808.c
+++ b/drivers/mfd/rk808.c
@@ -449,21 +449,6 @@ static const struct regmap_irq_chip rk818_irq_chip = {
 
 static struct i2c_client *rk808_i2c_client;
 
-static void rk805_device_shutdown(void)
-{
-	int ret;
-	struct rk808 *rk808 = i2c_get_clientdata(rk808_i2c_client);
-
-	if (!rk808)
-		return;
-
-	ret = regmap_update_bits(rk808->regmap,
-				 RK805_DEV_CTRL_REG,
-				 DEV_OFF, DEV_OFF);
-	if (ret)
-		dev_err(&rk808_i2c_client->dev, "Failed to shutdown device!\n");
-}
-
 static void rk805_device_shutdown_prepare(void)
 {
 	int ret;
@@ -482,29 +467,29 @@ static void rk805_device_shutdown_prepare(void)
 static void rk808_device_shutdown(void)
 {
 	int ret;
+	unsigned int reg, bit;
 	struct rk808 *rk808 = i2c_get_clientdata(rk808_i2c_client);
 
 	if (!rk808)
 		return;
 
-	ret = regmap_update_bits(rk808->regmap,
-				 RK808_DEVCTRL_REG,
-				 DEV_OFF_RST, DEV_OFF_RST);
-	if (ret)
-		dev_err(&rk808_i2c_client->dev, "Failed to shutdown device!\n");
-}
-
-static void rk818_device_shutdown(void)
-{
-	int ret;
-	struct rk808 *rk808 = i2c_get_clientdata(rk808_i2c_client);
-
-	if (!rk808)
+	switch (rk808->variant) {
+	case RK805_ID:
+		reg = RK805_DEV_CTRL_REG;
+		bit = DEV_OFF;
+		break;
+	case RK808_ID:
+		reg = RK808_DEVCTRL_REG,
+		bit = DEV_OFF_RST;
+		break;
+	case RK818_ID:
+		reg = RK818_DEVCTRL_REG;
+		bit = DEV_OFF;
+		break;
+	default:
 		return;
-
-	ret = regmap_update_bits(rk808->regmap,
-				 RK818_DEVCTRL_REG,
-				 DEV_OFF, DEV_OFF);
+	}
+	ret = regmap_update_bits(rk808->regmap, reg, bit, bit);
 	if (ret)
 		dev_err(&rk808_i2c_client->dev, "Failed to shutdown device!\n");
 }
@@ -594,7 +579,6 @@ static int rk808_probe(struct i2c_client *client,
 		nr_pre_init_regs = ARRAY_SIZE(rk805_pre_init_reg);
 		cells = rk805s;
 		nr_cells = ARRAY_SIZE(rk805s);
-		rk808->pm_pwroff_fn = rk805_device_shutdown;
 		rk808->pm_pwroff_prep_fn = rk805_device_shutdown_prepare;
 		break;
 	case RK808_ID:
@@ -604,7 +588,6 @@ static int rk808_probe(struct i2c_client *client,
 		nr_pre_init_regs = ARRAY_SIZE(rk808_pre_init_reg);
 		cells = rk808s;
 		nr_cells = ARRAY_SIZE(rk808s);
-		rk808->pm_pwroff_fn = rk808_device_shutdown;
 		break;
 	case RK818_ID:
 		rk808->regmap_cfg = &rk818_regmap_config;
@@ -613,7 +596,6 @@ static int rk808_probe(struct i2c_client *client,
 		nr_pre_init_regs = ARRAY_SIZE(rk818_pre_init_reg);
 		cells = rk818s;
 		nr_cells = ARRAY_SIZE(rk818s);
-		rk808->pm_pwroff_fn = rk818_device_shutdown;
 		break;
 	case RK809_ID:
 	case RK817_ID:
@@ -677,7 +659,7 @@ static int rk808_probe(struct i2c_client *client,
 	}
 
 	if (of_property_read_bool(np, "rockchip,system-power-controller")) {
-		pm_power_off = rk808->pm_pwroff_fn;
+		pm_power_off = rk808_device_shutdown;
 		pm_power_off_prepare = rk808->pm_pwroff_prep_fn;
 	}
 
@@ -701,7 +683,7 @@ static int rk808_remove(struct i2c_client *client)
 	 * pm_power_off may points to a function from another module.
 	 * Check if the pointer is set by us and only then overwrite it.
 	 */
-	if (rk808->pm_pwroff_fn && pm_power_off == rk808->pm_pwroff_fn)
+	if (pm_power_off == rk808_device_shutdown)
 		pm_power_off = NULL;
 
 	/**
diff --git a/include/linux/mfd/rk808.h b/include/linux/mfd/rk808.h
index a59bf323f713..b038653fa87e 100644
--- a/include/linux/mfd/rk808.h
+++ b/include/linux/mfd/rk808.h
@@ -620,7 +620,6 @@ struct rk808 {
 	long				variant;
 	const struct regmap_config	*regmap_cfg;
 	const struct regmap_irq_chip	*regmap_irq_chip;
-	void				(*pm_pwroff_fn)(void);
 	void				(*pm_pwroff_prep_fn)(void);
 };
 #endif /* __LINUX_REGULATOR_RK808_H */
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C920236F88
	for <lists+linux-rockchip@lfdr.de>; Thu,  6 Jun 2019 11:09:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sI0bbWByITbNeLsEmXbIOpfPSDNSgz6ITQ8y0jTGj5k=; b=rwd2frp4V2Zvw+
	fYYVFnfnqihFQTfbZoy4dkxg6QGxSytc3UAjq04GYKt7nVkSEkjwKw5Ljykg3OahY5TcbTcjV1FTf
	I54vw9KFfz02YrHYaEqgAoeqzZOrqVhtj/PBVr2C2Hrt+sokhkBGY55GbTTgvhKwY0NC9mCQYpPxt
	LNK4ut7CtqiB5umSNwLk5+TlXlBQpX4zltwSCL0CaeI/Ld2mynYN0ccMNB3Bvsa4X9B2uqEGq2DY9
	BGGK8zYBz2PkRIN7gh/ItUQqiJvNavTQ2FU/iZVBEYtXkt3Ag99VTVvAqmRNhoW8qWeuAPnXNMtvL
	HHqXsIiK2zmVvcS0zh9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYoP6-0006AU-LX; Thu, 06 Jun 2019 09:09:48 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYoP1-00068w-U6
 for linux-rockchip@lists.infradead.org; Thu, 06 Jun 2019 09:09:46 +0000
Received: from we0305.dip.tu-dresden.de ([141.76.177.49]
 helo=phil.dip.tu-dresden.de)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hYoOw-0003Fk-8D; Thu, 06 Jun 2019 11:09:38 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-clk@vger.kernel.org
Subject: [PATCH 2/2] clk: rockchip: convert pclk_wdt boilerplat to new
 SGRF_GATE macro
Date: Thu,  6 Jun 2019 11:09:34 +0200
Message-Id: <20190606090934.4443-2-heiko@sntech.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190606090934.4443-1-heiko@sntech.de>
References: <20190606090934.4443-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_020944_121787_02A9B541 
X-CRM114-Status: GOOD (  10.32  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.21
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
Cc: Heiko Stuebner <heiko@sntech.de>, sboyd@kernel.org, mturquette@baylibre.com,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 papadakospan@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Convert the boilerplate code for manual addition of the watchdog clock
to the new SGRF_GATE macro for all affected socs.

Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 drivers/clk/rockchip/clk-px30.c   | 11 +++--------
 drivers/clk/rockchip/clk-rk3288.c | 11 +++--------
 drivers/clk/rockchip/clk-rk3368.c | 11 +++--------
 drivers/clk/rockchip/clk-rk3399.c | 11 +++--------
 4 files changed, 12 insertions(+), 32 deletions(-)

diff --git a/drivers/clk/rockchip/clk-px30.c b/drivers/clk/rockchip/clk-px30.c
index 68d23be18cbc..2e10b9f211eb 100644
--- a/drivers/clk/rockchip/clk-px30.c
+++ b/drivers/clk/rockchip/clk-px30.c
@@ -803,6 +803,9 @@ static struct rockchip_clk_branch px30_clk_branches[] __initdata = {
 	GATE(ACLK_GIC, "aclk_gic", "aclk_bus_pre", CLK_IGNORE_UNUSED, PX30_CLKGATE_CON(13), 12, GFLAGS),
 	GATE(ACLK_DCF, "aclk_dcf", "aclk_bus_pre", 0, PX30_CLKGATE_CON(13), 15, GFLAGS),
 
+	/* aclk_dmac is controlled by sgrf_soc_con1[11]. */
+	SGRF_GATE(ACLK_DMAC, "aclk_dmac", "aclk_bus_pre"),
+
 	GATE(0, "hclk_bus_niu", "hclk_bus_pre", CLK_IGNORE_UNUSED, PX30_CLKGATE_CON(13), 9, GFLAGS),
 	GATE(0, "hclk_rom", "hclk_bus_pre", CLK_IGNORE_UNUSED, PX30_CLKGATE_CON(13), 14, GFLAGS),
 	GATE(HCLK_PDM, "hclk_pdm", "hclk_bus_pre", 0, PX30_CLKGATE_CON(14), 1, GFLAGS),
@@ -981,14 +984,6 @@ static void __init px30_clk_init(struct device_node *np)
 		return;
 	}
 
-	/* aclk_dmac is controlled by sgrf_soc_con1[11]. */
-	clk = clk_register_fixed_factor(NULL, "aclk_dmac", "aclk_bus_pre", 0, 1, 1);
-	if (IS_ERR(clk))
-		pr_warn("%s: could not register clock aclk_dmac: %ld\n",
-			__func__, PTR_ERR(clk));
-	else
-		rockchip_clk_add_lookup(ctx, clk, ACLK_DMAC);
-
 	rockchip_clk_register_plls(ctx, px30_pll_clks,
 				   ARRAY_SIZE(px30_pll_clks),
 				   PX30_GRF_SOC_STATUS0);
diff --git a/drivers/clk/rockchip/clk-rk3288.c b/drivers/clk/rockchip/clk-rk3288.c
index 85907f31c63f..9e3dbc4a7632 100644
--- a/drivers/clk/rockchip/clk-rk3288.c
+++ b/drivers/clk/rockchip/clk-rk3288.c
@@ -776,6 +776,9 @@ static struct rockchip_clk_branch rk3288_clk_branches[] __initdata = {
 	GATE(PCLK_GRF, "pclk_grf", "pclk_pd_alive", CLK_IGNORE_UNUSED, RK3288_CLKGATE_CON(14), 11, GFLAGS),
 	GATE(0, "pclk_alive_niu", "pclk_pd_alive", 0, RK3288_CLKGATE_CON(14), 12, GFLAGS),
 
+	/* Watchdog pclk is controlled by RK3288_SGRF_SOC_CON0[1]. */
+	SGRF_GATE(PCLK_WDT, "pclk_wdt", "pclk_pd_alive"),
+
 	/* pclk_pd_pmu gates */
 	GATE(PCLK_PMU, "pclk_pmu", "pclk_pd_pmu", CLK_IGNORE_UNUSED, RK3288_CLKGATE_CON(17), 0, GFLAGS),
 	GATE(0, "pclk_intmem1", "pclk_pd_pmu", CLK_IGNORE_UNUSED, RK3288_CLKGATE_CON(17), 1, GFLAGS),
@@ -939,14 +942,6 @@ static void __init rk3288_clk_init(struct device_node *np)
 		return;
 	}
 
-	/* Watchdog pclk is controlled by RK3288_SGRF_SOC_CON0[1]. */
-	clk = clk_register_fixed_factor(NULL, "pclk_wdt", "pclk_pd_alive", 0, 1, 1);
-	if (IS_ERR(clk))
-		pr_warn("%s: could not register clock pclk_wdt: %ld\n",
-			__func__, PTR_ERR(clk));
-	else
-		rockchip_clk_add_lookup(ctx, clk, PCLK_WDT);
-
 	rockchip_clk_register_plls(ctx, rk3288_pll_clks,
 				   ARRAY_SIZE(rk3288_pll_clks),
 				   RK3288_GRF_SOC_STATUS1);
diff --git a/drivers/clk/rockchip/clk-rk3368.c b/drivers/clk/rockchip/clk-rk3368.c
index d239bbc2fc77..b70de6cacac4 100644
--- a/drivers/clk/rockchip/clk-rk3368.c
+++ b/drivers/clk/rockchip/clk-rk3368.c
@@ -820,6 +820,9 @@ static struct rockchip_clk_branch rk3368_clk_branches[] __initdata = {
 	GATE(PCLK_GPIO2, "pclk_gpio2", "pclk_pd_alive", 0, RK3368_CLKGATE_CON(22), 2, GFLAGS),
 	GATE(PCLK_GPIO1, "pclk_gpio1", "pclk_pd_alive", 0, RK3368_CLKGATE_CON(22), 1, GFLAGS),
 
+	/* Watchdog pclk is controlled by sgrf_soc_con3[7]. */
+	SGRF_GATE(PCLK_WDT, "pclk_wdt", "pclk_pd_alive"),
+
 	/*
 	 * pclk_vio gates
 	 * pclk_vio comes from the exactly same source as hclk_vio
@@ -886,14 +889,6 @@ static void __init rk3368_clk_init(struct device_node *np)
 		return;
 	}
 
-	/* Watchdog pclk is controlled by sgrf_soc_con3[7]. */
-	clk = clk_register_fixed_factor(NULL, "pclk_wdt", "pclk_pd_alive", 0, 1, 1);
-	if (IS_ERR(clk))
-		pr_warn("%s: could not register clock pclk_wdt: %ld\n",
-			__func__, PTR_ERR(clk));
-	else
-		rockchip_clk_add_lookup(ctx, clk, PCLK_WDT);
-
 	rockchip_clk_register_plls(ctx, rk3368_pll_clks,
 				   ARRAY_SIZE(rk3368_pll_clks),
 				   RK3368_GRF_SOC_STATUS0);
diff --git a/drivers/clk/rockchip/clk-rk3399.c b/drivers/clk/rockchip/clk-rk3399.c
index 2322d712ba88..7aeda9814012 100644
--- a/drivers/clk/rockchip/clk-rk3399.c
+++ b/drivers/clk/rockchip/clk-rk3399.c
@@ -1304,6 +1304,9 @@ static struct rockchip_clk_branch rk3399_clk_branches[] __initdata = {
 	GATE(PCLK_PMU_INTR_ARB, "pclk_pmu_intr_arb", "pclk_alive", CLK_IGNORE_UNUSED, RK3399_CLKGATE_CON(31), 9, GFLAGS),
 	GATE(PCLK_SGRF, "pclk_sgrf", "pclk_alive", CLK_IGNORE_UNUSED, RK3399_CLKGATE_CON(31), 10, GFLAGS),
 
+	/* Watchdog pclk is controlled by RK3399 SECURE_GRF_SOC_CON3[8]. */
+	SGRF_GATE(PCLK_WDT, "pclk_wdt", "pclk_alive"),
+
 	GATE(SCLK_MIPIDPHY_REF, "clk_mipidphy_ref", "xin24m", 0, RK3399_CLKGATE_CON(11), 14, GFLAGS),
 	GATE(SCLK_DPHY_PLL, "clk_dphy_pll", "clk_mipidphy_ref", CLK_IGNORE_UNUSED, RK3399_CLKGATE_CON(21), 0, GFLAGS),
 
@@ -1546,14 +1549,6 @@ static void __init rk3399_clk_init(struct device_node *np)
 		return;
 	}
 
-	/* Watchdog pclk is controlled by RK3399 SECURE_GRF_SOC_CON3[8]. */
-	clk = clk_register_fixed_factor(NULL, "pclk_wdt", "pclk_alive", 0, 1, 1);
-	if (IS_ERR(clk))
-		pr_warn("%s: could not register clock pclk_wdt: %ld\n",
-			__func__, PTR_ERR(clk));
-	else
-		rockchip_clk_add_lookup(ctx, clk, PCLK_WDT);
-
 	rockchip_clk_register_plls(ctx, rk3399_pll_clks,
 				   ARRAY_SIZE(rk3399_pll_clks), -1);
 
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

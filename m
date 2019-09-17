Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09B7CB491C
	for <lists+linux-rockchip@lfdr.de>; Tue, 17 Sep 2019 10:19:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u9qGRjSPSKiXaF4lqBVSSN2NhO0rMutOa4vwmcGSnkA=; b=M1MTDrP+1aRx5j
	ULyNkbzgB4SIF590TWDsPEzMPuEJmz/jSSKFKYu6qBMdKxIXYsNTz1O7nFAv2d9ePBC0KR0zBBKlt
	wZTZYAiWzi8co50o6t2ocdlbHumF+OJsMqGPs2LSb5Rlkzc0cyv8IjlXxAcYYkAFcwv4v0l/kZOXw
	15fzYND+TzORiGHa2AnL8keJDH10PEZFkhpl/LCPs1fyqvE/NoajirqQC1BEuy3uQLtVtoZqY95TN
	fp0J54QRFylj483wvnKT7orCy5qUMMiDtrBK4IBDDdOK6o5zC6ZoUzpb8pc6q2G6jj9cuGjvleUHG
	5S3kgrsoEQ6hDP18aPFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iA8hx-0006u7-U2; Tue, 17 Sep 2019 08:19:33 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iA8ho-0006mI-5k
 for linux-rockchip@lists.infradead.org; Tue, 17 Sep 2019 08:19:26 +0000
Received: from ip5f5a6266.dynamic.kabel-deutschland.de ([95.90.98.102]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iA8hm-0005Uf-FF; Tue, 17 Sep 2019 10:19:22 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-clk@vger.kernel.org
Subject: [PATCH 3/5] clk: rockchip: move px30 critical clocks to correct clock
 controller
Date: Tue, 17 Sep 2019 10:19:01 +0200
Message-Id: <20190917081903.25139-3-heiko@sntech.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190917081903.25139-1-heiko@sntech.de>
References: <20190917081903.25139-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_011924_361962_79D765D8 
X-CRM114-Status: UNSURE (   9.39  )
X-CRM114-Notice: Please train this message.
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
Cc: Heiko Stuebner <heiko@sntech.de>, sboyd@kernel.org, mturquette@baylibre.com,
 zhangqing@rock-chips.com, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, finley.xiao@rock-chips.com,
 christoph.muellner@theobroma-systems.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

The clocks in the px30 critical clock section are from the regular cru not
the pmucru, so move them to the correct place.

Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 drivers/clk/rockchip/clk-px30.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/clk/rockchip/clk-px30.c b/drivers/clk/rockchip/clk-px30.c
index a973394f3d65..5c77da1e3abc 100644
--- a/drivers/clk/rockchip/clk-px30.c
+++ b/drivers/clk/rockchip/clk-px30.c
@@ -976,7 +976,7 @@ static struct rockchip_clk_branch px30_clk_pmu_branches[] __initdata = {
 	GATE(0, "pclk_cru_pmu", "pclk_pmu_pre", CLK_IGNORE_UNUSED, PX30_PMU_CLKGATE_CON(0), 8, GFLAGS),
 };
 
-static const char *const px30_pmucru_critical_clocks[] __initconst = {
+static const char *const px30_cru_critical_clocks[] __initconst = {
 	"aclk_bus_pre",
 	"pclk_bus_pre",
 	"hclk_bus_pre",
@@ -1021,6 +1021,9 @@ static void __init px30_clk_init(struct device_node *np)
 				     &px30_cpuclk_data, px30_cpuclk_rates,
 				     ARRAY_SIZE(px30_cpuclk_rates));
 
+	rockchip_clk_protect_critical(px30_cru_critical_clocks,
+				      ARRAY_SIZE(px30_cru_critical_clocks));
+
 	rockchip_register_softrst(np, 12, reg_base + PX30_SOFTRST_CON(0),
 				  ROCKCHIP_SOFTRST_HIWORD_MASK);
 
@@ -1053,9 +1056,6 @@ static void __init px30_pmu_clk_init(struct device_node *np)
 	rockchip_clk_register_branches(ctx, px30_clk_pmu_branches,
 				       ARRAY_SIZE(px30_clk_pmu_branches));
 
-	rockchip_clk_protect_critical(px30_pmucru_critical_clocks,
-				      ARRAY_SIZE(px30_pmucru_critical_clocks));
-
 	rockchip_clk_of_add_provider(np, ctx);
 }
 CLK_OF_DECLARE(px30_cru_pmu, "rockchip,px30-pmucru", px30_pmu_clk_init);
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E439B4919
	for <lists+linux-rockchip@lfdr.de>; Tue, 17 Sep 2019 10:19:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B93WdihJDU0AQp21Q0a/Ejz/1n8QTECactA4Y8NaqGQ=; b=Q3HTfRV9meuuD6
	JAyGlF5VyuatmDxhG35+ZoWP06hnsq3sml2U2zj0HGlRqZAN6rVjs8KIP05foNaAL72A28hSZ5h+Y
	U9P+XCRImNsfwFf4sEw5a7qkbaWn/QE9ZP03tBN3tut5Aw20L9/OuzaV1VYFhRODEaRg+aOjkBRED
	7y/a1Wovx7ZC8sf8owO2+W/T/BDqjJzMqXonFbmiiFhgdrIYjjQMwz6fktQ60Ha6sfXYhFS6ij33M
	Vku1lO/uTlX1crMfoyprUCqd1ymsywk62zUbf4qERK01Uk1CCc8wQZP4oMxkMydsPhVC1EJRuzRcQ
	WDuSXRCzVhw2nFrHEKzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iA8hr-0006o2-9X; Tue, 17 Sep 2019 08:19:27 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iA8hn-0006mH-S8
 for linux-rockchip@lists.infradead.org; Tue, 17 Sep 2019 08:19:25 +0000
Received: from ip5f5a6266.dynamic.kabel-deutschland.de ([95.90.98.102]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iA8hm-0005Uf-40; Tue, 17 Sep 2019 10:19:22 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-clk@vger.kernel.org
Subject: [PATCH 2/5] clk: rockchip: Add div50 clocks for px30 sdmmc, emmc,
 sdio and nandc
Date: Tue, 17 Sep 2019 10:19:00 +0200
Message-Id: <20190917081903.25139-2-heiko@sntech.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190917081903.25139-1-heiko@sntech.de>
References: <20190917081903.25139-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_011924_057564_CF92E0DC 
X-CRM114-Status: UNSURE (   8.90  )
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

From: Finley Xiao <finley.xiao@rock-chips.com>

Some IPs, such as NAND, EMMC, SDIO and SDMMC need clock of 50%  duty
cycle, divfree50 can generate clock of 50% duty cycle even in odd
value divisor.

Signed-off-by: Finley Xiao <finley.xiao@rock-chips.com>
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 drivers/clk/rockchip/clk-px30.c | 44 ++++++++++++++++++++++++++++++---
 1 file changed, 40 insertions(+), 4 deletions(-)

diff --git a/drivers/clk/rockchip/clk-px30.c b/drivers/clk/rockchip/clk-px30.c
index 3a501896b280..a973394f3d65 100644
--- a/drivers/clk/rockchip/clk-px30.c
+++ b/drivers/clk/rockchip/clk-px30.c
@@ -167,6 +167,10 @@ PNAME(mux_uart5_p)		= { "clk_uart5_src", "clk_uart5_np5", "clk_uart5_frac" };
 PNAME(mux_cif_out_p)		= { "xin24m", "dummy_cpll", "npll", "usb480m" };
 PNAME(mux_dclk_vopb_p)		= { "dclk_vopb_src", "dclk_vopb_frac", "xin24m" };
 PNAME(mux_dclk_vopl_p)		= { "dclk_vopl_src", "dclk_vopl_frac", "xin24m" };
+PNAME(mux_nandc_p)		= { "clk_nandc_div", "clk_nandc_div50" };
+PNAME(mux_sdio_p)		= { "clk_sdio_div", "clk_sdio_div50" };
+PNAME(mux_emmc_p)		= { "clk_emmc_div", "clk_emmc_div50" };
+PNAME(mux_sdmmc_p)		= { "clk_sdmmc_div", "clk_sdmmc_div50" };
 PNAME(mux_gmac_p)		= { "clk_gmac_src", "gmac_clkin" };
 PNAME(mux_gmac_rmii_sel_p)	= { "clk_gmac_rx_tx_div20", "clk_gmac_rx_tx_div2" };
 PNAME(mux_rtc32k_pmu_p)		= { "xin32k", "pmu_pvtm_32k", "clk_rtc32k_frac", };
@@ -460,16 +464,40 @@ static struct rockchip_clk_branch px30_clk_branches[] __initdata = {
 	/* PD_MMC_NAND */
 	GATE(HCLK_MMC_NAND, "hclk_mmc_nand", "hclk_peri_pre", 0,
 			PX30_CLKGATE_CON(6), 0, GFLAGS),
-	COMPOSITE(SCLK_NANDC, "clk_nandc", mux_gpll_cpll_npll_p, 0,
+	COMPOSITE(SCLK_NANDC_DIV, "clk_nandc_div", mux_gpll_cpll_npll_p, 0,
 			PX30_CLKSEL_CON(15), 6, 2, MFLAGS, 0, 5, DFLAGS,
+			PX30_CLKGATE_CON(5), 11, GFLAGS),
+	COMPOSITE(SCLK_NANDC_DIV50, "clk_nandc_div50", mux_gpll_cpll_npll_p, 0,
+			PX30_CLKSEL_CON(15), 6, 2, MFLAGS, 8, 5, DFLAGS,
+			PX30_CLKGATE_CON(5), 12, GFLAGS),
+	COMPOSITE_NODIV(SCLK_NANDC, "clk_nandc", mux_nandc_p,
+			CLK_SET_RATE_PARENT | CLK_SET_RATE_NO_REPARENT,
+			PX30_CLKSEL_CON(15), 15, 1, MFLAGS,
 			PX30_CLKGATE_CON(5), 13, GFLAGS),
 
-	COMPOSITE(SCLK_SDIO, "clk_sdio", mux_gpll_cpll_npll_xin24m_p, 0,
+	COMPOSITE(SCLK_SDIO_DIV, "clk_sdio_div", mux_gpll_cpll_npll_xin24m_p, 0,
 			PX30_CLKSEL_CON(18), 14, 2, MFLAGS, 0, 8, DFLAGS,
+			PX30_CLKGATE_CON(6), 1, GFLAGS),
+	COMPOSITE_DIV_OFFSET(SCLK_SDIO_DIV50, "clk_sdio_div50",
+			mux_gpll_cpll_npll_xin24m_p, 0,
+			PX30_CLKSEL_CON(18), 14, 2, MFLAGS,
+			PX30_CLKSEL_CON(19), 0, 8, DFLAGS,
+			PX30_CLKGATE_CON(6), 2, GFLAGS),
+	COMPOSITE_NODIV(SCLK_SDIO, "clk_sdio", mux_sdio_p,
+			CLK_SET_RATE_PARENT | CLK_SET_RATE_NO_REPARENT,
+			PX30_CLKSEL_CON(19), 15, 1, MFLAGS,
 			PX30_CLKGATE_CON(6), 3, GFLAGS),
 
-	COMPOSITE(SCLK_EMMC, "clk_emmc", mux_gpll_cpll_npll_xin24m_p, 0,
+	COMPOSITE(SCLK_EMMC_DIV, "clk_emmc_div", mux_gpll_cpll_npll_xin24m_p, 0,
 			PX30_CLKSEL_CON(20), 14, 2, MFLAGS, 0, 8, DFLAGS,
+			PX30_CLKGATE_CON(6), 4, GFLAGS),
+	COMPOSITE_DIV_OFFSET(SCLK_EMMC_DIV50, "clk_emmc_div50", mux_gpll_cpll_npll_xin24m_p, 0,
+			PX30_CLKSEL_CON(20), 14, 2, MFLAGS,
+			PX30_CLKSEL_CON(21), 0, 8, DFLAGS,
+			PX30_CLKGATE_CON(6), 5, GFLAGS),
+	COMPOSITE_NODIV(SCLK_EMMC, "clk_emmc", mux_emmc_p,
+			CLK_SET_RATE_PARENT | CLK_SET_RATE_NO_REPARENT,
+			PX30_CLKSEL_CON(21), 15, 1, MFLAGS,
 			PX30_CLKGATE_CON(6), 6, GFLAGS),
 
 	COMPOSITE(SCLK_SFC, "clk_sfc", mux_gpll_cpll_p, 0,
@@ -494,8 +522,16 @@ static struct rockchip_clk_branch px30_clk_branches[] __initdata = {
 	/* PD_SDCARD */
 	GATE(0, "hclk_sdmmc_pre", "hclk_peri_pre", 0,
 			PX30_CLKGATE_CON(6), 12, GFLAGS),
-	COMPOSITE(SCLK_SDMMC, "clk_sdmmc", mux_gpll_cpll_npll_xin24m_p, 0,
+	COMPOSITE(SCLK_SDMMC_DIV, "clk_sdmmc_div", mux_gpll_cpll_npll_xin24m_p, 0,
 			PX30_CLKSEL_CON(16), 14, 2, MFLAGS, 0, 8, DFLAGS,
+			PX30_CLKGATE_CON(6), 13, GFLAGS),
+	COMPOSITE_DIV_OFFSET(SCLK_SDMMC_DIV50, "clk_sdmmc_div50", mux_gpll_cpll_npll_xin24m_p, 0,
+			PX30_CLKSEL_CON(16), 14, 2, MFLAGS,
+			PX30_CLKSEL_CON(17), 0, 8, DFLAGS,
+			PX30_CLKGATE_CON(6), 14, GFLAGS),
+	COMPOSITE_NODIV(SCLK_SDMMC, "clk_sdmmc", mux_sdmmc_p,
+			CLK_SET_RATE_PARENT | CLK_SET_RATE_NO_REPARENT,
+			PX30_CLKSEL_CON(17), 15, 1, MFLAGS,
 			PX30_CLKGATE_CON(6), 15, GFLAGS),
 
 	/* PD_USB */
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

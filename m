Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07C0EBFD68
	for <lists+linux-rockchip@lfdr.de>; Fri, 27 Sep 2019 05:02:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=mD8n7Cmwqzu2xkAQKo7Yhq6oDkWVOcrmJrFi+7h6m4I=; b=kUk9Ck0sPHkQGjZbd3Rz261WFH
	I8eyyrEj3gHQ59W94KWnF4g/1TJkRr9coZNNiyRCtrgYxDTbDOLKMI7GOQMuPS6xhBlfcFqPMuexh
	R1H7kniaKeLjqnxiWthcfMN0jzfJi3ZFGL5os3RtpkyhIAZ38Y/7vf2zaNgL4DK1ZrBkzOmBx7j7H
	4+QzidFZMh8vjb7/xeeK1MC3PbG88lLvCAi4WH9P8YuWOcKZ7sofeKXfsubQoTB3tPY1kByQ6kS4a
	EeBuToUt3BKyAvmt6bMWC4kV1AAtU5gN1bwuLYuhJLdWxobmqEp3Zr8nJuIqvookM+dn822/7itOt
	WC3544fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDgW7-0000Av-Il; Fri, 27 Sep 2019 03:01:59 +0000
Received: from lucky1.263xmail.com ([211.157.147.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDgV0-0007by-Pd; Fri, 27 Sep 2019 03:00:55 +0000
Received: from localhost (unknown [192.168.167.158])
 by lucky1.263xmail.com (Postfix) with ESMTP id 873D844240;
 Fri, 27 Sep 2019 11:00:38 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P5565T139972115928832S1569553235679252_; 
 Fri, 27 Sep 2019 11:00:38 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <3e6fd3092cac43f27804b942b4c1bc28>
X-RL-SENDER: zhangqing@rock-chips.com
X-SENDER: zhangqing@rock-chips.com
X-LOGIN-NAME: zhangqing@rock-chips.com
X-FST-TO: heiko@sntech.de
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
From: Elaine Zhang <zhangqing@rock-chips.com>
To: heiko@sntech.de
Subject: [PATCH v3 1/5] clk: rockchip: Add supprot to limit input rate for
 fractional divider
Date: Fri, 27 Sep 2019 11:00:40 +0800
Message-Id: <1569553244-3165-2-git-send-email-zhangqing@rock-chips.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1569553244-3165-1-git-send-email-zhangqing@rock-chips.com>
References: <1569553244-3165-1-git-send-email-zhangqing@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_200051_528634_A4E58049 
X-CRM114-Status: UNSURE (   9.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.157.147.134 listed in list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: huangtao@rock-chips.com, xxx@rock-chips.com, xf@rock-chips.com,
 sboyd@kernel.org, mturquette@baylibre.com,
 Elaine Zhang <zhangqing@rock-chips.com>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Finley Xiao <finley.xiao@rock-chips.com>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

From: Finley Xiao <finley.xiao@rock-chips.com>

From Rockchips fractional divider usage, some clocks can be generated
by fractional divider, but the input clock frequency of fractional
divider should be less than a specified value.

Signed-off-by: Finley Xiao <finley.xiao@rock-chips.com>
Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
---
 drivers/clk/rockchip/clk-px30.c   | 29 ++++++++++++------------
 drivers/clk/rockchip/clk-rk3036.c | 13 ++++++-----
 drivers/clk/rockchip/clk-rk3128.c | 15 ++++++++-----
 drivers/clk/rockchip/clk-rk3188.c | 24 +++++++++++---------
 drivers/clk/rockchip/clk-rk3228.c | 18 +++++++++------
 drivers/clk/rockchip/clk-rk3288.c | 19 +++++++++-------
 drivers/clk/rockchip/clk-rk3308.c | 46 ++++++++++++++++++++++-----------------
 drivers/clk/rockchip/clk-rk3328.c | 17 +++++++++------
 drivers/clk/rockchip/clk-rk3368.c | 17 +++++++++------
 drivers/clk/rockchip/clk-rk3399.c | 32 ++++++++++++++++-----------
 drivers/clk/rockchip/clk-rv1108.c | 14 +++++++-----
 drivers/clk/rockchip/clk.c        | 21 +++++++++++++++---
 drivers/clk/rockchip/clk.h        | 10 ++++++---
 include/linux/clk-provider.h      |  2 ++
 14 files changed, 168 insertions(+), 109 deletions(-)

diff --git a/drivers/clk/rockchip/clk-px30.c b/drivers/clk/rockchip/clk-px30.c
index 3a501896b280..6c2f53dc73b6 100644
--- a/drivers/clk/rockchip/clk-px30.c
+++ b/drivers/clk/rockchip/clk-px30.c
@@ -13,6 +13,7 @@
 #include "clk.h"
 
 #define PX30_GRF_SOC_STATUS0		0x480
+#define PX30_FRAC_MAX_PRATE		600000000
 
 enum px30_plls {
 	apll, dpll, cpll, npll, apll_b_h, apll_b_l,
@@ -420,7 +421,7 @@ enum px30_pmu_plls {
 	COMPOSITE_FRACMUX(0, "dclk_vopb_frac", "dclk_vopb_src", CLK_SET_RATE_PARENT,
 			PX30_CLKSEL_CON(6), 0,
 			PX30_CLKGATE_CON(2), 3, GFLAGS,
-			&px30_dclk_vopb_fracmux),
+			&px30_dclk_vopb_fracmux, 0),
 	GATE(DCLK_VOPB, "dclk_vopb", "dclk_vopb_mux", CLK_SET_RATE_PARENT,
 			PX30_CLKGATE_CON(2), 4, GFLAGS),
 	COMPOSITE(0, "dclk_vopl_src", mux_npll_cpll_p, 0,
@@ -429,7 +430,7 @@ enum px30_pmu_plls {
 	COMPOSITE_FRACMUX(0, "dclk_vopl_frac", "dclk_vopl_src", CLK_SET_RATE_PARENT,
 			PX30_CLKSEL_CON(9), 0,
 			PX30_CLKGATE_CON(2), 7, GFLAGS,
-			&px30_dclk_vopl_fracmux),
+			&px30_dclk_vopl_fracmux, 0),
 	GATE(DCLK_VOPL, "dclk_vopl", "dclk_vopl_mux", CLK_SET_RATE_PARENT,
 			PX30_CLKGATE_CON(2), 8, GFLAGS),
 
@@ -555,7 +556,7 @@ enum px30_pmu_plls {
 	COMPOSITE_FRACMUX(0, "clk_pdm_frac", "clk_pdm_src", CLK_SET_RATE_PARENT,
 			PX30_CLKSEL_CON(27), 0,
 			PX30_CLKGATE_CON(9), 10, GFLAGS,
-			&px30_pdm_fracmux),
+			&px30_pdm_fracmux, PX30_FRAC_MAX_PRATE),
 	GATE(SCLK_PDM, "clk_pdm", "clk_pdm_mux", CLK_SET_RATE_PARENT,
 			PX30_CLKGATE_CON(9), 11, GFLAGS),
 
@@ -565,7 +566,7 @@ enum px30_pmu_plls {
 	COMPOSITE_FRACMUX(0, "clk_i2s0_tx_frac", "clk_i2s0_tx_src", CLK_SET_RATE_PARENT,
 			PX30_CLKSEL_CON(29), 0,
 			PX30_CLKGATE_CON(9), 13, GFLAGS,
-			&px30_i2s0_tx_fracmux),
+			&px30_i2s0_tx_fracmux, PX30_FRAC_MAX_PRATE),
 	COMPOSITE_NODIV(SCLK_I2S0_TX, "clk_i2s0_tx", mux_i2s0_tx_rx_p, CLK_SET_RATE_PARENT,
 			PX30_CLKSEL_CON(28), 12, 1, MFLAGS,
 			PX30_CLKGATE_CON(9), 14, GFLAGS),
@@ -581,7 +582,7 @@ enum px30_pmu_plls {
 	COMPOSITE_FRACMUX(0, "clk_i2s0_rx_frac", "clk_i2s0_rx_src", CLK_SET_RATE_PARENT,
 			PX30_CLKSEL_CON(59), 0,
 			PX30_CLKGATE_CON(17), 1, GFLAGS,
-			&px30_i2s0_rx_fracmux),
+			&px30_i2s0_rx_fracmux, PX30_FRAC_MAX_PRATE),
 	COMPOSITE_NODIV(SCLK_I2S0_RX, "clk_i2s0_rx", mux_i2s0_rx_tx_p, CLK_SET_RATE_PARENT,
 			PX30_CLKSEL_CON(58), 12, 1, MFLAGS,
 			PX30_CLKGATE_CON(17), 2, GFLAGS),
@@ -597,7 +598,7 @@ enum px30_pmu_plls {
 	COMPOSITE_FRACMUX(0, "clk_i2s1_frac", "clk_i2s1_src", CLK_SET_RATE_PARENT,
 			PX30_CLKSEL_CON(31), 0,
 			PX30_CLKGATE_CON(10), 1, GFLAGS,
-			&px30_i2s1_fracmux),
+			&px30_i2s1_fracmux, PX30_FRAC_MAX_PRATE),
 	GATE(SCLK_I2S1, "clk_i2s1", "clk_i2s1_mux", CLK_SET_RATE_PARENT,
 			PX30_CLKGATE_CON(10), 2, GFLAGS),
 	COMPOSITE_NODIV(0, "clk_i2s1_out_pre", mux_i2s1_out_p, 0,
@@ -612,7 +613,7 @@ enum px30_pmu_plls {
 	COMPOSITE_FRACMUX(0, "clk_i2s2_frac", "clk_i2s2_src", CLK_SET_RATE_PARENT,
 			PX30_CLKSEL_CON(33), 0,
 			PX30_CLKGATE_CON(10), 5, GFLAGS,
-			&px30_i2s2_fracmux),
+			&px30_i2s2_fracmux, PX30_FRAC_MAX_PRATE),
 	GATE(SCLK_I2S2, "clk_i2s2", "clk_i2s2_mux", CLK_SET_RATE_PARENT,
 			PX30_CLKGATE_CON(10), 6, GFLAGS),
 	COMPOSITE_NODIV(0, "clk_i2s2_out_pre", mux_i2s2_out_p, 0,
@@ -630,7 +631,7 @@ enum px30_pmu_plls {
 	COMPOSITE_FRACMUX(0, "clk_uart1_frac", "clk_uart1_src", CLK_SET_RATE_PARENT,
 			PX30_CLKSEL_CON(36), 0,
 			PX30_CLKGATE_CON(10), 14, GFLAGS,
-			&px30_uart1_fracmux),
+			&px30_uart1_fracmux, PX30_FRAC_MAX_PRATE),
 	GATE(SCLK_UART1, "clk_uart1", "clk_uart1_mux", CLK_SET_RATE_PARENT,
 			PX30_CLKGATE_CON(10), 15, GFLAGS),
 
@@ -643,7 +644,7 @@ enum px30_pmu_plls {
 	COMPOSITE_FRACMUX(0, "clk_uart2_frac", "clk_uart2_src", CLK_SET_RATE_PARENT,
 			PX30_CLKSEL_CON(39), 0,
 			PX30_CLKGATE_CON(11), 2, GFLAGS,
-			&px30_uart2_fracmux),
+			&px30_uart2_fracmux, PX30_FRAC_MAX_PRATE),
 	GATE(SCLK_UART2, "clk_uart2", "clk_uart2_mux", CLK_SET_RATE_PARENT,
 			PX30_CLKGATE_CON(11), 3, GFLAGS),
 
@@ -656,7 +657,7 @@ enum px30_pmu_plls {
 	COMPOSITE_FRACMUX(0, "clk_uart3_frac", "clk_uart3_src", CLK_SET_RATE_PARENT,
 			PX30_CLKSEL_CON(42), 0,
 			PX30_CLKGATE_CON(11), 6, GFLAGS,
-			&px30_uart3_fracmux),
+			&px30_uart3_fracmux, PX30_FRAC_MAX_PRATE),
 	GATE(SCLK_UART3, "clk_uart3", "clk_uart3_mux", CLK_SET_RATE_PARENT,
 			PX30_CLKGATE_CON(11), 7, GFLAGS),
 
@@ -669,7 +670,7 @@ enum px30_pmu_plls {
 	COMPOSITE_FRACMUX(0, "clk_uart4_frac", "clk_uart4_src", CLK_SET_RATE_PARENT,
 			PX30_CLKSEL_CON(45), 0,
 			PX30_CLKGATE_CON(11), 10, GFLAGS,
-			&px30_uart4_fracmux),
+			&px30_uart4_fracmux, PX30_FRAC_MAX_PRATE),
 	GATE(SCLK_UART4, "clk_uart4", "clk_uart4_mux", CLK_SET_RATE_PARENT,
 			PX30_CLKGATE_CON(11), 11, GFLAGS),
 
@@ -682,7 +683,7 @@ enum px30_pmu_plls {
 	COMPOSITE_FRACMUX(0, "clk_uart5_frac", "clk_uart5_src", CLK_SET_RATE_PARENT,
 			PX30_CLKSEL_CON(48), 0,
 			PX30_CLKGATE_CON(11), 14, GFLAGS,
-			&px30_uart5_fracmux),
+			&px30_uart5_fracmux, PX30_FRAC_MAX_PRATE),
 	GATE(SCLK_UART5, "clk_uart5", "clk_uart5_mux", CLK_SET_RATE_PARENT,
 			PX30_CLKGATE_CON(11), 15, GFLAGS),
 
@@ -882,7 +883,7 @@ enum px30_pmu_plls {
 	COMPOSITE_FRACMUX(0, "clk_rtc32k_frac", "xin24m", CLK_IGNORE_UNUSED,
 			PX30_PMU_CLKSEL_CON(1), 0,
 			PX30_PMU_CLKGATE_CON(0), 13, GFLAGS,
-			&px30_rtc32k_pmu_fracmux),
+			&px30_rtc32k_pmu_fracmux, 0),
 
 	COMPOSITE_NOMUX(XIN24M_DIV, "xin24m_div", "xin24m", CLK_IGNORE_UNUSED,
 			PX30_PMU_CLKSEL_CON(0), 8, 5, DFLAGS,
@@ -904,7 +905,7 @@ enum px30_pmu_plls {
 	COMPOSITE_FRACMUX(0, "clk_uart0_frac", "clk_uart0_pmu_src", CLK_SET_RATE_PARENT,
 			PX30_PMU_CLKSEL_CON(5), 0,
 			PX30_PMU_CLKGATE_CON(1), 2, GFLAGS,
-			&px30_uart0_pmu_fracmux),
+			&px30_uart0_pmu_fracmux, PX30_FRAC_MAX_PRATE),
 	GATE(SCLK_UART0_PMU, "clk_uart0_pmu", "clk_uart0_pmu_mux", CLK_SET_RATE_PARENT,
 			PX30_PMU_CLKGATE_CON(1), 3, GFLAGS),
 
diff --git a/drivers/clk/rockchip/clk-rk3036.c b/drivers/clk/rockchip/clk-rk3036.c
index 6a46f85ad837..80876c8f8c9d 100644
--- a/drivers/clk/rockchip/clk-rk3036.c
+++ b/drivers/clk/rockchip/clk-rk3036.c
@@ -16,6 +16,9 @@
 #include "clk.h"
 
 #define RK3036_GRF_SOC_STATUS0	0x14c
+#define RK3036_UART_FRAC_MAX_PRATE	600000000
+#define RK3036_I2S_FRAC_MAX_PRATE	600000000
+#define RK3036_SPDIF_FRAC_MAX_PRATE	600000000
 
 enum rk3036_plls {
 	apll, dpll, gpll,
@@ -248,15 +251,15 @@ enum rk3036_plls {
 	COMPOSITE_FRACMUX(0, "uart0_frac", "uart0_src", CLK_SET_RATE_PARENT,
 			RK2928_CLKSEL_CON(17), 0,
 			RK2928_CLKGATE_CON(1), 9, GFLAGS,
-			&rk3036_uart0_fracmux),
+			&rk3036_uart0_fracmux, RK3036_UART_FRAC_MAX_PRATE),
 	COMPOSITE_FRACMUX(0, "uart1_frac", "uart1_src", CLK_SET_RATE_PARENT,
 			RK2928_CLKSEL_CON(18), 0,
 			RK2928_CLKGATE_CON(1), 11, GFLAGS,
-			&rk3036_uart1_fracmux),
+			&rk3036_uart1_fracmux, RK3036_UART_FRAC_MAX_PRATE),
 	COMPOSITE_FRACMUX(0, "uart2_frac", "uart2_src", CLK_SET_RATE_PARENT,
 			RK2928_CLKSEL_CON(19), 0,
 			RK2928_CLKGATE_CON(1), 13, GFLAGS,
-			&rk3036_uart2_fracmux),
+			&rk3036_uart2_fracmux, RK3036_UART_FRAC_MAX_PRATE),
 
 	COMPOSITE(0, "aclk_vcodec", mux_pll_src_3plls_p, 0,
 			RK2928_CLKSEL_CON(32), 14, 2, MFLAGS, 8, 5, DFLAGS,
@@ -309,7 +312,7 @@ enum rk3036_plls {
 	COMPOSITE_FRACMUX(0, "i2s_frac", "i2s_src", CLK_SET_RATE_PARENT,
 			RK2928_CLKSEL_CON(7), 0,
 			RK2928_CLKGATE_CON(0), 10, GFLAGS,
-			&rk3036_i2s_fracmux),
+			&rk3036_i2s_fracmux, RK3036_I2S_FRAC_MAX_PRATE),
 	COMPOSITE_NODIV(SCLK_I2S_OUT, "i2s_clkout", mux_i2s_clkout_p, 0,
 			RK2928_CLKSEL_CON(3), 12, 1, MFLAGS,
 			RK2928_CLKGATE_CON(0), 13, GFLAGS),
@@ -322,7 +325,7 @@ enum rk3036_plls {
 	COMPOSITE_FRACMUX(0, "spdif_frac", "spdif_src", 0,
 			RK2928_CLKSEL_CON(9), 0,
 			RK2928_CLKGATE_CON(2), 12, GFLAGS,
-			&rk3036_spdif_fracmux),
+			&rk3036_spdif_fracmux, RK3036_SPDIF_FRAC_MAX_PRATE),
 
 	GATE(SCLK_OTGPHY0, "sclk_otgphy0", "xin12m", CLK_IGNORE_UNUSED,
 			RK2928_CLKGATE_CON(1), 5, GFLAGS),
diff --git a/drivers/clk/rockchip/clk-rk3128.c b/drivers/clk/rockchip/clk-rk3128.c
index 4b1122e98e16..9eecd56d06db 100644
--- a/drivers/clk/rockchip/clk-rk3128.c
+++ b/drivers/clk/rockchip/clk-rk3128.c
@@ -13,6 +13,9 @@
 #include "clk.h"
 
 #define RK3128_GRF_SOC_STATUS0	0x14c
+#define RK3128_UART_FRAC_MAX_PRATE	600000000
+#define RK3128_I2S_FRAC_MAX_PRATE	600000000
+#define RK3128_SPDIF_FRAC_MAX_PRATE	600000000
 
 enum rk3128_plls {
 	apll, dpll, cpll, gpll,
@@ -359,7 +362,7 @@ enum rk3128_plls {
 	COMPOSITE_FRACMUX(0, "i2s0_frac", "i2s0_src", CLK_SET_RATE_PARENT,
 			RK2928_CLKSEL_CON(8), 0,
 			RK2928_CLKGATE_CON(4), 5, GFLAGS,
-			&rk3128_i2s0_fracmux),
+			&rk3128_i2s0_fracmux, RK3128_I2S_FRAC_MAX_PRATE),
 	GATE(SCLK_I2S0, "sclk_i2s0", "i2s0_pre", CLK_SET_RATE_PARENT,
 			RK2928_CLKGATE_CON(4), 6, GFLAGS),
 
@@ -369,7 +372,7 @@ enum rk3128_plls {
 	COMPOSITE_FRACMUX(0, "i2s1_frac", "i2s1_src", CLK_SET_RATE_PARENT,
 			RK2928_CLKSEL_CON(7), 0,
 			RK2928_CLKGATE_CON(0), 10, GFLAGS,
-			&rk3128_i2s1_fracmux),
+			&rk3128_i2s1_fracmux, RK3128_I2S_FRAC_MAX_PRATE),
 	GATE(SCLK_I2S1, "sclk_i2s1", "i2s1_pre", CLK_SET_RATE_PARENT,
 			RK2928_CLKGATE_CON(0), 14, GFLAGS),
 	COMPOSITE_NODIV(SCLK_I2S_OUT, "i2s_out", mux_i2s_out_p, 0,
@@ -382,7 +385,7 @@ enum rk3128_plls {
 	COMPOSITE_FRACMUX(0, "spdif_frac", "sclk_spdif_src", CLK_SET_RATE_PARENT,
 			RK2928_CLKSEL_CON(20), 0,
 			RK2928_CLKGATE_CON(2), 12, GFLAGS,
-			&rk3128_spdif_fracmux),
+			&rk3128_spdif_fracmux, RK3128_SPDIF_FRAC_MAX_PRATE),
 
 	GATE(0, "jtag", "ext_jtag", CLK_IGNORE_UNUSED,
 			RK2928_CLKGATE_CON(1), 3, GFLAGS),
@@ -419,15 +422,15 @@ enum rk3128_plls {
 	COMPOSITE_FRACMUX(0, "uart0_frac", "uart0_src", CLK_SET_RATE_PARENT,
 			RK2928_CLKSEL_CON(17), 0,
 			RK2928_CLKGATE_CON(1), 9, GFLAGS,
-			&rk3128_uart0_fracmux),
+			&rk3128_uart0_fracmux, RK3128_UART_FRAC_MAX_PRATE),
 	COMPOSITE_FRACMUX(0, "uart1_frac", "uart1_src", CLK_SET_RATE_PARENT,
 			RK2928_CLKSEL_CON(18), 0,
 			RK2928_CLKGATE_CON(1), 11, GFLAGS,
-			&rk3128_uart1_fracmux),
+			&rk3128_uart1_fracmux, RK3128_UART_FRAC_MAX_PRATE),
 	COMPOSITE_FRACMUX(0, "uart2_frac", "uart2_src", CLK_SET_RATE_PARENT,
 			RK2928_CLKSEL_CON(19), 0,
 			RK2928_CLKGATE_CON(1), 13, GFLAGS,
-			&rk3128_uart2_fracmux),
+			&rk3128_uart2_fracmux, RK3128_UART_FRAC_MAX_PRATE),
 
 	COMPOSITE(SCLK_MAC_SRC, "sclk_gmac_src", mux_pll_src_3plls_p, 0,
 			RK2928_CLKSEL_CON(5), 6, 2, MFLAGS, 0, 5, DFLAGS,
diff --git a/drivers/clk/rockchip/clk-rk3188.c b/drivers/clk/rockchip/clk-rk3188.c
index 77aebfb1d6d5..4823f5ca943d 100644
--- a/drivers/clk/rockchip/clk-rk3188.c
+++ b/drivers/clk/rockchip/clk-rk3188.c
@@ -14,6 +14,10 @@
 
 #define RK3066_GRF_SOC_STATUS	0x15c
 #define RK3188_GRF_SOC_STATUS	0xac
+#define RK3188_UART_FRAC_MAX_PRATE	600000000
+#define RK3188_I2S_FRAC_MAX_PRATE	600000000
+#define RK3188_SPDIF_FRAC_MAX_PRATE	600000000
+#define RK3188_HSADC_FRAC_MAX_PRATE	300000000
 
 enum rk3188_plls {
 	apll, cpll, dpll, gpll,
@@ -363,7 +367,7 @@ enum rk3188_plls {
 	COMPOSITE_FRACMUX(0, "hsadc_frac", "hsadc_src", 0,
 			RK2928_CLKSEL_CON(23), 0,
 			RK2928_CLKGATE_CON(2), 7, GFLAGS,
-			&common_hsadc_out_fracmux),
+			&common_hsadc_out_fracmux, RK3188_HSADC_FRAC_MAX_PRATE),
 	INVERTER(SCLK_HSADC, "sclk_hsadc", "sclk_hsadc_out",
 			RK2928_CLKSEL_CON(22), 7, IFLAGS),
 
@@ -377,7 +381,7 @@ enum rk3188_plls {
 	COMPOSITE_FRACMUX(0, "spdif_frac", "spdif_pre", CLK_SET_RATE_PARENT,
 			RK2928_CLKSEL_CON(9), 0,
 			RK2928_CLKGATE_CON(0), 14, GFLAGS,
-			&common_spdif_fracmux),
+			&common_spdif_fracmux, RK3188_SPDIF_FRAC_MAX_PRATE),
 
 	/*
 	 * Clock-Architecture Diagram 4
@@ -411,28 +415,28 @@ enum rk3188_plls {
 	COMPOSITE_FRACMUX(0, "uart0_frac", "uart0_pre", 0,
 			RK2928_CLKSEL_CON(17), 0,
 			RK2928_CLKGATE_CON(1), 9, GFLAGS,
-			&common_uart0_fracmux),
+			&common_uart0_fracmux, RK3188_UART_FRAC_MAX_PRATE),
 	COMPOSITE_NOMUX(0, "uart1_pre", "uart_src", 0,
 			RK2928_CLKSEL_CON(14), 0, 7, DFLAGS,
 			RK2928_CLKGATE_CON(1), 10, GFLAGS),
 	COMPOSITE_FRACMUX(0, "uart1_frac", "uart1_pre", 0,
 			RK2928_CLKSEL_CON(18), 0,
 			RK2928_CLKGATE_CON(1), 11, GFLAGS,
-			&common_uart1_fracmux),
+			&common_uart1_fracmux, RK3188_UART_FRAC_MAX_PRATE),
 	COMPOSITE_NOMUX(0, "uart2_pre", "uart_src", 0,
 			RK2928_CLKSEL_CON(15), 0, 7, DFLAGS,
 			RK2928_CLKGATE_CON(1), 12, GFLAGS),
 	COMPOSITE_FRACMUX(0, "uart2_frac", "uart2_pre", 0,
 			RK2928_CLKSEL_CON(19), 0,
 			RK2928_CLKGATE_CON(1), 13, GFLAGS,
-			&common_uart2_fracmux),
+			&common_uart2_fracmux, RK3188_UART_FRAC_MAX_PRATE),
 	COMPOSITE_NOMUX(0, "uart3_pre", "uart_src", 0,
 			RK2928_CLKSEL_CON(16), 0, 7, DFLAGS,
 			RK2928_CLKGATE_CON(1), 14, GFLAGS),
 	COMPOSITE_FRACMUX(0, "uart3_frac", "uart3_pre", 0,
 			RK2928_CLKSEL_CON(20), 0,
 			RK2928_CLKGATE_CON(1), 15, GFLAGS,
-			&common_uart3_fracmux),
+			&common_uart3_fracmux, RK3188_UART_FRAC_MAX_PRATE),
 
 	GATE(SCLK_JTAG, "jtag", "ext_jtag", 0, RK2928_CLKGATE_CON(1), 3, GFLAGS),
 
@@ -618,21 +622,21 @@ enum rk3188_plls {
 	COMPOSITE_FRACMUX(0, "i2s0_frac", "i2s0_pre", 0,
 			RK2928_CLKSEL_CON(6), 0,
 			RK2928_CLKGATE_CON(0), 8, GFLAGS,
-			&rk3066a_i2s0_fracmux),
+			&rk3066a_i2s0_fracmux, RK3188_I2S_FRAC_MAX_PRATE),
 	COMPOSITE_NOMUX(0, "i2s1_pre", "i2s_src", 0,
 			RK2928_CLKSEL_CON(3), 0, 7, DFLAGS,
 			RK2928_CLKGATE_CON(0), 9, GFLAGS),
 	COMPOSITE_FRACMUX(0, "i2s1_frac", "i2s1_pre", 0,
 			RK2928_CLKSEL_CON(7), 0,
 			RK2928_CLKGATE_CON(0), 10, GFLAGS,
-			&rk3066a_i2s1_fracmux),
+			&rk3066a_i2s1_fracmux, RK3188_I2S_FRAC_MAX_PRATE),
 	COMPOSITE_NOMUX(0, "i2s2_pre", "i2s_src", 0,
 			RK2928_CLKSEL_CON(4), 0, 7, DFLAGS,
 			RK2928_CLKGATE_CON(0), 11, GFLAGS),
 	COMPOSITE_FRACMUX(0, "i2s2_frac", "i2s2_pre", 0,
 			RK2928_CLKSEL_CON(8), 0,
 			RK2928_CLKGATE_CON(0), 12, GFLAGS,
-			&rk3066a_i2s2_fracmux),
+			&rk3066a_i2s2_fracmux, RK3188_I2S_FRAC_MAX_PRATE),
 
 	GATE(HCLK_I2S1, "hclk_i2s1", "hclk_cpu", 0, RK2928_CLKGATE_CON(7), 3, GFLAGS),
 	GATE(HCLK_I2S2, "hclk_i2s2", "hclk_cpu", 0, RK2928_CLKGATE_CON(7), 4, GFLAGS),
@@ -726,7 +730,7 @@ enum rk3188_plls {
 	COMPOSITE_FRACMUX(0, "i2s0_frac", "i2s0_pre", CLK_SET_RATE_PARENT,
 			RK2928_CLKSEL_CON(7), 0,
 			RK2928_CLKGATE_CON(0), 10, GFLAGS,
-			&rk3188_i2s0_fracmux),
+			&rk3188_i2s0_fracmux, RK3188_I2S_FRAC_MAX_PRATE),
 
 	GATE(0, "hclk_imem0", "hclk_cpu", 0, RK2928_CLKGATE_CON(4), 14, GFLAGS),
 	GATE(0, "hclk_imem1", "hclk_cpu", 0, RK2928_CLKGATE_CON(4), 15, GFLAGS),
diff --git a/drivers/clk/rockchip/clk-rk3228.c b/drivers/clk/rockchip/clk-rk3228.c
index d17cfb7a3ff4..f5178c77de3a 100644
--- a/drivers/clk/rockchip/clk-rk3228.c
+++ b/drivers/clk/rockchip/clk-rk3228.c
@@ -15,6 +15,10 @@
 
 #define RK3228_GRF_SOC_STATUS0	0x480
 
+#define RK3228_UART_FRAC_MAX_PRATE	600000000
+#define RK3228_SPDIF_FRAC_MAX_PRATE	600000000
+#define RK3228_I2S_FRAC_MAX_PRATE	600000000
+
 enum rk3228_plls {
 	apll, dpll, cpll, gpll,
 };
@@ -421,7 +425,7 @@ enum rk3228_plls {
 	COMPOSITE_FRACMUX(0, "i2s0_frac", "i2s0_src", CLK_SET_RATE_PARENT,
 			RK2928_CLKSEL_CON(8), 0,
 			RK2928_CLKGATE_CON(0), 4, GFLAGS,
-			&rk3228_i2s0_fracmux),
+			&rk3228_i2s0_fracmux, RK3228_I2S_FRAC_MAX_PRATE),
 	GATE(SCLK_I2S0, "sclk_i2s0", "i2s0_pre", CLK_SET_RATE_PARENT,
 			RK2928_CLKGATE_CON(0), 5, GFLAGS),
 
@@ -431,7 +435,7 @@ enum rk3228_plls {
 	COMPOSITE_FRACMUX(0, "i2s1_frac", "i2s1_src", CLK_SET_RATE_PARENT,
 			RK2928_CLKSEL_CON(7), 0,
 			RK2928_CLKGATE_CON(0), 11, GFLAGS,
-			&rk3228_i2s1_fracmux),
+			&rk3228_i2s1_fracmux, RK3228_I2S_FRAC_MAX_PRATE),
 	GATE(SCLK_I2S1, "sclk_i2s1", "i2s1_pre", CLK_SET_RATE_PARENT,
 			RK2928_CLKGATE_CON(0), 14, GFLAGS),
 	COMPOSITE_NODIV(SCLK_I2S_OUT, "i2s_out", mux_i2s_out_p, 0,
@@ -444,7 +448,7 @@ enum rk3228_plls {
 	COMPOSITE_FRACMUX(0, "i2s2_frac", "i2s2_src", CLK_SET_RATE_PARENT,
 			RK2928_CLKSEL_CON(30), 0,
 			RK2928_CLKGATE_CON(0), 8, GFLAGS,
-			&rk3228_i2s2_fracmux),
+			&rk3228_i2s2_fracmux, RK3228_I2S_FRAC_MAX_PRATE),
 	GATE(SCLK_I2S2, "sclk_i2s2", "i2s2_pre", CLK_SET_RATE_PARENT,
 			RK2928_CLKGATE_CON(0), 9, GFLAGS),
 
@@ -454,7 +458,7 @@ enum rk3228_plls {
 	COMPOSITE_FRACMUX(0, "spdif_frac", "sclk_spdif_src", CLK_SET_RATE_PARENT,
 			RK2928_CLKSEL_CON(20), 0,
 			RK2928_CLKGATE_CON(2), 12, GFLAGS,
-			&rk3228_spdif_fracmux),
+			&rk3228_spdif_fracmux, RK3228_SPDIF_FRAC_MAX_PRATE),
 
 	GATE(0, "jtag", "ext_jtag", CLK_IGNORE_UNUSED,
 			RK2928_CLKGATE_CON(1), 3, GFLAGS),
@@ -496,15 +500,15 @@ enum rk3228_plls {
 	COMPOSITE_FRACMUX(0, "uart0_frac", "uart0_src", CLK_SET_RATE_PARENT,
 			RK2928_CLKSEL_CON(17), 0,
 			RK2928_CLKGATE_CON(1), 9, GFLAGS,
-			&rk3228_uart0_fracmux),
+			&rk3228_uart0_fracmux, RK3228_UART_FRAC_MAX_PRATE),
 	COMPOSITE_FRACMUX(0, "uart1_frac", "uart1_src", CLK_SET_RATE_PARENT,
 			RK2928_CLKSEL_CON(18), 0,
 			RK2928_CLKGATE_CON(1), 11, GFLAGS,
-			&rk3228_uart1_fracmux),
+			&rk3228_uart1_fracmux, RK3228_UART_FRAC_MAX_PRATE),
 	COMPOSITE_FRACMUX(0, "uart2_frac", "uart2_src", CLK_SET_RATE_PARENT,
 			RK2928_CLKSEL_CON(19), 0,
 			RK2928_CLKGATE_CON(1), 13, GFLAGS,
-			&rk3228_uart2_fracmux),
+			&rk3228_uart2_fracmux, RK3228_UART_FRAC_MAX_PRATE),
 
 	COMPOSITE(SCLK_NANDC, "sclk_nandc", mux_pll_src_2plls_p, 0,
 			RK2928_CLKSEL_CON(2), 14, 1, MFLAGS, 8, 5, DFLAGS,
diff --git a/drivers/clk/rockchip/clk-rk3288.c b/drivers/clk/rockchip/clk-rk3288.c
index cc2a177bbdbf..5f2b6f125c79 100644
--- a/drivers/clk/rockchip/clk-rk3288.c
+++ b/drivers/clk/rockchip/clk-rk3288.c
@@ -14,6 +14,9 @@
 
 #define RK3288_GRF_SOC_CON(x)	(0x244 + x * 4)
 #define RK3288_GRF_SOC_STATUS1	0x284
+#define RK3288_UART_FRAC_MAX_PRATE	600000000
+#define RK3288_I2S_FRAC_MAX_PRATE	600000000
+#define RK3288_SPDIF_FRAC_MAX_PRATE	600000000
 
 enum rk3288_plls {
 	apll, dpll, cpll, gpll, npll,
@@ -357,7 +360,7 @@ enum rk3288_plls {
 	COMPOSITE_FRACMUX(0, "i2s_frac", "i2s_src", CLK_SET_RATE_PARENT,
 			RK3288_CLKSEL_CON(8), 0,
 			RK3288_CLKGATE_CON(4), 2, GFLAGS,
-			&rk3288_i2s_fracmux),
+			&rk3288_i2s_fracmux, RK3288_I2S_FRAC_MAX_PRATE),
 	COMPOSITE_NODIV(SCLK_I2S0_OUT, "i2s0_clkout", mux_i2s_clkout_p, 0,
 			RK3288_CLKSEL_CON(4), 12, 1, MFLAGS,
 			RK3288_CLKGATE_CON(4), 0, GFLAGS),
@@ -372,7 +375,7 @@ enum rk3288_plls {
 	COMPOSITE_FRACMUX(0, "spdif_frac", "spdif_src", CLK_SET_RATE_PARENT,
 			RK3288_CLKSEL_CON(9), 0,
 			RK3288_CLKGATE_CON(4), 5, GFLAGS,
-			&rk3288_spdif_fracmux),
+			&rk3288_spdif_fracmux, RK3288_SPDIF_FRAC_MAX_PRATE),
 	GATE(SCLK_SPDIF, "sclk_spdif", "spdif_mux", CLK_SET_RATE_PARENT,
 			RK3288_CLKGATE_CON(4), 6, GFLAGS),
 	COMPOSITE_NOMUX(0, "spdif_8ch_pre", "spdif_src", CLK_SET_RATE_PARENT,
@@ -381,7 +384,7 @@ enum rk3288_plls {
 	COMPOSITE_FRACMUX(0, "spdif_8ch_frac", "spdif_8ch_pre", CLK_SET_RATE_PARENT,
 			RK3288_CLKSEL_CON(41), 0,
 			RK3288_CLKGATE_CON(4), 8, GFLAGS,
-			&rk3288_spdif_8ch_fracmux),
+			&rk3288_spdif_8ch_fracmux, RK3288_SPDIF_FRAC_MAX_PRATE),
 	GATE(SCLK_SPDIF8CH, "sclk_spdif_8ch", "spdif_8ch_mux", CLK_SET_RATE_PARENT,
 			RK3288_CLKGATE_CON(4), 9, GFLAGS),
 
@@ -584,7 +587,7 @@ enum rk3288_plls {
 	COMPOSITE_FRACMUX(0, "uart0_frac", "uart0_src", CLK_SET_RATE_PARENT,
 			RK3288_CLKSEL_CON(17), 0,
 			RK3288_CLKGATE_CON(1), 9, GFLAGS,
-			&rk3288_uart0_fracmux),
+			&rk3288_uart0_fracmux, RK3288_UART_FRAC_MAX_PRATE),
 	MUX(0, "uart_src", mux_pll_src_cpll_gpll_p, 0,
 			RK3288_CLKSEL_CON(13), 15, 1, MFLAGS),
 	COMPOSITE_NOMUX(0, "uart1_src", "uart_src", 0,
@@ -593,28 +596,28 @@ enum rk3288_plls {
 	COMPOSITE_FRACMUX(0, "uart1_frac", "uart1_src", CLK_SET_RATE_PARENT,
 			RK3288_CLKSEL_CON(18), 0,
 			RK3288_CLKGATE_CON(1), 11, GFLAGS,
-			&rk3288_uart1_fracmux),
+			&rk3288_uart1_fracmux, RK3288_UART_FRAC_MAX_PRATE),
 	COMPOSITE_NOMUX(0, "uart2_src", "uart_src", 0,
 			RK3288_CLKSEL_CON(15), 0, 7, DFLAGS,
 			RK3288_CLKGATE_CON(1), 12, GFLAGS),
 	COMPOSITE_FRACMUX(0, "uart2_frac", "uart2_src", CLK_SET_RATE_PARENT,
 			RK3288_CLKSEL_CON(19), 0,
 			RK3288_CLKGATE_CON(1), 13, GFLAGS,
-			&rk3288_uart2_fracmux),
+			&rk3288_uart2_fracmux, RK3288_UART_FRAC_MAX_PRATE),
 	COMPOSITE_NOMUX(0, "uart3_src", "uart_src", 0,
 			RK3288_CLKSEL_CON(16), 0, 7, DFLAGS,
 			RK3288_CLKGATE_CON(1), 14, GFLAGS),
 	COMPOSITE_FRACMUX(0, "uart3_frac", "uart3_src", CLK_SET_RATE_PARENT,
 			RK3288_CLKSEL_CON(20), 0,
 			RK3288_CLKGATE_CON(1), 15, GFLAGS,
-			&rk3288_uart3_fracmux),
+			&rk3288_uart3_fracmux, RK3288_UART_FRAC_MAX_PRATE),
 	COMPOSITE_NOMUX(0, "uart4_src", "uart_src", 0,
 			RK3288_CLKSEL_CON(3), 0, 7, DFLAGS,
 			RK3288_CLKGATE_CON(2), 12, GFLAGS),
 	COMPOSITE_FRACMUX(0, "uart4_frac", "uart4_src", CLK_SET_RATE_PARENT,
 			RK3288_CLKSEL_CON(7), 0,
 			RK3288_CLKGATE_CON(2), 13, GFLAGS,
-			&rk3288_uart4_fracmux),
+			&rk3288_uart4_fracmux, RK3288_UART_FRAC_MAX_PRATE),
 
 	COMPOSITE(0, "mac_pll_src", mux_pll_src_npll_cpll_gpll_p, 0,
 			RK3288_CLKSEL_CON(21), 0, 2, MFLAGS, 8, 5, DFLAGS,
diff --git a/drivers/clk/rockchip/clk-rk3308.c b/drivers/clk/rockchip/clk-rk3308.c
index b0baf87a283e..f3942a9a38c6 100644
--- a/drivers/clk/rockchip/clk-rk3308.c
+++ b/drivers/clk/rockchip/clk-rk3308.c
@@ -13,6 +13,12 @@
 #include "clk.h"
 
 #define RK3308_GRF_SOC_STATUS0		0x380
+#define RK3308_VOP_FRAC_MAX_PRATE	270000000
+#define RK3308B_VOP_FRAC_MAX_PRATE	800000000
+#define RK3308_UART_FRAC_MAX_PRATE	800000000
+#define RK3308_PDM_FRAC_MAX_PRATE	800000000
+#define RK3308_SPDIF_FRAC_MAX_PRATE	800000000
+#define RK3308_I2S_FRAC_MAX_PRATE	800000000
 
 enum rk3308_plls {
 	apll, dpll, vpll0, vpll1,
@@ -333,7 +339,7 @@ enum rk3308_plls {
 	COMPOSITE_FRACMUX(0, "clk_uart0_frac", "clk_uart0_src", CLK_SET_RATE_PARENT,
 			RK3308_CLKSEL_CON(12), 0,
 			RK3308_CLKGATE_CON(1), 11, GFLAGS,
-			&rk3308_uart0_fracmux),
+			&rk3308_uart0_fracmux, RK3308_UART_FRAC_MAX_PRATE),
 	GATE(SCLK_UART0, "clk_uart0", "clk_uart0_mux", 0,
 			RK3308_CLKGATE_CON(1), 12, GFLAGS),
 
@@ -343,7 +349,7 @@ enum rk3308_plls {
 	COMPOSITE_FRACMUX(0, "clk_uart1_frac", "clk_uart1_src", CLK_SET_RATE_PARENT,
 			RK3308_CLKSEL_CON(15), 0,
 			RK3308_CLKGATE_CON(1), 15, GFLAGS,
-			&rk3308_uart1_fracmux),
+			&rk3308_uart1_fracmux, RK3308_UART_FRAC_MAX_PRATE),
 	GATE(SCLK_UART1, "clk_uart1", "clk_uart1_mux", 0,
 			RK3308_CLKGATE_CON(2), 0, GFLAGS),
 
@@ -353,7 +359,7 @@ enum rk3308_plls {
 	COMPOSITE_FRACMUX(0, "clk_uart2_frac", "clk_uart2_src", CLK_SET_RATE_PARENT,
 			RK3308_CLKSEL_CON(18), 0,
 			RK3308_CLKGATE_CON(2), 3, GFLAGS,
-			&rk3308_uart2_fracmux),
+			&rk3308_uart2_fracmux, RK3308_UART_FRAC_MAX_PRATE),
 	GATE(SCLK_UART2, "clk_uart2", "clk_uart2_mux", CLK_SET_RATE_PARENT,
 			RK3308_CLKGATE_CON(2), 4, GFLAGS),
 
@@ -363,7 +369,7 @@ enum rk3308_plls {
 	COMPOSITE_FRACMUX(0, "clk_uart3_frac", "clk_uart3_src", CLK_SET_RATE_PARENT,
 			RK3308_CLKSEL_CON(21), 0,
 			RK3308_CLKGATE_CON(2), 7, GFLAGS,
-			&rk3308_uart3_fracmux),
+			&rk3308_uart3_fracmux, RK3308_UART_FRAC_MAX_PRATE),
 	GATE(SCLK_UART3, "clk_uart3", "clk_uart3_mux", 0,
 			RK3308_CLKGATE_CON(2), 8, GFLAGS),
 
@@ -373,7 +379,7 @@ enum rk3308_plls {
 	COMPOSITE_FRACMUX(0, "clk_uart4_frac", "clk_uart4_src", CLK_SET_RATE_PARENT,
 			RK3308_CLKSEL_CON(24), 0,
 			RK3308_CLKGATE_CON(2), 11, GFLAGS,
-			&rk3308_uart4_fracmux),
+			&rk3308_uart4_fracmux, RK3308_UART_FRAC_MAX_PRATE),
 	GATE(SCLK_UART4, "clk_uart4", "clk_uart4_mux", 0,
 			RK3308_CLKGATE_CON(2), 12, GFLAGS),
 
@@ -453,7 +459,7 @@ enum rk3308_plls {
 	COMPOSITE_FRACMUX(0, "dclk_vop_frac", "dclk_vop_src", CLK_SET_RATE_PARENT,
 			RK3308_CLKSEL_CON(9), 0,
 			RK3308_CLKGATE_CON(1), 7, GFLAGS,
-			&rk3308_dclk_vop_fracmux),
+			&rk3308_dclk_vop_fracmux, RK3308B_VOP_FRAC_MAX_PRATE),
 	GATE(DCLK_VOP, "dclk_vop", "dclk_vop_mux", 0,
 			RK3308_CLKGATE_CON(1), 8, GFLAGS),
 
@@ -584,7 +590,7 @@ enum rk3308_plls {
 	COMPOSITE_FRACMUX(0, "clk_rtc32k_frac", "xin24m", CLK_IGNORE_UNUSED,
 			RK3308_CLKSEL_CON(3), 0,
 			RK3308_CLKGATE_CON(4), 3, GFLAGS,
-			&rk3308_rtc32k_fracmux),
+			&rk3308_rtc32k_fracmux, 0),
 	MUX(0, "clk_rtc32k_div_src", mux_vpll0_vpll1_p, 0,
 			RK3308_CLKSEL_CON(2), 10, 1, MFLAGS),
 	COMPOSITE_NOMUX(0, "clk_rtc32k_div", "clk_rtc32k_div_src", CLK_IGNORE_UNUSED | CLK_SET_RATE_PARENT,
@@ -634,7 +640,7 @@ enum rk3308_plls {
 	COMPOSITE_FRACMUX(0, "clk_pdm_frac", "clk_pdm_src", CLK_SET_RATE_PARENT,
 			RK3308_CLKSEL_CON(47), 0,
 			RK3308_CLKGATE_CON(10), 4, GFLAGS,
-			&rk3308_pdm_fracmux),
+			&rk3308_pdm_fracmux, RK3308_PDM_FRAC_MAX_PRATE),
 	GATE(SCLK_PDM, "clk_pdm", "clk_pdm_mux", 0,
 			RK3308_CLKGATE_CON(10), 5, GFLAGS),
 
@@ -644,7 +650,7 @@ enum rk3308_plls {
 	COMPOSITE_FRACMUX(0, "clk_i2s0_8ch_tx_frac", "clk_i2s0_8ch_tx_src", CLK_SET_RATE_PARENT,
 			RK3308_CLKSEL_CON(53), 0,
 			RK3308_CLKGATE_CON(10), 13, GFLAGS,
-			&rk3308_i2s0_8ch_tx_fracmux),
+			&rk3308_i2s0_8ch_tx_fracmux, RK3308_I2S_FRAC_MAX_PRATE),
 	COMPOSITE_NODIV(SCLK_I2S0_8CH_TX, "clk_i2s0_8ch_tx", mux_i2s0_8ch_tx_rx_p, CLK_SET_RATE_PARENT,
 			RK3308_CLKSEL_CON(52), 12, 1, MFLAGS,
 			RK3308_CLKGATE_CON(10), 14, GFLAGS),
@@ -658,7 +664,7 @@ enum rk3308_plls {
 	COMPOSITE_FRACMUX(0, "clk_i2s0_8ch_rx_frac", "clk_i2s0_8ch_rx_src", CLK_SET_RATE_PARENT,
 			RK3308_CLKSEL_CON(55), 0,
 			RK3308_CLKGATE_CON(11), 1, GFLAGS,
-			&rk3308_i2s0_8ch_rx_fracmux),
+			&rk3308_i2s0_8ch_rx_fracmux, RK3308_I2S_FRAC_MAX_PRATE),
 	COMPOSITE_NODIV(SCLK_I2S0_8CH_RX, "clk_i2s0_8ch_rx", mux_i2s0_8ch_rx_tx_p, CLK_SET_RATE_PARENT,
 			RK3308_CLKSEL_CON(54), 12, 1, MFLAGS,
 			RK3308_CLKGATE_CON(11), 2, GFLAGS),
@@ -671,7 +677,7 @@ enum rk3308_plls {
 	COMPOSITE_FRACMUX(0, "clk_i2s1_8ch_tx_frac", "clk_i2s1_8ch_tx_src", CLK_SET_RATE_PARENT,
 			RK3308_CLKSEL_CON(57), 0,
 			RK3308_CLKGATE_CON(11), 5, GFLAGS,
-			&rk3308_i2s1_8ch_tx_fracmux),
+			&rk3308_i2s1_8ch_tx_fracmux, RK3308_I2S_FRAC_MAX_PRATE),
 	COMPOSITE_NODIV(SCLK_I2S1_8CH_TX, "clk_i2s1_8ch_tx", mux_i2s1_8ch_tx_rx_p, CLK_SET_RATE_PARENT,
 			RK3308_CLKSEL_CON(56), 12, 1, MFLAGS,
 			RK3308_CLKGATE_CON(11), 6, GFLAGS),
@@ -685,7 +691,7 @@ enum rk3308_plls {
 	COMPOSITE_FRACMUX(0, "clk_i2s1_8ch_rx_frac", "clk_i2s1_8ch_rx_src", CLK_SET_RATE_PARENT,
 			RK3308_CLKSEL_CON(59), 0,
 			RK3308_CLKGATE_CON(11), 9, GFLAGS,
-			&rk3308_i2s1_8ch_rx_fracmux),
+			&rk3308_i2s1_8ch_rx_fracmux, RK3308_I2S_FRAC_MAX_PRATE),
 	COMPOSITE_NODIV(SCLK_I2S1_8CH_RX, "clk_i2s1_8ch_rx", mux_i2s1_8ch_rx_tx_p, CLK_SET_RATE_PARENT,
 			RK3308_CLKSEL_CON(58), 12, 1, MFLAGS,
 			RK3308_CLKGATE_CON(11), 10, GFLAGS),
@@ -698,7 +704,7 @@ enum rk3308_plls {
 	COMPOSITE_FRACMUX(0, "clk_i2s2_8ch_tx_frac", "clk_i2s2_8ch_tx_src", CLK_SET_RATE_PARENT,
 			RK3308_CLKSEL_CON(61), 0,
 			RK3308_CLKGATE_CON(11), 13, GFLAGS,
-			&rk3308_i2s2_8ch_tx_fracmux),
+			&rk3308_i2s2_8ch_tx_fracmux, RK3308_I2S_FRAC_MAX_PRATE),
 	COMPOSITE_NODIV(SCLK_I2S2_8CH_TX, "clk_i2s2_8ch_tx", mux_i2s2_8ch_tx_rx_p, CLK_SET_RATE_PARENT,
 			RK3308_CLKSEL_CON(60), 12, 1, MFLAGS,
 			RK3308_CLKGATE_CON(11), 14, GFLAGS),
@@ -712,7 +718,7 @@ enum rk3308_plls {
 	COMPOSITE_FRACMUX(0, "clk_i2s2_8ch_rx_frac", "clk_i2s2_8ch_rx_src", CLK_SET_RATE_PARENT,
 			RK3308_CLKSEL_CON(63), 0,
 			RK3308_CLKGATE_CON(12), 1, GFLAGS,
-			&rk3308_i2s2_8ch_rx_fracmux),
+			&rk3308_i2s2_8ch_rx_fracmux, RK3308_I2S_FRAC_MAX_PRATE),
 	COMPOSITE_NODIV(SCLK_I2S2_8CH_RX, "clk_i2s2_8ch_rx", mux_i2s2_8ch_rx_tx_p, CLK_SET_RATE_PARENT,
 			RK3308_CLKSEL_CON(62), 12, 1, MFLAGS,
 			RK3308_CLKGATE_CON(12), 2, GFLAGS),
@@ -725,7 +731,7 @@ enum rk3308_plls {
 	COMPOSITE_FRACMUX(0, "clk_i2s3_8ch_tx_frac", "clk_i2s3_8ch_tx_src", CLK_SET_RATE_PARENT,
 			RK3308_CLKSEL_CON(65), 0,
 			RK3308_CLKGATE_CON(12), 5, GFLAGS,
-			&rk3308_i2s3_8ch_tx_fracmux),
+			&rk3308_i2s3_8ch_tx_fracmux, RK3308_I2S_FRAC_MAX_PRATE),
 	COMPOSITE_NODIV(SCLK_I2S3_8CH_TX, "clk_i2s3_8ch_tx", mux_i2s3_8ch_tx_rx_p, CLK_SET_RATE_PARENT,
 			RK3308_CLKSEL_CON(64), 12, 1, MFLAGS,
 			RK3308_CLKGATE_CON(12), 6, GFLAGS),
@@ -739,7 +745,7 @@ enum rk3308_plls {
 	COMPOSITE_FRACMUX(0, "clk_i2s3_8ch_rx_frac", "clk_i2s3_8ch_rx_src", CLK_SET_RATE_PARENT,
 			RK3308_CLKSEL_CON(67), 0,
 			RK3308_CLKGATE_CON(12), 9, GFLAGS,
-			&rk3308_i2s3_8ch_rx_fracmux),
+			&rk3308_i2s3_8ch_rx_fracmux, RK3308_I2S_FRAC_MAX_PRATE),
 	COMPOSITE_NODIV(SCLK_I2S3_8CH_RX, "clk_i2s3_8ch_rx", mux_i2s3_8ch_rx_tx_p, CLK_SET_RATE_PARENT,
 			RK3308_CLKSEL_CON(66), 12, 1, MFLAGS,
 			RK3308_CLKGATE_CON(12), 10, GFLAGS),
@@ -752,7 +758,7 @@ enum rk3308_plls {
 	COMPOSITE_FRACMUX(0, "clk_i2s0_2ch_frac", "clk_i2s0_2ch_src", CLK_SET_RATE_PARENT,
 			RK3308_CLKSEL_CON(69), 0,
 			RK3308_CLKGATE_CON(12), 13, GFLAGS,
-			&rk3308_i2s0_2ch_fracmux),
+			&rk3308_i2s0_2ch_fracmux, RK3308_I2S_FRAC_MAX_PRATE),
 	GATE(SCLK_I2S0_2CH, "clk_i2s0_2ch", "clk_i2s0_2ch_mux", 0,
 			RK3308_CLKGATE_CON(12), 14, GFLAGS),
 	COMPOSITE_NODIV(SCLK_I2S0_2CH_OUT, "clk_i2s0_2ch_out", mux_i2s0_2ch_out_p, CLK_SET_RATE_PARENT,
@@ -765,7 +771,7 @@ enum rk3308_plls {
 	COMPOSITE_FRACMUX(0, "clk_i2s1_2ch_frac", "clk_i2s1_2ch_src", CLK_SET_RATE_PARENT,
 			RK3308_CLKSEL_CON(71), 0,
 			RK3308_CLKGATE_CON(13), 1, GFLAGS,
-			&rk3308_i2s1_2ch_fracmux),
+			&rk3308_i2s1_2ch_fracmux, RK3308_I2S_FRAC_MAX_PRATE),
 	GATE(SCLK_I2S1_2CH, "clk_i2s1_2ch", "clk_i2s1_2ch_mux", 0,
 			RK3308_CLKGATE_CON(13), 2, GFLAGS),
 	COMPOSITE_NODIV(SCLK_I2S1_2CH_OUT, "clk_i2s1_2ch_out", mux_i2s1_2ch_out_p, CLK_SET_RATE_PARENT,
@@ -783,7 +789,7 @@ enum rk3308_plls {
 	COMPOSITE_FRACMUX(0, "clk_spdif_tx_frac", "clk_spdif_tx_src", CLK_SET_RATE_PARENT,
 			RK3308_CLKSEL_CON(49), 0,
 			RK3308_CLKGATE_CON(10), 7, GFLAGS,
-			&rk3308_spdif_tx_fracmux),
+			&rk3308_spdif_tx_fracmux, RK3308_SPDIF_FRAC_MAX_PRATE),
 	GATE(SCLK_SPDIF_TX, "clk_spdif_tx", "clk_spdif_tx_mux", 0,
 			RK3308_CLKGATE_CON(10), 8, GFLAGS),
 
@@ -798,7 +804,7 @@ enum rk3308_plls {
 	COMPOSITE_FRACMUX(0, "clk_spdif_rx_frac", "clk_spdif_rx_src", CLK_SET_RATE_PARENT,
 			RK3308_CLKSEL_CON(51), 0,
 			RK3308_CLKGATE_CON(10), 10, GFLAGS,
-			&rk3308_spdif_rx_fracmux),
+			&rk3308_spdif_rx_fracmux, RK3308_SPDIF_FRAC_MAX_PRATE),
 	GATE(SCLK_SPDIF_RX, "clk_spdif_rx", "clk_spdif_rx_mux", 0,
 			RK3308_CLKGATE_CON(10), 11, GFLAGS),
 
diff --git a/drivers/clk/rockchip/clk-rk3328.c b/drivers/clk/rockchip/clk-rk3328.c
index c186a1985bf4..12b1f645cacd 100644
--- a/drivers/clk/rockchip/clk-rk3328.c
+++ b/drivers/clk/rockchip/clk-rk3328.c
@@ -16,6 +16,9 @@
 #define RK3328_GRF_SOC_STATUS0		0x480
 #define RK3328_GRF_MAC_CON1		0x904
 #define RK3328_GRF_MAC_CON2		0x908
+#define RK3328_I2S_FRAC_MAX_PRATE       600000000
+#define RK3328_UART_FRAC_MAX_PRATE	600000000
+#define RK3328_SPDIF_FRAC_MAX_PRATE	600000000
 
 enum rk3328_plls {
 	apll, dpll, cpll, gpll, npll,
@@ -372,7 +375,7 @@ enum rk3328_plls {
 	COMPOSITE_FRACMUX(0, "clk_i2s0_frac", "clk_i2s0_div", CLK_SET_RATE_PARENT,
 			RK3328_CLKSEL_CON(7), 0,
 			RK3328_CLKGATE_CON(1), 2, GFLAGS,
-			&rk3328_i2s0_fracmux),
+			&rk3328_i2s0_fracmux, RK3328_I2S_FRAC_MAX_PRATE),
 	GATE(SCLK_I2S0, "clk_i2s0", "i2s0_pre", CLK_SET_RATE_PARENT,
 			RK3328_CLKGATE_CON(1), 3, GFLAGS),
 
@@ -382,7 +385,7 @@ enum rk3328_plls {
 	COMPOSITE_FRACMUX(0, "clk_i2s1_frac", "clk_i2s1_div", CLK_SET_RATE_PARENT,
 			RK3328_CLKSEL_CON(9), 0,
 			RK3328_CLKGATE_CON(1), 5, GFLAGS,
-			&rk3328_i2s1_fracmux),
+			&rk3328_i2s1_fracmux, RK3328_I2S_FRAC_MAX_PRATE),
 	GATE(SCLK_I2S1, "clk_i2s1", "i2s1_pre", CLK_SET_RATE_PARENT,
 			RK3328_CLKGATE_CON(1), 6, GFLAGS),
 	COMPOSITE_NODIV(SCLK_I2S1_OUT, "i2s1_out", mux_i2s1out_p, 0,
@@ -395,7 +398,7 @@ enum rk3328_plls {
 	COMPOSITE_FRACMUX(0, "clk_i2s2_frac", "clk_i2s2_div", CLK_SET_RATE_PARENT,
 			RK3328_CLKSEL_CON(11), 0,
 			RK3328_CLKGATE_CON(1), 9, GFLAGS,
-			&rk3328_i2s2_fracmux),
+			&rk3328_i2s2_fracmux, RK3328_I2S_FRAC_MAX_PRATE),
 	GATE(SCLK_I2S2, "clk_i2s2", "i2s2_pre", CLK_SET_RATE_PARENT,
 			RK3328_CLKGATE_CON(1), 10, GFLAGS),
 	COMPOSITE_NODIV(SCLK_I2S2_OUT, "i2s2_out", mux_i2s2out_p, 0,
@@ -408,7 +411,7 @@ enum rk3328_plls {
 	COMPOSITE_FRACMUX(0, "clk_spdif_frac", "clk_spdif_div", CLK_SET_RATE_PARENT,
 			RK3328_CLKSEL_CON(13), 0,
 			RK3328_CLKGATE_CON(1), 13, GFLAGS,
-			&rk3328_spdif_fracmux),
+			&rk3328_spdif_fracmux, RK3328_SPDIF_FRAC_MAX_PRATE),
 
 	/* PD_UART */
 	COMPOSITE(0, "clk_uart0_div", mux_2plls_u480m_p, 0,
@@ -423,15 +426,15 @@ enum rk3328_plls {
 	COMPOSITE_FRACMUX(0, "clk_uart0_frac", "clk_uart0_div", CLK_SET_RATE_PARENT,
 			RK3328_CLKSEL_CON(15), 0,
 			RK3328_CLKGATE_CON(1), 15, GFLAGS,
-			&rk3328_uart0_fracmux),
+			&rk3328_uart0_fracmux, RK3328_UART_FRAC_MAX_PRATE),
 	COMPOSITE_FRACMUX(0, "clk_uart1_frac", "clk_uart1_div", CLK_SET_RATE_PARENT,
 			RK3328_CLKSEL_CON(17), 0,
 			RK3328_CLKGATE_CON(2), 1, GFLAGS,
-			&rk3328_uart1_fracmux),
+			&rk3328_uart1_fracmux, RK3328_UART_FRAC_MAX_PRATE),
 	COMPOSITE_FRACMUX(0, "clk_uart2_frac", "clk_uart2_div", CLK_SET_RATE_PARENT,
 			RK3328_CLKSEL_CON(19), 0,
 			RK3328_CLKGATE_CON(2), 3, GFLAGS,
-			&rk3328_uart2_fracmux),
+			&rk3328_uart2_fracmux, RK3328_UART_FRAC_MAX_PRATE),
 
 	/*
 	 * Clock-Architecture Diagram 4
diff --git a/drivers/clk/rockchip/clk-rk3368.c b/drivers/clk/rockchip/clk-rk3368.c
index 55443349439b..d20e51dabb63 100644
--- a/drivers/clk/rockchip/clk-rk3368.c
+++ b/drivers/clk/rockchip/clk-rk3368.c
@@ -12,6 +12,9 @@
 #include "clk.h"
 
 #define RK3368_GRF_SOC_STATUS0	0x480
+#define RK3368_I2S_FRAC_MAX_PRATE       600000000
+#define RK3368_UART_FRAC_MAX_PRATE	600000000
+#define RK3368_SPDIF_FRAC_MAX_PRATE	600000000
 
 enum rk3368_plls {
 	apllb, aplll, dpll, cpll, gpll, npll,
@@ -368,7 +371,7 @@ enum rk3368_plls {
 	COMPOSITE_FRACMUX(0, "i2s_8ch_frac", "i2s_8ch_src", CLK_SET_RATE_PARENT,
 			  RK3368_CLKSEL_CON(28), 0,
 			  RK3368_CLKGATE_CON(6), 2, GFLAGS,
-			  &rk3368_i2s_8ch_fracmux),
+			  &rk3368_i2s_8ch_fracmux, RK3368_I2S_FRAC_MAX_PRATE),
 	COMPOSITE_NODIV(SCLK_I2S_8CH_OUT, "i2s_8ch_clkout", mux_i2s_8ch_clkout_p, 0,
 			RK3368_CLKSEL_CON(27), 15, 1, MFLAGS,
 			RK3368_CLKGATE_CON(6), 0, GFLAGS),
@@ -380,7 +383,7 @@ enum rk3368_plls {
 	COMPOSITE_FRACMUX(0, "spdif_8ch_frac", "spdif_8ch_src", CLK_SET_RATE_PARENT,
 			  RK3368_CLKSEL_CON(32), 0,
 			  RK3368_CLKGATE_CON(6), 5, GFLAGS,
-			  &rk3368_spdif_8ch_fracmux),
+			  &rk3368_spdif_8ch_fracmux, RK3368_SPDIF_FRAC_MAX_PRATE),
 	GATE(SCLK_SPDIF_8CH, "sclk_spdif_8ch", "spdif_8ch_pre", CLK_SET_RATE_PARENT,
 	     RK3368_CLKGATE_CON(6), 6, GFLAGS),
 	COMPOSITE(0, "i2s_2ch_src", mux_pll_src_cpll_gpll_p, 0,
@@ -389,7 +392,7 @@ enum rk3368_plls {
 	COMPOSITE_FRACMUX(0, "i2s_2ch_frac", "i2s_2ch_src", CLK_SET_RATE_PARENT,
 			  RK3368_CLKSEL_CON(54), 0,
 			  RK3368_CLKGATE_CON(5), 14, GFLAGS,
-			  &rk3368_i2s_2ch_fracmux),
+			  &rk3368_i2s_2ch_fracmux, RK3368_I2S_FRAC_MAX_PRATE),
 	GATE(SCLK_I2S_2CH, "sclk_i2s_2ch", "i2s_2ch_pre", CLK_SET_RATE_PARENT,
 	     RK3368_CLKGATE_CON(5), 15, GFLAGS),
 
@@ -590,7 +593,7 @@ enum rk3368_plls {
 	COMPOSITE_FRACMUX(0, "uart0_frac", "uart0_src", CLK_SET_RATE_PARENT,
 			  RK3368_CLKSEL_CON(34), 0,
 			  RK3368_CLKGATE_CON(2), 1, GFLAGS,
-			  &rk3368_uart0_fracmux),
+			  &rk3368_uart0_fracmux, RK3368_UART_FRAC_MAX_PRATE),
 
 	COMPOSITE_NOMUX(0, "uart1_src", "uart_src", 0,
 			RK3368_CLKSEL_CON(35), 0, 7, DFLAGS,
@@ -598,7 +601,7 @@ enum rk3368_plls {
 	COMPOSITE_FRACMUX(0, "uart1_frac", "uart1_src", CLK_SET_RATE_PARENT,
 			  RK3368_CLKSEL_CON(36), 0,
 			  RK3368_CLKGATE_CON(2), 3, GFLAGS,
-			  &rk3368_uart1_fracmux),
+			  &rk3368_uart1_fracmux, RK3368_UART_FRAC_MAX_PRATE),
 
 	COMPOSITE_NOMUX(0, "uart3_src", "uart_src", 0,
 			RK3368_CLKSEL_CON(39), 0, 7, DFLAGS,
@@ -606,7 +609,7 @@ enum rk3368_plls {
 	COMPOSITE_FRACMUX(0, "uart3_frac", "uart3_src", CLK_SET_RATE_PARENT,
 			  RK3368_CLKSEL_CON(40), 0,
 			  RK3368_CLKGATE_CON(2), 7, GFLAGS,
-			  &rk3368_uart3_fracmux),
+			  &rk3368_uart3_fracmux, RK3368_UART_FRAC_MAX_PRATE),
 
 	COMPOSITE_NOMUX(0, "uart4_src", "uart_src", 0,
 			RK3368_CLKSEL_CON(41), 0, 7, DFLAGS,
@@ -614,7 +617,7 @@ enum rk3368_plls {
 	COMPOSITE_FRACMUX(0, "uart4_frac", "uart4_src", CLK_SET_RATE_PARENT,
 			  RK3368_CLKSEL_CON(42), 0,
 			  RK3368_CLKGATE_CON(2), 9, GFLAGS,
-			  &rk3368_uart4_fracmux),
+			  &rk3368_uart4_fracmux, RK3368_UART_FRAC_MAX_PRATE),
 
 	COMPOSITE(0, "mac_pll_src", mux_pll_src_npll_cpll_gpll_p, 0,
 			RK3368_CLKSEL_CON(43), 6, 2, MFLAGS, 0, 5, DFLAGS,
diff --git a/drivers/clk/rockchip/clk-rk3399.c b/drivers/clk/rockchip/clk-rk3399.c
index ce1d2446f142..bda5d50c5319 100644
--- a/drivers/clk/rockchip/clk-rk3399.c
+++ b/drivers/clk/rockchip/clk-rk3399.c
@@ -13,6 +13,12 @@
 #include <dt-bindings/clock/rk3399-cru.h>
 #include "clk.h"
 
+#define RK3399_I2S_FRAC_MAX_PRATE       800000000
+#define RK3399_UART_FRAC_MAX_PRATE	800000000
+#define RK3399_SPDIF_FRAC_MAX_PRATE	600000000
+#define RK3399_VOP_FRAC_MAX_PRATE	600000000
+#define RK3399_WIFI_FRAC_MAX_PRATE	600000000
+
 enum rk3399_plls {
 	lpll, bpll, dpll, cpll, gpll, npll, vpll,
 };
@@ -582,7 +588,7 @@ enum rk3399_pmu_plls {
 	COMPOSITE_FRACMUX(0, "clk_spdif_frac", "clk_spdif_div", 0,
 			RK3399_CLKSEL_CON(99), 0,
 			RK3399_CLKGATE_CON(8), 14, GFLAGS,
-			&rk3399_spdif_fracmux),
+			&rk3399_spdif_fracmux, RK3399_SPDIF_FRAC_MAX_PRATE),
 	GATE(SCLK_SPDIF_8CH, "clk_spdif", "clk_spdif_mux", CLK_SET_RATE_PARENT,
 			RK3399_CLKGATE_CON(8), 15, GFLAGS),
 
@@ -596,7 +602,7 @@ enum rk3399_pmu_plls {
 	COMPOSITE_FRACMUX(0, "clk_i2s0_frac", "clk_i2s0_div", 0,
 			RK3399_CLKSEL_CON(96), 0,
 			RK3399_CLKGATE_CON(8), 4, GFLAGS,
-			&rk3399_i2s0_fracmux),
+			&rk3399_i2s0_fracmux, RK3399_I2S_FRAC_MAX_PRATE),
 	GATE(SCLK_I2S0_8CH, "clk_i2s0", "clk_i2s0_mux", CLK_SET_RATE_PARENT,
 			RK3399_CLKGATE_CON(8), 5, GFLAGS),
 
@@ -606,7 +612,7 @@ enum rk3399_pmu_plls {
 	COMPOSITE_FRACMUX(0, "clk_i2s1_frac", "clk_i2s1_div", 0,
 			RK3399_CLKSEL_CON(97), 0,
 			RK3399_CLKGATE_CON(8), 7, GFLAGS,
-			&rk3399_i2s1_fracmux),
+			&rk3399_i2s1_fracmux, RK3399_I2S_FRAC_MAX_PRATE),
 	GATE(SCLK_I2S1_8CH, "clk_i2s1", "clk_i2s1_mux", CLK_SET_RATE_PARENT,
 			RK3399_CLKGATE_CON(8), 8, GFLAGS),
 
@@ -616,7 +622,7 @@ enum rk3399_pmu_plls {
 	COMPOSITE_FRACMUX(0, "clk_i2s2_frac", "clk_i2s2_div", 0,
 			RK3399_CLKSEL_CON(98), 0,
 			RK3399_CLKGATE_CON(8), 10, GFLAGS,
-			&rk3399_i2s2_fracmux),
+			&rk3399_i2s2_fracmux, RK3399_I2S_FRAC_MAX_PRATE),
 	GATE(SCLK_I2S2_8CH, "clk_i2s2", "clk_i2s2_mux", CLK_SET_RATE_PARENT,
 			RK3399_CLKGATE_CON(8), 11, GFLAGS),
 
@@ -635,7 +641,7 @@ enum rk3399_pmu_plls {
 	COMPOSITE_FRACMUX(0, "clk_uart0_frac", "clk_uart0_div", 0,
 			RK3399_CLKSEL_CON(100), 0,
 			RK3399_CLKGATE_CON(9), 1, GFLAGS,
-			&rk3399_uart0_fracmux),
+			&rk3399_uart0_fracmux, RK3399_UART_FRAC_MAX_PRATE),
 
 	MUX(0, "clk_uart_src", mux_pll_src_cpll_gpll_p, 0,
 			RK3399_CLKSEL_CON(33), 15, 1, MFLAGS),
@@ -645,7 +651,7 @@ enum rk3399_pmu_plls {
 	COMPOSITE_FRACMUX(0, "clk_uart1_frac", "clk_uart1_div", 0,
 			RK3399_CLKSEL_CON(101), 0,
 			RK3399_CLKGATE_CON(9), 3, GFLAGS,
-			&rk3399_uart1_fracmux),
+			&rk3399_uart1_fracmux, RK3399_UART_FRAC_MAX_PRATE),
 
 	COMPOSITE_NOMUX(0, "clk_uart2_div", "clk_uart_src", 0,
 			RK3399_CLKSEL_CON(35), 0, 7, DFLAGS,
@@ -653,7 +659,7 @@ enum rk3399_pmu_plls {
 	COMPOSITE_FRACMUX(0, "clk_uart2_frac", "clk_uart2_div", 0,
 			RK3399_CLKSEL_CON(102), 0,
 			RK3399_CLKGATE_CON(9), 5, GFLAGS,
-			&rk3399_uart2_fracmux),
+			&rk3399_uart2_fracmux, RK3399_UART_FRAC_MAX_PRATE),
 
 	COMPOSITE_NOMUX(0, "clk_uart3_div", "clk_uart_src", 0,
 			RK3399_CLKSEL_CON(36), 0, 7, DFLAGS,
@@ -661,7 +667,7 @@ enum rk3399_pmu_plls {
 	COMPOSITE_FRACMUX(0, "clk_uart3_frac", "clk_uart3_div", 0,
 			RK3399_CLKSEL_CON(103), 0,
 			RK3399_CLKGATE_CON(9), 7, GFLAGS,
-			&rk3399_uart3_fracmux),
+			&rk3399_uart3_fracmux, RK3399_UART_FRAC_MAX_PRATE),
 
 	COMPOSITE(PCLK_DDR, "pclk_ddr", mux_pll_src_cpll_gpll_p, CLK_IGNORE_UNUSED,
 			RK3399_CLKSEL_CON(6), 15, 1, MFLAGS, 8, 5, DFLAGS,
@@ -1164,7 +1170,7 @@ enum rk3399_pmu_plls {
 
 	COMPOSITE_FRACMUX_NOGATE(DCLK_VOP0_FRAC, "dclk_vop0_frac", "dclk_vop0_div", 0,
 			RK3399_CLKSEL_CON(106), 0,
-			&rk3399_dclk_vop0_fracmux),
+			&rk3399_dclk_vop0_fracmux, RK3399_VOP_FRAC_MAX_PRATE),
 
 	COMPOSITE(SCLK_VOP0_PWM, "clk_vop0_pwm", mux_pll_src_vpll_cpll_gpll_24m_p, 0,
 			RK3399_CLKSEL_CON(51), 6, 2, MFLAGS, 0, 5, DFLAGS,
@@ -1194,7 +1200,7 @@ enum rk3399_pmu_plls {
 
 	COMPOSITE_FRACMUX_NOGATE(DCLK_VOP1_FRAC, "dclk_vop1_frac", "dclk_vop1_div", 0,
 			RK3399_CLKSEL_CON(107), 0,
-			&rk3399_dclk_vop1_fracmux),
+			&rk3399_dclk_vop1_fracmux, RK3399_VOP_FRAC_MAX_PRATE),
 
 	COMPOSITE(SCLK_VOP1_PWM, "clk_vop1_pwm", mux_pll_src_vpll_cpll_gpll_24m_p, CLK_IGNORE_UNUSED,
 			RK3399_CLKSEL_CON(52), 6, 2, MFLAGS, 0, 5, DFLAGS,
@@ -1311,7 +1317,7 @@ enum rk3399_pmu_plls {
 			RK3399_CLKSEL_CON(58), 7, 1, MFLAGS),
 	COMPOSITE_FRAC(0, "clk_test_frac", "clk_test_pre", 0,
 			RK3399_CLKSEL_CON(105), 0,
-			RK3399_CLKGATE_CON(13), 9, GFLAGS),
+			RK3399_CLKGATE_CON(13), 9, GFLAGS, 0),
 
 	DIV(0, "clk_test_24m", "xin24m", 0,
 			RK3399_CLKSEL_CON(57), 6, 10, DFLAGS),
@@ -1416,7 +1422,7 @@ enum rk3399_pmu_plls {
 
 	COMPOSITE_FRACMUX_NOGATE(0, "clk_wifi_frac", "clk_wifi_div", 0,
 			RK3399_PMU_CLKSEL_CON(7), 0,
-			&rk3399_pmuclk_wifi_fracmux),
+			&rk3399_pmuclk_wifi_fracmux, RK3399_WIFI_FRAC_MAX_PRATE),
 
 	MUX(0, "clk_timer_src_pmu", mux_pll_p, CLK_IGNORE_UNUSED,
 			RK3399_PMU_CLKSEL_CON(1), 15, 1, MFLAGS),
@@ -1445,7 +1451,7 @@ enum rk3399_pmu_plls {
 	COMPOSITE_FRACMUX(0, "clk_uart4_frac", "clk_uart4_div", 0,
 			RK3399_PMU_CLKSEL_CON(6), 0,
 			RK3399_PMU_CLKGATE_CON(0), 6, GFLAGS,
-			&rk3399_uart4_pmu_fracmux),
+			&rk3399_uart4_pmu_fracmux, RK3399_UART_FRAC_MAX_PRATE),
 
 	DIV(PCLK_SRC_PMU, "pclk_pmu_src", "ppll", CLK_IGNORE_UNUSED,
 			RK3399_PMU_CLKSEL_CON(0), 0, 5, DFLAGS),
diff --git a/drivers/clk/rockchip/clk-rv1108.c b/drivers/clk/rockchip/clk-rv1108.c
index 5947d3192866..04b7f1161942 100644
--- a/drivers/clk/rockchip/clk-rv1108.c
+++ b/drivers/clk/rockchip/clk-rv1108.c
@@ -14,6 +14,8 @@
 #include "clk.h"
 
 #define RV1108_GRF_SOC_STATUS0	0x480
+#define RV1108_I2S_FRAC_MAX_RATE	600000000
+#define RV1108_UART_FRAC_MAX_RATE	600000000
 
 enum rv1108_plls {
 	apll, dpll, gpll,
@@ -503,7 +505,7 @@ enum rv1108_plls {
 	COMPOSITE_FRACMUX(0, "i2s0_frac", "i2s0_src", CLK_SET_RATE_PARENT,
 			RV1108_CLKSEL_CON(8), 0,
 			RV1108_CLKGATE_CON(2), 1, GFLAGS,
-			&rv1108_i2s0_fracmux),
+			&rv1108_i2s0_fracmux, RV1108_I2S_FRAC_MAX_RATE),
 	GATE(SCLK_I2S0, "sclk_i2s0", "i2s0_pre", CLK_SET_RATE_PARENT,
 			RV1108_CLKGATE_CON(2), 2, GFLAGS),
 	COMPOSITE_NODIV(0, "i2s_out", mux_i2s_out_p, 0,
@@ -516,7 +518,7 @@ enum rv1108_plls {
 	COMPOSITE_FRACMUX(0, "i2s1_frac", "i2s1_src", CLK_SET_RATE_PARENT,
 			RK2928_CLKSEL_CON(9), 0,
 			RK2928_CLKGATE_CON(2), 5, GFLAGS,
-			&rv1108_i2s1_fracmux),
+			&rv1108_i2s1_fracmux, RV1108_I2S_FRAC_MAX_RATE),
 	GATE(SCLK_I2S1, "sclk_i2s1", "i2s1_pre", CLK_SET_RATE_PARENT,
 			RV1108_CLKGATE_CON(2), 6, GFLAGS),
 
@@ -526,7 +528,7 @@ enum rv1108_plls {
 	COMPOSITE_FRACMUX(0, "i2s2_frac", "i2s2_src", CLK_SET_RATE_PARENT,
 			RV1108_CLKSEL_CON(10), 0,
 			RV1108_CLKGATE_CON(2), 9, GFLAGS,
-			&rv1108_i2s2_fracmux),
+			&rv1108_i2s2_fracmux, RV1108_I2S_FRAC_MAX_RATE),
 	GATE(SCLK_I2S2, "sclk_i2s2", "i2s2_pre", CLK_SET_RATE_PARENT,
 			RV1108_CLKGATE_CON(2), 10, GFLAGS),
 
@@ -592,15 +594,15 @@ enum rv1108_plls {
 	COMPOSITE_FRACMUX(0, "uart0_frac", "uart0_src", CLK_SET_RATE_PARENT,
 			RV1108_CLKSEL_CON(16), 0,
 			RV1108_CLKGATE_CON(3), 2, GFLAGS,
-			&rv1108_uart0_fracmux),
+			&rv1108_uart0_fracmux, RV1108_UART_FRAC_MAX_RATE),
 	COMPOSITE_FRACMUX(0, "uart1_frac", "uart1_src", CLK_SET_RATE_PARENT,
 			RV1108_CLKSEL_CON(17), 0,
 			RV1108_CLKGATE_CON(3), 4, GFLAGS,
-			&rv1108_uart1_fracmux),
+			&rv1108_uart1_fracmux, RV1108_UART_FRAC_MAX_RATE),
 	COMPOSITE_FRACMUX(0, "uart2_frac", "uart2_src", CLK_SET_RATE_PARENT,
 			RV1108_CLKSEL_CON(18), 0,
 			RV1108_CLKGATE_CON(3), 6, GFLAGS,
-			&rv1108_uart2_fracmux),
+			&rv1108_uart2_fracmux, RV1108_UART_FRAC_MAX_RATE),
 	GATE(PCLK_UART0, "pclk_uart0", "pclk_bus_pre", 0,
 			RV1108_CLKGATE_CON(13), 10, GFLAGS),
 	GATE(PCLK_UART1, "pclk_uart1", "pclk_bus_pre", 0,
diff --git a/drivers/clk/rockchip/clk.c b/drivers/clk/rockchip/clk.c
index 546e810c3560..fac5a4a3f5c3 100644
--- a/drivers/clk/rockchip/clk.c
+++ b/drivers/clk/rockchip/clk.c
@@ -184,12 +184,26 @@ static void rockchip_fractional_approximation(struct clk_hw *hw,
 	unsigned long p_rate, p_parent_rate;
 	struct clk_hw *p_parent;
 	unsigned long scale;
+	u32 div;
 
 	p_rate = clk_hw_get_rate(clk_hw_get_parent(hw));
-	if ((rate * 20 > p_rate) && (p_rate % rate != 0)) {
+	if (((rate * 20 > p_rate) && (p_rate % rate != 0)) ||
+	    (fd->max_prate && fd->max_prate < p_rate)) {
 		p_parent = clk_hw_get_parent(clk_hw_get_parent(hw));
 		p_parent_rate = clk_hw_get_rate(p_parent);
 		*parent_rate = p_parent_rate;
+		if (fd->max_prate && p_parent_rate > fd->max_prate) {
+			div = DIV_ROUND_UP(p_parent_rate, fd->max_prate);
+			*parent_rate = p_parent_rate / div;
+		}
+
+		if (*parent_rate < rate * 20) {
+			pr_err("%s parent_rate(%ld) is low than rate(%ld)*20, fractional div is not allowed\n",
+			       clk_hw_get_name(hw), *parent_rate, rate);
+			*m = 0;
+			*n = 1;
+			return;
+		}
 	}
 
 	/*
@@ -212,7 +226,7 @@ static struct clk *rockchip_clk_register_frac_branch(
 		void __iomem *base, int muxdiv_offset, u8 div_flags,
 		int gate_offset, u8 gate_shift, u8 gate_flags,
 		unsigned long flags, struct rockchip_clk_branch *child,
-		spinlock_t *lock)
+		unsigned long max_prate, spinlock_t *lock)
 {
 	struct rockchip_clk_frac *frac;
 	struct clk *clk;
@@ -253,6 +267,7 @@ static struct clk *rockchip_clk_register_frac_branch(
 	div->nmask = GENMASK(div->nwidth - 1, 0) << div->nshift;
 	div->lock = lock;
 	div->approximation = rockchip_fractional_approximation;
+	div->max_prate = max_prate;
 	div_ops = &clk_fractional_divider_ops;
 
 	clk = clk_register_composite(NULL, name, parent_names, num_parents,
@@ -485,7 +500,7 @@ void __init rockchip_clk_register_branches(
 				list->div_flags,
 				list->gate_offset, list->gate_shift,
 				list->gate_flags, flags, list->child,
-				&ctx->lock);
+				list->max_prate, &ctx->lock);
 			break;
 		case branch_half_divider:
 			clk = rockchip_clk_register_halfdiv(list->name,
diff --git a/drivers/clk/rockchip/clk.h b/drivers/clk/rockchip/clk.h
index 2271a84124b0..0d401ce09a54 100644
--- a/drivers/clk/rockchip/clk.h
+++ b/drivers/clk/rockchip/clk.h
@@ -420,6 +420,7 @@ struct rockchip_clk_branch {
 	u8				gate_shift;
 	u8				gate_flags;
 	struct rockchip_clk_branch	*child;
+	unsigned long			max_prate;
 };
 
 #define COMPOSITE(_id, cname, pnames, f, mo, ms, mw, mf, ds, dw,\
@@ -559,7 +560,7 @@ struct rockchip_clk_branch {
 		.gate_offset	= -1,				\
 	}
 
-#define COMPOSITE_FRAC(_id, cname, pname, f, mo, df, go, gs, gf)\
+#define COMPOSITE_FRAC(_id, cname, pname, f, mo, df, go, gs, gf, prate)\
 	{							\
 		.id		= _id,				\
 		.branch_type	= branch_fraction_divider,	\
@@ -574,9 +575,10 @@ struct rockchip_clk_branch {
 		.gate_offset	= go,				\
 		.gate_shift	= gs,				\
 		.gate_flags	= gf,				\
+		.max_prate	= prate,			\
 	}
 
-#define COMPOSITE_FRACMUX(_id, cname, pname, f, mo, df, go, gs, gf, ch) \
+#define COMPOSITE_FRACMUX(_id, cname, pname, f, mo, df, go, gs, gf, ch, prate) \
 	{							\
 		.id		= _id,				\
 		.branch_type	= branch_fraction_divider,	\
@@ -592,9 +594,10 @@ struct rockchip_clk_branch {
 		.gate_shift	= gs,				\
 		.gate_flags	= gf,				\
 		.child		= ch,				\
+		.max_prate	= prate,			\
 	}
 
-#define COMPOSITE_FRACMUX_NOGATE(_id, cname, pname, f, mo, df, ch) \
+#define COMPOSITE_FRACMUX_NOGATE(_id, cname, pname, f, mo, df, ch, prate) \
 	{							\
 		.id		= _id,				\
 		.branch_type	= branch_fraction_divider,	\
@@ -608,6 +611,7 @@ struct rockchip_clk_branch {
 		.div_flags	= df,				\
 		.gate_offset	= -1,				\
 		.child		= ch,				\
+		.max_prate	= prate,			\
 	}
 
 #define COMPOSITE_DDRCLK(_id, cname, pnames, f, mo, ms, mw,	\
diff --git a/include/linux/clk-provider.h b/include/linux/clk-provider.h
index 2ae7604783dd..30993c0630a3 100644
--- a/include/linux/clk-provider.h
+++ b/include/linux/clk-provider.h
@@ -624,6 +624,7 @@ struct clk_hw *clk_hw_register_fixed_factor(struct device *dev,
  * @mwidth:	width of the numerator bit field
  * @nshift:	shift to the denominator bit field
  * @nwidth:	width of the denominator bit field
+ * @max_parent:	the maximum frequency of fractional divider parent clock
  * @lock:	register lock
  *
  * Clock with adjustable fractional divider affecting its output frequency.
@@ -647,6 +648,7 @@ struct clk_fractional_divider {
 	u8		nwidth;
 	u32		nmask;
 	u8		flags;
+	unsigned long	max_prate;
 	void		(*approximation)(struct clk_hw *hw,
 				unsigned long rate, unsigned long *parent_rate,
 				unsigned long *m, unsigned long *n);
-- 
1.9.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

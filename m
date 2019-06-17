Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A0A947B53
	for <lists+linux-rockchip@lfdr.de>; Mon, 17 Jun 2019 09:39:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WdbybODC4C+9a095vWiEZo6Xu+3D6O89ueprYr2m6Ug=; b=SmB7Tsl0RP6qcR
	2PO46WbMprNvyl6iwY9LCe8PGLY1cjLivyWQvSULiiX/nNRj1UX3BKnq0UNCc06OafKsyYewftWUv
	q3yVTZ4NDmBdbXicHbDwAglN9HjoAGT/9Br3Mp9E7MekNjTu2ssHQyZBkL16su/Lc67zwIW6GG0WD
	Xgc4RH90vO7FFAaQrC7VTkoH9lAG0OhGWEJuH2fgogl6DrRezaI03u+Ei0VZ7P+a+jF15GR/qvvFh
	K20BQV6PqLlcYjot+G2OrrwfKyU6VS00+qmaBj2OlHLIke1B8OuNy3EJQ3I+b4F28cFzCFsXresXS
	ORPlGO7AfhrSedOIO2/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcmEg-0007p0-9I; Mon, 17 Jun 2019 07:39:26 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcmEb-0007lV-US
 for linux-rockchip@lists.infradead.org; Mon, 17 Jun 2019 07:39:23 +0000
Received: by mail-pg1-x544.google.com with SMTP id v11so5308792pgl.5
 for <linux-rockchip@lists.infradead.org>; Mon, 17 Jun 2019 00:39:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=jYVJfJji5VncNUtRfq/ZDyMh3tw9MhBZTI5H0xl5J+I=;
 b=cxMisTbIEyYfywYjiR+l9PXcdiecmmMbgyULObRSiBThdtjicbnr0SVQ4nr84mcvmG
 02Ub0UNnEAvW564fHrwrUaye+JJUF6CEx3H/Yf4XBFjtJqluYB8tTub1BL+Hh3a+o/Ru
 u/limPI/UGTI/08qtB6JEgQYQp4y9NIoG5XAI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=jYVJfJji5VncNUtRfq/ZDyMh3tw9MhBZTI5H0xl5J+I=;
 b=r0++iBBKYqa29OyqGo8J9YSvFEZcRqP9IYQmFJw6ivTtgvfGo0FomnW3F8GfSQ1sVt
 2NEfYuIO5MCBrsj6aXwpuiSHeaChw12MPl0DcXI4ZyCQPgFgwJpihWrpSeoKPwwPIGFM
 NT91jNdxtMSI126yZRrhsCxG6I5X/Q928QKaY3X13BDo2MieTlGDLmSjkqX1utX8oQKa
 Ebb43++hZWbeBjGv57SIc5OAeL09yTd0ew9Zn9/X4Uu9emzSoZ2Go40YUlHqROqPNaDn
 jskxouKcq76OfcGKSpZPVji8EQ4D9ZQkMqDOEdVC6kERYivozH9OUYNnjfcGoB6h4xp3
 paSA==
X-Gm-Message-State: APjAAAVTL3tH2eaADDew3VB3osYM8sMSIpmcHN7SW0S4EqW1hY+cCm6J
 49cACmsuB8S9sco+ikrukOo6FRuDx4A=
X-Google-Smtp-Source: APXvYqxcGDtjdnUaSmM7KA9Gk5V4kaOKKN++aFzIYYtXhH8d197KwZuGUDZO4hWUdGrDxSVaIhQmAA==
X-Received: by 2002:aa7:9834:: with SMTP id q20mr70709410pfl.196.1560757161285; 
 Mon, 17 Jun 2019 00:39:21 -0700 (PDT)
Received: from localhost.localdomain ([49.206.203.245])
 by smtp.gmail.com with ESMTPSA id m41sm15205998pje.18.2019.06.17.00.39.18
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 00:39:20 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v2 54/99] clk: rockchip: rk3399: Fix check patch warnings and
 checks
Date: Mon, 17 Jun 2019 13:02:07 +0530
Message-Id: <20190617073252.27810-55-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190617073252.27810-1-jagan@amarulasolutions.com>
References: <20190617073252.27810-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_003922_049174_B6349145 
X-CRM114-Status: GOOD (  16.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-rockchip@lists.infradead.org, gajjar04akash@gmail.com,
 linux-amarula@amarulasolutions.com, Jagan Teki <jagan@amarulasolutions.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

- CHECK: spaces preferred around that '*'
- CHECK: spaces preferred around that '/'
- CHECK: space preferred before that '|'
- WARNING: macros should not use a trailing semicolon
- CHECK: Unnecessary parentheses around 'fbdiv <= min_fbdiv'
- CHECK: Unnecessary parentheses around 'parent->id == SCLK_MAC'
- CHECK: Unnecessary parentheses around 'parent->dev == clk->dev'
- WARNING: line over 80 characters
- CHECK: Prefer kernel type 'u8' over 'uint8_t'
- Add proper macro definitions arrangements

Note: there are still line over 80 characters and other warnings but
fixing those making code look unreadable, so I kept it as it is.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 drivers/clk/rockchip/clk_rk3399.c | 68 ++++++++++++++-----------------
 1 file changed, 31 insertions(+), 37 deletions(-)

diff --git a/drivers/clk/rockchip/clk_rk3399.c b/drivers/clk/rockchip/clk_rk3399.c
index aa6a8ad1c9..5d1ad94e85 100644
--- a/drivers/clk/rockchip/clk_rk3399.c
+++ b/drivers/clk/rockchip/clk_rk3399.c
@@ -38,8 +38,8 @@ struct pll_div {
 };
 
 #define RATE_TO_DIV(input_rate, output_rate) \
-	((input_rate) / (output_rate) - 1);
-#define DIV_TO_RATE(input_rate, div)    ((input_rate) / ((div) + 1))
+	((input_rate) / (output_rate) - 1)
+#define DIV_TO_RATE(input_rate, div)		((input_rate) / ((div) + 1))
 
 #define PLL_DIVISORS(hz, _refdiv, _postdiv1, _postdiv2) {\
 	.refdiv = _refdiv,\
@@ -53,15 +53,15 @@ static const struct pll_div cpll_init_cfg = PLL_DIVISORS(CPLL_HZ, 1, 2, 2);
 static const struct pll_div ppll_init_cfg = PLL_DIVISORS(PPLL_HZ, 2, 2, 1);
 #endif
 
-static const struct pll_div apll_l_1600_cfg = PLL_DIVISORS(1600*MHz, 3, 1, 1);
-static const struct pll_div apll_l_600_cfg = PLL_DIVISORS(600*MHz, 1, 2, 1);
+static const struct pll_div apll_l_1600_cfg = PLL_DIVISORS(1600 * MHz, 3, 1, 1);
+static const struct pll_div apll_l_600_cfg = PLL_DIVISORS(600 * MHz, 1, 2, 1);
 
 static const struct pll_div *apll_l_cfgs[] = {
 	[APLL_L_1600_MHZ] = &apll_l_1600_cfg,
 	[APLL_L_600_MHZ] = &apll_l_600_cfg,
 };
 
-static const struct pll_div apll_b_600_cfg = PLL_DIVISORS(600*MHz, 1, 2, 1);
+static const struct pll_div apll_b_600_cfg = PLL_DIVISORS(600 * MHz, 1, 2, 1);
 static const struct pll_div *apll_b_cfgs[] = {
 	[APLL_B_600_MHZ] = &apll_b_600_cfg,
 };
@@ -393,7 +393,7 @@ static int pll_para_config(u32 freq_hz, struct pll_div *div)
 		fref_khz = ref_khz / refdiv;
 
 		fbdiv = vco_khz / fref_khz;
-		if ((fbdiv >= max_fbdiv) || (fbdiv <= min_fbdiv))
+		if (fbdiv >= max_fbdiv || fbdiv <= min_fbdiv)
 			continue;
 		diff_khz = vco_khz - fbdiv * fref_khz;
 		if (fbdiv + 1 < max_fbdiv && diff_khz > fref_khz / 2) {
@@ -409,7 +409,7 @@ static int pll_para_config(u32 freq_hz, struct pll_div *div)
 		div->fbdiv = fbdiv;
 	}
 
-	if (best_diff_khz > 4 * (MHz/KHz)) {
+	if (best_diff_khz > 4 * (MHz / KHz)) {
 		printf("%s: Failed to match output frequency %u, "
 		       "difference is %u Hz,exceed 4MHZ\n", __func__, freq_hz,
 		       best_diff_khz * KHz);
@@ -489,28 +489,21 @@ void rk3399_configure_cpu_b(struct rk3399_cru *cru,
 }
 
 #define I2C_CLK_REG_MASK(bus) \
-			(I2C_DIV_CON_MASK << \
-			CLK_I2C ##bus## _DIV_CON_SHIFT | \
-			CLK_I2C_PLL_SEL_MASK << \
-			CLK_I2C ##bus## _PLL_SEL_SHIFT)
+	(I2C_DIV_CON_MASK << CLK_I2C ##bus## _DIV_CON_SHIFT | \
+	 CLK_I2C_PLL_SEL_MASK << CLK_I2C ##bus## _PLL_SEL_SHIFT)
 
 #define I2C_CLK_REG_VALUE(bus, clk_div) \
-			      ((clk_div - 1) << \
-					CLK_I2C ##bus## _DIV_CON_SHIFT | \
-			      CLK_I2C_PLL_SEL_GPLL << \
-					CLK_I2C ##bus## _PLL_SEL_SHIFT)
+	((clk_div - 1) << CLK_I2C ##bus## _DIV_CON_SHIFT | \
+	 CLK_I2C_PLL_SEL_GPLL << CLK_I2C ##bus## _PLL_SEL_SHIFT)
 
 #define I2C_CLK_DIV_VALUE(con, bus) \
-			(con >> CLK_I2C ##bus## _DIV_CON_SHIFT) & \
-				I2C_DIV_CON_MASK;
+	((con >> CLK_I2C ##bus## _DIV_CON_SHIFT) & I2C_DIV_CON_MASK)
 
 #define I2C_PMUCLK_REG_MASK(bus) \
-			(I2C_DIV_CON_MASK << \
-			 CLK_I2C ##bus## _DIV_CON_SHIFT)
+	(I2C_DIV_CON_MASK << CLK_I2C ##bus## _DIV_CON_SHIFT)
 
 #define I2C_PMUCLK_REG_VALUE(bus, clk_div) \
-				((clk_div - 1) << \
-				CLK_I2C ##bus## _DIV_CON_SHIFT)
+	((clk_div - 1) << CLK_I2C ##bus## _DIV_CON_SHIFT)
 
 static ulong rk3399_i2c_get_clk(struct rk3399_cru *cru, ulong clk_id)
 {
@@ -597,9 +590,9 @@ static ulong rk3399_i2c_set_clk(struct rk3399_cru *cru, ulong clk_id, uint hz)
  */
 
 struct spi_clkreg {
-	uint8_t reg;  /* CLKSEL_CON[reg] register in CRU */
-	uint8_t div_shift;
-	uint8_t sel_shift;
+	u8 reg;  /* CLKSEL_CON[reg] register in CRU */
+	u8 div_shift;
+	u8 sel_shift;
 };
 
 /*
@@ -678,7 +671,7 @@ static ulong rk3399_spi_set_clk(struct rk3399_cru *cru, ulong clk_id, uint hz)
 static ulong rk3399_vop_set_clk(struct rk3399_cru *cru, ulong clk_id, u32 hz)
 {
 	struct pll_div vpll_config = {0};
-	int aclk_vop = 198*MHz;
+	int aclk_vop = 198 * MHz;
 	void *aclkreg_addr, *dclkreg_addr;
 	u32 div;
 
@@ -710,7 +703,7 @@ static ulong rk3399_vop_set_clk(struct rk3399_cru *cru, ulong clk_id, u32 hz)
 	rkclk_set_pll(&cru->vpll_con[0], &vpll_config);
 
 	rk_clrsetreg(dclkreg_addr,
-		     DCLK_VOP_DCLK_SEL_MASK | DCLK_VOP_PLL_SEL_MASK|
+		     DCLK_VOP_DCLK_SEL_MASK | DCLK_VOP_PLL_SEL_MASK |
 		     DCLK_VOP_DIV_CON_MASK,
 		     DCLK_VOP_DCLK_SEL_DIVOUT << DCLK_VOP_DCLK_SEL_SHIFT |
 		     DCLK_VOP_PLL_SEL_VPLL << DCLK_VOP_PLL_SEL_SHIFT |
@@ -750,7 +743,7 @@ static ulong rk3399_mmc_set_clk(struct rk3399_cru *cru,
 				ulong clk_id, ulong set_rate)
 {
 	int src_clk_div;
-	int aclk_emmc = 198*MHz;
+	int aclk_emmc = 198 * MHz;
 
 	switch (clk_id) {
 	case HCLK_SDMMC:
@@ -776,7 +769,7 @@ static ulong rk3399_mmc_set_clk(struct rk3399_cru *cru,
 		break;
 	case SCLK_EMMC:
 		/* Select aclk_emmc source from GPLL */
-		src_clk_div = DIV_ROUND_UP(GPLL_HZ , aclk_emmc);
+		src_clk_div = DIV_ROUND_UP(GPLL_HZ, aclk_emmc);
 		assert(src_clk_div - 1 < 32);
 
 		rk_clrsetreg(&cru->clksel_con[21],
@@ -834,23 +827,23 @@ static ulong rk3399_ddr_set_clk(struct rk3399_cru *cru,
 
 	/*  clk_ddrc == DPLL = 24MHz / refdiv * fbdiv / postdiv1 / postdiv2 */
 	switch (set_rate) {
-	case 200*MHz:
+	case 200 * MHz:
 		dpll_cfg = (struct pll_div)
 		{.refdiv = 1, .fbdiv = 50, .postdiv1 = 6, .postdiv2 = 1};
 		break;
-	case 300*MHz:
+	case 300 * MHz:
 		dpll_cfg = (struct pll_div)
 		{.refdiv = 2, .fbdiv = 100, .postdiv1 = 4, .postdiv2 = 1};
 		break;
-	case 666*MHz:
+	case 666 * MHz:
 		dpll_cfg = (struct pll_div)
 		{.refdiv = 2, .fbdiv = 111, .postdiv1 = 2, .postdiv2 = 1};
 		break;
-	case 800*MHz:
+	case 800 * MHz:
 		dpll_cfg = (struct pll_div)
 		{.refdiv = 1, .fbdiv = 100, .postdiv1 = 3, .postdiv2 = 1};
 		break;
-	case 933*MHz:
+	case 933 * MHz:
 		dpll_cfg = (struct pll_div)
 		{.refdiv = 1, .fbdiv = 116, .postdiv1 = 3, .postdiv2 = 1};
 		break;
@@ -916,7 +909,6 @@ static ulong rk3399_clk_get_rate(struct clk *clk)
 	case SCLK_UART2:
 	case SCLK_UART3:
 		return 24000000;
-		break;
 	case PCLK_HDMI_CTRL:
 		break;
 	case DCLK_VOP0:
@@ -1014,7 +1006,8 @@ static ulong rk3399_clk_set_rate(struct clk *clk, ulong rate)
 	return ret;
 }
 
-static int __maybe_unused rk3399_gmac_set_parent(struct clk *clk, struct clk *parent)
+static int __maybe_unused rk3399_gmac_set_parent(struct clk *clk,
+						 struct clk *parent)
 {
 	struct rk3399_clk_priv *priv = dev_get_priv(clk->dev);
 	const char *clock_output_name;
@@ -1024,7 +1017,7 @@ static int __maybe_unused rk3399_gmac_set_parent(struct clk *clk, struct clk *pa
 	 * If the requested parent is in the same clock-controller and
 	 * the id is SCLK_MAC ("clk_gmac"), switch to the internal clock.
 	 */
-	if ((parent->dev == clk->dev) && (parent->id == SCLK_MAC)) {
+	if (parent->dev == clk->dev && parent->id == SCLK_MAC) {
 		debug("%s: switching RGMII to SCLK_MAC\n", __func__);
 		rk_clrreg(&priv->cru->clksel_con[19], BIT(4));
 		return 0;
@@ -1049,7 +1042,8 @@ static int __maybe_unused rk3399_gmac_set_parent(struct clk *clk, struct clk *pa
 	return -EINVAL;
 }
 
-static int __maybe_unused rk3399_clk_set_parent(struct clk *clk, struct clk *parent)
+static int __maybe_unused rk3399_clk_set_parent(struct clk *clk,
+						struct clk *parent)
 {
 	switch (clk->id) {
 	case SCLK_RMII_SRC:
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92EC3470E2
	for <lists+linux-rockchip@lfdr.de>; Sat, 15 Jun 2019 17:31:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wYiw2fM9TP4LCnK3U0QC9iyw0lnXCmCvKoYtRV1fbew=; b=ImpP5Cj/PE/C5o
	fdtHZklke+Xi9LLFFFgVn2d36hwIwKfjw/W44aAMCa9HCwZFxueso6ASztBi6hpQVU+zdYWdvI3bN
	LEzg2eyYcjsUXF1F1gDejPpnuZtiPALubQpvr8yuqH4n9dN+BFGhPFMTf+j2aDW3N9N/dYpYdgrKk
	20XqpSVeXHQyl3YfJVfEdrRNHBRXcBjFIVuYpzUwUIr32ogL2RTIbpCo6w0lzOVpGSqh+nQWoxPEU
	BS76TblAw9/5W/5yJR/PzetWli1fA28mG1Qnor4m2fN1wHXioP/AhWXdBiWm5o9jbDyiWR7HmfBbA
	cc+IxAYVgmhDI+zrg7kA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcAeD-0007P1-1y; Sat, 15 Jun 2019 15:31:17 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcAda-00077X-6k; Sat, 15 Jun 2019 15:30:40 +0000
Received: from ip5f5a6320.dynamic.kabel-deutschland.de ([95.90.99.32]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hcAdX-0002kc-Og; Sat, 15 Jun 2019 17:30:35 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org
Subject: [PATCH 2/3] clk: rockchip: add watchdog pclk on rk3328
Date: Sat, 15 Jun 2019 17:30:31 +0200
Message-Id: <20190615153032.27772-2-heiko@sntech.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190615153032.27772-1-heiko@sntech.de>
References: <20190615153032.27772-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190615_083038_446559_015EEF91 
X-CRM114-Status: UNSURE (   9.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, papadakospan@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

The watchdog pclk is controlled from the secure GRF but we still
want to mention it explicitly to not use arbitary parent clocks
in the devicetree wdt node, so add a SGRF_GATE for it.

Suggested-by: Leonidas P. Papadakos <papadakospan@gmail.com>
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 drivers/clk/rockchip/clk-rk3328.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/clk/rockchip/clk-rk3328.c b/drivers/clk/rockchip/clk-rk3328.c
index 076b9777a955..c186a1985bf4 100644
--- a/drivers/clk/rockchip/clk-rk3328.c
+++ b/drivers/clk/rockchip/clk-rk3328.c
@@ -791,6 +791,9 @@ static struct rockchip_clk_branch rk3328_clk_branches[] __initdata = {
 	GATE(PCLK_SARADC, "pclk_saradc", "pclk_bus", 0, RK3328_CLKGATE_CON(17), 15, GFLAGS),
 	GATE(0, "pclk_pmu", "pclk_bus", CLK_IGNORE_UNUSED, RK3328_CLKGATE_CON(28), 3, GFLAGS),
 
+	/* Watchdog pclk is controlled from the secure GRF */
+	SGRF_GATE(PCLK_WDT, "pclk_wdt", "pclk_bus"),
+
 	GATE(PCLK_USB3PHY_OTG, "pclk_usb3phy_otg", "pclk_phy_pre", 0, RK3328_CLKGATE_CON(28), 1, GFLAGS),
 	GATE(PCLK_USB3PHY_PIPE, "pclk_usb3phy_pipe", "pclk_phy_pre", 0, RK3328_CLKGATE_CON(28), 2, GFLAGS),
 	GATE(PCLK_USB3_GRF, "pclk_usb3_grf", "pclk_phy_pre", CLK_IGNORE_UNUSED, RK3328_CLKGATE_CON(17), 2, GFLAGS),
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

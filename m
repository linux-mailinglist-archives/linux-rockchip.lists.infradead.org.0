Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E62DCB491A
	for <lists+linux-rockchip@lfdr.de>; Tue, 17 Sep 2019 10:19:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OFZTPWmUtmojFDaBk6IptXwIvimRWA72ZRRGtLivIpA=; b=C17H8k+W9kRK60
	ylVaqXbFiZPqsUNSQIiba/pam7V1zJOkuhQ1hcvmUVvNjCn8F8jqLoz2iYMIF9wTES13lrhZy5DxH
	8I8kkewDSPjke1PyEyYOlC1D885++9pxH0KYl6+yBE+GXpKnqrKxGuWInj3qAIVDdf2KHJkFX0ivy
	23dG2yNH6XD44nNHTZsXSdvAU/Tb5NW4jMR4Xd0zFQFuEK2zIZFq/hZeBdO1D6n0tgjq5jaKCqw9D
	qACv4N/7NdaD7gvnIoWLvONJpsAoCUpEV7jbVcYEO2XqMhEREE74xpmtaKQyP344O6segG9kNszl+
	iv2pIAI89CfbMz8IZJnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iA8ht-0006qI-Py; Tue, 17 Sep 2019 08:19:30 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iA8ho-0006mJ-H6
 for linux-rockchip@lists.infradead.org; Tue, 17 Sep 2019 08:19:26 +0000
Received: from ip5f5a6266.dynamic.kabel-deutschland.de ([95.90.98.102]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iA8hm-0005Uf-Pw; Tue, 17 Sep 2019 10:19:22 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-clk@vger.kernel.org
Subject: [PATCH 4/5] clk: rockchip: add video-related niu clocks as critical
 on px30
Date: Tue, 17 Sep 2019 10:19:02 +0200
Message-Id: <20190917081903.25139-4-heiko@sntech.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190917081903.25139-1-heiko@sntech.de>
References: <20190917081903.25139-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_011924_711261_A48FDE1C 
X-CRM114-Status: UNSURE (   9.32  )
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

Video-In and -Out interconnect clocks need to stay on all the
time for the peripheral to work and we do not model the actual
interconnect at this point. So mark them as critical for now.

Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 drivers/clk/rockchip/clk-px30.c | 15 ++++++++++-----
 1 file changed, 10 insertions(+), 5 deletions(-)

diff --git a/drivers/clk/rockchip/clk-px30.c b/drivers/clk/rockchip/clk-px30.c
index 5c77da1e3abc..7a8bc416c947 100644
--- a/drivers/clk/rockchip/clk-px30.c
+++ b/drivers/clk/rockchip/clk-px30.c
@@ -803,25 +803,25 @@ static struct rockchip_clk_branch px30_clk_branches[] __initdata = {
 	GATE(0, "pclk_cpu_hoost", "pclk_top_pre", CLK_IGNORE_UNUSED, PX30_CLKGATE_CON(16), 7, GFLAGS),
 
 	/* PD_VI */
-	GATE(0, "aclk_vi_niu", "aclk_vi_pre", CLK_IGNORE_UNUSED, PX30_CLKGATE_CON(4), 15, GFLAGS),
+	GATE(0, "aclk_vi_niu", "aclk_vi_pre", 0, PX30_CLKGATE_CON(4), 15, GFLAGS),
 	GATE(ACLK_CIF, "aclk_cif", "aclk_vi_pre", 0, PX30_CLKGATE_CON(5), 1, GFLAGS),
 	GATE(ACLK_ISP, "aclk_isp", "aclk_vi_pre", 0, PX30_CLKGATE_CON(5), 3, GFLAGS),
-	GATE(0, "hclk_vi_niu", "hclk_vi_pre", CLK_IGNORE_UNUSED, PX30_CLKGATE_CON(5), 0, GFLAGS),
+	GATE(0, "hclk_vi_niu", "hclk_vi_pre", 0, PX30_CLKGATE_CON(5), 0, GFLAGS),
 	GATE(HCLK_CIF, "hclk_cif", "hclk_vi_pre", 0, PX30_CLKGATE_CON(5), 2, GFLAGS),
 	GATE(HCLK_ISP, "hclk_isp", "hclk_vi_pre", 0, PX30_CLKGATE_CON(5), 4, GFLAGS),
 
 	/* PD_VO */
-	GATE(0, "aclk_vo_niu", "aclk_vo_pre", CLK_IGNORE_UNUSED, PX30_CLKGATE_CON(3), 0, GFLAGS),
+	GATE(0, "aclk_vo_niu", "aclk_vo_pre", 0, PX30_CLKGATE_CON(3), 0, GFLAGS),
 	GATE(ACLK_VOPB, "aclk_vopb", "aclk_vo_pre", 0, PX30_CLKGATE_CON(3), 3, GFLAGS),
 	GATE(ACLK_RGA, "aclk_rga", "aclk_vo_pre", 0, PX30_CLKGATE_CON(3), 7, GFLAGS),
 	GATE(ACLK_VOPL, "aclk_vopl", "aclk_vo_pre", 0, PX30_CLKGATE_CON(3), 5, GFLAGS),
 
-	GATE(0, "hclk_vo_niu", "hclk_vo_pre", CLK_IGNORE_UNUSED, PX30_CLKGATE_CON(3), 1, GFLAGS),
+	GATE(0, "hclk_vo_niu", "hclk_vo_pre", 0, PX30_CLKGATE_CON(3), 1, GFLAGS),
 	GATE(HCLK_VOPB, "hclk_vopb", "hclk_vo_pre", 0, PX30_CLKGATE_CON(3), 4, GFLAGS),
 	GATE(HCLK_RGA, "hclk_rga", "hclk_vo_pre", 0, PX30_CLKGATE_CON(3), 8, GFLAGS),
 	GATE(HCLK_VOPL, "hclk_vopl", "hclk_vo_pre", 0, PX30_CLKGATE_CON(3), 6, GFLAGS),
 
-	GATE(0, "pclk_vo_niu", "pclk_vo_pre", CLK_IGNORE_UNUSED, PX30_CLKGATE_CON(3), 2, GFLAGS),
+	GATE(0, "pclk_vo_niu", "pclk_vo_pre", 0, PX30_CLKGATE_CON(3), 2, GFLAGS),
 	GATE(PCLK_MIPI_DSI, "pclk_mipi_dsi", "pclk_vo_pre", 0, PX30_CLKGATE_CON(3), 9, GFLAGS),
 
 	/* PD_BUS */
@@ -986,6 +986,11 @@ static const char *const px30_cru_critical_clocks[] __initconst = {
 	"pclk_top_pre",
 	"pclk_pmu_pre",
 	"hclk_usb_niu",
+	"pclk_vo_niu",
+	"aclk_vo_niu",
+	"hclk_vo_niu",
+	"aclk_vi_niu",
+	"hclk_vi_niu",
 	"pll_npll",
 	"usb480m",
 	"clk_uart2",
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

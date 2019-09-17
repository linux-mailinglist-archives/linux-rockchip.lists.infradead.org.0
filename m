Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88758B491B
	for <lists+linux-rockchip@lfdr.de>; Tue, 17 Sep 2019 10:19:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8uA74zCxLl8M31XLK/mi6AkNt8fzPFPiHA5feG/W6Eg=; b=iWpjAKCu8NARyO
	0uhLeIfAVeJmDvC1X9rOH/ws4hUORIDjzWvUBb2KLTtW3TWMdt9wOlkeDwoGJx1OwcED6oJ4Qw5Ef
	KeFVUvHy1IBhZBiMRAnTBL8wXZRrChVZWjR1P0XZ3wzX1eLldxxG6XeX3r5WeysDIt/DIALIxXwUl
	OKBLqMSaE7jrOhtyCHyqsVUUObp7YN1wwLY905c8AblNxvzcEObQzzEU+GUM9ABSSl9A5cPiiSZRC
	j7YqPHlrcO0JNyswVArT4geV6JfenZUiIVoINj6zacHjl3R4ozB0kHLV2wxMWgHabqLhgxQhi480t
	P49CNuxFiaRS5Fpp+5YQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iA8hv-0006ru-Kd; Tue, 17 Sep 2019 08:19:31 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iA8ho-0006mV-Ra
 for linux-rockchip@lists.infradead.org; Tue, 17 Sep 2019 08:19:26 +0000
Received: from ip5f5a6266.dynamic.kabel-deutschland.de ([95.90.98.102]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iA8hn-0005Uf-4y; Tue, 17 Sep 2019 10:19:23 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-clk@vger.kernel.org
Subject: [PATCH 5/5] clk: rockchip: protect the pclk_usb_grf as critical
Date: Tue, 17 Sep 2019 10:19:03 +0200
Message-Id: <20190917081903.25139-5-heiko@sntech.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190917081903.25139-1-heiko@sntech.de>
References: <20190917081903.25139-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_011925_044059_43527EE7 
X-CRM114-Status: GOOD (  10.06  )
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

Make this clock a real critical clock, so that writes to the usbphy grf
always succeed.

Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 drivers/clk/rockchip/clk-px30.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/rockchip/clk-px30.c b/drivers/clk/rockchip/clk-px30.c
index 7a8bc416c947..6fb9c98b7d24 100644
--- a/drivers/clk/rockchip/clk-px30.c
+++ b/drivers/clk/rockchip/clk-px30.c
@@ -799,7 +799,7 @@ static struct rockchip_clk_branch px30_clk_branches[] __initdata = {
 	GATE(0, "pclk_ddrphy", "pclk_top_pre", CLK_IGNORE_UNUSED, PX30_CLKGATE_CON(16), 3, GFLAGS),
 	GATE(PCLK_MIPIDSIPHY, "pclk_mipidsiphy", "pclk_top_pre", 0, PX30_CLKGATE_CON(16), 4, GFLAGS),
 	GATE(PCLK_MIPICSIPHY, "pclk_mipicsiphy", "pclk_top_pre", 0, PX30_CLKGATE_CON(16), 5, GFLAGS),
-	GATE(PCLK_USB_GRF, "pclk_usb_grf", "pclk_top_pre", CLK_IGNORE_UNUSED, PX30_CLKGATE_CON(16), 6, GFLAGS),
+	GATE(PCLK_USB_GRF, "pclk_usb_grf", "pclk_top_pre", 0, PX30_CLKGATE_CON(16), 6, GFLAGS),
 	GATE(0, "pclk_cpu_hoost", "pclk_top_pre", CLK_IGNORE_UNUSED, PX30_CLKGATE_CON(16), 7, GFLAGS),
 
 	/* PD_VI */
@@ -995,6 +995,7 @@ static const char *const px30_cru_critical_clocks[] __initconst = {
 	"usb480m",
 	"clk_uart2",
 	"pclk_uart2",
+	"pclk_usb_grf",
 };
 
 static void __init px30_clk_init(struct device_node *np)
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8CB214B234
	for <lists+linux-rockchip@lfdr.de>; Tue, 28 Jan 2020 11:02:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h12Mh+ZVM6nVtgGaWXa+J8lBVyl4YuyTatY+AYJEkJk=; b=T5ekkwK8EtKrXS
	Fi0qk8vMd94f11Nx/dml94ub6nKo3adxGj/mye4fObdGqHbSsYIqDOb2MhH90J7Xjgl7/op9i6KES
	KhFMUAF7Cpun+4tQheakUyE8S/swZPkZ/n/cnr0+DVmc3+MJDlSjTE70LgaeDPXZPqddtOYlZF9+2
	kmpTafqiVHU3xBLDjTlviF9hH5pOO6B5pD+Z3aL9ZJPI6sggBUkjmLkMyqfT6bSyfJBTCJlIiuaRT
	cj5iWrBkHpJl181QQ3W31RFg2RB1D4UxOcUDg7pjtD7lirnNRbma/wtDiHkgSoxw6ZNgjif5FAdHr
	j6VqjOn20YDtKB2NJvsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwNhs-0007g3-8V; Tue, 28 Jan 2020 10:02:52 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwNhK-0007E0-Ts; Tue, 28 Jan 2020 10:02:20 +0000
Received: from p57b77a13.dip0.t-ipconnect.de ([87.183.122.19]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iwNhE-0008Lk-BR; Tue, 28 Jan 2020 11:02:12 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-clk@vger.kernel.org
Subject: [PATCH 2/3] clk: rockchip: convert basic pll lock_wait to use
 regmap_read_poll_timeout
Date: Tue, 28 Jan 2020 11:02:02 +0100
Message-Id: <20200128100204.1318450-2-heiko@sntech.de>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200128100204.1318450-1-heiko@sntech.de>
References: <20200128100204.1318450-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_020219_111117_841C1C01 
X-CRM114-Status: GOOD (  13.45  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: heiko@sntech.de, sboyd@kernel.org,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>, mturquette@baylibre.com,
 zhangqing@rock-chips.com, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 christoph.muellner@theobroma-systems.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>

Instead of open coding the polling of the lock status, use the
handy regmap_read_poll_timeout for this. As the pll locking is
normally blazingly fast and we don't want to incur additional
delays, we're not doing any sleeps similar to for example the imx
clk-pllv4 and define a very safe but still short timeout of 1ms.

Suggested-by: Stephen Boyd <sboyd@kernel.org>
Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
---
 drivers/clk/rockchip/clk-pll.c | 21 ++++++---------------
 1 file changed, 6 insertions(+), 15 deletions(-)

diff --git a/drivers/clk/rockchip/clk-pll.c b/drivers/clk/rockchip/clk-pll.c
index 43c9fd0086a2..26ca46d49191 100644
--- a/drivers/clk/rockchip/clk-pll.c
+++ b/drivers/clk/rockchip/clk-pll.c
@@ -86,23 +86,14 @@ static int rockchip_pll_wait_lock(struct rockchip_clk_pll *pll)
 {
 	struct regmap *grf = pll->ctx->grf;
 	unsigned int val;
-	int delay = 24000000, ret;
-
-	while (delay > 0) {
-		ret = regmap_read(grf, pll->lock_offset, &val);
-		if (ret) {
-			pr_err("%s: failed to read pll lock status: %d\n",
-			       __func__, ret);
-			return ret;
-		}
+	int ret;
 
-		if (val & BIT(pll->lock_shift))
-			return 0;
-		delay--;
-	}
+	ret = regmap_read_poll_timeout(grf, pll->lock_offset, val,
+				       val & BIT(pll->lock_shift), 0, 1000);
+	if (ret)
+		pr_err("%s: timeout waiting for pll to lock\n", __func__);
 
-	pr_err("%s: timeout waiting for pll to lock\n", __func__);
-	return -ETIMEDOUT;
+	return ret;
 }
 
 /**
-- 
2.24.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18C6931D15
	for <lists+linux-rockchip@lfdr.de>; Sat,  1 Jun 2019 15:27:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l6rfMctGa/p/K0LPY216iNyB4iX6aIs6UP3HQtR8l7s=; b=V/7yoUxQfT4AIX
	8KIStMSUmjxcUoWt+RgHJuz+mcGh+njGGwCPHA1tPi8xmhD8QJH/pvFttwIobcORL+yIZuJNZ9g8c
	9sjOyES0aF+8cx8DBnXWyWUHqXOub76pSckaNWoZwvHTmRFrNw4TTBIIle7g1CWCcWfyfHO3+BJI6
	+Fb9WEAtZUq7X3CugGmpFwOzFGllfM1msbZvzkpaeJOR4ewJBHOZtAILTl4wc1BQ0Zy1zq4xMh4OC
	k98UAGmgAAUol2tQeL64O/nF3/QJnaxg7YsJfBuFuR9Ee7IV7w5Md/bUc9AVo4ZaCgltlK3qn5TiV
	/K/ycuZ644XPufL5kr9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hX42F-0005jN-Ro; Sat, 01 Jun 2019 13:26:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hX42C-0005iq-Eh
 for linux-rockchip@lists.infradead.org; Sat, 01 Jun 2019 13:26:57 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 31432273BD;
 Sat,  1 Jun 2019 13:26:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559395616;
 bh=4GRY0/H2V57ByO7mCQ0w4deIe8grY418zVAyg2cu77w=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=gs3ZguG9HTI6IfFAgaC2rfrjpLsm3CUYw7EKGEp6X51iOBpk3tmuY2q2YalcH5EHv
 KDyAB6mpplbKK3DO+qP/Bt3GxfVeAX6khVoymqwpmMCi6zNVrcO173NZGfPZoshjRY
 8Fb1cOE8ae5+y4rpeBXh+6mI+UKhQ+spYFkFgPmc=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.4 32/56] clk: rockchip: Turn on "aclk_dmac1" for
 suspend on rk3288
Date: Sat,  1 Jun 2019 09:25:36 -0400
Message-Id: <20190601132600.27427-32-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190601132600.27427-1-sashal@kernel.org>
References: <20190601132600.27427-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190601_062656_527243_0D032DEB 
X-CRM114-Status: GOOD (  17.81  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Sasha Levin <sashal@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Elaine Zhang <zhangqing@rock-chips.com>,
 Douglas Anderson <dianders@chromium.org>, linux-rockchip@lists.infradead.org,
 linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

From: Douglas Anderson <dianders@chromium.org>

[ Upstream commit 57a20248ef3e429dc822f0774bc4e00136c46c83 ]

Experimentally it can be seen that going into deep sleep (specifically
setting PMU_CLR_DMA and PMU_CLR_BUS in RK3288_PMU_PWRMODE_CON1)
appears to fail unless "aclk_dmac1" is on.  The failure is that the
system never signals that it made it into suspend on the GLOBAL_PWROFF
pin and it just hangs.

NOTE that it's confirmed that it's the actual suspend that fails, not
one of the earlier calls to read/write registers.  Specifically if you
comment out the "PMU_GLOBAL_INT_DISABLE" setting in
rk3288_slp_mode_set() and then comment out the "cpu_do_idle()" call in
rockchip_lpmode_enter() then you can exercise the whole suspend path
without any crashing.

This is currently not a problem with suspend upstream because there is
no current way to exercise the deep suspend code.  However, anyone
trying to make it work will run into this issue.

This was not a problem on shipping rk3288-based Chromebooks because
those devices all ran on an old kernel based on 3.14.  On that kernel
"aclk_dmac1" appears to be left on all the time.

There are several ways to skin this problem.

A) We could add "aclk_dmac1" to the list of critical clocks and that
apperas to work, but presumably that wastes power.

B) We could keep a list of "struct clk" objects to enable at suspend
time in clk-rk3288.c and use the standard clock APIs.

C) We could make the rk3288-pmu driver keep a list of clocks to enable
at suspend time.  Presumably this would require a dts and bindings
change.

D) We could just whack the clock on in the existing syscore suspend
function where we whack a bunch of other clocks.  This is particularly
easy because we know for sure that the clock's only parent
("aclk_cpu") is a critical clock so we don't need to do anything more
than ungate it.

In this case I have chosen D) because it seemed like the least work,
but any of the other options would presumably also work fine.

Signed-off-by: Douglas Anderson <dianders@chromium.org>
Reviewed-by: Elaine Zhang <zhangqing@rock-chips.com>
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/clk/rockchip/clk-rk3288.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/clk/rockchip/clk-rk3288.c b/drivers/clk/rockchip/clk-rk3288.c
index 9040878e3e2b6..a6cda84b67da5 100644
--- a/drivers/clk/rockchip/clk-rk3288.c
+++ b/drivers/clk/rockchip/clk-rk3288.c
@@ -797,6 +797,9 @@ static const int rk3288_saved_cru_reg_ids[] = {
 	RK3288_CLKSEL_CON(10),
 	RK3288_CLKSEL_CON(33),
 	RK3288_CLKSEL_CON(37),
+
+	/* We turn aclk_dmac1 on for suspend; this will restore it */
+	RK3288_CLKGATE_CON(10),
 };
 
 static u32 rk3288_saved_cru_regs[ARRAY_SIZE(rk3288_saved_cru_reg_ids)];
@@ -812,6 +815,14 @@ static int rk3288_clk_suspend(void)
 				readl_relaxed(rk3288_cru_base + reg_id);
 	}
 
+	/*
+	 * Going into deep sleep (specifically setting PMU_CLR_DMA in
+	 * RK3288_PMU_PWRMODE_CON1) appears to fail unless
+	 * "aclk_dmac1" is on.
+	 */
+	writel_relaxed(1 << (12 + 16),
+		       rk3288_cru_base + RK3288_CLKGATE_CON(10));
+
 	/*
 	 * Switch PLLs other than DPLL (for SDRAM) to slow mode to
 	 * avoid crashes on resume. The Mask ROM on the system will
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7C5C20059
	for <lists+linux-rockchip@lfdr.de>; Thu, 16 May 2019 09:30:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=vK1Hzok+WjysVBpLUlcqWXP0VBAVFrrvrSTp6IK2pkY=; b=HyCoAjqYyVDHvBfjO6GMvdE1lO
	OMLBlUt7GUdp5aIr4sXxdZPd0Yg4GW7dJebDajNT6LMS75aN4OdqG0u6sd6o3ojvIQdCLca0eHXD3
	CZIqGzW/j/UpQ9eEnpaSo/xkKF8QS1naaouSFDR7BQh0NUGD/DjqWeLWSXyIr0uMA3VIENnRDRSaW
	1TNlX8kAHb+KgR33DJwaEg4Am6o8xGjAduyp/wdiPTRfmcDUHSPdP1IJ9BBrsypVM9/Qyzt8HxfUm
	HjwHsDTsFtw0D2tpl43Mufj8HG0KXj+wrH50OY0IThcX+UAUyi8X5T9aZyqtscQ1/kU1Sjg50CEPF
	HjanCmxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRAqh-00025H-Tp; Thu, 16 May 2019 07:30:43 +0000
Received: from regular1.263xmail.com ([211.150.70.195])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRAq4-000093-P1; Thu, 16 May 2019 07:30:15 +0000
Received: from zhangqing?rock-chips.com (unknown [192.168.167.236])
 by regular1.263xmail.com (Postfix) with ESMTP id 716C0924;
 Thu, 16 May 2019 15:30:01 +0800 (CST)
X-263anti-spam: KSV:0;BIG:0;
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-KSVirus-check: 0
X-ADDR-CHECKED4: 1
X-ABS-CHECKED: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P6344T140287015487232S1557991797894191_; 
 Thu, 16 May 2019 15:30:00 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <a39dff61e996baea3f0bec1f7520f5d4>
X-RL-SENDER: zhangqing@rock-chips.com
X-SENDER: zhangqing@rock-chips.com
X-LOGIN-NAME: zhangqing@rock-chips.com
X-FST-TO: heiko@sntech.de
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
From: Elaine Zhang <zhangqing@rock-chips.com>
To: heiko@sntech.de
Subject: [PATCH v2 5/6] clk: rockchip: add pll up and down when change pll freq
Date: Thu, 16 May 2019 15:29:57 +0800
Message-Id: <1557991797-13652-1-git-send-email-zhangqing@rock-chips.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1557991736-13580-1-git-send-email-zhangqing@rock-chips.com>
References: <1557991736-13580-1-git-send-email-zhangqing@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_003005_409841_CF37AD3A 
X-CRM114-Status: UNSURE (   8.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: huangtao@rock-chips.com, xxx@rock-chips.com, xf@rock-chips.com,
 sboyd@kernel.org, mturquette@baylibre.com,
 Elaine Zhang <zhangqing@rock-chips.com>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

set pll sequence:
	->set pll to slow mode or other plls
	->set pll down
	->set pll params
	->set pll up
	->wait pll lock status
	->set pll to normal mode

To slove the system error:
wait_pll_lock: timeout waiting for pll to lock
pll_set_params: pll update unsucessful,
		trying to restore old params

Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
---
 drivers/clk/rockchip/clk-pll.c | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/drivers/clk/rockchip/clk-pll.c b/drivers/clk/rockchip/clk-pll.c
index dd0433d4753e..45a64526c78c 100644
--- a/drivers/clk/rockchip/clk-pll.c
+++ b/drivers/clk/rockchip/clk-pll.c
@@ -208,6 +208,11 @@ static int rockchip_rk3036_pll_set_params(struct rockchip_clk_pll *pll,
 		rate_change_remuxed = 1;
 	}
 
+	/* set pll power down */
+	writel(HIWORD_UPDATE(RK3036_PLLCON1_PWRDOWN,
+			     RK3036_PLLCON1_PWRDOWN, 0),
+	       pll->reg_base + RK3036_PLLCON(1));
+
 	/* update pll values */
 	writel_relaxed(HIWORD_UPDATE(rate->fbdiv, RK3036_PLLCON0_FBDIV_MASK,
 					  RK3036_PLLCON0_FBDIV_SHIFT) |
@@ -229,6 +234,11 @@ static int rockchip_rk3036_pll_set_params(struct rockchip_clk_pll *pll,
 	pllcon |= rate->frac << RK3036_PLLCON2_FRAC_SHIFT;
 	writel_relaxed(pllcon, pll->reg_base + RK3036_PLLCON(2));
 
+	/* set pll power up */
+	writel(HIWORD_UPDATE(0, RK3036_PLLCON1_PWRDOWN, 0),
+	       pll->reg_base + RK3036_PLLCON(1));
+	udelay(1);
+
 	/* wait for the pll to lock */
 	ret = rockchip_pll_wait_lock(pll);
 	if (ret) {
@@ -685,6 +695,11 @@ static int rockchip_rk3399_pll_set_params(struct rockchip_clk_pll *pll,
 		rate_change_remuxed = 1;
 	}
 
+	/* set pll power down */
+	writel(HIWORD_UPDATE(RK3399_PLLCON3_PWRDOWN,
+			     RK3399_PLLCON3_PWRDOWN, 0),
+	       pll->reg_base + RK3399_PLLCON(3));
+
 	/* update pll values */
 	writel_relaxed(HIWORD_UPDATE(rate->fbdiv, RK3399_PLLCON0_FBDIV_MASK,
 						  RK3399_PLLCON0_FBDIV_SHIFT),
@@ -708,6 +723,12 @@ static int rockchip_rk3399_pll_set_params(struct rockchip_clk_pll *pll,
 					    RK3399_PLLCON3_DSMPD_SHIFT),
 		       pll->reg_base + RK3399_PLLCON(3));
 
+	/* set pll power up */
+	writel(HIWORD_UPDATE(0,
+			     RK3399_PLLCON3_PWRDOWN, 0),
+	       pll->reg_base + RK3399_PLLCON(3));
+	udelay(1);
+
 	/* wait for the pll to lock */
 	ret = rockchip_rk3399_pll_wait_lock(pll);
 	if (ret) {
-- 
1.9.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

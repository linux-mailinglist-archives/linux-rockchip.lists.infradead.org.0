Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97DC31D09BF
	for <lists+linux-rockchip@lfdr.de>; Wed, 13 May 2020 09:18:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=NgdzZJgL8h1cWVNmyDoTIms6mVbdPXBtf7j7attU11Y=; b=u34oIXqMM+FTwai/fNUTwPCNk0
	1h9vdoV2qqkehyEBwunNw+AUNgeTQwFUjgw9LXe+YRoXMIXm0EZNmryZoaWOysXoRlT5gUs1Wx+OO
	GA8TUqeF7rUonLYo9zwl3209Y9H+fnSRW2yVf3Kx9isw3ttMrFqTki+8TP/KVziDz72jQdloO8VUa
	uMHFj52WskrWxzBWD5Ha2Q1EiQyulRMjmI1jBiNFqUccfLPo92Xj1wy6q8ZXBbdziIUugVSkIM3kQ
	gyexJjfDACsiV4mJo1fzmpb4Q1vxlw2wYxhwPUtSOuBArOydz++GPdQmGfo25Jq6r5hG9MuyQp/lB
	dGW4QG2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYlej-0000pQ-SM; Wed, 13 May 2020 07:18:17 +0000
Received: from lucky1.263xmail.com ([211.157.147.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYleK-0000Ul-KB
 for linux-rockchip@lists.infradead.org; Wed, 13 May 2020 07:17:55 +0000
Received: from localhost (unknown [192.168.167.32])
 by lucky1.263xmail.com (Postfix) with ESMTP id D1BF9B5E2B;
 Wed, 13 May 2020 15:13:48 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P33519T140426061264640S1589354025823852_; 
 Wed, 13 May 2020 15:13:48 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <91b84ca8cd434994c0ce38886bad323e>
X-RL-SENDER: frank.wang@rock-chips.com
X-SENDER: wmc@rock-chips.com
X-LOGIN-NAME: frank.wang@rock-chips.com
X-FST-TO: heiko@sntech.de
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
X-System-Flag: 0
From: Frank Wang <frank.wang@rock-chips.com>
To: heiko@sntech.de, marex@denx.de, bmeng.cn@gmail.com,
 philipp.tomsich@theobroma-systems.com, klaus.goger@theobroma-systems.com,
 jagan@amarulasolutions.com, sjg@chromium.org, kever.yang@rock-chips.com
Subject: [PATCH v5 01/16] clk: rk3399: Enable/Disable the USB2PHY clk
Date: Wed, 13 May 2020 15:13:29 +0800
Message-Id: <20200513071344.5430-2-frank.wang@rock-chips.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200513071344.5430-1-frank.wang@rock-chips.com>
References: <20200513071344.5430-1-frank.wang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_001752_988436_6C083D1A 
X-CRM114-Status: UNSURE (   7.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.157.147.130 listed in list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [211.157.147.130 listed in wl.mailspike.net]
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
Cc: jianing.ren@rock-chips.com, marek.belisko@gmail.com, wmc@rock-chips.com,
 u-boot@lists.denx.de, william.wu@rock-chips.com,
 linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com,
 chenjh@rock-chips.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

From: Jagan Teki <jagan@amarulasolutions.com>

Enable/Disable the USB2PHY clk for rk3399.

CLK is clear in enable and set in disable functionality.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 drivers/clk/rockchip/clk_rk3399.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/clk/rockchip/clk_rk3399.c b/drivers/clk/rockchip/clk_rk3399.c
index 5fb72d83c2..b53f2f984e 100644
--- a/drivers/clk/rockchip/clk_rk3399.c
+++ b/drivers/clk/rockchip/clk_rk3399.c
@@ -1091,6 +1091,12 @@ static int rk3399_clk_enable(struct clk *clk)
 	case SCLK_MACREF_OUT:
 		rk_clrreg(&priv->cru->clkgate_con[5], BIT(6));
 		break;
+	case SCLK_USB2PHY0_REF:
+		rk_clrreg(&priv->cru->clkgate_con[6], BIT(5));
+		break;
+	case SCLK_USB2PHY1_REF:
+		rk_clrreg(&priv->cru->clkgate_con[6], BIT(6));
+		break;
 	case ACLK_GMAC:
 		rk_clrreg(&priv->cru->clkgate_con[32], BIT(0));
 		break;
@@ -1167,6 +1173,12 @@ static int rk3399_clk_disable(struct clk *clk)
 	case SCLK_MACREF_OUT:
 		rk_setreg(&priv->cru->clkgate_con[5], BIT(6));
 		break;
+	case SCLK_USB2PHY0_REF:
+		rk_setreg(&priv->cru->clkgate_con[6], BIT(5));
+		break;
+	case SCLK_USB2PHY1_REF:
+		rk_setreg(&priv->cru->clkgate_con[6], BIT(6));
+		break;
 	case ACLK_GMAC:
 		rk_setreg(&priv->cru->clkgate_con[32], BIT(0));
 		break;
-- 
2.17.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

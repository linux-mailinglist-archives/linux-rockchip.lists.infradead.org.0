Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 663FF1D09A7
	for <lists+linux-rockchip@lfdr.de>; Wed, 13 May 2020 09:14:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=UjKJDK0ZdUDCaekEp2NfSnEi894mlWs5qhvyprfVVj4=; b=Th8m2d7Ut3JOlFxScx+a6TOLZw
	oootSb6OlzloZJ1Cn2RLOeE6ZLlDm6k8af9HIakMWX/+ygyNUKGWl+JHAvlm3nDVMGb8bal1RKsqO
	tidJmfgAaHAd89G3R7uO6ZzfQvTVdzhsXth/dvpO4Vbj/SwfARFcjCrn7pKJk1hEifGyDuAblSnI/
	e3OHBep7xqp3OwpGnybB3dBCWB/JUuE8WzY5H8mVP0ndsg2dt0n6ZNgN0WdrCUoBQOYCGLcz11tCh
	YB9YLkvmXUC5MLSFz8OJWYnfEWmjlu4OG2yNRI8n3CS0+1RxsKjl81NqXv55ewG3b8YAO01yd0U2h
	Lum34OBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYlaf-00056z-Ag; Wed, 13 May 2020 07:14:05 +0000
Received: from lucky1.263xmail.com ([211.157.147.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYlab-00054w-Ea
 for linux-rockchip@lists.infradead.org; Wed, 13 May 2020 07:14:03 +0000
Received: from localhost (unknown [192.168.167.32])
 by lucky1.263xmail.com (Postfix) with ESMTP id 4DD1AA4F2A;
 Wed, 13 May 2020 15:13:50 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P33519T140426061264640S1589354025823852_; 
 Wed, 13 May 2020 15:13:50 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <f35db7a6e8c1b1b03d98a9afe59a0c94>
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
Subject: [PATCH v5 03/16] clk: rk3399: Enable/Disable TCPHY clocks
Date: Wed, 13 May 2020 15:13:31 +0800
Message-Id: <20200513071344.5430-4-frank.wang@rock-chips.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200513071344.5430-1-frank.wang@rock-chips.com>
References: <20200513071344.5430-1-frank.wang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_001401_708627_E0262CED 
X-CRM114-Status: UNSURE (   7.06  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.157.147.134 listed in list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [211.157.147.134 listed in wl.mailspike.net]
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

Enable/Disable TCPHY clock for rk3399 platform.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 drivers/clk/rockchip/clk_rk3399.c | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/drivers/clk/rockchip/clk_rk3399.c b/drivers/clk/rockchip/clk_rk3399.c
index 98fc6a3267..06232f1903 100644
--- a/drivers/clk/rockchip/clk_rk3399.c
+++ b/drivers/clk/rockchip/clk_rk3399.c
@@ -1144,6 +1144,18 @@ static int rk3399_clk_enable(struct clk *clk)
 	case HCLK_HOST1_ARB:
 		rk_clrreg(&priv->cru->clksel_con[20], BIT(8));
 		break;
+	case SCLK_UPHY0_TCPDPHY_REF:
+		rk_clrreg(&priv->cru->clkgate_con[13], BIT(4));
+		break;
+	case SCLK_UPHY0_TCPDCORE:
+		rk_clrreg(&priv->cru->clkgate_con[13], BIT(5));
+		break;
+	case SCLK_UPHY1_TCPDPHY_REF:
+		rk_clrreg(&priv->cru->clkgate_con[13], BIT(6));
+		break;
+	case SCLK_UPHY1_TCPDCORE:
+		rk_clrreg(&priv->cru->clkgate_con[13], BIT(7));
+		break;
 	case SCLK_PCIEPHY_REF:
 		rk_clrreg(&priv->cru->clksel_con[18], BIT(10));
 		break;
@@ -1226,6 +1238,18 @@ static int rk3399_clk_disable(struct clk *clk)
 	case HCLK_HOST1_ARB:
 		rk_setreg(&priv->cru->clksel_con[20], BIT(8));
 		break;
+	case SCLK_UPHY0_TCPDPHY_REF:
+		rk_setreg(&priv->cru->clkgate_con[13], BIT(4));
+		break;
+	case SCLK_UPHY0_TCPDCORE:
+		rk_setreg(&priv->cru->clkgate_con[13], BIT(5));
+		break;
+	case SCLK_UPHY1_TCPDPHY_REF:
+		rk_setreg(&priv->cru->clkgate_con[13], BIT(6));
+		break;
+	case SCLK_UPHY1_TCPDCORE:
+		rk_setreg(&priv->cru->clkgate_con[13], BIT(7));
+		break;
 	case SCLK_PCIEPHY_REF:
 		rk_clrreg(&priv->cru->clksel_con[18], BIT(10));
 		break;
-- 
2.17.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

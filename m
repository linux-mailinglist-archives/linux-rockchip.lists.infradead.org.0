Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3FE91CD34E
	for <lists+linux-rockchip@lfdr.de>; Mon, 11 May 2020 09:53:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=bHglEw4EwOMYZ3sWCIDzL3oJDm5qTgpieVBbuTsxilA=; b=SrbI4/0UEEoLfzhTUBQScOAoyk
	LocwhXTh5EyH9H2D0ed3B9IqF4lPCvD8XhwOxkmk5VyKeYWYW74rZZ8pfEcvYPrnjaHbMeUlMbYEF
	MtETEscw6adq1f2wt7bV7S8vdzigfLqIhqaqZG7YwCIhG6sFh3r2fDwwfK/kSxzyR8t9a0ysM4hP6
	/yWA0npDbHopdCsmHK2tbhqR7hioikobzZW1+Fs8SfG+RNdEQ444A0j/rbzhjs+UVIYuxuLCnICtu
	Yg7ElkoJAEoeZzQyfDXEDBB8p2/7eHB0GkZC9QLXDjK7sF8srwu0wlEwwJ+mQyAZkQf5HNfUt5/K0
	K3Qtl0rA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY3G7-0007h0-PD; Mon, 11 May 2020 07:53:55 +0000
Received: from lucky1.263xmail.com ([211.157.147.135])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY3G1-0007ct-Gr
 for linux-rockchip@lists.infradead.org; Mon, 11 May 2020 07:53:52 +0000
Received: from localhost (unknown [192.168.167.69])
 by lucky1.263xmail.com (Postfix) with ESMTP id 28AF38255C;
 Mon, 11 May 2020 15:53:34 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P27329T140438906509056S1589183610459145_; 
 Mon, 11 May 2020 15:53:33 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <95950efd630bd0b3b9e1de52904f83e3>
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
Subject: [PATCH v4 02/16] clk: rk3399: Set empty for TCPHY assigned-clocks
Date: Mon, 11 May 2020 15:53:16 +0800
Message-Id: <20200511075330.26462-3-frank.wang@rock-chips.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200511075330.26462-1-frank.wang@rock-chips.com>
References: <20200511075330.26462-1-frank.wang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_005349_781831_D0CBA720 
X-CRM114-Status: UNSURE (   8.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.157.147.135 listed in list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [211.157.147.135 listed in wl.mailspike.net]
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

Due to v5.7-rc1 sync the SD controller nodes in rk3399.dtsi
have SCLK_UPHY0_TCPDCORE, SCLK_UPHY1_TCPDCORE assigned-clocks
which are usually required for Linux and don't require to
handle them in U-Boot.

  assigned-clocks = <&cru SCLK_UPHY0_TCPDCORE>;
  assigned-clocks = <&cru SCLK_UPHY1_TCPDCORE>;

So, mark them as empty in clock otherwise device probe on
those typec phy driver would fail.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 drivers/clk/rockchip/clk_rk3399.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/clk/rockchip/clk_rk3399.c b/drivers/clk/rockchip/clk_rk3399.c
index b53f2f984e..98fc6a3267 100644
--- a/drivers/clk/rockchip/clk_rk3399.c
+++ b/drivers/clk/rockchip/clk_rk3399.c
@@ -997,6 +997,8 @@ static ulong rk3399_clk_set_rate(struct clk *clk, ulong rate)
 	case ACLK_VOP1:
 	case HCLK_VOP1:
 	case HCLK_SD:
+	case SCLK_UPHY0_TCPDCORE:
+	case SCLK_UPHY1_TCPDCORE:
 		/**
 		 * assigned-clocks handling won't require for vopl, so
 		 * return 0 to satisfy clk_set_defaults during device probe.
-- 
2.17.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

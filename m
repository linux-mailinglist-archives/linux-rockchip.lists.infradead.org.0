Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59BB815A649
	for <lists+linux-rockchip@lfdr.de>; Wed, 12 Feb 2020 11:26:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=JLVi2pme3PQ0QUSylbKaj4JdBDH9oxC+ggKkAcQ/pKQ=; b=IE0zZJnu7dJgU9oDbo/CYqUu/l
	1+rJis/obxexOD26OVxGiSN/A80oHbtoh/4/z6J8kMSp6M9+leFSWRfJqL93P2hVXXjoKhQ9+RoKG
	J+0W/4E/Ca6um2ds3Dc8pHuDv9KwCO+bK53uh0TeUY+2eH9TZZ3dEcetAh894XjcUB8o+OY/NErf2
	5oRtX5nVQ2wuqAotvP0iH6tSxWA3pzRfK09ooPLbLH7Ws5qIMJq7yGagpa08uxzEl3h9fFw+njoAv
	k8AXUCsUvas9u+ZNpzLJNc0uTL/VJXYHF93xw5s2upFY223fzbYPeyk/XojUDP9RkupvDwIeM04oF
	uUs+r4fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1pDh-00087Q-BM; Wed, 12 Feb 2020 10:26:13 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1pDC-0007ZR-LN
 for linux-rockchip@bombadil.infradead.org; Wed, 12 Feb 2020 10:25:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=References:In-Reply-To:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=ZoWxFlp+w0NGD/66bfO0LEiyMzyZfWkLGpdlhc1wKkw=; b=p8FAux62gx9E4BqWx79BaaJw8D
 rnpzU/rTnE9uPZqsJ5kgkZ0nrCo4D3G6Z6vs2o7KjOBkmGHNEsErkpB25LOi7cYuYTtzqYnSBbBS7
 e7kj4vO+rVnriv2C4Ig5JEtQPmKvIJK5pK0c8vEqNjzulJo/JzXECGMQ3dhGXYKy7Eg0kqcsCM/B0
 41eXMzFjgeapD9ufR1l3POCHRjNGmQJarrz8O7Vq0yqLnbI4ElkDTfYIMevLC8KocvBKBsQrMoK+g
 4C5Ju8btIlEM1AOL2bRCfjyagMf/gZ02x6o8f+wdADMoTBl3+pb3jqiP/kmoCVteVaUv7coSpHNud
 XwDEKBQg==;
Received: from newton.telenet-ops.be ([195.130.132.45])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1ox1-0004Zm-Ua
 for linux-rockchip@lists.infradead.org; Wed, 12 Feb 2020 10:09:02 +0000
Received: from albert.telenet-ops.be (albert.telenet-ops.be
 [IPv6:2a02:1800:110:4::f00:1a])
 by newton.telenet-ops.be (Postfix) with ESMTPS id 48Hb2P2jkMzMqyYH
 for <linux-rockchip@lists.infradead.org>; Wed, 12 Feb 2020 11:08:45 +0100 (CET)
Received: from ramsan ([84.195.182.253]) by albert.telenet-ops.be with bizsmtp
 id 1m8Y2200i5USYZQ06m8Zgc; Wed, 12 Feb 2020 11:08:44 +0100
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1j1owa-0001Ei-RW; Wed, 12 Feb 2020 11:08:32 +0100
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1j1owa-0000N3-Pg; Wed, 12 Feb 2020 11:08:32 +0100
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Russell King <linux@armlinux.org.uk>,
 Matthias Brugger <matthias.bgg@gmail.com>, Lubomir Rintel <lkundrak@v3.sk>,
 Heiko Stuebner <heiko@sntech.de>, Magnus Damm <magnus.damm@gmail.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Michal Simek <michal.simek@xilinx.com>
Subject: [PATCH 7/7] ARM: zynq: Replace <linux/clk-provider.h> by
 <linux/of_clk.h>
Date: Wed, 12 Feb 2020 11:08:30 +0100
Message-Id: <20200212100830.446-8-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200212100830.446-1-geert+renesas@glider.be>
References: <20200212100830.446-1-geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_100900_173008_C99C24AA 
X-CRM114-Status: GOOD (  11.55  )
X-Spam-Score: -2.4 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on casper.infradead.org summary:
 Content analysis details:   (-2.4 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [195.130.132.45 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Geert Uytterhoeven <geert+renesas@glider.be>, linux-kernel@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-mediatek@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

The Zynq platform code is not a clock provider, and just needs to call
of_clk_init().

Hence it can include <linux/of_clk.h> instead of <linux/clk-provider.h>.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
 arch/arm/mach-zynq/common.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-zynq/common.c b/arch/arm/mach-zynq/common.c
index 3a4248fd796281c3..a9dd2f71cd19d2a9 100644
--- a/arch/arm/mach-zynq/common.c
+++ b/arch/arm/mach-zynq/common.c
@@ -12,10 +12,10 @@
 #include <linux/cpumask.h>
 #include <linux/platform_device.h>
 #include <linux/clk.h>
-#include <linux/clk-provider.h>
 #include <linux/clk/zynq.h>
 #include <linux/clocksource.h>
 #include <linux/of_address.h>
+#include <linux/of_clk.h>
 #include <linux/of_irq.h>
 #include <linux/of_platform.h>
 #include <linux/of.h>
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

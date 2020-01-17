Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9265D140514
	for <lists+linux-rockchip@lfdr.de>; Fri, 17 Jan 2020 09:14:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=FMgVQ2iIMkvcVCrXAWeQN2u4fiuop/ThVNJXKQv3fOQ=; b=rnaIK1fis5kXoS2y6zwbIa1Vmj
	EbTKGYAXLdP2ecodbqkldte4ROYyVy+E2JoJzukPEqQmfk6fNi8Cj1kzBgRtgcqm1hhez4sHbyVNz
	XPdCsORrJnDKyFuoHnQGLbxU6fmZ7g3k0qZvyWzWMY3YUFc77YUqLFi5fyV9kbkQryvJHOAUud4zH
	mFxU0mV869vTJMebjDciYIY71n0GRHKNPSfwFS91EA67ZptLMXLvlGLMtoxFz20yC/P7xqdE9pOIO
	r2O4MF7Z1N9KoUqU7c3Nq7jZseCy4WOKCIPUnsIRTofDZavOERRs0XKcczJUgUnoTFn4Zu2DJNjxW
	/aa9zndA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isMlm-0005Qp-BY; Fri, 17 Jan 2020 08:14:18 +0000
Received: from lucky1.263xmail.com ([211.157.147.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isMld-0005OX-5r
 for linux-rockchip@lists.infradead.org; Fri, 17 Jan 2020 08:14:14 +0000
Received: from localhost (unknown [192.168.167.69])
 by lucky1.263xmail.com (Postfix) with ESMTP id E65477DB6F;
 Fri, 17 Jan 2020 16:14:01 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P20995T139699247118080S1579248839183075_; 
 Fri, 17 Jan 2020 16:14:01 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <9d948a519d0607bb5c4ec2e2624034b1>
X-RL-SENDER: jay.xu@rock-chips.com
X-SENDER: xjq@rock-chips.com
X-LOGIN-NAME: jay.xu@rock-chips.com
X-FST-TO: linus.walleij@linaro.org
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
From: Jianqun Xu <jay.xu@rock-chips.com>
To: linus.walleij@linaro.org, heiko@sntech.de, david.wu@rock-chips.com,
 kever.yang@rock-chips.com
Subject: [PATCH 1/2] pinctrl: rockchip: new rockchip dir for pinctrl-rockchip
Date: Fri, 17 Jan 2020 16:13:57 +0800
Message-Id: <20200117081358.5772-2-jay.xu@rock-chips.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200117081358.5772-1-jay.xu@rock-chips.com>
References: <c4ec95a7-aaf1-2331-352f-2def319a1c7d@rock-chips.com>
 <20200117081358.5772-1-jay.xu@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_001409_447093_4E5BC7C0 
X-CRM114-Status: GOOD (  10.18  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.157.147.130 listed in list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
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
Cc: linux-gpio@vger.kernel.org, jay.xu@rock-chips.com,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Create a new direcoty "rockchip" under pinctrl for pinctrl-rockchip.

This is base patch which prepares for spliting driver by SoC types.

Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
---
 drivers/pinctrl/Kconfig                           |  7 -------
 drivers/pinctrl/rockchip/Kconfig                  | 12 ++++++++++++
 drivers/pinctrl/rockchip/Makefile                 |  2 ++
 drivers/pinctrl/{ => rockchip}/pinctrl-rockchip.c |  0
 4 files changed, 14 insertions(+), 7 deletions(-)
 create mode 100644 drivers/pinctrl/rockchip/Kconfig
 create mode 100644 drivers/pinctrl/rockchip/Makefile
 rename drivers/pinctrl/{ => rockchip}/pinctrl-rockchip.c (100%)

diff --git a/drivers/pinctrl/Kconfig b/drivers/pinctrl/Kconfig
index 3bfbf2ff6e2b..5a16020c733d 100644
--- a/drivers/pinctrl/Kconfig
+++ b/drivers/pinctrl/Kconfig
@@ -186,13 +186,6 @@ config PINCTRL_OXNAS
 	select GPIOLIB_IRQCHIP
 	select MFD_SYSCON
 
-config PINCTRL_ROCKCHIP
-	bool
-	select PINMUX
-	select GENERIC_PINCONF
-	select GENERIC_IRQ_CHIP
-	select MFD_SYSCON
-
 config PINCTRL_RZA1
 	bool "Renesas RZ/A1 gpio and pinctrl driver"
 	depends on OF
diff --git a/drivers/pinctrl/rockchip/Kconfig b/drivers/pinctrl/rockchip/Kconfig
new file mode 100644
index 000000000000..7a0077ca32dd
--- /dev/null
+++ b/drivers/pinctrl/rockchip/Kconfig
@@ -0,0 +1,12 @@
+# SPDX-License-Identifier: GPL-2.0
+
+if (ARCH_ROCKCHIP || COMPILE_TEST)
+
+config PINCTRL_ROCKCHIP
+	bool
+	select PINMUX
+	select GENERIC_PINCONF
+	select GENERIC_IRQ_CHIP
+	select MFD_SYSCON
+
+endif
diff --git a/drivers/pinctrl/rockchip/Makefile b/drivers/pinctrl/rockchip/Makefile
new file mode 100644
index 000000000000..50568f4b6667
--- /dev/null
+++ b/drivers/pinctrl/rockchip/Makefile
@@ -0,0 +1,2 @@
+# SPDX-License-Identifier: GPL-2.0
+obj-$(CONFIG_PINCTRL_ROCKCHIP)	+= pinctrl-rockchip.o
diff --git a/drivers/pinctrl/pinctrl-rockchip.c b/drivers/pinctrl/rockchip/pinctrl-rockchip.c
similarity index 100%
rename from drivers/pinctrl/pinctrl-rockchip.c
rename to drivers/pinctrl/rockchip/pinctrl-rockchip.c
-- 
2.17.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78BF978697
	for <lists+linux-rockchip@lfdr.de>; Mon, 29 Jul 2019 09:47:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cG9Jlpu2J48j8FS+YR7HKS8HqHG3mLwXLbslDR+gdqw=; b=hcINFNsZBTYdJJ
	k4MY/CNhf6y+ER9PDLmw0C63o+gIjQDV9aYzNA+kBIKVKt9c1A8OreplF3ndd3Ge95jawQB7ll5hV
	5f+eK0pOEWaSFbesYO0PbkzKfLcg/X7YVsHc2tXsJh+5f3j+lYVgkmTzIPkhnD8QAbvb0WLDbNwNI
	N9m5G9ld/mFV40cadXjycMTIE5ESLeJSEtsK9pOWQ6O3Sqg1yA82qOVigJcl5BbxQZ2HCrD/WHSHS
	lsSLtKRH7suQeX1Ny7DO7dnr8sXN67rYNsCCrrhIUB9kFjj+V/XFRjw6BBEbjzPSwaqQViEJgAZ8O
	GvQIS0XGkckSmyLVDREQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs0Nj-0001xN-Pk; Mon, 29 Jul 2019 07:47:43 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs0Nf-0001vN-Qz
 for linux-rockchip@lists.infradead.org; Mon, 29 Jul 2019 07:47:41 +0000
Received: by mail-pg1-x541.google.com with SMTP id t132so27798020pgb.9
 for <linux-rockchip@lists.infradead.org>; Mon, 29 Jul 2019 00:47:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=PeStiX165xrcK3wOyhqM1gLga3q5yUQWbEfSl5LTn2Q=;
 b=afvLBT/WsLEWmDPO+JEsGl0IXjcIVlCPNrzpDJPY1zymg0m21xF/4pbQTzl0QQw3Dk
 Q12gMf1gpUMenf3m8BQIrl4s6ZB0Bx3qz08EG+sYxs4audFtM4QBSuvdIItmMzJGVbhB
 oj7rEDhUDgYGVIwZvwQrf4AWb/f9TVqhmV31M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=PeStiX165xrcK3wOyhqM1gLga3q5yUQWbEfSl5LTn2Q=;
 b=YimebXZbbIjAs8Lnwtr2LXsHdT7y1PP5BfHAS44I8Lp3N94Ug9uXO4feaGYcPNiXv6
 GEPjrkqbn+TqKPmaPCpJd+GtHHIF/f8VBBOv53obOiKuU9Q5w/4RMCTB86W/K+PKwWEL
 n7cRoqw6moudjW/7R5OvZg+MofNqO/Pp6/q9TcKdkrOdUZmQqt40hkluUntHtHROEtf/
 jmq/RWsvxJm03i37ukNkUZE2EXm2kcaH8JXHtpw7FCQ48p9lCMAgJhNymqdWiPNNJw+f
 uE7FXHZMMKHnkr5P95kDSlEPenYuTFJ8omWmzWO5cGq9ALS3ebFhu+dj2aVW+j2haaH+
 nu/g==
X-Gm-Message-State: APjAAAXDDAvQ5m7S1jpQrMj9yOsJJwcuc3cK/foZEsyTHss9b1K9/tUa
 2rST1ndpR+dq353ZFCwsYba8mg==
X-Google-Smtp-Source: APXvYqzWZamCx+szJEBAgCz/a4s1zervCOf0r/AmD3vNyRpmV0RLMcpeydC5aVJfiipO8hcp3q0nWg==
X-Received: by 2002:a17:90b:f0f:: with SMTP id
 br15mr112231709pjb.101.1564386458628; 
 Mon, 29 Jul 2019 00:47:38 -0700 (PDT)
Received: from localhost.localdomain ([49.206.203.41])
 by smtp.gmail.com with ESMTPSA id h14sm75723348pfq.22.2019.07.29.00.47.35
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 29 Jul 2019 00:47:38 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH 04/15] rockchip: Add common reset reason
Date: Mon, 29 Jul 2019 13:17:00 +0530
Message-Id: <20190729074711.16988-5-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190729074711.16988-1-jagan@amarulasolutions.com>
References: <20190729074711.16988-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_004739_883862_6B00317F 
X-CRM114-Status: GOOD (  11.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-rockchip@lists.infradead.org, u-boot@lists.denx.de,
 Jagan Teki <jagan@amarulasolutions.com>, Wadim Egorov <w.egorov@phytec.de>,
 linux-amarula@amarulasolutions.com, Akash Gajjar <akash@openedev.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Right now the reset reason supported by rk3288
and which is printing on board late function.

Support the same reset reason for rk3399 as well,
since it is sharing same cru register mark the
code into common area.

Printing reset reason below SoC information would
really help instead of printing in board late call,
so support this as part of cpu_info.

Cc: Wadim Egorov <w.egorov@phytec.de>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm/include/asm/arch-rockchip/cru.h      | 12 ++++++
 .../include/asm/arch-rockchip/cru_rk3288.h    | 14 +------
 arch/arm/mach-rockchip/cpu-info.c             | 41 +++++++++++++++++++
 arch/arm/mach-rockchip/rk3288-board.c         | 39 ------------------
 4 files changed, 54 insertions(+), 52 deletions(-)

diff --git a/arch/arm/include/asm/arch-rockchip/cru.h b/arch/arm/include/asm/arch-rockchip/cru.h
index 3b1a3bae71..b54e21d6f1 100644
--- a/arch/arm/include/asm/arch-rockchip/cru.h
+++ b/arch/arm/include/asm/arch-rockchip/cru.h
@@ -13,4 +13,16 @@
 # include <asm/arch-rockchip/cru_rk3399.h>
 #endif
 
+/* CRU_GLB_RST_ST */
+enum {
+	GLB_POR_RST,
+	FST_GLB_RST_ST		= BIT(0),
+	SND_GLB_RST_ST		= BIT(1),
+	FST_GLB_TSADC_RST_ST	= BIT(2),
+	SND_GLB_TSADC_RST_ST	= BIT(3),
+	FST_GLB_WDT_RST_ST	= BIT(4),
+	SND_GLB_WDT_RST_ST	= BIT(5),
+	GLB_RST_ST_MASK		= GENMASK(5, 0),
+};
+
 #endif /* _ROCKCHIP_CLOCK_H */
diff --git a/arch/arm/include/asm/arch-rockchip/cru_rk3288.h b/arch/arm/include/asm/arch-rockchip/cru_rk3288.h
index e891f20b37..7acb1c7208 100644
--- a/arch/arm/include/asm/arch-rockchip/cru_rk3288.h
+++ b/arch/arm/include/asm/arch-rockchip/cru_rk3288.h
@@ -51,7 +51,7 @@ struct rk3288_cru {
 	u32 cru_glb_cnt_th;
 	u32 cru_glb_rst_con;
 	u32 reserved3;
-	u32 cru_glb_rst_st;
+	u32 glb_rst_st;
 	u32 reserved4;
 	u32 cru_sdmmc_con[2];
 	u32 cru_sdio0_con[2];
@@ -227,16 +227,4 @@ enum {
 	CLKF_MASK		= 0x1fff << CLKF_SHIFT,
 };
 
-/* CRU_GLB_RST_ST */
-enum {
-	GLB_POR_RST,
-	FST_GLB_RST_ST		= BIT(0),
-	SND_GLB_RST_ST		= BIT(1),
-	FST_GLB_TSADC_RST_ST	= BIT(2),
-	SND_GLB_TSADC_RST_ST	= BIT(3),
-	FST_GLB_WDT_RST_ST	= BIT(4),
-	SND_GLB_WDT_RST_ST	= BIT(5),
-	GLB_RST_ST_MASK		= GENMASK(5, 0),
-};
-
 #endif
diff --git a/arch/arm/mach-rockchip/cpu-info.c b/arch/arm/mach-rockchip/cpu-info.c
index 088fc806a6..8e56999b05 100644
--- a/arch/arm/mach-rockchip/cpu-info.c
+++ b/arch/arm/mach-rockchip/cpu-info.c
@@ -5,6 +5,38 @@
  */
 
 #include <common.h>
+#include <asm/io.h>
+#include <asm/arch-rockchip/clock.h>
+#include <asm/arch-rockchip/cru.h>
+#include <asm/arch-rockchip/hardware.h>
+#include <linux/err.h>
+
+static char *rockchip_reset_reason(unsigned int glb_rst_st)
+{
+	char *reason;
+
+	switch (glb_rst_st) {
+	case GLB_POR_RST:
+		reason = "POR";
+		break;
+	case FST_GLB_RST_ST:
+	case SND_GLB_RST_ST:
+		reason = "RST";
+		break;
+	case FST_GLB_TSADC_RST_ST:
+	case SND_GLB_TSADC_RST_ST:
+		reason = "THERMAL";
+		break;
+	case FST_GLB_WDT_RST_ST:
+	case SND_GLB_WDT_RST_ST:
+		reason = "WDOG";
+		break;
+	default:
+		reason = "unknown reset";
+        }
+
+	return reason;
+}
 
 int print_cpuinfo(void)
 {
@@ -13,12 +45,21 @@ int print_cpuinfo(void)
 	/* TODO print operating temparature and clock */
 # ifdef CONFIG_ROCKCHIP_RK3288
 	puts("RK3288\n");
+	struct rk3288_cru *cru = rockchip_get_cru();
 # elif CONFIG_ROCKCHIP_RK3399
 	puts("RK3399\n");
+	struct rk3399_cru *cru = rockchip_get_cru();
 # else
 # warning Please update cpu.c with correct CPU information
 	puts("Family\n");
 # endif
 
+	if (IS_ERR(cru))
+		return -EINVAL;
+
+	printf("Reset cause: %s\n", rockchip_reset_reason(cru->glb_rst_st));
+
+	rk_clrreg(&cru->glb_rst_st, GLB_RST_ST_MASK);
+
 	return 0;
 }
diff --git a/arch/arm/mach-rockchip/rk3288-board.c b/arch/arm/mach-rockchip/rk3288-board.c
index 613264d7ee..3e5cd9bad9 100644
--- a/arch/arm/mach-rockchip/rk3288-board.c
+++ b/arch/arm/mach-rockchip/rk3288-board.c
@@ -10,7 +10,6 @@
 #include <syscon.h>
 #include <asm/io.h>
 #include <asm/arch-rockchip/clock.h>
-#include <asm/arch-rockchip/cru.h>
 #include <asm/arch-rockchip/periph.h>
 #include <asm/arch-rockchip/pmu_rk3288.h>
 #include <asm/arch-rockchip/qos_rk3288.h>
@@ -44,48 +43,10 @@ int rk3288_qos_init(void)
 	return 0;
 }
 
-static void rk3288_detect_reset_reason(void)
-{
-	struct rk3288_cru *cru = rockchip_get_cru();
-	const char *reason;
-
-	if (IS_ERR(cru))
-		return;
-
-	switch (cru->cru_glb_rst_st) {
-	case GLB_POR_RST:
-		reason = "POR";
-		break;
-	case FST_GLB_RST_ST:
-	case SND_GLB_RST_ST:
-		reason = "RST";
-		break;
-	case FST_GLB_TSADC_RST_ST:
-	case SND_GLB_TSADC_RST_ST:
-		reason = "THERMAL";
-		break;
-	case FST_GLB_WDT_RST_ST:
-	case SND_GLB_WDT_RST_ST:
-		reason = "WDOG";
-		break;
-	default:
-		reason = "unknown reset";
-	}
-
-	printf("Reset cause: %s\n", reason);
-
-	/*
-	 * Clear cru_glb_rst_st, so we can determine the last reset cause
-	 * for following resets.
-	 */
-	rk_clrreg(&cru->cru_glb_rst_st, GLB_RST_ST_MASK);
-}
-
 int board_late_init(void)
 {
 	setup_boot_mode();
 	rk3288_qos_init();
-	rk3288_detect_reset_reason();
 
 	return rk_board_late_init();
 }
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

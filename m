Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1D0412CA8C
	for <lists+linux-rockchip@lfdr.de>; Sun, 29 Dec 2019 20:08:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sz9CK1UsXbkSIA9ClPCBzmZH8L9bPdIiu/yPpyfioqc=; b=SNMGyKtcl5jmow
	ur+/YH4tnujhcmeLbwca2beGxG45t5mGAAxVp2PXzNBdVyiZuiw6LHyZJ9BkMVqZDSof7sKF/ylh7
	9hX4YD2a/9EZjHHLkKNMmqHuCqTWnRxD5u6XRbrshqPjJGpqWY2ySj/9OnB0VfPmDmNTeP6iAYsM6
	YsG8olfxhX9GpdO5I12SCG8GvcFlEzVkz8zr27zK2j1l13Y64s5im/owaiwOnMju3DeJ9tGVATfOd
	HgiK6N2Kam1/2n9ad1txOBBL8boKIbe4mcR46vkaUpe3NXb5+EFI4abrJWTjQQszTneqEk7XXjsSa
	Wlf+fNFlC0Ve2iSN9kZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilduv-0003az-QL; Sun, 29 Dec 2019 19:07:57 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilduq-0003XA-Mh
 for linux-rockchip@lists.infradead.org; Sun, 29 Dec 2019 19:07:54 +0000
Received: by mail-pg1-x541.google.com with SMTP id q127so17025670pga.4
 for <linux-rockchip@lists.infradead.org>; Sun, 29 Dec 2019 11:07:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=uZNNWtNMWQc294lHjUGEK/YALiO6/B2tdwJ4JYGKPGk=;
 b=WjRY+O1ynMRPyYdzBQbfR8imkgADZcOXhZlHmvd3dtFJl0oxl3PR/Lw9TWUaKB6bS8
 nNckQPuQXO3kJK2Tm+qOBXxJ1IqzFfcwHGdhEmBDELJ6fD96hdYV/89zz3PiqC1gbRJ1
 uYahQ2UU8l9SsItIW5iOwyR+TEb9rrDhENZwY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=uZNNWtNMWQc294lHjUGEK/YALiO6/B2tdwJ4JYGKPGk=;
 b=ZPJtoM+vfZWdCbGzeoi5K8C8ZiUOgcb3wl2d2Hg0k/T2NndTixvZpw4YVh/yTnDiTi
 AeJvgbtRUYX1YKyPDqOBnfNUNS/g6ncAuZb/A481nCnUrrmk9NksJ87R+0MdufJHviBs
 n/jXLc616GZkGSzaPpsddfwcuMO3zCEeuNKho2/oZdr8oTpE6cYJXkWDFbig5WvdcM55
 PDxPos1FgI8SbzVF6FkhZPa7QPX5jbczpSAofzQ9+fx+E6lgtU3nkYLk6HterNgk9uCl
 Mi9CylvnMCFl8plbrv3vohh8iS4QjcbyzjVXtRj6gVeXlFK/irTuR7sl9k3m+HOW+qP0
 +a9A==
X-Gm-Message-State: APjAAAUZBHgnx+wz3+e5KlOBgPCFIiO9Zf4Y5NZiSZtssl1M7yK/WvuM
 kFf85uodNAP9bG8sIhqFbBCO6Pnih9w=
X-Google-Smtp-Source: APXvYqzADAxEaq5sjS+6j0fBPXBBJx9KK75y3d9G/E2YbywZItIEwvFZfdShugD5TRjpf//5D+bVgg==
X-Received: by 2002:a62:3603:: with SMTP id d3mr64554585pfa.37.1577646472053; 
 Sun, 29 Dec 2019 11:07:52 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c809:c7d5:f590:ce0e:1ce1:c326])
 by smtp.gmail.com with ESMTPSA id u10sm44879700pgg.41.2019.12.29.11.07.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 29 Dec 2019 11:07:51 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH v3 4/5] rockchip: Add common reset cause
Date: Mon, 30 Dec 2019 00:37:25 +0530
Message-Id: <20191229190726.29266-5-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191229190726.29266-1-jagan@amarulasolutions.com>
References: <20191229190726.29266-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_110752_787510_81DEC787 
X-CRM114-Status: GOOD (  14.14  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Jagan Teki <jagan@amarulasolutions.com>, u-boot@lists.denx.de,
 linux-amarula@amarulasolutions.com, Akash Gajjar <akash@openedev.com>,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Add cpu reset cause in common cpu-info file.

This would help to print the reset cause for
various resets.

Right now it support rk3288, rk3399. rest of rockchip
platforms doesn't have reset cause support ye but this
code is more feasible to extend the same.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm/include/asm/arch-rockchip/cru.h      | 12 +++++
 .../include/asm/arch-rockchip/cru_rk3288.h    | 14 +-----
 arch/arm/mach-rockchip/cpu-info.c             | 49 +++++++++++++++++++
 arch/arm/mach-rockchip/rk3288/rk3288.c        | 39 ---------------
 4 files changed, 62 insertions(+), 52 deletions(-)

diff --git a/arch/arm/include/asm/arch-rockchip/cru.h b/arch/arm/include/asm/arch-rockchip/cru.h
index 5ed3fbfd07..e1dd9a89c2 100644
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
index 7aa6efe46c..412b73e55f 100644
--- a/arch/arm/include/asm/arch-rockchip/cru_rk3288.h
+++ b/arch/arm/include/asm/arch-rockchip/cru_rk3288.h
@@ -51,7 +51,7 @@ struct rockchip_cru {
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
index 9bccbd4f68..4b0e99299a 100644
--- a/arch/arm/mach-rockchip/cpu-info.c
+++ b/arch/arm/mach-rockchip/cpu-info.c
@@ -5,10 +5,59 @@
  */
 
 #include <common.h>
+#include <asm/io.h>
+#include <asm/arch-rockchip/clock.h>
+#include <asm/arch-rockchip/cru.h>
+#include <asm/arch-rockchip/hardware.h>
+#include <linux/err.h>
+
+static char *get_reset_cause(void)
+{
+	struct rockchip_cru *cru = rockchip_get_cru();
+	char *cause = NULL;
+
+	if (IS_ERR(cru))
+		return cause;
+
+	switch (cru->glb_rst_st) {
+	case GLB_POR_RST:
+		cause = "POR";
+		break;
+	case FST_GLB_RST_ST:
+	case SND_GLB_RST_ST:
+		cause = "RST";
+		break;
+	case FST_GLB_TSADC_RST_ST:
+	case SND_GLB_TSADC_RST_ST:
+		cause = "THERMAL";
+		break;
+	case FST_GLB_WDT_RST_ST:
+	case SND_GLB_WDT_RST_ST:
+		cause = "WDOG";
+		break;
+	default:
+		cause = "unknown reset";
+	}
+
+	/**
+	 * reset_reason env is used by rk3288, due to special use case
+	 * to figure it the boot behavior. so keep this as it is.
+	 */
+	env_set("reset_reason", cause);
+
+	/*
+	 * Clear glb_rst_st, so we can determine the last reset cause
+	 * for following resets.
+	 */
+	rk_clrreg(&cru->glb_rst_st, GLB_RST_ST_MASK);
+
+	return cause;
+}
 
 int print_cpuinfo(void)
 {
 	printf("SoC: Rockchip %s\n", CONFIG_SYS_SOC);
+	printf("Reset cause: %s\n", get_reset_cause());
 
 	/* TODO print operating temparature and clock */
 
diff --git a/arch/arm/mach-rockchip/rk3288/rk3288.c b/arch/arm/mach-rockchip/rk3288/rk3288.c
index 47ee5d440b..18ea7f35fb 100644
--- a/arch/arm/mach-rockchip/rk3288/rk3288.c
+++ b/arch/arm/mach-rockchip/rk3288/rk3288.c
@@ -102,43 +102,6 @@ void board_debug_uart_init(void)
 }
 #endif
 
-static void rk3288_detect_reset_reason(void)
-{
-	struct rockchip_cru *cru = rockchip_get_cru();
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
-	env_set("reset_reason", reason);
-
-	/*
-	 * Clear cru_glb_rst_st, so we can determine the last reset cause
-	 * for following resets.
-	 */
-	rk_clrreg(&cru->cru_glb_rst_st, GLB_RST_ST_MASK);
-}
-
 __weak int rk3288_board_late_init(void)
 {
 	return 0;
@@ -146,8 +109,6 @@ __weak int rk3288_board_late_init(void)
 
 int rk_board_late_init(void)
 {
-	rk3288_detect_reset_reason();
-
 	return rk3288_board_late_init();
 }
 
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

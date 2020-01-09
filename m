Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32EBC1354D1
	for <lists+linux-rockchip@lfdr.de>; Thu,  9 Jan 2020 09:53:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IvglB7OJwu9sxa5OW/UGDsAQ8Dd/ytIrK0+QYeo/z6c=; b=act4TND2lDHeqo
	30KasEfcRCzw/k7Kecsp3IMCw9U3YOzHpgnDG/yF8SwDx0Jc1hXLwYb2k+Hwhl7de2u3ZURAs5d8z
	Afen6r8ko2UA21u0MBdToimLULVj0jM13wCF5/CXS9kWZsx+xhUpwYuB92A/wOq6VOGa0Zh3VJbpu
	j1scBnKGLryLiwOxT2HQjEylq/22kHc4ltx/DU91NjNyExj1rZkfwnuLBQQPgcQ3aVhMgg89Ox3T6
	S8YW3mttMvconRFdhN2E//w+m+33XTCXk7CILW6EiEDsfaUXqlqxxCE1uIRL5c+jd+PSS+QWjxdgf
	O+Lcfcu5RUxjfbIADWkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipTYv-0006Jb-Jw; Thu, 09 Jan 2020 08:53:05 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipTYi-000646-AJ
 for linux-rockchip@lists.infradead.org; Thu, 09 Jan 2020 08:52:54 +0000
Received: by mail-pl1-x641.google.com with SMTP id s21so2296845plr.7
 for <linux-rockchip@lists.infradead.org>; Thu, 09 Jan 2020 00:52:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=20owJ56ZMVW9WaAfTMGTpTd1hkqe5DN6/beUbHwtw88=;
 b=RzIwIlRDY3OgYwZuDCcFetW51jD0046owNhHTsOs9UohfxwbFQLG3xsogYvTHtYcUY
 nsVAEovjxDaEJ+75PNvq9FmQy4VsQ3XbfMHQ6h0uulw7nFUZ5Zr2YWDzF8iexlLo3BsB
 ZGzjQDaNNGUiJxff7GsJyxdUt31OUdIsBESuQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=20owJ56ZMVW9WaAfTMGTpTd1hkqe5DN6/beUbHwtw88=;
 b=UVA47hKPE6aELF/ZPW45V07PuyJ7pN3wXI9jhFqGIYMDHdScCVE2F+/kwY9x+dlxMu
 xctdO1gZRM8N2WkkQU9yKRz1K7BRDUluM904J2oxHC4+QK+8cHSREOtBP4tr+vqh5x3i
 b/Vximcn6ZV5F6mXbF8L3S1WCiXGtwX6M1VBmKJKQgeLT/901DuoIHOa2bWuR3iZKkxd
 z76MI7NKBVSfisO8Hy4cyU12JfWusasS4heyEGpDJsz24GJd+nvZfgqvwjqegcwAQcn4
 XIREsDOLvYjqNSguxPmgdTM6yW/N6yx+bXhAOzKgnYXPiyxuB8/tMdZ0j7cN6giAF2nH
 NiKQ==
X-Gm-Message-State: APjAAAX1B69H2qSPhFkSZEeGLURuySS876OYIdVyQCAgnOXyNOXl4AT3
 XqAeFOGj0XO5yNkg4Zi8oVf1Kk9Ehkk=
X-Google-Smtp-Source: APXvYqz6V0ksapXciphcYrLvI7fdTn/SfLvrcYgCFaWK2vctFn9RrrS0Uj/MlnQt3Yq4eFjkbDFiKw==
X-Received: by 2002:a17:902:8497:: with SMTP id
 c23mr11000845plo.59.1578559971367; 
 Thu, 09 Jan 2020 00:52:51 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c809:c7d5:d888:9871:544a:b516])
 by smtp.gmail.com with ESMTPSA id o17sm2139121pjq.1.2020.01.09.00.52.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Jan 2020 00:52:50 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH v4 4/8] rockchip: Add common reset cause
Date: Thu,  9 Jan 2020 14:22:18 +0530
Message-Id: <20200109085222.22670-5-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20200109085222.22670-1-jagan@amarulasolutions.com>
References: <20200109085222.22670-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_005252_476096_12FAE061 
X-CRM114-Status: GOOD (  13.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: u-boot@lists.denx.de, linux-amarula@amarulasolutions.com,
 Jagan Teki <jagan@amarulasolutions.com>, linux-rockchip@lists.infradead.org
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

Reviewed-by: Kever Yang <kever.yang@rock-chips.com>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm/include/asm/arch-rockchip/cru.h      | 12 +++++
 .../include/asm/arch-rockchip/cru_rk3288.h    | 14 +-----
 arch/arm/mach-rockchip/cpu-info.c             | 49 +++++++++++++++++++
 arch/arm/mach-rockchip/rk3288/rk3288.c        | 39 ---------------
 4 files changed, 62 insertions(+), 52 deletions(-)

diff --git a/arch/arm/include/asm/arch-rockchip/cru.h b/arch/arm/include/asm/arch-rockchip/cru.h
index 475d772fb6..5cf2aec11a 100644
--- a/arch/arm/include/asm/arch-rockchip/cru.h
+++ b/arch/arm/include/asm/arch-rockchip/cru.h
@@ -13,6 +13,18 @@
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
 #define MHz		1000000
 
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

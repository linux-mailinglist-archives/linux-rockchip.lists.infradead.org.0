Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B1E51FF8AC
	for <lists+linux-rockchip@lfdr.de>; Thu, 18 Jun 2020 18:08:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/Tc8AYbmycGq7ymLCmHdCbKdmuYwGqLewos+pdyeNNg=; b=nlYBWu4pL3sznr
	Vn7YuZAK9DhgCSgyy2s+lgNaMqcuOoQxdHeXUMIVVzAVLZJWuCS+bVk2NfTyGbQpr0Qi3TJD4bsZT
	HO8PY10ROhihumLZyE9XPjyyoSX4aBsUT9CHXSbbuwsS14ngK6vRv1WBrtilouvis+yHmKWb8neRL
	85lmzH0fTFey7DoeLWw9HDB7r5vgmESVCHZFWgIJdsOHrWXeGaobDuoyN5xXPWP1vsL+2mmPK29eV
	/DFhp+YCRIXMPxZyekbHBG6DZhxPgqVpu76k7yofhGcA46p28WVt9IvxWgOzgU+drkKo3n4W/wQtZ
	Jv0URD71REb73eZ6ZoiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlx58-0000FI-Qf; Thu, 18 Jun 2020 16:08:02 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlx55-0000DU-Lv
 for linux-rockchip@lists.infradead.org; Thu, 18 Jun 2020 16:08:01 +0000
Received: by mail-pj1-x1044.google.com with SMTP id h95so2878024pje.4
 for <linux-rockchip@lists.infradead.org>; Thu, 18 Jun 2020 09:07:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=EAnZQVPCbET9LiBd53nhS5d3NOeLarG2ciYDI0Pvwqo=;
 b=IYsmF42RgC5dlnCSchJGu/dsTvTpKeJNvEkfSL8+CCkNexXJ4eNGoU2i+V/nEuuYjp
 uE9eSfLpusAjEkdW8UCSVH/FoKpBIuIt2NV+e9s/ecn/cz1Dyxg3MmRFUAAf503pCcWj
 Ol4D8ybN996Qio2PJYP6hgITp1aCDBl9wWBQ0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=EAnZQVPCbET9LiBd53nhS5d3NOeLarG2ciYDI0Pvwqo=;
 b=Ulp0JkUkjo7zX4y9ErPBJVm22tTdnwZl2mzBng0pbuOzlCf8pK7t0LSf47qvRe9hCR
 URuUIrV5cOKGb1tQd+QGJLKo1ao0GpNVWCtERltya392IrLOOczxgPFpRyJD3apmayk6
 9H5Fq6uDL0Xuf53cFDGnj5ZMJF4oP1Li3UTYzcD5Cl46onxor9Br7ih2+Vc6C9BQISVb
 glMtRSJevYWDgrO9Yc4Sbsl6dCWNgMlrdbNsD9yg036KwBwK7edPHOltvajG0R/czQl0
 NiTLgS2nPg2e2s0g+Pg1nSz0gMyWEHPrO2iYpmPmk0SNjIXhgUdbw2DUheXGCXrosrqu
 z0fA==
X-Gm-Message-State: AOAM531QHGLHPbU/hHjIF/67eVOip8wDg+aU3hNdaV9c0Xvu+wVVOgQF
 ZIdkSaLI8gHCitCzbkWPq0Yo+g==
X-Google-Smtp-Source: ABdhPJytxK7jWMfvdzMmSa/ab42KvkivCoAIu0nyAktix3Z7EBddnwkuMLTr2NRBNSk6iFNCUobT6w==
X-Received: by 2002:a17:902:7088:: with SMTP id
 z8mr4394536plk.320.1592496478973; 
 Thu, 18 Jun 2020 09:07:58 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:b0c7:f192:869b:df87])
 by smtp.gmail.com with ESMTPSA id u4sm3264943pfl.102.2020.06.18.09.07.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Jun 2020 09:07:58 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Simon Glass <sjg@chromium.org>
Subject: [PATCH v4 1/5] rockchip: spl: Add spl_board_init
Date: Thu, 18 Jun 2020 21:09:44 +0530
Message-Id: <20200618153948.218506-2-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618153948.218506-1-jagan@amarulasolutions.com>
References: <20200618153948.218506-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_090759_736742_39893098 
X-CRM114-Status: GOOD (  19.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1044 listed in]
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
Cc: U-Boot-Denx <u-boot@lists.denx.de>, linux-rockchip@lists.infradead.org,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 Jagan Teki <jagan@amarulasolutions.com>,
 Suniel Mahesh <sunil@amarulasolutions.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

spl_board_init is a proper location and common practice
option to have a custom board initialization code after
relocation in SPL.

This patch add the feasibility to add the custom SPL board
initzlaization throughout rockchip platforms and adjust
existing the spl board code on respective boards.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v4:
- new patch

 arch/arm/Kconfig                              |  1 +
 arch/arm/mach-rockchip/Kconfig                |  2 -
 arch/arm/mach-rockchip/rk3188/rk3188.c        |  2 +-
 arch/arm/mach-rockchip/rk3399/rk3399.c        | 57 -----------------
 arch/arm/mach-rockchip/spl.c                  | 10 +++
 board/firefly/firefly-rk3288/firefly-rk3288.c |  2 +-
 board/phytec/phycore_rk3288/phycore-rk3288.c  |  2 +-
 .../puma_rk3399/puma-rk3399.c                 | 61 +++++++++++++++++++
 8 files changed, 75 insertions(+), 62 deletions(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index edc9e38c6c..57ddf15cb3 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -1679,6 +1679,7 @@ config ARCH_ROCKCHIP
 	select ENABLE_ARM_SOC_BOOT0_HOOK
 	select OF_CONTROL
 	select SPI
+	select SPL_BOARD_INIT if SPL
 	select SPL_DM if SPL
 	select SYS_MALLOC_F
 	select SYS_THUMB_BUILD if !ARM64
diff --git a/arch/arm/mach-rockchip/Kconfig b/arch/arm/mach-rockchip/Kconfig
index 0cb1f23d0f..b1008a5058 100644
--- a/arch/arm/mach-rockchip/Kconfig
+++ b/arch/arm/mach-rockchip/Kconfig
@@ -49,7 +49,6 @@ config ROCKCHIP_RK3128
 config ROCKCHIP_RK3188
 	bool "Support Rockchip RK3188"
 	select CPU_V7A
-	select SPL_BOARD_INIT if SPL
 	select SUPPORT_SPL
 	select SPL
 	select SPL_CLK
@@ -208,7 +207,6 @@ config ROCKCHIP_RK3399
 	select SPL
 	select SPL_ATF
 	select SPL_ATF_NO_PLATFORM_PARAM if SPL_ATF
-	select SPL_BOARD_INIT if SPL
 	select SPL_LOAD_FIT
 	select SPL_CLK if SPL
 	select SPL_PINCTRL if SPL
diff --git a/arch/arm/mach-rockchip/rk3188/rk3188.c b/arch/arm/mach-rockchip/rk3188/rk3188.c
index ef57dfd761..0c0fe84ad5 100644
--- a/arch/arm/mach-rockchip/rk3188/rk3188.c
+++ b/arch/arm/mach-rockchip/rk3188/rk3188.c
@@ -111,7 +111,7 @@ static int setup_led(void)
 	return 0;
 }
 
-void spl_board_init(void)
+void rk_spl_board_init(void)
 {
 	int ret;
 
diff --git a/arch/arm/mach-rockchip/rk3399/rk3399.c b/arch/arm/mach-rockchip/rk3399/rk3399.c
index 4fda93b152..b53a111769 100644
--- a/arch/arm/mach-rockchip/rk3399/rk3399.c
+++ b/arch/arm/mach-rockchip/rk3399/rk3399.c
@@ -217,61 +217,4 @@ void spl_perform_fixups(struct spl_image_info *spl_image)
 			   "u-boot,spl-boot-device", boot_ofpath);
 }
 
-#if defined(SPL_GPIO_SUPPORT)
-static void rk3399_force_power_on_reset(void)
-{
-	ofnode node;
-	struct gpio_desc sysreset_gpio;
-
-	debug("%s: trying to force a power-on reset\n", __func__);
-
-	node = ofnode_path("/config");
-	if (!ofnode_valid(node)) {
-		debug("%s: no /config node?\n", __func__);
-		return;
-	}
-
-	if (gpio_request_by_name_nodev(node, "sysreset-gpio", 0,
-				       &sysreset_gpio, GPIOD_IS_OUT)) {
-		debug("%s: could not find a /config/sysreset-gpio\n", __func__);
-		return;
-	}
-
-	dm_gpio_set_value(&sysreset_gpio, 1);
-}
-#endif
-
-void spl_board_init(void)
-{
-#if defined(SPL_GPIO_SUPPORT)
-	struct rockchip_cru *cru = rockchip_get_cru();
-
-	/*
-	 * The RK3399 resets only 'almost all logic' (see also in the TRM
-	 * "3.9.4 Global software reset"), when issuing a software reset.
-	 * This may cause issues during boot-up for some configurations of
-	 * the application software stack.
-	 *
-	 * To work around this, we test whether the last reset reason was
-	 * a power-on reset and (if not) issue an overtemp-reset to reset
-	 * the entire module.
-	 *
-	 * While this was previously fixed by modifying the various places
-	 * that could generate a software reset (e.g. U-Boot's sysreset
-	 * driver, the ATF or Linux), we now have it here to ensure that
-	 * we no longer have to track this through the various components.
-	 */
-	if (cru->glb_rst_st != 0)
-		rk3399_force_power_on_reset();
-#endif
-
-#if defined(SPL_DM_REGULATOR)
-	/*
-	 * Turning the eMMC and SPI back on (if disabled via the Qseven
-	 * BIOS_ENABLE) signal is done through a always-on regulator).
-	 */
-	if (regulators_enable_boot_on(false))
-		debug("%s: Cannot enable boot on regulator\n", __func__);
-#endif
-}
 #endif
diff --git a/arch/arm/mach-rockchip/spl.c b/arch/arm/mach-rockchip/spl.c
index cddf4fd3d5..d4c83a1119 100644
--- a/arch/arm/mach-rockchip/spl.c
+++ b/arch/arm/mach-rockchip/spl.c
@@ -150,6 +150,16 @@ void board_init_f(ulong dummy)
 	preloader_console_init();
 }
 
+__weak void rk_spl_board_init(void)
+{
+}
+
+void spl_board_init(void)
+{
+	/* board specific spl init */
+	rk_spl_board_init();
+}
+
 #ifdef CONFIG_SPL_LOAD_FIT
 int __weak board_fit_config_name_match(const char *name)
 {
diff --git a/board/firefly/firefly-rk3288/firefly-rk3288.c b/board/firefly/firefly-rk3288/firefly-rk3288.c
index 1965985a0f..96d44b1d9f 100644
--- a/board/firefly/firefly-rk3288/firefly-rk3288.c
+++ b/board/firefly/firefly-rk3288/firefly-rk3288.c
@@ -31,7 +31,7 @@ static int setup_led(void)
 	return 0;
 }
 
-void spl_board_init(void)
+void rk_spl_board_init(void)
 {
 	int ret;
 
diff --git a/board/phytec/phycore_rk3288/phycore-rk3288.c b/board/phytec/phycore_rk3288/phycore-rk3288.c
index ecc73227a0..b33070f62e 100644
--- a/board/phytec/phycore_rk3288/phycore-rk3288.c
+++ b/board/phytec/phycore_rk3288/phycore-rk3288.c
@@ -104,7 +104,7 @@ static int phycore_init(void)
 }
 #endif
 
-void spl_board_init(void)
+void rk_spl_board_init(void)
 {
 #if !defined(CONFIG_SPL_OF_PLATDATA)
 	int ret;
diff --git a/board/theobroma-systems/puma_rk3399/puma-rk3399.c b/board/theobroma-systems/puma_rk3399/puma-rk3399.c
index deeba3084a..fd5cdd9ea1 100644
--- a/board/theobroma-systems/puma_rk3399/puma-rk3399.c
+++ b/board/theobroma-systems/puma_rk3399/puma-rk3399.c
@@ -152,3 +152,64 @@ void get_board_serial(struct tag_serialnr *serialnr)
 	serialnr->low = (u32)(serial & 0xffffffff);
 }
 #endif
+
+#if defined(CONFIG_SPL_BUILD)
+
+#if defined(SPL_GPIO_SUPPORT)
+static void rk3399_force_power_on_reset(void)
+{
+	ofnode node;
+	struct gpio_desc sysreset_gpio;
+
+	debug("%s: trying to force a power-on reset\n", __func__);
+
+	node = ofnode_path("/config");
+	if (!ofnode_valid(node)) {
+		debug("%s: no /config node?\n", __func__);
+		return;
+	}
+
+	if (gpio_request_by_name_nodev(node, "sysreset-gpio", 0,
+				       &sysreset_gpio, GPIOD_IS_OUT)) {
+		debug("%s: could not find a /config/sysreset-gpio\n", __func__);
+		return;
+	}
+
+	dm_gpio_set_value(&sysreset_gpio, 1);
+}
+#endif
+
+void rk_spl_board_init(void)
+{
+#if defined(SPL_GPIO_SUPPORT)
+	struct rockchip_cru *cru = rockchip_get_cru();
+
+	/*
+	 * The RK3399 resets only 'almost all logic' (see also in the TRM
+	 * "3.9.4 Global software reset"), when issuing a software reset.
+	 * This may cause issues during boot-up for some configurations of
+	 * the application software stack.
+	 *
+	 * To work around this, we test whether the last reset reason was
+	 * a power-on reset and (if not) issue an overtemp-reset to reset
+	 * the entire module.
+	 *
+	 * While this was previously fixed by modifying the various places
+	 * that could generate a software reset (e.g. U-Boot's sysreset
+	 * driver, the ATF or Linux), we now have it here to ensure that
+	 * we no longer have to track this through the various components.
+	 */
+	if (cru->glb_rst_st != 0)
+		rk3399_force_power_on_reset();
+#endif
+
+#if defined(SPL_DM_REGULATOR)
+	/*
+	 * Turning the eMMC and SPI back on (if disabled via the Qseven
+	 * BIOS_ENABLE) signal is done through a always-on regulator).
+	 */
+	if (regulators_enable_boot_on(false))
+		debug("%s: Cannot enable boot on regulator\n", __func__);
+#endif
+}
+#endif /* CONFIG_SPL_BUILD */
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

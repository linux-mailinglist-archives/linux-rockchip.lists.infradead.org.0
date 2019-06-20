Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30A154D9D5
	for <lists+linux-rockchip@lfdr.de>; Thu, 20 Jun 2019 20:55:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j4dfu2sBhSW87IEr6swG9l7WuK8A+waUxmKWYDVSfOM=; b=ZqR7o5yC/t+Ts+
	cXtKylzae7/l6QrKF+S8S7xAZKnVBqw2nQJVJzcKDAcb5/T8IiHyp+5Gz515pxY/48QKXrOZfIUG7
	ooZGRKl+BKfuyoP1ctrf5ZYp5vm4GFKqNMEq4rA8I8dmQx0T7jmMI9GMnBH86CokAv+zzB+Jjck9X
	dqEQOeGX8yXAlBIvHr+gsC4HznIiDGjpcs7j8fzLvfKG29MibV1Z1K+LgoHdBJOxQ+KMie55Cv6ah
	m1Km4K6e5CjS6ytoTOORw5dBQYAsoZ3v5SrJru5miBJo3ccA8f7RBHy8oyKol6Sq2+7F21H7KApLV
	48V2VIVxdJT/Zat9+uPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1he2Db-0002sO-49; Thu, 20 Jun 2019 18:55:31 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1he2DW-0002pF-Ll
 for linux-rockchip@lists.infradead.org; Thu, 20 Jun 2019 18:55:28 +0000
Received: by mail-pf1-x442.google.com with SMTP id t16so2155578pfe.11
 for <linux-rockchip@lists.infradead.org>; Thu, 20 Jun 2019 11:55:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=9wih55CXddiDKm5F7deTRcQNx2Iu0ElwljLUHTPsi0A=;
 b=EZnVm6BN+J4QoX72Y0Xd7KU5LuiuMfpOBxFUuui2xxTTJAXWUiI3f1zhED+6OK1uuV
 hKtSt54abk+3pxbegtq9LBK4QVZlKNgqVR2Bl5qmtAlTWAW3kxP5jjIFZL7vHI/biguW
 suJoANj9/mgtYTECwOunHCvqPHIcIKVj7p1Xo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9wih55CXddiDKm5F7deTRcQNx2Iu0ElwljLUHTPsi0A=;
 b=lSJppqjQuPpJIwPVQFmkLYWv8ObZB0eiRcXbjA+JjGroTixAqdepwDKb5XyPYRW9yC
 Jrw19Tx1LnNeXmupL+/EDYe/RrW1/17Vu70GA1cOB7EeMp8FCGvlai8R0Nq/MlRqvAQz
 IlnUrMfUZLcpOCzECfW+t0O5e5t7vORTJRO5spuUb9dAq5GboSeKSXugeZesxhi0SkQY
 BK3vqG88vC7NmzvankgLaPnWymou+miSNb0MCw85t3z1F2Nf3F9/M7gC29ISFE9Hn3nL
 HoPhLLnJJL9SfU9Aw25rN2FTVKQRXkzAbBwgAq7QKduHueh3L7pV9uZ8HD8PNYdlmuDg
 BXbw==
X-Gm-Message-State: APjAAAXhjeX0AcEYFOE6PQDPYyQWmh60hPkU4E67fN6BHz9iy1Eoks03
 x5276PTkGRGQ5EwEILqDruJsJw==
X-Google-Smtp-Source: APXvYqxAkd6D+xUopzJuy5ThPV0SV82+8zVhGup/VvkeZAfhMJj4pbH9jP++/2D7faoSuoSBe4CRlQ==
X-Received: by 2002:a63:231a:: with SMTP id j26mr13869497pgj.389.1561056925968; 
 Thu, 20 Jun 2019 11:55:25 -0700 (PDT)
Received: from localhost.localdomain ([183.82.225.128])
 by smtp.gmail.com with ESMTPSA id k3sm372183pju.27.2019.06.20.11.55.23
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 20 Jun 2019 11:55:25 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, u-boot@lists.denx.de
Subject: [PATCH v2 2/8] rockchip: rk3399: Support common spl_board_init
Date: Fri, 21 Jun 2019 00:25:00 +0530
Message-Id: <20190620185506.11449-3-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190620185506.11449-1-jagan@amarulasolutions.com>
References: <20190620185506.11449-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_115526_739582_F3F50AFF 
X-CRM114-Status: GOOD (  17.84  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [183.82.225.128 listed in dnsbl.sorbs.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com,
 Jagan Teki <jagan@amarulasolutions.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Support common spl_board_init by moving code from puma
board file into, common rk3399-board-spl.c.

Part of the code has sysreset-gpio, regulators_enable_boot_on
but right now only puma board is using this with relevant
config options rest remains common for all targets.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm/mach-rockchip/rk3399-board-spl.c     | 63 +++++++++++++++++++
 board/rockchip/evb_rk3399/evb-rk3399.c        |  8 ---
 .../puma_rk3399/puma-rk3399.c                 | 58 -----------------
 board/vamrs/rock960_rk3399/rock960-rk3399.c   |  8 ---
 4 files changed, 63 insertions(+), 74 deletions(-)

diff --git a/arch/arm/mach-rockchip/rk3399-board-spl.c b/arch/arm/mach-rockchip/rk3399-board-spl.c
index 800ca80022..65c98b697d 100644
--- a/arch/arm/mach-rockchip/rk3399-board-spl.c
+++ b/arch/arm/mach-rockchip/rk3399-board-spl.c
@@ -11,13 +11,16 @@
 #include <spl.h>
 #include <spl_gpio.h>
 #include <syscon.h>
+#include <asm/gpio.h>
 #include <asm/io.h>
 #include <asm/arch-rockchip/bootrom.h>
 #include <asm/arch-rockchip/clock.h>
+#include <asm/arch-rockchip/cru_rk3399.h>
 #include <asm/arch-rockchip/grf_rk3399.h>
 #include <asm/arch-rockchip/hardware.h>
 #include <asm/arch-rockchip/periph.h>
 #include <asm/arch-rockchip/sys_proto.h>
+#include <power/regulator.h>
 #include <dm/pinctrl.h>
 
 void board_return_to_bootrom(void)
@@ -202,6 +205,66 @@ void board_init_f(ulong dummy)
 	}
 }
 
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
+void spl_board_init(void)
+{
+#if defined(SPL_GPIO_SUPPORT)
+	struct rk3399_cru *cru = rockchip_get_cru();
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
+
+	preloader_console_init();
+}
+
 #ifdef CONFIG_SPL_LOAD_FIT
 int board_fit_config_name_match(const char *name)
 {
diff --git a/board/rockchip/evb_rk3399/evb-rk3399.c b/board/rockchip/evb_rk3399/evb-rk3399.c
index 769b5d146f..c600553ff6 100644
--- a/board/rockchip/evb_rk3399/evb-rk3399.c
+++ b/board/rockchip/evb_rk3399/evb-rk3399.c
@@ -8,7 +8,6 @@
 #include <dm/pinctrl.h>
 #include <asm/arch-rockchip/periph.h>
 #include <power/regulator.h>
-#include <spl.h>
 
 int board_init(void)
 {
@@ -64,10 +63,3 @@ int board_init(void)
 out:
 	return 0;
 }
-
-void spl_board_init(void)
-{
-	preloader_console_init();
-
-	return;
-}
diff --git a/board/theobroma-systems/puma_rk3399/puma-rk3399.c b/board/theobroma-systems/puma_rk3399/puma-rk3399.c
index c6b509c109..251cd2d566 100644
--- a/board/theobroma-systems/puma_rk3399/puma-rk3399.c
+++ b/board/theobroma-systems/puma_rk3399/puma-rk3399.c
@@ -13,10 +13,8 @@
 #include <dm/pinctrl.h>
 #include <dm/uclass-internal.h>
 #include <asm/io.h>
-#include <asm/gpio.h>
 #include <asm/setup.h>
 #include <asm/arch-rockchip/clock.h>
-#include <asm/arch-rockchip/cru_rk3399.h>
 #include <asm/arch-rockchip/hardware.h>
 #include <asm/arch-rockchip/grf_rk3399.h>
 #include <asm/arch-rockchip/periph.h>
@@ -38,62 +36,6 @@ int board_init(void)
 	return 0;
 }
 
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
-
-void spl_board_init(void)
-{
-	int  ret;
-	struct rk3399_cru *cru = rockchip_get_cru();
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
-
-	/*
-	 * Turning the eMMC and SPI back on (if disabled via the Qseven
-	 * BIOS_ENABLE) signal is done through a always-on regulator).
-	 */
-	ret = regulators_enable_boot_on(false);
-	if (ret)
-		debug("%s: Cannot enable boot on regulator\n", __func__);
-
-	preloader_console_init();
-}
-
 static void setup_macaddr(void)
 {
 #if CONFIG_IS_ENABLED(CMD_NET)
diff --git a/board/vamrs/rock960_rk3399/rock960-rk3399.c b/board/vamrs/rock960_rk3399/rock960-rk3399.c
index 018e4b55b8..2eb7120e84 100644
--- a/board/vamrs/rock960_rk3399/rock960-rk3399.c
+++ b/board/vamrs/rock960_rk3399/rock960-rk3399.c
@@ -6,7 +6,6 @@
 #include <common.h>
 #include <dm.h>
 #include <power/regulator.h>
-#include <spl.h>
 
 int board_init(void)
 {
@@ -18,10 +17,3 @@ int board_init(void)
 
 	return 0;
 }
-
-void spl_board_init(void)
-{
-	preloader_console_init();
-
-	return;
-}
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

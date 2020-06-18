Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB7E01FF8AE
	for <lists+linux-rockchip@lfdr.de>; Thu, 18 Jun 2020 18:08:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z27oEK5+htZp3HzhGHGCv+LX8I+g3qzih6AIe/W3zqU=; b=mRFk1sKfVYoO1b
	qU1cByLPIayIOK+7f3v2dJW3sSp+g/gNH/iI+kTEJbdKuUi2ZtboTLPuV0vDhyy/eshP2vWrsANBR
	XjX4MlUIdfppQV1vO8DEbc+6tdyTwcwEEgdvgClGXAYJbAWrLxJYIFrJT0VuQeRWn+qDUeVSEmqRL
	Yjj2hD+ftZ0KiIZDp5Pz3cE9xWJbKbr6mph07M/fWcBnihAlj6aR1hDdc4uMO5+rf1TOmDKpLeYEG
	eBkdHNJFIbtdBUNXq+hwNddTzqeBts8d66yMcEl6guN1B4Jnt84Q028BhAXMt/eelxL0jVP0HmcnQ
	QF0Tk3QuBtLGko1wdTdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlx5I-0000LR-1I; Thu, 18 Jun 2020 16:08:12 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlx5E-0000JW-Au
 for linux-rockchip@lists.infradead.org; Thu, 18 Jun 2020 16:08:09 +0000
Received: by mail-pl1-x643.google.com with SMTP id y18so2619490plr.4
 for <linux-rockchip@lists.infradead.org>; Thu, 18 Jun 2020 09:08:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=jSsm2gL9QZAY4GTGbTrZamobNQaqEtToYRe2AvoAmHk=;
 b=ZtGWj5LQZtFrknp6vQvog1NrauD/1enCKC5vqTsA1S6dZZSDDfe/NKj6egaS65QRTe
 CgoVUFVuPGGcikTtlW4zvsc+YQ9wHl3XzlEvgNF0le4sXr6uq3BVCX4wCJiAXu8Aikf9
 W9q6fNnIYLQVKe8Hop26AWv0Z+nlDUuBpErkE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=jSsm2gL9QZAY4GTGbTrZamobNQaqEtToYRe2AvoAmHk=;
 b=iQTPnqR2S88NqkyPF9fFz7lRyFaPD6ldfy65FtPpasAo7oURyQ6Y0Gl404d+anaceL
 y5E/+BUD15Ydb8r++NgDJHsHoO//mCLuPjXl559Eyhxk9+Z1T+mKKvMvOJinr6RTJCzF
 Rk3bEKX1gIjxsQyPHixKmPKSPpD1OQd5k8oEusoLCY2UMortuQpE9X9Is7mt+gHNfo9v
 4jsQfKI+dD8Cw6dxldhiFSXaWpThQCVJt6uvngOPlbfwz1bh14RjaPSpP89wEv0XBISV
 0fAbLbS1ehaOqE2SOfaVHfeJEnlKHRQfFaPJNZXCfYOdUvG0UAAqqjKf3fmKCNA3SfYs
 VjgQ==
X-Gm-Message-State: AOAM532UkJkpjTbiZa77nJyg2yLamvKDzVF15sFutnwpFAahY3YEqFHL
 yWcgI77vSIQRI+GcLtAIda9euuprbHpIhQ==
X-Google-Smtp-Source: ABdhPJzPZB2JA3GNdP8TP5tT5Ig/ENghF+1Rxvp8RBK8xGru+PsO4F4Uy3L4myDl8F9HXsufxcb0JQ==
X-Received: by 2002:a17:90b:1009:: with SMTP id
 gm9mr5016843pjb.213.1592496487794; 
 Thu, 18 Jun 2020 09:08:07 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:b0c7:f192:869b:df87])
 by smtp.gmail.com with ESMTPSA id u4sm3264943pfl.102.2020.06.18.09.08.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Jun 2020 09:08:07 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Simon Glass <sjg@chromium.org>
Subject: [PATCH v4 3/5] roc-rk3399-pc: Move leds setup in SPL
Date: Thu, 18 Jun 2020 21:09:46 +0530
Message-Id: <20200618153948.218506-4-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618153948.218506-1-jagan@amarulasolutions.com>
References: <20200618153948.218506-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_090808_384485_32151804 
X-CRM114-Status: GOOD (  13.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
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

roc-rk3399-pc has some specific requirements to support LEDS,
environment. board detection and etc prior to U-Boot proper.

So as of now SPL would be a better stage for these custom board
requirements to support unlike TPL. Adding few of these custom
requirements like LEDS in TPL would require extra code pulling
and also the size of TPL can grow.

So, this patch moves the leds code from TPL into SPL after relocation.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Tested-by: Suniel Mahesh <sunil@amarulasolutions.com>
---
Changes for v4:
- none

 arch/arm/mach-rockchip/tpl.c                |  7 -------
 board/firefly/roc-pc-rk3399/Makefile        |  4 ++++
 board/firefly/roc-pc-rk3399/roc-pc-rk3399.c | 21 -------------------
 board/firefly/roc-pc-rk3399/spl.c           | 23 +++++++++++++++++++++
 configs/roc-pc-mezzanine-rk3399_defconfig   |  2 +-
 configs/roc-pc-rk3399_defconfig             |  2 +-
 6 files changed, 29 insertions(+), 30 deletions(-)
 create mode 100644 board/firefly/roc-pc-rk3399/spl.c

diff --git a/arch/arm/mach-rockchip/tpl.c b/arch/arm/mach-rockchip/tpl.c
index 88f80b05a9..cc908e1b0e 100644
--- a/arch/arm/mach-rockchip/tpl.c
+++ b/arch/arm/mach-rockchip/tpl.c
@@ -43,18 +43,11 @@ __weak void rockchip_stimer_init(void)
 	       TIMER_CONTROL_REG);
 }
 
-__weak int board_early_init_f(void)
-{
-	return 0;
-}
-
 void board_init_f(ulong dummy)
 {
 	struct udevice *dev;
 	int ret;
 
-	board_early_init_f();
-
 #if defined(CONFIG_DEBUG_UART) && defined(CONFIG_TPL_SERIAL_SUPPORT)
 	/*
 	 * Debug UART can be used from here if required:
diff --git a/board/firefly/roc-pc-rk3399/Makefile b/board/firefly/roc-pc-rk3399/Makefile
index 29c79b25d7..3a9c4c744d 100644
--- a/board/firefly/roc-pc-rk3399/Makefile
+++ b/board/firefly/roc-pc-rk3399/Makefile
@@ -4,4 +4,8 @@
 # SPDX-License-Identifier:     GPL-2.0+
 #
 
+ifdef CONFIG_SPL_BUILD
+obj-y	+= spl.o
+else
 obj-y	+= roc-pc-rk3399.o
+endif
diff --git a/board/firefly/roc-pc-rk3399/roc-pc-rk3399.c b/board/firefly/roc-pc-rk3399/roc-pc-rk3399.c
index 7c3a803654..581cdcd3b0 100644
--- a/board/firefly/roc-pc-rk3399/roc-pc-rk3399.c
+++ b/board/firefly/roc-pc-rk3399/roc-pc-rk3399.c
@@ -6,13 +6,8 @@
 #include <common.h>
 #include <dm.h>
 #include <log.h>
-#include <asm/arch-rockchip/periph.h>
 #include <power/regulator.h>
-#include <spl_gpio.h>
-#include <asm/io.h>
-#include <asm/arch-rockchip/gpio.h>
 
-#ifndef CONFIG_SPL_BUILD
 int board_early_init_f(void)
 {
 	struct udevice *regulator;
@@ -30,19 +25,3 @@ int board_early_init_f(void)
 out:
 	return 0;
 }
-#endif
-
-#if defined(CONFIG_TPL_BUILD)
-
-#define GPIO0_BASE      0xff720000
-
-int board_early_init_f(void)
-{
-	struct rockchip_gpio_regs * const gpio0 = (void *)GPIO0_BASE;
-
-	/* Turn on red LED, indicating full power mode */
-	spl_gpio_output(gpio0, GPIO(BANK_B, 5), 1);
-
-	return 0;
-}
-#endif
diff --git a/board/firefly/roc-pc-rk3399/spl.c b/board/firefly/roc-pc-rk3399/spl.c
new file mode 100644
index 0000000000..a7664c6b86
--- /dev/null
+++ b/board/firefly/roc-pc-rk3399/spl.c
@@ -0,0 +1,23 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright (c) 2020 Amarula Solutions(India)
+ */
+
+#include <common.h>
+#include <spl_gpio.h>
+#include <asm/arch-rockchip/gpio.h>
+
+#define GPIO0_BASE		0xff720000
+
+static void led_setup(void)
+{
+	struct rockchip_gpio_regs * const gpio0 = (void *)GPIO0_BASE;
+
+	/* Turn on red LED, indicating full power mode */
+	spl_gpio_output(gpio0, GPIO(BANK_B, 5), 1);
+}
+
+void rk_spl_board_init(void)
+{
+	led_setup();
+}
diff --git a/configs/roc-pc-mezzanine-rk3399_defconfig b/configs/roc-pc-mezzanine-rk3399_defconfig
index 595f052cb7..060b4bfecf 100644
--- a/configs/roc-pc-mezzanine-rk3399_defconfig
+++ b/configs/roc-pc-mezzanine-rk3399_defconfig
@@ -1,6 +1,7 @@
 CONFIG_ARM=y
 CONFIG_ARCH_ROCKCHIP=y
 CONFIG_SYS_TEXT_BASE=0x00200000
+CONFIG_SPL_GPIO_SUPPORT=y
 CONFIG_ENV_SIZE=0x8000
 CONFIG_ENV_OFFSET=0x3F8000
 CONFIG_ENV_SECT_SIZE=0x1000
@@ -20,7 +21,6 @@ CONFIG_SPL_STACK_R=y
 CONFIG_SPL_STACK_R_MALLOC_SIMPLE_LEN=0x10000
 CONFIG_SPL_SPI_LOAD=y
 CONFIG_TPL=y
-CONFIG_TPL_GPIO_SUPPORT=y
 CONFIG_CMD_BOOTZ=y
 CONFIG_CMD_GPT=y
 CONFIG_CMD_MMC=y
diff --git a/configs/roc-pc-rk3399_defconfig b/configs/roc-pc-rk3399_defconfig
index 1c4db3443f..9897a52cd8 100644
--- a/configs/roc-pc-rk3399_defconfig
+++ b/configs/roc-pc-rk3399_defconfig
@@ -1,6 +1,7 @@
 CONFIG_ARM=y
 CONFIG_ARCH_ROCKCHIP=y
 CONFIG_SYS_TEXT_BASE=0x00200000
+CONFIG_SPL_GPIO_SUPPORT=y
 CONFIG_ENV_SIZE=0x8000
 CONFIG_ENV_OFFSET=0x3F8000
 CONFIG_ENV_SECT_SIZE=0x1000
@@ -20,7 +21,6 @@ CONFIG_SPL_STACK_R=y
 CONFIG_SPL_STACK_R_MALLOC_SIMPLE_LEN=0x10000
 CONFIG_SPL_SPI_LOAD=y
 CONFIG_TPL=y
-CONFIG_TPL_GPIO_SUPPORT=y
 CONFIG_CMD_BOOTZ=y
 CONFIG_CMD_GPT=y
 CONFIG_CMD_MMC=y
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

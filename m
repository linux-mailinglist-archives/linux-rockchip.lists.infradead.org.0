Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 407411F1F0E
	for <lists+linux-rockchip@lfdr.de>; Mon,  8 Jun 2020 20:32:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MTr0m1rOsqA8lDLFI7ekyht49smnMLRMwiXZnzwKN1A=; b=m4uyXUxewdXgwV
	QQu9KTCTt2JIeLl97096gHVLOhTSZZaFfVYK6w+ZEiS2Mb4izzAGwx9Rvud79Jv1hbygEJRTDxP2X
	hfe/W47N5FbM3fF+DWe7NoDiyqbcMqoLR8wRnGTT95kWFLVpP30ST0FGJiZxHFXJjFcPmkQDGozws
	Sobjs0aYLZ7flBocsnC3k9v5W7KO0CsJv/S7VAQfnQFbDkDSUflUsh59h8+TzILaNdPU3DeoO29Ju
	b/1O8KVhjDgeL3/8/Eby7o0HN4oWSgBy6hG/UaGLOZEbPk56v0PLd9G3vYG+TD8mgt0P12JHKhWmu
	ttWwSrne0FQDALRVEWVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiMZL-0003M0-J1; Mon, 08 Jun 2020 18:32:23 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiMZI-0003L5-TE
 for linux-rockchip@lists.infradead.org; Mon, 08 Jun 2020 18:32:22 +0000
Received: by mail-pj1-x1041.google.com with SMTP id h95so191377pje.4
 for <linux-rockchip@lists.infradead.org>; Mon, 08 Jun 2020 11:32:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=lj7UGgufzUrli12AvwkCo5i8blVe87esYrdniDn/yFw=;
 b=VoxPyd/qf/mZWC0YEfWVnlHPTc9U9skg3sJpVZSdrRqDYKoj6KAio8bNrYjRScgk54
 yrKw/8DcyPJCfg11V0S1xxIyHTkoo7ElIJae/Xu2pLUpTqkTPQo68OkPAlIuPOXbg4JI
 dnb9Mdisr3bBB8CtpbDr9yjnThONNHPtoU+vI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=lj7UGgufzUrli12AvwkCo5i8blVe87esYrdniDn/yFw=;
 b=Iwj15pDWpH7grBKqOYesBOdWua1IiMX1DpvhwziEh28RmQlwu941DXO1G66KpKEcEe
 0P48zxr6qdPvRHGsE5Kx1S17CZJr5ZJ+ZsiMz5atziCWa6v+vKpFxJp7O2+7HHchMhTz
 U7uv6Ym7/kCLUuOJinKzF2ttJwsuwlLqK+JHifCJdrDWLgL9Ys1WUbSYKAVEiD+r/1N6
 +TTTdeFD49NtpxTvkM6xK0OpCbM1pM55mY8crpTUrsSg2I21P7WMNLsir9g1mImQoDSS
 hEqnasvXffHqo9ahNCUdqRwWFj1kEXflhMxjNOaYJYso6YcyIsJbHXPnZ3Kx5g8zatTg
 1JgQ==
X-Gm-Message-State: AOAM530qte3PBm52b5YNp3CNPFMg3sZXsCcWucrLJJacctVh6igHoYU0
 SIeNyUZ4p7Dk00XRu0aC3IYBXg==
X-Google-Smtp-Source: ABdhPJypCmSzNW5Io35Hs/Bp7sb3cEuXeVxVaiePkK1EZpexT0GXnzz9Ukqm+xmzYiIKJ6AyHHRBag==
X-Received: by 2002:a17:902:bcc9:: with SMTP id o9mr94687pls.335.1591641140373; 
 Mon, 08 Jun 2020 11:32:20 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:9043:af95:b7b4:3ade])
 by smtp.gmail.com with ESMTPSA id k29sm6680961pgf.77.2020.06.08.11.32.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 08 Jun 2020 11:32:19 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Simon Glass <sjg@chromium.org>
Subject: [PATCH v3 5/5] roc-rk3399-pc: Set LED only during POR and pwr_key=y
Date: Mon,  8 Jun 2020 14:31:44 -0400
Message-Id: <20200608183144.26809-6-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200608183144.26809-1-jagan@amarulasolutions.com>
References: <20200608183144.26809-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_113220_943630_71AE8415 
X-CRM114-Status: GOOD (  13.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1041 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

ROC-RK3399-PC has specific set of configurations for
on-board led setup.

Due to easiness for user to know the state of the board
roc-rk339-pc board code will setup the low power led
on/off, and waiting for user to press power key and then
glow full power led.

All this needs to happen only during power-on-reset not
for soft reset or WDT.

Also, it is not a proper usage to ask the user to press
the Power key if the board connected remotely, so add
the environment variable 'pwr_key' to check as well.

So, user need to press Power key only
- during POR
- pwr_key=y

Tested-by: Suniel Mahesh <sunil@amarulasolutions.com>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v3:
- new patch

 board/firefly/roc-pc-rk3399/spl.c         | 35 ++++++++++++++++++++++-
 configs/roc-pc-mezzanine-rk3399_defconfig |  4 ++-
 configs/roc-pc-rk3399_defconfig           |  4 ++-
 3 files changed, 40 insertions(+), 3 deletions(-)

diff --git a/board/firefly/roc-pc-rk3399/spl.c b/board/firefly/roc-pc-rk3399/spl.c
index a7664c6b86..771a7fb2f2 100644
--- a/board/firefly/roc-pc-rk3399/spl.c
+++ b/board/firefly/roc-pc-rk3399/spl.c
@@ -4,16 +4,49 @@
  */
 
 #include <common.h>
+#include <env.h>
 #include <spl_gpio.h>
+#include <asm/io.h>
+#include <asm/arch-rockchip/cru.h>
 #include <asm/arch-rockchip/gpio.h>
+#include <asm/arch-rockchip/grf_rk3399.h>
 
+#define PMUGRF_BASE		0xff320000
 #define GPIO0_BASE		0xff720000
 
+/**
+ * LED setup for roc-rk3399-pc
+ *
+ * 1. Set the low power leds (only during POR, pwr_key env is 'y')
+ *    glow yellow LED, termed as low power
+ *    poll for on board power key press
+ *    once powe key pressed, turn off yellow
+ * 2. Turn on red LED, indicating full power mode
+ */
 static void led_setup(void)
 {
 	struct rockchip_gpio_regs * const gpio0 = (void *)GPIO0_BASE;
+	struct rk3399_pmugrf_regs * const pmugrf = (void *)PMUGRF_BASE;
+	bool press_pwr_key = false;
+
+	if (IS_ENABLED(CONFIG_SPL_ENV_SUPPORT)) {
+		env_init();
+		env_load();
+		if (env_get_yesno("pwr_key") == 1)
+			press_pwr_key = true;
+	}
+
+	if (press_pwr_key && !strcmp(get_reset_cause(), "POR")) {
+		spl_gpio_output(gpio0, GPIO(BANK_A, 2), 1);
+
+		spl_gpio_set_pull(&pmugrf->gpio0_p, GPIO(BANK_A, 5),
+				  GPIO_PULL_NORMAL);
+		while (readl(&gpio0->ext_port) & 0x20)
+			;
+
+		spl_gpio_output(gpio0, GPIO(BANK_A, 2), 0);
+	}
 
-	/* Turn on red LED, indicating full power mode */
 	spl_gpio_output(gpio0, GPIO(BANK_B, 5), 1);
 }
 
diff --git a/configs/roc-pc-mezzanine-rk3399_defconfig b/configs/roc-pc-mezzanine-rk3399_defconfig
index 8ad74dc408..d3369063ea 100644
--- a/configs/roc-pc-mezzanine-rk3399_defconfig
+++ b/configs/roc-pc-mezzanine-rk3399_defconfig
@@ -17,7 +17,8 @@ CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-roc-pc-mezzanine.dtb"
 CONFIG_DISPLAY_BOARDINFO_LATE=y
 # CONFIG_SPL_RAW_IMAGE_SUPPORT is not set
 CONFIG_SPL_STACK_R=y
-CONFIG_SPL_STACK_R_MALLOC_SIMPLE_LEN=0x10000
+CONFIG_SPL_STACK_R_MALLOC_SIMPLE_LEN=0x20000
+CONFIG_SPL_ENV_SUPPORT=y
 CONFIG_SPL_SPI_LOAD=y
 CONFIG_TPL=y
 CONFIG_CMD_BOOTZ=y
@@ -32,6 +33,7 @@ CONFIG_DEFAULT_DEVICE_TREE="rk3399-roc-pc-mezzanine"
 CONFIG_OF_SPL_REMOVE_PROPS="pinctrl-0 pinctrl-names clock-names interrupt-parent assigned-clocks assigned-clock-rates assigned-clock-parents"
 CONFIG_ENV_IS_IN_SPI_FLASH=y
 CONFIG_SYS_RELOC_GD_ENV_ADDR=y
+CONFIG_SPL_DM_SEQ_ALIAS=y
 CONFIG_ROCKCHIP_GPIO=y
 CONFIG_SYS_I2C_ROCKCHIP=y
 CONFIG_MISC=y
diff --git a/configs/roc-pc-rk3399_defconfig b/configs/roc-pc-rk3399_defconfig
index 6fd06d6381..0650b941c2 100644
--- a/configs/roc-pc-rk3399_defconfig
+++ b/configs/roc-pc-rk3399_defconfig
@@ -17,7 +17,8 @@ CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-roc-pc.dtb"
 CONFIG_DISPLAY_BOARDINFO_LATE=y
 # CONFIG_SPL_RAW_IMAGE_SUPPORT is not set
 CONFIG_SPL_STACK_R=y
-CONFIG_SPL_STACK_R_MALLOC_SIMPLE_LEN=0x10000
+CONFIG_SPL_STACK_R_MALLOC_SIMPLE_LEN=0x20000
+CONFIG_SPL_ENV_SUPPORT=y
 CONFIG_SPL_SPI_LOAD=y
 CONFIG_TPL=y
 CONFIG_CMD_BOOTZ=y
@@ -31,6 +32,7 @@ CONFIG_DEFAULT_DEVICE_TREE="rk3399-roc-pc"
 CONFIG_OF_SPL_REMOVE_PROPS="pinctrl-0 pinctrl-names clock-names interrupt-parent assigned-clocks assigned-clock-rates assigned-clock-parents"
 CONFIG_ENV_IS_IN_SPI_FLASH=y
 CONFIG_SYS_RELOC_GD_ENV_ADDR=y
+CONFIG_SPL_DM_SEQ_ALIAS=y
 CONFIG_ROCKCHIP_GPIO=y
 CONFIG_SYS_I2C_ROCKCHIP=y
 CONFIG_MISC=y
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

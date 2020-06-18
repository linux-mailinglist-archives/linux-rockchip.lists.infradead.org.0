Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 353D91FF8B0
	for <lists+linux-rockchip@lfdr.de>; Thu, 18 Jun 2020 18:08:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2dPwuZ2LMBNZVi8gVndOEj1miBQ6OgSRSKbmAOyF49M=; b=gkC0scvrdauWCH
	mp4xubG1vYYFx1gn+nD70ECJV+YBEbcX/iQFNIeSWXcYEZMSRtHBKPs2uqdGcvRySMnBbL6J9nVsv
	z96MVpftwWhp8Py7NsvqiTNBfXN3OEBbvnz2EAaUb+GrARZq5W0QiZYCNASndHOog+irIILlhrDEV
	EPmeZW2I2qqG75pFoLcoqwo4Nam+HeNavTXDcpnJPm7MMBjuDbtcsMnoKDCoNgHRiCLqB2I+39oSQ
	GiFEGYvLRQ7lmCa3F8r5n2nBwiem0/zXDGA49cjFuLGHRagpXAMoHNj0WMmn4sOekAw2KR5vQWyIv
	iAqxbyzLTHyI2hI0Dk5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlx5Q-0000SK-Hg; Thu, 18 Jun 2020 16:08:20 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlx5M-0000QK-S1
 for linux-rockchip@lists.infradead.org; Thu, 18 Jun 2020 16:08:18 +0000
Received: by mail-pj1-x1042.google.com with SMTP id jz3so2749214pjb.0
 for <linux-rockchip@lists.infradead.org>; Thu, 18 Jun 2020 09:08:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=mNYUanoA/LbUwSUYp2wZmC9gOha0WbAjao5ZgQikr2M=;
 b=W0hvtWN9mgyoniye/nvyx8ActCUSCH8yS6vcU0KnTlZ/vTKwM66IvWUxLNKGR9I9wv
 E1+m3eCNCpv9n1YZjDgPdTp3YTaNMlXv1Uj8Ufb+89PTxXf6WRG7xfPHYufyTD/K72WW
 J4qD1EAEpgp/9hKYvXdEqD902UNVT+aAnWupw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=mNYUanoA/LbUwSUYp2wZmC9gOha0WbAjao5ZgQikr2M=;
 b=KvdxjimMaoN0l9AJbyzXGyb187wuY4dNEyJRLqNHwoY0TJ5tSxNkf+3ZpyqPyGyIKV
 Wzt7h9VVsUTSXLeSVFlNlz+Od5E2zPJYPJHDN/9v7r50w58MsyUdkIzQaDLHZilKAvDv
 EIRZRYFwLbzC3WNiROvOx/f6mV9AbZtvAeaaUevA5v5hcID1XNEXMQX9hJsJcaUYnnyY
 7JEQCMw9olKTsfR6FOa5Wvgqxo62Fvc+bPDimGn9i2cHmOT+hxoVh2Yd2Fe+Bhm2OCzu
 pbnRND9YQVd7+PYM4GrAOPL/GbVq8UTDl5NeWhQgOwijbxAuGNxUk7BcfgOsZAiJzyrL
 Vjuw==
X-Gm-Message-State: AOAM532in1xiKIloWgn7YdgU4rNG3fVsTC8CvtujUcbRmokY7ouou9CB
 0jC1WUqgtYltPRfLbpAY466MHA==
X-Google-Smtp-Source: ABdhPJzsrh+P1yYUHPaBZeZ4jslJlN28hfslhJcxjL+rdG+0RyPW3aiW4RwMtmFyAgEth+Tm0ZmAow==
X-Received: by 2002:a17:90b:1013:: with SMTP id
 gm19mr5002759pjb.231.1592496496134; 
 Thu, 18 Jun 2020 09:08:16 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:b0c7:f192:869b:df87])
 by smtp.gmail.com with ESMTPSA id u4sm3264943pfl.102.2020.06.18.09.08.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Jun 2020 09:08:15 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Simon Glass <sjg@chromium.org>
Subject: [PATCH v4 5/5] roc-rk3399-pc: Set LED only during POR and pwr_key=y
Date: Thu, 18 Jun 2020 21:09:48 +0530
Message-Id: <20200618153948.218506-6-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618153948.218506-1-jagan@amarulasolutions.com>
References: <20200618153948.218506-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_090816_908488_E986693D 
X-CRM114-Status: GOOD (  12.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1042 listed in]
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
Changes for v4:
- none

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
index 060b4bfecf..7ca9fd0906 100644
--- a/configs/roc-pc-mezzanine-rk3399_defconfig
+++ b/configs/roc-pc-mezzanine-rk3399_defconfig
@@ -18,7 +18,8 @@ CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-roc-pc-mezzanine.dtb"
 CONFIG_DISPLAY_BOARDINFO_LATE=y
 # CONFIG_SPL_RAW_IMAGE_SUPPORT is not set
 CONFIG_SPL_STACK_R=y
-CONFIG_SPL_STACK_R_MALLOC_SIMPLE_LEN=0x10000
+CONFIG_SPL_STACK_R_MALLOC_SIMPLE_LEN=0x20000
+CONFIG_SPL_ENV_SUPPORT=y
 CONFIG_SPL_SPI_LOAD=y
 CONFIG_TPL=y
 CONFIG_CMD_BOOTZ=y
@@ -33,6 +34,7 @@ CONFIG_DEFAULT_DEVICE_TREE="rk3399-roc-pc-mezzanine"
 CONFIG_OF_SPL_REMOVE_PROPS="pinctrl-0 pinctrl-names clock-names interrupt-parent assigned-clocks assigned-clock-rates assigned-clock-parents"
 CONFIG_ENV_IS_IN_SPI_FLASH=y
 CONFIG_SYS_RELOC_GD_ENV_ADDR=y
+CONFIG_SPL_DM_SEQ_ALIAS=y
 CONFIG_ROCKCHIP_GPIO=y
 CONFIG_SYS_I2C_ROCKCHIP=y
 CONFIG_MISC=y
diff --git a/configs/roc-pc-rk3399_defconfig b/configs/roc-pc-rk3399_defconfig
index 9897a52cd8..440c1ab303 100644
--- a/configs/roc-pc-rk3399_defconfig
+++ b/configs/roc-pc-rk3399_defconfig
@@ -18,7 +18,8 @@ CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-roc-pc.dtb"
 CONFIG_DISPLAY_BOARDINFO_LATE=y
 # CONFIG_SPL_RAW_IMAGE_SUPPORT is not set
 CONFIG_SPL_STACK_R=y
-CONFIG_SPL_STACK_R_MALLOC_SIMPLE_LEN=0x10000
+CONFIG_SPL_STACK_R_MALLOC_SIMPLE_LEN=0x20000
+CONFIG_SPL_ENV_SUPPORT=y
 CONFIG_SPL_SPI_LOAD=y
 CONFIG_TPL=y
 CONFIG_CMD_BOOTZ=y
@@ -32,6 +33,7 @@ CONFIG_DEFAULT_DEVICE_TREE="rk3399-roc-pc"
 CONFIG_OF_SPL_REMOVE_PROPS="pinctrl-0 pinctrl-names clock-names interrupt-parent assigned-clocks assigned-clock-rates assigned-clock-parents"
 CONFIG_ENV_IS_IN_SPI_FLASH=y
 CONFIG_SYS_RELOC_GD_ENV_ADDR=y
+CONFIG_SPL_DM_SEQ_ALIAS=y
 CONFIG_ROCKCHIP_GPIO=y
 CONFIG_SYS_I2C_ROCKCHIP=y
 CONFIG_MISC=y
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AE427869C
	for <lists+linux-rockchip@lfdr.de>; Mon, 29 Jul 2019 09:48:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XTrp6b2n/TZ5NI/qdcgTPuUi1Rh2SF0xwKq3NRidi5E=; b=mqrIafdW88tfCe
	PrvxWaNFECGmpFY+lcZMAoKt60UkZnDXyoI/cjbh5UJ1IRm2Zxt3LUA9bHtqV6KlCClOhQCcv//AP
	LbPxVuJ7Ya2YpNrmGHbsenoka/DdSd3htcGnRmgwWnudNr92VexNZiI9n+sGEDxF/3z+NWbSSWDvH
	u3cp0NQIC4CVZt9woZdCQ/Y5gy005H7qHf660ilQHiwLz0Clp6vek1V/8W2h842h6WL/6As+srYfb
	HS8lHHWPShO6XOpe23GkUQOPQLgsjhrOTfCyBCmShCt2xdrUF35RRu6DKTmJnPy8jKqipmVZqyn+a
	7yDjX1fwR7PQZQR39Qbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs0O2-0002Ao-M5; Mon, 29 Jul 2019 07:48:02 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs0Nz-00028S-E3
 for linux-rockchip@lists.infradead.org; Mon, 29 Jul 2019 07:48:00 +0000
Received: by mail-pf1-x444.google.com with SMTP id p184so27571778pfp.7
 for <linux-rockchip@lists.infradead.org>; Mon, 29 Jul 2019 00:47:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=hh6Zq8q5k9JEDwSOsX0RjFgz0CKFycTyn3roDfu0XeM=;
 b=MBdweSrMjAeQ7pwHqDcOcGiTdyAR6+9bnT3k55MWhu4KIpcLLyA3caAnAvG5zJFUP/
 Z81utBX78yqB4iw+n7555C/z/QlkjxIgmJGVCdgDz1Q9U8TjAlpAxhVEhpmz25aLY95M
 vkJBpNvle5Ad8o4aYE9/kxwApSJkhmgHnNxts=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=hh6Zq8q5k9JEDwSOsX0RjFgz0CKFycTyn3roDfu0XeM=;
 b=eSl2hxc/UcRO8+7z7PixvgKOzVc2Nd2skQFHrV5gk68RoVmVOZfnuG/eO8CPserL+U
 NRAU7ZztG3XjuhxK8HwCha22ujlV4vSiJuLNX86xYMi/M52u3brrAoEvfRnQ9/9ordgD
 knLTS4y7hRfzCCeqwUYMs+nFbq7ep9fFn5AVgDpQ4VY7n8mVWjJwpbWNX1D1+mOojVKa
 1pncthsgiEm7cbEVCJzibvRBbjMdpdXLww2fyCNcruewgMTJzvmqajVgtHntyPA3EdwO
 anLumg4UdtdQlkod166TfDGjK946tEl96E9GD4biJZHzaVsXkCrV8etUoBieUWo08b/V
 J0kg==
X-Gm-Message-State: APjAAAVC2bI9CWwxAUzKLr92IPeJM1uxCED32KarcLOyiTYk1dY1QQrw
 0V5giLBfNBQp+7mRIiN8iwJwSA==
X-Google-Smtp-Source: APXvYqxrXhqR0zqd76kAsaqdohX7a86AfMZi8ZCDFKzzFrqztpakFzptTmS5G7t76gZHwwZJSbqeiQ==
X-Received: by 2002:aa7:8acb:: with SMTP id b11mr33967451pfd.109.1564386478973; 
 Mon, 29 Jul 2019 00:47:58 -0700 (PDT)
Received: from localhost.localdomain ([49.206.203.41])
 by smtp.gmail.com with ESMTPSA id h14sm75723348pfq.22.2019.07.29.00.47.55
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 29 Jul 2019 00:47:58 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH 09/15] wdt: dw: Rename to dw_wdt.c
Date: Mon, 29 Jul 2019 13:17:05 +0530
Message-Id: <20190729074711.16988-10-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190729074711.16988-1-jagan@amarulasolutions.com>
References: <20190729074711.16988-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_004759_476997_0E78AA56 
X-CRM114-Status: UNSURE (   9.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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
Cc: Dinh Nguyen <dinguyen@kernel.org>, Chin-Liang See <clsee@altera.com>,
 u-boot@lists.denx.de, Jagan Teki <jagan@amarulasolutions.com>,
 linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com,
 Akash Gajjar <akash@openedev.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

- use dw instead of designware for driver file since
  Linux following the same.
- add CONFIG macro start with CONFIG_WDT since the
  driver mode wdt drivers follow this.

Cc: Dinh Nguyen <dinguyen@kernel.org>
Cc: Chin-Liang See <clsee@altera.com>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 common/board_f.c                                | 2 +-
 drivers/watchdog/Makefile                       | 2 +-
 drivers/watchdog/{designware_wdt.c => dw_wdt.c} | 0
 include/configs/socfpga_common.h                | 2 +-
 include/configs/socfpga_stratix10_socdk.h       | 2 +-
 scripts/config_whitelist.txt                    | 2 +-
 6 files changed, 5 insertions(+), 5 deletions(-)
 rename drivers/watchdog/{designware_wdt.c => dw_wdt.c} (100%)

diff --git a/common/board_f.c b/common/board_f.c
index 4760d728f3..79efef0792 100644
--- a/common/board_f.c
+++ b/common/board_f.c
@@ -95,7 +95,7 @@ static int init_func_watchdog_init(void)
 # if defined(CONFIG_HW_WATCHDOG) && \
 	(defined(CONFIG_M68K) || defined(CONFIG_MICROBLAZE) || \
 	defined(CONFIG_SH) || \
-	defined(CONFIG_DESIGNWARE_WATCHDOG) || \
+	defined(CONFIG_WDT_DW) || \
 	defined(CONFIG_IMX_WATCHDOG))
 	hw_watchdog_init();
 	puts("       Watchdog enabled\n");
diff --git a/drivers/watchdog/Makefile b/drivers/watchdog/Makefile
index 68c989aa0b..a14fdabf8d 100644
--- a/drivers/watchdog/Makefile
+++ b/drivers/watchdog/Makefile
@@ -13,7 +13,6 @@ endif
 obj-$(CONFIG_S5P)               += s5p_wdt.o
 obj-$(CONFIG_XILINX_TB_WATCHDOG) += xilinx_tb_wdt.o
 obj-$(CONFIG_OMAP_WATCHDOG) += omap_wdt.o
-obj-$(CONFIG_DESIGNWARE_WATCHDOG) += designware_wdt.o
 obj-$(CONFIG_ULP_WATCHDOG) += ulp_wdog.o
 obj-$(CONFIG_WDT) += wdt-uclass.o
 obj-$(CONFIG_WDT_SANDBOX) += sandbox_wdt.o
@@ -23,6 +22,7 @@ obj-$(CONFIG_WDT_BCM6345) += bcm6345_wdt.o
 obj-$(CONFIG_BCM2835_WDT)       += bcm2835_wdt.o
 obj-$(CONFIG_WDT_ORION) += orion_wdt.o
 obj-$(CONFIG_WDT_CDNS) += cdns_wdt.o
+obj-$(CONFIG_WDT_DW) += dw_wdt.o
 obj-$(CONFIG_WDT_MPC8xx) += mpc8xx_wdt.o
 obj-$(CONFIG_WDT_MT7621) += mt7621_wdt.o
 obj-$(CONFIG_WDT_MTK) += mtk_wdt.o
diff --git a/drivers/watchdog/designware_wdt.c b/drivers/watchdog/dw_wdt.c
similarity index 100%
rename from drivers/watchdog/designware_wdt.c
rename to drivers/watchdog/dw_wdt.c
diff --git a/include/configs/socfpga_common.h b/include/configs/socfpga_common.h
index d1034ac280..65f02eca2e 100644
--- a/include/configs/socfpga_common.h
+++ b/include/configs/socfpga_common.h
@@ -105,7 +105,7 @@
  * L4 Watchdog
  */
 #ifdef CONFIG_HW_WATCHDOG
-#define CONFIG_DESIGNWARE_WATCHDOG
+#define CONFIG_WDT_DW
 #define CONFIG_DW_WDT_BASE		SOCFPGA_L4WD0_ADDRESS
 #define CONFIG_DW_WDT_CLOCK_KHZ		25000
 #define CONFIG_WATCHDOG_TIMEOUT_MSECS	30000
diff --git a/include/configs/socfpga_stratix10_socdk.h b/include/configs/socfpga_stratix10_socdk.h
index 8d2971c6e2..3582aec822 100644
--- a/include/configs/socfpga_stratix10_socdk.h
+++ b/include/configs/socfpga_stratix10_socdk.h
@@ -161,7 +161,7 @@ unsigned int cm_get_qspi_controller_clk_hz(void);
  */
 #ifdef CONFIG_SPL_BUILD
 #define CONFIG_HW_WATCHDOG
-#define CONFIG_DESIGNWARE_WATCHDOG
+#define CONFIG_WDT_DW
 #define CONFIG_DW_WDT_BASE		SOCFPGA_L4WD0_ADDRESS
 #ifndef __ASSEMBLY__
 unsigned int cm_get_l4_sys_free_clk_hz(void);
diff --git a/scripts/config_whitelist.txt b/scripts/config_whitelist.txt
index e616f7229b..f2453728c6 100644
--- a/scripts/config_whitelist.txt
+++ b/scripts/config_whitelist.txt
@@ -323,7 +323,7 @@ CONFIG_DEFAULT_IMMR
 CONFIG_DEF_HWCONFIG
 CONFIG_DELAY_ENVIRONMENT
 CONFIG_DESIGNWARE_ETH
-CONFIG_DESIGNWARE_WATCHDOG
+CONFIG_WDT_DW
 CONFIG_DEVELOP
 CONFIG_DEVICE_TREE_LIST
 CONFIG_DFU_ALT
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

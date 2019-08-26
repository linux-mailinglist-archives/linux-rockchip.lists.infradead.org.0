Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 915909D5B4
	for <lists+linux-rockchip@lfdr.de>; Mon, 26 Aug 2019 20:21:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i08ckhz5r3anWvU+7WxwxgtPMyc5pEdvT0M5Q3Wr4HI=; b=qxPgVS4bXM3dPY
	vv7KeFGbkzTswFiEaSZPZU2ypAG8bZs8acEomxZSWCYfK4OEPcgnK6jbnYbJd92A7rBrun3FgxxFk
	73SHmGUdf5fy3bCrwlqf8aqRqCqT1uNkNEQr5z8XF+7b/umBFfTmpPpdRn6PslDxjWRiWQXPImv6E
	jwQNkmL+DvZ4siZqZurmLuwTEvr0FWwT6+UNOvfIUKGde23CvuU+9IjBLArlYN6Zl+UYoz2WoM5HX
	goAt/tFSjU4ZGrdXx4gETyd0BCNdWdUEk2OXF+V4vJKPV9OWX8Qtg2WG2Da4AzvB1RSSKeM8t9v/K
	U6RO06+InMT3kaY3sq1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2Jce-0001dl-DW; Mon, 26 Aug 2019 18:21:44 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2JcQ-0001PD-CH
 for linux-rockchip@lists.infradead.org; Mon, 26 Aug 2019 18:21:31 +0000
Received: by mail-oi1-x244.google.com with SMTP id q8so12580852oij.5
 for <linux-rockchip@lists.infradead.org>; Mon, 26 Aug 2019 11:21:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=qO2o3JiSSK7DhHkxgiIofrCT8NvSiNOXOxqZG/yKu8I=;
 b=RDu/HXwV0CQF9gPBLsA6w18BqJuthUCxpXnU1BPDinvSi9ETTUMJ9Ew+1W9Ivc/6NE
 XV/Hg37IqYfrWgkcxm+3SNY0lh1ZtAaHgnas3Dq9Tm1/DNUy0RP7X9HyH/WemIUyWrqC
 dcPfjW0ty6LoNHW2gwUIHo1SrIFfUTDLvUmOk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=qO2o3JiSSK7DhHkxgiIofrCT8NvSiNOXOxqZG/yKu8I=;
 b=dOCQuXjjpx5K88ob2O4BlaclSjrVbNpd+fumo5TUPGPA9CoXiI9S1SKjD60+WDNBJn
 9a3pcfoaugOrOoqQEoI1xpkoVbYNPVX79DI4pCG7VKIMjvtwpv2j5Mw8mMPP4y+hmFqF
 w2mLCloc7L6A6mnCwhSwkMXNgUVPU1ew7cBGx5lZomVi2lm+tYs/qqxjeSCiiXQMDw6e
 Ql55LCn+URY/brRL1d2PXKM9r6HkmIaXzG9qAkxKs4H2J5J+6ZmFBsG7lHCn6mDU/m1h
 Gh6+ESjNtOSj+JKE8L1iruEuUslAq37LbJIibKUKJQ2i25QYY5jVND06yrdww63PA+md
 5wyw==
X-Gm-Message-State: APjAAAVPFtFKfrUJehLphqXfSBITeVepEzbnrl1GjtXevebInaj+XaDA
 uU34NxQV5ldBjSS3HnTQIS6cQA==
X-Google-Smtp-Source: APXvYqzriVDiABXEycdviLY85FJ0F0GJ37bFh9t9+B8gRs/HxFJXV1YuOsaYhxG+4rfz9PB9j4y2Gw==
X-Received: by 2002:aca:4ecd:: with SMTP id c196mr13866597oib.10.1566843689672; 
 Mon, 26 Aug 2019 11:21:29 -0700 (PDT)
Received: from jagan-XPS-13-9350.attlocal.net
 ([2600:1700:7430:38e0:d5b0:4823:33c8:5e46])
 by smtp.gmail.com with ESMTPSA id c11sm4401461otr.54.2019.08.26.11.21.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 Aug 2019 11:21:29 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH v2 08/16] wdt: dw: Rename to dw_wdt.c
Date: Mon, 26 Aug 2019 23:51:03 +0530
Message-Id: <20190826182111.30999-9-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190826182111.30999-1-jagan@amarulasolutions.com>
References: <20190826182111.30999-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_112130_445351_2FE84FE9 
X-CRM114-Status: UNSURE (   9.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
index 31181a9dc4..33e69c645a 100644
--- a/common/board_f.c
+++ b/common/board_f.c
@@ -97,7 +97,7 @@ static int init_func_watchdog_init(void)
 # if defined(CONFIG_HW_WATCHDOG) && \
 	(defined(CONFIG_M68K) || defined(CONFIG_MICROBLAZE) || \
 	defined(CONFIG_SH) || \
-	defined(CONFIG_DESIGNWARE_WATCHDOG) || \
+	defined(CONFIG_WDT_DW) || \
 	defined(CONFIG_IMX_WATCHDOG))
 	hw_watchdog_init();
 	puts("       Watchdog enabled\n");
diff --git a/drivers/watchdog/Makefile b/drivers/watchdog/Makefile
index 955caef815..ecdc1ce54f 100644
--- a/drivers/watchdog/Makefile
+++ b/drivers/watchdog/Makefile
@@ -13,7 +13,6 @@ endif
 obj-$(CONFIG_S5P)               += s5p_wdt.o
 obj-$(CONFIG_XILINX_TB_WATCHDOG) += xilinx_tb_wdt.o
 obj-$(CONFIG_OMAP_WATCHDOG) += omap_wdt.o
-obj-$(CONFIG_DESIGNWARE_WATCHDOG) += designware_wdt.o
 obj-$(CONFIG_ULP_WATCHDOG) += ulp_wdog.o
 obj-$(CONFIG_$(SPL_TPL_)WDT) += wdt-uclass.o
 obj-$(CONFIG_WDT_SANDBOX) += sandbox_wdt.o
@@ -22,6 +21,7 @@ obj-$(CONFIG_WDT_ASPEED) += ast_wdt.o
 obj-$(CONFIG_WDT_BCM6345) += bcm6345_wdt.o
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
index 36b0ed5459..902909216d 100644
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
index 90ad8172e2..5d03bfd061 100644
--- a/include/configs/socfpga_stratix10_socdk.h
+++ b/include/configs/socfpga_stratix10_socdk.h
@@ -162,7 +162,7 @@ unsigned int cm_get_qspi_controller_clk_hz(void);
  */
 #ifdef CONFIG_SPL_BUILD
 #define CONFIG_HW_WATCHDOG
-#define CONFIG_DESIGNWARE_WATCHDOG
+#define CONFIG_WDT_DW
 #define CONFIG_DW_WDT_BASE		SOCFPGA_L4WD0_ADDRESS
 #ifndef __ASSEMBLY__
 unsigned int cm_get_l4_sys_free_clk_hz(void);
diff --git a/scripts/config_whitelist.txt b/scripts/config_whitelist.txt
index 661c8b6427..35c56262ed 100644
--- a/scripts/config_whitelist.txt
+++ b/scripts/config_whitelist.txt
@@ -321,7 +321,7 @@ CONFIG_DEFAULT_IMMR
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

Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26D371B85EE
	for <lists+linux-rockchip@lfdr.de>; Sat, 25 Apr 2020 13:04:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=JJSObaVbMmgXT1qG4DMxeuucPspZ75724aJqTY4HM5A=; b=ltGa1IFoQ0rIU5WoQGH0anToKZ
	iIbFCxZWsn0km0/HFFPYJdjZSe2qAzAbC8mzzZNJHdnSQnphSaZTaqhY/b8NUDrYEELAl3nI1kDBU
	GtiWQ54JzzrmxwF5HR5Wli0Bll6Nwwsr2xLT0xCb8JVrIBivpC95n7i5i8V5qimPwEBkuBaQ8cNyI
	U7df8Mno5jLCSCLYIU8kizjjsxCFiyFVMZCTRRlsRIKUf1U71RGyjuUDijICeO3KGUqG24eJoK14W
	i/EfS4V5cowzLQ+/snaVocg7+R7rq3bCaTbJHnaHJW7Ky6UEij5sBus+JcR6VqtwHYwsCdudOR5X0
	L9EUggDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSIbx-0006W6-FR; Sat, 25 Apr 2020 11:04:41 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSIbu-0006UV-HI
 for linux-rockchip@lists.infradead.org; Sat, 25 Apr 2020 11:04:39 +0000
Received: by mail-pf1-x442.google.com with SMTP id w65so6099104pfc.12
 for <linux-rockchip@lists.infradead.org>; Sat, 25 Apr 2020 04:04:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=q43WUa+L6irHpcR7445SOskgq/+LIo6862w0Q9Mjsg0=;
 b=KOTx5CK6JYrp1mBcCYeA431SO6ucLDOOHDe8RTp1aAlQCIMscVWL4QUiMW3OxP0AwJ
 fb+R9ytlHBXew1ITl9vHMwl/g4TPDUax9MNZ9UqHMZGYVf1csfMDminU3AcfYiVWu9bd
 FM2YzU5uQExcEqJ1iHQceur8PMeyhtRen/Kt4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=q43WUa+L6irHpcR7445SOskgq/+LIo6862w0Q9Mjsg0=;
 b=EWx2xImtiA6Tf+z5K6xZlsWiGbX0yOuLq3idky4mBAixf8njGCpuI8bs8PUCiaTd2k
 otTHco78utODpMNeSaVdBnLzmbdVsdJLtmxBY2XQVckmkwRg6yyQH/fr5KJgYxb54XPb
 iVMafVkzQPxqYAEOZNpMEgPhsmB13qpMv3FqvR0yasFhwoW7kySEOhT9lqISYjo4gS8T
 rkflf3/JWpf+pZI2zRJayXhlodZlXlLpPMxoQfTsLpr/oKigQkqfXKSMF/Uy55rPR+Ko
 TpSg6IzJixKLdMgtgUsTsUV3kCkLZieln2x8Lk7lP+6IZF9PiRGotQfXxro7DYnZ50PQ
 02uA==
X-Gm-Message-State: AGi0PuYDJBGOu/bLJ+7piqCsNr9Db9IOun6e99/emVRO+Sx/piTha2/6
 XCl+hWDrw7U73ShinRVyeqemOQ==
X-Google-Smtp-Source: APiQypJEZvLlzo7Fdte1V9dqqGFbB9LWSYwf+6ugYvA+EYm7V/51bkAt/m786oIFrl5RX0jP0joAew==
X-Received: by 2002:a65:4c41:: with SMTP id l1mr13692106pgr.43.1587812677934; 
 Sat, 25 Apr 2020 04:04:37 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:1d46:fa69:c34:93dc])
 by smtp.gmail.com with ESMTPSA id
 v94sm6922831pjb.39.2020.04.25.04.04.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 25 Apr 2020 04:04:37 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH 8/8] rockchip: Enable PCIe/M.2 on rock960 board
Date: Sat, 25 Apr 2020 16:33:54 +0530
Message-Id: <20200425110354.12381-9-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200425110354.12381-1-jagan@amarulasolutions.com>
References: <20200425110354.12381-1-jagan@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200425_040438_598503_91B03C77 
X-CRM114-Status: UNSURE (   9.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: patrick@blueri.se, linux-rockchip@lists.infradead.org,
 Tom Cubie <tom@radxa.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, u-boot@lists.denx.de,
 Jagan Teki <jagan@amarulasolutions.com>, sunil@amarulasolutions.com,
 linux-amarula@amarulasolutions.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Due to some on board limitation rock960 PCIe
works only with 1.8V IO domain.

So, this patch enables grf io_sel explicitly
to make PCIe/M.2 to work.

rock960 => pci
Scanning PCI devices on bus 0
BusDevFun  VendorId   DeviceId   Device Class       Sub-Class
_____________________________________________________________
00.00.00   0x1d87     0x0100     Bridge device           0x04
rock960 => nvme scan
rock960 => nvme dev

IDE device 0: Vendor: 0x144d Rev: 4L1QCXB7 Prod: S35FNX0J623292
            Type: Hard Disk
            Capacity: 122104.3 MB = 119.2 GB (250069680 x 512)

Cc: Tom Cubie <tom@radxa.com>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 board/vamrs/rock960_rk3399/rock960-rk3399.c | 20 ++++++++++++++++++++
 configs/rock960-rk3399_defconfig            |  5 +++++
 2 files changed, 25 insertions(+)

diff --git a/board/vamrs/rock960_rk3399/rock960-rk3399.c b/board/vamrs/rock960_rk3399/rock960-rk3399.c
index 68a127b9ac..98d62e89ca 100644
--- a/board/vamrs/rock960_rk3399/rock960-rk3399.c
+++ b/board/vamrs/rock960_rk3399/rock960-rk3399.c
@@ -2,3 +2,23 @@
 /*
  * Copyright (C) 2018 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
  */
+
+#include <common.h>
+#include <syscon.h>
+#include <asm/io.h>
+#include <asm/arch-rockchip/clock.h>
+#include <asm/arch-rockchip/grf_rk3399.h>
+#include <asm/arch-rockchip/hardware.h>
+
+#ifdef CONFIG_MISC_INIT_R
+int misc_init_r(void)
+{
+	struct rk3399_grf_regs *grf =
+	    syscon_get_first_range(ROCKCHIP_SYSCON_GRF);
+
+	/* BT565 is in 1.8v domain */
+	rk_setreg(&grf->io_vsel, BIT(0));
+
+	return 0;
+}
+#endif
diff --git a/configs/rock960-rk3399_defconfig b/configs/rock960-rk3399_defconfig
index c4e954731a..cb1ec3c26b 100644
--- a/configs/rock960-rk3399_defconfig
+++ b/configs/rock960-rk3399_defconfig
@@ -9,6 +9,7 @@ CONFIG_DEBUG_UART_BASE=0xFF1A0000
 CONFIG_DEBUG_UART_CLOCK=24000000
 CONFIG_DEBUG_UART=y
 CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-rock960.dtb"
+CONFIG_MISC_INIT_R=y
 CONFIG_DISPLAY_BOARDINFO_LATE=y
 # CONFIG_SPL_RAW_IMAGE_SUPPORT is not set
 CONFIG_SPL_STACK_R=y
@@ -19,6 +20,7 @@ CONFIG_CMD_BOOTZ=y
 CONFIG_CMD_GPT=y
 CONFIG_CMD_MMC=y
 CONFIG_CMD_USB=y
+CONFIG_CMD_PCI=y
 # CONFIG_CMD_SETEXPR is not set
 CONFIG_CMD_TIME=y
 CONFIG_CMD_PMIC=y
@@ -36,10 +38,13 @@ CONFIG_MMC_SDHCI=y
 CONFIG_MMC_SDHCI_SDMA=y
 CONFIG_MMC_SDHCI_ROCKCHIP=y
 CONFIG_DM_ETH=y
+CONFIG_NVME=y
+CONFIG_PCI=y
 CONFIG_PMIC_RK8XX=y
 CONFIG_REGULATOR_PWM=y
 CONFIG_REGULATOR_RK8XX=y
 CONFIG_PWM_ROCKCHIP=y
+CONFIG_DM_RESET=y
 CONFIG_BAUDRATE=1500000
 CONFIG_DEBUG_UART_SHIFT=2
 CONFIG_SYSRESET=y
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

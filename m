Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBEF81CC2ED
	for <lists+linux-rockchip@lfdr.de>; Sat,  9 May 2020 18:57:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=awP9PbBnzAJr1MyqUS3s9acorHIrXgiHkSDR8KoO7c8=; b=nfhOklEER5eDvUKwCFsph0pG7t
	T3F8ZiUrHaHwZbmbWRKbjB6z4fKErh2JLySn2Mum3g+/AQDWP9uwhFpoypmFjs7f+SUGnsNjyvBa5
	6PCOAw2B8zNJIBxxPT/3676hhKTLVHr9ub1Z6vU/q5rPvJHUkdQR6AKjyX0JpwJwKKmlT4Bu0el2Y
	slYiUXuxstagmdahQZbddafqrRXAXZUT8YKI4lvXnQaXS2YGw1VjS8Zo6nH24i92lrOqJfOxsKQU1
	zBAK/onL2T7SWxqPPuZ1Pp3wioghnzc5dYkH2ON5MLtqPiRJGKOqt8j0o7e9Kx0nRWZP5XP0hanYb
	CSO5aH6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXSme-0003CU-Ur; Sat, 09 May 2020 16:57:04 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXSmb-0003AX-Mf
 for linux-rockchip@lists.infradead.org; Sat, 09 May 2020 16:57:02 +0000
Received: by mail-pj1-x1042.google.com with SMTP id k7so691138pjs.5
 for <linux-rockchip@lists.infradead.org>; Sat, 09 May 2020 09:57:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=w1+4+CJrzNg5N4mpMXT03HS2s/9IoOPydovCrS5cuzQ=;
 b=ZqH+XTOL34hX463xpDk5OHvSe3RCRjnXu41Uw7tK8Om4P0XrtYvgXOSpgNgHwpFMXw
 NLWKmRBfBH0QhLb9wO54iDtYTwftPUOVCDtO4Rfw4k32HvrAQFpy2+tbTVWqXnru+Wdt
 SGaYt5H5mmF0Z2gGoj4bFGuUYbgKuEZuBz+14=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=w1+4+CJrzNg5N4mpMXT03HS2s/9IoOPydovCrS5cuzQ=;
 b=ZiwK1Db7yUh1ENQ5rN8Uu7nGFMg51Nv6x3pgh3iSn///BbBnMQ2Jxe7VNEivENNMsj
 CHCnXfrcze7mioETO2eJPQGXupBXiYmH2aLKt6D4u3QWGllsVB/xSWdwswpHBz9ba6Ay
 72kABegtsrQuC/F2Fca7xG2Gcp9lVbv1fKhbqL3R9H+v0wSp/CoA/e0g+N6k7pBI4GBa
 ing9HDjeOjIXfYEfM7pPpMsU7HAjJOl+1ZHyY0yShbUX8svnY+fDwP+S7B/z/hfb4qlK
 bk++YqL8uSlnUD1OzGUuaRU+rGCLnhhWZivlLbV1mKWRT3mmCyNGuAb9dmCE8Hww5ZC3
 kymw==
X-Gm-Message-State: AGi0PuaHskZh3/stTZ2A0KwO4EkGcD56J7Kv2QFd/1WIX2FseGE5GWiF
 pDLTIUbgS8TBHv3MS3TcZJrYlA==
X-Google-Smtp-Source: APiQypKTfyLZRHpX8g86Vo6JtXfDpGbOUAbDlKP/ALzvC/tJKENezdmR8CcOtRfi6GuJd953+8zhoA==
X-Received: by 2002:a17:90b:4d09:: with SMTP id
 mw9mr13052220pjb.55.1589043421225; 
 Sat, 09 May 2020 09:57:01 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:21f6:1c8f:ae94:fb04])
 by smtp.gmail.com with ESMTPSA id x195sm4977098pfc.0.2020.05.09.09.56.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 09 May 2020 09:57:00 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH v3 6/6] rockchip: Enable PCIe/M.2 on rock960 board
Date: Sat,  9 May 2020 22:26:24 +0530
Message-Id: <20200509165624.20791-7-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200509165624.20791-1-jagan@amarulasolutions.com>
References: <20200509165624.20791-1-jagan@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200509_095701_737593_65148EE9 
X-CRM114-Status: GOOD (  10.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1042 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: patrick@blueri.se, u-boot@lists.denx.de, Tom Cubie <tom@radxa.com>,
 shawn.lin@rock-chips.com, linux-rockchip@lists.infradead.org,
 Jagan Teki <jagan@amarulasolutions.com>, sunil@amarulasolutions.com,
 linux-amarula@amarulasolutions.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Due to board limitation some SSD's would work
on rock960 PCIe M.2 only with 1.8V IO domain.

So, this patch enables grf io_sel explicitly to
make PCIe/M.2 to work.

Cc: Tom Cubie <tom@radxa.com>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Acked-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
Changes for v3:
- collect mani a-b
- add comments

 board/vamrs/rock960_rk3399/rock960-rk3399.c | 23 +++++++++++++++++++++
 configs/rock960-rk3399_defconfig            |  5 +++++
 2 files changed, 28 insertions(+)

diff --git a/board/vamrs/rock960_rk3399/rock960-rk3399.c b/board/vamrs/rock960_rk3399/rock960-rk3399.c
index 68a127b9ac..ef1eb2d0b7 100644
--- a/board/vamrs/rock960_rk3399/rock960-rk3399.c
+++ b/board/vamrs/rock960_rk3399/rock960-rk3399.c
@@ -2,3 +2,26 @@
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
+	/**
+	 * Some SSD's to work on rock960 would require explicit
+	 * domain voltage change, so BT565 is in 1.8v domain
+	 */
+	rk_setreg(&grf->io_vsel, BIT(0));
+
+	return 0;
+}
+#endif
diff --git a/configs/rock960-rk3399_defconfig b/configs/rock960-rk3399_defconfig
index 045d989a19..64517f9623 100644
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

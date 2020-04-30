Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3382B1BF0CB
	for <lists+linux-rockchip@lfdr.de>; Thu, 30 Apr 2020 09:05:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=pQ4DiugwJ3GlTpslhJBxgTmssD0p4XBkzWPq9ATkGtI=; b=E9narpi+SePZdOI9SyL/u/OcsL
	H5CW9MiqsjvucYHsjVZpfoajueVguZCHFscgISXpxPjAvkp/p8GkS93oJiNIWPAiHiVKfwVov4lbQ
	50fk3L1ou22oVfNNEk8FcKJW/WWT2GGqagqWEollNEhYEmCrAZWv0WCrUSvi5MC1Yb8ezlF5DG9nP
	FuLDUa/tRKdX1Etir8zqxFjZIXrOYuNmXIzCWybAI9RE979L0LKO4JxVH1EB9bnkhkP5UwhGcQ382
	VEyHYnGpPtDIue9Bj8V+QI0aeAw/chaVZjga5gEa4fHOZpr6Z3azVWZtzt1SF4riqpEhd01v5rzqW
	xjwvkF5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU3Fj-0006VD-Dw; Thu, 30 Apr 2020 07:04:59 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU3Ff-0006So-9Z
 for linux-rockchip@lists.infradead.org; Thu, 30 Apr 2020 07:04:56 +0000
Received: by mail-pf1-x444.google.com with SMTP id r14so2471517pfg.2
 for <linux-rockchip@lists.infradead.org>; Thu, 30 Apr 2020 00:04:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=DwfpjIE8nKMsbRS0x/+1oo0yx+ro2f51EemJbqL5udQ=;
 b=S7DQppqDz0zX0XEkgD3mY4A3GMwPFwSON9Xd4Ziep5uqOTh84dtQl1PmVZD0t6mvom
 FWqQPzAS4XXsRpRKB6HZATWEMiuq5olHUA1cTajiyDOynjfARami3tmqaQmIvic1qJu0
 zMeeUGAzbjiRCLZuljuI0BlTE8sQgW2542zwI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=DwfpjIE8nKMsbRS0x/+1oo0yx+ro2f51EemJbqL5udQ=;
 b=nUSHShTad8jCv8XB8UDfEKZkXhu6Rd4N8zA7DL8rdtdM99l3ZOjr3sx6BaNF+pxQvq
 r4SHB77hmJWuqeI3Y4SLmjrtX3BOHI+1sGAmRmglCkTufnKmd4QazFDCifpiIEtByXsu
 Oj7ZoL+k7DEF+M1MNHK3T0uVbkjWIjocuUKORrFjHZnuagvmDp4779Fkkwtlf073AZcV
 epPW4UsvCvRr29qg+kemHQRG72QjAmKevmPpCJEdj0BBCEBK+prUcZRhSI5ErYtqai9x
 5HKNbmRFUXMzK7muLU4RARPAgZ30Gyzrwh95upZscptANXrpzgRmMZC6C9bP4zlG5qVH
 CP3Q==
X-Gm-Message-State: AGi0PuYQ6oFbMJdKeGROcsBUuxkR93DMJ84N5PzN5M2zaTwcItUcQfGz
 9i41X7PxKmJ8sPP2CGlJLgtqSQ==
X-Google-Smtp-Source: APiQypLrr2XVDSB/1ZKBkCGa9Vky4FSKD/3eUXzPMlFsYgy3L7Q34I3snTn81u/NVRYjqgVISl0KEQ==
X-Received: by 2002:aa7:9d84:: with SMTP id f4mr2089513pfq.290.1588230294757; 
 Thu, 30 Apr 2020 00:04:54 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:6514:3619:d1af:85f6])
 by smtp.gmail.com with ESMTPSA id p64sm964143pjp.7.2020.04.30.00.04.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 Apr 2020 00:04:53 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH v2 8/8] rockchip: Enable PCIe/M.2 on rock960 board
Date: Thu, 30 Apr 2020 12:34:12 +0530
Message-Id: <20200430070412.12499-9-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200430070412.12499-1-jagan@amarulasolutions.com>
References: <20200430070412.12499-1-jagan@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_000455_353011_046A1EFF 
X-CRM114-Status: GOOD (  10.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

Cc: Tom Cubie <tom@radxa.com>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v2:
- none

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

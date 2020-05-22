Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C7631DE093
	for <lists+linux-rockchip@lfdr.de>; Fri, 22 May 2020 09:06:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0jPp1USVPdMfAjWt7AxmX9kq5EdTXE0sWBpNZwLsn/M=; b=b2TAEAaZx9BmZ1
	tAdj1O6BV4vbjcya2GWGqLWlu7KnpW7A0KMgWpqNPzUAxqEq9fheafK20Pz/vKJ14Uom1wIbs0uEw
	QqBvuPA+DT1+AhKp7afJ4f759YZBSpFf+b80KKIo2GalbLjoC2aypRnabQ97s12JyHIs5j4r9nkms
	32Wo3s+aGwcs7UWzoj31eL4zHCwQoO7q5Zoj9GfEmdJylIcLuKOlEeQ/9Bi7KQm2CcANgO/791fEN
	RbirfwPmDpHmoMOB7ag6LQ9SeulEQPmlAJMZB3V+xb0f2+bas8UKzGesPvpBi7lYjLymfAXjwD7tW
	CuSwmB0l8aAmQhP410RA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc1ks-0002t2-9O; Fri, 22 May 2020 07:06:06 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc1km-0002sR-6a
 for linux-rockchip@lists.infradead.org; Fri, 22 May 2020 07:06:04 +0000
Received: by mail-pf1-x444.google.com with SMTP id n15so4830757pfd.0
 for <linux-rockchip@lists.infradead.org>; Fri, 22 May 2020 00:05:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=1tfyOG1Cf8rr9CCnTDhC3pKkIGWPTbMyk7J5y5Xmv1o=;
 b=Vk41kSvv8ZmdQMoKBoXzWJNpHthkBwevz3ydi8qmOptzitLUXo/1xLsGoGkUvP6Lka
 ZXlD0OY4rQn2+VSvlP5yMZQnX8GoROAgwAsW2NC9kaILrk6f8nz9gwemmdlYUFJCDkVe
 GHgNFISY47UOHRqZ3mcYKWlvtJTQbaYKnJjYA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=1tfyOG1Cf8rr9CCnTDhC3pKkIGWPTbMyk7J5y5Xmv1o=;
 b=Klq4Ovn1ACpItw9PfvGZprorpR7ch3qOxeiMvI1wYJJbfeBxBIfC8/JpiQ8C1drDiW
 8Ggmq0c6nO0Z+3d4yEkEHhJMY0/uH6uRKE7TAPx2NAacngGNfscji/gKZFLo1K1d4iJR
 bCBSt2Ndf+NF613ZLnNK9QvHdXqsC0OKiFDuVWTOwGXNi1mjRSw78QY2d2qrSXK/rxEv
 ddHlNlz604JG+L4u40XgL7tzgU2qTYW3tdperumHTSUr0fF2KfqOZydzaxaiMeMCekZu
 6h3W+mIVP3lMe3uv2Brgg5fqn8T1IWu9Tg20pqW6DqA8FhjGzldnZHEBvRb4ALO2oBuN
 Ft/Q==
X-Gm-Message-State: AOAM532DEfI7LtVVf8adTkxup6n7mcVnYj5caLI5gQg5ybxWjHtAi+Gd
 +oWgc6X4fDii6EMuUKGpyIFv7A==
X-Google-Smtp-Source: ABdhPJxvGEG84/YvOQ0VcBVmslWYcte4nfD8RH2c2Fec5FsQpzSBYKKFogcbPtWxMbZe3H+/86uR5Q==
X-Received: by 2002:a62:b618:: with SMTP id j24mr2632288pff.16.1590131159371; 
 Fri, 22 May 2020 00:05:59 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:12d:bc30:d799:3b82])
 by smtp.gmail.com with ESMTPSA id
 n205sm6257504pfd.50.2020.05.22.00.05.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 May 2020 00:05:58 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Shawn Lin <shawn.lin@rock-chips.com>, Patrick Wildt <patrick@blueri.se>
Subject: [PATCH v4 6/6] rockchip: Enable PCIe/M.2 on rock960 board
Date: Fri, 22 May 2020 12:35:41 +0530
Message-Id: <20200522070541.27046-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_000600_239834_A838EA1A 
X-CRM114-Status: UNSURE (   8.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Tom Cubie <tom@radxa.com>, u-boot@lists.denx.de,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Jagan Teki <jagan@amarulasolutions.com>, linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Due to board limitation some SSD's would work
on rock960 PCIe M.2 only with 1.8V IO domain.

So, this patch enables grf io_sel explicitly to
make PCIe/M.2 to work.

Cc: Tom Cubie <tom@radxa.com>
Acked-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v4:
- Add missing header bitops.h

 board/vamrs/rock960_rk3399/rock960-rk3399.c | 24 +++++++++++++++++++++
 configs/rock960-rk3399_defconfig            |  5 +++++
 2 files changed, 29 insertions(+)

diff --git a/board/vamrs/rock960_rk3399/rock960-rk3399.c b/board/vamrs/rock960_rk3399/rock960-rk3399.c
index 68a127b9ac..a7fc38d42f 100644
--- a/board/vamrs/rock960_rk3399/rock960-rk3399.c
+++ b/board/vamrs/rock960_rk3399/rock960-rk3399.c
@@ -2,3 +2,27 @@
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
+#include <linux/bitops.h>
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
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

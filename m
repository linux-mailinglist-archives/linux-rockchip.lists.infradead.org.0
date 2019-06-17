Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36AB047B4A
	for <lists+linux-rockchip@lfdr.de>; Mon, 17 Jun 2019 09:39:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j+odiVhCf3BefjuJk3T+4rY9w87yMhSRPpU8VEKaeU0=; b=BGYdbvktt1Qwae
	aGiw1D700qG4yCU+WosXQ42NtMBjso0tz6YXguWS9Bs0RepHy+oqq+smUUV6VmG6L44lj59LzO5sw
	7MI5xTmg2smeoT+7SA93HxrfuSK1LnFgsgWaETpas/9MR67tOgGnrm/Q3ycpPB4UX7KShSRoNJjrb
	PDhVO5k2d0ELiBh/UUC/LcvkwiXiU+eHghsQoJmq2tV5UGEa4O26hOzUumdg5KCDUDQPkjKWujSSJ
	5UmidXamM/ynuXRMON5BdjfHlCVJ8EEbWFWzNbSiLaWcq3EwpClJYozuBPI/p3UbR4HQR9AhWx4gL
	wsUTENq4iJ3TpAgruTmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcmEH-0007RB-QG; Mon, 17 Jun 2019 07:39:02 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcmE8-0007BL-34
 for linux-rockchip@lists.infradead.org; Mon, 17 Jun 2019 07:38:54 +0000
Received: by mail-pg1-x544.google.com with SMTP id 196so5312115pgc.6
 for <linux-rockchip@lists.infradead.org>; Mon, 17 Jun 2019 00:38:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=jRvNUQciWx/J7/TaVO7vWC94juvCrT8NQKcs05MRHVE=;
 b=CFzp/s0ZKPQaPciXzzOHLGdZiPutAyJhj2NfR9IpphH6v6t77IO/eren1qVfxOPRMX
 A2B8qAANS43Bz38dAWxfmDBoKZxgWdrTpNWbhjrj6RDU7Ky6WQKzhSbE9RmDn1mCZZ+o
 HgP8yMPpaEBomg1EoXTGyJIzpssnn7ZTkHjSM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=jRvNUQciWx/J7/TaVO7vWC94juvCrT8NQKcs05MRHVE=;
 b=F+ecEamhrwf66tMr2z1m7EB0kaVVHA6Ems9/36SpItTvQzx0pka5MQn73xyEdemJOi
 zGbzimMZivEpM7QGypbrNaO7LugHgC1AqvRxnQOhiolMMXFfYUMDBKCpvTQkDGIlYg2C
 HKePm/drCiivljszA5UQJfYDW5eGMUIVPtQKfMpcXzhzkTYitC0hzP9LPwC2BT0NDf28
 3d+vNW2+ur/SZS0WU65azY8OTOLZ4sG6wu4KQYkG5MeWins2tvJvk8tVZXVyAcvF+yGb
 mEST8RcftoO80Lq9PkGDAGdYK4OIZYCvP2sTShIHexZOjnVgvF5eroD4wndtPNQvunbZ
 jfJg==
X-Gm-Message-State: APjAAAVbFd6MOyl9GYzx04V8LqFGOW5qBhUMoBAkz49TvMN6W6zzWZlG
 B+ub1lFy+7nuMRuLZv4pK/shLA==
X-Google-Smtp-Source: APXvYqyelNk6QpFU9LEjsya5RiyVF+Vy7AtrRwPMf1T+eqMZLNBwJGGclGtKJczgsC7DyIUygVDDlQ==
X-Received: by 2002:a62:ac1a:: with SMTP id v26mr91317067pfe.184.1560757131365; 
 Mon, 17 Jun 2019 00:38:51 -0700 (PDT)
Received: from localhost.localdomain ([49.206.203.245])
 by smtp.gmail.com with ESMTPSA id m41sm15205998pje.18.2019.06.17.00.38.48
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 00:38:50 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v2 45/99] ram: rockchip: Add debug sdram driver
Date: Mon, 17 Jun 2019 13:01:58 +0530
Message-Id: <20190617073252.27810-46-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190617073252.27810-1-jagan@amarulasolutions.com>
References: <20190617073252.27810-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_003852_253020_76ABD09E 
X-CRM114-Status: GOOD (  14.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-rockchip@lists.infradead.org, gajjar04akash@gmail.com,
 linux-amarula@amarulasolutions.com, Jagan Teki <jagan@amarulasolutions.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Add sdram driver to handle debug across rockchip SoCs.

This would help to improve code debugging feature for
sdram drivers in rockchip family, whoever wants to
debug the driver should call these core debug code on
their respective platform sdram drivers.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 .../include/asm/arch-rockchip/sdram_common.h  |  9 +++++
 drivers/ram/rockchip/Kconfig                  |  9 +++++
 drivers/ram/rockchip/Makefile                 |  1 +
 drivers/ram/rockchip/sdram_debug.c            | 34 +++++++++++++++++++
 4 files changed, 53 insertions(+)
 create mode 100644 drivers/ram/rockchip/sdram_debug.c

diff --git a/arch/arm/include/asm/arch-rockchip/sdram_common.h b/arch/arm/include/asm/arch-rockchip/sdram_common.h
index c290fd89c9..0cb737d665 100644
--- a/arch/arm/include/asm/arch-rockchip/sdram_common.h
+++ b/arch/arm/include/asm/arch-rockchip/sdram_common.h
@@ -123,4 +123,13 @@ size_t rockchip_sdram_size(phys_addr_t reg);
 
 /* Called by U-Boot board_init_r for Rockchip SoCs */
 int dram_init(void);
+
+#if !defined(CONFIG_RAM_ROCKCHIP_DEBUG)
+inline void sdram_print_dram_type(unsigned char dramtype)
+{
+}
+#else
+void sdram_print_dram_type(unsigned char dramtype);
+#endif /* CONFIG_RAM_ROCKCHIP_DEBUG */
+
 #endif
diff --git a/drivers/ram/rockchip/Kconfig b/drivers/ram/rockchip/Kconfig
index 995cb487b8..151ffb684d 100644
--- a/drivers/ram/rockchip/Kconfig
+++ b/drivers/ram/rockchip/Kconfig
@@ -7,6 +7,15 @@ config RAM_ROCKCHIP
 
 if RAM_ROCKCHIP
 
+config RAM_ROCKCHIP_DEBUG
+	bool "Rockchip ram drivers debugging"
+	help
+	  This enables debugging ram driver API's for the platforms
+	  based on Rockchip SoCs.
+
+	  This is an option for developers to understand the ram drivers
+	  initialization, configurations and etc.
+
 config RAM_RK3399
 	bool "Ram driver for Rockchip RK3399"
 	default ROCKCHIP_RK3399
diff --git a/drivers/ram/rockchip/Makefile b/drivers/ram/rockchip/Makefile
index 07d4b62a9d..feb1f82d00 100644
--- a/drivers/ram/rockchip/Makefile
+++ b/drivers/ram/rockchip/Makefile
@@ -3,6 +3,7 @@
 # Copyright (c) 2017 Theobroma Systems Design und Consulting GmbH
 #
 
+obj-$(CONFIG_RAM_ROCKCHIP_DEBUG) += sdram_debug.o
 obj-$(CONFIG_ROCKCHIP_RK3368) = dmc-rk3368.o
 obj-$(CONFIG_ROCKCHIP_RK3128) = sdram_rk3128.o
 obj-$(CONFIG_ROCKCHIP_RK3188) = sdram_rk3188.o
diff --git a/drivers/ram/rockchip/sdram_debug.c b/drivers/ram/rockchip/sdram_debug.c
new file mode 100644
index 0000000000..c13e140fa5
--- /dev/null
+++ b/drivers/ram/rockchip/sdram_debug.c
@@ -0,0 +1,34 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * (C) Copyright 2019 Rockchip Electronics Co., Ltd
+ * (C) Copyright 2019 Amarula Solutions.
+ * Author: Jagan Teki <jagan@amarulasolutions.com>
+ */
+
+#include <common.h>
+#include <debug_uart.h>
+#include <asm/arch-rockchip/sdram_common.h>
+
+void sdram_print_dram_type(unsigned char dramtype)
+{
+	switch (dramtype) {
+	case DDR3:
+		printascii("DDR3");
+		break;
+	case DDR4:
+		printascii("DDR4");
+		break;
+	case LPDDR2:
+		printascii("LPDDR2");
+		break;
+	case LPDDR3:
+		printascii("LPDDR3");
+		break;
+	case LPDDR4:
+		printascii("LPDDR4");
+		break;
+	default:
+		printascii("Unknown Device");
+		break;
+	}
+}
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25B533CFA4
	for <lists+linux-rockchip@lfdr.de>; Tue, 11 Jun 2019 16:54:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B4+0xpqd4TyHe5r3JtnL4e0Ec3X6RHcWYH7JkJUoM7c=; b=tO5fDkWmReHbaO
	ZFs3Hpwa296gP7eNYxaITtR3bNeaP/NKq32LDZF4J9EVBLXe2kIUqDod9I0qr7hOxEDrJ8ANeOiAm
	RxyBeQ5isAyo1umYi6Vdh6OZTR7+RxBD63GMLhugEnXjJDKjey7FXTHlG9KpxlP0kUiZTvkoVc2Qh
	M94gV6lnIKhf+KWZ2ANK9NYdBXsWL4cHrs2whbZp2u3kIq32JwD/UgtqAJJxjtn3tAJTbExz16VMg
	jUCTU2GnUq25YmPmlP3SyhY1x/HWXHCQSxHMPSD1gIk7mg9FwSwNAhuGM7K6WQ+vC41kIkRwU/cx+
	cxL/jsh25OL+G8JL0xHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haiAn-0005iz-9D; Tue, 11 Jun 2019 14:54:53 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haiAi-0005fj-0b
 for linux-rockchip@lists.infradead.org; Tue, 11 Jun 2019 14:54:49 +0000
Received: by mail-pg1-x544.google.com with SMTP id d30so7109385pgm.7
 for <linux-rockchip@lists.infradead.org>; Tue, 11 Jun 2019 07:54:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=XhdCNTKPTz7BvpFyl8lpuUkh8SvoRcCSv/2PVP+pBIM=;
 b=Kf5GydXhSHZfk8YLyHWfCNqZTAvjjb58L7MF214AGcuoOuitCoDUpc2GuGxVHiJ+PW
 x5zWwb2gbhYAV5n7nUVye+DjBShgedYDaolBg24lQXvf+0TUPki0evawJNDpb4QHwyOp
 TQyN3N/nJE6EkuCI5ishqLJrXMd+O9HCrT5/Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=XhdCNTKPTz7BvpFyl8lpuUkh8SvoRcCSv/2PVP+pBIM=;
 b=Xs6EjustaOr+Ct9m3ELTLmApOpPnH3DZqg16g9n0T0z5tBA6UEjBK/LJCLCg37cuoU
 QqSbyA1iBPutM1nynUiJghAlmFl+ys+saJt1uCfx/Kni4ep5obMNvzZyqSAYUQY0Sjxk
 P/F9UAxbCz4zfJ/pVjHpSS9QywRUKvhhOMiyOPwDsUcjKOmLv9d4U9JZXmg/PyYlyztY
 z9+I8byUSwlT4D6rZNJsidoec2RiidwqaOrQTNGK0YDNB8wdFb7fVWXss8JihOxnApj+
 dp0f0HTfoHnvQNzNAb09oPtFoyE9EpyMFmZu5CyNXoXHn5YqdtkG3pepAVsugq7Mtuk+
 WU7Q==
X-Gm-Message-State: APjAAAVPOt02laW3JIpLxljB6InBBPJBzWAxXRSia5OOfARKg80N4y2q
 0sFsWAhMPZi1Tid6qe5RSLn2fA==
X-Google-Smtp-Source: APXvYqzUhXZ5xfXZMCkz7HBmdq0s9InexF7//Aw1Jea6brLReRs4f3fOxNaZnVdjriFbUEsz37K4/Q==
X-Received: by 2002:a65:60cd:: with SMTP id r13mr20771234pgv.58.1560264887387; 
 Tue, 11 Jun 2019 07:54:47 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.18])
 by smtp.gmail.com with ESMTPSA id e9sm16206208pfn.154.2019.06.11.07.54.43
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Jun 2019 07:54:46 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH 44/92] ram: rockchip: Add debug sdram driver
Date: Tue, 11 Jun 2019 20:20:47 +0530
Message-Id: <20190611145135.21399-45-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190611145135.21399-1-jagan@amarulasolutions.com>
References: <20190611145135.21399-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_075448_057991_3A323C00 
X-CRM114-Status: GOOD (  13.64  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com,
 Jagan Teki <jagan@amarulasolutions.com>, gajjar04akash@gmail.com
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
index d723e6dacc..ebf4148b4d 100644
--- a/arch/arm/include/asm/arch-rockchip/sdram_common.h
+++ b/arch/arm/include/asm/arch-rockchip/sdram_common.h
@@ -122,4 +122,13 @@ size_t rockchip_sdram_size(phys_addr_t reg);
 
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

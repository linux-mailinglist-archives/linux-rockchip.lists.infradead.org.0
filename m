Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE0F769AD9
	for <lists+linux-rockchip@lfdr.de>; Mon, 15 Jul 2019 20:29:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m7Bl56U5wHjOI6lJEY0P2hubuaxaMGClo/7dDooNHlw=; b=YNyt2tUAqBqGfM
	wskWs2gRAPIjUizsTtGyX9Mg4Z1xJlNbaTmhFxukQN9skBe7fimb7Tj/2yKfi5iG1Z/BAOon0gIH+
	gtMQgbdSuJ6MFpleF6d36pTqA5lU5YjM58+EskC46F09a5Mq/daqUgLnbK7YvRGgcbBNyeLV+AHXV
	nAhPugEe45aEa3c65ZlVwEzoBdY35/PpJUqRjesmC9Qj1chv6PoazitYn21308+k679IhdQYNcmzP
	Fd8I4T06sVxKn/2SBvJYIvlDNbYspQe/lTnzVQSn1PXvAHtnmdvXUJaOa1GzIlFlgjdkOMOlxtN0v
	BkCroZ2XSwY2EqkV6Tpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn5jS-0001AS-T7; Mon, 15 Jul 2019 18:29:51 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn5jM-00016K-Ii
 for linux-rockchip@lists.infradead.org; Mon, 15 Jul 2019 18:29:46 +0000
Received: by mail-pf1-x441.google.com with SMTP id m30so7813361pff.8
 for <linux-rockchip@lists.infradead.org>; Mon, 15 Jul 2019 11:29:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=vaHztGW3hwCuSUcDRVrDyfWmbZxTrQqSnJP6VTuJxYA=;
 b=J2nMrr7GPAsyzK8AyAfZbPMH1gv499SWrM+aFfASRgCHmpFlAqvxqQXuhh0K6dQh6P
 /mNi2hiT6E7kpxxhq+c+7+t8fRkPd4papFRi+ganNlOWDPHyu2HBW+7hXxPTE+f5opOw
 IbcUx8KVyY1wFbLIWSag90Vk05euyKu6m4cNk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=vaHztGW3hwCuSUcDRVrDyfWmbZxTrQqSnJP6VTuJxYA=;
 b=hyAi0lkCSCapZAPzZInF22RUeYJay4Sr9YYDoTLxYpt9X+Z1gUrlrFwf2RcVecv6Mk
 RpQnivA9K3IGHe3eur+qtPM/r6+0vSZuknBsthNmylwjQqpDIoPFd0P1BnMbT5+/XVyf
 tStsnAaMXzNi7EwzdkR/+m78NfEnnLvGTPrVGhFAek2ogkfds16YCZTmasPuBLGvCUsS
 cCG1sTqTM9RFoXbO5EyG5OVD39am46T8HYzPMMUbMVIAJVkSSUAfpKbFIIPt3qoZOFUV
 GRkYSjCBli9d6Oqd6F0weV/n+G0QXeT26kd6nvs3HuZg+ed6JF3zjDEwEQLdjDlHMDnj
 Vr4g==
X-Gm-Message-State: APjAAAV1ZD520EmU21bIBxb/DGFzmHc774tS6ZLcaQFat4A7C/f7LtjI
 K7zdK4Mco6CsVk8KTWaGBSei7g==
X-Google-Smtp-Source: APXvYqyqOQtF9slL0TfWtKFa1A776o+9glHpp5VN/xk/tbrQY5tmfyPrwJcVg8WCaHjah2SVXtNK2A==
X-Received: by 2002:a17:90a:7148:: with SMTP id
 g8mr31135109pjs.51.1563215383427; 
 Mon, 15 Jul 2019 11:29:43 -0700 (PDT)
Received: from localhost.localdomain ([49.206.201.107])
 by smtp.gmail.com with ESMTPSA id y133sm20250075pfb.28.2019.07.15.11.29.40
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 15 Jul 2019 11:29:43 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v3 10/18] ram: rockchip: Add debug sdram driver
Date: Mon, 15 Jul 2019 23:58:48 +0530
Message-Id: <20190715182856.21688-11-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190715182856.21688-1-jagan@amarulasolutions.com>
References: <20190715182856.21688-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_112944_756617_10AD53DE 
X-CRM114-Status: GOOD (  14.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
index 7ac25af327..171b233f95 100644
--- a/arch/arm/include/asm/arch-rockchip/sdram_common.h
+++ b/arch/arm/include/asm/arch-rockchip/sdram_common.h
@@ -92,4 +92,13 @@ size_t rockchip_sdram_size(phys_addr_t reg);
 
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

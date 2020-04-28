Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95B001BBA89
	for <lists+linux-rockchip@lfdr.de>; Tue, 28 Apr 2020 12:01:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=bbThKILr3iLs4etizFqB87BzuORUHkaKsa4ghzLB3E4=; b=WR4bN/OZxyLJEC9H2+h0EBk+Hl
	nsI+51bose+a+CL/3/jDaPzNTKQ4X9hmmcqkZiftJnmqOMr+mlEvE24CgpZNXTeiT3vUY/TK6kMUD
	AClmX4utgcmo9+GeWNZNgEFtloWp/eDTFIUp+876pWnXdLIK9Y/NfPPFGTFLXT4GlwyV4JnLpKEWp
	c6k752PBgGRcGccolJ5XNwKQYHWhpb5SNP9Iw6A4sS/RBTV2Sof+VDOG356ME/8U6FJmXuseNAnPK
	DtqDvBDqQDf/RxyW7kKuumSqmRxqUCo6OGPpFT5k3xFefI5MYPQySUrqm37q0syGjyvkElBUn0RR2
	+SbSeVgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTN2y-0006Rb-Gc; Tue, 28 Apr 2020 10:01:00 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTN2s-0006Oe-BJ
 for linux-rockchip@lists.infradead.org; Tue, 28 Apr 2020 10:00:55 +0000
Received: by mail-pg1-x544.google.com with SMTP id n11so1970037pgl.9
 for <linux-rockchip@lists.infradead.org>; Tue, 28 Apr 2020 03:00:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=LmEATzXo84nsgbWcnoVrVjm3PW9lqScSfgwFAmOpw4g=;
 b=oeLCXjtITb5aNU2sNc9LaUPQ0z2dz8kSy/ZgDNijFJWOhZPmixFq42tymkyvr+N+UJ
 mK0TA29SH4H/AxCxsmtskmlmMW3W3xCVFs/9nw5m6Iberx+bu2jdffAlLQFaCqw8+Q/N
 40vX7f2htc2SqSnXJ3DsFF3Bzrs7VSukn57yg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=LmEATzXo84nsgbWcnoVrVjm3PW9lqScSfgwFAmOpw4g=;
 b=qmmkJ8dlekp6PkULgFr76VzsfMnDv7lMBNFxhzuAH/iofppR5MEAqRc4NpBQkomg/a
 0OYJbKh7dIVAIojaXK9CtBAdoj/go9cYKTGWk9byYlnFTTM4CR+0s534tjBiDUv/7BKN
 oEUKkRgZE1Jgpop+dvyDnFanzDZ4m53awv/9OyyL0lRY2unfCEO7rhyZFyMT+tUGIjvr
 kEIu+KuzuVDHqH+bM7DK9AZn8zXIjGEOPzM8YZ4k2K3SUM9vuxO7Ki1IlGQTJkz1jB2n
 TQAGNbOstzcdXSA1AcpOZOvIX+qEIimjSYZzbPp4hf6jd9eOeqaY8b176XDFrBMUJbxj
 Y3YA==
X-Gm-Message-State: AGi0PubcvV/tYL7L5twObzN7tYcZh/TZ5PyZw9OcWsEjUtqKHK8IW44z
 0LszW8Sv367fY7jPUAAP6PnWYw==
X-Google-Smtp-Source: APiQypKXu4naF6EZ0qV89Z0X7gXEA5goyba7Cj1iMrZaQ4eysBPP3v25zuo5sHW1A8ohyzmrSIm3QA==
X-Received: by 2002:a65:5509:: with SMTP id f9mr27989733pgr.70.1588068053571; 
 Tue, 28 Apr 2020 03:00:53 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:f9c1:1c6a:49dc:267d])
 by smtp.gmail.com with ESMTPSA id j32sm12676379pgb.55.2020.04.28.03.00.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Apr 2020 03:00:52 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH v2 6/6] rk3399: Add ROC-RK3399-PC Mezzanine board
Date: Tue, 28 Apr 2020 15:30:19 +0530
Message-Id: <20200428100019.19155-7-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200428100019.19155-1-jagan@amarulasolutions.com>
References: <20200428100019.19155-1-jagan@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_030054_428630_8270A5E3 
X-CRM114-Status: GOOD (  11.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: u-boot@lists.denx.de, linux-rockchip@lists.infradead.org,
 linux-amarula@amarulasolutions.com, Jagan Teki <jagan@amarulasolutions.com>,
 sunil@amarulasolutions.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

From: Suniel Mahesh <sunil@amarulasolutions.com>

Add Firefly ROC-RK3399-PC Mezzanine board which is an
extension board on top of roc-rk3399-pc.

Will drop the separate defconfig file, once we support
the board detection at runtime.

Signed-off-by: Suniel Mahesh <sunil@amarulasolutions.com>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v2:
- include rk3399-roc-pc-u-boot.dtsi

 .../dts/rk3399-roc-pc-mezzanine-u-boot.dtsi   |  6 ++
 board/firefly/roc-pc-rk3399/MAINTAINERS       |  2 +
 configs/roc-pc-mezzanine-rk3399_defconfig     | 67 +++++++++++++++++++
 3 files changed, 75 insertions(+)
 create mode 100644 arch/arm/dts/rk3399-roc-pc-mezzanine-u-boot.dtsi
 create mode 100644 configs/roc-pc-mezzanine-rk3399_defconfig

diff --git a/arch/arm/dts/rk3399-roc-pc-mezzanine-u-boot.dtsi b/arch/arm/dts/rk3399-roc-pc-mezzanine-u-boot.dtsi
new file mode 100644
index 0000000000..f50c18dd3d
--- /dev/null
+++ b/arch/arm/dts/rk3399-roc-pc-mezzanine-u-boot.dtsi
@@ -0,0 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright (c) 2020 Amarula Solutions(India)
+ */
+
+#include "rk3399-roc-pc-u-boot.dtsi"
diff --git a/board/firefly/roc-pc-rk3399/MAINTAINERS b/board/firefly/roc-pc-rk3399/MAINTAINERS
index 7564dd252d..68a5b757d1 100644
--- a/board/firefly/roc-pc-rk3399/MAINTAINERS
+++ b/board/firefly/roc-pc-rk3399/MAINTAINERS
@@ -1,6 +1,8 @@
 ROC-RK3399-PC
 M:	Levin Du <djw@t-chip.com.cn>
+M:	Suniel Mahesh <sunil@amarulasolutions.com>
 S:	Maintained
 F:	board/firefly/roc-pc-rk3399
 F:	include/configs/roc-pc-rk3399.h
 F:	configs/roc-pc-rk3399_defconfig
+F:	configs/roc-pc-mezzanine-rk3399_defconfig
diff --git a/configs/roc-pc-mezzanine-rk3399_defconfig b/configs/roc-pc-mezzanine-rk3399_defconfig
new file mode 100644
index 0000000000..5a694edc03
--- /dev/null
+++ b/configs/roc-pc-mezzanine-rk3399_defconfig
@@ -0,0 +1,67 @@
+CONFIG_ARM=y
+CONFIG_ARCH_ROCKCHIP=y
+CONFIG_SYS_TEXT_BASE=0x00200000
+CONFIG_ENV_OFFSET=0x3F8000
+CONFIG_ROCKCHIP_RK3399=y
+CONFIG_TARGET_ROC_PC_RK3399=y
+CONFIG_NR_DRAM_BANKS=1
+CONFIG_DEBUG_UART_BASE=0xFF1A0000
+CONFIG_DEBUG_UART_CLOCK=24000000
+CONFIG_DEBUG_UART=y
+CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-roc-pc-mezzanine.dtb"
+CONFIG_DISPLAY_BOARDINFO_LATE=y
+# CONFIG_SPL_RAW_IMAGE_SUPPORT is not set
+CONFIG_SPL_STACK_R=y
+CONFIG_SPL_STACK_R_MALLOC_SIMPLE_LEN=0x10000
+CONFIG_TPL=y
+CONFIG_TPL_GPIO_SUPPORT=y
+CONFIG_CMD_BOOTZ=y
+CONFIG_CMD_GPT=y
+CONFIG_CMD_MMC=y
+CONFIG_CMD_USB=y
+# CONFIG_CMD_SETEXPR is not set
+CONFIG_CMD_TIME=y
+CONFIG_SPL_OF_CONTROL=y
+CONFIG_DEFAULT_DEVICE_TREE="rk3399-roc-pc-mezzanine"
+CONFIG_OF_SPL_REMOVE_PROPS="pinctrl-0 pinctrl-names clock-names interrupt-parent assigned-clocks assigned-clock-rates assigned-clock-parents"
+CONFIG_ENV_IS_IN_MMC=y
+CONFIG_SYS_RELOC_GD_ENV_ADDR=y
+CONFIG_ROCKCHIP_GPIO=y
+CONFIG_SYS_I2C_ROCKCHIP=y
+CONFIG_MMC_DW=y
+CONFIG_MMC_DW_ROCKCHIP=y
+CONFIG_MMC_SDHCI=y
+CONFIG_MMC_SDHCI_ROCKCHIP=y
+CONFIG_SPI_FLASH_WINBOND=y
+CONFIG_DM_ETH=y
+CONFIG_ETH_DESIGNWARE=y
+CONFIG_GMAC_ROCKCHIP=y
+CONFIG_PMIC_RK8XX=y
+CONFIG_REGULATOR_PWM=y
+CONFIG_REGULATOR_RK8XX=y
+CONFIG_PWM_ROCKCHIP=y
+CONFIG_RAM_RK3399_LPDDR4=y
+CONFIG_BAUDRATE=1500000
+CONFIG_DEBUG_UART_SHIFT=2
+CONFIG_ROCKCHIP_SPI=y
+CONFIG_SYSRESET=y
+CONFIG_USB=y
+CONFIG_USB_XHCI_HCD=y
+CONFIG_USB_XHCI_DWC3=y
+CONFIG_USB_EHCI_HCD=y
+CONFIG_USB_EHCI_GENERIC=y
+CONFIG_USB_HOST_ETHER=y
+CONFIG_USB_ETHER_ASIX=y
+CONFIG_USB_ETHER_ASIX88179=y
+CONFIG_USB_ETHER_MCS7830=y
+CONFIG_USB_ETHER_RTL8152=y
+CONFIG_USB_ETHER_SMSC95XX=y
+CONFIG_USB_KEYBOARD=y
+CONFIG_SPL_TINY_MEMSET=y
+CONFIG_ERRNO_STR=y
+CONFIG_DM_VIDEO=y
+CONFIG_VIDEO_BPP16=y
+CONFIG_VIDEO_BPP32=y
+CONFIG_DISPLAY=y
+CONFIG_VIDEO_ROCKCHIP=y
+CONFIG_DISPLAY_ROCKCHIP_HDMI=y
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

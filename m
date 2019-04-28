Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33922B5BF
	for <lists+linux-rockchip@lfdr.de>; Sun, 28 Apr 2019 11:09:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JZNg+NKLVV7F/6LbJ8vbzyjzUsD2Vj193L/DssHubxo=; b=LQB/U+ot2e2Wo4
	f0ocWMKgM4hdeCi7fyBAXDGuVUHmghij92EY6MYaiLfZYG0Vz+KBdHxr1XYbFIs5+OqFjfrtZfs94
	GJH1VhihP31tUHOtTE2TxmyxlskrHORqNMVVb7VVYBRmPzEPvkRfzLz0UDaZwfJJ3z/jmz0HztWKz
	Du0cC6jxoGEBFvBF4O4Zos83zxzS30SW0CvDlsgGlmM7r3ajqeKVS1TwHfS4/118sp+ekA4Pua1pn
	/0/yCt6MYmtVFk93TOC6RKKmJHplQg81M7RaMxJ+bSgrCSlXIKuUkunKF1CfTuTEKtS1hfN0gSQqY
	Ed6IjrnIlWuKM9MZfr8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKfoo-0000zm-A0; Sun, 28 Apr 2019 09:09:54 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKfok-0000yc-KO
 for linux-rockchip@lists.infradead.org; Sun, 28 Apr 2019 09:09:52 +0000
Received: by mail-pg1-x543.google.com with SMTP id l18so3707183pgj.6
 for <linux-rockchip@lists.infradead.org>; Sun, 28 Apr 2019 02:09:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=li9nH1roxv2V7T2EQJmhqDJtQbBwjK8kdiN9IGNeDmA=;
 b=HMDKtnBuyPZ2W4R2e7C2nZuzxozVxukiYZTGBSNxsKEQF24c/+1vzJZN3j7lPhTKHR
 abPuWLEvMt1UwZFtR0IyN5ZEZd2MTI5I0d/5wfijc1GwT2YxeV6i8aix1B8hypXrGZdM
 P3jPx1D/MYQwCeGH2sFdIkLi8HBK1xsmU3hL0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=li9nH1roxv2V7T2EQJmhqDJtQbBwjK8kdiN9IGNeDmA=;
 b=TXeKJPmSCogr2ThLF7HMO1SjzSVUrFJhS/Eg4R0RNU6yxEegQyk5UZWmMcb2GBVVKF
 MYsFU/T2BAXMz3DOSR47jh9ythzWc9cm4tF9G45W80fi4ve/ZWKlFkCX67pydWrgnNWm
 4J103m8nuhdPlTZZkkL0CD5Qju2WEUPojXuMUyZQcqHBadv/H01cFOqOvuxNJCgy7KES
 ETfqUkgyEkbINN8aa5ACPG3oxkmy1xhZcC5BQOZZV1K+PMOmmKvdRREheEo3/GbGQyxz
 gGvNikbkFGNJLdkxNH/bgMrcfnpClEAW6A3gi9vUlUZ3nErOsjjFRMuhKzGi8aVxGr3R
 zeig==
X-Gm-Message-State: APjAAAXwM+pLuoJYaWheqMy+hlqeM9RbQ7P4bxqprn1lIBjCbuzzPxpJ
 Kajx5eBQzgXOPCzVMqb8m1NtVw==
X-Google-Smtp-Source: APXvYqySz9T2qrUNB8bPEV7japR/JlCrUPV2OiQr/BUzEjxh2WHv+NBatq4yQig7kLWg6MeVYqmYDQ==
X-Received: by 2002:a62:5542:: with SMTP id j63mr3253747pfb.34.1556442589829; 
 Sun, 28 Apr 2019 02:09:49 -0700 (PDT)
Received: from localhost.localdomain ([115.97.185.144])
 by smtp.gmail.com with ESMTPSA id k7sm3040338pfk.93.2019.04.28.02.09.45
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 28 Apr 2019 02:09:48 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, Akash Gajjar <akash@openedev.com>,
 Tom Rini <trini@konsulko.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v2 5/9] board: puma: Get bl31.bin via BL31 and rk3399m0.bin
 via PMUM0
Date: Sun, 28 Apr 2019 14:39:09 +0530
Message-Id: <20190428090913.10568-6-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190428090913.10568-1-jagan@amarulasolutions.com>
References: <20190428090913.10568-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_020950_669921_E3CF15EB 
X-CRM114-Status: GOOD (  12.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.21
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
Cc: Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com,
 Jagan Teki <jagan@amarulasolutions.com>, u-boot@lists.denx.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Right now puma rk3399 board need to copy bl31-rk3399.bin and
rk3399m0.bin into u-boot source directory to make use of building
u-boot.itb.

So, add environment variable
- BL31 for bl31.bin (instead of bl31-rk3399.bin to compatible with other
  platform BL31 env)
- PMUM0 for rk3399m0.bin

If the builds are not exporting BL31, PMUM0 env, the fit_spl_atf.sh will
notify with warning about which document to refer for more information
like this:

 WARNING: BL31 file bl31.bin NOT found, resulting binary is non-functional
 Please read Building section in doc/README.rockchip
 WARNING: PMUM0 file rk3399m0.bin NOT found, resulting binary is non-functional
 Please read Building section in doc/README.rockchip

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 .../{fit_spl_atf.its => fit_spl_atf.sh}       | 46 ++++++++++++++++---
 configs/puma-rk3399_defconfig                 |  2 +-
 doc/README.rockchip                           |  8 ++--
 3 files changed, 45 insertions(+), 11 deletions(-)
 rename board/theobroma-systems/puma_rk3399/{fit_spl_atf.its => fit_spl_atf.sh} (50%)
 mode change 100644 => 100755

diff --git a/board/theobroma-systems/puma_rk3399/fit_spl_atf.its b/board/theobroma-systems/puma_rk3399/fit_spl_atf.sh
old mode 100644
new mode 100755
similarity index 50%
rename from board/theobroma-systems/puma_rk3399/fit_spl_atf.its
rename to board/theobroma-systems/puma_rk3399/fit_spl_atf.sh
index 530f059f3d..517fad40a1
--- a/board/theobroma-systems/puma_rk3399/fit_spl_atf.its
+++ b/board/theobroma-systems/puma_rk3399/fit_spl_atf.sh
@@ -1,3 +1,31 @@
+#!/bin/sh
+#
+# Copyright (C) 2019 Jagan Teki <jagan@amarulasolutions.com>
+#
+# Based on the board/sunxi/mksunxi_fit_atf.sh
+#
+# Script to generate FIT image source for 64-bit puma boards with
+# U-Boot proper, ATF, PMU firmware and devicetree.
+#
+# usage: $0 <dt_name> [<dt_name> [<dt_name] ...]
+
+[ -z "$BL31" ] && BL31="bl31.bin"
+
+if [ ! -f $BL31 ]; then
+	echo "WARNING: BL31 file $BL31 NOT found, resulting binary is non-functional" >&2
+	echo "Please read Building section in doc/README.rockchip" >&2
+	BL31=/dev/null
+fi
+
+[ -z "$PMUM0" ] && PMUM0="rk3399m0.bin"
+
+if [ ! -f $PMUM0 ]; then
+	echo "WARNING: PMUM0 file $PMUM0 NOT found, resulting binary is non-functional" >&2
+	echo "Please read Building section in doc/README.rockchip" >&2
+	PMUM0=/dev/null
+fi
+
+cat << __HEADER_EOF
 /* SPDX-License-Identifier: GPL-2.0+ OR X11 */
 /*
  * Copyright (C) 2017 Theobroma Systems Design und Consulting GmbH
@@ -14,16 +42,15 @@
 	images {
 		uboot {
 			description = "U-Boot (64-bit)";
-			data = /incbin/("../../../u-boot-nodtb.bin");
+			data = /incbin/("u-boot-nodtb.bin");
 			type = "standalone";
-			os = "U-Boot";
 			arch = "arm64";
 			compression = "none";
-			load = <0x00200000>;
+			load = <0x4a000000>;
 		};
 		atf {
 			description = "ARM Trusted Firmware";
-			data = /incbin/("../../../bl31-rk3399.bin");
+			data = /incbin/("$BL31");
 			type = "firmware";
 			arch = "arm64";
 			os = "arm-trusted-firmware";
@@ -33,17 +60,20 @@
 		};
 		pmu {
 		        description = "Cortex-M0 firmware";
-			data = /incbin/("../../../rk3399m0.bin");
+			data = /incbin/("$PMUM0");
 			type = "pmu-firmware";
 			compression = "none";
 			load = <0x180000>;
                 };
 		fdt {
 			description = "RK3399-Q7 (Puma) flat device-tree";
-			data = /incbin/("../../../u-boot.dtb");
+			data = /incbin/("u-boot.dtb");
 			type = "flat_dt";
 			compression = "none";
 		};
+__HEADER_EOF
+
+cat << __CONF_HEADER_EOF
 	};
 
 	configurations {
@@ -54,5 +84,9 @@
 			loadables = "uboot", "pmu";
 			fdt = "fdt";
 		};
+__CONF_HEADER_EOF
+
+cat << __ITS_EOF
 	};
 };
+__ITS_EOF
diff --git a/configs/puma-rk3399_defconfig b/configs/puma-rk3399_defconfig
index e5ea2fe0b3..98b2dd6f02 100644
--- a/configs/puma-rk3399_defconfig
+++ b/configs/puma-rk3399_defconfig
@@ -15,7 +15,7 @@ CONFIG_SPL_SPI_FLASH_SUPPORT=y
 CONFIG_SPL_SPI_SUPPORT=y
 CONFIG_DEBUG_UART=y
 CONFIG_NR_DRAM_BANKS=1
-CONFIG_SPL_FIT_SOURCE="board/theobroma-systems/puma_rk3399/fit_spl_atf.its"
+CONFIG_SPL_FIT_GENERATOR="board/theobroma-systems/puma_rk3399/fit_spl_atf.sh"
 CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-puma-haikou.dtb"
 CONFIG_MISC_INIT_R=y
 # CONFIG_DISPLAY_CPUINFO is not set
diff --git a/doc/README.rockchip b/doc/README.rockchip
index 98a3824e2c..88a4593392 100644
--- a/doc/README.rockchip
+++ b/doc/README.rockchip
@@ -137,8 +137,8 @@ For example:
 	=> cd arm-trusted-firmware
 	=> make CROSS_COMPILE=aarch64-linux-gnu- PLAT=rk3399 bl31
 
-	(copy bl31.bin into U-Boot root dir)
-	=> cp build/rk3399/release/bl31/bl31.bin /path/to/u-boot/bl31-rk3399.bin
+	(export bl31.bin)
+	=> export BL31=/path/to/arm-trusted-firmware/build/rk3399/release/bl31/bl31.bin
 
      For rest of rk3399 boards.
 
@@ -162,8 +162,8 @@ For example:
      (export cross compiler path for Cortex-M0 PMU)
      => make CROSS_COMPILE=arm-cortex_m0-eabi-
 
-     (copy rk3399m0.bin into U-Boot root dir)
-     => cp rk3399m0.bin /path/to/u-boot
+     (export rk3399m0.bin)
+     => export PMUM0=/path/to/rk3399-cortex-m0/rk3399m0.bin
 
    - Compile U-Boot
 
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

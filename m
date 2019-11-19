Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E49C101D3A
	for <lists+linux-rockchip@lfdr.de>; Tue, 19 Nov 2019 09:26:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9F0TtYKdTvA3Ne5bDAUW9gB/V1k+87jeZdNobXvtW3A=; b=N/MXRFN2qBsHxy
	VTFW15pr5wJ97KyGwFc6FZkDyhI82NjGDDCI6fSX0lMdVGimNhZjtHkPBLAWmI8Bm9BYyZg3G7dQo
	oYradCUiX0QsuaQnEAdzuRWMMhkCeZWSIm+heDYW0j1zUQXcaUdyVyZrIiALhbvOKS89hfi5/6s+l
	f1kWlx9rON/Iefri32uG/kC/LiC3PQVKY9Y4ZFKY+R5XgzQiCuu9yOPkhjlggWRSrCNMD5s6dXDNb
	ukRbkjHG1kEaO6DABJRMmc1xiBtkPkotki9tfaTrsKdFzfknY4gbRGcn7ktxS+6XIpm8Tc+7uH95z
	jcqDPgwFS11v5Z4ST0yA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWyqd-0001pD-G5; Tue, 19 Nov 2019 08:26:55 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWyqX-0001k8-FI
 for linux-rockchip@lists.infradead.org; Tue, 19 Nov 2019 08:26:53 +0000
Received: by mail-pl1-x643.google.com with SMTP id ay6so11370174plb.0
 for <linux-rockchip@lists.infradead.org>; Tue, 19 Nov 2019 00:26:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=EoBNFaO/xPDAoLmT03miob9ythPT8AuOgmoCwUhBZlM=;
 b=FhZk+g/trM2MILOiCcu0mXr5FN4vnVLcJ3aZ05BgtllTzAIGQF0nMerYkk4SHdBFnk
 8X/5qNaO83V6l+s+c/ZQxscWMvRAc52kCix/JoKLDWwTdOMCaPkOhCrBRCAgPN+Iscuk
 EtXVRcOx/8flFyY+sleJAu1cPl9R5rd2X+XQE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=EoBNFaO/xPDAoLmT03miob9ythPT8AuOgmoCwUhBZlM=;
 b=gJaoz266A4TZgJcnvKFZSQ1kmG/8r+onb/5Dp2+Wr1mKa6JGEBUkXlyOnlgUA7z2wY
 K+XR+7JUMfZLc7rSlSbA9X3EEy7gItaONnPNr/RjQEYdmOsadko7BxgD2y5YXhL8U/6u
 tgZAZkUcLJvw9dGOfPJKJTce8pDxvfbWJG4YVCFEyR0D/pSUwecTozAztorCGCsvm3P7
 9PgHTInNH2ZOmDA7C7fF3RnkmyF8fx+3yfPcnN3r9TH5+v/3xxz2V6BhC4dghkGLdgXZ
 6Ac8AuJ4SUHCgX2F8HTzMz7bw/aFACCJe4N632QikCII67esktIaGZ8LNqnmsp4kJgW8
 XSKw==
X-Gm-Message-State: APjAAAXzPN5vF5is1G09BHwsxG2Pjm8baz2dxcB4Ylw+N9ugDrZ8rLLe
 jMVsq+ZuHE5bgxzvJWEtoAEXodo4n6yBzg==
X-Google-Smtp-Source: APXvYqyIMlXrHRZOKoMzFk5Mx7u9medDaW8d1Crz/+kqDxqAQhJp3xMrm3B+nikulQOMxBFjwp9mYA==
X-Received: by 2002:a17:90b:d88:: with SMTP id
 bg8mr4803829pjb.78.1574152008919; 
 Tue, 19 Nov 2019 00:26:48 -0800 (PST)
Received: from localhost.localdomain ([115.97.180.31])
 by smtp.gmail.com with ESMTPSA id u7sm2312221pjx.19.2019.11.19.00.26.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 Nov 2019 00:26:48 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH v2 05/10] fastboot: rockchip: Select FASTBOOT_FLASH[_MMC_DEV]
Date: Tue, 19 Nov 2019 13:56:18 +0530
Message-Id: <20191119082623.6165-6-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191119082623.6165-1-jagan@amarulasolutions.com>
References: <20191119082623.6165-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_002649_515727_AF2642D3 
X-CRM114-Status: GOOD (  10.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: u-boot@lists.denx.de, Levin Du <djw@t-chip.com.cn>,
 linux-amarula@amarulasolutions.com, Jagan Teki <jagan@amarulasolutions.com>,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Select CONFIG_FASTBOOT_FLASH, CONFIG_FASTBOOT_FLASH_MMC_DEV
for rockchip SoC plaforms in fastboot Kconfig file instead
of defined it in board defconfig.

This eventually drop the explicit configs defined in
supporting board defconfig files.

Tested-by: Levin Du <djw@t-chip.com.cn>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 configs/evb-rk3036_defconfig      | 2 --
 configs/evb-rk3128_defconfig      | 2 --
 configs/evb-rk3229_defconfig      | 2 --
 configs/evb-rk3288_defconfig      | 2 --
 configs/evb-rk3328_defconfig      | 2 --
 configs/firefly-rk3288_defconfig  | 2 --
 configs/kylin-rk3036_defconfig    | 2 --
 configs/miqi-rk3288_defconfig     | 2 --
 configs/phycore-rk3288_defconfig  | 2 --
 configs/popmetal-rk3288_defconfig | 2 --
 configs/rock64-rk3328_defconfig   | 2 --
 configs/tinker-rk3288_defconfig   | 2 --
 configs/tinker-s-rk3288_defconfig | 2 --
 drivers/fastboot/Kconfig          | 4 +++-
 14 files changed, 3 insertions(+), 27 deletions(-)

diff --git a/configs/evb-rk3036_defconfig b/configs/evb-rk3036_defconfig
index 79e413145f..4bed28f102 100644
--- a/configs/evb-rk3036_defconfig
+++ b/configs/evb-rk3036_defconfig
@@ -35,8 +35,6 @@ CONFIG_REGMAP=y
 CONFIG_SYSCON=y
 # CONFIG_SPL_BLK is not set
 CONFIG_CLK=y
-CONFIG_FASTBOOT_FLASH=y
-CONFIG_FASTBOOT_FLASH_MMC_DEV=0
 CONFIG_FASTBOOT_CMD_OEM_FORMAT=y
 CONFIG_ROCKCHIP_GPIO=y
 CONFIG_SYS_I2C_ROCKCHIP=y
diff --git a/configs/evb-rk3128_defconfig b/configs/evb-rk3128_defconfig
index cb3c5372aa..bf91c642dd 100644
--- a/configs/evb-rk3128_defconfig
+++ b/configs/evb-rk3128_defconfig
@@ -23,8 +23,6 @@ CONFIG_SYSCON=y
 CONFIG_CLK=y
 CONFIG_FASTBOOT_BUF_ADDR=0x60800800
 CONFIG_FASTBOOT_BUF_SIZE=0x04000000
-CONFIG_FASTBOOT_FLASH=y
-CONFIG_FASTBOOT_FLASH_MMC_DEV=0
 CONFIG_FASTBOOT_CMD_OEM_FORMAT=y
 CONFIG_ROCKCHIP_GPIO=y
 CONFIG_SYS_I2C_ROCKCHIP=y
diff --git a/configs/evb-rk3229_defconfig b/configs/evb-rk3229_defconfig
index 8d7d11c3e8..cdf28154f8 100644
--- a/configs/evb-rk3229_defconfig
+++ b/configs/evb-rk3229_defconfig
@@ -44,8 +44,6 @@ CONFIG_CLK=y
 CONFIG_SPL_CLK=y
 CONFIG_TPL_CLK=y
 CONFIG_FASTBOOT_BUF_SIZE=0x04000000
-CONFIG_FASTBOOT_FLASH=y
-CONFIG_FASTBOOT_FLASH_MMC_DEV=0
 CONFIG_FASTBOOT_CMD_OEM_FORMAT=y
 CONFIG_ROCKCHIP_GPIO=y
 CONFIG_SYS_I2C_ROCKCHIP=y
diff --git a/configs/evb-rk3288_defconfig b/configs/evb-rk3288_defconfig
index db7e6fa7b1..833b0b6a6d 100644
--- a/configs/evb-rk3288_defconfig
+++ b/configs/evb-rk3288_defconfig
@@ -43,8 +43,6 @@ CONFIG_SYSCON=y
 CONFIG_SPL_SYSCON=y
 CONFIG_CLK=y
 CONFIG_SPL_CLK=y
-CONFIG_FASTBOOT_FLASH=y
-CONFIG_FASTBOOT_FLASH_MMC_DEV=0
 CONFIG_FASTBOOT_CMD_OEM_FORMAT=y
 CONFIG_ROCKCHIP_GPIO=y
 CONFIG_SYS_I2C_ROCKCHIP=y
diff --git a/configs/evb-rk3328_defconfig b/configs/evb-rk3328_defconfig
index 0293546b04..74b7295e62 100644
--- a/configs/evb-rk3328_defconfig
+++ b/configs/evb-rk3328_defconfig
@@ -46,8 +46,6 @@ CONFIG_TPL_SYSCON=y
 CONFIG_CLK=y
 CONFIG_SPL_CLK=y
 CONFIG_FASTBOOT_BUF_ADDR=0x800800
-CONFIG_FASTBOOT_FLASH=y
-CONFIG_FASTBOOT_FLASH_MMC_DEV=1
 CONFIG_FASTBOOT_CMD_OEM_FORMAT=y
 CONFIG_ROCKCHIP_GPIO=y
 CONFIG_SYS_I2C_ROCKCHIP=y
diff --git a/configs/firefly-rk3288_defconfig b/configs/firefly-rk3288_defconfig
index 6efc5735f9..178029cc47 100644
--- a/configs/firefly-rk3288_defconfig
+++ b/configs/firefly-rk3288_defconfig
@@ -44,8 +44,6 @@ CONFIG_SPL_SYSCON=y
 # CONFIG_SPL_SIMPLE_BUS is not set
 CONFIG_CLK=y
 CONFIG_SPL_CLK=y
-CONFIG_FASTBOOT_FLASH=y
-CONFIG_FASTBOOT_FLASH_MMC_DEV=0
 CONFIG_FASTBOOT_CMD_OEM_FORMAT=y
 CONFIG_ROCKCHIP_GPIO=y
 CONFIG_SYS_I2C_ROCKCHIP=y
diff --git a/configs/kylin-rk3036_defconfig b/configs/kylin-rk3036_defconfig
index c1607e52fb..6c13c4c080 100644
--- a/configs/kylin-rk3036_defconfig
+++ b/configs/kylin-rk3036_defconfig
@@ -37,8 +37,6 @@ CONFIG_REGMAP=y
 CONFIG_SYSCON=y
 # CONFIG_SPL_BLK is not set
 CONFIG_CLK=y
-CONFIG_FASTBOOT_FLASH=y
-CONFIG_FASTBOOT_FLASH_MMC_DEV=0
 CONFIG_FASTBOOT_CMD_OEM_FORMAT=y
 CONFIG_ROCKCHIP_GPIO=y
 CONFIG_SYS_I2C_ROCKCHIP=y
diff --git a/configs/miqi-rk3288_defconfig b/configs/miqi-rk3288_defconfig
index 4590e38ad3..488cc54203 100644
--- a/configs/miqi-rk3288_defconfig
+++ b/configs/miqi-rk3288_defconfig
@@ -45,8 +45,6 @@ CONFIG_SPL_SYSCON=y
 # CONFIG_SPL_SIMPLE_BUS is not set
 CONFIG_CLK=y
 CONFIG_SPL_CLK=y
-CONFIG_FASTBOOT_FLASH=y
-CONFIG_FASTBOOT_FLASH_MMC_DEV=0
 CONFIG_FASTBOOT_CMD_OEM_FORMAT=y
 CONFIG_ROCKCHIP_GPIO=y
 CONFIG_SYS_I2C_ROCKCHIP=y
diff --git a/configs/phycore-rk3288_defconfig b/configs/phycore-rk3288_defconfig
index 51bd8adcbc..75de1d68e5 100644
--- a/configs/phycore-rk3288_defconfig
+++ b/configs/phycore-rk3288_defconfig
@@ -47,8 +47,6 @@ CONFIG_SPL_SYSCON=y
 # CONFIG_SPL_SIMPLE_BUS is not set
 CONFIG_CLK=y
 CONFIG_SPL_CLK=y
-CONFIG_FASTBOOT_FLASH=y
-CONFIG_FASTBOOT_FLASH_MMC_DEV=0
 CONFIG_FASTBOOT_CMD_OEM_FORMAT=y
 CONFIG_ROCKCHIP_GPIO=y
 CONFIG_SYS_I2C_ROCKCHIP=y
diff --git a/configs/popmetal-rk3288_defconfig b/configs/popmetal-rk3288_defconfig
index 8cc55bdbe0..320f34bd04 100644
--- a/configs/popmetal-rk3288_defconfig
+++ b/configs/popmetal-rk3288_defconfig
@@ -45,8 +45,6 @@ CONFIG_SPL_SYSCON=y
 # CONFIG_SPL_SIMPLE_BUS is not set
 CONFIG_CLK=y
 CONFIG_SPL_CLK=y
-CONFIG_FASTBOOT_FLASH=y
-CONFIG_FASTBOOT_FLASH_MMC_DEV=0
 CONFIG_FASTBOOT_CMD_OEM_FORMAT=y
 CONFIG_ROCKCHIP_GPIO=y
 CONFIG_SYS_I2C_ROCKCHIP=y
diff --git a/configs/rock64-rk3328_defconfig b/configs/rock64-rk3328_defconfig
index 0dab5d7e54..73ca535ff8 100644
--- a/configs/rock64-rk3328_defconfig
+++ b/configs/rock64-rk3328_defconfig
@@ -48,8 +48,6 @@ CONFIG_TPL_SYSCON=y
 CONFIG_CLK=y
 CONFIG_SPL_CLK=y
 CONFIG_FASTBOOT_BUF_ADDR=0x800800
-CONFIG_FASTBOOT_FLASH=y
-CONFIG_FASTBOOT_FLASH_MMC_DEV=1
 CONFIG_FASTBOOT_CMD_OEM_FORMAT=y
 CONFIG_ROCKCHIP_GPIO=y
 CONFIG_SYS_I2C_ROCKCHIP=y
diff --git a/configs/tinker-rk3288_defconfig b/configs/tinker-rk3288_defconfig
index c350c0d8ba..56fcbb94d3 100644
--- a/configs/tinker-rk3288_defconfig
+++ b/configs/tinker-rk3288_defconfig
@@ -47,8 +47,6 @@ CONFIG_SPL_SYSCON=y
 # CONFIG_SPL_SIMPLE_BUS is not set
 CONFIG_CLK=y
 CONFIG_SPL_CLK=y
-CONFIG_FASTBOOT_FLASH=y
-CONFIG_FASTBOOT_FLASH_MMC_DEV=0
 CONFIG_FASTBOOT_CMD_OEM_FORMAT=y
 CONFIG_ROCKCHIP_GPIO=y
 CONFIG_SYS_I2C_ROCKCHIP=y
diff --git a/configs/tinker-s-rk3288_defconfig b/configs/tinker-s-rk3288_defconfig
index c016a264b2..458e1695a2 100644
--- a/configs/tinker-s-rk3288_defconfig
+++ b/configs/tinker-s-rk3288_defconfig
@@ -52,8 +52,6 @@ CONFIG_SPL_SYSCON=y
 # CONFIG_SPL_SIMPLE_BUS is not set
 CONFIG_CLK=y
 CONFIG_SPL_CLK=y
-CONFIG_FASTBOOT_FLASH=y
-CONFIG_FASTBOOT_FLASH_MMC_DEV=0
 CONFIG_FASTBOOT_CMD_OEM_FORMAT=y
 CONFIG_ROCKCHIP_GPIO=y
 CONFIG_SYS_I2C_ROCKCHIP=y
diff --git a/drivers/fastboot/Kconfig b/drivers/fastboot/Kconfig
index d63ecdd27e..34864ca613 100644
--- a/drivers/fastboot/Kconfig
+++ b/drivers/fastboot/Kconfig
@@ -64,7 +64,7 @@ config FASTBOOT_USB_DEV
 
 config FASTBOOT_FLASH
 	bool "Enable FASTBOOT FLASH command"
-	default y if ARCH_SUNXI
+	default y if ARCH_SUNXI || ARCH_ROCKCHIP
 	depends on MMC || (NAND && CMD_MTDPARTS)
 	select IMAGE_SPARSE
 	help
@@ -89,6 +89,8 @@ endchoice
 config FASTBOOT_FLASH_MMC_DEV
 	int "Define FASTBOOT MMC FLASH default device"
 	depends on FASTBOOT_FLASH_MMC
+	default 1 if ROCKCHIP_RK3328
+	default 0 if ARCH_ROCKCHIP
 	default 0 if ARCH_SUNXI && MMC_SUNXI_SLOT_EXTRA = -1
 	default 1 if ARCH_SUNXI && MMC_SUNXI_SLOT_EXTRA != -1
 	help
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

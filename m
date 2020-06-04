Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0269B1EE6FA
	for <lists+linux-rockchip@lfdr.de>; Thu,  4 Jun 2020 16:52:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DJspm9GExRe1hCPulhtBThI8FTQvTqFU9eL7wcFDeKc=; b=k+TQ9P361+AxZw
	Z213sdndLKYiLugHtlaYMqVZHzpId8B4dlIjt+/Ewi8znx7RB9pNSngywp8phpVi+T33WmMM13XpY
	roz2nTb5GFxPKcx0A1bN03irC/5EcKRoxw4LaOC0z45y5AeBZkB+MNy7lFnPGmkQOgZBfIZipwMGH
	GUwO7ojxICC4s8Jhs5liIDHkkj2C0i3Z0m6OiWsctMmQKg5udDI/yhpnhv7F8QQYDVrb/5NsXlgM/
	sB6D5JncsVGBcIhw6tdxY1VGnzMc5OesVejpAwYERwV5/Vnunvbqxe0YeyFplpitsqoN8WL6unLmV
	7QE2h0L2x5iCl8qToc6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgrE4-0006kd-4y; Thu, 04 Jun 2020 14:52:12 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgrE1-0006jM-8D
 for linux-rockchip@lists.infradead.org; Thu, 04 Jun 2020 14:52:10 +0000
Received: by mail-pf1-x444.google.com with SMTP id z64so3372431pfb.1
 for <linux-rockchip@lists.infradead.org>; Thu, 04 Jun 2020 07:52:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ajOUqm25QJXTmSvPTEwkjDDkta2sca3MVhwOQCgFpK0=;
 b=N5hd4Y4qHMmOR0JzFfWMWbSRQ0c7tEZC8P0PWOf97DHzmpIL7PD7Vvs8qF1uteNfhZ
 EbUmkSMtEEHcyuv5yG2jaZbb/pYCZQkJ43CtY/0Qbr1LieBHJwRdt3Q/jRjX+gn2DOTR
 EWNfBjMsqMeuqqG9yCoTgqPg2flEYsa/qp39A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ajOUqm25QJXTmSvPTEwkjDDkta2sca3MVhwOQCgFpK0=;
 b=YiabR9l0DhBwFYR/zLkWTZSjrbFEYlCOQTD12D8Pt615F7CybTEFnx1+DbLal7CSCB
 bJaY5O7QnsNUvUCQvraNdqn1S0JUFWAPdFsBhxVSmDkY+nUFQHaXTknkRKndQ7Gl9b5X
 N5r08Fm3AG4jKbBAXwfB2AVif9pEvoX/rThq+HceQQmdcTFfBy0kZJr+Xoc07wE+ukZY
 z3vKwTktq+YMI5LankKBke5PWwnIlm8wjg8HhJ727Hd4RnwxUOQAxtzlEp8hu0nmzmWT
 WTkXN2tGl3idJm14ptEwO9Od3GjipiUd+mq3vC7fBHwDvDL9+x6x7ozcYAsRQGUp1Yu4
 m/Tw==
X-Gm-Message-State: AOAM532EDGbsR45U1BU2NXB3Tfe5HOWvuDilozPANqwMPOv8FbTuoqto
 yRBzC0fTDzRSs0hDlEUd/WjdgQ==
X-Google-Smtp-Source: ABdhPJyApHfAp1TjwTfbxn9KQJayifjJUvRLVTKvkeJ1u7Zo52JephlCE0QYFCc7Jt7WDUkRM0vG8A==
X-Received: by 2002:a63:1650:: with SMTP id 16mr4935481pgw.23.1591282328404;
 Thu, 04 Jun 2020 07:52:08 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:41f4:94a8:1af3:a574])
 by smtp.gmail.com with ESMTPSA id 2sm4831283pfz.39.2020.06.04.07.52.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 04 Jun 2020 07:52:07 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Simon Glass <sjg@chromium.org>, Hugh Cole-Baker <sigmaris@gmail.com>
Subject: [PATCH v3 3/4] roc-rk3399-pc: Add SPI boot
Date: Thu,  4 Jun 2020 20:21:40 +0530
Message-Id: <20200604145141.356702-4-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200604145141.356702-1-jagan@amarulasolutions.com>
References: <20200604145141.356702-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_075209_301594_A3D9832D 
X-CRM114-Status: UNSURE (   9.97  )
X-CRM114-Notice: Please train this message.
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: U-Boot-Denx <u-boot@lists.denx.de>, linux-rockchip@lists.infradead.org,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 Jagan Teki <jagan@amarulasolutions.com>,
 Suniel Mahesh <sunil@amarulasolutions.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

U-Boot TPL 2020.07-rc3-00090-gd4e919f927-dirty (Jun 01 2020 - 23:45:53)
Channel 0: LPDDR4, 50MHz
BW=32 Col=10 Bk=8 CS0 Row=15 CS1 Row=15 CS=2 Die BW=16 Size=2048MB
Channel 1: LPDDR4, 50MHz
BW=32 Col=10 Bk=8 CS0 Row=15 CS1 Row=15 CS=2 Die BW=16 Size=2048MB
256B stride
256B stride
lpddr4_set_rate: change freq to 400000000 mhz 0, 1
lpddr4_set_rate: change freq to 800000000 mhz 1, 0
Trying to boot from BOOTROM
Returning to boot ROM...

U-Boot SPL 2020.07-rc3-00087-ga21e9fd385 (Jun 02 2020 - 00:09:45 +0530)
Trying to boot from MMC1
NOTICE:  BL31: v2.2(release):
NOTICE:  BL31: Built : 15:05:37, May 12 2020

U-Boot 2020.07-rc3-00087-ga21e9fd385 (Jun 02 2020 - 00:09:45 +0530)

SoC: Rockchip rk3399
Reset cause: POR
Model: Firefly ROC-RK3399-PC Board
DRAM:  3.9 GiB
PMIC:  RK808
MMC:   mmc@fe320000: 1, sdhci@fe330000: 0
Loading Environment from SPI Flash... SF: Detected w25q128 with page size 256 Bytes, erase size 4 KiB, total 16 MiB
*** Warning - bad CRC, using default environment

In:    serial
Out:   serial
Err:   serial
Model: Firefly ROC-RK3399-PC Board

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Reviewed-by: Kever Yang <kever.yang@rock-chips.com>
---
Changes for v3:
- none

 arch/arm/dts/rk3399-roc-pc-u-boot.dtsi    | 12 +++++++++++-
 configs/roc-pc-mezzanine-rk3399_defconfig |  3 +++
 configs/roc-pc-rk3399_defconfig           |  3 +++
 3 files changed, 17 insertions(+), 1 deletion(-)

diff --git a/arch/arm/dts/rk3399-roc-pc-u-boot.dtsi b/arch/arm/dts/rk3399-roc-pc-u-boot.dtsi
index 141dd0b306..fc155e6903 100644
--- a/arch/arm/dts/rk3399-roc-pc-u-boot.dtsi
+++ b/arch/arm/dts/rk3399-roc-pc-u-boot.dtsi
@@ -12,7 +12,11 @@
 	};
 
 	chosen {
-		u-boot,spl-boot-order = "same-as-spl", &sdhci, &sdmmc;
+		u-boot,spl-boot-order = "same-as-spl", &spi_flash, &sdhci, &sdmmc;
+	};
+
+	config {
+		u-boot,spl-payload-offset = <0x60000>; /* @ 384KB */
 	};
 
 	vcc_hub_en: vcc_hub_en-regulator {
@@ -40,6 +44,12 @@
 	vin-supply = <&vcc_vbus_typec0>;
 };
 
+&spi1 {
+	spi_flash: flash@0 {
+		u-boot,dm-pre-reloc;
+	};
+};
+
 &vdd_log {
 	regulator-min-microvolt = <430000>;
 	regulator-init-microvolt = <950000>;
diff --git a/configs/roc-pc-mezzanine-rk3399_defconfig b/configs/roc-pc-mezzanine-rk3399_defconfig
index 3b91c25ff4..fd1b85c1e4 100644
--- a/configs/roc-pc-mezzanine-rk3399_defconfig
+++ b/configs/roc-pc-mezzanine-rk3399_defconfig
@@ -9,12 +9,15 @@ CONFIG_TARGET_ROC_PC_RK3399=y
 CONFIG_NR_DRAM_BANKS=1
 CONFIG_DEBUG_UART_BASE=0xFF1A0000
 CONFIG_DEBUG_UART_CLOCK=24000000
+CONFIG_SPL_SPI_FLASH_SUPPORT=y
+CONFIG_SPL_SPI_SUPPORT=y
 CONFIG_DEBUG_UART=y
 CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-roc-pc-mezzanine.dtb"
 CONFIG_DISPLAY_BOARDINFO_LATE=y
 # CONFIG_SPL_RAW_IMAGE_SUPPORT is not set
 CONFIG_SPL_STACK_R=y
 CONFIG_SPL_STACK_R_MALLOC_SIMPLE_LEN=0x10000
+CONFIG_SPL_SPI_LOAD=y
 CONFIG_TPL=y
 CONFIG_TPL_GPIO_SUPPORT=y
 CONFIG_CMD_BOOTZ=y
diff --git a/configs/roc-pc-rk3399_defconfig b/configs/roc-pc-rk3399_defconfig
index 6edd4a8822..80e7001481 100644
--- a/configs/roc-pc-rk3399_defconfig
+++ b/configs/roc-pc-rk3399_defconfig
@@ -9,12 +9,15 @@ CONFIG_TARGET_ROC_PC_RK3399=y
 CONFIG_NR_DRAM_BANKS=1
 CONFIG_DEBUG_UART_BASE=0xFF1A0000
 CONFIG_DEBUG_UART_CLOCK=24000000
+CONFIG_SPL_SPI_FLASH_SUPPORT=y
+CONFIG_SPL_SPI_SUPPORT=y
 CONFIG_DEBUG_UART=y
 CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-roc-pc.dtb"
 CONFIG_DISPLAY_BOARDINFO_LATE=y
 # CONFIG_SPL_RAW_IMAGE_SUPPORT is not set
 CONFIG_SPL_STACK_R=y
 CONFIG_SPL_STACK_R_MALLOC_SIMPLE_LEN=0x10000
+CONFIG_SPL_SPI_LOAD=y
 CONFIG_TPL=y
 CONFIG_TPL_GPIO_SUPPORT=y
 CONFIG_CMD_BOOTZ=y
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A34FE1F1EDC
	for <lists+linux-rockchip@lfdr.de>; Mon,  8 Jun 2020 20:17:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TCXUCEhHySzfXEI+cX7exPca78IbfeUk+0BVmHA2PMI=; b=J7a9/PaKqE1/or
	LDiQKEvHOFqlIJk+ApgbKYKsGYBUsTfW9idSfBqFtnedcmKgaSbsxQK395p6UCS4PPJxBbVKZux0/
	TBXofaHjWjf8WR+PivaB35KmfzVpGiK1c3ZaJ8RAnD7wpR3x33j/arpicoDYkVwysN16O6WfydzK3
	Ds2ZjTOQnshKl9faxrEB2BYPZaUDML8sblWlB9zy/OBFyMv0deJMlVweUt9jjccKjfpErLJvPSWin
	rJhctBYTtOFUUqGAxyXkQlxLEku3eEDLKAbpAtZlUQaczl76vXiYQHsQ8qUDBvT1gX2Zb4JRwdEYA
	HBkRUF6yLdhspiImrXXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiML4-0002kR-WC; Mon, 08 Jun 2020 18:17:39 +0000
Received: from mail-pg1-x535.google.com ([2607:f8b0:4864:20::535])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiML1-0002iq-JR
 for linux-rockchip@lists.infradead.org; Mon, 08 Jun 2020 18:17:36 +0000
Received: by mail-pg1-x535.google.com with SMTP id o8so9105010pgm.7
 for <linux-rockchip@lists.infradead.org>; Mon, 08 Jun 2020 11:17:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Np7xlYBqpRyhamB8FZX9N86LOOp4HKzovA516TU3LJ0=;
 b=hGa1nFfLCrZDodxZXYo3uPCAiMGaD3jPRVNF3e0WFEGCzt29ceYZXjINpZTON/GXjr
 FYjTUdh+CuIe6wkXIWM9mWOtkJkA0T7rApz/RpQaNUXhVNqUn7wcqtJ0/OpEjunZRAuW
 +vAjeJSSTgAnwenwykb6/EM7bCBn8F1vRc79M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Np7xlYBqpRyhamB8FZX9N86LOOp4HKzovA516TU3LJ0=;
 b=NmL8g6Y3yVC98hJBrLPKONCvmQIsRdZER3MXFiOnqaXdzE1e/AAsEAjGYXCBeczm84
 1Ga2EUPkymWI1hAzq/35/Vy0hf68BabCBYxzLycjqPBM1TpHEY0bjQAt26p6qyhwIbB5
 N0dvxiy/+mvcljkr/ewykDEEpY/899uZ5A83n12F9qRTIps8J/hOv2J0Bcryc0SAz3oN
 8Cvpoo1zcT/cRkP9DnhvQtNI+2/JDLW8eyr8U2pD4migx3dYVAP02DaPBfHrazBIQyjV
 CQXqY6+fP5WwK2DZmZFYURYyGSP5M7SjB72tcXD457AKHWhlsI2VkNLZykPoxO5HLy/C
 ylNg==
X-Gm-Message-State: AOAM5315MOCx2m5BsotHNJBm/GvSJaQly6XeEeW0xH10/0ebVGiYMnfu
 a5aJs6jUPrPehUQcImMApy4eiDatAiZcvQ==
X-Google-Smtp-Source: ABdhPJwRIWBWRcbBIb5bBzAYM0+/glhkAaAXqbGe31Uy0gekSv4UP7+hpyCeCH5E72yPXTmo95Ps9Q==
X-Received: by 2002:a63:d34a:: with SMTP id u10mr20189048pgi.297.1591640254749; 
 Mon, 08 Jun 2020 11:17:34 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:9043:af95:b7b4:3ade])
 by smtp.gmail.com with ESMTPSA id t7sm180213pju.42.2020.06.08.11.17.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 08 Jun 2020 11:17:33 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Simon Glass <sjg@chromium.org>
Subject: [PATCH v4 3/4] roc-rk3399-pc: Add SPI boot
Date: Mon,  8 Jun 2020 14:17:07 -0400
Message-Id: <20200608181708.17842-4-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200608181708.17842-1-jagan@amarulasolutions.com>
References: <20200608181708.17842-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_111735_646433_479FCF8D 
X-CRM114-Status: UNSURE (   9.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:535 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

Reviewed-by: Kever Yang <kever.yang@rock-chips.com>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v4:
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
index 9c6fd0c98c..03ba519af1 100644
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
index b225eb38fe..b59b54bd89 100644
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
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

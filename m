Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B704A1EB064
	for <lists+linux-rockchip@lfdr.de>; Mon,  1 Jun 2020 22:42:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gwvdSr2u+TeToli0zaneHAI7R7BpEm/Mh5DxPYNSEMs=; b=rFZxC2w/C8pKLN
	eFS1qiBwp+b8hGxAsmFYFJBHR58pOARsXF9w005+8uqgzjmhmD/XLIDhV7vxHdSLDuYO4aJOb2Cuw
	dktgdsUFC0xwFxzJsWLRW9A7StI6jXRZoKK1qYKeM3c9o7/6tERSrSyXa7z6HfhsLz5Hmse0HYXlx
	skdymE0agI5043w6PeV+AIkmf4rL/EJ4v7xVWwNQIonDhO5NOQdcJacCxrT4fnBTluZzMIvcYlKiZ
	kQ+6HRvHCSMFT6ByRRBQl7SBil0J/s8+LA91XQqNrY787qXhzqBnObNK5Z5X3OARlGSUqHVc1sp9b
	D65/dVaNLk2kfZipQWVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfrGl-0002UH-2K; Mon, 01 Jun 2020 20:42:51 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfrGh-0002T9-My
 for linux-rockchip@lists.infradead.org; Mon, 01 Jun 2020 20:42:49 +0000
Received: by mail-pj1-x1043.google.com with SMTP id i12so325830pju.3
 for <linux-rockchip@lists.infradead.org>; Mon, 01 Jun 2020 13:42:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=DOxyptf9FQQNcFAfnmKvWlTL2iTcXIqsnIhBYOAg8BQ=;
 b=n2PD2otatXqkk61mnrJVoAZ9QgAMae4SEu7hOH1RC3RNr+Ht/pZF4NAjO6kMKfL7d0
 pEji9lUMNG2w6t5d6l5jMT+ZG7FSgf2E/5Lb1MYohySdDs2LLoX8Rygf9oneZ90+QLYJ
 vJ2RFrwdGhebqrgXBSP3T2zOS5O3SdUmWuZC0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=DOxyptf9FQQNcFAfnmKvWlTL2iTcXIqsnIhBYOAg8BQ=;
 b=ovLy9As6RpNsEi/W5Iom5QEkhTLt8JbOAv2Yb0iJJ2MnGqEzIiaEbKquUDwCCK9UsO
 JXqQCgvs2zF0WNCzZI47gCA4W/wF++yTD2WFI9VOGQNv94ucnWjQY3PeUzOsp/8F8FnQ
 zk2SKfOE5z3itYBKSYcwhFgb2JkUUK++Cwi/8Gl0l0aHSOGvlGCSZ1Mfu+t9zS8tiZOs
 tM9IA7VMHrb/OD88KG00UwdB70MTV7MepRzwylYFV+pmw1ri8akKhBM4awR9envm79+M
 DPlF0a4MCfAFRwAlsOzvofcwj/Cr30ohx8xDFH2n56VQ+8PWBRiW5g1c/4RG6HUwSS3U
 h3Ng==
X-Gm-Message-State: AOAM531lDe5Yr1VtfmBL0Ant9gZMUo959M2mu9nXRBP2xXeLISpSeMLk
 yieSnczxmmKdJoZb9JgEvUcjRokch642VA==
X-Google-Smtp-Source: ABdhPJwXTsXGVUc4v1yqEwdw3PWCqvVqC91JLCsYeV0dwP4bGIlavRDcG79FIrU4CPWQqKN5e46Ylw==
X-Received: by 2002:a17:90b:110d:: with SMTP id
 gi13mr1316899pjb.173.1591044166947; 
 Mon, 01 Jun 2020 13:42:46 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:658b:ecbc:7ea4:1996])
 by smtp.gmail.com with ESMTPSA id k7sm283581pga.87.2020.06.01.13.42.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 01 Jun 2020 13:42:46 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Simon Glass <sjg@chromium.org>, Hugh Cole-Baker <sigmaris@gmail.com>
Subject: [PATCH v2 3/4] roc-rk3399-pc: Add SPI boot
Date: Tue,  2 Jun 2020 02:12:12 +0530
Message-Id: <20200601204213.466120-4-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200601204213.466120-1-jagan@amarulasolutions.com>
References: <20200601204213.466120-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_134247_755341_1DDD877D 
X-CRM114-Status: GOOD (  10.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
---
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
index 1c1539bcb9..4b98dd9cfc 100644
--- a/configs/roc-pc-mezzanine-rk3399_defconfig
+++ b/configs/roc-pc-mezzanine-rk3399_defconfig
@@ -7,12 +7,15 @@ CONFIG_TARGET_ROC_PC_RK3399=y
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
index 18c343f9f9..e5ff570b87 100644
--- a/configs/roc-pc-rk3399_defconfig
+++ b/configs/roc-pc-rk3399_defconfig
@@ -8,12 +8,15 @@ CONFIG_TARGET_ROC_PC_RK3399=y
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

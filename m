Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 267601DFF84
	for <lists+linux-rockchip@lfdr.de>; Sun, 24 May 2020 16:57:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JXpqesZzgLGwKFbxFIDOFN8EgZQfx+WSN5GOsi98eKY=; b=qHlcFPLAX7Sow+
	I2Vkv8g1x7vn7okXTBTk8tSgFdZxO7pD/6KfzVG+QGBeSiuuZeNUmbu4zToNnBZbCInwBgEvTpRKy
	zJEcJye68ktZw/ChNmVcwv6cCIllRhQ+gd2cGI01qChjbKSHB0iOgHnZeEGu5Ll6e90GKktbPnpF3
	9FLHcclBjsSJ71IRJjCoLw437JNKDv+ES0vOv70hhY+IrhC3FjCsB/iQl1NvzJ9iJepDf/6HZzt6A
	+oQJ11sJHgBFPtz0BldUKTYKSrDvEtYR/pGjTc+vKdRl8S7Cg5Qi9bFNI9IVjKGELOhDgZlczqJ4P
	Pzl6CnH1qujCiAlqzNXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcs3n-0003Lh-My; Sun, 24 May 2020 14:57:07 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcs3k-0003L5-6T
 for linux-rockchip@lists.infradead.org; Sun, 24 May 2020 14:57:06 +0000
Received: by mail-pg1-x543.google.com with SMTP id j21so7594354pgb.7
 for <linux-rockchip@lists.infradead.org>; Sun, 24 May 2020 07:57:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=pctsjZ/mAtUZR10Nqi230zXhBDHFH2SKQuSgTiXpBc8=;
 b=H+hsXRQgzVLraFP7RpdN605Q8F1BnzNxPgBnNAT3fgZzxnTqlDmHu0gn1nKpfu4di3
 TuqXykLOSKZersc3R6bjl9h6q/5Apouiqr+ifA1xhhnqVvVTmavqN9Do50wIhGS79KwS
 yEQ2+/TFhPMkh5SAyPzLmykIt1uwH5MOirz/w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=pctsjZ/mAtUZR10Nqi230zXhBDHFH2SKQuSgTiXpBc8=;
 b=rWitmlOrz1TVVgzJur8rNcaF8J1N45PS4YsTfjjI9yDoDQeyBKCO5F1z2yM8u/0DKv
 ipznA8K0Hlf6IF4l9/lOkRO1brSVRqw62z/gDW9cGLEUqxenl5u1bRFsurG0gUK3feCJ
 /QjMJ/uizTmg5Ok6FkSmKzaSyTnrfOGxtSSWKJwUZBtDC0Gs5//t8KjqqDzIg0XF34Rs
 /hXHnlU1RpYj2aYMEj5l1TsrwWl8B2Q+6qlCvHPahG9xx6VwqpbUohuLJyKVp2QJDPWH
 px62yLPecFfy6V+wraOWEpR88VjP/6CjSbEuKJFC0htdhS4ZOF8AM3l6RrV5RqG+AvuQ
 HS+Q==
X-Gm-Message-State: AOAM533nyL9C8kkhlbWi0VkJsNfWdjHGO2kVdeVNtf2aVC6nozismlSr
 kAKgq3dC4qr5ApOj4d0QrkmMeQ==
X-Google-Smtp-Source: ABdhPJwq/UhNu73clUwYljTG7dhOWBRXE+la3/iZRZfEXr2r8uST3s3/BIBqOqOGuSXZ5L+qwG4ABw==
X-Received: by 2002:a05:6a00:82:: with SMTP id
 c2mr12351101pfj.118.1590332222712; 
 Sun, 24 May 2020 07:57:02 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:9b1:856c:6c2b:bde7])
 by smtp.gmail.com with ESMTPSA id
 w12sm10974245pjy.15.2020.05.24.07.56.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 24 May 2020 07:57:01 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH v2] rockchip: Fix spl mmc boot device ofpath
Date: Sun, 24 May 2020 20:26:18 +0530
Message-Id: <20200524145618.78951-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_075704_669805_1E14D319 
X-CRM114-Status: GOOD (  11.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Linux v5.7-rc1 dts(i) sync has changed the sdmmc node from
dwmmc@fe320000 to mmc@fe320000 and this ofpath is being
used in rockchip spl bootdevice code.

So, update the ofpath with a new node name and prefix "same-as-spl" 
to missing u-boot,spl-boot-order.

Bug log:
U-Boot SPL 2020.07-rc2-00256-g9c5fef5774 (May 24 2020 - 20:20:43 +0530)
Trying to boot from MMC2
mmc_load_image_raw_sector: mmc block read error
Trying to boot from MMC1
mmc_load_image_raw_sector: mmc block read error
SPL: failed to boot from all boot devices

Fixes: 167efc2c7a46 ("arm64: dts: rk3399: Sync v5.7-rc1 from Linux"
Signed-off-by: Suniel Mahesh <sunil@amarulasolutions.com>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v2:
- prefix "same-as-spl" to missing u-boot,spl-boot-order

 arch/arm/dts/rk3399-evb-u-boot.dtsi               | 2 +-
 arch/arm/dts/rk3399-ficus-u-boot.dtsi             | 2 +-
 arch/arm/dts/rk3399-rock960-u-boot.dtsi           | 2 +-
 arch/arm/mach-rockchip/rk3399/rk3399.c            | 4 ++--
 board/theobroma-systems/puma_rk3399/puma-rk3399.c | 4 ++--
 5 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/arch/arm/dts/rk3399-evb-u-boot.dtsi b/arch/arm/dts/rk3399-evb-u-boot.dtsi
index e5659d7999..0bb50b01da 100644
--- a/arch/arm/dts/rk3399-evb-u-boot.dtsi
+++ b/arch/arm/dts/rk3399-evb-u-boot.dtsi
@@ -8,7 +8,7 @@
 
 / {
 	chosen {
-		u-boot,spl-boot-order = &sdhci, &sdmmc;
+		u-boot,spl-boot-order = "same-as-spl", &sdhci, &sdmmc;
 	};
 };
 
diff --git a/arch/arm/dts/rk3399-ficus-u-boot.dtsi b/arch/arm/dts/rk3399-ficus-u-boot.dtsi
index f3f7aa7c45..38e0897db9 100644
--- a/arch/arm/dts/rk3399-ficus-u-boot.dtsi
+++ b/arch/arm/dts/rk3399-ficus-u-boot.dtsi
@@ -8,6 +8,6 @@
 
 / {
 	chosen {
-		u-boot,spl-boot-order = &sdhci, &sdmmc;
+		u-boot,spl-boot-order = "same-as-spl", &sdhci, &sdmmc;
 	};
 };
diff --git a/arch/arm/dts/rk3399-rock960-u-boot.dtsi b/arch/arm/dts/rk3399-rock960-u-boot.dtsi
index 82f2c311af..c190089e26 100644
--- a/arch/arm/dts/rk3399-rock960-u-boot.dtsi
+++ b/arch/arm/dts/rk3399-rock960-u-boot.dtsi
@@ -8,7 +8,7 @@
 
 / {
 	chosen {
-		u-boot,spl-boot-order = &sdhci, &sdmmc;
+		u-boot,spl-boot-order = "same-as-spl", &sdhci, &sdmmc;
 	};
 
 	vdd_log: vdd-log {
diff --git a/arch/arm/mach-rockchip/rk3399/rk3399.c b/arch/arm/mach-rockchip/rk3399/rk3399.c
index 09b0d6ebe8..4fda93b152 100644
--- a/arch/arm/mach-rockchip/rk3399/rk3399.c
+++ b/arch/arm/mach-rockchip/rk3399/rk3399.c
@@ -28,7 +28,7 @@ DECLARE_GLOBAL_DATA_PTR;
 const char * const boot_devices[BROM_LAST_BOOTSOURCE + 1] = {
 	[BROM_BOOTSOURCE_EMMC] = "/sdhci@fe330000",
 	[BROM_BOOTSOURCE_SPINOR] = "/spi@ff1d0000",
-	[BROM_BOOTSOURCE_SD] = "/dwmmc@fe320000",
+	[BROM_BOOTSOURCE_SD] = "/mmc@fe320000",
 };
 
 static struct mm_region rk3399_mem_map[] = {
@@ -176,7 +176,7 @@ const char *spl_decode_boot_device(u32 boot_device)
 		u32 boot_device;
 		const char *ofpath;
 	} spl_boot_devices_tbl[] = {
-		{ BOOT_DEVICE_MMC1, "/dwmmc@fe320000" },
+		{ BOOT_DEVICE_MMC1, "/mmc@fe320000" },
 		{ BOOT_DEVICE_MMC2, "/sdhci@fe330000" },
 		{ BOOT_DEVICE_SPI, "/spi@ff1d0000" },
 	};
diff --git a/board/theobroma-systems/puma_rk3399/puma-rk3399.c b/board/theobroma-systems/puma_rk3399/puma-rk3399.c
index 561579d056..f7f08ae617 100644
--- a/board/theobroma-systems/puma_rk3399/puma-rk3399.c
+++ b/board/theobroma-systems/puma_rk3399/puma-rk3399.c
@@ -77,7 +77,7 @@ static int setup_boottargets(void)
 	}
 
 	/*
-	 * Only run, if booting from mmc1 (i.e. /dwmmc@fe320000) and
+	 * Only run, if booting from mmc1 (i.e. /mmc@fe320000) and
 	 * only consider cases where the default boot-order first
 	 * tries to boot from mmc0 (eMMC) and then from mmc1
 	 * (i.e. external SD).
@@ -85,7 +85,7 @@ static int setup_boottargets(void)
 	 * In other words: the SD card will be moved to earlier in the
 	 * order, if U-Boot was also loaded from the SD-card.
 	 */
-	if (!strcmp(boot_device, "/dwmmc@fe320000")) {
+	if (!strcmp(boot_device, "/mmc@fe320000")) {
 		char *mmc0, *mmc1;
 
 		debug("%s: booted from SD-Card\n", __func__);
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

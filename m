Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C342B34F
	for <lists+linux-rockchip@lfdr.de>; Sat, 27 Apr 2019 14:09:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HEATuIArOIe/csIV9hnKG/84zIM8atMxG+sui+r2R1Q=; b=hXe4FfIbWQK+7i
	txmpX2RzqXKtib8gLZrRbccrXBZLT/LBr92sbrvwl2qPBc3QFMAzeaZdlfGRUlNBKYkjRCpw6HIhl
	lqc/FM0GV+I4N7kZOCeYVdE6CJGE/zZAwjb6XYP6J7pG4K8/KWx0bXigxng38TH7e/6aeiiecJYjG
	p2yEI2BM3a9bJYxnX3bYUo5+YQhLJxPAvjCvCWGB24HUVLbkqYw4qbjswsNNkdjzkhu0ZGXxc0sX0
	MaYWlfXSmB8mykg4gwrTbBgsKzfLwEwFVgqZSk5TJdYWaqT910rwTLH7C1stVQoOl+zTEguxVIap5
	Li0QM4z+VvqdRLZ3j7Fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKM9P-0000my-3v; Sat, 27 Apr 2019 12:09:51 +0000
Received: from mail-pf1-x42e.google.com ([2607:f8b0:4864:20::42e])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKM9L-0000kj-1t
 for linux-rockchip@lists.infradead.org; Sat, 27 Apr 2019 12:09:48 +0000
Received: by mail-pf1-x42e.google.com with SMTP id w25so3001091pfi.9
 for <linux-rockchip@lists.infradead.org>; Sat, 27 Apr 2019 05:09:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=j27ROTMPlvJQFdkm16NvRhONhh+bMCHFPK83ST3x/OU=;
 b=N3KcFRQVeKyUftKoKCeTp5PU6SKJE0Zj675nCkJYbEP0RbsWtEw19Eo46J7XdWUM5o
 iz7l6G4KhJkiWhcktQ/abyCmLQ9Z0U6Nf2T6tfoVOl/z/HvEG8A3kIJJKVMhhfAB8y0W
 1CSP6vokbjcxxuI8sKVR4jFXq75cIXbX/WZTY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=j27ROTMPlvJQFdkm16NvRhONhh+bMCHFPK83ST3x/OU=;
 b=dYKatJDJWUma333xY7nZbCBgCo4+kk9wDeQTIRYdpTwLqhZ4yrXVkitJFptBWDgvAc
 c2ffQ7p73bPZNPcw2MqpdbIxKhqlTQA61Ja8XOnD0HgVCYKmKS2Z6Dt9tzJRo+3Jx8nA
 7TOKQ8BzO42sZDjDmKbjb0DKNEkjm0qyJyGLpumaRKRdas4ImBsqbhxq3R4xXYr05vX1
 k5Nld6MU3Pjat2nPrchuwu1XTpcNDMdSpEs00MhJIRox31XeYspSWFqsSHEDGBNDsedb
 3G1rqVr/hgkrQbA+3OgQdWUZ+UYhlW8oPsBmpzUsy33msv4H5VrcV0nP7LOqh1HBigEe
 jE4g==
X-Gm-Message-State: APjAAAU+l2b9p5rD2TMVTo+58xlfLX/O7MaWaMtPT1tr7uXJYsSxC8rX
 nJKRKFCcJ+tsktkaeMsWitMD4A==
X-Google-Smtp-Source: APXvYqx6Ke0lhfVX82PY9Jk6v9pUxDpZIlqGm8yINSmYHgouCuSc+4Ck13GzP8ynvueZStDdGkbULg==
X-Received: by 2002:a63:2bc8:: with SMTP id r191mr13282693pgr.72.1556366986142; 
 Sat, 27 Apr 2019 05:09:46 -0700 (PDT)
Received: from localhost.localdomain ([115.97.185.144])
 by smtp.gmail.com with ESMTPSA id f14sm1386872pgj.24.2019.04.27.05.09.41
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 27 Apr 2019 05:09:45 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, Akash Gajjar <akash@openedev.com>,
 Tom Rini <trini@konsulko.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v6 13/13] doc: rockchip: Add global doc for rk3399 build/flash
Date: Sat, 27 Apr 2019 17:39:16 +0530
Message-Id: <20190427120916.9033-4-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190427120916.9033-1-jagan@amarulasolutions.com>
References: <20190427120916.9033-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190427_050947_142477_F898FA7B 
X-CRM114-Status: GOOD (  12.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:42e listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Since rockchip have an individual doc/README.rockchip, it would
be better to update the same instead of maintaining it separately
in board files.

So, add the documentation for rk3399
- procedure to build for Rockchip miniloader and
  U-Boot SPL options
- procedure to boot from SD for Rockchip miniloader and
  U-Boot SPL options
- procedure to build ATF, PMU M0 firmware for puma boards
- add boot logs of each option, so-that it would help for future
  boards porting

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Reviewed-by: Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
---
 doc/README.rockchip | 233 +++++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 232 insertions(+), 1 deletion(-)

diff --git a/doc/README.rockchip b/doc/README.rockchip
index ec10ebbc26..ca4d6473b0 100644
--- a/doc/README.rockchip
+++ b/doc/README.rockchip
@@ -88,10 +88,92 @@ One RV3188 baord is supported:
 
 For example:
 
+1. To build RK3288 board:
+
    CROSS_COMPILE=arm-linux-gnueabi- make O=firefly firefly-rk3288_defconfig all
 
-(or you can use another cross compiler if you prefer)
+    (or you can use another cross compiler if you prefer)
+
+2. To build RK3399 board:
+
+   Option 1: Package the image with Rockchip miniloader:
+
+   - Compile U-Boot
+
+     => cd /path/to/u-boot
+     => make nanopi-neo4-rk3399_defconfig
+     => make
+     => make u-boot.itb
+
+   - Get the rkbin
+
+     => git clone https://github.com/rockchip-linux/rkbin.git
+
+   - Create trust.img
+
+     => cd /path/to/rkbin
+     => ./tools/trust_merger RKTRUST/RK3399TRUST.ini
+
+   - Create uboot.img
+
+     => cd /path/to/rkbin
+     => ./tools/loaderimage --pack --uboot /path/to/u-boot/u-boot-dtb.bin uboot.img
+
+     (Get trust.img and uboot.img)
+
+   Option 2: Package the image with SPL:
+
+   - We need the Python elftools.elf.elffile library for make_fit_atf.py to work
+
+     => sudo apt-get install python-pyelftools
+
+   - Export cross compiler path for aarch64
+
+   - Compile ATF
+
+     For Puma board.
+
+	=> git clone git://git.theobroma-systems.com/arm-trusted-firmware.git
+	=> cd arm-trusted-firmware
+	=> make CROSS_COMPILE=aarch64-linux-gnu- PLAT=rk3399 bl31
+
+	(copy bl31.bin into U-Boot root dir)
+	=> cp build/rk3399/release/bl31/bl31.bin /path/to/u-boot/bl31-rk3399.bin
+
+     For rest of rk3399 boards.
+
+	=> git clone https://github.com/ARM-software/arm-trusted-firmware.git
+	=> cd arm-trusted-firmware
+
+	(export cross compiler path for Cortex-M0 MCU likely arm-none-eabi-)
+	=> make realclean
+	=> make CROSS_COMPILE=aarch64-linux-gnu- PLAT=rk3399
+
+	(copy bl31.elf into U-Boot root dir)
+	=> cp build/rk3399/release/bl31/bl31.elf /path/to/u-boot
+
+   - Compile PMU M0 firmware
+
+     This is optional for most of the rk3399 boards and required only for Puma board.
+
+     => git clone git://git.theobroma-systems.com/rk3399-cortex-m0.git
+     => cd rk3399-cortex-m0
 
+     (export cross compiler path for Cortex-M0 PMU)
+     => make CROSS_COMPILE=arm-cortex_m0-eabi-
+
+     (copy rk3399m0.bin into U-Boot root dir)
+     => cp rk3399m0.bin /path/to/u-boot
+
+   - Compile U-Boot
+
+     => cd /path/to/u-boot
+     => make orangepi-rk3399_defconfig
+     => make
+     => make u-boot.itb
+
+     (Get spl/u-boot-spl-dtb.bin, u-boot.itb images and some boards would get
+      spl/u-boot-spl.bin since it doesn't enable CONFIG_SPL_OF_CONTROL)
 
 Writing to the board with USB
 =============================
@@ -225,6 +307,153 @@ tools/mkimage -n rk3188 -T rksd -d spl/u-boot-spl.bin out
 truncate -s %2048 u-boot.bin
 cat u-boot.bin | split -b 512 --filter='openssl rc4 -K 7C4E0304550509072D2C7B38170D1711' >> out
 
+Booting from an SD card on RK3399
+=================================
+
+To write an image that boots from an SD card (assumed to be /dev/sdc):
+
+Option 1: Package the image with Rockchip miniloader:
+
+  - Create idbloader.img
+
+    => cd /path/to/u-boot
+    => ./tools/mkimage  -n rk3399 -T rksd -d /path/to/rkbin/bin/rk33/rk3399_ddr_800MHz_v1.20.bin idbloader.img
+    => cat /path/to/rkbin/bin/rk33/rk3399_miniloader_v1.19.bin >> idbloader.img
+
+  - Write idbloader.img at 64 sector
+
+    => sudo dd if=idbloader.img of=/dev/sdc seek=64
+
+  - Write trust.img at 24576
+
+    => sudo dd if=trust.img of=/dev/sdc seek=24576
+
+  - Write uboot.img at 16384 sector
+
+    => sudo dd if=uboot.img of=/dev/sdc seek=16384
+    => sync
+
+Put this SD (or micro-SD) card into your board and reset it. You should see
+something like:
+
+DDR Version 1.20 20190314
+In
+Channel 0: DDR3, 933MHz
+Bus Width=32 Col=10 Bank=8 Row=15 CS=1 Die Bus-Width=16 Size=1024MB
+no stride
+ch 0 ddrconfig = 0x101, ddrsize = 0x20
+pmugrf_os_reg[2] = 0x10006281, stride = 0x17
+OUT
+Boot1: 2019-03-14, version: 1.19
+CPUId = 0x0
+ChipType = 0x10, 239
+mmc: ERROR: SDHCI ERR:cmd:0x102,stat:0x18000
+mmc: ERROR: Card did not respond to voltage select!
+emmc reinit
+mmc: ERROR: SDHCI ERR:cmd:0x102,stat:0x18000
+mmc: ERROR: Card did not respond to voltage select!
+emmc reinit
+mmc: ERROR: SDHCI ERR:cmd:0x102,stat:0x18000
+mmc: ERROR: Card did not respond to voltage select!
+SdmmcInit=2 1
+mmc0:cmd5,20
+SdmmcInit=0 0
+BootCapSize=0
+UserCapSize=60543MB
+FwPartOffset=2000 , 0
+StorageInit ok = 45266
+SecureMode = 0
+SecureInit read PBA: 0x4
+SecureInit read PBA: 0x404
+SecureInit read PBA: 0x804
+SecureInit read PBA: 0xc04
+SecureInit read PBA: 0x1004
+SecureInit read PBA: 0x1404
+SecureInit read PBA: 0x1804
+SecureInit read PBA: 0x1c04
+SecureInit ret = 0, SecureMode = 0
+atags_set_bootdev: ret:(0)
+GPT 0x3380ec0 signature is wrong
+recovery gpt...
+GPT 0x3380ec0 signature is wrong
+recovery gpt fail!
+LoadTrust Addr:0x4000
+No find bl30.bin
+Load uboot, ReadLba = 2000
+hdr 0000000003380880 + 0x0:0x88,0x41,0x3e,0x97,0xe6,0x61,0x54,0x23,0xe9,0x5a,0xd1,0x2b,0xdc,0x2f,0xf9,0x35,
+
+Load OK, addr=0x200000, size=0x9c9c0
+RunBL31 0x10000
+NOTICE:  BL31: v1.3(debug):370ab80
+NOTICE:  BL31: Built : 09:23:41, Mar  4 2019
+NOTICE:  BL31: Rockchip release version: v1.1
+INFO:    GICv3 with legacy support detected. ARM GICV3 driver initialized in EL3
+INFO:    Using opteed sec cpu_context!
+INFO:    boot cpu mask: 0
+INFO:    plat_rockchip_pmu_init(1181): pd status 3e
+INFO:    BL31: Initializing runtime services
+INFO:    BL31: Initializing BL32
+INF [0x0] TEE-CORE:init_primary_helper:337: Initializing (1.1.0-195-g8f090d20 #6 Fri Dec  7 06:11:20 UTC 2018 aarch64)
+
+INF [0x0] TEE-CORE:init_primary_helper:338: Release version: 1.2
+
+INF [0x0] TEE-CORE:init_teecore:83: teecore inits done
+INFO:    BL31: Preparing for EL3 exit to normal world
+INFO:    Entry point address = 0x200000
+INFO:    SPSR = 0x3c9
+
+
+U-Boot 2019.04-rc4-00136-gfd121f9641-dirty (Apr 16 2019 - 14:02:47 +0530)
+
+Model: FriendlyARM NanoPi NEO4
+DRAM:  1022 MiB
+MMC:   dwmmc@fe310000: 2, dwmmc@fe320000: 1, sdhci@fe330000: 0
+Loading Environment from MMC... *** Warning - bad CRC, using default environment
+
+In:    serial@ff1a0000
+Out:   serial@ff1a0000
+Err:   serial@ff1a0000
+Model: FriendlyARM NanoPi NEO4
+Net:   eth0: ethernet@fe300000
+Hit any key to stop autoboot:  0
+=>
+
+Option 2: Package the image with SPL:
+
+  - Prefix rk3399 header to SPL image
+
+    => cd /path/to/u-boot
+    => ./tools/mkimage -n rk3399 -T rksd -d spl/u-boot-spl-dtb.bin out
+
+  - Write prefixed SPL at 64th sector
+
+    => sudo dd if=out of=/dev/sdc seek=64
+
+  - Write U-Boot proper at 16384 sector
+
+    => sudo dd if=u-boot.itb of=/dev/sdc seek=16384
+    => sync
+
+Put this SD (or micro-SD) card into your board and reset it. You should see
+something like:
+
+U-Boot SPL board init
+Trying to boot from MMC1
+
+
+U-Boot 2019.01-00004-g14db5ee998 (Mar 11 2019 - 13:18:41 +0530)
+
+Model: Orange Pi RK3399 Board
+DRAM:  2 GiB
+MMC:   dwmmc@fe310000: 2, dwmmc@fe320000: 1, sdhci@fe330000: 0
+Loading Environment from MMC... OK
+In:    serial@ff1a0000
+Out:   serial@ff1a0000
+Err:   serial@ff1a0000
+Model: Orange Pi RK3399 Board
+Net:   eth0: ethernet@fe300000
+Hit any key to stop autoboot:  0
+=>
 
 Using fastboot on rk3288
 ========================
@@ -385,5 +614,7 @@ There are some documents about partitions in the links below.
 http://rockchip.wikidot.com/partitions
 
 --
+Jagan Teki <jagan@amarulasolutions.com>
+27 Mar 2019
 Simon Glass <sjg@chromium.org>
 24 June 2015
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

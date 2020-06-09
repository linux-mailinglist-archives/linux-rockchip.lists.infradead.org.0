Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E6BB1F3D8F
	for <lists+linux-rockchip@lfdr.de>; Tue,  9 Jun 2020 16:05:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bE1DBhbQqAyeKdxpy3NgB6/qbG5anBPKit7arWdYlAo=; b=dK7GKrM9AI8Lh/
	n7y6xo823poscRL2O5f1IZy9kaWmad/St+fwSThbJHnDF9zHCUIs519iUJoU18jUs23yY6yxTh/Xe
	4tne34Ihs/3Qs2ft4Aw8xsmp2PRNCwoltQBXD6lg4i3TV3T6Qe7gdRM8g8iMZ++FsPmqxWhTRS/A6
	sujrfLUu9wSjhdb5Zbj+CKLYy/Nd2lCMovMHZYPtSY4C/f7o0T1VxNRjStX6QxkppKo54FyvaMFQp
	6yoddGM772TVc3VL0ppm6voe4w7s41t2NTwDUEU3Um4y8xDMR7w1dfkg9d1hP8jFtRu6tOdlonA7/
	w2qJu4mPYA++4WzZfKYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiesi-00018h-Rn; Tue, 09 Jun 2020 14:05:36 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiesf-00018J-H1
 for linux-rockchip@lists.infradead.org; Tue, 09 Jun 2020 14:05:34 +0000
Received: by mail-pg1-x541.google.com with SMTP id r10so10332569pgv.8
 for <linux-rockchip@lists.infradead.org>; Tue, 09 Jun 2020 07:05:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ydfIA3jg12tx+Lzfbo4klwL95OwxMw4oe6fuWc3p+0U=;
 b=gRuTPJoR4T42t7PMBMm8bhA2mnBWMM6PGTRnkFpSBTKR0NgoR8LKhXOzO2GV/zvWkP
 ZCI304cAoYDS/CDL1vReGAYZ4oKVvZNF2xK0wk3j+Au7ccxWgra/60QXLXfB0vpoKhkr
 oDjYGHxohwUt1nKtBh/jYhyys1+UUG2hyY2hQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ydfIA3jg12tx+Lzfbo4klwL95OwxMw4oe6fuWc3p+0U=;
 b=ttez9PHvyCq1A+n2DshMAntPJqPnmPX/JsDfqCtqF6pTVJLPaHl73zWkuXB7xq8Mz7
 4Ju4JRazB4wqdmLuo2SwJnCSZkCRXKf0QESHLHrZ13jA2crdQbltLtaQFg8g9oBS3jAR
 3wdUPjYoq1F9fvKUk3SEyYcYg6E63sanbHHuRJ35hjegMq2zvzN7NvFn5Z+3jyM65cW6
 Ynt/tjhguSCbPFpFgNlWqWHSlg1eclVZ8Qg8UpPU4/sowVNE9HRoDtpuY0+TsYCTPAXL
 a9dOe+Z1VPJPbgKGcSnCayDow+3h7G7AXLcuqiPUu+zdqftdYAgr00yODRQqrJ9fekTC
 k5mg==
X-Gm-Message-State: AOAM533GKGpydWuUTDk9rHndUsTmo3axB2nwma7SQ4f/08o+lR3fRjvT
 uTDBsSCNo+fa/xLSsgD8kMK1VdzJl9Mj3g==
X-Google-Smtp-Source: ABdhPJzTUqlFueUdKTKSpDnsBubk++TuXwG0CguR/PcHa4K/vWpI3IlhalkxOEfw/fSvc4vAmNlt5w==
X-Received: by 2002:aa7:9052:: with SMTP id n18mr27072700pfo.319.1591711532581; 
 Tue, 09 Jun 2020 07:05:32 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:6575:fcd2:e4d4:715a])
 by smtp.gmail.com with ESMTPSA id e12sm8961817pgi.40.2020.06.09.07.05.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Jun 2020 07:05:30 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Simon Glass <sjg@chromium.org>
Subject: [PATCH 1/3] rock-pi-4: Enable USB3 Host
Date: Tue,  9 Jun 2020 19:35:12 +0530
Message-Id: <20200609140514.132579-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_070533_562705_4D290606 
X-CRM114-Status: UNSURE (   5.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
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
Cc: linux-rockchip@lists.infradead.org, Tom Cubie <tom@radxa.com>,
 U-Boot-Denx <u-boot@lists.denx.de>, Jagan Teki <jagan@amarulasolutions.com>,
 Suniel Mahesh <sunil@amarulasolutions.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Enable USB3.0 Host support for RockPI-4 boards.

Note that the Upper USB3.0 port is marked as otg and
lower USB3.0 port marked as host, so this below log
capture when USB3.0 mass storage plug in at lower
USB 3.0 port.

Log:
Bus usb@fe380000: USB EHCI 1.00
Bus usb@fe3c0000: USB EHCI 1.00
Bus dwc3: usb maximum-speed not found
Register 2000140 NbrPorts 2
Starting the controller
USB XHCI 1.10
Bus dwc3: usb maximum-speed not found
Register 2000140 NbrPorts 2
Starting the controller
USB XHCI 1.10
scanning bus usb@fe380000 for devices... 1 USB Device(s) found
scanning bus usb@fe3c0000 for devices... 1 USB Device(s) found
scanning bus dwc3 for devices... 1 USB Device(s) found
scanning bus dwc3 for devices... cannot reset port 1!?
2 USB Device(s) found
       scanning usb for storage devices... 1 Storage Device(s) found
=> usb tree
USB device tree:
  1  Hub (480 Mb/s, 0mA)
     u-boot EHCI Host Controller

  1  Hub (480 Mb/s, 0mA)
     u-boot EHCI Host Controller

  1  Hub (5 Gb/s, 0mA)
     U-Boot XHCI Host Controller

  1  Hub (5 Gb/s, 0mA)
  |  U-Boot XHCI Host Controller
  |
  +-2  Mass Storage (5 Gb/s, 224mA)
       SanDisk Dual Drive 040130e3ee554b7078843f4eb331646

Cc: Tom Cubie <tom@radxa.com>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 configs/rock-pi-4-rk3399_defconfig | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/configs/rock-pi-4-rk3399_defconfig b/configs/rock-pi-4-rk3399_defconfig
index 0d86fdc895..2487872219 100644
--- a/configs/rock-pi-4-rk3399_defconfig
+++ b/configs/rock-pi-4-rk3399_defconfig
@@ -28,6 +28,7 @@ CONFIG_ENV_IS_IN_MMC=y
 CONFIG_SYS_RELOC_GD_ENV_ADDR=y
 CONFIG_ROCKCHIP_GPIO=y
 CONFIG_SYS_I2C_ROCKCHIP=y
+CONFIG_MISC=y
 CONFIG_MMC_DW=y
 CONFIG_MMC_DW_ROCKCHIP=y
 CONFIG_MMC_SDHCI=y
@@ -35,11 +36,14 @@ CONFIG_MMC_SDHCI_ROCKCHIP=y
 CONFIG_DM_ETH=y
 CONFIG_ETH_DESIGNWARE=y
 CONFIG_GMAC_ROCKCHIP=y
+CONFIG_PHY_ROCKCHIP_INNO_USB2=y
+CONFIG_PHY_ROCKCHIP_TYPEC=y
 CONFIG_PMIC_RK8XX=y
 CONFIG_REGULATOR_PWM=y
 CONFIG_REGULATOR_RK8XX=y
 CONFIG_PWM_ROCKCHIP=y
 CONFIG_RAM_RK3399_LPDDR4=y
+CONFIG_DM_RESET=y
 CONFIG_BAUDRATE=1500000
 CONFIG_DEBUG_UART_SHIFT=2
 CONFIG_SYSRESET=y
@@ -48,6 +52,8 @@ CONFIG_USB_XHCI_HCD=y
 CONFIG_USB_XHCI_DWC3=y
 CONFIG_USB_EHCI_HCD=y
 CONFIG_USB_EHCI_GENERIC=y
+CONFIG_USB_DWC3=y
+CONFIG_USB_DWC3_GENERIC=y
 CONFIG_USB_HOST_ETHER=y
 CONFIG_USB_ETHER_ASIX=y
 CONFIG_USB_ETHER_ASIX88179=y
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

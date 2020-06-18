Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6B2D1FF459
	for <lists+linux-rockchip@lfdr.de>; Thu, 18 Jun 2020 16:13:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RorH+jPp4Ffh21WWHCbzqBIdJ/ionYwnrWndFJmuwU0=; b=QiC4pCz3EDnVUj
	w1w60TFCQ4XGLW3yB8PuQaMtKMekGG8R/LVHxheHFGueqDGY4Kwwf1My5Hupk4ON0o0N/6liLY8Ju
	5JJtkWiQF/DpG0Ym9eMSd1VSPE+U0Sog29mSFSwGo4VyI58VE53uVw9kKrq/OsKWNjg2QA1gDREE8
	n94WOJNjkOYqmwsOBscThAqTr+58uX0xKOXR29IjdOynhBGuEyWnvJBYua3PDZd5Pe/eiBTTgtMqE
	tC9LVwWZer2LW2VKT7Pa0FtovCuatCZnRtkJ2CNdLFbDxgbBNAlWkySTEiztMf8nd8kwnO9/yc+jd
	/5wMTkTF9khVQpBOwJRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlvI3-00077a-Tl; Thu, 18 Jun 2020 14:13:15 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlvI0-000779-BR
 for linux-rockchip@lists.infradead.org; Thu, 18 Jun 2020 14:13:14 +0000
Received: by mail-pl1-x644.google.com with SMTP id x11so2487267plo.7
 for <linux-rockchip@lists.infradead.org>; Thu, 18 Jun 2020 07:13:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=3oGKs23a93g8dSTZ3PSJDUOIgDA5dI03hvG0yMAmu9c=;
 b=N/kjHZ5EHpF6XzrNy06DD+tKAwgmKKUvBanmKJapsc17Z0TuDF+zGG6xLDK5QLV637
 oY82Jt9+UF0nrd+p2mOuPqut3Wx0/k42et3emYa5pDdUNjhVgFcY5ryvLR0SQY6KLqzA
 WBPOXEJvxCGkaBWbo7pqhdzLXvibfDgofg5ig=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=3oGKs23a93g8dSTZ3PSJDUOIgDA5dI03hvG0yMAmu9c=;
 b=m/cPhRzcd9OwfHqo3jRqYQIzJYO3OktMJ+Qb4BcimAGbckGryUVbV5NmSITbPzudF4
 itcZkEvQwnfdf14UGU7fcSbWzJfcJhS1J5+GtGTuBOzBOUkjJ9wHdEqzVazslg9Ih4Af
 a6wwbJziGFJoe8NmCWJ/a5ve/fEaaM6l45fQwl8CH0M4NqXIVXXZy7IvKuCJucbKaid8
 8vzpPpCo8MYTk4OFlqUxwylegC83Sc1sXOGoVLAEPApOS7PCxqhgoka8SQcoVPWV//8g
 IJ7Hoy10JAzd8Uv0/+Jg5XAGg1IV0l6WqXdyIiD291SnTt32cbWiWOoFLMW47yxC2AdR
 rtBA==
X-Gm-Message-State: AOAM533eGGZ2VL4KxsNRs6HIUIiPORB12MEvm61KYcwYRWGy+Ptmd1MH
 4CmElSs0U8Gc8gCUmgauCPF9rw==
X-Google-Smtp-Source: ABdhPJx1J9oX3zIOPNz0UHzfcL/oeKzfF0rtK12Q5DV5wyeqlQXmtklEiIRGkZFZoGhlDnif5C0+6A==
X-Received: by 2002:a17:90b:4c0f:: with SMTP id
 na15mr4473249pjb.112.1592489591483; 
 Thu, 18 Jun 2020 07:13:11 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:b0c7:f192:869b:df87])
 by smtp.gmail.com with ESMTPSA id p6sm3340540pfb.152.2020.06.18.07.13.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Jun 2020 07:13:10 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Simon Glass <sjg@chromium.org>
Subject: [PATCH v2 1/6] rock-pi-4: Enable USB3 Host
Date: Thu, 18 Jun 2020 19:42:54 +0530
Message-Id: <20200618141259.155581-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_071312_820711_8AB1E827 
X-CRM114-Status: UNSURE (   6.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Changes for v2:
- rebase on master

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

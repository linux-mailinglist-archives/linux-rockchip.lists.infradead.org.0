Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B17B1FF45B
	for <lists+linux-rockchip@lfdr.de>; Thu, 18 Jun 2020 16:13:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wevwdTl3S3Gx8ftoJpImvYatOa7Qh8RncCiI4zHXgwg=; b=RfwHeNQRg2eYT7
	a+LFifTwUtOYK9MKNRAW1i/utI2EBkSi778CGWMp/6ZvFzkF/0c19zQ6UrRdSmk792Qn7IfAApb4E
	6Ez7tf5tfsey7QZj6KB4Dk1K4YmefNwWWrjwwua2Nb+eTs6cstDtijIDvFwlVcBk0t5ttK0YPMu6A
	AH1yQ/BDlSqJBSnSy9S/yUkF3iRYeIZ7RDOPsR4fjoTsXGfafkeOaZBHmhhxC+pP3eezPfGnH/06X
	BOLv9zsClhSNbQk+Y/TqJAOZi40iaWVzLCUnlKfGkCzs/l4KfbbDnNtoOdojibVK3nZ0X6piT7DO+
	aJHKI3g2A7iZRzoh98Ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlvIC-0007DS-Pb; Thu, 18 Jun 2020 14:13:24 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlvI8-0007Aw-Gg
 for linux-rockchip@lists.infradead.org; Thu, 18 Jun 2020 14:13:22 +0000
Received: by mail-pf1-x443.google.com with SMTP id s23so2842104pfh.7
 for <linux-rockchip@lists.infradead.org>; Thu, 18 Jun 2020 07:13:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=vaMVqTd6Q7hkQ2VrkV31UikLUkol1PdHrK1DqBlVFmc=;
 b=ECVcj5vWbh4yPaPmPxmmb6PLD3BeNz3yriUuG4tSAIKszX3InMpu3ItHPYA4PrzGur
 fD1yq9qlqilRwHeHdW+sn8gQi5sHuhgX/45yg5Ga9NmLbVfwTvn0bXzBYJB/XLY31jwG
 BUbNyJMVhrnHk+oz/BTGl+b/5TOoNia16Z/oY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=vaMVqTd6Q7hkQ2VrkV31UikLUkol1PdHrK1DqBlVFmc=;
 b=fZ6+P/5hBjGGXFlOBLhvZCPQzMoj0JZ2SgJq0AJ2HHwpeMW5FsguVTlkQbD/h415Ho
 dok247atycHbAQVw5lx6cmAj4EyOHHFV2PqFO2ukg9SbdO3ZBqhABkrr4y2irfoheCgO
 ARuNB1koGZ9gFpzShUXt3RcToQxB8T3W8qBuGDy64Hdle7cElF6DHKCKiOWUiBeN2mEV
 E5JsKCNGX2dGiB43X7LXa1n21dx8bfbipWas2Z9n5lycZlyHZXiVIZdnyKeflTGccUW4
 if0nMdIGT60iv8iuBDGFXY3VuQWSDhVJalQEcQYfixPCyw9tLy9RDvNvB9JrSxfNNU+w
 GY+A==
X-Gm-Message-State: AOAM532TYYgK4Hn0OkU3vO7tnGUI4FaACVsV+/R4TsnNemSkSpcJyr2p
 12kxeYN8Ab15Tn5/l1K+dpqT3WnFEc3Vcg==
X-Google-Smtp-Source: ABdhPJw2fRO8zujhvIuwitF6zClWsl1AFoFGF4F3Fm/c6ZD4cyj015rlf7zww6KNsb3eUOdR4HIqMw==
X-Received: by 2002:a05:6a00:807:: with SMTP id
 m7mr3911953pfk.246.1592489599666; 
 Thu, 18 Jun 2020 07:13:19 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:b0c7:f192:869b:df87])
 by smtp.gmail.com with ESMTPSA id p6sm3340540pfb.152.2020.06.18.07.13.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Jun 2020 07:13:18 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Simon Glass <sjg@chromium.org>
Subject: [PATCH v2 3/6] rock-pi-4: Enable USB Gadget
Date: Thu, 18 Jun 2020 19:42:56 +0530
Message-Id: <20200618141259.155581-3-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618141259.155581-1-jagan@amarulasolutions.com>
References: <20200618141259.155581-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_071320_550307_D08B9F04 
X-CRM114-Status: UNSURE (   8.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
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
Cc: U-Boot-Denx <u-boot@lists.denx.de>, linux-rockchip@lists.infradead.org,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 Jagan Teki <jagan@amarulasolutions.com>,
 Suniel Mahesh <sunil@amarulasolutions.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Enable USB gadget for rock-pi-4 boards.

This would help to use fastboot by default.

Note: Connect the Host USB cable (Port A or C) to rock-pi-4
Upper USB 3.0 port.

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
 configs/rock-pi-4-rk3399_defconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/configs/rock-pi-4-rk3399_defconfig b/configs/rock-pi-4-rk3399_defconfig
index f3eeef0293..a4b322074c 100644
--- a/configs/rock-pi-4-rk3399_defconfig
+++ b/configs/rock-pi-4-rk3399_defconfig
@@ -8,6 +8,7 @@ CONFIG_NR_DRAM_BANKS=1
 CONFIG_DEBUG_UART_BASE=0xFF1A0000
 CONFIG_DEBUG_UART_CLOCK=24000000
 CONFIG_DEBUG_UART=y
+# CONFIG_ANDROID_BOOT_IMAGE is not set
 CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-rock-pi-4.dtb"
 CONFIG_MISC_INIT_R=y
 CONFIG_DISPLAY_BOARDINFO_LATE=y
@@ -57,6 +58,7 @@ CONFIG_USB_EHCI_HCD=y
 CONFIG_USB_EHCI_GENERIC=y
 CONFIG_USB_DWC3=y
 CONFIG_USB_DWC3_GENERIC=y
+CONFIG_USB_GADGET=y
 CONFIG_USB_HOST_ETHER=y
 CONFIG_USB_ETHER_ASIX=y
 CONFIG_USB_ETHER_ASIX88179=y
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F28B1FF45D
	for <lists+linux-rockchip@lfdr.de>; Thu, 18 Jun 2020 16:13:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZyF89QSNw2KkA6vom///70Z58WHJqSRbOWN9tncPkvs=; b=CL+RA5QsQJhRAV
	oFZFWlXeK+jykzdjEipzNumsoLcP/60ZrkjscSG5RolHAFtcg6Z9Iu7r2CscbAY210Uug3/YqZJm5
	RNFhtBjiXRDG1wrpYhNc4xgcLCIJ+E5zM/D+6IZJlyUvITWVqfxYP3j71n+SQ63/NmtCArUAp2/yT
	shDF7acEPwI3jq3aPm/3hLayOjPS1mc8J0ZkY+EU8utISWk8QlSt5GNP5wyFIVhUqwiCwbYsiRghN
	Z2qs2r5KOyWFWoUWwLZMwLKy8vmDxBuMR7eGCVzhEO/nFqK0ijXDdjIv7yiM4KKIs/6iEMtguh5VT
	gEN4UiZWWpjIPFYwnWQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlvIJ-0007JL-SH; Thu, 18 Jun 2020 14:13:31 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlvIG-0007H0-1Z
 for linux-rockchip@lists.infradead.org; Thu, 18 Jun 2020 14:13:29 +0000
Received: by mail-pf1-x441.google.com with SMTP id j1so2856015pfe.4
 for <linux-rockchip@lists.infradead.org>; Thu, 18 Jun 2020 07:13:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=3f7gYn6jD9fjt6ff1Ev21D9MzGvrCJFMXPDuvBapbgI=;
 b=RH/08qro8wvwaHNP30c+BDd66lePPKp9PJuioFY6YD0BLZHaULfZUb4TwgoymTtWhV
 TNxnPQshSCB9Ovkjk2pzQisNRN11vZPXZGcSizNvtFGUlFLRUuxFBDnEvMTImoxKtbS5
 jETgaEdsTHne2bcX5P8h46/5L21SNbU6iKfHc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=3f7gYn6jD9fjt6ff1Ev21D9MzGvrCJFMXPDuvBapbgI=;
 b=Y0h7wyRfNEacOAU+ZPEsKpROTECfgNJvZNxkUcWwCeGf0Ps95cKF9dVdJqEFUpMd72
 GyafD33NqzlLDFFOiMCrOMuoqHhKUWexBQmUduWtPLx+m/K6Y7lyUqH1WxM0u1vxlD9t
 xrtRiiX+q+ZKAVOoX+KxWCtvnsTOf/on5ZJVklXJ41BOuQfLhspWW4ui7qShTpXM5bd7
 Ob1lBm1F7QFEm2gJ3eMHbzlWjqnJU6+xgg7jLGyqHUOoXiN56chxbZ4ziuVHFYLV7/d5
 VvGUxa7aglX2ABo00ppU2ZVFOHUcMpkXeJ9DUzs3GWelrweD/cNFhojEmOiM8+99acXs
 L7ag==
X-Gm-Message-State: AOAM531Bv07P5ZcY+EC8sXXfMJ5LeC6jLYZKzCZW8vTnWumyBbVWcbPm
 HHT4CLDjH+FHJtBYZGDGQeld/A==
X-Google-Smtp-Source: ABdhPJw8YzASN3EN5q+/AFu7wyDwCGXFUBy4uUv+s4STbZWZ+FLadMrKwyKtgLleby14NwuzFaaGzg==
X-Received: by 2002:a63:f1a:: with SMTP id e26mr996586pgl.80.1592489607416;
 Thu, 18 Jun 2020 07:13:27 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:b0c7:f192:869b:df87])
 by smtp.gmail.com with ESMTPSA id p6sm3340540pfb.152.2020.06.18.07.13.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Jun 2020 07:13:26 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Simon Glass <sjg@chromium.org>
Subject: [PATCH v2 5/6] roc-rk3399-pc: Enable USB Gadget
Date: Thu, 18 Jun 2020 19:42:58 +0530
Message-Id: <20200618141259.155581-5-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618141259.155581-1-jagan@amarulasolutions.com>
References: <20200618141259.155581-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_071328_093730_56053AAA 
X-CRM114-Status: UNSURE (   8.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
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

Enable DWC3 core, gadget for roc-rk3399-pc board.

This would help to use fastboot by default.

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
 configs/roc-pc-mezzanine-rk3399_defconfig | 3 +++
 configs/roc-pc-rk3399_defconfig           | 3 +++
 2 files changed, 6 insertions(+)

diff --git a/configs/roc-pc-mezzanine-rk3399_defconfig b/configs/roc-pc-mezzanine-rk3399_defconfig
index fd1b85c1e4..7906948374 100644
--- a/configs/roc-pc-mezzanine-rk3399_defconfig
+++ b/configs/roc-pc-mezzanine-rk3399_defconfig
@@ -12,6 +12,7 @@ CONFIG_DEBUG_UART_CLOCK=24000000
 CONFIG_SPL_SPI_FLASH_SUPPORT=y
 CONFIG_SPL_SPI_SUPPORT=y
 CONFIG_DEBUG_UART=y
+# CONFIG_ANDROID_BOOT_IMAGE is not set
 CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-roc-pc-mezzanine.dtb"
 CONFIG_DISPLAY_BOARDINFO_LATE=y
 # CONFIG_SPL_RAW_IMAGE_SUPPORT is not set
@@ -64,7 +65,9 @@ CONFIG_USB_EHCI_HCD=y
 CONFIG_USB_EHCI_GENERIC=y
 CONFIG_USB_DWC3=y
 CONFIG_USB_DWC3_GENERIC=y
+CONFIG_ROCKCHIP_USB2_PHY=y
 CONFIG_USB_KEYBOARD=y
+CONFIG_USB_GADGET=y
 CONFIG_USB_HOST_ETHER=y
 CONFIG_USB_ETHER_ASIX=y
 CONFIG_USB_ETHER_ASIX88179=y
diff --git a/configs/roc-pc-rk3399_defconfig b/configs/roc-pc-rk3399_defconfig
index 80e7001481..046fb73858 100644
--- a/configs/roc-pc-rk3399_defconfig
+++ b/configs/roc-pc-rk3399_defconfig
@@ -12,6 +12,7 @@ CONFIG_DEBUG_UART_CLOCK=24000000
 CONFIG_SPL_SPI_FLASH_SUPPORT=y
 CONFIG_SPL_SPI_SUPPORT=y
 CONFIG_DEBUG_UART=y
+# CONFIG_ANDROID_BOOT_IMAGE is not set
 CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-roc-pc.dtb"
 CONFIG_DISPLAY_BOARDINFO_LATE=y
 # CONFIG_SPL_RAW_IMAGE_SUPPORT is not set
@@ -61,7 +62,9 @@ CONFIG_USB_EHCI_HCD=y
 CONFIG_USB_EHCI_GENERIC=y
 CONFIG_USB_DWC3=y
 CONFIG_USB_DWC3_GENERIC=y
+CONFIG_ROCKCHIP_USB2_PHY=y
 CONFIG_USB_KEYBOARD=y
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

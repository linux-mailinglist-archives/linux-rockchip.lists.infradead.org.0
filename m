Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 611BA101D34
	for <lists+linux-rockchip@lfdr.de>; Tue, 19 Nov 2019 09:26:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H3sQOzDJVuaDqLtnic3F2innWc560lvmFtWHropoSCE=; b=rHY16uKZUj9fNy
	OAxoVeGW/UPkM1TF+BVndJ6cgcbIoUMwgP5R8qOHq8gMsAOlT6ToulmkQbwZE56rmN92icF/keBw3
	6zokYQqWGSQu9BZkya3X/2ekuOQsxsvGJ4fBuDu3TiEb1hEy9JHrWB7vBDfzLg2Jsw/Mj/0Ku7XWy
	jVAuJQ7M+xHY9TaeELtH5VEUBApfjSc3nkp+CLxbQAYxSK2Bdmey6f7fIMl/HVg/CVmGKkkmsfVRV
	mIgsoq1Wm1r89RmMACxdGmHMoX3O7u4u6o6b/pDTstuHGSc7zSR4t/gjIcR8hOIuPciOQmcf2kq5Q
	sHUlDhwtjqZ+1vym82hA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWyqU-0001gY-EB; Tue, 19 Nov 2019 08:26:46 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWyqO-0001e2-Ks
 for linux-rockchip@lists.infradead.org; Tue, 19 Nov 2019 08:26:44 +0000
Received: by mail-pg1-x544.google.com with SMTP id b1so1505112pgq.10
 for <linux-rockchip@lists.infradead.org>; Tue, 19 Nov 2019 00:26:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=31T9LySzCPlpUq5lEEELkUot8yqL39B+l57TFVtFUMU=;
 b=DikEjt9z2URq08bEvIyvApbF7Ea9wn8axOObumpzouHAMHwxYsdhL64NVRGoICXJRm
 EAewrHo31AP3WSALGZXxZxUiPun6wdzmECTyGfR7Us1D1Sc43gCd+LwWholuIU053xY6
 s2c8DyszpYYn3wNyHTkCQvipckHXAAhoBVEBM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=31T9LySzCPlpUq5lEEELkUot8yqL39B+l57TFVtFUMU=;
 b=qJXltCZLBhk9QwFTxVmNEe2I7dfmywIdo0FA6+dcrGpJm4ZP5Pw31gBvQwkp9c5DCP
 JyMOH+Nr+MXyDQ2JB9EA4EQ6hZhczdUa0e3OS77K4MA/xr0IuVUe3ljoElzJuqwnWhMy
 +rmE3z0AIv/XQTzXAC0AX3l20sx+V3q5ZkEik8JPKwwIqyne/EKbYUB7x9XLGFxRVHmx
 r76WFjuiGkaxTlOXmctRTzrLbBf0T2aBQ1BOAO8wu564BEYQMo+d8nlvjathsIeaBbR0
 mYX5rqmQ/EsBnBtGJtgyVE4nIpsgI7ufhuxy8wySvd3FxV8xWTYSO3wulp3N4YYTIgAn
 h/Fw==
X-Gm-Message-State: APjAAAU3/bjX8IPerSWgWw0x0RVG97w0lWnReU4UldVIWtkZOnOv6DHC
 cB3pZh/kPDpB6Ua0teG+RS5OVZmy6O/MSw==
X-Google-Smtp-Source: APXvYqyw2xlhmei361Ka7rEIHWEa9pqTFvG2D1bIUKMzjIr6MYvDBwMk6L7SqEu6RGa1BXYr8Yk1dw==
X-Received: by 2002:a63:5c46:: with SMTP id n6mr4096255pgm.75.1574151996395;
 Tue, 19 Nov 2019 00:26:36 -0800 (PST)
Received: from localhost.localdomain ([115.97.180.31])
 by smtp.gmail.com with ESMTPSA id u7sm2312221pjx.19.2019.11.19.00.26.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 Nov 2019 00:26:35 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH v2 01/10] gadget: Select USB_GADGET_MANUFACTURER for rockchip
Date: Tue, 19 Nov 2019 13:56:14 +0530
Message-Id: <20191119082623.6165-2-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191119082623.6165-1-jagan@amarulasolutions.com>
References: <20191119082623.6165-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_002640_690022_AE5E0005 
X-CRM114-Status: GOOD (  10.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
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

Select the gadget manufacturer as 'Rockchip' for
all rockchip platform SoC's.

This eventually drop the explicit defined added
on supported board defconfig files.

Tested-by: Levin Du <djw@t-chip.com.cn>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 configs/elgin-rv1108_defconfig    | 1 -
 configs/evb-rk3036_defconfig      | 1 -
 configs/evb-rk3229_defconfig      | 1 -
 configs/evb-rk3288_defconfig      | 1 -
 configs/evb-rk3328_defconfig      | 1 -
 configs/evb-rv1108_defconfig      | 1 -
 configs/firefly-rk3288_defconfig  | 1 -
 configs/kylin-rk3036_defconfig    | 1 -
 configs/miqi-rk3288_defconfig     | 1 -
 configs/phycore-rk3288_defconfig  | 1 -
 configs/popmetal-rk3288_defconfig | 1 -
 configs/rock2_defconfig           | 1 -
 configs/rock64-rk3328_defconfig   | 1 -
 configs/tinker-rk3288_defconfig   | 1 -
 configs/tinker-s-rk3288_defconfig | 1 -
 configs/vyasa-rk3288_defconfig    | 1 -
 drivers/usb/gadget/Kconfig        | 1 +
 17 files changed, 1 insertion(+), 16 deletions(-)

diff --git a/configs/elgin-rv1108_defconfig b/configs/elgin-rv1108_defconfig
index b3d8d28bea..c9d703a0f5 100644
--- a/configs/elgin-rv1108_defconfig
+++ b/configs/elgin-rv1108_defconfig
@@ -49,7 +49,6 @@ CONFIG_USB_OHCI_HCD=y
 CONFIG_USB_OHCI_GENERIC=y
 CONFIG_USB_DWC2=y
 CONFIG_USB_GADGET=y
-CONFIG_USB_GADGET_MANUFACTURER="Rockchip"
 CONFIG_USB_GADGET_VENDOR_NUM=0x2207
 CONFIG_USB_GADGET_PRODUCT_NUM=0x110a
 CONFIG_USB_GADGET_DWC2_OTG=y
diff --git a/configs/evb-rk3036_defconfig b/configs/evb-rk3036_defconfig
index 5dd5f43f7c..c9882ded98 100644
--- a/configs/evb-rk3036_defconfig
+++ b/configs/evb-rk3036_defconfig
@@ -52,7 +52,6 @@ CONFIG_SYSRESET=y
 # CONFIG_SPL_SYSRESET is not set
 CONFIG_USB=y
 CONFIG_USB_GADGET=y
-CONFIG_USB_GADGET_MANUFACTURER="Rockchip"
 CONFIG_USB_GADGET_VENDOR_NUM=0x2207
 CONFIG_USB_GADGET_PRODUCT_NUM=0x310a
 CONFIG_USB_GADGET_DWC2_OTG=y
diff --git a/configs/evb-rk3229_defconfig b/configs/evb-rk3229_defconfig
index 745fdd1c0f..38b2660fb3 100644
--- a/configs/evb-rk3229_defconfig
+++ b/configs/evb-rk3229_defconfig
@@ -64,7 +64,6 @@ CONFIG_DEBUG_UART_SHIFT=2
 CONFIG_SYSRESET=y
 CONFIG_USB=y
 CONFIG_USB_GADGET=y
-CONFIG_USB_GADGET_MANUFACTURER="Rockchip"
 CONFIG_USB_GADGET_VENDOR_NUM=0x2207
 CONFIG_USB_GADGET_PRODUCT_NUM=0x320a
 CONFIG_USB_GADGET_DWC2_OTG=y
diff --git a/configs/evb-rk3288_defconfig b/configs/evb-rk3288_defconfig
index c2a78bd065..12d454b410 100644
--- a/configs/evb-rk3288_defconfig
+++ b/configs/evb-rk3288_defconfig
@@ -71,7 +71,6 @@ CONFIG_USB=y
 CONFIG_USB_DWC2=y
 CONFIG_ROCKCHIP_USB2_PHY=y
 CONFIG_USB_GADGET=y
-CONFIG_USB_GADGET_MANUFACTURER="Rockchip"
 CONFIG_USB_GADGET_VENDOR_NUM=0x2207
 CONFIG_USB_GADGET_PRODUCT_NUM=0x320a
 CONFIG_USB_GADGET_DWC2_OTG=y
diff --git a/configs/evb-rk3328_defconfig b/configs/evb-rk3328_defconfig
index a59dab4853..8f97ef2c34 100644
--- a/configs/evb-rk3328_defconfig
+++ b/configs/evb-rk3328_defconfig
@@ -86,7 +86,6 @@ CONFIG_USB_DWC2=y
 CONFIG_USB_DWC3=y
 # CONFIG_USB_DWC3_GADGET is not set
 CONFIG_USB_GADGET=y
-CONFIG_USB_GADGET_MANUFACTURER="Rockchip"
 CONFIG_USB_GADGET_VENDOR_NUM=0x2207
 CONFIG_USB_GADGET_PRODUCT_NUM=0x330a
 CONFIG_USB_GADGET_DWC2_OTG=y
diff --git a/configs/evb-rv1108_defconfig b/configs/evb-rv1108_defconfig
index 037715cbc0..18bc6529ac 100644
--- a/configs/evb-rv1108_defconfig
+++ b/configs/evb-rv1108_defconfig
@@ -44,7 +44,6 @@ CONFIG_USB_OHCI_HCD=y
 CONFIG_USB_OHCI_GENERIC=y
 CONFIG_USB_DWC2=y
 CONFIG_USB_GADGET=y
-CONFIG_USB_GADGET_MANUFACTURER="Rockchip"
 CONFIG_USB_GADGET_VENDOR_NUM=0x2207
 CONFIG_USB_GADGET_PRODUCT_NUM=0x110a
 CONFIG_USB_GADGET_DWC2_OTG=y
diff --git a/configs/firefly-rk3288_defconfig b/configs/firefly-rk3288_defconfig
index 65e839214c..fa3715cf7e 100644
--- a/configs/firefly-rk3288_defconfig
+++ b/configs/firefly-rk3288_defconfig
@@ -75,7 +75,6 @@ CONFIG_USB_DWC2=y
 CONFIG_ROCKCHIP_USB2_PHY=y
 CONFIG_USB_KEYBOARD=y
 CONFIG_USB_GADGET=y
-CONFIG_USB_GADGET_MANUFACTURER="Rockchip"
 CONFIG_USB_GADGET_VENDOR_NUM=0x2207
 CONFIG_USB_GADGET_PRODUCT_NUM=0x320a
 CONFIG_USB_GADGET_DWC2_OTG=y
diff --git a/configs/kylin-rk3036_defconfig b/configs/kylin-rk3036_defconfig
index 1906d1d93f..4fc0c3e491 100644
--- a/configs/kylin-rk3036_defconfig
+++ b/configs/kylin-rk3036_defconfig
@@ -56,7 +56,6 @@ CONFIG_SYSRESET=y
 CONFIG_USB=y
 CONFIG_USB_DWC2=y
 CONFIG_USB_GADGET=y
-CONFIG_USB_GADGET_MANUFACTURER="Rockchip"
 CONFIG_USB_GADGET_VENDOR_NUM=0x2207
 CONFIG_USB_GADGET_PRODUCT_NUM=0x310a
 CONFIG_USB_GADGET_DWC2_OTG=y
diff --git a/configs/miqi-rk3288_defconfig b/configs/miqi-rk3288_defconfig
index 30b05ecf44..c007c90a90 100644
--- a/configs/miqi-rk3288_defconfig
+++ b/configs/miqi-rk3288_defconfig
@@ -71,7 +71,6 @@ CONFIG_USB=y
 CONFIG_USB_DWC2=y
 CONFIG_ROCKCHIP_USB2_PHY=y
 CONFIG_USB_GADGET=y
-CONFIG_USB_GADGET_MANUFACTURER="Rockchip"
 CONFIG_USB_GADGET_VENDOR_NUM=0x2207
 CONFIG_USB_GADGET_PRODUCT_NUM=0x320a
 CONFIG_USB_GADGET_DWC2_OTG=y
diff --git a/configs/phycore-rk3288_defconfig b/configs/phycore-rk3288_defconfig
index d33f079dac..0329a8aa55 100644
--- a/configs/phycore-rk3288_defconfig
+++ b/configs/phycore-rk3288_defconfig
@@ -75,7 +75,6 @@ CONFIG_USB=y
 CONFIG_USB_DWC2=y
 CONFIG_ROCKCHIP_USB2_PHY=y
 CONFIG_USB_GADGET=y
-CONFIG_USB_GADGET_MANUFACTURER="Rockchip"
 CONFIG_USB_GADGET_VENDOR_NUM=0x2207
 CONFIG_USB_GADGET_PRODUCT_NUM=0x320a
 CONFIG_USB_GADGET_DWC2_OTG=y
diff --git a/configs/popmetal-rk3288_defconfig b/configs/popmetal-rk3288_defconfig
index 7642ea38b1..95a0a4b4d1 100644
--- a/configs/popmetal-rk3288_defconfig
+++ b/configs/popmetal-rk3288_defconfig
@@ -71,7 +71,6 @@ CONFIG_USB=y
 CONFIG_USB_DWC2=y
 CONFIG_ROCKCHIP_USB2_PHY=y
 CONFIG_USB_GADGET=y
-CONFIG_USB_GADGET_MANUFACTURER="Rockchip"
 CONFIG_USB_GADGET_VENDOR_NUM=0x2207
 CONFIG_USB_GADGET_PRODUCT_NUM=0x320a
 CONFIG_USB_GADGET_DWC2_OTG=y
diff --git a/configs/rock2_defconfig b/configs/rock2_defconfig
index 3723a7e0dd..b7f6646381 100644
--- a/configs/rock2_defconfig
+++ b/configs/rock2_defconfig
@@ -72,7 +72,6 @@ CONFIG_USB=y
 CONFIG_USB_DWC2=y
 CONFIG_ROCKCHIP_USB2_PHY=y
 CONFIG_USB_GADGET=y
-CONFIG_USB_GADGET_MANUFACTURER="Rockchip"
 CONFIG_USB_GADGET_VENDOR_NUM=0x2207
 CONFIG_USB_GADGET_PRODUCT_NUM=0x320a
 CONFIG_USB_GADGET_DWC2_OTG=y
diff --git a/configs/rock64-rk3328_defconfig b/configs/rock64-rk3328_defconfig
index 021f982e68..d9a170ba26 100644
--- a/configs/rock64-rk3328_defconfig
+++ b/configs/rock64-rk3328_defconfig
@@ -87,7 +87,6 @@ CONFIG_USB_DWC2=y
 CONFIG_USB_DWC3=y
 # CONFIG_USB_DWC3_GADGET is not set
 CONFIG_USB_GADGET=y
-CONFIG_USB_GADGET_MANUFACTURER="Rockchip"
 CONFIG_USB_GADGET_VENDOR_NUM=0x2207
 CONFIG_USB_GADGET_PRODUCT_NUM=0x330a
 CONFIG_USB_GADGET_DWC2_OTG=y
diff --git a/configs/tinker-rk3288_defconfig b/configs/tinker-rk3288_defconfig
index 0fd1612f87..bb561fac23 100644
--- a/configs/tinker-rk3288_defconfig
+++ b/configs/tinker-rk3288_defconfig
@@ -77,7 +77,6 @@ CONFIG_USB=y
 CONFIG_USB_DWC2=y
 CONFIG_ROCKCHIP_USB2_PHY=y
 CONFIG_USB_GADGET=y
-CONFIG_USB_GADGET_MANUFACTURER="Rockchip"
 CONFIG_USB_GADGET_VENDOR_NUM=0x2207
 CONFIG_USB_GADGET_PRODUCT_NUM=0x320a
 CONFIG_USB_GADGET_DWC2_OTG=y
diff --git a/configs/tinker-s-rk3288_defconfig b/configs/tinker-s-rk3288_defconfig
index c851a93f31..38cb1984d8 100644
--- a/configs/tinker-s-rk3288_defconfig
+++ b/configs/tinker-s-rk3288_defconfig
@@ -83,7 +83,6 @@ CONFIG_USB=y
 CONFIG_USB_DWC2=y
 CONFIG_ROCKCHIP_USB2_PHY=y
 CONFIG_USB_GADGET=y
-CONFIG_USB_GADGET_MANUFACTURER="Rockchip"
 CONFIG_USB_GADGET_VENDOR_NUM=0x2207
 CONFIG_USB_GADGET_PRODUCT_NUM=0x320a
 CONFIG_USB_GADGET_DWC2_OTG=y
diff --git a/configs/vyasa-rk3288_defconfig b/configs/vyasa-rk3288_defconfig
index 6611080784..081e32d67d 100644
--- a/configs/vyasa-rk3288_defconfig
+++ b/configs/vyasa-rk3288_defconfig
@@ -69,7 +69,6 @@ CONFIG_USB_DWC2=y
 CONFIG_ROCKCHIP_USB2_PHY=y
 CONFIG_USB_KEYBOARD=y
 CONFIG_USB_GADGET=y
-CONFIG_USB_GADGET_MANUFACTURER="Rockchip"
 CONFIG_USB_GADGET_VENDOR_NUM=0x2207
 CONFIG_USB_GADGET_PRODUCT_NUM=0x320a
 CONFIG_USB_GADGET_DWC2_OTG=y
diff --git a/drivers/usb/gadget/Kconfig b/drivers/usb/gadget/Kconfig
index 26b4d12a09..1959a390f3 100644
--- a/drivers/usb/gadget/Kconfig
+++ b/drivers/usb/gadget/Kconfig
@@ -39,6 +39,7 @@ if USB_GADGET
 config USB_GADGET_MANUFACTURER
 	string "Vendor name of the USB device"
 	default "Allwinner Technology" if ARCH_SUNXI
+	default "Rockchip" if ARCH_ROCKCHIP
 	default "U-Boot"
 	help
 	  Vendor name of the USB device emulated, reported to the host device.
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

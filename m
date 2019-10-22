Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1729DE0B06
	for <lists+linux-rockchip@lfdr.de>; Tue, 22 Oct 2019 19:55:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CqE/+Pbz9Mm3aUMPSnsPKuVzskDhQ+eRVEYDUzQVCGU=; b=hD8220BaIL0o1T
	bRiYMiBIX8MUt4zfuh7OA/kCg4LyS4hl5VWY2kfZ9SI+tCP7dsb1qS9tYNj+ExcwhW3TQBo7b4kCh
	snUSHqesz5xAbEkL8ggC3QccHwH3KhVFYZGU9Dg85E5A3E/s0ZDAbvsYcPHbFj4irAk3fcbFEA0Il
	YFMscbOLWDZ+aSxOp9Ugfi876EKG1yL+MJcisWyrVko8urhI1dxkD9JRkKXpCskpRc7nvyE5YUIUN
	ZWW7umQTTDaiwTZGdysZr9FIL+6KViulEN/hbijin/e6Hlc4L7QMVKg1TLqrYU9FeKvviWgB2EIXw
	fYiJ1nD25ZH74nHlJjMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMyNT-000627-RF; Tue, 22 Oct 2019 17:55:27 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMyNQ-00060i-O9
 for linux-rockchip@lists.infradead.org; Tue, 22 Oct 2019 17:55:26 +0000
Received: by mail-pg1-x541.google.com with SMTP id 23so10403621pgk.3
 for <linux-rockchip@lists.infradead.org>; Tue, 22 Oct 2019 10:55:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=PdCBo5rbmAI2jMy++P5hBEg7D83CbEs9rcXBuyu9L1c=;
 b=EX8rg5XUupPHqzaCQZ7z/uqhv8Yq2TOAUIPUs0hUQyqvum6obV9UBZKM3Ynmdr4VOu
 Aca+ifdZN3CxoRYh0w/4Rhva3Ts1engSd5ByyTuX0UxaCY8E7tlMs/ZJc2xESKGbu6rM
 c45aL+hbesMHTtHEQ72F5twcRZl5T9eNe+kSE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=PdCBo5rbmAI2jMy++P5hBEg7D83CbEs9rcXBuyu9L1c=;
 b=N4c9wpVERqitkcoFB0DYOideh9xNK/Oe+2VeyW6Obj/82SgKc3vHLup4HhkS0iZRIk
 Gu0OXHgv7wqaaaBNZNa7QTjB03kOykyYE948qdeTdBWLitrMNw9Ye7b35/m/BAmDLlJ3
 WYqy1LYcw+KVbQUk04N7Pfb6QnTAlZMjbv2lUEPZ0phGC37zapvy5j8548E4BOLEJYHN
 k14+XTLH5fCD4Aa691rr/hDPHT3D9p2gwNyIQytpyFKE0KE7bqzbwiCAT0iWaW7pXQrA
 NFAD8w9B6NjE+u5N0kpI0by5KQbzQLM0bDo042yHAeqI2PwvUrEaIpvDGmO35EEXsG1m
 TqDg==
X-Gm-Message-State: APjAAAUGSImRwfaD7JTPjtbDceBU6lHCtUlltKTJEW+kF/ip8LZc8tRS
 3mRIgoK34f3emWlvHfd9bUSx7Q==
X-Google-Smtp-Source: APXvYqy7SQaqbSgx6N2Do+Z0CJLq5O/6N6Y0gf82QFuS1oGc8hp56a+SOgRD9Y/Su+b3ULab/SmuCw==
X-Received: by 2002:a63:3d41:: with SMTP id k62mr4970782pga.129.1571766923806; 
 Tue, 22 Oct 2019 10:55:23 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.31])
 by smtp.gmail.com with ESMTPSA id b3sm20454775pfd.125.2019.10.22.10.55.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Oct 2019 10:55:23 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH 1/9] gadget: Select USB_GADGET_MANUFACTURER for rockchip
Date: Tue, 22 Oct 2019 23:24:50 +0530
Message-Id: <20191022175458.22604-2-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191022175458.22604-1-jagan@amarulasolutions.com>
References: <20191022175458.22604-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_105524_789334_7C95D12A 
X-CRM114-Status: GOOD (  10.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 configs/vyasa-rk3288_defconfig    | 1 -
 drivers/usb/gadget/Kconfig        | 1 +
 16 files changed, 1 insertion(+), 15 deletions(-)

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
index 2e7f57ae95..4df2a90b92 100644
--- a/configs/evb-rk3036_defconfig
+++ b/configs/evb-rk3036_defconfig
@@ -54,7 +54,6 @@ CONFIG_SYSRESET=y
 # CONFIG_SPL_SYSRESET is not set
 CONFIG_USB=y
 CONFIG_USB_GADGET=y
-CONFIG_USB_GADGET_MANUFACTURER="Rockchip"
 CONFIG_USB_GADGET_VENDOR_NUM=0x2207
 CONFIG_USB_GADGET_PRODUCT_NUM=0x310a
 CONFIG_USB_GADGET_DWC2_OTG=y
diff --git a/configs/evb-rk3229_defconfig b/configs/evb-rk3229_defconfig
index 9c8c084178..be91ba1e0c 100644
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
index 043ee32bb4..a52e0af79d 100644
--- a/configs/evb-rk3288_defconfig
+++ b/configs/evb-rk3288_defconfig
@@ -73,7 +73,6 @@ CONFIG_USB=y
 CONFIG_USB_DWC2=y
 CONFIG_ROCKCHIP_USB2_PHY=y
 CONFIG_USB_GADGET=y
-CONFIG_USB_GADGET_MANUFACTURER="Rockchip"
 CONFIG_USB_GADGET_VENDOR_NUM=0x2207
 CONFIG_USB_GADGET_PRODUCT_NUM=0x320a
 CONFIG_USB_GADGET_DWC2_OTG=y
diff --git a/configs/evb-rk3328_defconfig b/configs/evb-rk3328_defconfig
index 37610774c1..6f9a3a3e72 100644
--- a/configs/evb-rk3328_defconfig
+++ b/configs/evb-rk3328_defconfig
@@ -87,7 +87,6 @@ CONFIG_USB_OHCI_GENERIC=y
 CONFIG_USB_DWC2=y
 CONFIG_USB_DWC3=y
 CONFIG_USB_GADGET=y
-CONFIG_USB_GADGET_MANUFACTURER="Rockchip"
 CONFIG_USB_GADGET_VENDOR_NUM=0x2207
 CONFIG_USB_GADGET_PRODUCT_NUM=0x330a
 CONFIG_USB_GADGET_DWC2_OTG=y
diff --git a/configs/evb-rv1108_defconfig b/configs/evb-rv1108_defconfig
index 2e28871f37..36bd7eb0f1 100644
--- a/configs/evb-rv1108_defconfig
+++ b/configs/evb-rv1108_defconfig
@@ -46,7 +46,6 @@ CONFIG_USB_OHCI_HCD=y
 CONFIG_USB_OHCI_GENERIC=y
 CONFIG_USB_DWC2=y
 CONFIG_USB_GADGET=y
-CONFIG_USB_GADGET_MANUFACTURER="Rockchip"
 CONFIG_USB_GADGET_VENDOR_NUM=0x2207
 CONFIG_USB_GADGET_PRODUCT_NUM=0x110a
 CONFIG_USB_GADGET_DWC2_OTG=y
diff --git a/configs/firefly-rk3288_defconfig b/configs/firefly-rk3288_defconfig
index 29935d869c..4a1d7a6648 100644
--- a/configs/firefly-rk3288_defconfig
+++ b/configs/firefly-rk3288_defconfig
@@ -78,7 +78,6 @@ CONFIG_USB_DWC2=y
 CONFIG_ROCKCHIP_USB2_PHY=y
 CONFIG_USB_KEYBOARD=y
 CONFIG_USB_GADGET=y
-CONFIG_USB_GADGET_MANUFACTURER="Rockchip"
 CONFIG_USB_GADGET_VENDOR_NUM=0x2207
 CONFIG_USB_GADGET_PRODUCT_NUM=0x320a
 CONFIG_USB_GADGET_DWC2_OTG=y
diff --git a/configs/kylin-rk3036_defconfig b/configs/kylin-rk3036_defconfig
index dc587070d3..41ad46f12a 100644
--- a/configs/kylin-rk3036_defconfig
+++ b/configs/kylin-rk3036_defconfig
@@ -58,7 +58,6 @@ CONFIG_SYSRESET=y
 CONFIG_USB=y
 CONFIG_USB_DWC2=y
 CONFIG_USB_GADGET=y
-CONFIG_USB_GADGET_MANUFACTURER="Rockchip"
 CONFIG_USB_GADGET_VENDOR_NUM=0x2207
 CONFIG_USB_GADGET_PRODUCT_NUM=0x310a
 CONFIG_USB_GADGET_DWC2_OTG=y
diff --git a/configs/miqi-rk3288_defconfig b/configs/miqi-rk3288_defconfig
index 7b4e3f7f3a..3e761e9983 100644
--- a/configs/miqi-rk3288_defconfig
+++ b/configs/miqi-rk3288_defconfig
@@ -73,7 +73,6 @@ CONFIG_USB=y
 CONFIG_USB_DWC2=y
 CONFIG_ROCKCHIP_USB2_PHY=y
 CONFIG_USB_GADGET=y
-CONFIG_USB_GADGET_MANUFACTURER="Rockchip"
 CONFIG_USB_GADGET_VENDOR_NUM=0x2207
 CONFIG_USB_GADGET_PRODUCT_NUM=0x320a
 CONFIG_USB_GADGET_DWC2_OTG=y
diff --git a/configs/phycore-rk3288_defconfig b/configs/phycore-rk3288_defconfig
index 2914ede36c..ce8a0e5268 100644
--- a/configs/phycore-rk3288_defconfig
+++ b/configs/phycore-rk3288_defconfig
@@ -77,7 +77,6 @@ CONFIG_USB=y
 CONFIG_USB_DWC2=y
 CONFIG_ROCKCHIP_USB2_PHY=y
 CONFIG_USB_GADGET=y
-CONFIG_USB_GADGET_MANUFACTURER="Rockchip"
 CONFIG_USB_GADGET_VENDOR_NUM=0x2207
 CONFIG_USB_GADGET_PRODUCT_NUM=0x320a
 CONFIG_USB_GADGET_DWC2_OTG=y
diff --git a/configs/popmetal-rk3288_defconfig b/configs/popmetal-rk3288_defconfig
index 67dd3f3f2d..89400dd5de 100644
--- a/configs/popmetal-rk3288_defconfig
+++ b/configs/popmetal-rk3288_defconfig
@@ -73,7 +73,6 @@ CONFIG_USB=y
 CONFIG_USB_DWC2=y
 CONFIG_ROCKCHIP_USB2_PHY=y
 CONFIG_USB_GADGET=y
-CONFIG_USB_GADGET_MANUFACTURER="Rockchip"
 CONFIG_USB_GADGET_VENDOR_NUM=0x2207
 CONFIG_USB_GADGET_PRODUCT_NUM=0x320a
 CONFIG_USB_GADGET_DWC2_OTG=y
diff --git a/configs/rock2_defconfig b/configs/rock2_defconfig
index 80d6db5d83..953d760155 100644
--- a/configs/rock2_defconfig
+++ b/configs/rock2_defconfig
@@ -74,7 +74,6 @@ CONFIG_USB=y
 CONFIG_USB_DWC2=y
 CONFIG_ROCKCHIP_USB2_PHY=y
 CONFIG_USB_GADGET=y
-CONFIG_USB_GADGET_MANUFACTURER="Rockchip"
 CONFIG_USB_GADGET_VENDOR_NUM=0x2207
 CONFIG_USB_GADGET_PRODUCT_NUM=0x320a
 CONFIG_USB_GADGET_DWC2_OTG=y
diff --git a/configs/rock64-rk3328_defconfig b/configs/rock64-rk3328_defconfig
index 3ab0af1158..d86456e363 100644
--- a/configs/rock64-rk3328_defconfig
+++ b/configs/rock64-rk3328_defconfig
@@ -89,7 +89,6 @@ CONFIG_USB_OHCI_GENERIC=y
 CONFIG_USB_DWC2=y
 CONFIG_USB_DWC3=y
 CONFIG_USB_GADGET=y
-CONFIG_USB_GADGET_MANUFACTURER="Rockchip"
 CONFIG_USB_GADGET_VENDOR_NUM=0x2207
 CONFIG_USB_GADGET_PRODUCT_NUM=0x330a
 CONFIG_USB_GADGET_DWC2_OTG=y
diff --git a/configs/tinker-rk3288_defconfig b/configs/tinker-rk3288_defconfig
index eff3b06b5c..aa9f86d6f8 100644
--- a/configs/tinker-rk3288_defconfig
+++ b/configs/tinker-rk3288_defconfig
@@ -79,7 +79,6 @@ CONFIG_USB=y
 CONFIG_USB_DWC2=y
 CONFIG_ROCKCHIP_USB2_PHY=y
 CONFIG_USB_GADGET=y
-CONFIG_USB_GADGET_MANUFACTURER="Rockchip"
 CONFIG_USB_GADGET_VENDOR_NUM=0x2207
 CONFIG_USB_GADGET_PRODUCT_NUM=0x320a
 CONFIG_USB_GADGET_DWC2_OTG=y
diff --git a/configs/vyasa-rk3288_defconfig b/configs/vyasa-rk3288_defconfig
index 89921e6836..3a8cc9e722 100644
--- a/configs/vyasa-rk3288_defconfig
+++ b/configs/vyasa-rk3288_defconfig
@@ -71,7 +71,6 @@ CONFIG_USB_DWC2=y
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

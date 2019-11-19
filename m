Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BDC8101D3E
	for <lists+linux-rockchip@lfdr.de>; Tue, 19 Nov 2019 09:27:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w42tykwsfZYzOTUQlVtKVqS/2+m3tKaOUdpD21CDlVs=; b=EzldWAg41Pt5ai
	5ySBSB8jLlj+M++hhNjpg/i0wOqZZmZbqJP04AIF5mXeiYnjxKgJBh9V7iFEnnMEaWzUF0MLaGmN9
	KU5iJZfYmGbk7mEKpuvdcSg71PpaFi7xte5xeikhwmLcZnuwPTknC7lr5cpzdyV+Qrw09dLHHPmRJ
	rgw6PzCvK3JyH9BymxDvq2068bqiFyo9ukCrc+jzc4d+bmGP4RdUAHHd90UU3snknRp/bumVn6C1U
	bs9AAGgetQtFJGP9TvtPkn2o65KvtQRoO/SnND0CNOCRZaAc7ThJGS5mz4meQWYyWCxU7uAUesJL/
	3YF6iG2XUtTs/kv8cK9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWyqj-0001vA-MB; Tue, 19 Nov 2019 08:27:01 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWyqd-0001q5-JD
 for linux-rockchip@lists.infradead.org; Tue, 19 Nov 2019 08:26:59 +0000
Received: by mail-pl1-x644.google.com with SMTP id d7so11370403pls.3
 for <linux-rockchip@lists.infradead.org>; Tue, 19 Nov 2019 00:26:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=eBDaPUSSH7ZQeopAizE8LYLSyIIy8bFavY37XD6jPg4=;
 b=lZf+Mifb8Ly7vjGadPgknOvfdnG2CwUQYWjf88Vw9n2DKzsOwxHiutdHRRxp5wE4n0
 uli1rWWuiC/MWKDaG8I5y08/RAi+at/BBkOzK1c9fg/dsNOY7pp7BSNwfIuxNhtS369Q
 UyEYoJeGFjyKnrnQp0gJ1d5wiFpoFOVckz2sU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=eBDaPUSSH7ZQeopAizE8LYLSyIIy8bFavY37XD6jPg4=;
 b=XjnbkLAOn4gaVCiSpf7lY44ex7uwDMhrd5+uyWnXOsotxzo6+blt4o3sNzRufxUysS
 +STZE5fd4DTtRXogxka6GgYnmWqxvkyqOtPV/1AuS294kiRWPYHWRGLz1tE7XiqCwecy
 ZRUwmFHkwWMxYt2iAHX6vNXbKhFbQVEl+Tq+H4N8YDJYMh2VUM1+3Xm8hNTtJoUUotus
 bABFVe+VUnxzM0NAyCL7MqUwBNX07nw5/5YwOzoyyxC6rWbQFL+WRNzLoNgIPhTLJwAH
 MY98ca1L4sZAD3qe9miZDS3KroCvRbqMU12TXDh4xVeS1GxX+TUOYLh0WnGbZMP3M5sV
 +UvA==
X-Gm-Message-State: APjAAAXOhWocEg0FvNy/9Y5Wa1jelTp4pLRxNlqZ08YP1s3/pKywFcBr
 7Q1mwBMBjeGarAbmyz0vQIYJTnx5maetDw==
X-Google-Smtp-Source: APXvYqxtGqtNERG6w6aBvk/++f5X575h9MXhZqPtklOusPF2JcMyh0Xm8k8OApxISbV7zuO6TkxQig==
X-Received: by 2002:a17:90a:c789:: with SMTP id
 gn9mr4574705pjb.99.1574152015032; 
 Tue, 19 Nov 2019 00:26:55 -0800 (PST)
Received: from localhost.localdomain ([115.97.180.31])
 by smtp.gmail.com with ESMTPSA id u7sm2312221pjx.19.2019.11.19.00.26.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 Nov 2019 00:26:54 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH v2 07/10] usb: dwc3: Add phy interface for dwc3_uboot
Date: Tue, 19 Nov 2019 13:56:20 +0530
Message-Id: <20191119082623.6165-8-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191119082623.6165-1-jagan@amarulasolutions.com>
References: <20191119082623.6165-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_002655_632494_284A1060 
X-CRM114-Status: GOOD (  14.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
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
Cc: Marek Vasut <marex@denx.de>, linux-rockchip@lists.infradead.org,
 u-boot@lists.denx.de, Jagan Teki <jagan@amarulasolutions.com>,
 Levin Du <djw@t-chip.com.cn>, linux-amarula@amarulasolutions.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

U-Boot has two different variants of dwc3 initializations,
- with dm variant gadget, so the respective dm driver would
  call the dwc3_init in core.
- with non-dm variant gadget, so the usage board file would
  call dwc3_uboot_init in core.

The driver probe would handle all respective gadget properties
including phy interface via phy_type property and then trigger
dwc3_init for dm-variant gadgets.

So, to support the phy interface for non-dm variant gadgets,
the better option is dwc3_uboot_init since there is no
dedicated controller for non-dm variant gadgets.

This patch support for adding phy interface like 8/16-bit UTMI+
code for dwc3_uboot.

This change used Linux phy.h enum list, to make proper code
compatibility.

Cc: Marek Vasut <marex@denx.de>
Tested-by: Levin Du <djw@t-chip.com.cn>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 drivers/usb/dwc3/core.c | 27 +++++++++++++++++++++++++++
 drivers/usb/dwc3/core.h | 12 ++++++++++++
 include/dwc3-uboot.h    |  2 ++
 include/linux/usb/phy.h | 19 +++++++++++++++++++
 4 files changed, 60 insertions(+)
 create mode 100644 include/linux/usb/phy.h

diff --git a/drivers/usb/dwc3/core.c b/drivers/usb/dwc3/core.c
index 23af60c98d..f779562de2 100644
--- a/drivers/usb/dwc3/core.c
+++ b/drivers/usb/dwc3/core.c
@@ -613,6 +613,31 @@ static void dwc3_core_exit_mode(struct dwc3 *dwc)
 	dwc3_gadget_run(dwc);
 }
 
+static void dwc3_uboot_hsphy_mode(struct dwc3_device *dwc3_dev,
+				  struct dwc3 *dwc)
+{
+	enum usb_phy_interface hsphy_mode = dwc3_dev->hsphy_mode;
+	u32 reg;
+
+	/* Set dwc3 usb2 phy config */
+	reg = dwc3_readl(dwc->regs, DWC3_GUSB2PHYCFG(0));
+	reg |= DWC3_GUSB2PHYCFG_PHYIF;
+	reg &= ~DWC3_GUSB2PHYCFG_USBTRDTIM_MASK;
+
+	switch (hsphy_mode) {
+	case USBPHY_INTERFACE_MODE_UTMI:
+		reg |= DWC3_GUSB2PHYCFG_USBTRDTIM_8BIT;
+		break;
+	case USBPHY_INTERFACE_MODE_UTMIW:
+		reg |= DWC3_GUSB2PHYCFG_USBTRDTIM_16BIT;
+		break;
+	default:
+		break;
+	}
+
+	dwc3_writel(dwc->regs, DWC3_GUSB2PHYCFG(0), reg);
+}
+
 #define DWC3_ALIGN_MASK		(16 - 1)
 
 /**
@@ -721,6 +746,8 @@ int dwc3_uboot_init(struct dwc3_device *dwc3_dev)
 		goto err0;
 	}
 
+	dwc3_uboot_hsphy_mode(dwc3_dev, dwc);
+
 	ret = dwc3_event_buffers_setup(dwc);
 	if (ret) {
 		dev_err(dwc->dev, "failed to setup event buffers\n");
diff --git a/drivers/usb/dwc3/core.h b/drivers/usb/dwc3/core.h
index be9672266a..bff53e072b 100644
--- a/drivers/usb/dwc3/core.h
+++ b/drivers/usb/dwc3/core.h
@@ -162,6 +162,18 @@
 /* Global USB2 PHY Configuration Register */
 #define DWC3_GUSB2PHYCFG_PHYSOFTRST	(1 << 31)
 #define DWC3_GUSB2PHYCFG_SUSPHY		(1 << 6)
+#define DWC3_GUSB2PHYCFG_PHYIF		BIT(3)
+
+/* Global USB2 PHY Configuration Mask */
+#define DWC3_GUSB2PHYCFG_USBTRDTIM_MASK		(0xf << 10)
+
+/* Global USB2 PHY Configuration Offset */
+#define DWC3_GUSB2PHYCFG_USBTRDTIM_OFFSET	10
+
+#define DWC3_GUSB2PHYCFG_USBTRDTIM_16BIT	(0x5 << \
+		DWC3_GUSB2PHYCFG_USBTRDTIM_OFFSET)
+#define DWC3_GUSB2PHYCFG_USBTRDTIM_8BIT		(0x9 << \
+		DWC3_GUSB2PHYCFG_USBTRDTIM_OFFSET)
 
 /* Global USB3 PIPE Control Register */
 #define DWC3_GUSB3PIPECTL_PHYSOFTRST	(1 << 31)
diff --git a/include/dwc3-uboot.h b/include/dwc3-uboot.h
index 9941cc37a3..3c9e204cf0 100644
--- a/include/dwc3-uboot.h
+++ b/include/dwc3-uboot.h
@@ -10,10 +10,12 @@
 #define __DWC3_UBOOT_H_
 
 #include <linux/usb/otg.h>
+#include <linux/usb/phy.h>
 
 struct dwc3_device {
 	unsigned long base;
 	enum usb_dr_mode dr_mode;
+	enum usb_phy_interface hsphy_mode;
 	u32 maximum_speed;
 	unsigned tx_fifo_resize:1;
 	unsigned has_lpm_erratum;
diff --git a/include/linux/usb/phy.h b/include/linux/usb/phy.h
new file mode 100644
index 0000000000..158ca9cd85
--- /dev/null
+++ b/include/linux/usb/phy.h
@@ -0,0 +1,19 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * USB PHY defines
+ *
+ * These APIs may be used between USB controllers.  USB device drivers
+ * (for either host or peripheral roles) don't use these calls; they
+ * continue to use just usb_device and usb_gadget.
+ */
+
+#ifndef __LINUX_USB_PHY_H
+#define __LINUX_USB_PHY_H
+
+enum usb_phy_interface {
+	USBPHY_INTERFACE_MODE_UNKNOWN,
+	USBPHY_INTERFACE_MODE_UTMI,
+	USBPHY_INTERFACE_MODE_UTMIW,
+};
+
+#endif /* __LINUX_USB_PHY_H */
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

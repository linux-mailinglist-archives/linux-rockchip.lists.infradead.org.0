Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61E96E0B0B
	for <lists+linux-rockchip@lfdr.de>; Tue, 22 Oct 2019 19:55:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+twr5hKM/nb6pr2EAWTE/ZK1LjjhBcy3lgBQyQMHX40=; b=JmRWUTA9XF7eFU
	pOlIPQiSjtLNVnKU4niIzjUaezz/0PqUTSYjQOjuubI2RAEkPHimbGjnhd+OFC7MAT+lrjcMiL3zj
	Mqf2gknUAHO6T2VgxPDgxMkbV1cH1ny8jjO2p5dakTYrLsgtblfnomlHioAL+T8fsnrWGEvUjqFT9
	XdMPq2ftUtEcB/HY4757FCDkZ73f7VLnXQELd9tAa9oy3NKEKXWic/epeWdxFyQOV+MDiexNxfXo6
	tMOV6v6sunRmvb3XNtv7Z3EYsOaZ4DmWfeAWPLsjkybCOErnM/G6uLn4DpECV6fa53iKE6nt4zikh
	7rlVS6psa1Or0RrKSuqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMyNl-0006Hi-Ds; Tue, 22 Oct 2019 17:55:45 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMyNh-0006FY-Bk
 for linux-rockchip@lists.infradead.org; Tue, 22 Oct 2019 17:55:42 +0000
Received: by mail-pl1-x641.google.com with SMTP id q21so628972plr.13
 for <linux-rockchip@lists.infradead.org>; Tue, 22 Oct 2019 10:55:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=M3uVs6fLUV6Sa+n4FIF1RzYQSumPilQCihG7VaENJHw=;
 b=muO1CP3wO8BsXGGXlochPgEAJDEbbODHpkXAiz8xWoqmFFaST53f+5+A0QdJseThg7
 ZEHSedN1f2DCtZBpDtnN+NTItTYcbPq3zcfeSUowUCHqz0lXqaD1nTIT7brqjVgrHP6d
 hOMO23tt+qtgOkgB3zIBnY5tH+9Vfk21i2TS4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=M3uVs6fLUV6Sa+n4FIF1RzYQSumPilQCihG7VaENJHw=;
 b=ji32zmqQrBw2V24xcDxFrQGi0FoARRNFKvWJnObYmAoMzPdpyhxhvPiTPVqNYNFsrC
 Yzkj+rDuKuQmfuHsWvsgdy6/GsI2fjRN8wH25GlOjzgtCdfkwERVv0ot/u4PMKmZGjIl
 PN0JiJUZNzc/vzW4vj8t7ASIxS90PBBQ6wszBzb2JGVUTVu1/8GQq4Qk0UQ0VXYRLVRk
 gEw7Osb4Ykx/wPt4q8939TmBJtDHMr9swfYJhtmHdpqtVyrFvRwMp9fOjWAL3U0oG5xS
 +/E3fbyNKCwB4zWz3aViTMeSI2L0FMNY00FMCrLswnZtnJ04Rezx8FRo6m7sJA4Z+WnI
 VCzA==
X-Gm-Message-State: APjAAAU7wjsUjhuHk/U7JSlX7iZFXdgoef4dEUI9ZqrdLHN6ILgwCxW7
 Nj0GJGNh9Ae8FdMtzGQTEKD/V4TAaeY=
X-Google-Smtp-Source: APXvYqxpLirutpVFHLlIOWPptOxvlZMh/aFVFVCqc7jnaB+ybfTjJLZ5AJBkcRlH9P8o+SVS2YkeWg==
X-Received: by 2002:a17:902:fe8c:: with SMTP id
 x12mr5207965plm.55.1571766940354; 
 Tue, 22 Oct 2019 10:55:40 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.31])
 by smtp.gmail.com with ESMTPSA id b3sm20454775pfd.125.2019.10.22.10.55.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Oct 2019 10:55:39 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH 6/9] usb: dwc3: Add phy interface for dwc3_uboot
Date: Tue, 22 Oct 2019 23:24:55 +0530
Message-Id: <20191022175458.22604-7-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191022175458.22604-1-jagan@amarulasolutions.com>
References: <20191022175458.22604-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_105541_403456_9C647A87 
X-CRM114-Status: GOOD (  14.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
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
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 drivers/usb/dwc3/core.c | 26 ++++++++++++++++++++++++++
 drivers/usb/dwc3/core.h | 12 ++++++++++++
 include/dwc3-uboot.h    |  2 ++
 include/linux/usb/phy.h | 19 +++++++++++++++++++
 4 files changed, 59 insertions(+)
 create mode 100644 include/linux/usb/phy.h

diff --git a/drivers/usb/dwc3/core.c b/drivers/usb/dwc3/core.c
index 2498f0efb1..3e2295d75c 100644
--- a/drivers/usb/dwc3/core.c
+++ b/drivers/usb/dwc3/core.c
@@ -600,6 +600,30 @@ static void dwc3_core_exit_mode(struct dwc3 *dwc)
 	}
 }
 
+static void dwc3_uboot_hsphy_mode(struct dwc3_device *dwc3_dev, struct dwc3 *dwc)
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
@@ -708,6 +732,8 @@ int dwc3_uboot_init(struct dwc3_device *dwc3_dev)
 		goto err0;
 	}
 
+	dwc3_uboot_hsphy_mode(dwc3_dev, dwc);
+
 	ret = dwc3_event_buffers_setup(dwc);
 	if (ret) {
 		dev_err(dwc->dev, "failed to setup event buffers\n");
diff --git a/drivers/usb/dwc3/core.h b/drivers/usb/dwc3/core.h
index cfe29884e7..c6888064b4 100644
--- a/drivers/usb/dwc3/core.h
+++ b/drivers/usb/dwc3/core.h
@@ -162,6 +162,18 @@
 /* Global USB2 PHY Configuration Register */
 #define DWC3_GUSB2PHYCFG_PHYSOFTRST	(1 << 31)
 #define DWC3_GUSB2PHYCFG_SUSPHY		(1 << 6)
+#define DWC3_GUSB2PHYCFG_PHYIF		(1 << 3)
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

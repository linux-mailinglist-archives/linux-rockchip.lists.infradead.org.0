Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 495B01CD35D
	for <lists+linux-rockchip@lfdr.de>; Mon, 11 May 2020 09:57:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=8TfuWI5J4/vUalbLL3DDavoQhp9TJYHa4IuSnQ5ogfo=; b=u0dA900vzgtk/BfQ9gBwTiC8z7
	93fqRShMSiNLnoUZ8MExGr58SvvKWMz8rdMr7cio737oANjvSllQkIHpUq/6cixl1DAqo7QWM+YqK
	/+mrH1LFIXwYgts8r+htuIHhq4tKlxd3l38ZSwdH6P/N46JHV9+djljfReW8zgxV8v/+hKpwSfLG0
	9feVT52tnc/152l2nOh4fOvugmEzWK5SJurqxWAlFQYK5sIINoA0CxIkEMBhPt/qpsmpze3VcHUkb
	AtlRaq9r9cu/OUpNJS28cOj1loi21rWT7gqyVgpqPpVsYS+6RKUzwPlmFt+rLCQrU9/jNxxk7WVl+
	zIoUxGBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY3Jh-0002M0-9Z; Mon, 11 May 2020 07:57:37 +0000
Received: from lucky1.263xmail.com ([211.157.147.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY3Jc-0002JV-5b
 for linux-rockchip@lists.infradead.org; Mon, 11 May 2020 07:57:34 +0000
Received: from localhost (unknown [192.168.167.209])
 by lucky1.263xmail.com (Postfix) with ESMTP id 1FCBBB4E4B;
 Mon, 11 May 2020 15:57:30 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P21665T139939416696576S1589183847395463_; 
 Mon, 11 May 2020 15:57:30 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <e1d87a853b57fb00bac604323dabb250>
X-RL-SENDER: frank.wang@rock-chips.com
X-SENDER: wmc@rock-chips.com
X-LOGIN-NAME: frank.wang@rock-chips.com
X-FST-TO: heiko@sntech.de
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
X-System-Flag: 0
From: Frank Wang <frank.wang@rock-chips.com>
To: heiko@sntech.de, marex@denx.de, bmeng.cn@gmail.com,
 philipp.tomsich@theobroma-systems.com, klaus.goger@theobroma-systems.com,
 jagan@amarulasolutions.com, sjg@chromium.org, kever.yang@rock-chips.com
Subject: [PATCH v4 11/16] usb: dwc3: amend UTMI/UTMIW phy interface setup
Date: Mon, 11 May 2020 15:57:20 +0800
Message-Id: <20200511075725.26665-2-frank.wang@rock-chips.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200511075725.26665-1-frank.wang@rock-chips.com>
References: <20200511075330.26462-1-frank.wang@rock-chips.com>
 <20200511075725.26665-1-frank.wang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_005732_640601_0F66D279 
X-CRM114-Status: GOOD (  13.82  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.157.147.130 listed in list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [211.157.147.130 listed in wl.mailspike.net]
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
Cc: jianing.ren@rock-chips.com, Frank Wang <frank.wang@rock-chips.com>,
 marek.belisko@gmail.com, wmc@rock-chips.com, u-boot@lists.denx.de,
 william.wu@rock-chips.com, linux-rockchip@lists.infradead.org,
 linux-amarula@amarulasolutions.com, chenjh@rock-chips.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Let move 8/16-bit UTMI+ interface initialization into DWC3 core init
that is convenient for both DM_USB and u-boot traditional process.

Signed-off-by: Frank Wang <frank.wang@rock-chips.com>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Reviewed-by: Kever Yang <kever.yang@rock-chips.com>
---
 drivers/usb/common/common.c | 25 ++++++++++++++
 drivers/usb/dwc3/core.c     | 65 +++++++++++++++++++------------------
 drivers/usb/dwc3/core.h     |  5 +++
 include/linux/usb/phy.h     | 18 ++++++++++
 4 files changed, 82 insertions(+), 31 deletions(-)

diff --git a/drivers/usb/common/common.c b/drivers/usb/common/common.c
index 0db281b970..d4ae18693c 100644
--- a/drivers/usb/common/common.c
+++ b/drivers/usb/common/common.c
@@ -10,6 +10,7 @@
 #include <dm.h>
 #include <linux/usb/otg.h>
 #include <linux/usb/ch9.h>
+#include <linux/usb/phy.h>
 
 DECLARE_GLOBAL_DATA_PTR;
 
@@ -64,3 +65,27 @@ enum usb_device_speed usb_get_maximum_speed(ofnode node)
 
 	return USB_SPEED_UNKNOWN;
 }
+
+#if CONFIG_IS_ENABLED(DM_USB)
+static const char *const usbphy_modes[] = {
+	[USBPHY_INTERFACE_MODE_UNKNOWN]	= "",
+	[USBPHY_INTERFACE_MODE_UTMI]	= "utmi",
+	[USBPHY_INTERFACE_MODE_UTMIW]	= "utmi_wide",
+};
+
+enum usb_phy_interface usb_get_phy_mode(ofnode node)
+{
+	const char *phy_type;
+	int i;
+
+	phy_type = ofnode_get_property(node, "phy_type", NULL);
+	if (!phy_type)
+		return USBPHY_INTERFACE_MODE_UNKNOWN;
+
+	for (i = 0; i < ARRAY_SIZE(usbphy_modes); i++)
+		if (!strcmp(phy_type, usbphy_modes[i]))
+			return i;
+
+	return USBPHY_INTERFACE_MODE_UNKNOWN;
+}
+#endif
diff --git a/drivers/usb/dwc3/core.c b/drivers/usb/dwc3/core.c
index aab6c34c2d..c8cb9e13b2 100644
--- a/drivers/usb/dwc3/core.c
+++ b/drivers/usb/dwc3/core.c
@@ -334,6 +334,34 @@ static void dwc3_cache_hwparams(struct dwc3 *dwc)
 	parms->hwparams8 = dwc3_readl(dwc->regs, DWC3_GHWPARAMS8);
 }
 
+static void dwc3_hsphy_mode_setup(struct dwc3 *dwc)
+{
+	enum usb_phy_interface hsphy_mode = dwc->hsphy_mode;
+	u32 reg;
+
+	/* Set dwc3 usb2 phy config */
+	reg = dwc3_readl(dwc->regs, DWC3_GUSB2PHYCFG(0));
+
+	switch (hsphy_mode) {
+	case USBPHY_INTERFACE_MODE_UTMI:
+		reg &= ~(DWC3_GUSB2PHYCFG_PHYIF_MASK |
+			DWC3_GUSB2PHYCFG_USBTRDTIM_MASK);
+		reg |= DWC3_GUSB2PHYCFG_PHYIF(UTMI_PHYIF_8_BIT) |
+			DWC3_GUSB2PHYCFG_USBTRDTIM(USBTRDTIM_UTMI_8_BIT);
+		break;
+	case USBPHY_INTERFACE_MODE_UTMIW:
+		reg &= ~(DWC3_GUSB2PHYCFG_PHYIF_MASK |
+			DWC3_GUSB2PHYCFG_USBTRDTIM_MASK);
+		reg |= DWC3_GUSB2PHYCFG_PHYIF(UTMI_PHYIF_16_BIT) |
+			DWC3_GUSB2PHYCFG_USBTRDTIM(USBTRDTIM_UTMI_16_BIT);
+		break;
+	default:
+		break;
+	}
+
+	dwc3_writel(dwc->regs, DWC3_GUSB2PHYCFG(0), reg);
+}
+
 /**
  * dwc3_phy_setup - Configure USB PHY Interface of DWC3 Core
  * @dwc: Pointer to our controller context structure
@@ -382,6 +410,8 @@ static void dwc3_phy_setup(struct dwc3 *dwc)
 
 	dwc3_writel(dwc->regs, DWC3_GUSB3PIPECTL(0), reg);
 
+	dwc3_hsphy_mode_setup(dwc);
+
 	mdelay(100);
 
 	reg = dwc3_readl(dwc->regs, DWC3_GUSB2PHYCFG(0));
@@ -626,35 +656,6 @@ static void dwc3_core_exit_mode(struct dwc3 *dwc)
 	dwc3_gadget_run(dwc);
 }
 
-static void dwc3_uboot_hsphy_mode(struct dwc3_device *dwc3_dev,
-				  struct dwc3 *dwc)
-{
-	enum usb_phy_interface hsphy_mode = dwc3_dev->hsphy_mode;
-	u32 reg;
-
-	/* Set dwc3 usb2 phy config */
-	reg = dwc3_readl(dwc->regs, DWC3_GUSB2PHYCFG(0));
-
-	switch (hsphy_mode) {
-	case USBPHY_INTERFACE_MODE_UTMI:
-		reg &= ~(DWC3_GUSB2PHYCFG_PHYIF_MASK |
-			DWC3_GUSB2PHYCFG_USBTRDTIM_MASK);
-		reg |= DWC3_GUSB2PHYCFG_PHYIF(UTMI_PHYIF_8_BIT) |
-			DWC3_GUSB2PHYCFG_USBTRDTIM(USBTRDTIM_UTMI_8_BIT);
-		break;
-	case USBPHY_INTERFACE_MODE_UTMIW:
-		reg &= ~(DWC3_GUSB2PHYCFG_PHYIF_MASK |
-			DWC3_GUSB2PHYCFG_USBTRDTIM_MASK);
-		reg |= DWC3_GUSB2PHYCFG_PHYIF(UTMI_PHYIF_16_BIT) |
-			DWC3_GUSB2PHYCFG_USBTRDTIM(USBTRDTIM_UTMI_16_BIT);
-		break;
-	default:
-		break;
-	}
-
-	dwc3_writel(dwc->regs, DWC3_GUSB2PHYCFG(0), reg);
-}
-
 #define DWC3_ALIGN_MASK		(16 - 1)
 
 /**
@@ -743,6 +744,8 @@ int dwc3_uboot_init(struct dwc3_device *dwc3_dev)
 	dwc->hird_threshold = hird_threshold
 		| (dwc->is_utmi_l1_suspend << 4);
 
+	dwc->hsphy_mode = dwc3_dev->hsphy_mode;
+
 	dwc->index = dwc3_dev->index;
 
 	dwc3_cache_hwparams(dwc);
@@ -767,8 +770,6 @@ int dwc3_uboot_init(struct dwc3_device *dwc3_dev)
 		goto err0;
 	}
 
-	dwc3_uboot_hsphy_mode(dwc3_dev, dwc);
-
 	ret = dwc3_event_buffers_setup(dwc);
 	if (ret) {
 		dev_err(dwc->dev, "failed to setup event buffers\n");
@@ -901,6 +902,8 @@ void dwc3_of_parse(struct dwc3 *dwc)
 	 */
 	hird_threshold = 12;
 
+	dwc->hsphy_mode = usb_get_phy_mode(dev->node);
+
 	dwc->has_lpm_erratum = dev_read_bool(dev,
 				"snps,has-lpm-erratum");
 	tmp = dev_read_u8_array_ptr(dev, "snps,lpm-nyet-threshold", 1);
diff --git a/drivers/usb/dwc3/core.h b/drivers/usb/dwc3/core.h
index 2adcaf0029..8e562ae6c4 100644
--- a/drivers/usb/dwc3/core.h
+++ b/drivers/usb/dwc3/core.h
@@ -21,6 +21,7 @@
 
 #include <linux/usb/ch9.h>
 #include <linux/usb/otg.h>
+#include <linux/usb/phy.h>
 
 #define DWC3_MSG_MAX	500
 
@@ -658,6 +659,9 @@ struct dwc3_scratchpad_array {
  * @maximum_speed: maximum speed requested (mainly for testing purposes)
  * @revision: revision register contents
  * @dr_mode: requested mode of operation
+ * @hsphy_mode: UTMI phy mode, one of following:
+ *		- USBPHY_INTERFACE_MODE_UTMI
+ *		- USBPHY_INTERFACE_MODE_UTMIW
  * @dcfg: saved contents of DCFG register
  * @gctl: saved contents of GCTL register
  * @isoch_delay: wValue from Set Isochronous Delay request;
@@ -749,6 +753,7 @@ struct dwc3 {
 	size_t			regs_size;
 
 	enum usb_dr_mode	dr_mode;
+	enum usb_phy_interface	hsphy_mode;
 
 	/* used for suspend/resume */
 	u32			dcfg;
diff --git a/include/linux/usb/phy.h b/include/linux/usb/phy.h
index 158ca9cd85..1e1217a958 100644
--- a/include/linux/usb/phy.h
+++ b/include/linux/usb/phy.h
@@ -10,10 +10,28 @@
 #ifndef __LINUX_USB_PHY_H
 #define __LINUX_USB_PHY_H
 
+#include <dm/ofnode.h>
+
 enum usb_phy_interface {
 	USBPHY_INTERFACE_MODE_UNKNOWN,
 	USBPHY_INTERFACE_MODE_UTMI,
 	USBPHY_INTERFACE_MODE_UTMIW,
 };
 
+#if CONFIG_IS_ENABLED(DM_USB)
+/**
+ * usb_get_phy_mode - Get phy mode for given device_node
+ * @np:	Pointer to the given device_node
+ *
+ * The function gets phy interface string from property 'phy_type',
+ * and returns the corresponding enum usb_phy_interface
+ */
+enum usb_phy_interface usb_get_phy_mode(ofnode node);
+#else
+static inline enum usb_phy_interface usb_get_phy_mode(ofnode node)
+{
+	return USBPHY_INTERFACE_MODE_UNKNOWN;
+}
+#endif
+
 #endif /* __LINUX_USB_PHY_H */
-- 
2.17.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0EF11CD35E
	for <lists+linux-rockchip@lfdr.de>; Mon, 11 May 2020 09:57:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=CNRk5KwHt0Bl3WTvgfVqYmae9dY/sKgcQ8t4fNP/btg=; b=s2ebVZn1n/ckwfmPYOeFasmpbC
	dheZ6ANdhLueIk8sGrn1Dkb5V8Dp26oeDokFsNm5tttx8zPPBo6Dob052n3bH/kv4uUA1zErQ7mfI
	JQURFrCJgMgBv4nMTOlIbF5ofp0+Rj+LiyWZlpMX8Vnk8W9TOqRpnjgE+RKf4PUZ7hmHZexz8AZrD
	EYNWlAo5R4xpw4Wzr6P+xjP1NCtkprYPBbKP7MrY8VLiKUMe9OrCmiuof/1oouMdTla4nroT5MpFP
	HVORwxNAmypyOvEpVf9Rn+RQsEQkSi0suu3p7ua/NgR8hyMEUz0h7ue4x71pHcJBP/ZFSvkac3Sx6
	M02HR4TQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY3Jj-0002O3-IX; Mon, 11 May 2020 07:57:39 +0000
Received: from lucky1.263xmail.com ([211.157.147.131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY3Je-0002Jx-Cj
 for linux-rockchip@lists.infradead.org; Mon, 11 May 2020 07:57:36 +0000
Received: from localhost (unknown [192.168.167.209])
 by lucky1.263xmail.com (Postfix) with ESMTP id 2B1A8A1FF6;
 Mon, 11 May 2020 15:57:32 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P21665T139939416696576S1589183847395463_; 
 Mon, 11 May 2020 15:57:32 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <b67131b13a65cb0b134bbc3f6e1d7811>
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
Subject: [PATCH v4 13/16] driver: usb: drop legacy rockchip xhci driver
Date: Mon, 11 May 2020 15:57:22 +0800
Message-Id: <20200511075725.26665-4-frank.wang@rock-chips.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200511075725.26665-1-frank.wang@rock-chips.com>
References: <20200511075330.26462-1-frank.wang@rock-chips.com>
 <20200511075725.26665-1-frank.wang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_005734_893667_B4858C0F 
X-CRM114-Status: GOOD (  14.15  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.157.147.131 listed in list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [211.157.147.131 listed in wl.mailspike.net]
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

We have changed to use dwc3 generic driver for usb3.0 host, so the
legacy Rockchip's xHCI driver is not needed, and drop it.

Signed-off-by: Frank Wang <frank.wang@rock-chips.com>
Reviewed-by: Jagan Teki <jagan@amarulasolutions.com>
---
 drivers/usb/host/Kconfig         |   9 --
 drivers/usb/host/Makefile        |   1 -
 drivers/usb/host/xhci-rockchip.c | 196 -------------------------------
 3 files changed, 206 deletions(-)
 delete mode 100644 drivers/usb/host/xhci-rockchip.c

diff --git a/drivers/usb/host/Kconfig b/drivers/usb/host/Kconfig
index 2f381dc958..088931a6b9 100644
--- a/drivers/usb/host/Kconfig
+++ b/drivers/usb/host/Kconfig
@@ -53,15 +53,6 @@ config USB_XHCI_PCI
 	help
 	  Enables support for the PCI-based xHCI controller.
 
-config USB_XHCI_ROCKCHIP
-	bool "Support for Rockchip on-chip xHCI USB controller"
-	depends on ARCH_ROCKCHIP
-	depends on DM_REGULATOR
-	depends on DM_USB
-	default y
-	help
-	  Enables support for the on-chip xHCI controller on Rockchip SoCs.
-
 config USB_XHCI_RCAR
 	bool "Renesas RCar USB 3.0 support"
 	default y
diff --git a/drivers/usb/host/Makefile b/drivers/usb/host/Makefile
index e8e3b17e42..29d4f87e38 100644
--- a/drivers/usb/host/Makefile
+++ b/drivers/usb/host/Makefile
@@ -48,7 +48,6 @@ obj-$(CONFIG_USB_XHCI_BRCM) += xhci-brcm.o
 obj-$(CONFIG_USB_XHCI_HCD) += xhci.o xhci-mem.o xhci-ring.o
 obj-$(CONFIG_USB_XHCI_DWC3) += xhci-dwc3.o
 obj-$(CONFIG_USB_XHCI_DWC3_OF_SIMPLE) += dwc3-of-simple.o
-obj-$(CONFIG_USB_XHCI_ROCKCHIP) += xhci-rockchip.o
 obj-$(CONFIG_USB_XHCI_EXYNOS) += xhci-exynos5.o
 obj-$(CONFIG_USB_XHCI_FSL) += xhci-fsl.o
 obj-$(CONFIG_USB_XHCI_MTK) += xhci-mtk.o
diff --git a/drivers/usb/host/xhci-rockchip.c b/drivers/usb/host/xhci-rockchip.c
deleted file mode 100644
index b67722fe45..0000000000
--- a/drivers/usb/host/xhci-rockchip.c
+++ /dev/null
@@ -1,196 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0+
-/*
- * Copyright (c) 2016 Rockchip, Inc.
- * Authors: Daniel Meng <daniel.meng@rock-chips.com>
- */
-#include <common.h>
-#include <dm.h>
-#include <malloc.h>
-#include <usb.h>
-#include <watchdog.h>
-#include <linux/errno.h>
-#include <linux/compat.h>
-#include <linux/usb/dwc3.h>
-#include <power/regulator.h>
-
-#include <usb/xhci.h>
-
-struct rockchip_xhci_platdata {
-	fdt_addr_t hcd_base;
-	struct udevice *vbus_supply;
-};
-
-/*
- * Contains pointers to register base addresses
- * for the usb controller.
- */
-struct rockchip_xhci {
-	struct usb_platdata usb_plat;
-	struct xhci_ctrl ctrl;
-	struct xhci_hccr *hcd;
-	struct dwc3 *dwc3_reg;
-};
-
-static int xhci_usb_ofdata_to_platdata(struct udevice *dev)
-{
-	struct rockchip_xhci_platdata *plat = dev_get_platdata(dev);
-	int ret = 0;
-
-	/*
-	 * Get the base address for XHCI controller from the device node
-	 */
-	plat->hcd_base = dev_read_addr(dev);
-	if (plat->hcd_base == FDT_ADDR_T_NONE) {
-		pr_err("Can't get the XHCI register base address\n");
-		return -ENXIO;
-	}
-
-	/* Vbus regulator */
-	ret = device_get_supply_regulator(dev, "vbus-supply",
-					  &plat->vbus_supply);
-	if (ret)
-		debug("Can't get VBus regulator!\n");
-
-	return 0;
-}
-
-/*
- * rockchip_dwc3_phy_setup() - Configure USB PHY Interface of DWC3 Core
- * @dwc: Pointer to our controller context structure
- * @dev: Pointer to ulcass device
- */
-static void rockchip_dwc3_phy_setup(struct dwc3 *dwc3_reg,
-				    struct udevice *dev)
-{
-	u32 reg;
-	u32 utmi_bits;
-
-	/* Set dwc3 usb2 phy config */
-	reg = readl(&dwc3_reg->g_usb2phycfg[0]);
-
-	if (dev_read_bool(dev, "snps,dis-enblslpm-quirk"))
-		reg &= ~DWC3_GUSB2PHYCFG_ENBLSLPM;
-
-	utmi_bits = dev_read_u32_default(dev, "snps,phyif-utmi-bits", -1);
-	if (utmi_bits == 16) {
-		reg |= DWC3_GUSB2PHYCFG_PHYIF;
-		reg &= ~DWC3_GUSB2PHYCFG_USBTRDTIM_MASK;
-		reg |= DWC3_GUSB2PHYCFG_USBTRDTIM_16BIT;
-	} else if (utmi_bits == 8) {
-		reg &= ~DWC3_GUSB2PHYCFG_PHYIF;
-		reg &= ~DWC3_GUSB2PHYCFG_USBTRDTIM_MASK;
-		reg |= DWC3_GUSB2PHYCFG_USBTRDTIM_8BIT;
-	}
-
-	if (dev_read_bool(dev, "snps,dis-u2-freeclk-exists-quirk"))
-		reg &= ~DWC3_GUSB2PHYCFG_U2_FREECLK_EXISTS;
-
-	if (dev_read_bool(dev, "snps,dis-u2-susphy-quirk"))
-		reg &= ~DWC3_GUSB2PHYCFG_SUSPHY;
-
-	writel(reg, &dwc3_reg->g_usb2phycfg[0]);
-}
-
-static int rockchip_xhci_core_init(struct rockchip_xhci *rkxhci,
-				   struct udevice *dev)
-{
-	int ret;
-
-	ret = dwc3_core_init(rkxhci->dwc3_reg);
-	if (ret) {
-		pr_err("failed to initialize core\n");
-		return ret;
-	}
-
-	rockchip_dwc3_phy_setup(rkxhci->dwc3_reg, dev);
-
-	/* We are hard-coding DWC3 core to Host Mode */
-	dwc3_set_mode(rkxhci->dwc3_reg, DWC3_GCTL_PRTCAP_HOST);
-
-	return 0;
-}
-
-static int rockchip_xhci_core_exit(struct rockchip_xhci *rkxhci)
-{
-	return 0;
-}
-
-static int xhci_usb_probe(struct udevice *dev)
-{
-	struct rockchip_xhci_platdata *plat = dev_get_platdata(dev);
-	struct rockchip_xhci *ctx = dev_get_priv(dev);
-	struct xhci_hcor *hcor;
-	int ret;
-
-	ctx->hcd = (struct xhci_hccr *)plat->hcd_base;
-	ctx->dwc3_reg = (struct dwc3 *)((char *)(ctx->hcd) + DWC3_REG_OFFSET);
-	hcor = (struct xhci_hcor *)((uint64_t)ctx->hcd +
-			HC_LENGTH(xhci_readl(&ctx->hcd->cr_capbase)));
-
-	if (plat->vbus_supply) {
-		ret = regulator_set_enable(plat->vbus_supply, true);
-		if (ret) {
-			pr_err("XHCI: failed to set VBus supply\n");
-			return ret;
-		}
-	}
-
-	ret = rockchip_xhci_core_init(ctx, dev);
-	if (ret) {
-		pr_err("XHCI: failed to initialize controller\n");
-		return ret;
-	}
-
-	return xhci_register(dev, ctx->hcd, hcor);
-}
-
-static int xhci_usb_remove(struct udevice *dev)
-{
-	struct rockchip_xhci_platdata *plat = dev_get_platdata(dev);
-	struct rockchip_xhci *ctx = dev_get_priv(dev);
-	int ret;
-
-	ret = xhci_deregister(dev);
-	if (ret)
-		return ret;
-	ret = rockchip_xhci_core_exit(ctx);
-	if (ret)
-		return ret;
-
-	if (plat->vbus_supply) {
-		ret = regulator_set_enable(plat->vbus_supply, false);
-		if (ret)
-			pr_err("XHCI: failed to set VBus supply\n");
-	}
-
-	return ret;
-}
-
-static const struct udevice_id xhci_usb_ids[] = {
-	{ .compatible = "rockchip,rk3328-xhci" },
-	{ }
-};
-
-U_BOOT_DRIVER(usb_xhci) = {
-	.name	= "xhci_rockchip",
-	.id	= UCLASS_USB,
-	.of_match = xhci_usb_ids,
-	.ofdata_to_platdata = xhci_usb_ofdata_to_platdata,
-	.probe = xhci_usb_probe,
-	.remove = xhci_usb_remove,
-	.ops	= &xhci_usb_ops,
-	.bind	= dm_scan_fdt_dev,
-	.platdata_auto_alloc_size = sizeof(struct rockchip_xhci_platdata),
-	.priv_auto_alloc_size = sizeof(struct rockchip_xhci),
-	.flags	= DM_FLAG_ALLOC_PRIV_DMA,
-};
-
-static const struct udevice_id usb_phy_ids[] = {
-	{ .compatible = "rockchip,rk3328-usb3-phy" },
-	{ }
-};
-
-U_BOOT_DRIVER(usb_phy) = {
-	.name = "usb_phy_rockchip",
-	.of_match = usb_phy_ids,
-};
-- 
2.17.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

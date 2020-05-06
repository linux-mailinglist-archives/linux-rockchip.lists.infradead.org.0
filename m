Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75A351C6A68
	for <lists+linux-rockchip@lfdr.de>; Wed,  6 May 2020 09:51:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=2a/mG/ZRSFe4Y1O/5ANzcyUORregW4XSGslkfu063Vw=; b=ZRJnp5hjkv+p1irmnJeQQ3l4kt
	UhdwG4JfEIFV5rLZImQdZdJIf//hxnAObEUqt0kyq5oP+dW5v4M/g+wdIxM2RRLGu/lpx4p1GBEJS
	f3p2pKid6u3xJbJVCLHeZpBDGNYwKqNl8pPbVUwJd2m9vQaYdgmaQRca5oyX8hQjfLHnfCIJk+j8J
	AOfyAaKqG5T8O2Rum2D4W4xAb5boHckoi44Kjn/bFY8rNXtLFR8HGfW2/EcPtyOlTZSztWKcdZj0u
	x5no7PuKSOs4iQBPeHP59NQBO4d53B3aWV+CXHBjmN6n+02SYh3t9swJJeSsLfhok5+zsDjXC9FQF
	la1CZCZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWEpd-0006nH-PZ; Wed, 06 May 2020 07:51:05 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWEpZ-0006lS-O8
 for linux-rockchip@lists.infradead.org; Wed, 06 May 2020 07:51:03 +0000
Received: by mail-pj1-x1044.google.com with SMTP id t40so460674pjb.3
 for <linux-rockchip@lists.infradead.org>; Wed, 06 May 2020 00:51:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=YyU2dvehRtAdVwjyyr1X/cdSXtg/WzPDSpQhjuSLpDQ=;
 b=q+EEL4UwaRxggsL0VYX5Da41ckWH/IFOCs3mQzhFa5cr7sVFcnP/R5/Q4gSQSiEw0Q
 Lv67fTMl7Eq7+cmZTQp4Ckl3g6tkp0n7gsHF8oZhN5e9yZ5sY4batNePi8KeEk5Nr2KO
 btegVrSSau7nKMbYPEqp+wUmCHJ3mHDMUhqXM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=YyU2dvehRtAdVwjyyr1X/cdSXtg/WzPDSpQhjuSLpDQ=;
 b=INadDhJ7g+uKjA75M/jvPvR4y6ddlQrN0O2/5d21wP42UNPrHc17rrrZspg3gfDzkV
 zkV+PY6p1uDeBhqgSAOeUALPvAfT5pTPfp85zOBXgnw7P6lv7Xnc5eROI9lPnD/2QfY6
 N8/OHr1Nl5p7FXaKstV3dygGOpZoY2m8Of8T4Ys+pTZlF32J2Yc8qef/0eJJREHkiSq6
 fkV+IXXV+VwMGu7I3wPA3IMeBvQ0uZWFLw9Mzx0K5tuuv2QKgWBxofjTQDY+T/t0CltE
 I85P/4+McaPtBmhdoK2xEB3/CA4VXmusKmjZjoat8z3SYuPdeJoU7E9xH69tKAvS+T42
 NVyg==
X-Gm-Message-State: AGi0Pubfvnu7vJYrd2oiccuZTUVnNLpPbTRSSvbUm4UOs0W6/AJ4AWPY
 SV3vh+qMt/GFkdGWHcn6bXPw/tkb5m0MwA==
X-Google-Smtp-Source: APiQypJ4vmS3qKs4jUWx0eCjcfljasq9qYOUUa2AO8YZ8WsVTB1n3mgAMlpPwtWfnAjYsqe0dkBeFw==
X-Received: by 2002:a17:902:b185:: with SMTP id
 s5mr6234520plr.99.1588751461127; 
 Wed, 06 May 2020 00:51:01 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:c598:8eeb:af7:7f36])
 by smtp.gmail.com with ESMTPSA id
 y186sm1011133pfy.66.2020.05.06.00.50.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 May 2020 00:51:00 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: kever.yang@rock-chips.com, philipp.tomsich@theobroma-systems.com,
 Simon Glass <sjg@chromium.org>, Frank Wang <frank.wang@rock-chips.com>,
 wmc@rock-chips.com, chenjh@rock-chips.com, heiko@sntech.de
Subject: [PATCH v2 4/7] phy: rockchip: Add Rockchip USB2PHY driver
Date: Wed,  6 May 2020 13:20:22 +0530
Message-Id: <20200506075025.1677-5-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200506075025.1677-1-jagan@amarulasolutions.com>
References: <20200506075025.1677-1-jagan@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_005101_787675_878B562D 
X-CRM114-Status: GOOD (  18.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1044 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Jagan Teki <jagan@amarulasolutions.com>, u-boot@lists.denx.de,
 Belisko Marek <marek.belisko@gmail.com>, linux-amarula@amarulasolutions.com,
 linux-rockchip@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Add Rockchip USB2PHY driver with initial support.

This will help to use it for EHCI controller in host
mode, and USB 3.0 controller in otg mode.

More functionality like charge, vbus detection will
add it in future changes.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v2:
- update with Kconfig menu

 drivers/Makefile                              |   1 +
 drivers/phy/Kconfig                           |   1 +
 drivers/phy/rockchip/Kconfig                  |  14 +
 drivers/phy/rockchip/Makefile                 |   6 +
 drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 312 ++++++++++++++++++
 5 files changed, 334 insertions(+)
 create mode 100644 drivers/phy/rockchip/Kconfig
 create mode 100644 drivers/phy/rockchip/Makefile
 create mode 100644 drivers/phy/rockchip/phy-rockchip-inno-usb2.c

diff --git a/drivers/Makefile b/drivers/Makefile
index 4208750428..94e8c5da17 100644
--- a/drivers/Makefile
+++ b/drivers/Makefile
@@ -91,6 +91,7 @@ obj-y += dfu/
 obj-$(CONFIG_PCH) += pch/
 obj-y += phy/allwinner/
 obj-y += phy/marvell/
+obj-y += phy/rockchip/
 obj-y += rtc/
 obj-y += scsi/
 obj-y += sound/
diff --git a/drivers/phy/Kconfig b/drivers/phy/Kconfig
index a72f34f0d4..e19a6c0aa3 100644
--- a/drivers/phy/Kconfig
+++ b/drivers/phy/Kconfig
@@ -217,4 +217,5 @@ config PHY_MTK_TPHY
 	  multi-ports is first version, otherwise is second veriosn,
 	  so you can easily distinguish them by banks layout.
 
+source "drivers/phy/rockchip/Kconfig"
 endmenu
diff --git a/drivers/phy/rockchip/Kconfig b/drivers/phy/rockchip/Kconfig
new file mode 100644
index 0000000000..d73ac695e1
--- /dev/null
+++ b/drivers/phy/rockchip/Kconfig
@@ -0,0 +1,14 @@
+#
+# Phy drivers for Rockchip platforms
+#
+
+menu "Rockchip PHY driver"
+
+config PHY_ROCKCHIP_INNO_USB2
+	bool "Rockchip INNO USB2PHY Driver"
+	depends on ARCH_ROCKCHIP
+	select PHY
+	help
+	  Support for Rockchip USB2.0 PHY with Innosilicon IP block.
+
+endmenu
diff --git a/drivers/phy/rockchip/Makefile b/drivers/phy/rockchip/Makefile
new file mode 100644
index 0000000000..9b0cbc6acf
--- /dev/null
+++ b/drivers/phy/rockchip/Makefile
@@ -0,0 +1,6 @@
+# SPDX-License-Identifier: GPL-2.0+
+#
+# Copyright (C) 2020 Amarula Solutions(India)
+#
+
+obj-$(CONFIG_PHY_ROCKCHIP_INNO_USB2)	+= phy-rockchip-inno-usb2.o
diff --git a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
new file mode 100644
index 0000000000..dd4905d834
--- /dev/null
+++ b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
@@ -0,0 +1,312 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Rockchip USB2.0 PHY with Innosilicon IP block driver
+ *
+ * Copyright (C) 2016 Fuzhou Rockchip Electronics Co., Ltd
+ * Copyright (C) 2020 Amarula Solutions(India)
+ */
+
+#include <common.h>
+#include <clk.h>
+#include <dm.h>
+#include <dm/device_compat.h>
+#include <dm/lists.h>
+#include <generic-phy.h>
+#include <reset.h>
+#include <syscon.h>
+#include <asm/gpio.h>
+#include <asm/io.h>
+#include <linux/iopoll.h>
+#include <asm/arch-rockchip/clock.h>
+
+DECLARE_GLOBAL_DATA_PTR;
+
+#define usleep_range(a, b) udelay((b))
+#define BIT_WRITEABLE_SHIFT	16
+
+enum rockchip_usb2phy_port_id {
+	USB2PHY_PORT_OTG,
+	USB2PHY_PORT_HOST,
+	USB2PHY_NUM_PORTS,
+};
+
+struct usb2phy_reg {
+	unsigned int	offset;
+	unsigned int	bitend;
+	unsigned int	bitstart;
+	unsigned int	disable;
+	unsigned int	enable;
+};
+
+struct rockchip_usb2phy_port_cfg {
+	struct usb2phy_reg	phy_sus;
+	struct usb2phy_reg	bvalid_det_en;
+	struct usb2phy_reg	bvalid_det_st;
+	struct usb2phy_reg	bvalid_det_clr;
+	struct usb2phy_reg	ls_det_en;
+	struct usb2phy_reg	ls_det_st;
+	struct usb2phy_reg	ls_det_clr;
+	struct usb2phy_reg	utmi_avalid;
+	struct usb2phy_reg	utmi_bvalid;
+	struct usb2phy_reg	utmi_ls;
+	struct usb2phy_reg	utmi_hstdet;
+};
+
+struct rockchip_usb2phy_cfg {
+	unsigned int reg;
+	const struct rockchip_usb2phy_port_cfg port_cfgs[USB2PHY_NUM_PORTS];
+};
+
+struct rockchip_usb2phy {
+	void *reg_base;
+	struct clk phyclk;
+	const struct rockchip_usb2phy_cfg *phy_cfg;
+};
+
+static inline int property_enable(void *reg_base,
+				  const struct usb2phy_reg *reg, bool en)
+{
+	unsigned int val, mask, tmp;
+
+	tmp = en ? reg->enable : reg->disable;
+	mask = GENMASK(reg->bitend, reg->bitstart);
+	val = (tmp << reg->bitstart) | (mask << BIT_WRITEABLE_SHIFT);
+
+	return writel(val, reg_base + reg->offset);
+}
+
+static const
+struct rockchip_usb2phy_port_cfg *us2phy_get_port(struct phy *phy)
+{
+	struct udevice *parent = dev_get_parent(phy->dev);
+	struct rockchip_usb2phy *priv = dev_get_priv(parent);
+	const struct rockchip_usb2phy_cfg *phy_cfg = priv->phy_cfg;
+
+	return &phy_cfg->port_cfgs[phy->id];
+}
+
+static int rockchip_usb2phy_power_on(struct phy *phy)
+{
+	struct udevice *parent = dev_get_parent(phy->dev);
+	struct rockchip_usb2phy *priv = dev_get_priv(parent);
+	const struct rockchip_usb2phy_port_cfg *port_cfg = us2phy_get_port(phy);
+
+	property_enable(priv->reg_base, &port_cfg->phy_sus, false);
+
+	/* waiting for the utmi_clk to become stable */
+	usleep_range(1500, 2000);
+
+	return 0;
+}
+
+static int rockchip_usb2phy_power_off(struct phy *phy)
+{
+	struct udevice *parent = dev_get_parent(phy->dev);
+	struct rockchip_usb2phy *priv = dev_get_priv(parent);
+	const struct rockchip_usb2phy_port_cfg *port_cfg = us2phy_get_port(phy);
+
+	property_enable(priv->reg_base, &port_cfg->phy_sus, true);
+
+	return 0;
+}
+
+static int rockchip_usb2phy_init(struct phy *phy)
+{
+	struct udevice *parent = dev_get_parent(phy->dev);
+	struct rockchip_usb2phy *priv = dev_get_priv(parent);
+	const struct rockchip_usb2phy_port_cfg *port_cfg = us2phy_get_port(phy);
+	int ret;
+
+	ret = clk_enable(&priv->phyclk);
+	if (ret) {
+		dev_err(phy->dev, "failed to enable phyclk (ret=%d)\n", ret);
+		return ret;
+	}
+
+	if (phy->id == USB2PHY_PORT_OTG) {
+		property_enable(priv->reg_base, &port_cfg->bvalid_det_clr, true);
+		property_enable(priv->reg_base, &port_cfg->bvalid_det_en, true);
+	} else if (phy->id == USB2PHY_PORT_HOST) {
+		property_enable(priv->reg_base, &port_cfg->bvalid_det_clr, true);
+		property_enable(priv->reg_base, &port_cfg->bvalid_det_en, true);
+	}
+
+	return 0;
+}
+
+static int rockchip_usb2phy_exit(struct phy *phy)
+{
+	struct udevice *parent = dev_get_parent(phy->dev);
+	struct rockchip_usb2phy *priv = dev_get_priv(parent);
+
+	clk_disable(&priv->phyclk);
+
+	return 0;
+}
+
+static int rockchip_usb2phy_of_xlate(struct phy *phy,
+				     struct ofnode_phandle_args *args)
+{
+	const char *name = phy->dev->name;
+
+	if (!strcasecmp(name, "host-port"))
+		phy->id = USB2PHY_PORT_HOST;
+	else if (!strcasecmp(name, "otg-port"))
+		phy->id = USB2PHY_PORT_OTG;
+	else
+		dev_err(phy->dev, "improper %s device\n", name);
+
+	return 0;
+}
+
+static struct phy_ops rockchip_usb2phy_ops = {
+	.init = rockchip_usb2phy_init,
+	.exit = rockchip_usb2phy_exit,
+	.power_on = rockchip_usb2phy_power_on,
+	.power_off = rockchip_usb2phy_power_off,
+	.of_xlate = rockchip_usb2phy_of_xlate,
+};
+
+static int rockchip_usb2phy_probe(struct udevice *dev)
+{
+	struct rockchip_usb2phy *priv = dev_get_priv(dev);
+	const struct rockchip_usb2phy_cfg *phy_cfgs;
+	unsigned int reg;
+	int index, ret;
+
+	priv->reg_base = syscon_get_first_range(ROCKCHIP_SYSCON_GRF);
+	if (IS_ERR(priv->reg_base))
+		return PTR_ERR(priv->reg_base);
+
+	ret = dev_read_u32_index(dev, "reg", 1, &reg);
+	if (ret) {
+		dev_err(dev, "failed to read reg property (ret = %d)\n", ret);
+		return ret;
+	}
+
+	phy_cfgs = (const struct rockchip_usb2phy_cfg *)
+					dev_get_driver_data(dev);
+	if (!phy_cfgs)
+		return -EINVAL;
+
+	/* find out a proper config which can be matched with dt. */
+	index = 0;
+	while (phy_cfgs[index].reg) {
+		if (phy_cfgs[index].reg == reg) {
+			priv->phy_cfg = &phy_cfgs[index];
+			break;
+		}
+
+		++index;
+	}
+
+	if (!priv->phy_cfg) {
+		dev_err(dev, "failed find proper phy-cfg\n");
+		return -EINVAL;
+	}
+
+	ret = clk_get_by_name(dev, "phyclk", &priv->phyclk);
+	if (ret) {
+		dev_err(dev, "failed to get the phyclk (ret=%d)\n", ret);
+		return ret;
+	}
+
+	return 0;
+}
+
+static int rockchip_usb2phy_bind(struct udevice *dev)
+{
+	struct udevice *usb2phy_dev;
+	ofnode node;
+	const char *name;
+	int ret = 0;
+
+	dev_for_each_subnode(node, dev) {
+		if (!ofnode_valid(node)) {
+			dev_info(dev, "subnode %s not found\n", dev->name);
+			return -ENXIO;
+		}
+
+		name = ofnode_get_name(node);
+		dev_dbg(dev, "subnode %s\n", name);
+
+		ret = device_bind_driver_to_node(dev, "rockchip_usb2phy_port",
+						 name, node, &usb2phy_dev);
+		if (ret) {
+			dev_err(dev,
+				"'%s' cannot bind 'rockchip_usb2phy_port'\n", name);
+			return ret;
+		}
+	}
+
+	return ret;
+}
+
+static const struct rockchip_usb2phy_cfg rk3399_usb2phy_cfgs[] = {
+	{
+		.reg		= 0xe450,
+		.port_cfgs	= {
+			[USB2PHY_PORT_OTG] = {
+				.phy_sus	= { 0xe454, 1, 0, 2, 1 },
+				.bvalid_det_en	= { 0xe3c0, 3, 3, 0, 1 },
+				.bvalid_det_st	= { 0xe3e0, 3, 3, 0, 1 },
+				.bvalid_det_clr	= { 0xe3d0, 3, 3, 0, 1 },
+				.utmi_avalid	= { 0xe2ac, 7, 7, 0, 1 },
+				.utmi_bvalid	= { 0xe2ac, 12, 12, 0, 1 },
+			},
+			[USB2PHY_PORT_HOST] = {
+				.phy_sus	= { 0xe458, 1, 0, 0x2, 0x1 },
+				.ls_det_en	= { 0xe3c0, 6, 6, 0, 1 },
+				.ls_det_st	= { 0xe3e0, 6, 6, 0, 1 },
+				.ls_det_clr	= { 0xe3d0, 6, 6, 0, 1 },
+				.utmi_ls	= { 0xe2ac, 22, 21, 0, 1 },
+				.utmi_hstdet	= { 0xe2ac, 23, 23, 0, 1 }
+			}
+		},
+	},
+	{
+		.reg		= 0xe460,
+		.port_cfgs	= {
+			[USB2PHY_PORT_OTG] = {
+				.phy_sus        = { 0xe464, 1, 0, 2, 1 },
+				.bvalid_det_en  = { 0xe3c0, 8, 8, 0, 1 },
+				.bvalid_det_st  = { 0xe3e0, 8, 8, 0, 1 },
+				.bvalid_det_clr = { 0xe3d0, 8, 8, 0, 1 },
+				.utmi_avalid	= { 0xe2ac, 10, 10, 0, 1 },
+				.utmi_bvalid    = { 0xe2ac, 16, 16, 0, 1 },
+			},
+			[USB2PHY_PORT_HOST] = {
+				.phy_sus	= { 0xe468, 1, 0, 0x2, 0x1 },
+				.ls_det_en	= { 0xe3c0, 11, 11, 0, 1 },
+				.ls_det_st	= { 0xe3e0, 11, 11, 0, 1 },
+				.ls_det_clr	= { 0xe3d0, 11, 11, 0, 1 },
+				.utmi_ls	= { 0xe2ac, 26, 25, 0, 1 },
+				.utmi_hstdet	= { 0xe2ac, 27, 27, 0, 1 }
+			}
+		},
+	},
+	{ /* sentinel */ }
+};
+
+static const struct udevice_id rockchip_usb2phy_ids[] = {
+	{
+		.compatible = "rockchip,rk3399-usb2phy",
+		.data = (ulong)&rk3399_usb2phy_cfgs,
+	},
+	{ /* sentinel */ }
+};
+
+U_BOOT_DRIVER(rockchip_usb2phy_port) = {
+	.name		= "rockchip_usb2phy_port",
+	.id		= UCLASS_PHY,
+	.ops		= &rockchip_usb2phy_ops,
+};
+
+U_BOOT_DRIVER(rockchip_usb2phy) = {
+	.name	= "rockchip_usb2phy",
+	.id	= UCLASS_PHY,
+	.of_match = rockchip_usb2phy_ids,
+	.probe = rockchip_usb2phy_probe,
+	.bind = rockchip_usb2phy_bind,
+	.priv_auto_alloc_size = sizeof(struct rockchip_usb2phy),
+};
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

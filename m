Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9260B1C09A4
	for <lists+linux-rockchip@lfdr.de>; Thu, 30 Apr 2020 23:46:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=DRgpAHZYscfG+f9ApSgBzU65FXuf6dUaHiYRWkzxP3I=; b=IRrJ8bw81Hq+PHRvqMLNBxLxiS
	w6u9ni4OUw2Sei3FWY0CvV54vtAS1ex0c+HX8hB2HDqfUdGDmAj69ha+cROOc9xVD6ZkeqDpziMwt
	pTI8BtcSGPLsJQjSiikeHzJsJrCz79MJ4R3fNtuj+FVnSV4f+DwjGQunqhR3+ySnmOC99j12XNCyK
	Yt0vzQ57kMdUqvb1+wfMiYRV7XlVDmQtkadbnVSn9MzKMVT7J2ZIJnPWMgtLLQoRwxhjc6IIY0IHt
	/NrImql1R6pX2vdtbD/ySPh7M9WDHXqNyZoxxz01Rvog7M7qgG4GZjg7+qcFpn3jupjb+U/z5sa88
	raYichOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUH0j-0007Gl-Og; Thu, 30 Apr 2020 21:46:25 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUH0f-0007ES-H5
 for linux-rockchip@lists.infradead.org; Thu, 30 Apr 2020 21:46:23 +0000
Received: by mail-pg1-x543.google.com with SMTP id d3so3556456pgj.6
 for <linux-rockchip@lists.infradead.org>; Thu, 30 Apr 2020 14:46:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=xMV5+war9q+lO4Dguz3Z/0skJPu2J+02fu/fMUfRfPc=;
 b=Af8s7f5o5hn0jLL0yDDDOROqen1FvdDYkiDy40uR5VvrlyiJd9zZG69giACQ5OlAWM
 HA7Zcoz3UTS98XVQRsYhNVQD5Hluy0uL55er06+fHfSJGZ4I3ZdkNpmk1OoKJIBFG3nh
 C75Fyru372QHgdQlCidMZRgz6nT6zUBII3Izw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=xMV5+war9q+lO4Dguz3Z/0skJPu2J+02fu/fMUfRfPc=;
 b=Ti98NcZkoRXKkaEtLqTJ3TjPM/WsAppi0kyg3XvcuBbeD5LldVdiyq4GjVOUUlF3DI
 lLloaeY+QvCZA8uEWUt39v6+Fb+A0xkEKcZ/BfU63xf3azJuFA5XMCB1/Ezgj7EdiECM
 +BYpy+l+Uc7yIzWVpg/p20GPShmdceoAROG7bZbkNFLQfxbq3WiHrnyj/xAOX1Vx3FKY
 L7cHRfCUnt7m5WdO5obNnL+zafcvbcM9RUOby0QF7Ue+sdENd77B1QAyhy2pLomuj9XM
 JTRoy2Iwg8nvE4e0MvcegmaQif4s9SbgHde3twZLX95M5Xv+PmSXsDauH3MhpGSlunQE
 GzoA==
X-Gm-Message-State: AGi0PuZSBAtKKRpuzB/BDmVTNZoH8RjmbIAWi4/apQINR/iloIiF+4Ex
 L7W+1nn1+r2S51a423cE3hlycw==
X-Google-Smtp-Source: APiQypKbPJnXAg7ywE7cDB7eYZNoeE4syQ5LtfGv9kQt1ID+BUFj3W03iPXUK2XqEH1l7j3dssbKIA==
X-Received: by 2002:a63:7742:: with SMTP id s63mr1014611pgc.133.1588283180854; 
 Thu, 30 Apr 2020 14:46:20 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:a9f2:11c6:8c6c:2861])
 by smtp.gmail.com with ESMTPSA id p64sm615243pjp.7.2020.04.30.14.46.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 Apr 2020 14:46:19 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Tom Rini <trini@konsulko.com>, Frank Wang <frank.wang@rock-chips.com>,
 William Wu <william.wu@rock-chips.com>,
 Shawn Lin <shawn.lin@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>,
 Patrice Chotard <patrice.chotard@st.com>
Subject: [RFC 7/7] pci: rockchip: Drop legacy PHY driver
Date: Fri,  1 May 2020 03:15:29 +0530
Message-Id: <20200430214529.18887-8-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200430214529.18887-1-jagan@amarulasolutions.com>
References: <20200430214529.18887-1-jagan@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_144621_573240_8072F238 
X-CRM114-Status: GOOD (  13.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
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
Cc: u-boot@lists.denx.de, linux-amarula@amarulasolutions.com,
 Jagan Teki <jagan@amarulasolutions.com>, linux-rockchip@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Drop the legacy PHY driver and it's associated code since
the PHY handling driver now part of Generic PHY framework.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 drivers/pci/Makefile            |   2 +-
 drivers/pci/pcie_rockchip.c     |  75 +++++++++++-
 drivers/pci/pcie_rockchip.h     | 147 -----------------------
 drivers/pci/pcie_rockchip_phy.c | 205 --------------------------------
 4 files changed, 74 insertions(+), 355 deletions(-)
 delete mode 100644 drivers/pci/pcie_rockchip.h
 delete mode 100644 drivers/pci/pcie_rockchip_phy.c

diff --git a/drivers/pci/Makefile b/drivers/pci/Makefile
index 955351c5c2..493e9354dd 100644
--- a/drivers/pci/Makefile
+++ b/drivers/pci/Makefile
@@ -43,4 +43,4 @@ obj-$(CONFIG_PCI_PHYTIUM) += pcie_phytium.o
 obj-$(CONFIG_PCIE_INTEL_FPGA) += pcie_intel_fpga.o
 obj-$(CONFIG_PCI_KEYSTONE) += pcie_dw_ti.o
 obj-$(CONFIG_PCIE_MEDIATEK) += pcie_mediatek.o
-obj-$(CONFIG_PCIE_ROCKCHIP) += pcie_rockchip.o pcie_rockchip_phy.o
+obj-$(CONFIG_PCIE_ROCKCHIP) += pcie_rockchip.o
diff --git a/drivers/pci/pcie_rockchip.c b/drivers/pci/pcie_rockchip.c
index 3e4ba9635f..cf24479f85 100644
--- a/drivers/pci/pcie_rockchip.c
+++ b/drivers/pci/pcie_rockchip.c
@@ -15,6 +15,7 @@
 #include <clk.h>
 #include <dm.h>
 #include <dm/device_compat.h>
+#include <generic-phy.h>
 #include <pci.h>
 #include <power-domain.h>
 #include <power/regulator.h>
@@ -25,10 +26,80 @@
 #include <asm/arch-rockchip/clock.h>
 #include <linux/iopoll.h>
 
-#include "pcie_rockchip.h"
-
 DECLARE_GLOBAL_DATA_PTR;
 
+#define HIWORD_UPDATE(mask, val)        (((mask) << 16) | (val))
+#define HIWORD_UPDATE_BIT(val)          HIWORD_UPDATE(val, val)
+
+#define ENCODE_LANES(x)                 ((((x) >> 1) & 3) << 4)
+#define PCIE_CLIENT_BASE                0x0
+#define PCIE_CLIENT_CONFIG              (PCIE_CLIENT_BASE + 0x00)
+#define PCIE_CLIENT_CONF_ENABLE         HIWORD_UPDATE_BIT(0x0001)
+#define PCIE_CLIENT_LINK_TRAIN_ENABLE   HIWORD_UPDATE_BIT(0x0002)
+#define PCIE_CLIENT_MODE_RC             HIWORD_UPDATE_BIT(0x0040)
+#define PCIE_CLIENT_GEN_SEL_1           HIWORD_UPDATE(0x0080, 0)
+#define PCIE_CLIENT_BASIC_STATUS1	0x0048
+#define PCIE_CLIENT_LINK_STATUS_UP	GENMASK(21, 20)
+#define PCIE_CLIENT_LINK_STATUS_MASK	GENMASK(21, 20)
+#define PCIE_LINK_UP(x) \
+	(((x) & PCIE_CLIENT_LINK_STATUS_MASK) == PCIE_CLIENT_LINK_STATUS_UP)
+#define PCIE_RC_NORMAL_BASE		0x800000
+#define PCIE_LM_BASE			0x900000
+#define PCIE_LM_VENDOR_ID              (PCIE_LM_BASE + 0x44)
+#define PCIE_LM_VENDOR_ROCKCHIP		0x1d87
+#define PCIE_LM_RCBAR			(PCIE_LM_BASE + 0x300)
+#define PCIE_LM_RCBARPIE		BIT(19)
+#define PCIE_LM_RCBARPIS		BIT(20)
+#define PCIE_RC_BASE			0xa00000
+#define PCIE_RC_CONFIG_DCR		(PCIE_RC_BASE + 0x0c4)
+#define PCIE_RC_CONFIG_DCR_CSPL_SHIFT	18
+#define PCIE_RC_CONFIG_DCR_CPLS_SHIFT	26
+#define PCIE_RC_PCIE_LCAP		(PCIE_RC_BASE + 0x0cc)
+#define PCIE_RC_PCIE_LCAP_APMS_L0S	BIT(10)
+#define PCIE_ATR_BASE			0xc00000
+#define PCIE_ATR_OB_ADDR0(i)		(PCIE_ATR_BASE + 0x000 + (i) * 0x20)
+#define PCIE_ATR_OB_ADDR1(i)		(PCIE_ATR_BASE + 0x004 + (i) * 0x20)
+#define PCIE_ATR_OB_DESC0(i)		(PCIE_ATR_BASE + 0x008 + (i) * 0x20)
+#define PCIE_ATR_OB_DESC1(i)		(PCIE_ATR_BASE + 0x00c + (i) * 0x20)
+#define PCIE_ATR_IB_ADDR0(i)		(PCIE_ATR_BASE + 0x800 + (i) * 0x8)
+#define PCIE_ATR_IB_ADDR1(i)		(PCIE_ATR_BASE + 0x804 + (i) * 0x8)
+#define PCIE_ATR_HDR_MEM		0x2
+#define PCIE_ATR_HDR_IO			0x6
+#define PCIE_ATR_HDR_CFG_TYPE0		0xa
+#define PCIE_ATR_HDR_CFG_TYPE1		0xb
+#define PCIE_ATR_HDR_RID		BIT(23)
+
+#define PCIE_ATR_OB_REGION0_SIZE	(32 * 1024 * 1024)
+#define PCIE_ATR_OB_REGION_SIZE		(1 * 1024 * 1024)
+
+struct rockchip_pcie {
+	fdt_addr_t axi_base;
+	fdt_addr_t apb_base;
+	int first_busno;
+	struct udevice *dev;
+
+	/* resets */
+	struct reset_ctl core_rst;
+	struct reset_ctl mgmt_rst;
+	struct reset_ctl mgmt_sticky_rst;
+	struct reset_ctl pipe_rst;
+	struct reset_ctl pm_rst;
+	struct reset_ctl pclk_rst;
+	struct reset_ctl aclk_rst;
+
+	/* gpio */
+	struct gpio_desc ep_gpio;
+
+	/* vpcie regulators */
+	struct udevice *vpcie12v;
+	struct udevice *vpcie3v3;
+	struct udevice *vpcie1v8;
+	struct udevice *vpcie0v9;
+
+	/* phy */
+	struct phy pcie_phy;
+};
+
 static int rockchip_pcie_off_conf(pci_dev_t bdf, uint offset)
 {
 	unsigned int bus = PCI_BUS(bdf);
diff --git a/drivers/pci/pcie_rockchip.h b/drivers/pci/pcie_rockchip.h
deleted file mode 100644
index 4b06110bfe..0000000000
--- a/drivers/pci/pcie_rockchip.h
+++ /dev/null
@@ -1,147 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0+ */
-/*
- * Rockchip PCIe Headers
- *
- * Copyright (c) 2016 Rockchip, Inc.
- * Copyright (c) 2020 Amarula Solutions(India)
- * Copyright (c) 2020 Jagan Teki <jagan@amarulasolutions.com>
- * Copyright (c) 2019 Patrick Wildt <patrick@blueri.se>
- *
- */
-
-#include <generic-phy.h>
-
-#define HIWORD_UPDATE(mask, val)        (((mask) << 16) | (val))
-#define HIWORD_UPDATE_BIT(val)          HIWORD_UPDATE(val, val)
-
-#define ENCODE_LANES(x)                 ((((x) >> 1) & 3) << 4)
-#define PCIE_CLIENT_BASE                0x0
-#define PCIE_CLIENT_CONFIG              (PCIE_CLIENT_BASE + 0x00)
-#define PCIE_CLIENT_CONF_ENABLE         HIWORD_UPDATE_BIT(0x0001)
-#define PCIE_CLIENT_LINK_TRAIN_ENABLE   HIWORD_UPDATE_BIT(0x0002)
-#define PCIE_CLIENT_MODE_RC             HIWORD_UPDATE_BIT(0x0040)
-#define PCIE_CLIENT_GEN_SEL_1           HIWORD_UPDATE(0x0080, 0)
-#define PCIE_CLIENT_BASIC_STATUS1	0x0048
-#define PCIE_CLIENT_LINK_STATUS_UP	GENMASK(21, 20)
-#define PCIE_CLIENT_LINK_STATUS_MASK	GENMASK(21, 20)
-#define PCIE_LINK_UP(x) \
-	(((x) & PCIE_CLIENT_LINK_STATUS_MASK) == PCIE_CLIENT_LINK_STATUS_UP)
-#define PCIE_RC_NORMAL_BASE		0x800000
-#define PCIE_LM_BASE			0x900000
-#define PCIE_LM_VENDOR_ID              (PCIE_LM_BASE + 0x44)
-#define PCIE_LM_VENDOR_ROCKCHIP		0x1d87
-#define PCIE_LM_RCBAR			(PCIE_LM_BASE + 0x300)
-#define PCIE_LM_RCBARPIE		BIT(19)
-#define PCIE_LM_RCBARPIS		BIT(20)
-#define PCIE_RC_BASE			0xa00000
-#define PCIE_RC_CONFIG_DCR		(PCIE_RC_BASE + 0x0c4)
-#define PCIE_RC_CONFIG_DCR_CSPL_SHIFT	18
-#define PCIE_RC_CONFIG_DCR_CPLS_SHIFT	26
-#define PCIE_RC_PCIE_LCAP		(PCIE_RC_BASE + 0x0cc)
-#define PCIE_RC_PCIE_LCAP_APMS_L0S	BIT(10)
-#define PCIE_ATR_BASE			0xc00000
-#define PCIE_ATR_OB_ADDR0(i)		(PCIE_ATR_BASE + 0x000 + (i) * 0x20)
-#define PCIE_ATR_OB_ADDR1(i)		(PCIE_ATR_BASE + 0x004 + (i) * 0x20)
-#define PCIE_ATR_OB_DESC0(i)		(PCIE_ATR_BASE + 0x008 + (i) * 0x20)
-#define PCIE_ATR_OB_DESC1(i)		(PCIE_ATR_BASE + 0x00c + (i) * 0x20)
-#define PCIE_ATR_IB_ADDR0(i)		(PCIE_ATR_BASE + 0x800 + (i) * 0x8)
-#define PCIE_ATR_IB_ADDR1(i)		(PCIE_ATR_BASE + 0x804 + (i) * 0x8)
-#define PCIE_ATR_HDR_MEM		0x2
-#define PCIE_ATR_HDR_IO			0x6
-#define PCIE_ATR_HDR_CFG_TYPE0		0xa
-#define PCIE_ATR_HDR_CFG_TYPE1		0xb
-#define PCIE_ATR_HDR_RID		BIT(23)
-
-#define PCIE_ATR_OB_REGION0_SIZE	(32 * 1024 * 1024)
-#define PCIE_ATR_OB_REGION_SIZE		(1 * 1024 * 1024)
-
-/*
- * The higher 16-bit of this register is used for write protection
- * only if BIT(x + 16) set to 1 the BIT(x) can be written.
- */
-#define HIWORD_UPDATE_MASK(val, mask, shift) \
-		((val) << (shift) | (mask) << ((shift) + 16))
-
-#define PHY_CFG_DATA_SHIFT    7
-#define PHY_CFG_ADDR_SHIFT    1
-#define PHY_CFG_DATA_MASK     0xf
-#define PHY_CFG_ADDR_MASK     0x3f
-#define PHY_CFG_RD_MASK       0x3ff
-#define PHY_CFG_WR_ENABLE     1
-#define PHY_CFG_WR_DISABLE    1
-#define PHY_CFG_WR_SHIFT      0
-#define PHY_CFG_WR_MASK       1
-#define PHY_CFG_PLL_LOCK      0x10
-#define PHY_CFG_CLK_TEST      0x10
-#define PHY_CFG_CLK_SCC       0x12
-#define PHY_CFG_SEPE_RATE     BIT(3)
-#define PHY_CFG_PLL_100M      BIT(3)
-#define PHY_PLL_LOCKED        BIT(9)
-#define PHY_PLL_OUTPUT        BIT(10)
-#define PHY_LANE_IDLE_OFF     0x1
-#define PHY_LANE_IDLE_MASK    0x1
-#define PHY_LANE_IDLE_A_SHIFT 3
-#define PHY_LANE_IDLE_B_SHIFT 4
-#define PHY_LANE_IDLE_C_SHIFT 5
-#define PHY_LANE_IDLE_D_SHIFT 6
-
-#define PCIE_PHY_CONF		0xe220
-#define PCIE_PHY_STATUS		0xe2a4
-#define PCIE_PHY_LANEOFF	0xe214
-
-struct rockchip_pcie_phy {
-	void *reg_base;
-	struct clk refclk;
-	struct reset_ctl phy_rst;
-	struct rockchip_pcie_phy_ops *ops;
-};
-
-struct rockchip_pcie_phy_ops {
-	int (*init)(struct rockchip_pcie_phy *phy);
-	int (*exit)(struct rockchip_pcie_phy *phy);
-	int (*power_on)(struct rockchip_pcie_phy *phy);
-	int (*power_off)(struct rockchip_pcie_phy *phy);
-};
-
-struct rockchip_pcie {
-	fdt_addr_t axi_base;
-	fdt_addr_t apb_base;
-	int first_busno;
-	struct udevice *dev;
-	struct rockchip_pcie_phy rk_phy;
-	struct rockchip_pcie_phy *phy;
-
-	/* resets */
-	struct reset_ctl core_rst;
-	struct reset_ctl mgmt_rst;
-	struct reset_ctl mgmt_sticky_rst;
-	struct reset_ctl pipe_rst;
-	struct reset_ctl pm_rst;
-	struct reset_ctl pclk_rst;
-	struct reset_ctl aclk_rst;
-
-	/* gpio */
-	struct gpio_desc ep_gpio;
-
-	/* vpcie regulators */
-	struct udevice *vpcie12v;
-	struct udevice *vpcie3v3;
-	struct udevice *vpcie1v8;
-	struct udevice *vpcie0v9;
-
-	/* phy */
-	struct phy pcie_phy;
-};
-
-int rockchip_pcie_phy_get(struct udevice *dev);
-
-inline struct rockchip_pcie_phy *pcie_get_phy(struct rockchip_pcie *pcie)
-{
-	return pcie->phy;
-}
-
-inline
-struct rockchip_pcie_phy_ops *phy_get_ops(struct rockchip_pcie_phy *phy)
-{
-	return (struct rockchip_pcie_phy_ops *)phy->ops;
-}
diff --git a/drivers/pci/pcie_rockchip_phy.c b/drivers/pci/pcie_rockchip_phy.c
deleted file mode 100644
index 47f5d6c7e3..0000000000
--- a/drivers/pci/pcie_rockchip_phy.c
+++ /dev/null
@@ -1,205 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0+
-/*
- * Rockchip PCIe PHY driver
- *
- * Copyright (c) 2016 Rockchip, Inc.
- * Copyright (c) 2020 Amarula Solutions(India)
- */
-
-#include <common.h>
-#include <clk.h>
-#include <dm.h>
-#include <dm/device_compat.h>
-#include <reset.h>
-#include <syscon.h>
-#include <asm/gpio.h>
-#include <asm/io.h>
-#include <linux/iopoll.h>
-#include <asm/arch-rockchip/clock.h>
-
-#include "pcie_rockchip.h"
-
-DECLARE_GLOBAL_DATA_PTR;
-
-static void phy_wr_cfg(struct rockchip_pcie_phy *phy, u32 addr, u32 data)
-{
-	u32 reg;
-
-	reg = HIWORD_UPDATE_MASK(data, PHY_CFG_DATA_MASK, PHY_CFG_DATA_SHIFT);
-	reg |= HIWORD_UPDATE_MASK(addr, PHY_CFG_ADDR_MASK, PHY_CFG_ADDR_SHIFT);
-	writel(reg, phy->reg_base + PCIE_PHY_CONF);
-
-	udelay(1);
-
-	reg = HIWORD_UPDATE_MASK(PHY_CFG_WR_ENABLE,
-				 PHY_CFG_WR_MASK,
-				 PHY_CFG_WR_SHIFT);
-	writel(reg, phy->reg_base + PCIE_PHY_CONF);
-
-	udelay(1);
-
-	reg = HIWORD_UPDATE_MASK(PHY_CFG_WR_DISABLE,
-				 PHY_CFG_WR_MASK,
-				 PHY_CFG_WR_SHIFT);
-	writel(reg, phy->reg_base + PCIE_PHY_CONF);
-}
-
-static int rockchip_pcie_phy_power_on(struct rockchip_pcie_phy *phy)
-{
-	int ret = 0;
-	u32 reg, status;
-
-	ret = reset_deassert(&phy->phy_rst);
-	if (ret) {
-		dev_err(dev, "failed to assert phy reset\n");
-		return ret;
-	}
-
-	reg = HIWORD_UPDATE_MASK(PHY_CFG_PLL_LOCK,
-				 PHY_CFG_ADDR_MASK,
-				 PHY_CFG_ADDR_SHIFT);
-	writel(reg, phy->reg_base + PCIE_PHY_CONF);
-
-	reg = HIWORD_UPDATE_MASK(!PHY_LANE_IDLE_OFF,
-				 PHY_LANE_IDLE_MASK,
-				 PHY_LANE_IDLE_A_SHIFT);
-	writel(reg, phy->reg_base + PCIE_PHY_LANEOFF);
-
-	ret = -EINVAL;
-	ret = readl_poll_sleep_timeout(phy->reg_base + PCIE_PHY_STATUS,
-				       status,
-				       status & PHY_PLL_LOCKED,
-				       20 * 1000,
-				       50);
-	if (ret) {
-		dev_err(&phy->dev, "pll lock timeout!\n");
-		goto err_pll_lock;
-	}
-
-	phy_wr_cfg(phy, PHY_CFG_CLK_TEST, PHY_CFG_SEPE_RATE);
-	phy_wr_cfg(phy, PHY_CFG_CLK_SCC, PHY_CFG_PLL_100M);
-
-	ret = -ETIMEDOUT;
-	ret = readl_poll_sleep_timeout(phy->reg_base + PCIE_PHY_STATUS,
-				       status,
-				       !(status & PHY_PLL_OUTPUT),
-				       20 * 1000,
-				       50);
-	if (ret) {
-		dev_err(&phy->dev, "pll output enable timeout!\n");
-		goto err_pll_lock;
-	}
-
-	reg = HIWORD_UPDATE_MASK(PHY_CFG_PLL_LOCK,
-				 PHY_CFG_ADDR_MASK,
-				 PHY_CFG_ADDR_SHIFT);
-	writel(reg, phy->reg_base + PCIE_PHY_CONF);
-
-	ret = -EINVAL;
-	ret = readl_poll_sleep_timeout(phy->reg_base + PCIE_PHY_STATUS,
-				       status,
-				       status & PHY_PLL_LOCKED,
-				       20 * 1000,
-				       50);
-	if (ret) {
-		dev_err(&phy->dev, "pll relock timeout!\n");
-		goto err_pll_lock;
-	}
-
-	return 0;
-
-err_pll_lock:
-	reset_assert(&phy->phy_rst);
-	return ret;
-}
-
-static int rockchip_pcie_phy_power_off(struct rockchip_pcie_phy *phy)
-{
-	int ret;
-	u32 reg;
-
-	reg = HIWORD_UPDATE_MASK(PHY_LANE_IDLE_OFF,
-				 PHY_LANE_IDLE_MASK,
-				 PHY_LANE_IDLE_A_SHIFT);
-	writel(reg, phy->reg_base + PCIE_PHY_LANEOFF);
-
-	ret = reset_assert(&phy->phy_rst);
-	if (ret) {
-		dev_err(dev, "failed to assert phy reset\n");
-		return ret;
-	}
-
-	return 0;
-}
-
-static int rockchip_pcie_phy_init(struct rockchip_pcie_phy *phy)
-{
-	int ret;
-
-	ret = clk_enable(&phy->refclk);
-	if (ret) {
-		dev_err(dev, "failed to enable refclk clock\n");
-		return ret;
-	}
-
-	ret = reset_assert(&phy->phy_rst);
-	if (ret) {
-		dev_err(dev, "failed to assert phy reset\n");
-		goto err_reset;
-	}
-
-	return 0;
-
-err_reset:
-	clk_disable(&phy->refclk);
-	return ret;
-}
-
-static int rockchip_pcie_phy_exit(struct rockchip_pcie_phy *phy)
-{
-	clk_disable(&phy->refclk);
-
-	return 0;
-}
-
-static struct rockchip_pcie_phy_ops pcie_phy_ops = {
-	.init = rockchip_pcie_phy_init,
-	.power_on = rockchip_pcie_phy_power_on,
-	.power_off = rockchip_pcie_phy_power_off,
-	.exit = rockchip_pcie_phy_exit,
-};
-
-int rockchip_pcie_phy_get(struct udevice *dev)
-{
-	struct rockchip_pcie *priv = dev_get_priv(dev);
-	struct rockchip_pcie_phy *phy_priv = &priv->rk_phy;
-	ofnode phy_node;
-	u32 phandle;
-	int ret;
-
-	phandle = dev_read_u32_default(dev, "phys", 0);
-	phy_node = ofnode_get_by_phandle(phandle);
-	if (!ofnode_valid(phy_node)) {
-		dev_err(dev, "failed to found pcie-phy\n");
-		return -ENODEV;
-	}
-
-	phy_priv->reg_base = syscon_get_first_range(ROCKCHIP_SYSCON_GRF);
-
-	ret = clk_get_by_index_nodev(phy_node, 0, &phy_priv->refclk);
-	if (ret) {
-		dev_err(dev, "failed to get refclk clock phandle\n");
-		return ret;
-	}
-
-	ret = reset_get_by_index_nodev(phy_node, 0, &phy_priv->phy_rst);
-	if (ret) {
-		dev_err(dev, "failed to get phy reset phandle\n");
-		return ret;
-	}
-
-	phy_priv->ops = &pcie_phy_ops;
-	priv->phy = phy_priv;
-
-	return 0;
-}
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

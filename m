Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C64011B85EC
	for <lists+linux-rockchip@lfdr.de>; Sat, 25 Apr 2020 13:04:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=oRTKgsCd1UgMHZiLe23SC500+uf+s8ar4lRZHP4Syxw=; b=hOylyp+wjC2vIxumgQ9OeuWH7G
	seKAWJK5l9BCeYidA2P06dgr1881o4MXS5H1ZiGp8FvoRyp4mHMPO5Bdg+qLNU66EywJoRO3g2nRU
	k0jyBMf9H0sN5zQYnzAJqHWMCBacurB814RrtkDct/k61wcmqL2UC6npXziH/XtKmoCUXyQeLm1Vn
	N+gC+x9MGHPOIbzzx869qg/QTB/DF+tVz2zYtswNcobN2PjW7qV4ol2Vkfm+0/D0WuTtqqhjmXYee
	glhNEF4Wg2dtSsVBt79MZ5ZeOTa8jcGFjpQn2f5+wGJTzBOPpAYtpGrIWfu6HIWnTP1j5q+uTnCW1
	ZixWm9Yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSIbr-0006R9-RI; Sat, 25 Apr 2020 11:04:35 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSIbm-0006OB-Rn
 for linux-rockchip@lists.infradead.org; Sat, 25 Apr 2020 11:04:32 +0000
Received: by mail-pg1-x541.google.com with SMTP id s18so3259383pgl.12
 for <linux-rockchip@lists.infradead.org>; Sat, 25 Apr 2020 04:04:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=c5jnespWE0rIxIG0BABfyPJE6shPZ97hyRQlGamv2Fs=;
 b=nUiZKKXeh5mlcW3a2OTty14fwShy3hldhvSkVKP02pjs++sKaU9yagOGKXXS3xjDJ5
 iqjcc5zy19cGVyVHb7m+jgEmVFGZL44hTNRKoaDMqsHLuGxJ2OPWNeZPwpSQhRBdy/lb
 HJEEATFu1GNoTff0l/oVIRMIBRAhUEOd6HBpQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=c5jnespWE0rIxIG0BABfyPJE6shPZ97hyRQlGamv2Fs=;
 b=eBmoz78OXZmoF0mIh7loXpmmBQAzATiRHFeYTvQFM8/svqHisFy7fZb/JD+Eox3DmR
 Pu/Vv99yyuGpIkdp9fCgKax/a0vHI1RvhNjhzyz+98n82UothjkYc2kcx11qRdlQCx8Q
 DQiqTYRpgU53S6Q1RYpgiim+yg1/vUKABUB0U8/kqsPFsEC4h6Z9ApKvGgX1b4KgKU4X
 tBhJxE64t2R4kE0I4kx5qX5BpYCqUehmX8aNARYHeZsUykE99L55qIjTLccj/2nDLES/
 2n1M1EFzQDx/Efu05xQZDJRG7DHUhW69xiqYJ18xcol8S9nrfQjIZAgdIO/X81HSoaB0
 D8YA==
X-Gm-Message-State: AGi0Pua150caTm+jg8o6K1yxrQmh+Wf89m5LzqlASQdYSoOG2HWdgs75
 iZDNsZFRjHIIcWVNn5iQXt/Bug==
X-Google-Smtp-Source: APiQypIAA4Pm1YRBDw9VH1vL93xxu1zZa3V6ScEVetD+Boo0cncQ7JrmY/rImqsKxLYGiTzHm18Kwg==
X-Received: by 2002:a63:d544:: with SMTP id v4mr50248pgi.361.1587812670102;
 Sat, 25 Apr 2020 04:04:30 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:1d46:fa69:c34:93dc])
 by smtp.gmail.com with ESMTPSA id
 v94sm6922831pjb.39.2020.04.25.04.04.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 25 Apr 2020 04:04:29 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH 6/8] pci: Add Rockchip PCIe PHY controller driver
Date: Sat, 25 Apr 2020 16:33:52 +0530
Message-Id: <20200425110354.12381-7-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200425110354.12381-1-jagan@amarulasolutions.com>
References: <20200425110354.12381-1-jagan@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200425_040430_897716_55C1E6F6 
X-CRM114-Status: GOOD (  20.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: patrick@blueri.se, linux-rockchip@lists.infradead.org, u-boot@lists.denx.de,
 Jagan Teki <jagan@amarulasolutions.com>, sunil@amarulasolutions.com,
 linux-amarula@amarulasolutions.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Yes, it is possible to have a dedicated UCLASS PHY driver
for this Rockchip PCIe PHY but there are some issues on
Generic PHY framework to support the same.

The Generic PHY framework is unable to get the PHY if
the PHY parent is of a different uclass.

Say if we try to get the PCIe PHY then the phy-uclass
will look for PHY in the first instance if it is not
in the root node it will try to probe the parent by
assuming that the actual PHY is inside the parent PHY
of UCLASS_PHY. But, in rk3399 hardware representation
PHY like emmc, usb and pcie are part of syscon which
is completely a different of UCLASS_SYSCON.

Example:

grf: syscon@ff770000 {
   compatible = "rockchip,rk3399-grf", "syscon", "simple-mfd";
   reg = <0x0 0xff770000 0x0 0x10000>;
   #address-cells = <1>;
   #size-cells = <1>;

   pcie_phy: pcie-phy {
       compatible = "rockchip,rk3399-pcie-phy";
       clocks = <&cru SCLK_PCIEPHY_REF>;
       clock-names = "refclk";
       #phy-cells = <1>;
       resets = <&cru SRST_PCIEPHY>;
       drive-impedance-ohm = <50>;
       reset-names = "phy";
       status = "disabled";
   };
};

Due to this limitation, this patch adds a separate PHY
driver for Rockchip PCIe. This might be removed in future
once Generic PHY supports this limitation.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 drivers/pci/Makefile            |   2 +-
 drivers/pci/pcie_rockchip.c     |  50 ++++++--
 drivers/pci/pcie_rockchip.h     |  63 ++++++++++
 drivers/pci/pcie_rockchip_phy.c | 205 ++++++++++++++++++++++++++++++++
 4 files changed, 306 insertions(+), 14 deletions(-)
 create mode 100644 drivers/pci/pcie_rockchip_phy.c

diff --git a/drivers/pci/Makefile b/drivers/pci/Makefile
index 493e9354dd..955351c5c2 100644
--- a/drivers/pci/Makefile
+++ b/drivers/pci/Makefile
@@ -43,4 +43,4 @@ obj-$(CONFIG_PCI_PHYTIUM) += pcie_phytium.o
 obj-$(CONFIG_PCIE_INTEL_FPGA) += pcie_intel_fpga.o
 obj-$(CONFIG_PCI_KEYSTONE) += pcie_dw_ti.o
 obj-$(CONFIG_PCIE_MEDIATEK) += pcie_mediatek.o
-obj-$(CONFIG_PCIE_ROCKCHIP) += pcie_rockchip.o
+obj-$(CONFIG_PCIE_ROCKCHIP) += pcie_rockchip.o pcie_rockchip_phy.o
diff --git a/drivers/pci/pcie_rockchip.c b/drivers/pci/pcie_rockchip.c
index adc64aedf5..00cf036ed8 100644
--- a/drivers/pci/pcie_rockchip.c
+++ b/drivers/pci/pcie_rockchip.c
@@ -152,6 +152,8 @@ static int rockchip_pcie_atr_init(struct rockchip_pcie *priv)
 static int rockchip_pcie_init_port(struct udevice *dev)
 {
 	struct rockchip_pcie *priv = dev_get_priv(dev);
+	struct rockchip_pcie_phy *phy = pcie_get_phy(priv);
+	struct rockchip_pcie_phy_ops *ops = phy_get_ops(phy);
 	u32 cr, val, status;
 	int ret;
 
@@ -176,29 +178,35 @@ static int rockchip_pcie_init_port(struct udevice *dev)
 		return ret;
 	}
 
+	ret = ops->init(phy);
+	if (ret) {
+		dev_err(dev, "failed to init phy (ret=%d)\n", ret);
+		goto err_exit_phy;
+	}
+
 	ret = reset_assert(&priv->core_rst);
 	if (ret) {
 		dev_err(dev, "failed to assert core reset (ret=%d)\n", ret);
-		return ret;
+		goto err_exit_phy;
 	}
 
 	ret = reset_assert(&priv->mgmt_rst);
 	if (ret) {
 		dev_err(dev, "failed to assert mgmt reset (ret=%d)\n", ret);
-		return ret;
+		goto err_exit_phy;
 	}
 
 	ret = reset_assert(&priv->mgmt_sticky_rst);
 	if (ret) {
 		dev_err(dev, "failed to assert mgmt-sticky reset (ret=%d)\n",
 			ret);
-		return ret;
+		goto err_exit_phy;
 	}
 
 	ret = reset_assert(&priv->pipe_rst);
 	if (ret) {
 		dev_err(dev, "failed to assert pipe reset (ret=%d)\n", ret);
-		return ret;
+		goto err_exit_phy;
 	}
 
 	udelay(10);
@@ -206,19 +214,19 @@ static int rockchip_pcie_init_port(struct udevice *dev)
 	ret = reset_deassert(&priv->pm_rst);
 	if (ret) {
 		dev_err(dev, "failed to deassert pm reset (ret=%d)\n", ret);
-		return ret;
+		goto err_exit_phy;
 	}
 
 	ret = reset_deassert(&priv->aclk_rst);
 	if (ret) {
 		dev_err(dev, "failed to deassert aclk reset (ret=%d)\n", ret);
-		return ret;
+		goto err_exit_phy;
 	}
 
 	ret = reset_deassert(&priv->pclk_rst);
 	if (ret) {
 		dev_err(dev, "failed to deassert pclk reset (ret=%d)\n", ret);
-		return ret;
+		goto err_exit_phy;
 	}
 
 	/* Select GEN1 for now */
@@ -227,29 +235,35 @@ static int rockchip_pcie_init_port(struct udevice *dev)
 	cr |= PCIE_CLIENT_CONF_ENABLE | PCIE_CLIENT_MODE_RC;
 	writel(cr, priv->apb_base + PCIE_CLIENT_CONFIG);
 
+	ret = ops->power_on(phy);
+	if (ret) {
+		dev_err(dev, "failed to power on phy (ret=%d)\n", ret);
+		goto err_power_off_phy;
+	}
+
 	ret = reset_deassert(&priv->mgmt_sticky_rst);
 	if (ret) {
 		dev_err(dev, "failed to deassert mgmt-sticky reset (ret=%d)\n",
 			ret);
-		return ret;
+		goto err_power_off_phy;
 	}
 
 	ret = reset_deassert(&priv->core_rst);
 	if (ret) {
 		dev_err(dev, "failed to deassert core reset (ret=%d)\n", ret);
-		return ret;
+		goto err_power_off_phy;
 	}
 
 	ret = reset_deassert(&priv->mgmt_rst);
 	if (ret) {
 		dev_err(dev, "failed to deassert mgmt reset (ret=%d)\n", ret);
-		return ret;
+		goto err_power_off_phy;
 	}
 
 	ret = reset_deassert(&priv->pipe_rst);
 	if (ret) {
 		dev_err(dev, "failed to deassert pipe reset (ret=%d)\n", ret);
-		return ret;
+		goto err_power_off_phy;
 	}
 
 	/* Enable Gen1 training */
@@ -264,7 +278,7 @@ static int rockchip_pcie_init_port(struct udevice *dev)
 			status, PCIE_LINK_UP(status), 20, 500 * 1000);
 	if (ret) {
 		dev_err(dev, "PCIe link training gen1 timeout!\n");
-		return ret;
+		goto err_power_off_phy;
 	}
 
 	/* Initialize Root Complex registers. */
@@ -284,10 +298,16 @@ static int rockchip_pcie_init_port(struct udevice *dev)
 	ret = rockchip_pcie_atr_init(priv);
 	if (ret) {
 		dev_err(dev, "PCIE-%d: ATR init failed\n", dev->seq);
-		return ret;
+		goto err_power_off_phy;
 	}
 
 	return 0;
+
+err_power_off_phy:
+	ops->power_off(phy);
+err_exit_phy:
+	ops->exit(phy);
+	return ret;
 }
 
 static int rockchip_pcie_set_vpcie(struct udevice *dev)
@@ -426,6 +446,10 @@ static int rockchip_pcie_probe(struct udevice *dev)
 	if (ret)
 		return ret;
 
+	ret = rockchip_pcie_phy_get(dev);
+	if (ret)
+		return ret;
+
 	ret = rockchip_pcie_set_vpcie(dev);
 	if (ret)
 		return ret;
diff --git a/drivers/pci/pcie_rockchip.h b/drivers/pci/pcie_rockchip.h
index 6ded5c9553..c3a0a2846d 100644
--- a/drivers/pci/pcie_rockchip.h
+++ b/drivers/pci/pcie_rockchip.h
@@ -53,11 +53,61 @@
 #define PCIE_ATR_OB_REGION0_SIZE	(32 * 1024 * 1024)
 #define PCIE_ATR_OB_REGION_SIZE		(1 * 1024 * 1024)
 
+/*
+ * The higher 16-bit of this register is used for write protection
+ * only if BIT(x + 16) set to 1 the BIT(x) can be written.
+ */
+#define HIWORD_UPDATE_MASK(val, mask, shift) \
+		((val) << (shift) | (mask) << ((shift) + 16))
+
+#define PHY_CFG_DATA_SHIFT    7
+#define PHY_CFG_ADDR_SHIFT    1
+#define PHY_CFG_DATA_MASK     0xf
+#define PHY_CFG_ADDR_MASK     0x3f
+#define PHY_CFG_RD_MASK       0x3ff
+#define PHY_CFG_WR_ENABLE     1
+#define PHY_CFG_WR_DISABLE    1
+#define PHY_CFG_WR_SHIFT      0
+#define PHY_CFG_WR_MASK       1
+#define PHY_CFG_PLL_LOCK      0x10
+#define PHY_CFG_CLK_TEST      0x10
+#define PHY_CFG_CLK_SCC       0x12
+#define PHY_CFG_SEPE_RATE     BIT(3)
+#define PHY_CFG_PLL_100M      BIT(3)
+#define PHY_PLL_LOCKED        BIT(9)
+#define PHY_PLL_OUTPUT        BIT(10)
+#define PHY_LANE_IDLE_OFF     0x1
+#define PHY_LANE_IDLE_MASK    0x1
+#define PHY_LANE_IDLE_A_SHIFT 3
+#define PHY_LANE_IDLE_B_SHIFT 4
+#define PHY_LANE_IDLE_C_SHIFT 5
+#define PHY_LANE_IDLE_D_SHIFT 6
+
+#define PCIE_PHY_CONF		0xe220
+#define PCIE_PHY_STATUS		0xe2a4
+#define PCIE_PHY_LANEOFF	0xe214
+
+struct rockchip_pcie_phy {
+	void *reg_base;
+	struct clk refclk;
+	struct reset_ctl phy_rst;
+	struct rockchip_pcie_phy_ops *ops;
+};
+
+struct rockchip_pcie_phy_ops {
+	int (*init)(struct rockchip_pcie_phy *phy);
+	int (*exit)(struct rockchip_pcie_phy *phy);
+	int (*power_on)(struct rockchip_pcie_phy *phy);
+	int (*power_off)(struct rockchip_pcie_phy *phy);
+};
+
 struct rockchip_pcie {
 	fdt_addr_t axi_base;
 	fdt_addr_t apb_base;
 	int first_busno;
 	struct udevice *dev;
+	struct rockchip_pcie_phy rk_phy;
+	struct rockchip_pcie_phy *phy;
 
 	/* resets */
 	struct reset_ctl core_rst;
@@ -77,3 +127,16 @@ struct rockchip_pcie {
 	struct udevice *vpcie1v8;
 	struct udevice *vpcie0v9;
 };
+
+int rockchip_pcie_phy_get(struct udevice *dev);
+
+inline struct rockchip_pcie_phy *pcie_get_phy(struct rockchip_pcie *pcie)
+{
+	return pcie->phy;
+}
+
+inline
+struct rockchip_pcie_phy_ops *phy_get_ops(struct rockchip_pcie_phy *phy)
+{
+	return (struct rockchip_pcie_phy_ops *)phy->ops;
+}
diff --git a/drivers/pci/pcie_rockchip_phy.c b/drivers/pci/pcie_rockchip_phy.c
new file mode 100644
index 0000000000..47f5d6c7e3
--- /dev/null
+++ b/drivers/pci/pcie_rockchip_phy.c
@@ -0,0 +1,205 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Rockchip PCIe PHY driver
+ *
+ * Copyright (c) 2016 Rockchip, Inc.
+ * Copyright (c) 2020 Amarula Solutions(India)
+ */
+
+#include <common.h>
+#include <clk.h>
+#include <dm.h>
+#include <dm/device_compat.h>
+#include <reset.h>
+#include <syscon.h>
+#include <asm/gpio.h>
+#include <asm/io.h>
+#include <linux/iopoll.h>
+#include <asm/arch-rockchip/clock.h>
+
+#include "pcie_rockchip.h"
+
+DECLARE_GLOBAL_DATA_PTR;
+
+static void phy_wr_cfg(struct rockchip_pcie_phy *phy, u32 addr, u32 data)
+{
+	u32 reg;
+
+	reg = HIWORD_UPDATE_MASK(data, PHY_CFG_DATA_MASK, PHY_CFG_DATA_SHIFT);
+	reg |= HIWORD_UPDATE_MASK(addr, PHY_CFG_ADDR_MASK, PHY_CFG_ADDR_SHIFT);
+	writel(reg, phy->reg_base + PCIE_PHY_CONF);
+
+	udelay(1);
+
+	reg = HIWORD_UPDATE_MASK(PHY_CFG_WR_ENABLE,
+				 PHY_CFG_WR_MASK,
+				 PHY_CFG_WR_SHIFT);
+	writel(reg, phy->reg_base + PCIE_PHY_CONF);
+
+	udelay(1);
+
+	reg = HIWORD_UPDATE_MASK(PHY_CFG_WR_DISABLE,
+				 PHY_CFG_WR_MASK,
+				 PHY_CFG_WR_SHIFT);
+	writel(reg, phy->reg_base + PCIE_PHY_CONF);
+}
+
+static int rockchip_pcie_phy_power_on(struct rockchip_pcie_phy *phy)
+{
+	int ret = 0;
+	u32 reg, status;
+
+	ret = reset_deassert(&phy->phy_rst);
+	if (ret) {
+		dev_err(dev, "failed to assert phy reset\n");
+		return ret;
+	}
+
+	reg = HIWORD_UPDATE_MASK(PHY_CFG_PLL_LOCK,
+				 PHY_CFG_ADDR_MASK,
+				 PHY_CFG_ADDR_SHIFT);
+	writel(reg, phy->reg_base + PCIE_PHY_CONF);
+
+	reg = HIWORD_UPDATE_MASK(!PHY_LANE_IDLE_OFF,
+				 PHY_LANE_IDLE_MASK,
+				 PHY_LANE_IDLE_A_SHIFT);
+	writel(reg, phy->reg_base + PCIE_PHY_LANEOFF);
+
+	ret = -EINVAL;
+	ret = readl_poll_sleep_timeout(phy->reg_base + PCIE_PHY_STATUS,
+				       status,
+				       status & PHY_PLL_LOCKED,
+				       20 * 1000,
+				       50);
+	if (ret) {
+		dev_err(&phy->dev, "pll lock timeout!\n");
+		goto err_pll_lock;
+	}
+
+	phy_wr_cfg(phy, PHY_CFG_CLK_TEST, PHY_CFG_SEPE_RATE);
+	phy_wr_cfg(phy, PHY_CFG_CLK_SCC, PHY_CFG_PLL_100M);
+
+	ret = -ETIMEDOUT;
+	ret = readl_poll_sleep_timeout(phy->reg_base + PCIE_PHY_STATUS,
+				       status,
+				       !(status & PHY_PLL_OUTPUT),
+				       20 * 1000,
+				       50);
+	if (ret) {
+		dev_err(&phy->dev, "pll output enable timeout!\n");
+		goto err_pll_lock;
+	}
+
+	reg = HIWORD_UPDATE_MASK(PHY_CFG_PLL_LOCK,
+				 PHY_CFG_ADDR_MASK,
+				 PHY_CFG_ADDR_SHIFT);
+	writel(reg, phy->reg_base + PCIE_PHY_CONF);
+
+	ret = -EINVAL;
+	ret = readl_poll_sleep_timeout(phy->reg_base + PCIE_PHY_STATUS,
+				       status,
+				       status & PHY_PLL_LOCKED,
+				       20 * 1000,
+				       50);
+	if (ret) {
+		dev_err(&phy->dev, "pll relock timeout!\n");
+		goto err_pll_lock;
+	}
+
+	return 0;
+
+err_pll_lock:
+	reset_assert(&phy->phy_rst);
+	return ret;
+}
+
+static int rockchip_pcie_phy_power_off(struct rockchip_pcie_phy *phy)
+{
+	int ret;
+	u32 reg;
+
+	reg = HIWORD_UPDATE_MASK(PHY_LANE_IDLE_OFF,
+				 PHY_LANE_IDLE_MASK,
+				 PHY_LANE_IDLE_A_SHIFT);
+	writel(reg, phy->reg_base + PCIE_PHY_LANEOFF);
+
+	ret = reset_assert(&phy->phy_rst);
+	if (ret) {
+		dev_err(dev, "failed to assert phy reset\n");
+		return ret;
+	}
+
+	return 0;
+}
+
+static int rockchip_pcie_phy_init(struct rockchip_pcie_phy *phy)
+{
+	int ret;
+
+	ret = clk_enable(&phy->refclk);
+	if (ret) {
+		dev_err(dev, "failed to enable refclk clock\n");
+		return ret;
+	}
+
+	ret = reset_assert(&phy->phy_rst);
+	if (ret) {
+		dev_err(dev, "failed to assert phy reset\n");
+		goto err_reset;
+	}
+
+	return 0;
+
+err_reset:
+	clk_disable(&phy->refclk);
+	return ret;
+}
+
+static int rockchip_pcie_phy_exit(struct rockchip_pcie_phy *phy)
+{
+	clk_disable(&phy->refclk);
+
+	return 0;
+}
+
+static struct rockchip_pcie_phy_ops pcie_phy_ops = {
+	.init = rockchip_pcie_phy_init,
+	.power_on = rockchip_pcie_phy_power_on,
+	.power_off = rockchip_pcie_phy_power_off,
+	.exit = rockchip_pcie_phy_exit,
+};
+
+int rockchip_pcie_phy_get(struct udevice *dev)
+{
+	struct rockchip_pcie *priv = dev_get_priv(dev);
+	struct rockchip_pcie_phy *phy_priv = &priv->rk_phy;
+	ofnode phy_node;
+	u32 phandle;
+	int ret;
+
+	phandle = dev_read_u32_default(dev, "phys", 0);
+	phy_node = ofnode_get_by_phandle(phandle);
+	if (!ofnode_valid(phy_node)) {
+		dev_err(dev, "failed to found pcie-phy\n");
+		return -ENODEV;
+	}
+
+	phy_priv->reg_base = syscon_get_first_range(ROCKCHIP_SYSCON_GRF);
+
+	ret = clk_get_by_index_nodev(phy_node, 0, &phy_priv->refclk);
+	if (ret) {
+		dev_err(dev, "failed to get refclk clock phandle\n");
+		return ret;
+	}
+
+	ret = reset_get_by_index_nodev(phy_node, 0, &phy_priv->phy_rst);
+	if (ret) {
+		dev_err(dev, "failed to get phy reset phandle\n");
+		return ret;
+	}
+
+	phy_priv->ops = &pcie_phy_ops;
+	priv->phy = phy_priv;
+
+	return 0;
+}
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

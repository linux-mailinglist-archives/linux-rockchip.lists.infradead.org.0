Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99CCE1C099E
	for <lists+linux-rockchip@lfdr.de>; Thu, 30 Apr 2020 23:46:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=GIlK1AZ1QA/0n9CsbHgXAsg3qn7UfdYldsoGCUFMVV8=; b=GAoDKWFLx3c3Mb6gn/RFdcA4CP
	nPYIeh+GaN2c4T+Qunr2EA4PfPtSxdcTmues/oMP38UMd14F/oIrI+YnZMc62/0FxUf9omeAV9d5p
	BsiMET0fO+RdI0G7Ivxh1QKhRyG4LU2VdeLVgpSLiZA3tDBd1Cl5AYh2kKnc2hbegtV9wWfV2LobJ
	0dq0EsNdXLu7JRC/6n5Zc4u+AN0awrQELAKCrLP/LXbLe9xwVgiLBi4fi2NiMU54uJIfW2PepzDB8
	igo2uvAXFZsMrP4Lu+XHumY4X3dEAcN8sXZcelBc4unxbjww3KartrS2bNMqqpFvl+y5mhNgP1OTX
	nu/gAsvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUH0H-0006tu-Rp; Thu, 30 Apr 2020 21:45:57 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUH0D-0006rg-Rg
 for linux-rockchip@lists.infradead.org; Thu, 30 Apr 2020 21:45:55 +0000
Received: by mail-pl1-x644.google.com with SMTP id u22so2831733plq.12
 for <linux-rockchip@lists.infradead.org>; Thu, 30 Apr 2020 14:45:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=L+A6rotdTZxuFABPL+Mc8AuyhvfS/Z9BRk0edgcGHN8=;
 b=IEibsAiA0rVwYMfX9NMNP/+o0qp1andbmRkUO/7YuIRfgZ4klD05m5FOaC5Q/7r4Cu
 47nkdFF13Ub4i1HvJgTuj1IJehuh47WChSL2kI609rHzU+GPDASqeo4Sl8NwGt/brMiJ
 PsuP+pHPTB17joqerUC3qF5rniE208ua+kQbA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=L+A6rotdTZxuFABPL+Mc8AuyhvfS/Z9BRk0edgcGHN8=;
 b=SHoTCGsB5oWbbpicccrSjqshS0qypIXP7qwoGEwYTXOGDKLW4pPHP+9XAPL8iq1InY
 V8uv2GZk6w7wvAhvFUaBVXwFv19uNwZrvXPAx6phSDVbYu9UXGRl8vT7KqNEqiBQm/Eg
 KV7QmpIYiAM7ZchGxM0ZMdk6Ak9MCD0ilDinYCOgRBGkD2xXpzBgVAKJ9+dTMLwFxEGs
 1POcr9Lu1Tb49wrpXFHaOfm0009BYuk4eVSpU/2+KonY7z9vx1Fvjo/b4Gu0LcA35GGg
 9t0leXvKbIEkZQvDe3XalkGPBpbIn9LvySEhjf0b21ySX1YZffnQmBqcpgCW5YA4jOj3
 qNuw==
X-Gm-Message-State: AGi0Pua4hRH5c0Yjf6Oz7tBEzAQngtcXDU0L/VD0iXt+8jItON0g3Ehn
 Y2bpf906NUGakrwWN272x3DcRA==
X-Google-Smtp-Source: APiQypLnH1Jab9Wyt6jG9QX1cU/qhcktpVbGrf3kZVfPHEVBcSKjwLnpjGoafd5HtRIPx1leuFp0Bw==
X-Received: by 2002:a17:90a:2004:: with SMTP id
 n4mr1003560pjc.190.1588283153100; 
 Thu, 30 Apr 2020 14:45:53 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:a9f2:11c6:8c6c:2861])
 by smtp.gmail.com with ESMTPSA id p64sm615243pjp.7.2020.04.30.14.45.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 Apr 2020 14:45:52 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Tom Rini <trini@konsulko.com>, Frank Wang <frank.wang@rock-chips.com>,
 William Wu <william.wu@rock-chips.com>,
 Shawn Lin <shawn.lin@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>,
 Patrice Chotard <patrice.chotard@st.com>
Subject: [RFC 1/7] phy: Add Rockchip PCIe PHY driver
Date: Fri,  1 May 2020 03:15:23 +0530
Message-Id: <20200430214529.18887-2-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200430214529.18887-1-jagan@amarulasolutions.com>
References: <20200430214529.18887-1-jagan@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_144553_901644_9870D8AB 
X-CRM114-Status: GOOD (  16.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
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

Add the Rockchip PCIe PHY driver as part of
Generic PHY framework.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 drivers/Kconfig                          |   2 +
 drivers/Makefile                         |   1 +
 drivers/phy/rockchip/Kconfig             |   9 +
 drivers/phy/rockchip/Makefile            |   6 +
 drivers/phy/rockchip/phy-rockchip-pcie.c | 271 +++++++++++++++++++++++
 5 files changed, 289 insertions(+)
 create mode 100644 drivers/phy/rockchip/Kconfig
 create mode 100644 drivers/phy/rockchip/Makefile
 create mode 100644 drivers/phy/rockchip/phy-rockchip-pcie.c

diff --git a/drivers/Kconfig b/drivers/Kconfig
index e34a22708c..2fe23f953c 100644
--- a/drivers/Kconfig
+++ b/drivers/Kconfig
@@ -76,6 +76,8 @@ source "drivers/phy/allwinner/Kconfig"
 
 source "drivers/phy/marvell/Kconfig"
 
+source "drivers/phy/rockchip/Kconfig"
+
 source "drivers/pinctrl/Kconfig"
 
 source "drivers/power/Kconfig"
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
diff --git a/drivers/phy/rockchip/Kconfig b/drivers/phy/rockchip/Kconfig
new file mode 100644
index 0000000000..477c68920b
--- /dev/null
+++ b/drivers/phy/rockchip/Kconfig
@@ -0,0 +1,9 @@
+#
+# Phy drivers for Rockchip platforms
+#
+config PHY_ROCKCHIP_PCIE
+	bool "Rockchip PCIe PHY Driver"
+	depends on ARCH_ROCKCHIP
+	select PHY
+	help
+	  Enable this to support the Rockchip PCIe PHY.
diff --git a/drivers/phy/rockchip/Makefile b/drivers/phy/rockchip/Makefile
new file mode 100644
index 0000000000..4d19ccdfd0
--- /dev/null
+++ b/drivers/phy/rockchip/Makefile
@@ -0,0 +1,6 @@
+# SPDX-License-Identifier: GPL-2.0+
+#
+# Copyright (C) 2020 Amarula Solutions(India)
+#
+
+obj-$(CONFIG_PHY_ROCKCHIP_PCIE)		+= phy-rockchip-pcie.o
diff --git a/drivers/phy/rockchip/phy-rockchip-pcie.c b/drivers/phy/rockchip/phy-rockchip-pcie.c
new file mode 100644
index 0000000000..83928cffe0
--- /dev/null
+++ b/drivers/phy/rockchip/phy-rockchip-pcie.c
@@ -0,0 +1,271 @@
+// SPDX-License-Identifier: (GPL-2.0-only)
+/*
+ * Rockchip PCIe PHY driver
+ *
+ * Copyright (C) 2020 Amarula Solutions(India)
+ * Copyright (C) 2016 Shawn Lin <shawn.lin@rock-chips.com>
+ * Copyright (C) 2016 ROCKCHIP, Inc.
+ */
+
+#include <common.h>
+#include <clk.h>
+#include <dm.h>
+#include <dm/device_compat.h>
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
+/*
+ * The higher 16-bit of this register is used for write protection
+ * only if BIT(x + 16) set to 1 the BIT(x) can be written.
+ */
+#define HIWORD_UPDATE(val, mask, shift) \
+		((val) << (shift) | (mask) << ((shift) + 16))
+
+#define PHY_MAX_LANE_NUM      4
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
+#define PHY_LANE_RX_DET_SHIFT 11
+#define PHY_LANE_RX_DET_TH    0x1
+#define PHY_LANE_IDLE_OFF     0x1
+#define PHY_LANE_IDLE_MASK    0x1
+#define PHY_LANE_IDLE_A_SHIFT 3
+#define PHY_LANE_IDLE_B_SHIFT 4
+#define PHY_LANE_IDLE_C_SHIFT 5
+#define PHY_LANE_IDLE_D_SHIFT 6
+
+struct rockchip_pcie_phy_data {
+	unsigned int pcie_conf;
+	unsigned int pcie_status;
+	unsigned int pcie_laneoff;
+};
+
+struct rockchip_pcie_phy {
+	void *reg_base;
+	struct clk refclk;
+	struct reset_ctl phy_rst;
+	const struct rockchip_pcie_phy_data *data;
+};
+
+static void phy_wr_cfg(struct rockchip_pcie_phy *priv, u32 addr, u32 data)
+{
+	u32 reg;
+
+	reg = HIWORD_UPDATE(data, PHY_CFG_DATA_MASK, PHY_CFG_DATA_SHIFT);
+	reg |= HIWORD_UPDATE(addr, PHY_CFG_ADDR_MASK, PHY_CFG_ADDR_SHIFT);
+	writel(reg, priv->reg_base + priv->data->pcie_conf);
+
+	udelay(1);
+
+	reg = HIWORD_UPDATE(PHY_CFG_WR_ENABLE,
+			    PHY_CFG_WR_MASK,
+			    PHY_CFG_WR_SHIFT);
+	writel(reg, priv->reg_base + priv->data->pcie_conf);
+
+	udelay(1);
+
+	reg = HIWORD_UPDATE(PHY_CFG_WR_DISABLE,
+			    PHY_CFG_WR_MASK,
+			    PHY_CFG_WR_SHIFT);
+	writel(reg, priv->reg_base + priv->data->pcie_conf);
+}
+
+static int rockchip_pcie_phy_power_on(struct phy *phy)
+{
+	struct rockchip_pcie_phy *priv = dev_get_priv(phy->dev);
+	int ret = 0;
+	u32 reg, status;
+
+	ret = reset_deassert(&priv->phy_rst);
+	if (ret) {
+		dev_err(dev, "failed to assert phy reset\n");
+		return ret;
+	}
+
+	reg = HIWORD_UPDATE(PHY_CFG_PLL_LOCK,
+			    PHY_CFG_ADDR_MASK,
+			    PHY_CFG_ADDR_SHIFT);
+	writel(reg, priv->reg_base + priv->data->pcie_conf);
+
+	reg = HIWORD_UPDATE(!PHY_LANE_IDLE_OFF,
+			    PHY_LANE_IDLE_MASK,
+			    PHY_LANE_IDLE_A_SHIFT);
+	writel(reg, priv->reg_base + priv->data->pcie_laneoff);
+
+	ret = -EINVAL;
+	ret = readl_poll_sleep_timeout(priv->reg_base + priv->data->pcie_status,
+				       status,
+				       status & PHY_PLL_LOCKED,
+				       20 * 1000,
+				       50);
+	if (ret) {
+		dev_err(&priv->dev, "pll lock timeout!\n");
+		goto err_pll_lock;
+	}
+
+	phy_wr_cfg(priv, PHY_CFG_CLK_TEST, PHY_CFG_SEPE_RATE);
+	phy_wr_cfg(priv, PHY_CFG_CLK_SCC, PHY_CFG_PLL_100M);
+
+	ret = -ETIMEDOUT;
+	ret = readl_poll_sleep_timeout(priv->reg_base + priv->data->pcie_status,
+				       status,
+				       !(status & PHY_PLL_OUTPUT),
+				       20 * 1000,
+				       50);
+	if (ret) {
+		dev_err(&priv->dev, "pll output enable timeout!\n");
+		goto err_pll_lock;
+	}
+
+	reg = HIWORD_UPDATE(PHY_CFG_PLL_LOCK,
+			    PHY_CFG_ADDR_MASK,
+			    PHY_CFG_ADDR_SHIFT);
+	writel(reg, priv->reg_base + priv->data->pcie_conf);
+
+	ret = -EINVAL;
+	ret = readl_poll_sleep_timeout(priv->reg_base + priv->data->pcie_status,
+				       status,
+				       status & PHY_PLL_LOCKED,
+				       20 * 1000,
+				       50);
+	if (ret) {
+		dev_err(&priv->dev, "pll relock timeout!\n");
+		goto err_pll_lock;
+	}
+
+	return 0;
+
+err_pll_lock:
+	reset_assert(&priv->phy_rst);
+	return ret;
+}
+
+static int rockchip_pcie_phy_power_off(struct phy *phy)
+{
+	struct rockchip_pcie_phy *priv = dev_get_priv(phy->dev);
+	int ret;
+	u32 reg;
+
+	reg = HIWORD_UPDATE(PHY_LANE_IDLE_OFF,
+			    PHY_LANE_IDLE_MASK,
+			    PHY_LANE_IDLE_A_SHIFT);
+	writel(reg, priv->reg_base + priv->data->pcie_laneoff);
+
+	ret = reset_assert(&priv->phy_rst);
+	if (ret) {
+		dev_err(dev, "failed to assert phy reset\n");
+		return ret;
+	}
+
+	return 0;
+}
+
+static int rockchip_pcie_phy_init(struct phy *phy)
+{
+	struct rockchip_pcie_phy *priv = dev_get_priv(phy->dev);
+	int ret;
+
+	ret = clk_enable(&priv->refclk);
+	if (ret) {
+		dev_err(dev, "failed to enable refclk clock\n");
+		return ret;
+	}
+
+	ret = reset_assert(&priv->phy_rst);
+	if (ret) {
+		dev_err(dev, "failed to assert phy reset\n");
+		goto err_reset;
+	}
+
+	return 0;
+
+err_reset:
+	clk_disable(&priv->refclk);
+	return ret;
+}
+
+static int rockchip_pcie_phy_exit(struct phy *phy)
+{
+	struct rockchip_pcie_phy *priv = dev_get_priv(phy->dev);
+
+	clk_disable(&priv->refclk);
+
+	return 0;
+}
+
+static struct phy_ops rockchip_pcie_phy_ops = {
+	.init = rockchip_pcie_phy_init,
+	.power_on = rockchip_pcie_phy_power_on,
+	.power_off = rockchip_pcie_phy_power_off,
+	.exit = rockchip_pcie_phy_exit,
+};
+
+static int rockchip_pcie_phy_probe(struct udevice *dev)
+{
+	struct rockchip_pcie_phy *priv = dev_get_priv(dev);
+	int ret;
+
+	priv->data = (const struct rockchip_pcie_phy_data *)
+						dev_get_driver_data(dev);
+	if (!priv->data)
+		return -EINVAL;
+
+	priv->reg_base = syscon_get_first_range(ROCKCHIP_SYSCON_GRF);
+
+	ret = clk_get_by_name(dev, "refclk", &priv->refclk);
+	if (ret) {
+		dev_err(dev, "failed to get refclk clock phandle\n");
+		return ret;
+	}
+
+	ret = reset_get_by_name(dev, "phy", &priv->phy_rst);
+	if (ret) {
+		dev_err(dev, "failed to get phy reset phandle\n");
+		return ret;
+	}
+
+	return 0;
+}
+
+static const struct rockchip_pcie_phy_data rk3399_pcie_data = {
+	.pcie_conf = 0xe220,
+	.pcie_status = 0xe2a4,
+	.pcie_laneoff = 0xe214,
+};
+
+static const struct udevice_id rockchip_pcie_phy_ids[] = {
+	{
+		.compatible = "rockchip,rk3399-pcie-phy",
+		.data = (ulong)&rk3399_pcie_data,
+	},
+	{ /* sentile */ }
+};
+
+U_BOOT_DRIVER(rockchip_pcie_phy) = {
+	.name	= "rockchip_pcie_phy",
+	.id	= UCLASS_PHY,
+	.of_match = rockchip_pcie_phy_ids,
+	.ops = &rockchip_pcie_phy_ops,
+	.probe = rockchip_pcie_phy_probe,
+	.priv_auto_alloc_size = sizeof(struct rockchip_pcie_phy),
+};
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

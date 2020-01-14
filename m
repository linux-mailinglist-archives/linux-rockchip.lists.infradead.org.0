Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D6D813A1DE
	for <lists+linux-rockchip@lfdr.de>; Tue, 14 Jan 2020 08:25:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=3/HLWma03Kui3UmwBoql4R4IK91c4q2pSF8Qxj/CM8Y=; b=UtJPjApsWVTwaL0Vc86WDgMb6o
	Uz/ExXsbwm6ARfL3rDyNkQszsY9E1NTlawEIjQ8mQ+KtbEVmgIpXzvszWlivKWpqiNlH/WI2khnT3
	wCyI7buDnCu+1rRUz/wq6DhaglJkvjjCQMsaSnxKu+zhfpVqNmdK/n22lUaMG31OMQ5ShjPVnOF54
	XeG1khIBFo0+LnLO+GpxrRmq1xUJ7Ny0H0Uifymv3rdvq+1n0KLtANUjA1v+4TCNYKddtfEmvtIft
	lvVkxZ9XiJoJ43ORFi0ce0TO1Bbi/FGjh7V9skQzoojtm5v6SolRNXN6KQ2auoJJrusGGUAUz7pH5
	EaIgUl0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irGa4-0002FJ-1o; Tue, 14 Jan 2020 07:25:40 +0000
Received: from lucky1.263xmail.com ([211.157.147.132])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irGa0-0002Dn-9Z
 for linux-rockchip@lists.infradead.org; Tue, 14 Jan 2020 07:25:38 +0000
Received: from localhost (unknown [192.168.167.8])
 by lucky1.263xmail.com (Postfix) with ESMTP id 7C4C18B7B1;
 Tue, 14 Jan 2020 15:25:33 +0800 (CST)
X-MAIL-GRAY: 1
X-MAIL-DELIVERY: 0
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P26539T139797981148928S1578986732936666_; 
 Tue, 14 Jan 2020 15:25:33 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <1f6fb6b94c51bffcadff1df01e3fe457>
X-RL-SENDER: shawn.lin@rock-chips.com
X-SENDER: lintao@rock-chips.com
X-LOGIN-NAME: shawn.lin@rock-chips.com
X-FST-TO: heiko@sntech.de
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Heiko Stuebner <heiko@sntech.de>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Rob Herring <robh+dt@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Bjorn Helgaas <bhelgaas@google.com>
Subject: [PATCH 5/6] PCI: rockchip: add DesignWare based PCIe controller
Date: Tue, 14 Jan 2020 15:25:01 +0800
Message-Id: <1578986701-72072-1-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1578986580-71974-1-git-send-email-shawn.lin@rock-chips.com>
References: <1578986580-71974-1-git-send-email-shawn.lin@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_232536_668959_6F260848 
X-CRM114-Status: GOOD (  22.81  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.157.147.132 listed in list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Simon Xue <xxm@rock-chips.com>,
 Jingoo Han <jingoohan1@gmail.com>, Shawn Lin <shawn.lin@rock-chips.com>,
 linux-rockchip@lists.infradead.org, linux-pci@vger.kernel.org,
 William Wu <william.wu@rock-chips.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

From: Simon Xue <xxm@rock-chips.com>

Signed-off-by: Simon Xue <xxm@rock-chips.com>
Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---

 drivers/pci/controller/dwc/Kconfig            |   9 +
 drivers/pci/controller/dwc/Makefile           |   1 +
 drivers/pci/controller/dwc/pcie-dw-rockchip.c | 441 ++++++++++++++++++++++++++
 3 files changed, 451 insertions(+)
 create mode 100644 drivers/pci/controller/dwc/pcie-dw-rockchip.c

diff --git a/drivers/pci/controller/dwc/Kconfig b/drivers/pci/controller/dwc/Kconfig
index 0830dfc..9160264 100644
--- a/drivers/pci/controller/dwc/Kconfig
+++ b/drivers/pci/controller/dwc/Kconfig
@@ -82,6 +82,15 @@ config PCIE_DW_PLAT_EP
 	  order to enable device-specific features PCI_DW_PLAT_EP must be
 	  selected.
 
+config PCIE_DW_ROCKCHIP
+	bool "Rockchip DesignWare PCIe controller"
+	select PCIE_DW
+	select PCIE_DW_HOST
+	depends on ARCH_ROCKCHIP
+	depends on OF
+	help
+	  Enables support for the DW PCIe controller in the Rockchip SoC.
+
 config PCI_EXYNOS
 	bool "Samsung Exynos PCIe controller"
 	depends on SOC_EXYNOS5440 || COMPILE_TEST
diff --git a/drivers/pci/controller/dwc/Makefile b/drivers/pci/controller/dwc/Makefile
index 8a637cf..cb4857f 100644
--- a/drivers/pci/controller/dwc/Makefile
+++ b/drivers/pci/controller/dwc/Makefile
@@ -19,6 +19,7 @@ obj-$(CONFIG_PCIE_HISI_STB) += pcie-histb.o
 obj-$(CONFIG_PCI_MESON) += pci-meson.o
 obj-$(CONFIG_PCIE_TEGRA194) += pcie-tegra194.o
 obj-$(CONFIG_PCIE_UNIPHIER) += pcie-uniphier.o
+obj-$(CONFIG_PCIE_DW_ROCKCHIP) += pcie-dw-rockchip.o
 
 # The following drivers are for devices that use the generic ACPI
 # pci_root.c driver but don't support standard ECAM config access.
diff --git a/drivers/pci/controller/dwc/pcie-dw-rockchip.c b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
new file mode 100644
index 0000000..dbc2667
--- /dev/null
+++ b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
@@ -0,0 +1,441 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * PCIe host controller driver for Rockchip SoCs
+ *
+ * Copyright (C) 2018 Rockchip Electronics Co., Ltd.
+ *		http://www.rock-chips.com
+ *
+ * Author: Simon Xue <xxm@rock-chips.com>
+ */
+
+#include <linux/clk.h>
+#include <linux/mfd/syscon.h>
+#include <linux/module.h>
+#include <linux/of_device.h>
+#include <linux/of_gpio.h>
+#include <linux/phy/phy.h>
+#include <linux/platform_device.h>
+#include <linux/regmap.h>
+#include <linux/reset.h>
+
+#include "pcie-designware.h"
+
+/*
+ * The upper 16 bits of PCIE_CLIENT_CONFIG are a write
+ * mask for the lower 16 bits.  This allows atomic updates
+ * of the register without locking.
+ */
+#define HIWORD_UPDATE(mask, val) (((mask) << 16) | (val))
+#define HIWORD_UPDATE_BIT(val)	HIWORD_UPDATE(val, val)
+
+#define to_rockchip_pcie(x) dev_get_drvdata((x)->dev)
+
+#define PCIE_CLIENT_RC_MODE		HIWORD_UPDATE_BIT(0x40)
+#define PCIE_CLIENT_ENABLE_LTSSM	HIWORD_UPDATE_BIT(0xc)
+#define PCIE_PHY_LINKUP			BIT(0)
+#define PCIE_DATA_LINKUP		BIT(1)
+#define PCIE_LTSSM_STATE_MASK		GENMASK(15, 10)
+#define PCIE_LTSSM_STATE_SHIFT		10
+#define PCIE_L0S_ENTRY			0x11
+#define PCIE_CLIENT_GENERAL_CONTROL	0x0
+#define PCIE_CLIENT_GENERAL_DEBUG	0x104
+#define SUB_PHY_MODE_PCIE_RC		0x0
+#define SUB_PHY_MODE_PCIE_EP		0x1
+
+
+struct reset_bulk_data	{
+	const char *id;
+	struct reset_control *rst;
+};
+
+struct rockchip_pcie {
+	struct dw_pcie			*pci;
+	void __iomem			*dbi_base;
+	void __iomem			*apb_base;
+	struct phy			*phy;
+	struct clk_bulk_data		*clks;
+	unsigned int			clk_cnt;
+	struct reset_bulk_data		*rsts;
+	struct gpio_desc		*rst_gpio;
+	struct pcie_port		pp;
+	struct regmap			*usb_pcie_grf;
+	enum dw_pcie_device_mode	mode;
+	int				sub_phy_mode;
+};
+
+struct rockchip_pcie_of_data {
+	enum dw_pcie_device_mode	mode;
+};
+
+static inline int rockchip_pcie_readl_apb(struct rockchip_pcie *rockchip,
+					  u32 reg)
+{
+	return readl(rockchip->apb_base + reg);
+}
+
+static inline void rockchip_pcie_writel_apb(struct rockchip_pcie *rockchip,
+					    u32 reg, u32 val)
+{
+	writel(val, rockchip->apb_base + reg);
+}
+
+static inline void rockchip_pcie_set_mode(struct rockchip_pcie *rockchip)
+{
+	rockchip_pcie_writel_apb(rockchip, PCIE_CLIENT_GENERAL_CONTROL,
+				 PCIE_CLIENT_RC_MODE);
+}
+
+static inline void rockchip_pcie_enable_ltssm(struct rockchip_pcie *rockchip)
+{
+	rockchip_pcie_writel_apb(rockchip, PCIE_CLIENT_GENERAL_CONTROL,
+				 PCIE_CLIENT_ENABLE_LTSSM);
+}
+
+static int rockchip_pcie_link_up(struct dw_pcie *pci)
+{
+	struct rockchip_pcie *rockchip = to_rockchip_pcie(pci);
+	u32 val = rockchip_pcie_readl_apb(rockchip, PCIE_CLIENT_GENERAL_DEBUG);
+	u32 state = (val & PCIE_LTSSM_STATE_MASK) >> PCIE_LTSSM_STATE_SHIFT;
+
+	if ((val & PCIE_PHY_LINKUP) &&
+	    (val & PCIE_DATA_LINKUP) &&
+	    state == PCIE_L0S_ENTRY)
+		return 1;
+
+	return 0;
+}
+
+static void rockchip_pcie_establish_link(struct dw_pcie *pci)
+{
+	struct rockchip_pcie *rockchip = to_rockchip_pcie(pci);
+
+	if (dw_pcie_link_up(pci)) {
+		dev_err(pci->dev, "link already up\n");
+		return;
+	}
+
+	/* Reset device */
+	gpiod_set_value_cansleep(rockchip->rst_gpio, 0);
+	msleep(100);
+	gpiod_set_value_cansleep(rockchip->rst_gpio, 1);
+
+	rockchip_pcie_enable_ltssm(rockchip);
+}
+
+static int rockchip_pcie_host_init(struct pcie_port *pp)
+{
+	struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
+
+	dw_pcie_setup_rc(pp);
+
+	rockchip_pcie_establish_link(pci);
+	dw_pcie_wait_for_link(pci);
+
+	return 0;
+}
+
+static const struct dw_pcie_host_ops rockchip_pcie_host_ops = {
+	.host_init = rockchip_pcie_host_init,
+};
+
+static int rk_add_pcie_port(struct rockchip_pcie *rockchip)
+{
+	int ret;
+	struct dw_pcie *pci = rockchip->pci;
+	struct pcie_port *pp = &pci->pp;
+	struct device *dev = pci->dev;
+
+	pp->ops = &rockchip_pcie_host_ops;
+
+	if (device_property_read_bool(dev, "msi-map"))
+		pp->msi_ext = 1;
+
+	rockchip_pcie_set_mode(rockchip);
+
+	ret = dw_pcie_host_init(pp);
+	if (ret)
+		return ret;
+
+	return 0;
+}
+
+static void rockchip_pcie_clk_deinit(struct rockchip_pcie *rockchip)
+{
+	clk_bulk_disable(rockchip->clk_cnt, rockchip->clks);
+	clk_bulk_unprepare(rockchip->clk_cnt, rockchip->clks);
+}
+
+static int rockchip_pcie_clk_init(struct rockchip_pcie *rockchip)
+{
+	struct device *dev = rockchip->pci->dev;
+	struct property *prop;
+	const char *name;
+	int i = 0, ret, count;
+
+	count = of_property_count_strings(dev->of_node, "clock-names");
+	if (count < 1)
+		return -ENODEV;
+
+	rockchip->clks = devm_kcalloc(dev, count,
+				     sizeof(struct clk_bulk_data),
+				     GFP_KERNEL);
+	if (!rockchip->clks)
+		return -ENOMEM;
+
+	rockchip->clk_cnt = count;
+
+	of_property_for_each_string(dev->of_node, "clock-names",
+				    prop, name) {
+		rockchip->clks[i].id = name;
+		if (!rockchip->clks[i].id)
+			return -ENOMEM;
+		i++;
+	}
+
+	ret = devm_clk_bulk_get(dev, count, rockchip->clks);
+	if (ret)
+		return ret;
+
+	ret = clk_bulk_prepare(count, rockchip->clks);
+	if (ret)
+		return ret;
+
+	ret = clk_bulk_enable(count, rockchip->clks);
+	if (ret) {
+		clk_bulk_unprepare(count, rockchip->clks);
+		return ret;
+	}
+
+	return 0;
+}
+
+static int rockchip_pcie_resource_get(struct platform_device *pdev,
+				      struct rockchip_pcie *rockchip)
+{
+	struct resource *dbi_base;
+	struct resource *apb_base;
+
+	dbi_base = platform_get_resource_byname(pdev, IORESOURCE_MEM,
+						"pcie-dbi");
+	if (!dbi_base)
+		return -ENODEV;
+
+	rockchip->dbi_base = devm_ioremap_resource(&pdev->dev, dbi_base);
+	if (IS_ERR(rockchip->dbi_base))
+		return PTR_ERR(rockchip->dbi_base);
+
+	rockchip->pci->dbi_base = rockchip->dbi_base;
+
+	apb_base = platform_get_resource_byname(pdev, IORESOURCE_MEM,
+						"pcie-apb");
+	if (!apb_base)
+		return -ENODEV;
+
+	rockchip->apb_base = devm_ioremap_resource(&pdev->dev, apb_base);
+	if (IS_ERR(rockchip->apb_base))
+		return PTR_ERR(rockchip->apb_base);
+
+	rockchip->rst_gpio = devm_gpiod_get_optional(&pdev->dev, "reset",
+						    GPIOD_OUT_HIGH);
+	if (IS_ERR(rockchip->rst_gpio))
+		return PTR_ERR(rockchip->rst_gpio);
+
+	return 0;
+}
+
+static int rockchip_pcie_phy_init(struct rockchip_pcie *rockchip)
+{
+	int ret;
+	struct device *dev = rockchip->pci->dev;
+
+	rockchip->phy = devm_phy_get(dev, "pcie-phy");
+	if (IS_ERR(rockchip->phy)) {
+		if (PTR_ERR(rockchip->phy) != -EPROBE_DEFER)
+			dev_info(dev, "missing phy\n");
+		return PTR_ERR(rockchip->phy);
+	}
+
+	rockchip->sub_phy_mode = rockchip->mode == DW_PCIE_RC_TYPE ?
+			SUB_PHY_MODE_PCIE_RC : SUB_PHY_MODE_PCIE_EP;
+
+	ret = phy_set_mode_ext(rockchip->phy, PHY_MODE_PCIE,
+			       rockchip->sub_phy_mode);
+	if (ret)
+		return ret;
+
+	ret = phy_init(rockchip->phy);
+	if (ret < 0)
+		return ret;
+
+	phy_power_on(rockchip->phy);
+
+	return 0;
+}
+
+static int rockchip_pcie_reset_control_release(struct rockchip_pcie *rockchip)
+{
+	struct device *dev = rockchip->pci->dev;
+	struct property *prop;
+	const char *name;
+	int ret, count, i = 0;
+
+	count = of_property_count_strings(dev->of_node, "reset-names");
+	if (count < 1)
+		return -ENODEV;
+
+	rockchip->rsts = devm_kcalloc(dev, count,
+				     sizeof(struct reset_bulk_data),
+				     GFP_KERNEL);
+	if (!rockchip->rsts)
+		return -ENOMEM;
+
+	of_property_for_each_string(dev->of_node, "reset-names",
+				    prop, name) {
+		rockchip->rsts[i].id = name;
+		if (!rockchip->rsts[i].id)
+			return -ENOMEM;
+		i++;
+	}
+
+	for (i = 0; i < count; i++) {
+		rockchip->rsts[i].rst = devm_reset_control_get_exclusive(dev,
+						rockchip->rsts[i].id);
+		if (IS_ERR_OR_NULL(rockchip->rsts[i].rst)) {
+			dev_err(dev, "failed to get %s\n",
+				rockchip->clks[i].id);
+			return -PTR_ERR(rockchip->rsts[i].rst);
+		}
+	}
+
+	for (i = 0; i < count; i++) {
+		ret = reset_control_deassert(rockchip->rsts[i].rst);
+		if (ret) {
+			dev_err(dev, "failed to release %s\n",
+				rockchip->rsts[i].id);
+			return ret;
+		}
+	}
+
+	return 0;
+}
+
+static int rockchip_pcie_reset_grant_ctrl(struct rockchip_pcie *rockchip,
+					  bool enable)
+{
+	int ret;
+	u32 val = HIWORD_UPDATE(BIT(2), 0); /* Write mask bit */
+
+	if (enable)
+		val |= BIT(2);
+
+	ret = regmap_write(rockchip->usb_pcie_grf, 0x0, val);
+	return ret;
+}
+
+static const struct rockchip_pcie_of_data rockchip_rc_of_data = {
+	.mode = DW_PCIE_RC_TYPE,
+};
+
+static const struct of_device_id rockchip_pcie_of_match[] = {
+	{
+		.compatible = "rockchip,rk1808-pcie",
+		.data = &rockchip_rc_of_data,
+	},
+	{ /* sentinel */ },
+};
+
+static const struct dw_pcie_ops dw_pcie_ops = {
+	.link_up = rockchip_pcie_link_up,
+};
+
+static int rockchip_pcie_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct rockchip_pcie *rockchip;
+	struct dw_pcie *pci;
+	int ret;
+	const struct of_device_id *match;
+	const struct rockchip_pcie_of_data *data;
+	enum dw_pcie_device_mode mode;
+
+	match = of_match_device(rockchip_pcie_of_match, dev);
+	if (!match)
+		return -EINVAL;
+
+	data = (struct rockchip_pcie_of_data *)match->data;
+	mode = (enum dw_pcie_device_mode)data->mode;
+
+	rockchip = devm_kzalloc(dev, sizeof(*rockchip), GFP_KERNEL);
+	if (!rockchip)
+		return -ENOMEM;
+
+	pci = devm_kzalloc(dev, sizeof(*pci), GFP_KERNEL);
+	if (!pci)
+		return -ENOMEM;
+
+	pci->dev = dev;
+	pci->ops = &dw_pcie_ops;
+
+	rockchip->mode = mode;
+	rockchip->pci = pci;
+
+	ret = rockchip_pcie_resource_get(pdev, rockchip);
+	if (ret)
+		return ret;
+
+	ret = rockchip_pcie_phy_init(rockchip);
+	if (ret)
+		return ret;
+
+	ret = rockchip_pcie_reset_control_release(rockchip);
+	if (ret)
+		return ret;
+
+	rockchip->usb_pcie_grf =
+		syscon_regmap_lookup_by_phandle(dev->of_node,
+						"rockchip,usbpciegrf");
+	if (IS_ERR(rockchip->usb_pcie_grf))
+		return PTR_ERR(rockchip->usb_pcie_grf);
+
+	ret = rockchip_pcie_clk_init(rockchip);
+	if (ret)
+		return ret;
+
+	platform_set_drvdata(pdev, rockchip);
+
+	ret = rockchip_pcie_reset_grant_ctrl(rockchip, true);
+	if (ret)
+		goto deinit_clk;
+
+//	if (rockchip->mode == DW_PCIE_RC_TYPE)
+//		ret = rk_add_pcie_port(rockchip);
+	ret = rockchip->mode == DW_PCIE_RC_TYPE ?
+		rk_add_pcie_port(rockchip) : -EINVAL;
+
+	if (ret)
+		goto deinit_clk;
+
+	ret = rockchip_pcie_reset_grant_ctrl(rockchip, false);
+	if (ret)
+		goto deinit_clk;
+
+	return 0;
+
+deinit_clk:
+	rockchip_pcie_clk_deinit(rockchip);
+
+	return ret;
+}
+
+MODULE_DEVICE_TABLE(of, rockchip_pcie_of_match);
+
+static struct platform_driver rockchip_pcie_driver = {
+	.driver = {
+		.name	= "rk-pcie",
+		.of_match_table = rockchip_pcie_of_match,
+		.suppress_bind_attrs = true,
+	},
+	.probe = rockchip_pcie_probe,
+};
+
+builtin_platform_driver(rockchip_pcie_driver);
-- 
1.9.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B98071B85EB
	for <lists+linux-rockchip@lfdr.de>; Sat, 25 Apr 2020 13:04:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=RTxVw5vGCdCI2HHTeZ85esptEXL1fA03lQAF88UaBNo=; b=QmzeHLq63oj4cTTivHTMO2Tjt+
	YX9oEJ2tTQE6AImsshAywzQJI+m6MmaL+uQoyuPmLo07kze/UJrN4/rTV0IoZQRpQbUauFWQGbekD
	qDPtAOVnFqxhRLAZzS5qgIBUeWpQMI8OzpQB9mE/O6OEHsq8+k3CtJHrWdlG9pGfFHX2vGkI9fawi
	xk7NKy0rj6330hW3hYY5IWmiPDircjX5a40XwEz72fs1+gBOwjv+honBFxP6svExbfHnPUi664x/I
	zI+5XOob8fcYxTSgWy+5t/DN7bK377oc+F1DRoQQ6lmyuMACzTiL081DfjRy1PLIJ+qml4TexM90w
	nyJSDvrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSIbo-0006Oy-RS; Sat, 25 Apr 2020 11:04:32 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSIbj-0006LG-SR
 for linux-rockchip@lists.infradead.org; Sat, 25 Apr 2020 11:04:30 +0000
Received: by mail-pf1-x441.google.com with SMTP id 18so6113845pfx.6
 for <linux-rockchip@lists.infradead.org>; Sat, 25 Apr 2020 04:04:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=7EFV92NDB3wj8ZxOaxi0K9e4k9sGjI5XvTIkD/NH5QQ=;
 b=mchUMEKPPp2uYjMW1+NiraJ6jrfgM+hUo5zNfkE7XmAtFaoa+5KrMGHY8LeWDapEiE
 KZeAbdojvfFDtFXSeAdcGqNdOFqWDLnxROavO265IsnUZHqUVz3obn7dTrXew3dIUuQY
 u9+jQQbW1wCLbtdHP5HvxPALbyBKWAbm0/AlY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=7EFV92NDB3wj8ZxOaxi0K9e4k9sGjI5XvTIkD/NH5QQ=;
 b=hdUqKEpaEYICHTuxHnCmjgrAqbZM5CcDk8MIuQ2OPSZF/4AqgKmA6s5Gbrvx182QoH
 GP4ztuct6bPdkL81hloxlR4hDzXuE8oJC6g10vOAeLxU5AzLU/eMeIZ8vKJM92rAogdh
 +OIZB+RF97ovMqmzW2JAsrJTQOBvIyRUzqjXzKoPM3HomhAukMvRVlDuos8HjdZL3hhC
 OIJ+Y6vVqLZuvvkiqYCNaTY5cWAPCeqKIL22Cd8CeERe/FSiwN0M3h6vfknSt7bsHluS
 lCCzcL4yOilvEoYrnla+ZTsmXciyqBLiPFQdSfv3C8GRV5hgd4gfKPIx3WR4cbmBhs+e
 2VqA==
X-Gm-Message-State: AGi0PuZ8aNyalHagGWrstyYM5GBDwQUn8sN/S640OLRlHan2IB8mYpnZ
 /3bXaK2nAguOzSO6y70usHl+RQ==
X-Google-Smtp-Source: APiQypJzREH1wzW74L3VK+0kOkRdDgv1dTHJ+B1LbY4k8K/eFoANvPs4b/zjfU2+EF04HTFqGedhUA==
X-Received: by 2002:a62:3006:: with SMTP id w6mr14239683pfw.29.1587812666429; 
 Sat, 25 Apr 2020 04:04:26 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:1d46:fa69:c34:93dc])
 by smtp.gmail.com with ESMTPSA id
 v94sm6922831pjb.39.2020.04.25.04.04.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 25 Apr 2020 04:04:25 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH 5/8] pci: Add Rockchip PCIe controller driver
Date: Sat, 25 Apr 2020 16:33:51 +0530
Message-Id: <20200425110354.12381-6-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200425110354.12381-1-jagan@amarulasolutions.com>
References: <20200425110354.12381-1-jagan@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200425_040427_929649_42FD04CE 
X-CRM114-Status: GOOD (  17.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
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

Add Rockchip PCIe controller driver for rk3399 platform.

Driver support Gen1 by operating as a Root complex.

Thanks to Patrick for initial work.

Signed-off-by: Patrick Wildt <patrick@blueri.se>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 drivers/pci/Kconfig         |   8 +
 drivers/pci/Makefile        |   1 +
 drivers/pci/pcie_rockchip.c | 460 ++++++++++++++++++++++++++++++++++++
 drivers/pci/pcie_rockchip.h |  79 +++++++
 4 files changed, 548 insertions(+)
 create mode 100644 drivers/pci/pcie_rockchip.c
 create mode 100644 drivers/pci/pcie_rockchip.h

diff --git a/drivers/pci/Kconfig b/drivers/pci/Kconfig
index 437cd9a055..3dba84103b 100644
--- a/drivers/pci/Kconfig
+++ b/drivers/pci/Kconfig
@@ -197,4 +197,12 @@ config PCIE_MEDIATEK
 	  Say Y here if you want to enable Gen2 PCIe controller,
 	  which could be found on MT7623 SoC family.
 
+config PCIE_ROCKCHIP
+	bool "Enable Rockchip PCIe driver"
+	select DM_PCI
+	default y if ROCKCHIP_RK3399
+	help
+	  Say Y here if you want to enable PCIe controller support on
+	  Rockchip SoCs.
+
 endif
diff --git a/drivers/pci/Makefile b/drivers/pci/Makefile
index c051ecc9f3..493e9354dd 100644
--- a/drivers/pci/Makefile
+++ b/drivers/pci/Makefile
@@ -43,3 +43,4 @@ obj-$(CONFIG_PCI_PHYTIUM) += pcie_phytium.o
 obj-$(CONFIG_PCIE_INTEL_FPGA) += pcie_intel_fpga.o
 obj-$(CONFIG_PCI_KEYSTONE) += pcie_dw_ti.o
 obj-$(CONFIG_PCIE_MEDIATEK) += pcie_mediatek.o
+obj-$(CONFIG_PCIE_ROCKCHIP) += pcie_rockchip.o
diff --git a/drivers/pci/pcie_rockchip.c b/drivers/pci/pcie_rockchip.c
new file mode 100644
index 0000000000..adc64aedf5
--- /dev/null
+++ b/drivers/pci/pcie_rockchip.c
@@ -0,0 +1,460 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Rockchip AXI PCIe host controller driver
+ *
+ * Copyright (c) 2016 Rockchip, Inc.
+ * Copyright (c) 2020 Amarula Solutions(India)
+ * Copyright (c) 2020 Jagan Teki <jagan@amarulasolutions.com>
+ * Copyright (c) 2019 Patrick Wildt <patrick@blueri.se>
+ * Copyright (c) 2018 Mark Kettenis <kettenis@openbsd.org>
+ *
+ * Bits taken from Linux Rockchip PCIe host controller.
+ */
+
+#include <common.h>
+#include <clk.h>
+#include <dm.h>
+#include <dm/device_compat.h>
+#include <pci.h>
+#include <power-domain.h>
+#include <power/regulator.h>
+#include <reset.h>
+#include <syscon.h>
+#include <asm/io.h>
+#include <asm-generic/gpio.h>
+#include <asm/arch-rockchip/clock.h>
+#include <linux/iopoll.h>
+
+#include "pcie_rockchip.h"
+
+DECLARE_GLOBAL_DATA_PTR;
+
+static int rockchip_pcie_rd_conf(const struct udevice *bus, pci_dev_t bdf,
+				 uint offset, ulong *valuep,
+				 enum pci_size_t size)
+{
+	struct rockchip_pcie *priv = dev_get_priv(bus);
+	ulong value;
+	u32 off;
+
+	off = (PCI_BUS(bdf) << 20) | (PCI_DEV(bdf) << 15) |
+	      (PCI_FUNC(bdf) << 12) | (offset & ~0x3);
+
+	if ((PCI_BUS(bdf) == priv->first_busno) && (PCI_DEV(bdf) == 0)) {
+		value = readl(priv->apb_base + PCIE_RC_NORMAL_BASE + off);
+		*valuep = pci_conv_32_to_size(value, offset, size);
+		return 0;
+	}
+
+	if ((PCI_BUS(bdf) == priv->first_busno + 1) && (PCI_DEV(bdf) == 0)) {
+		value = readl(priv->axi_base + off);
+		*valuep = pci_conv_32_to_size(value, offset, size);
+		return 0;
+	}
+
+	*valuep = pci_get_ff(size);
+
+	return 0;
+}
+
+static int rockchip_pcie_wr_conf(struct udevice *bus, pci_dev_t bdf,
+				 uint offset, ulong value,
+				 enum pci_size_t size)
+{
+	struct rockchip_pcie *priv = dev_get_priv(bus);
+	ulong old;
+	u32 off;
+
+	off = (PCI_BUS(bdf) << 20) | (PCI_DEV(bdf) << 15) |
+	      (PCI_FUNC(bdf) << 12) | (offset & ~0x3);
+
+	if ((PCI_BUS(bdf) == priv->first_busno) && (PCI_DEV(bdf) == 0)) {
+		old = readl(priv->apb_base + PCIE_RC_NORMAL_BASE + off);
+		value = pci_conv_size_to_32(old, value, offset, size);
+		writel(value, priv->apb_base + PCIE_RC_NORMAL_BASE + off);
+		return 0;
+	}
+
+	if ((PCI_BUS(bdf) == priv->first_busno + 1) && (PCI_DEV(bdf) == 0)) {
+		old = readl(priv->axi_base + off);
+		value = pci_conv_size_to_32(old, value, offset, size);
+		writel(value, priv->axi_base + off);
+		return 0;
+	}
+
+	return 0;
+}
+
+static int rockchip_pcie_atr_init(struct rockchip_pcie *priv)
+{
+	struct udevice *ctlr = pci_get_controller(priv->dev);
+	struct pci_controller *hose = dev_get_uclass_priv(ctlr);
+	u64 addr, size, offset;
+	u32 type;
+	int i, region;
+
+	/* Use region 0 to map PCI configuration space. */
+	writel(25 - 1, priv->apb_base + PCIE_ATR_OB_ADDR0(0));
+	writel(0, priv->apb_base + PCIE_ATR_OB_ADDR1(0));
+	writel(PCIE_ATR_HDR_CFG_TYPE0 | PCIE_ATR_HDR_RID,
+	       priv->apb_base + PCIE_ATR_OB_DESC0(0));
+	writel(0, priv->apb_base + PCIE_ATR_OB_DESC1(0));
+
+	for (i = 0; i < hose->region_count; i++) {
+		if (hose->regions[i].flags == PCI_REGION_SYS_MEMORY)
+			continue;
+
+		if (hose->regions[i].flags == PCI_REGION_IO)
+			type = PCIE_ATR_HDR_IO;
+		else
+			type = PCIE_ATR_HDR_MEM;
+
+		/* Only support identity mappings. */
+		if (hose->regions[i].bus_start !=
+		    hose->regions[i].phys_start)
+			return -EINVAL;
+
+		/* Only support mappings aligned on a region boundary. */
+		addr = hose->regions[i].bus_start;
+		if (addr & (PCIE_ATR_OB_REGION_SIZE - 1))
+			return -EINVAL;
+
+		/* Mappings should lie between AXI and APB regions. */
+		size = hose->regions[i].size;
+		if (addr < (u64)priv->axi_base + PCIE_ATR_OB_REGION0_SIZE)
+			return -EINVAL;
+		if (addr + size > (u64)priv->apb_base)
+			return -EINVAL;
+
+		offset = addr - (u64)priv->axi_base - PCIE_ATR_OB_REGION0_SIZE;
+		region = 1 + (offset / PCIE_ATR_OB_REGION_SIZE);
+		while (size > 0) {
+			writel(32 - 1,
+			       priv->apb_base + PCIE_ATR_OB_ADDR0(region));
+			writel(0, priv->apb_base + PCIE_ATR_OB_ADDR1(region));
+			writel(type | PCIE_ATR_HDR_RID,
+			       priv->apb_base + PCIE_ATR_OB_DESC0(region));
+			writel(0, priv->apb_base + PCIE_ATR_OB_DESC1(region));
+
+			addr += PCIE_ATR_OB_REGION_SIZE;
+			size -= PCIE_ATR_OB_REGION_SIZE;
+			region++;
+		}
+	}
+
+	/* Passthrough inbound translations unmodified. */
+	writel(32 - 1, priv->apb_base + PCIE_ATR_IB_ADDR0(2));
+	writel(0, priv->apb_base + PCIE_ATR_IB_ADDR1(2));
+
+	return 0;
+}
+
+static int rockchip_pcie_init_port(struct udevice *dev)
+{
+	struct rockchip_pcie *priv = dev_get_priv(dev);
+	u32 cr, val, status;
+	int ret;
+
+	if (dm_gpio_is_valid(&priv->ep_gpio))
+		dm_gpio_set_value(&priv->ep_gpio, 0);
+
+	ret = reset_assert(&priv->aclk_rst);
+	if (ret) {
+		dev_err(dev, "failed to assert aclk reset (ret=%d)\n", ret);
+		return ret;
+	}
+
+	ret = reset_assert(&priv->pclk_rst);
+	if (ret) {
+		dev_err(dev, "failed to assert pclk reset (ret=%d)\n", ret);
+		return ret;
+	}
+
+	ret = reset_assert(&priv->pm_rst);
+	if (ret) {
+		dev_err(dev, "failed to assert pm reset (ret=%d)\n", ret);
+		return ret;
+	}
+
+	ret = reset_assert(&priv->core_rst);
+	if (ret) {
+		dev_err(dev, "failed to assert core reset (ret=%d)\n", ret);
+		return ret;
+	}
+
+	ret = reset_assert(&priv->mgmt_rst);
+	if (ret) {
+		dev_err(dev, "failed to assert mgmt reset (ret=%d)\n", ret);
+		return ret;
+	}
+
+	ret = reset_assert(&priv->mgmt_sticky_rst);
+	if (ret) {
+		dev_err(dev, "failed to assert mgmt-sticky reset (ret=%d)\n",
+			ret);
+		return ret;
+	}
+
+	ret = reset_assert(&priv->pipe_rst);
+	if (ret) {
+		dev_err(dev, "failed to assert pipe reset (ret=%d)\n", ret);
+		return ret;
+	}
+
+	udelay(10);
+
+	ret = reset_deassert(&priv->pm_rst);
+	if (ret) {
+		dev_err(dev, "failed to deassert pm reset (ret=%d)\n", ret);
+		return ret;
+	}
+
+	ret = reset_deassert(&priv->aclk_rst);
+	if (ret) {
+		dev_err(dev, "failed to deassert aclk reset (ret=%d)\n", ret);
+		return ret;
+	}
+
+	ret = reset_deassert(&priv->pclk_rst);
+	if (ret) {
+		dev_err(dev, "failed to deassert pclk reset (ret=%d)\n", ret);
+		return ret;
+	}
+
+	/* Select GEN1 for now */
+	cr = PCIE_CLIENT_GEN_SEL_1;
+	/* Set Root complex mode */
+	cr |= PCIE_CLIENT_CONF_ENABLE | PCIE_CLIENT_MODE_RC;
+	writel(cr, priv->apb_base + PCIE_CLIENT_CONFIG);
+
+	ret = reset_deassert(&priv->mgmt_sticky_rst);
+	if (ret) {
+		dev_err(dev, "failed to deassert mgmt-sticky reset (ret=%d)\n",
+			ret);
+		return ret;
+	}
+
+	ret = reset_deassert(&priv->core_rst);
+	if (ret) {
+		dev_err(dev, "failed to deassert core reset (ret=%d)\n", ret);
+		return ret;
+	}
+
+	ret = reset_deassert(&priv->mgmt_rst);
+	if (ret) {
+		dev_err(dev, "failed to deassert mgmt reset (ret=%d)\n", ret);
+		return ret;
+	}
+
+	ret = reset_deassert(&priv->pipe_rst);
+	if (ret) {
+		dev_err(dev, "failed to deassert pipe reset (ret=%d)\n", ret);
+		return ret;
+	}
+
+	/* Enable Gen1 training */
+	writel(PCIE_CLIENT_LINK_TRAIN_ENABLE,
+	       priv->apb_base + PCIE_CLIENT_CONFIG);
+
+	if (dm_gpio_is_valid(&priv->ep_gpio))
+		dm_gpio_set_value(&priv->ep_gpio, 1);
+
+	ret = readl_poll_sleep_timeout
+			(priv->apb_base + PCIE_CLIENT_BASIC_STATUS1,
+			status, PCIE_LINK_UP(status), 20, 500 * 1000);
+	if (ret) {
+		dev_err(dev, "PCIe link training gen1 timeout!\n");
+		return ret;
+	}
+
+	/* Initialize Root Complex registers. */
+	writel(PCIE_LM_VENDOR_ROCKCHIP, priv->apb_base + PCIE_LM_VENDOR_ID);
+	writel(PCI_CLASS_BRIDGE_PCI << 16,
+	       priv->apb_base + PCIE_RC_BASE + PCI_CLASS_REVISION);
+	writel(PCIE_LM_RCBARPIE | PCIE_LM_RCBARPIS,
+	       priv->apb_base + PCIE_LM_RCBAR);
+
+	if (dev_read_bool(dev, "aspm-no-l0s")) {
+		val = readl(priv->apb_base + PCIE_RC_PCIE_LCAP);
+		val &= ~PCIE_RC_PCIE_LCAP_APMS_L0S;
+		writel(val, priv->apb_base + PCIE_RC_PCIE_LCAP);
+	}
+
+	/* Configure Address Translation. */
+	ret = rockchip_pcie_atr_init(priv);
+	if (ret) {
+		dev_err(dev, "PCIE-%d: ATR init failed\n", dev->seq);
+		return ret;
+	}
+
+	return 0;
+}
+
+static int rockchip_pcie_set_vpcie(struct udevice *dev)
+{
+	struct rockchip_pcie *priv = dev_get_priv(dev);
+	int ret;
+
+	if (!IS_ERR(priv->vpcie3v3)) {
+		ret = regulator_set_enable(priv->vpcie3v3, true);
+		if (ret) {
+			dev_err(dev, "failed to enable vpcie3v3 (ret=%d)\n",
+				ret);
+			return ret;
+		}
+	}
+
+	ret = regulator_set_enable(priv->vpcie1v8, true);
+	if (ret) {
+		dev_err(dev, "failed to enable vpcie1v8 (ret=%d)\n", ret);
+		goto err_disable_3v3;
+	}
+
+	ret = regulator_set_enable(priv->vpcie0v9, true);
+	if (ret) {
+		dev_err(dev, "failed to enable vpcie0v9 (ret=%d)\n", ret);
+		goto err_disable_1v8;
+	}
+
+	return 0;
+
+err_disable_1v8:
+	regulator_set_enable(priv->vpcie1v8, false);
+err_disable_3v3:
+	if (!IS_ERR(priv->vpcie3v3))
+		regulator_set_enable(priv->vpcie3v3, false);
+	return ret;
+}
+
+static int rockchip_pcie_parse_dt(struct udevice *dev)
+{
+	struct rockchip_pcie *priv = dev_get_priv(dev);
+	int ret;
+
+	priv->axi_base = dev_read_addr_name(dev, "axi-base");
+	if (!priv->axi_base)
+		return -ENODEV;
+
+	priv->apb_base = dev_read_addr_name(dev, "apb-base");
+	if (!priv->axi_base)
+		return -ENODEV;
+
+	ret = gpio_request_by_name(dev, "ep-gpios", 0,
+				   &priv->ep_gpio, GPIOD_IS_OUT);
+	if (ret) {
+		dev_err(dev, "failed to find ep-gpios property\n");
+		return ret;
+	}
+
+	ret = reset_get_by_name(dev, "core", &priv->core_rst);
+	if (ret) {
+		dev_err(dev, "failed to get core reset (ret=%d)\n", ret);
+		return ret;
+	}
+
+	ret = reset_get_by_name(dev, "mgmt", &priv->mgmt_rst);
+	if (ret) {
+		dev_err(dev, "failed to get mgmt reset (ret=%d)\n", ret);
+		return ret;
+	}
+
+	ret = reset_get_by_name(dev, "mgmt-sticky", &priv->mgmt_sticky_rst);
+	if (ret) {
+		dev_err(dev, "failed to get mgmt-sticky reset (ret=%d)\n", ret);
+		return ret;
+	}
+
+	ret = reset_get_by_name(dev, "pipe", &priv->pipe_rst);
+	if (ret) {
+		dev_err(dev, "failed to get pipe reset (ret=%d)\n", ret);
+		return ret;
+	}
+
+	ret = reset_get_by_name(dev, "pm", &priv->pm_rst);
+	if (ret) {
+		dev_err(dev, "failed to get pm reset (ret=%d)\n", ret);
+		return ret;
+	}
+
+	ret = reset_get_by_name(dev, "pclk", &priv->pclk_rst);
+	if (ret) {
+		dev_err(dev, "failed to get pclk reset (ret=%d)\n", ret);
+		return ret;
+	}
+
+	ret = reset_get_by_name(dev, "aclk", &priv->aclk_rst);
+	if (ret) {
+		dev_err(dev, "failed to get aclk reset (ret=%d)\n", ret);
+		return ret;
+	}
+
+	ret = device_get_supply_regulator(dev, "vpcie3v3-supply",
+					  &priv->vpcie3v3);
+	if (ret && ret != -ENOENT) {
+		dev_err(dev, "failed to get vpcie3v3 supply (ret=%d)\n", ret);
+		return ret;
+	}
+
+	ret = device_get_supply_regulator(dev, "vpcie1v8-supply",
+					  &priv->vpcie1v8);
+	if (ret) {
+		dev_err(dev, "failed to get vpcie1v8 supply (ret=%d)\n", ret);
+		return ret;
+	}
+
+	ret = device_get_supply_regulator(dev, "vpcie0v9-supply",
+					  &priv->vpcie0v9);
+	if (ret) {
+		dev_err(dev, "failed to get vpcie0v9 supply (ret=%d)\n", ret);
+		return ret;
+	}
+
+	return 0;
+}
+
+static int rockchip_pcie_probe(struct udevice *dev)
+{
+	struct rockchip_pcie *priv = dev_get_priv(dev);
+	struct udevice *ctlr = pci_get_controller(dev);
+	struct pci_controller *hose = dev_get_uclass_priv(ctlr);
+	int ret;
+
+	priv->first_busno = dev->seq;
+	priv->dev = dev;
+
+	ret = rockchip_pcie_parse_dt(dev);
+	if (ret)
+		return ret;
+
+	ret = rockchip_pcie_set_vpcie(dev);
+	if (ret)
+		return ret;
+
+	ret = rockchip_pcie_init_port(dev);
+	if (ret)
+		return ret;
+
+	dev_info(dev, "PCIE-%d: Link up (Bus%d)\n",
+		 dev->seq, hose->first_busno);
+
+	return 0;
+}
+
+static const struct dm_pci_ops rockchip_pcie_ops = {
+	.read_config	= rockchip_pcie_rd_conf,
+	.write_config	= rockchip_pcie_wr_conf,
+};
+
+static const struct udevice_id rockchip_pcie_ids[] = {
+	{ .compatible = "rockchip,rk3399-pcie" },
+	{ }
+};
+
+U_BOOT_DRIVER(rockchip_pcie) = {
+	.name			= "rockchip_pcie",
+	.id			= UCLASS_PCI,
+	.of_match		= rockchip_pcie_ids,
+	.ops			= &rockchip_pcie_ops,
+	.probe			= rockchip_pcie_probe,
+	.priv_auto_alloc_size	= sizeof(struct rockchip_pcie),
+};
diff --git a/drivers/pci/pcie_rockchip.h b/drivers/pci/pcie_rockchip.h
new file mode 100644
index 0000000000..6ded5c9553
--- /dev/null
+++ b/drivers/pci/pcie_rockchip.h
@@ -0,0 +1,79 @@
+/* SPDX-License-Identifier: GPL-2.0+ */
+/*
+ * Rockchip PCIe Headers
+ *
+ * Copyright (c) 2016 Rockchip, Inc.
+ * Copyright (c) 2020 Amarula Solutions(India)
+ * Copyright (c) 2020 Jagan Teki <jagan@amarulasolutions.com>
+ * Copyright (c) 2019 Patrick Wildt <patrick@blueri.se>
+ *
+ */
+
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
+};
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

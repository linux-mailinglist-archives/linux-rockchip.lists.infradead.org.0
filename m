Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDCDF1BF0C8
	for <lists+linux-rockchip@lfdr.de>; Thu, 30 Apr 2020 09:04:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=a8HzPTBSn0e23Rg09yRY5dyisJltufKwhNb7RhUS7r4=; b=apbC3WzaTRv5DGbQo87/dUuK9T
	/V/+6MsQBOYFCiZRn5iZyvQ5qlxG11VaHZ7SrV8/BPet3gzb0kOaGdFRAmk6m1DRk4Rd1mLisW+kW
	chXWO3nMPNY7jgyRd23kGIw9gUha72YjUPq8FO8VFl+tpJaiY9wgaCjnukhz01zLYu/i0F9QMXQ4d
	QRbTgfEpOdICTtJ4+Xkt1k7tZAgQvYHEdclPM6kNOi0Wo8GcbGPi1gQLRGCyyDgu9TJRqZ8aVp8fR
	/IP9k+jzK9PNHSyW+25Nxfh1bdZYZ4bWt4asurfMkOoJb89T9gySZqbB+wmthcCMvOVbJShu9XYWl
	L2wtVeVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU3Fa-0006LX-1K; Thu, 30 Apr 2020 07:04:50 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU3FT-0006Ie-HB
 for linux-rockchip@lists.infradead.org; Thu, 30 Apr 2020 07:04:45 +0000
Received: by mail-pf1-x442.google.com with SMTP id r14so2471299pfg.2
 for <linux-rockchip@lists.infradead.org>; Thu, 30 Apr 2020 00:04:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=qZLcgIkw6VsaZbMb9f7Jqm6DueQwtF2lpr91eQGAzIg=;
 b=H651y+6lrKVAbAea+I4qsSpw5eN9M0NH0IdThuEFv6tjDtn7T93QJudsuuipIMU3vp
 3bKeI/HZbUPi37ESAIWiRAovAME2hqpgvEOUUXnKVZAjoIbcY3ytrfZle//qQHyzZe7I
 TXuT2hnBe6SOEtoZLi3xYPVqPizwU+p9gz4MY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=qZLcgIkw6VsaZbMb9f7Jqm6DueQwtF2lpr91eQGAzIg=;
 b=CVhOHLMPmM2EkL9IBOhbrPK/PzSf8LQt7w4yF+Mk+8kiqpET54sNHftnOZ0BzH/OVI
 ZWhkTJl9ZpRDr0n4XiwTbaw5dazs/thOfTcSF6+w09nr2u0ljrSjojuCpSrxlbrZRL4k
 UUX+AFIz7bSLU/Qal5EVnWNYWvmH6lE1t0gP8c0SRJMtUuP1y3eh6vZRzpyZB26GFJg+
 mdsfxJtG3JdNbedlzynkzS1csKx8quCcyC0Ym84K58zvrHAItgcdNV5mIb2Yr/Dd7Faz
 nOht9GE9JQgFon/XHGdE1MZ8e5P89glJSyXXaJMzUE9ixPnHvwREFUTnzy2h+dk17aJN
 3Ffw==
X-Gm-Message-State: AGi0PuY/J4JhUfpCvOfdaTjUvuBxiYbTO1BXDk0P/YfrV7BWnFnNSSr/
 eS06B/6v/wyc5oYi7/xwGxaH2g==
X-Google-Smtp-Source: APiQypL1n/bqddmljgGqj1Ch4+Qc0B2cLCuaZeycR7332te6UjS81Isd2AY8lt5swDFnHO65ST0ojQ==
X-Received: by 2002:a63:fb14:: with SMTP id o20mr1980204pgh.144.1588230282614; 
 Thu, 30 Apr 2020 00:04:42 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:6514:3619:d1af:85f6])
 by smtp.gmail.com with ESMTPSA id p64sm964143pjp.7.2020.04.30.00.04.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 Apr 2020 00:04:41 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH v2 5/8] pci: Add Rockchip PCIe controller driver
Date: Thu, 30 Apr 2020 12:34:09 +0530
Message-Id: <20200430070412.12499-6-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200430070412.12499-1-jagan@amarulasolutions.com>
References: <20200430070412.12499-1-jagan@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_000443_569516_227CE6A1 
X-CRM114-Status: GOOD (  17.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Reviewed-by: Kever Yang <kever.yang@rock-chips.com>
---
Changes for v2:
- simplify bdf in rd_conf, wr_conf
- collect kever r-o-b

 drivers/pci/Kconfig         |   8 +
 drivers/pci/Makefile        |   1 +
 drivers/pci/pcie_rockchip.c | 467 ++++++++++++++++++++++++++++++++++++
 drivers/pci/pcie_rockchip.h |  79 ++++++
 4 files changed, 555 insertions(+)
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
index 0000000000..3f06f783ca
--- /dev/null
+++ b/drivers/pci/pcie_rockchip.c
@@ -0,0 +1,467 @@
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
+static int rockchip_pcie_off_conf(pci_dev_t bdf, uint offset)
+{
+	unsigned int bus = PCI_BUS(bdf);
+	unsigned int dev = PCI_DEV(bdf);
+	unsigned int func = PCI_FUNC(bdf);
+
+	return (bus << 20) | (dev << 15) | (func << 12) | (offset & ~0x3);
+}
+
+static int rockchip_pcie_rd_conf(const struct udevice *udev, pci_dev_t bdf,
+				 uint offset, ulong *valuep,
+				 enum pci_size_t size)
+{
+	struct rockchip_pcie *priv = dev_get_priv(udev);
+	unsigned int bus = PCI_BUS(bdf);
+	unsigned int dev = PCI_DEV(bdf);
+	int where = rockchip_pcie_off_conf(bdf, offset);
+	ulong value;
+
+	if (bus == priv->first_busno && dev == 0) {
+		value = readl(priv->apb_base + PCIE_RC_NORMAL_BASE + where);
+		*valuep = pci_conv_32_to_size(value, offset, size);
+		return 0;
+	}
+
+	if ((bus == priv->first_busno + 1) && dev == 0) {
+		value = readl(priv->axi_base + where);
+		*valuep = pci_conv_32_to_size(value, offset, size);
+		return 0;
+	}
+
+	*valuep = pci_get_ff(size);
+
+	return 0;
+}
+
+static int rockchip_pcie_wr_conf(struct udevice *udev, pci_dev_t bdf,
+				 uint offset, ulong value,
+				 enum pci_size_t size)
+{
+	struct rockchip_pcie *priv = dev_get_priv(udev);
+	unsigned int bus = PCI_BUS(bdf);
+	unsigned int dev = PCI_DEV(bdf);
+	int where = rockchip_pcie_off_conf(bdf, offset);
+	ulong old;
+
+	if (bus == priv->first_busno && dev == 0) {
+		old = readl(priv->apb_base + PCIE_RC_NORMAL_BASE + where);
+		value = pci_conv_size_to_32(old, value, offset, size);
+		writel(value, priv->apb_base + PCIE_RC_NORMAL_BASE + where);
+		return 0;
+	}
+
+	if ((bus == priv->first_busno + 1) && dev == 0) {
+		old = readl(priv->axi_base + where);
+		value = pci_conv_size_to_32(old, value, offset, size);
+		writel(value, priv->axi_base + where);
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

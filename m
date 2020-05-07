Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2994F1C952E
	for <lists+linux-rockchip@lfdr.de>; Thu,  7 May 2020 17:36:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s9rSNRA9jAW28vTDztRmKRp96EKQrXMRJb0WJyzwseM=; b=ZfEWEu76EgMnpZ
	D/Y+O7gQ8vS2JLuSEy0KW4qx4laDUzLrp2zQwcf/CXAe+4nyXakAXDKqtkkaVQ+fPI6JgIGF7dhj9
	qAlIVsZLnjTaOb8Zj/ddi8bt7RZEJOTW+IFGDcJUvBf4J16BGWhezXQ3YGuXj6uLNaY8i1U0fHlC9
	0GojXX3zJeVjXkHkRs7+OMcxvhxsyj0w+CjfBfHamcBJjmp8nZgHtBMD1v3y02B3K/8wNTRgNC59L
	2T12X3NsMPZdF8kn7OrmkGU2DRpOgbc19p57wG7vVphFlA28/HR+2S09jElkXUHDBQWxNtXaSdZVF
	BCctvsE9OugjlibSF2wQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWiZC-0004LK-M7; Thu, 07 May 2020 15:36:06 +0000
Received: from mail-oo1-f68.google.com ([209.85.161.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWiZ8-0004KX-Qq
 for linux-rockchip@lists.infradead.org; Thu, 07 May 2020 15:36:05 +0000
Received: by mail-oo1-f68.google.com with SMTP id p67so1408159ooa.11
 for <linux-rockchip@lists.infradead.org>; Thu, 07 May 2020 08:36:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=VToQ3+P9LlAbIr16CYP4iCtSpr80cZpSb3pVaeho23g=;
 b=INCV6ZBHgferdXvejHY/Y4EL2WQGS4jDnErOmgLBy9fB3qzz6+KrfASlQ4W4Law/1s
 0YdULzjCriEThAY7Jd/p86zisW9x0SHM0jMRaCM6DmfXwhwEI1eExRcsnGmcYwDhks3W
 t3RswlBlcvvTtbcaqQMDEUSL5VsScWe3n/SeV/UhbQ0oy2LZLxZapsbvlHULF9Tz/uqR
 LkCZqTXg0zkgdg6go6e9O2qAHi93Mm/VxhJCBmJ204CoHPH0zSusLOmTa13OK7wQBDk7
 pyfHH57k9r48oHT3GI3A//v8koMP9ll7reced5apILYUQWHLTczvYnwgy/fmmLLLk07O
 eFFQ==
X-Gm-Message-State: AGi0PuZOAV8X9DOkGALqo+UvCy2/jr3ZNoZ12QhAD/z5SrocHYbpoOs6
 ZC1tcAB560TlrrmNkKmQKg==
X-Google-Smtp-Source: APiQypI3wCz8UeJ6Pb+3GO+6pqC7aNt8XomhVJM9W6YeNGXjWhupHuNbtDPaF89dfJSvkpxxLbLFpg==
X-Received: by 2002:a4a:8253:: with SMTP id t19mr12148871oog.69.1588865761543; 
 Thu, 07 May 2020 08:36:01 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id s13sm1453167oic.27.2020.05.07.08.36.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 May 2020 08:36:00 -0700 (PDT)
Received: (nullmailer pid 2970 invoked by uid 1000);
 Thu, 07 May 2020 15:36:00 -0000
Date: Thu, 7 May 2020 10:36:00 -0500
From: Rob Herring <robh@kernel.org>
To: Shawn Lin <shawn.lin@rock-chips.com>
Subject: Re: [PATCH v2 5/6] PCI: rockchip: add DesignWare based PCIe controller
Message-ID: <20200507153600.GA9060@bogus>
References: <1581574091-240890-1-git-send-email-shawn.lin@rock-chips.com>
 <1581574248-241030-1-git-send-email-shawn.lin@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1581574248-241030-1-git-send-email-shawn.lin@rock-chips.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_083602_875825_F3685FD9 
X-CRM114-Status: GOOD (  27.45  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.161.68 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.161.68 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 Jingoo Han <jingoohan1@gmail.com>, Kishon Vijay Abraham I <kishon@ti.com>,
 William Wu <william.wu@rock-chips.com>, linux-pci@vger.kernel.org,
 Bjorn Helgaas <bhelgaas@google.com>, Simon Xue <xxm@rock-chips.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Thu, Feb 13, 2020 at 02:10:47PM +0800, Shawn Lin wrote:
> From: Simon Xue <xxm@rock-chips.com>
> 
> pcie-dw-rockchip is based on DWC IP. But pcie-rockchip-host
> is another IP which is only used for RK3399. So all the following
> non-RK3399 SoCs should use this driver.
> 
> Signed-off-by: Simon Xue <xxm@rock-chips.com>
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
> 
> ---
> 
> Changes in v2:
> - add commit log
> - remove dead code
> 
>  drivers/pci/controller/Kconfig                |   4 +-
>  drivers/pci/controller/dwc/Kconfig            |   9 +
>  drivers/pci/controller/dwc/Makefile           |   1 +
>  drivers/pci/controller/dwc/pcie-dw-rockchip.c | 439 ++++++++++++++++++++++++++
>  4 files changed, 451 insertions(+), 2 deletions(-)
>  create mode 100644 drivers/pci/controller/dwc/pcie-dw-rockchip.c
> 
> diff --git a/drivers/pci/controller/Kconfig b/drivers/pci/controller/Kconfig
> index 20bf00f..d0bc8c5 100644
> --- a/drivers/pci/controller/Kconfig
> +++ b/drivers/pci/controller/Kconfig
> @@ -190,7 +190,7 @@ config PCIE_ROCKCHIP_HOST
>  	help
>  	  Say Y here if you want internal PCI support on Rockchip SoC.
>  	  There is 1 internal PCIe port available to support GEN2 with
> -	  4 slots.
> +	  4 slots. Only for RK3399.
>  
>  config PCIE_ROCKCHIP_EP
>  	bool "Rockchip PCIe endpoint controller"
> @@ -202,7 +202,7 @@ config PCIE_ROCKCHIP_EP
>  	help
>  	  Say Y here if you want to support Rockchip PCIe controller in
>  	  endpoint mode on Rockchip SoC. There is 1 internal PCIe port
> -	  available to support GEN2 with 4 slots.
> +	  available to support GEN2 with 4 slots. Only for RK3399.
>  
>  config PCIE_MEDIATEK
>  	tristate "MediaTek PCIe controller"
> diff --git a/drivers/pci/controller/dwc/Kconfig b/drivers/pci/controller/dwc/Kconfig
> index 0830dfc..9e42a2b 100644
> --- a/drivers/pci/controller/dwc/Kconfig
> +++ b/drivers/pci/controller/dwc/Kconfig
> @@ -209,6 +209,15 @@ config PCIE_ARTPEC6_EP
>  	  Enables support for the PCIe controller in the ARTPEC-6 SoC to work in
>  	  endpoint mode. This uses the DesignWare core.
>  
> +config PCIE_DW_ROCKCHIP_HOST
> +	bool "Rockchip DesignWare PCIe controller"
> +	select PCIE_DW
> +	select PCIE_DW_HOST
> +	depends on ARCH_ROCKCHIP
> +	depends on OF
> +	help
> +	  Enables support for the DW PCIe controller in the Rockchip SoC.
> +
>  config PCIE_INTEL_GW
>  	bool "Intel Gateway PCIe host controller support"
>  	depends on OF && (X86 || COMPILE_TEST)
> diff --git a/drivers/pci/controller/dwc/Makefile b/drivers/pci/controller/dwc/Makefile
> index 8a637cf..1793e81 100644
> --- a/drivers/pci/controller/dwc/Makefile
> +++ b/drivers/pci/controller/dwc/Makefile
> @@ -13,6 +13,7 @@ obj-$(CONFIG_PCI_LAYERSCAPE_EP) += pci-layerscape-ep.o
>  obj-$(CONFIG_PCIE_QCOM) += pcie-qcom.o
>  obj-$(CONFIG_PCIE_ARMADA_8K) += pcie-armada8k.o
>  obj-$(CONFIG_PCIE_ARTPEC6) += pcie-artpec6.o
> +obj-$(CONFIG_PCIE_DW_ROCKCHIP_HOST) += pcie-dw-rockchip.o
>  obj-$(CONFIG_PCIE_INTEL_GW) += pcie-intel-gw.o
>  obj-$(CONFIG_PCIE_KIRIN) += pcie-kirin.o
>  obj-$(CONFIG_PCIE_HISI_STB) += pcie-histb.o
> diff --git a/drivers/pci/controller/dwc/pcie-dw-rockchip.c b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> new file mode 100644
> index 0000000..df413aa
> --- /dev/null
> +++ b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> @@ -0,0 +1,439 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * PCIe host controller driver for Rockchip SoCs
> + *
> + * Copyright (C) 2018 Rockchip Electronics Co., Ltd.
> + *		http://www.rock-chips.com
> + *
> + * Author: Simon Xue <xxm@rock-chips.com>
> + */
> +
> +#include <linux/clk.h>
> +#include <linux/mfd/syscon.h>
> +#include <linux/module.h>
> +#include <linux/of_device.h>
> +#include <linux/of_gpio.h>

You should be able to use linux/gpio/consumer.h instead.

> +#include <linux/phy/phy.h>
> +#include <linux/platform_device.h>
> +#include <linux/regmap.h>
> +#include <linux/reset.h>
> +
> +#include "pcie-designware.h"
> +
> +/*
> + * The upper 16 bits of PCIE_CLIENT_CONFIG are a write
> + * mask for the lower 16 bits.  This allows atomic updates
> + * of the register without locking.
> + */
> +#define HIWORD_UPDATE(mask, val) (((mask) << 16) | (val))
> +#define HIWORD_UPDATE_BIT(val)	HIWORD_UPDATE(val, val)
> +
> +#define to_rockchip_pcie(x) dev_get_drvdata((x)->dev)
> +
> +#define PCIE_CLIENT_RC_MODE		HIWORD_UPDATE_BIT(0x40)
> +#define PCIE_CLIENT_ENABLE_LTSSM	HIWORD_UPDATE_BIT(0xc)
> +#define PCIE_PHY_LINKUP			BIT(0)
> +#define PCIE_DATA_LINKUP		BIT(1)
> +#define PCIE_LTSSM_STATE_MASK		GENMASK(15, 10)
> +#define PCIE_LTSSM_STATE_SHIFT		10
> +#define PCIE_L0S_ENTRY			0x11
> +#define PCIE_CLIENT_GENERAL_CONTROL	0x0
> +#define PCIE_CLIENT_GENERAL_DEBUG	0x104
> +#define SUB_PHY_MODE_PCIE_RC		0x0
> +#define SUB_PHY_MODE_PCIE_EP		0x1
> +
> +
> +struct reset_bulk_data	{
> +	const char *id;
> +	struct reset_control *rst;
> +};
> +
> +struct rockchip_pcie {
> +	struct dw_pcie			*pci;
> +	void __iomem			*dbi_base;

This already exists in dw_pcie.

> +	void __iomem			*apb_base;
> +	struct phy			*phy;
> +	struct clk_bulk_data		*clks;
> +	unsigned int			clk_cnt;
> +	struct reset_bulk_data		*rsts;
> +	struct gpio_desc		*rst_gpio;
> +	struct pcie_port		pp;
> +	struct regmap			*usb_pcie_grf;
> +	enum dw_pcie_device_mode	mode;
> +	int				sub_phy_mode;
> +};
> +
> +struct rockchip_pcie_of_data {
> +	enum dw_pcie_device_mode	mode;
> +};
> +
> +static inline int rockchip_pcie_readl_apb(struct rockchip_pcie *rockchip,
> +					  u32 reg)
> +{
> +	return readl(rockchip->apb_base + reg);
> +}
> +
> +static inline void rockchip_pcie_writel_apb(struct rockchip_pcie *rockchip,
> +					    u32 reg, u32 val)
> +{
> +	writel(val, rockchip->apb_base + reg);
> +}
> +
> +static inline void rockchip_pcie_set_mode(struct rockchip_pcie *rockchip)
> +{
> +	rockchip_pcie_writel_apb(rockchip, PCIE_CLIENT_GENERAL_CONTROL,
> +				 PCIE_CLIENT_RC_MODE);
> +}
> +
> +static inline void rockchip_pcie_enable_ltssm(struct rockchip_pcie *rockchip)
> +{
> +	rockchip_pcie_writel_apb(rockchip, PCIE_CLIENT_GENERAL_CONTROL,
> +				 PCIE_CLIENT_ENABLE_LTSSM);
> +}
> +
> +static int rockchip_pcie_link_up(struct dw_pcie *pci)
> +{
> +	struct rockchip_pcie *rockchip = to_rockchip_pcie(pci);
> +	u32 val = rockchip_pcie_readl_apb(rockchip, PCIE_CLIENT_GENERAL_DEBUG);
> +	u32 state = (val & PCIE_LTSSM_STATE_MASK) >> PCIE_LTSSM_STATE_SHIFT;
> +
> +	if ((val & PCIE_PHY_LINKUP) &&
> +	    (val & PCIE_DATA_LINKUP) &&
> +	    state == PCIE_L0S_ENTRY)
> +		return 1;
> +
> +	return 0;
> +}
> +
> +static void rockchip_pcie_establish_link(struct dw_pcie *pci)
> +{
> +	struct rockchip_pcie *rockchip = to_rockchip_pcie(pci);
> +
> +	if (dw_pcie_link_up(pci)) {
> +		dev_err(pci->dev, "link already up\n");
> +		return;
> +	}
> +
> +	/* Reset device */
> +	gpiod_set_value_cansleep(rockchip->rst_gpio, 0);
> +	msleep(100);
> +	gpiod_set_value_cansleep(rockchip->rst_gpio, 1);
> +
> +	rockchip_pcie_enable_ltssm(rockchip);
> +}
> +
> +static int rockchip_pcie_host_init(struct pcie_port *pp)
> +{
> +	struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
> +
> +	dw_pcie_setup_rc(pp);
> +
> +	rockchip_pcie_establish_link(pci);
> +	dw_pcie_wait_for_link(pci);
> +
> +	return 0;
> +}
> +
> +static const struct dw_pcie_host_ops rockchip_pcie_host_ops = {
> +	.host_init = rockchip_pcie_host_init,
> +};
> +
> +static int rockchip_add_pcie_port(struct rockchip_pcie *rockchip)
> +{
> +	int ret;
> +	struct dw_pcie *pci = rockchip->pci;
> +	struct pcie_port *pp = &pci->pp;
> +	struct device *dev = pci->dev;
> +
> +	pp->ops = &rockchip_pcie_host_ops;
> +
> +	if (device_property_read_bool(dev, "msi-map"))
> +		pp->msi_ext = 1;
> +
> +	rockchip_pcie_set_mode(rockchip);
> +
> +	ret = dw_pcie_host_init(pp);
> +	if (ret)
> +		return ret;
> +
> +	return 0;
> +}
> +
> +static void rockchip_pcie_clk_deinit(struct rockchip_pcie *rockchip)
> +{
> +	clk_bulk_disable(rockchip->clk_cnt, rockchip->clks);
> +	clk_bulk_unprepare(rockchip->clk_cnt, rockchip->clks);
> +}
> +
> +static int rockchip_pcie_clk_init(struct rockchip_pcie *rockchip)
> +{
> +	struct device *dev = rockchip->pci->dev;
> +	struct property *prop;
> +	const char *name;
> +	int i = 0, ret, count;
> +
> +	count = of_property_count_strings(dev->of_node, "clock-names");
> +	if (count < 1)
> +		return -ENODEV;
> +
> +	rockchip->clks = devm_kcalloc(dev, count,
> +				     sizeof(struct clk_bulk_data),
> +				     GFP_KERNEL);
> +	if (!rockchip->clks)
> +		return -ENOMEM;
> +
> +	rockchip->clk_cnt = count;
> +
> +	of_property_for_each_string(dev->of_node, "clock-names",
> +				    prop, name) {
> +		rockchip->clks[i].id = name;
> +		if (!rockchip->clks[i].id)
> +			return -ENOMEM;
> +		i++;
> +	}
> +
> +	ret = devm_clk_bulk_get(dev, count, rockchip->clks);
> +	if (ret)
> +		return ret;
> +
> +	ret = clk_bulk_prepare(count, rockchip->clks);
> +	if (ret)
> +		return ret;
> +
> +	ret = clk_bulk_enable(count, rockchip->clks);
> +	if (ret) {
> +		clk_bulk_unprepare(count, rockchip->clks);
> +		return ret;
> +	}
> +
> +	return 0;
> +}
> +
> +static int rockchip_pcie_resource_get(struct platform_device *pdev,
> +				      struct rockchip_pcie *rockchip)
> +{
> +	struct resource *dbi_base;
> +	struct resource *apb_base;
> +
> +	dbi_base = platform_get_resource_byname(pdev, IORESOURCE_MEM,
> +						"pcie-dbi");

Binding had no names. And use 'dbi' which is already defined.

> +	if (!dbi_base)
> +		return -ENODEV;
> +
> +	rockchip->dbi_base = devm_ioremap_resource(&pdev->dev, dbi_base);

Use devm_ioremap_resource_byname()

> +	if (IS_ERR(rockchip->dbi_base))
> +		return PTR_ERR(rockchip->dbi_base);
> +
> +	rockchip->pci->dbi_base = rockchip->dbi_base;
> +
> +	apb_base = platform_get_resource_byname(pdev, IORESOURCE_MEM,
> +						"pcie-apb");
> +	if (!apb_base)
> +		return -ENODEV;
> +
> +	rockchip->apb_base = devm_ioremap_resource(&pdev->dev, apb_base);
> +	if (IS_ERR(rockchip->apb_base))
> +		return PTR_ERR(rockchip->apb_base);
> +
> +	rockchip->rst_gpio = devm_gpiod_get_optional(&pdev->dev, "reset",
> +						    GPIOD_OUT_HIGH);
> +	if (IS_ERR(rockchip->rst_gpio))
> +		return PTR_ERR(rockchip->rst_gpio);
> +
> +	return 0;
> +}
> +
> +static int rockchip_pcie_phy_init(struct rockchip_pcie *rockchip)
> +{
> +	int ret;
> +	struct device *dev = rockchip->pci->dev;
> +
> +	rockchip->phy = devm_phy_get(dev, "pcie-phy");
> +	if (IS_ERR(rockchip->phy)) {
> +		if (PTR_ERR(rockchip->phy) != -EPROBE_DEFER)
> +			dev_info(dev, "missing phy\n");
> +		return PTR_ERR(rockchip->phy);
> +	}
> +
> +	rockchip->sub_phy_mode = rockchip->mode == DW_PCIE_RC_TYPE ?
> +			SUB_PHY_MODE_PCIE_RC : SUB_PHY_MODE_PCIE_EP;
> +
> +	ret = phy_set_mode_ext(rockchip->phy, PHY_MODE_PCIE,
> +			       rockchip->sub_phy_mode);
> +	if (ret)
> +		return ret;
> +
> +	ret = phy_init(rockchip->phy);
> +	if (ret < 0)
> +		return ret;
> +
> +	phy_power_on(rockchip->phy);
> +
> +	return 0;
> +}
> +
> +static int rockchip_pcie_reset_control_release(struct rockchip_pcie *rockchip)
> +{
> +	struct device *dev = rockchip->pci->dev;
> +	struct property *prop;
> +	const char *name;
> +	int ret, count, i = 0;
> +
> +	count = of_property_count_strings(dev->of_node, "reset-names");
> +	if (count < 1)
> +		return -ENODEV;
> +
> +	rockchip->rsts = devm_kcalloc(dev, count,
> +				     sizeof(struct reset_bulk_data),
> +				     GFP_KERNEL);
> +	if (!rockchip->rsts)
> +		return -ENOMEM;
> +
> +	of_property_for_each_string(dev->of_node, "reset-names",
> +				    prop, name) {
> +		rockchip->rsts[i].id = name;
> +		if (!rockchip->rsts[i].id)
> +			return -ENOMEM;
> +		i++;
> +	}
> +
> +	for (i = 0; i < count; i++) {
> +		rockchip->rsts[i].rst = devm_reset_control_get_exclusive(dev,
> +						rockchip->rsts[i].id);
> +		if (IS_ERR(rockchip->rsts[i].rst)) {
> +			dev_err(dev, "failed to get %s\n",
> +				rockchip->clks[i].id);
> +			return PTR_ERR(rockchip->rsts[i].rst);
> +		}
> +	}
> +
> +	for (i = 0; i < count; i++) {
> +		ret = reset_control_deassert(rockchip->rsts[i].rst);
> +		if (ret) {
> +			dev_err(dev, "failed to release %s\n",
> +				rockchip->rsts[i].id);
> +			return ret;
> +		}
> +	}
> +
> +	return 0;
> +}
> +
> +static int rockchip_pcie_reset_grant_ctrl(struct rockchip_pcie *rockchip,
> +					  bool enable)
> +{
> +	int ret;
> +	u32 val = HIWORD_UPDATE(BIT(2), 0); /* Write mask bit */
> +
> +	if (enable)
> +		val |= BIT(2);
> +
> +	ret = regmap_write(rockchip->usb_pcie_grf, 0x0, val);
> +	return ret;
> +}
> +
> +static const struct rockchip_pcie_of_data rockchip_rc_of_data = {
> +	.mode = DW_PCIE_RC_TYPE,
> +};
> +
> +static const struct of_device_id rockchip_pcie_of_match[] = {
> +	{
> +		.compatible = "rockchip,rk1808-pcie",
> +		.data = &rockchip_rc_of_data,
> +	},
> +	{ /* sentinel */ },
> +};
> +
> +static const struct dw_pcie_ops dw_pcie_ops = {
> +	.link_up = rockchip_pcie_link_up,
> +};
> +
> +static int rockchip_pcie_probe(struct platform_device *pdev)
> +{
> +	struct device *dev = &pdev->dev;
> +	struct rockchip_pcie *rockchip;
> +	struct dw_pcie *pci;
> +	int ret;
> +	const struct of_device_id *match;
> +	const struct rockchip_pcie_of_data *data;
> +	enum dw_pcie_device_mode mode;
> +
> +	match = of_match_device(rockchip_pcie_of_match, dev);

Use of_device_get_match_data()

> +	if (!match)
> +		return -EINVAL;
> +
> +	data = (struct rockchip_pcie_of_data *)match->data;
> +	mode = (enum dw_pcie_device_mode)data->mode;
> +
> +	rockchip = devm_kzalloc(dev, sizeof(*rockchip), GFP_KERNEL);
> +	if (!rockchip)
> +		return -ENOMEM;
> +
> +	pci = devm_kzalloc(dev, sizeof(*pci), GFP_KERNEL);
> +	if (!pci)
> +		return -ENOMEM;
> +
> +	pci->dev = dev;
> +	pci->ops = &dw_pcie_ops;
> +
> +	rockchip->mode = mode;
> +	rockchip->pci = pci;
> +
> +	ret = rockchip_pcie_resource_get(pdev, rockchip);
> +	if (ret)
> +		return ret;
> +
> +	ret = rockchip_pcie_phy_init(rockchip);
> +	if (ret)
> +		return ret;
> +
> +	ret = rockchip_pcie_reset_control_release(rockchip);
> +	if (ret)
> +		return ret;
> +
> +	rockchip->usb_pcie_grf =
> +		syscon_regmap_lookup_by_phandle(dev->of_node,
> +						"rockchip,usbpciegrf");
> +	if (IS_ERR(rockchip->usb_pcie_grf))
> +		return PTR_ERR(rockchip->usb_pcie_grf);
> +
> +	ret = rockchip_pcie_clk_init(rockchip);
> +	if (ret)
> +		return ret;
> +
> +	platform_set_drvdata(pdev, rockchip);
> +
> +	ret = rockchip_pcie_reset_grant_ctrl(rockchip, true);
> +	if (ret)
> +		goto deinit_clk;
> +
> +	if (rockchip->mode == DW_PCIE_RC_TYPE)
> +		ret = rockchip_add_pcie_port(rockchip);
> +
> +	if (ret)
> +		goto deinit_clk;
> +
> +	ret = rockchip_pcie_reset_grant_ctrl(rockchip, false);
> +	if (ret)
> +		goto deinit_clk;
> +
> +	return 0;
> +
> +deinit_clk:
> +	rockchip_pcie_clk_deinit(rockchip);
> +
> +	return ret;
> +}
> +
> +MODULE_DEVICE_TABLE(of, rockchip_pcie_of_match);
> +
> +static struct platform_driver rockchip_pcie_driver = {
> +	.driver = {
> +		.name	= "rk-pcie",
> +		.of_match_table = rockchip_pcie_of_match,
> +		.suppress_bind_attrs = true,
> +	},
> +	.probe = rockchip_pcie_probe,
> +};
> +
> +builtin_platform_driver(rockchip_pcie_driver);

Why can't it be a module?

Rob

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

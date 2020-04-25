Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E4221B8909
	for <lists+linux-rockchip@lfdr.de>; Sat, 25 Apr 2020 21:37:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D7HdAfXGhAIVXDkKsPOhuG7B1yM0Zmkx0YLXOUNDlqE=; b=oZ8oNLKXON1jnn
	+xOIDNO5Uog9Xj5n+kbXFlIiNc89haUaC2tKiCuchjjrNGygfc/Cwj469JrONW48c/yxhibuwoWEi
	4fTP4gUpWXafS5wmfZeI7UnFDOWOkAW1kIUJkHv/JHN5WlgzliivEn+meAlGW4cKqhTirVsM3Kkaq
	EIbC52grlwAfQX0cyM5eGEc7tq/h9v1Mf1DkbNY+TodNYCtKddKRIhh+GA6qVkzKASo4tBY2ZYHFz
	J8QYfuXlO4Oltpg/73Vk9/gjl2P944qzW8vi/FU8XvEBhGcUu4k4+pyspzGqRg5oO2N8BFj8bE2S6
	ko2N9b2Mqt6dE5aOMhZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSQbz-0007p8-3S; Sat, 25 Apr 2020 19:37:15 +0000
Received: from mail-ej1-x644.google.com ([2a00:1450:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSQbu-0007ne-Nw
 for linux-rockchip@lists.infradead.org; Sat, 25 Apr 2020 19:37:13 +0000
Received: by mail-ej1-x644.google.com with SMTP id s3so10437848eji.6
 for <linux-rockchip@lists.infradead.org>; Sat, 25 Apr 2020 12:37:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3lZJuWYgm0GsTTTL/JaKbBGLylqGlUqH7dKOZChUWn4=;
 b=rg+4NgtoP4ltrKSICKqiM7aYpAIX4DeMq8AotA+iu+5EpuuFYcn2ca07unoGagastv
 Wk3QO+OFCEBDMVOHd2UjM3TmcF8EvEGaeSEpYrY9E7WEmSNyomQrUguwmiQhsiqz0yY1
 rDUt4rHy5dbN4Au2O8RIFPKvRptOuIigywckY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3lZJuWYgm0GsTTTL/JaKbBGLylqGlUqH7dKOZChUWn4=;
 b=fiIjFzNdnYj1rlVGzsCBBFStT2dsoqBjapI0zQbO/eJzTno5CYw6cK31iUU5kDig0J
 4xcQ/GXRIGAlBd4Ae9sz38S3tphJ7H0ff6m4pIeGwZe1OylvWBU6YEuaO8/ASHjHL3aP
 yFGgHmSL9EsEfTAYIA7tEh6UXHfhAvWTEf4FY8d5fVLY4A24wlJaUhApZ23PdtRpWXLZ
 /3sqky577rtx7xkvYTkYv0/01TyETQ6foGQMd1OKf7o1pIXoGqd5Iwjf6ZwYDIWTi6rE
 CLpd2qG9TK1OA6e0ScN/9BszfKeKhWFI174mDXN5AvmOP54zP40f/iIAHIsZG6M7H5Am
 MlZQ==
X-Gm-Message-State: AGi0PubjUEpKeTubXuhP5xXRdHMOvaAzl3Ww8AN+xO8OpoRncTWcS2KW
 xQJk+dTL6BmMiGa4J00Q4AzpTgBydnrAZmM0CLkQnA==
X-Google-Smtp-Source: APiQypLUSl+nW2cSgVJu928bbxEoqrpvnvR1PZTMjFG+T0FjsESbxj9oamAdEzkCo1gmweSIUd03u6Blzn9sX+vtP8E=
X-Received: by 2002:a17:906:2b96:: with SMTP id
 m22mr12698133ejg.330.1587843428676; 
 Sat, 25 Apr 2020 12:37:08 -0700 (PDT)
MIME-Version: 1.0
References: <20200425110354.12381-1-jagan@amarulasolutions.com>
 <20200425110354.12381-6-jagan@amarulasolutions.com>
 <016196137a6060e1@bloch.sibelius.xs4all.nl>
In-Reply-To: <016196137a6060e1@bloch.sibelius.xs4all.nl>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Sun, 26 Apr 2020 01:06:56 +0530
Message-ID: <CAMty3ZC+DiW2gGjN3rWcrwHPXZfxuGhjJN-1caUXW-Ry7VNR+A@mail.gmail.com>
Subject: Re: [PATCH 5/8] pci: Add Rockchip PCIe controller driver
To: Mark Kettenis <mark.kettenis@xs4all.nl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200425_123711_207772_0A61458C 
X-CRM114-Status: GOOD (  24.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:644 listed in]
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
Cc: Patrick Wildt <patrick@blueri.se>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Simon Glass <sjg@chromium.org>, Kever Yang <kever.yang@rock-chips.com>,
 U-Boot-Denx <u-boot@lists.denx.de>, Suniel Mahesh <sunil@amarulasolutions.com>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Sun, Apr 26, 2020 at 12:23 AM Mark Kettenis <mark.kettenis@xs4all.nl> wrote:
>
> > From: Jagan Teki <jagan@amarulasolutions.com>
> > Date: Sat, 25 Apr 2020 16:33:51 +0530
> >
> > Add Rockchip PCIe controller driver for rk3399 platform.
> >
> > Driver support Gen1 by operating as a Root complex.
> >
> > Thanks to Patrick for initial work.
>
> Tried to get this to work on my firefly-rk3399 which made me notice
> some shortcomings:
>
> 1. The vpcie1v8 and vpcie0v9 supplies are optional, just like the
>    vpcie3v3 supply.
>
> 2. The vpcie3v3 regulator check doesn't quite work.

You mean the regulator check?

>
> See below for suggestions on how to fix this.
>
> Sadly the NVME SSD doesn't seem to be happy and shows up as only 1023 MB.
> But that is probably not caused by this diff.
>
> > Signed-off-by: Patrick Wildt <patrick@blueri.se>
> > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> > ---
> >  drivers/pci/Kconfig         |   8 +
> >  drivers/pci/Makefile        |   1 +
> >  drivers/pci/pcie_rockchip.c | 460 ++++++++++++++++++++++++++++++++++++
> >  drivers/pci/pcie_rockchip.h |  79 +++++++
> >  4 files changed, 548 insertions(+)
> >  create mode 100644 drivers/pci/pcie_rockchip.c
> >  create mode 100644 drivers/pci/pcie_rockchip.h
> >
> > diff --git a/drivers/pci/Kconfig b/drivers/pci/Kconfig
> > index 437cd9a055..3dba84103b 100644
> > --- a/drivers/pci/Kconfig
> > +++ b/drivers/pci/Kconfig
> > @@ -197,4 +197,12 @@ config PCIE_MEDIATEK
> >         Say Y here if you want to enable Gen2 PCIe controller,
> >         which could be found on MT7623 SoC family.
> >
> > +config PCIE_ROCKCHIP
> > +     bool "Enable Rockchip PCIe driver"
> > +     select DM_PCI
> > +     default y if ROCKCHIP_RK3399
> > +     help
> > +       Say Y here if you want to enable PCIe controller support on
> > +       Rockchip SoCs.
> > +
> >  endif
> > diff --git a/drivers/pci/Makefile b/drivers/pci/Makefile
> > index c051ecc9f3..493e9354dd 100644
> > --- a/drivers/pci/Makefile
> > +++ b/drivers/pci/Makefile
> > @@ -43,3 +43,4 @@ obj-$(CONFIG_PCI_PHYTIUM) += pcie_phytium.o
> >  obj-$(CONFIG_PCIE_INTEL_FPGA) += pcie_intel_fpga.o
> >  obj-$(CONFIG_PCI_KEYSTONE) += pcie_dw_ti.o
> >  obj-$(CONFIG_PCIE_MEDIATEK) += pcie_mediatek.o
> > +obj-$(CONFIG_PCIE_ROCKCHIP) += pcie_rockchip.o
> > diff --git a/drivers/pci/pcie_rockchip.c b/drivers/pci/pcie_rockchip.c
> > new file mode 100644
> > index 0000000000..adc64aedf5
> > --- /dev/null
> > +++ b/drivers/pci/pcie_rockchip.c
> > @@ -0,0 +1,460 @@
> > +// SPDX-License-Identifier: GPL-2.0+
> > +/*
> > + * Rockchip AXI PCIe host controller driver
> > + *
> > + * Copyright (c) 2016 Rockchip, Inc.
> > + * Copyright (c) 2020 Amarula Solutions(India)
> > + * Copyright (c) 2020 Jagan Teki <jagan@amarulasolutions.com>
> > + * Copyright (c) 2019 Patrick Wildt <patrick@blueri.se>
> > + * Copyright (c) 2018 Mark Kettenis <kettenis@openbsd.org>
> > + *
> > + * Bits taken from Linux Rockchip PCIe host controller.
> > + */
> > +
> > +#include <common.h>
> > +#include <clk.h>
> > +#include <dm.h>
> > +#include <dm/device_compat.h>
> > +#include <pci.h>
> > +#include <power-domain.h>
> > +#include <power/regulator.h>
> > +#include <reset.h>
> > +#include <syscon.h>
> > +#include <asm/io.h>
> > +#include <asm-generic/gpio.h>
> > +#include <asm/arch-rockchip/clock.h>
> > +#include <linux/iopoll.h>
> > +
> > +#include "pcie_rockchip.h"
> > +
> > +DECLARE_GLOBAL_DATA_PTR;
> > +
> > +static int rockchip_pcie_rd_conf(const struct udevice *bus, pci_dev_t bdf,
> > +                              uint offset, ulong *valuep,
> > +                              enum pci_size_t size)
> > +{
> > +     struct rockchip_pcie *priv = dev_get_priv(bus);
> > +     ulong value;
> > +     u32 off;
> > +
> > +     off = (PCI_BUS(bdf) << 20) | (PCI_DEV(bdf) << 15) |
> > +           (PCI_FUNC(bdf) << 12) | (offset & ~0x3);
> > +
> > +     if ((PCI_BUS(bdf) == priv->first_busno) && (PCI_DEV(bdf) == 0)) {
> > +             value = readl(priv->apb_base + PCIE_RC_NORMAL_BASE + off);
> > +             *valuep = pci_conv_32_to_size(value, offset, size);
> > +             return 0;
> > +     }
> > +
> > +     if ((PCI_BUS(bdf) == priv->first_busno + 1) && (PCI_DEV(bdf) == 0)) {
> > +             value = readl(priv->axi_base + off);
> > +             *valuep = pci_conv_32_to_size(value, offset, size);
> > +             return 0;
> > +     }
> > +
> > +     *valuep = pci_get_ff(size);
> > +
> > +     return 0;
> > +}
> > +
> > +static int rockchip_pcie_wr_conf(struct udevice *bus, pci_dev_t bdf,
> > +                              uint offset, ulong value,
> > +                              enum pci_size_t size)
> > +{
> > +     struct rockchip_pcie *priv = dev_get_priv(bus);
> > +     ulong old;
> > +     u32 off;
> > +
> > +     off = (PCI_BUS(bdf) << 20) | (PCI_DEV(bdf) << 15) |
> > +           (PCI_FUNC(bdf) << 12) | (offset & ~0x3);
> > +
> > +     if ((PCI_BUS(bdf) == priv->first_busno) && (PCI_DEV(bdf) == 0)) {
> > +             old = readl(priv->apb_base + PCIE_RC_NORMAL_BASE + off);
> > +             value = pci_conv_size_to_32(old, value, offset, size);
> > +             writel(value, priv->apb_base + PCIE_RC_NORMAL_BASE + off);
> > +             return 0;
> > +     }
> > +
> > +     if ((PCI_BUS(bdf) == priv->first_busno + 1) && (PCI_DEV(bdf) == 0)) {
> > +             old = readl(priv->axi_base + off);
> > +             value = pci_conv_size_to_32(old, value, offset, size);
> > +             writel(value, priv->axi_base + off);
> > +             return 0;
> > +     }
> > +
> > +     return 0;
> > +}
> > +
> > +static int rockchip_pcie_atr_init(struct rockchip_pcie *priv)
> > +{
> > +     struct udevice *ctlr = pci_get_controller(priv->dev);
> > +     struct pci_controller *hose = dev_get_uclass_priv(ctlr);
> > +     u64 addr, size, offset;
> > +     u32 type;
> > +     int i, region;
> > +
> > +     /* Use region 0 to map PCI configuration space. */
> > +     writel(25 - 1, priv->apb_base + PCIE_ATR_OB_ADDR0(0));
> > +     writel(0, priv->apb_base + PCIE_ATR_OB_ADDR1(0));
> > +     writel(PCIE_ATR_HDR_CFG_TYPE0 | PCIE_ATR_HDR_RID,
> > +            priv->apb_base + PCIE_ATR_OB_DESC0(0));
> > +     writel(0, priv->apb_base + PCIE_ATR_OB_DESC1(0));
> > +
> > +     for (i = 0; i < hose->region_count; i++) {
> > +             if (hose->regions[i].flags == PCI_REGION_SYS_MEMORY)
> > +                     continue;
> > +
> > +             if (hose->regions[i].flags == PCI_REGION_IO)
> > +                     type = PCIE_ATR_HDR_IO;
> > +             else
> > +                     type = PCIE_ATR_HDR_MEM;
> > +
> > +             /* Only support identity mappings. */
> > +             if (hose->regions[i].bus_start !=
> > +                 hose->regions[i].phys_start)
> > +                     return -EINVAL;
> > +
> > +             /* Only support mappings aligned on a region boundary. */
> > +             addr = hose->regions[i].bus_start;
> > +             if (addr & (PCIE_ATR_OB_REGION_SIZE - 1))
> > +                     return -EINVAL;
> > +
> > +             /* Mappings should lie between AXI and APB regions. */
> > +             size = hose->regions[i].size;
> > +             if (addr < (u64)priv->axi_base + PCIE_ATR_OB_REGION0_SIZE)
> > +                     return -EINVAL;
> > +             if (addr + size > (u64)priv->apb_base)
> > +                     return -EINVAL;
> > +
> > +             offset = addr - (u64)priv->axi_base - PCIE_ATR_OB_REGION0_SIZE;
> > +             region = 1 + (offset / PCIE_ATR_OB_REGION_SIZE);
> > +             while (size > 0) {
> > +                     writel(32 - 1,
> > +                            priv->apb_base + PCIE_ATR_OB_ADDR0(region));
> > +                     writel(0, priv->apb_base + PCIE_ATR_OB_ADDR1(region));
> > +                     writel(type | PCIE_ATR_HDR_RID,
> > +                            priv->apb_base + PCIE_ATR_OB_DESC0(region));
> > +                     writel(0, priv->apb_base + PCIE_ATR_OB_DESC1(region));
> > +
> > +                     addr += PCIE_ATR_OB_REGION_SIZE;
> > +                     size -= PCIE_ATR_OB_REGION_SIZE;
> > +                     region++;
> > +             }
> > +     }
> > +
> > +     /* Passthrough inbound translations unmodified. */
> > +     writel(32 - 1, priv->apb_base + PCIE_ATR_IB_ADDR0(2));
> > +     writel(0, priv->apb_base + PCIE_ATR_IB_ADDR1(2));
> > +
> > +     return 0;
> > +}
> > +
> > +static int rockchip_pcie_init_port(struct udevice *dev)
> > +{
> > +     struct rockchip_pcie *priv = dev_get_priv(dev);
> > +     u32 cr, val, status;
> > +     int ret;
> > +
> > +     if (dm_gpio_is_valid(&priv->ep_gpio))
> > +             dm_gpio_set_value(&priv->ep_gpio, 0);
> > +
> > +     ret = reset_assert(&priv->aclk_rst);
> > +     if (ret) {
> > +             dev_err(dev, "failed to assert aclk reset (ret=%d)\n", ret);
> > +             return ret;
> > +     }
> > +
> > +     ret = reset_assert(&priv->pclk_rst);
> > +     if (ret) {
> > +             dev_err(dev, "failed to assert pclk reset (ret=%d)\n", ret);
> > +             return ret;
> > +     }
> > +
> > +     ret = reset_assert(&priv->pm_rst);
> > +     if (ret) {
> > +             dev_err(dev, "failed to assert pm reset (ret=%d)\n", ret);
> > +             return ret;
> > +     }
> > +
> > +     ret = reset_assert(&priv->core_rst);
> > +     if (ret) {
> > +             dev_err(dev, "failed to assert core reset (ret=%d)\n", ret);
> > +             return ret;
> > +     }
> > +
> > +     ret = reset_assert(&priv->mgmt_rst);
> > +     if (ret) {
> > +             dev_err(dev, "failed to assert mgmt reset (ret=%d)\n", ret);
> > +             return ret;
> > +     }
> > +
> > +     ret = reset_assert(&priv->mgmt_sticky_rst);
> > +     if (ret) {
> > +             dev_err(dev, "failed to assert mgmt-sticky reset (ret=%d)\n",
> > +                     ret);
> > +             return ret;
> > +     }
> > +
> > +     ret = reset_assert(&priv->pipe_rst);
> > +     if (ret) {
> > +             dev_err(dev, "failed to assert pipe reset (ret=%d)\n", ret);
> > +             return ret;
> > +     }
> > +
> > +     udelay(10);
> > +
> > +     ret = reset_deassert(&priv->pm_rst);
> > +     if (ret) {
> > +             dev_err(dev, "failed to deassert pm reset (ret=%d)\n", ret);
> > +             return ret;
> > +     }
> > +
> > +     ret = reset_deassert(&priv->aclk_rst);
> > +     if (ret) {
> > +             dev_err(dev, "failed to deassert aclk reset (ret=%d)\n", ret);
> > +             return ret;
> > +     }
> > +
> > +     ret = reset_deassert(&priv->pclk_rst);
> > +     if (ret) {
> > +             dev_err(dev, "failed to deassert pclk reset (ret=%d)\n", ret);
> > +             return ret;
> > +     }
> > +
> > +     /* Select GEN1 for now */
> > +     cr = PCIE_CLIENT_GEN_SEL_1;
> > +     /* Set Root complex mode */
> > +     cr |= PCIE_CLIENT_CONF_ENABLE | PCIE_CLIENT_MODE_RC;
> > +     writel(cr, priv->apb_base + PCIE_CLIENT_CONFIG);
> > +
> > +     ret = reset_deassert(&priv->mgmt_sticky_rst);
> > +     if (ret) {
> > +             dev_err(dev, "failed to deassert mgmt-sticky reset (ret=%d)\n",
> > +                     ret);
> > +             return ret;
> > +     }
> > +
> > +     ret = reset_deassert(&priv->core_rst);
> > +     if (ret) {
> > +             dev_err(dev, "failed to deassert core reset (ret=%d)\n", ret);
> > +             return ret;
> > +     }
> > +
> > +     ret = reset_deassert(&priv->mgmt_rst);
> > +     if (ret) {
> > +             dev_err(dev, "failed to deassert mgmt reset (ret=%d)\n", ret);
> > +             return ret;
> > +     }
> > +
> > +     ret = reset_deassert(&priv->pipe_rst);
> > +     if (ret) {
> > +             dev_err(dev, "failed to deassert pipe reset (ret=%d)\n", ret);
> > +             return ret;
> > +     }
> > +
> > +     /* Enable Gen1 training */
> > +     writel(PCIE_CLIENT_LINK_TRAIN_ENABLE,
> > +            priv->apb_base + PCIE_CLIENT_CONFIG);
> > +
> > +     if (dm_gpio_is_valid(&priv->ep_gpio))
> > +             dm_gpio_set_value(&priv->ep_gpio, 1);
> > +
> > +     ret = readl_poll_sleep_timeout
> > +                     (priv->apb_base + PCIE_CLIENT_BASIC_STATUS1,
> > +                     status, PCIE_LINK_UP(status), 20, 500 * 1000);
> > +     if (ret) {
> > +             dev_err(dev, "PCIe link training gen1 timeout!\n");
> > +             return ret;
> > +     }
> > +
> > +     /* Initialize Root Complex registers. */
> > +     writel(PCIE_LM_VENDOR_ROCKCHIP, priv->apb_base + PCIE_LM_VENDOR_ID);
> > +     writel(PCI_CLASS_BRIDGE_PCI << 16,
> > +            priv->apb_base + PCIE_RC_BASE + PCI_CLASS_REVISION);
> > +     writel(PCIE_LM_RCBARPIE | PCIE_LM_RCBARPIS,
> > +            priv->apb_base + PCIE_LM_RCBAR);
> > +
> > +     if (dev_read_bool(dev, "aspm-no-l0s")) {
> > +             val = readl(priv->apb_base + PCIE_RC_PCIE_LCAP);
> > +             val &= ~PCIE_RC_PCIE_LCAP_APMS_L0S;
> > +             writel(val, priv->apb_base + PCIE_RC_PCIE_LCAP);
> > +     }
> > +
> > +     /* Configure Address Translation. */
> > +     ret = rockchip_pcie_atr_init(priv);
> > +     if (ret) {
> > +             dev_err(dev, "PCIE-%d: ATR init failed\n", dev->seq);
> > +             return ret;
> > +     }
> > +
> > +     return 0;
> > +}
> > +
> > +static int rockchip_pcie_set_vpcie(struct udevice *dev)
> > +{
> > +     struct rockchip_pcie *priv = dev_get_priv(dev);
> > +     int ret;
> > +
> > +     if (!IS_ERR(priv->vpcie3v3)) {
>
> I think this should be:
>
>         if (priv->vpcie3v3) {

I didn't find any issue with the board I have optional of this, but
will check it.

>
> > +             ret = regulator_set_enable(priv->vpcie3v3, true);
> > +             if (ret) {
> > +                     dev_err(dev, "failed to enable vpcie3v3 (ret=%d)\n",
> > +                             ret);
> > +                     return ret;
> > +             }
> > +     }
> > +
>
> And to make this regulator optional, it needs an
>
>         if (priv->vpcie1v8) {

I can see from v5.7-rc1, 12v, 3v3 are optional and rest not If I'm not wrong.

Jagan.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

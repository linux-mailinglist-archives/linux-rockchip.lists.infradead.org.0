Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F83B4DE0D
	for <lists+linux-rockchip@lfdr.de>; Fri, 21 Jun 2019 02:28:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jIqULVDbSw+/LABo9IWrRLxS0hBvBmw0ZbMZmTfXozM=; b=nfCJcU0zWuLmWN
	xwAfeJ/GIBY8aiUIZOaWLeYJyPTzbYR3/gCx3X6JEyWG1vt2Y8TszUCTzH1QJTL8qWRRrtb1qULDK
	2LtnkErwlcMYy7sKPXuv0kIFYkwCkyecY0+vqu9mLQW9kazWZZ1XwdWtiaiIzC8PhTaRNPJb4FB+v
	3MS6u/bPLX9xeXynpDEIodbGIrscNobHB4JHgl8I+4ZjFUzUj9U8kLiRrSmVsgiPcAQKFKO/sJtue
	kFl71kw1OU/FxgMkeJ8IoLBcQlBLpt/lcpsoqAtyr9ZSGg5rswNCBkdkg/tALa6tql5n0khVyZu9I
	cskemofwfermJnyabCNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1he7Q2-0005TM-VE; Fri, 21 Jun 2019 00:28:42 +0000
Received: from mail-oi1-x243.google.com ([2607:f8b0:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1he7Py-0005T0-VK
 for linux-rockchip@lists.infradead.org; Fri, 21 Jun 2019 00:28:41 +0000
Received: by mail-oi1-x243.google.com with SMTP id g7so3475965oia.8
 for <linux-rockchip@lists.infradead.org>; Thu, 20 Jun 2019 17:28:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=l3tZoS/pZGHcKmp/Xqz7PtWMj+DtiNL0iaPkFKOitKA=;
 b=jNw4gV2VJxyia8Acpz+EcJDEffwa3WtVV872wuRvy7bpurSO0L5qlD2A+AiRRjCS/b
 KKJWpqDMiD5UlWpvdVPb6kHBTV8efIG2NMlDYGsZ9Or2CGh3Q+FqzR7XKnaTppw21kri
 ZwE1gTGPLZc7za79zK9YLq/soBArxQQsbm7QcaNuf5r/3Z4pfY90ONKzWB4awKtZcN2h
 5CUlc7xKpSdqkmkfesuYDg23Fb5YJzaB2NZdYBr7/FewxDeW3bstmjrf43e5TebGkC6M
 5mp7iZCK2Fo7aH7/GpNirm1Nk8WQsJYiUPF6OnShtvZf0FYVjjVe1+0hbgdJVId7Lp7i
 MpnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=l3tZoS/pZGHcKmp/Xqz7PtWMj+DtiNL0iaPkFKOitKA=;
 b=l3bk4Mwne4nqp0yc+dXUKXIGhta6/paoX1bUDLL3quyRpHHMoAeuvwZ4vnCM/TS5wc
 YCsk99Qz5FIObZkVBC5aOVwNCXOTZCHyWEqEvtU+vSPk7Yzf7gK8Guv09NV6xiWYTCpj
 yH1n6GkeXOk02cM8KuVaZ8eEP9Bv3XrD/6Cn58swIa0Tt2dqUlF8qR59kg+I8rMcsf+1
 QPqgnOhKsI+NnvCuS2Jd4yzLwXY7F2jhaOZe6bLV1DiIQvNoPa+i+4OH36WmtBGeclBx
 vnhm7hZLi+iIyFT009NQaY7xuyM6ks6A3ottqa+dzprq1/3LKGKRduN8W9cO40QvzcmN
 sw9w==
X-Gm-Message-State: APjAAAW+617nx9b1imbTbsoUyI4F31TnADlvn5OFXMN/OhSIioY00bZn
 x+7Hig5ReYWbwWeWs20led75rQmEWz8daGHSvbU=
X-Google-Smtp-Source: APXvYqwTlRKTFn2N9DsJayXUePA+wzHZqgCmi3SBW+Zit7697hXzYYZERO05Q4gDxhq4HZ/IUJQmTeq/VBOOEQEQ9tQ=
X-Received: by 2002:a05:6808:8c2:: with SMTP id
 k2mr1030158oij.98.1561076916038; 
 Thu, 20 Jun 2019 17:28:36 -0700 (PDT)
MIME-Version: 1.0
References: <20190617073252.27810-1-jagan@amarulasolutions.com>
In-Reply-To: <20190617073252.27810-1-jagan@amarulasolutions.com>
From: Vasily Khoruzhick <anarsoul@gmail.com>
Date: Thu, 20 Jun 2019 17:28:19 -0700
Message-ID: <CA+E=qVfuy-UYUWujYC8fG+Os4tefPdYzFECkZZdoctvmiSMzcA@mail.gmail.com>
Subject: Re: [U-Boot] [PATCH v2 00/99] ram: rk3399: Add LPDDR4 support
To: Jagan Teki <jagan@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_172839_040943_F95511F8 
X-CRM114-Status: GOOD (  18.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (anarsoul[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: YouMin Chen <cym@rock-chips.com>,
 U-Boot Mailing List <u-boot@lists.denx.de>, Simon Glass <sjg@chromium.org>,
 gajjar04akash@gmail.com, Kever Yang <kever.yang@rock-chips.com>,
 linux-rockchip@lists.infradead.org,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 linux-amarula@amarulasolutions.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Mon, Jun 17, 2019 at 12:37 AM Jagan Teki <jagan@amarulasolutions.com> wrote:
>
> This is the v2 set for supporting LPDDR4 with associated
> features, wrt to previous series[1].
>
> Thanks to
> - YouMin Chen
> - Akash Gajjar
> - Kever Yang
> for supporting all the help on this work.
>
> On summary this series support
> - Code warning and fixes
> - rank detection, this would required to probe single channel
>   sdram configured in NanoPI-NEO4
> - LPDDR4 support, tested in Rockpro64 and Rock-PI-4
>
> Changes for v2:
> - handle LPDDR4 code as part of CONFIG_RAM_RK3399_LPDDR4
> - support data_training and set_rate via sdram_rk3399_ops
> - add proper sys_reg_enc macros
> - add new patch to rename variable sdram_params with params
> - fix few commit messages
>
> patch 0001 - 0034: fix code warnings, prints, new macros
>
> patch 0035 - 0052: rank detection, sdram debug code
>
> patch 0053: use DDR3-1800 on NanoPI-NEO4
>
> patch 0054 - 0094: lpddr4 support
>
> patch 0095: enable lpddr4 in Rockpro64
>
> patch 0096: enable lpddr4 in Rock-PI-4
>
> patch 0097: LPDDR4-100 timings
>
> patch 0098: Use LPDDR4-100 on Rockpro64
>
> patch 0099: Use LPDDR4-100 on Rock-PI 4
>
> Size (increased to ~3KiB ):
> - Puma RK3399 (u-boot-spl-dtb.bin):
>   before: 115644 after: 118744
> - NanoPI M4 (u-boot-tpl-dtb.bin)
>   before: 41873 after: 44909
>
> Travis-CI:
> https://travis-ci.org/openedev/u-boot-amarula/builds/546597944
>
> Repo:
> https://github.com/openedev/u-boot-amarula/tree/rk3399-lpddr4
>
> [1] https://patchwork.ozlabs.org/cover/1113893/
>
> Any inputs?

Was it absolutely necessary to split these changes into 99 commits? I
believe at least some of them can be squashed. Reviewing 99 patches
isn't feasible.

> Jagan.
>
> Jagan Teki (99):
>   ram: rk3399: Fix code warnings
>   ram: rk3399: Add space between string with format specifier
>   ram: rk3399: Add proper spaces in code
>   ram: rk3399: s/sdram_params/params
>   ram: rk3399: Handle data training return types
>   ram: rk3399: Order include files
>   ram: rk3399: Move macro after include files
>   ram: rk3399: Clear PI_175 interrupts in data training
>   ram: rk3399: Use rank mask in ca data training
>   ram: rk3399: Use rank mask in wdql data training
>   ram: rk3399: Add ddrtype enc macro
>   ram: rk3399: Add channel number encoder macro
>   ram: rk3399: Add row_3_4 enc macro
>   ram: rk3399: Add chipinfo macro
>   ram: rk3399: Add rank enc macro
>   ram: rk3399: Add column enc macro
>   ram: rk3399: Add bk enc macro
>   ram: rk3399: Add dbw enc macro
>   ram: rk3399: Add cs0_rw macro
>   ram: rk3399: Add cs1_rw macro
>   ram: rk3399: Add bw enc macro
>   ram: rk3399: Rename sys_reg with sys_reg2
>   ram: rk3399: Update cs0_row to use sys_reg3
>   ram: rk3399: Update cs1_row to use sys_reg3
>   ram: rk3399: Add cs1_col enc macro
>   ram: rk3399: Add ddr version enc macro
>   ram: rk3399: Add ddrtimingC0
>   ram: rk3399: Add DdrMode
>   ram: rk3399: Handle pctl_cfg return type
>   ram: rk3399: s/tsel_wr_select_n/tsel_wr_select_dq_n
>   ram: rk3399: s/tsel_wr_select_p/tsel_wr_select_dq_p
>   ram: rk3399: s/ca_tsel_wr_select_n/tsel_wr_select_ca_n
>   ram: rk3399: s/ca_tsel_wr_select_p/tsel_wr_select_ca_p
>   ram: rk3399: Order tsel variables
>   ram: rk3399: Add phy pctrl reset support
>   ram: rk3399: Move pwrup_srefresh_exit to dram_info
>   ram: rk3399: Add pctl start support
>   ram: rockchip: rk3399: Add cap_info structure
>   ram: rk3399: s/rk3399_base_params/sdram_base_params
>   ram: rk3399: Move common sdram structures in common header
>   arm: include: rockchip: Move dramtypes to common header
>   arm: include: rockchip: Add DDR4 enum
>   ram: rockchip: Add initial Kconfig
>   debug_uart: Add printdec
>   ram: rockchip: Add debug sdram driver
>   ram: rockchip: debug: Add sdram_print_ddr_info
>   ram: rockchip: debug: Get the cs capacity
>   ram: rk3399: debug: Add sdram_print_stride
>   ram: rk3399: Compute stride for 2 channels
>   ram: rk3399: Compute stride for 1 channel a
>   ram: rk3399: Add rank detection support
>   ram: rk3399: Enable sdram debug functions
>   rockchip: dts: rk3399: nanopi-neo4: Use DDR3-1866 dtsi
>   clk: rockchip: rk3399: Fix check patch warnings and checks
>   clk: rockchip: rk3399: Set 50MHz ddr clock
>   clk: rockchip: rk3399: Set 400MHz ddr clock
>   ram: rk3399: Add spaces in pctl_cfg
>   ram: rk3399: Configure phy IO in ds odt
>   ram: rockchip: Kconfig: Add RK3399 LPDDR4 entry
>   ram: rk3399: Add lpddr4 rank mask for ca training
>   ram: rk3399: Add lpddr4 rank mask for wdql training
>   ram: rk3399: Move mode_sel assignment
>   ram: rk3399: Don't wait for PLL lock in lpddr4
>   ram: rk3399: Avoid two channel ZQ Cal Start at the same time
>   ram: rk3399: Configure PHY_898, PHY_919 for lpddr4
>   ram: rk3399: Configure BOOSTP_EN, BOOSTN_EN for lpddr4
>   ram: rk3399: Configure SLEWP_EN, SLEWN_EN for lpddr4
>   ram: rk3399: Configure PHY RX_CM_INPUT for lpddr4
>   ram: rk3399: Map chipselect for lpddr4
>   ram: rk3399: Configure tsel write ca for lpddr4
>   ram: rk3399: Don't disable dfi dram clk for lpddr4, rank 1
>   ram: rk3399: Add IO settings
>   ram: sdram: Configure lpddr4 tsel rd, wr based on IO settings
>   ram: rk3399: Add tsel control clock drive
>   ram: rk3399: Configure soc odt support
>   ram: rk3399: Get lpddr4 tsel_rd_en from io settings
>   ram: rk3399: Update lpddr4 vref based on io settings
>   ram: rk3399: Update lpddr4 mode_sel based on io settings
>   ram: rk3399: Update lpddr4 vref_mode_ac
>   ram: rk3399: Simplify data training first argument
>   ram: rk3399: Handle data training via ops
>   ram: rk3399: Add LPPDR4 mr detection
>   arm: include: rockchip: Add rk3399 pmu file
>   rockchip: rk3399: syscon: Add pmu support
>   rockchip: dts: rk3399: Add u-boot,dm-pre-reloc for pmu
>   ram: rk3399: Add LPPDDR4-400 timings inc
>   ram: rk3399: Add LPPDDR4-800 timings inc
>   ram: rk3399: Add set_rate sdram rk3399 ops
>   ram: rk3399: Add lpddr4 set rate support
>   ram: rk3399: Set lpddr4 dq odt
>   ram: rk3399: Set lpddr4 ca odt
>   ram: rk3399: Set lpddr4 MR3
>   ram: rk3399: Set lpddr4 MR12
>   ram: rk3399: Set lpddr4 MR14
>   configs: rockpro64: Enable LPDDR4 support
>   configs: rock-pi-4: Enable LPDDR4 support
>   rockchip: dts: rk3399: Add LPDDR4-100 timings
>   rockchip: dts: rk3399: rockpro64: Use LPDDR4-100 dtsi
>   rockchip: dts: rk3399: rock-pi-4: Use LPDDR4-100 dtsi
>
>  arch/arm/dts/rk3399-nanopi-neo4-u-boot.dtsi   |    1 +
>  arch/arm/dts/rk3399-rock-pi-4-u-boot.dtsi     |    1 +
>  arch/arm/dts/rk3399-rockpro64-u-boot.dtsi     |    1 +
>  arch/arm/dts/rk3399-sdram-lpddr4-100.dtsi     | 1537 +++++++++++
>  arch/arm/dts/rk3399-u-boot.dtsi               |    4 +
>  .../include/asm/arch-rockchip/pmu_rk3399.h    |   72 +
>  arch/arm/include/asm/arch-rockchip/sdram.h    |    6 -
>  .../include/asm/arch-rockchip/sdram_common.h  |   90 +
>  .../include/asm/arch-rockchip/sdram_rk322x.h  |    7 -
>  .../include/asm/arch-rockchip/sdram_rk3399.h  |   65 +-
>  arch/arm/mach-rockchip/rk3399/syscon_rk3399.c |    8 +
>  configs/rock-pi-4-rk3399_defconfig            |    1 +
>  configs/rockpro64-rk3399_defconfig            |    1 +
>  drivers/clk/rockchip/clk_rk3399.c             |   76 +-
>  drivers/ram/Kconfig                           |    1 +
>  drivers/ram/rockchip/Kconfig                  |   33 +
>  drivers/ram/rockchip/Makefile                 |    3 +-
>  .../ram/rockchip/sdram-rk3399-lpddr4-400.inc  | 1570 +++++++++++
>  .../ram/rockchip/sdram-rk3399-lpddr4-800.inc  | 1570 +++++++++++
>  drivers/ram/rockchip/sdram_debug.c            |  147 ++
>  drivers/ram/rockchip/sdram_rk3399.c           | 2289 ++++++++++++++---
>  include/debug_uart.h                          |   19 +
>  22 files changed, 7035 insertions(+), 467 deletions(-)
>  create mode 100644 arch/arm/dts/rk3399-sdram-lpddr4-100.dtsi
>  create mode 100644 arch/arm/include/asm/arch-rockchip/pmu_rk3399.h
>  create mode 100644 drivers/ram/rockchip/Kconfig
>  create mode 100644 drivers/ram/rockchip/sdram-rk3399-lpddr4-400.inc
>  create mode 100644 drivers/ram/rockchip/sdram-rk3399-lpddr4-800.inc
>  create mode 100644 drivers/ram/rockchip/sdram_debug.c
>
> --
> 2.18.0.321.gffc6fa0e3
>
> _______________________________________________
> U-Boot mailing list
> U-Boot@lists.denx.de
> https://lists.denx.de/listinfo/u-boot

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

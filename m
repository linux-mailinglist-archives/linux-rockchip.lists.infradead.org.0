Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D14947B0B
	for <lists+linux-rockchip@lfdr.de>; Mon, 17 Jun 2019 09:36:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lMbbeKbDvjyU96IkmOHC/tusoREC1nPVPtvh9E6EvoA=; b=hTtZxwrlJcRcsJ
	ckY42UXAWhCyAfhH8opI7ZPg1v8XjR40iAs5duep5/SeoQdSGXFKtDRHVruHXiyu5pNOJ9PoMhewZ
	MzSNa1TS40y+AYjXftN/YhDi++tlL9+P/EoyNWpxCE0RnAfpM8/eY4amFTsNnmNfsmK8Dp7xlDeSj
	QXjLCdetrev+0yCHm9jyng7U9c2h+vyA192l6oIMTXkyjq6N2CwurrK4bupdSPw2vm8L0V8712hqb
	ifOJTbxTLIexBLzUe9WFxhSCpyavktTnr/2R2SEX6YJdX2UK3vSQmliaboW54skNMMJcpipvJzpB1
	VF0h57Rg7N52HdcMCkBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcmBp-00053S-Nn; Mon, 17 Jun 2019 07:36:29 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcmBk-00051k-P1
 for linux-rockchip@lists.infradead.org; Mon, 17 Jun 2019 07:36:26 +0000
Received: by mail-pl1-x643.google.com with SMTP id p1so3730449plo.2
 for <linux-rockchip@lists.infradead.org>; Mon, 17 Jun 2019 00:36:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ZQQ+LJToCvj/yOSoVEzFfc8kBIaWvwzKHeIKUA4bZaA=;
 b=RmBkV/9uKOG3HkqajDYI4GHbP3bbWaPavFv6X9fb4fGq/toHGtxpFnCcckSwhOtW82
 2+TCvPk6OUuUbWG1P7IjOfGNtHA64YoF3toPwaZ9jcwNkeAmeLBn/7DcG4+b4cL9YFYx
 uYjd18/SK/09mBC0ZnZkD+nh/sOt9Fm2Y2VVg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ZQQ+LJToCvj/yOSoVEzFfc8kBIaWvwzKHeIKUA4bZaA=;
 b=SIz5XvoJPquzrP4zSQf9RdMSCp2cIBsImalfreHpelXcKo4mnUg03h8cEt4PVHl/m+
 xxbK4qKHo7qEezNwsKsARfnH6rTG0qjQKTQVTPZRkeem04WDDsZkfLgCZQiLS3mbklXj
 8c6TUuhc0JpeJTGusyOG1umWG9pCzOSeoDTt1JR4ri2SeBDa1Dmnvis69WzhgTWMa0GG
 vGISDxghrOA1cdw55ziKHAFnaAFLSOBhjh1reIm6Sf+8wTjUMKWf/bgoKLVJXKna5fn6
 nsP9OX8GtnXrLuC0Ne7PhwS5O8XTLS5m9pQGNYKJJocghAsf4vQsdsYbBw7ONaRQNV97
 JNNg==
X-Gm-Message-State: APjAAAUjE0jSgCvf7z+8XM+dxeqHnk65WPYM/U4xzLMkKhYgiijL470u
 vXNW6ey3il6K4SUEG3M6slt2WA==
X-Google-Smtp-Source: APXvYqwMr3rvYLKGpwKOfnEHkpeSA7I8oruF1mEDQRhShfidcL1vec2k4XClWk+uHydNh9cUx+7PmQ==
X-Received: by 2002:a17:902:27a8:: with SMTP id
 d37mr107097865plb.150.1560756979645; 
 Mon, 17 Jun 2019 00:36:19 -0700 (PDT)
Received: from localhost.localdomain ([49.206.203.245])
 by smtp.gmail.com with ESMTPSA id m41sm15205998pje.18.2019.06.17.00.36.16
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 00:36:19 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v2 00/99] ram: rk3399: Add LPDDR4 support
Date: Mon, 17 Jun 2019 13:01:13 +0530
Message-Id: <20190617073252.27810-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_003624_811968_E794213F 
X-CRM114-Status: GOOD (  10.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-rockchip@lists.infradead.org, gajjar04akash@gmail.com,
 linux-amarula@amarulasolutions.com, Jagan Teki <jagan@amarulasolutions.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

This is the v2 set for supporting LPDDR4 with associated
features, wrt to previous series[1].

Thanks to
- YouMin Chen
- Akash Gajjar
- Kever Yang
for supporting all the help on this work.

On summary this series support
- Code warning and fixes
- rank detection, this would required to probe single channel 
  sdram configured in NanoPI-NEO4
- LPDDR4 support, tested in Rockpro64 and Rock-PI-4

Changes for v2:
- handle LPDDR4 code as part of CONFIG_RAM_RK3399_LPDDR4
- support data_training and set_rate via sdram_rk3399_ops
- add proper sys_reg_enc macros
- add new patch to rename variable sdram_params with params
- fix few commit messages

patch 0001 - 0034: fix code warnings, prints, new macros

patch 0035 - 0052: rank detection, sdram debug code

patch 0053: use DDR3-1800 on NanoPI-NEO4

patch 0054 - 0094: lpddr4 support

patch 0095: enable lpddr4 in Rockpro64

patch 0096: enable lpddr4 in Rock-PI-4

patch 0097: LPDDR4-100 timings

patch 0098: Use LPDDR4-100 on Rockpro64

patch 0099: Use LPDDR4-100 on Rock-PI 4

Size (increased to ~3KiB ):
- Puma RK3399 (u-boot-spl-dtb.bin):
  before: 115644 after: 118744
- NanoPI M4 (u-boot-tpl-dtb.bin)
  before: 41873 after: 44909

Travis-CI:
https://travis-ci.org/openedev/u-boot-amarula/builds/546597944

Repo:
https://github.com/openedev/u-boot-amarula/tree/rk3399-lpddr4

[1] https://patchwork.ozlabs.org/cover/1113893/

Any inputs?
Jagan.

Jagan Teki (99):
  ram: rk3399: Fix code warnings
  ram: rk3399: Add space between string with format specifier
  ram: rk3399: Add proper spaces in code
  ram: rk3399: s/sdram_params/params
  ram: rk3399: Handle data training return types
  ram: rk3399: Order include files
  ram: rk3399: Move macro after include files
  ram: rk3399: Clear PI_175 interrupts in data training
  ram: rk3399: Use rank mask in ca data training
  ram: rk3399: Use rank mask in wdql data training
  ram: rk3399: Add ddrtype enc macro
  ram: rk3399: Add channel number encoder macro
  ram: rk3399: Add row_3_4 enc macro
  ram: rk3399: Add chipinfo macro
  ram: rk3399: Add rank enc macro
  ram: rk3399: Add column enc macro
  ram: rk3399: Add bk enc macro
  ram: rk3399: Add dbw enc macro
  ram: rk3399: Add cs0_rw macro
  ram: rk3399: Add cs1_rw macro
  ram: rk3399: Add bw enc macro
  ram: rk3399: Rename sys_reg with sys_reg2
  ram: rk3399: Update cs0_row to use sys_reg3
  ram: rk3399: Update cs1_row to use sys_reg3
  ram: rk3399: Add cs1_col enc macro
  ram: rk3399: Add ddr version enc macro
  ram: rk3399: Add ddrtimingC0
  ram: rk3399: Add DdrMode
  ram: rk3399: Handle pctl_cfg return type
  ram: rk3399: s/tsel_wr_select_n/tsel_wr_select_dq_n
  ram: rk3399: s/tsel_wr_select_p/tsel_wr_select_dq_p
  ram: rk3399: s/ca_tsel_wr_select_n/tsel_wr_select_ca_n
  ram: rk3399: s/ca_tsel_wr_select_p/tsel_wr_select_ca_p
  ram: rk3399: Order tsel variables
  ram: rk3399: Add phy pctrl reset support
  ram: rk3399: Move pwrup_srefresh_exit to dram_info
  ram: rk3399: Add pctl start support
  ram: rockchip: rk3399: Add cap_info structure
  ram: rk3399: s/rk3399_base_params/sdram_base_params
  ram: rk3399: Move common sdram structures in common header
  arm: include: rockchip: Move dramtypes to common header
  arm: include: rockchip: Add DDR4 enum
  ram: rockchip: Add initial Kconfig
  debug_uart: Add printdec
  ram: rockchip: Add debug sdram driver
  ram: rockchip: debug: Add sdram_print_ddr_info
  ram: rockchip: debug: Get the cs capacity
  ram: rk3399: debug: Add sdram_print_stride
  ram: rk3399: Compute stride for 2 channels
  ram: rk3399: Compute stride for 1 channel a
  ram: rk3399: Add rank detection support
  ram: rk3399: Enable sdram debug functions
  rockchip: dts: rk3399: nanopi-neo4: Use DDR3-1866 dtsi
  clk: rockchip: rk3399: Fix check patch warnings and checks
  clk: rockchip: rk3399: Set 50MHz ddr clock
  clk: rockchip: rk3399: Set 400MHz ddr clock
  ram: rk3399: Add spaces in pctl_cfg
  ram: rk3399: Configure phy IO in ds odt
  ram: rockchip: Kconfig: Add RK3399 LPDDR4 entry
  ram: rk3399: Add lpddr4 rank mask for ca training
  ram: rk3399: Add lpddr4 rank mask for wdql training
  ram: rk3399: Move mode_sel assignment
  ram: rk3399: Don't wait for PLL lock in lpddr4
  ram: rk3399: Avoid two channel ZQ Cal Start at the same time
  ram: rk3399: Configure PHY_898, PHY_919 for lpddr4
  ram: rk3399: Configure BOOSTP_EN, BOOSTN_EN for lpddr4
  ram: rk3399: Configure SLEWP_EN, SLEWN_EN for lpddr4
  ram: rk3399: Configure PHY RX_CM_INPUT for lpddr4
  ram: rk3399: Map chipselect for lpddr4
  ram: rk3399: Configure tsel write ca for lpddr4
  ram: rk3399: Don't disable dfi dram clk for lpddr4, rank 1
  ram: rk3399: Add IO settings
  ram: sdram: Configure lpddr4 tsel rd, wr based on IO settings
  ram: rk3399: Add tsel control clock drive
  ram: rk3399: Configure soc odt support
  ram: rk3399: Get lpddr4 tsel_rd_en from io settings
  ram: rk3399: Update lpddr4 vref based on io settings
  ram: rk3399: Update lpddr4 mode_sel based on io settings
  ram: rk3399: Update lpddr4 vref_mode_ac
  ram: rk3399: Simplify data training first argument
  ram: rk3399: Handle data training via ops
  ram: rk3399: Add LPPDR4 mr detection
  arm: include: rockchip: Add rk3399 pmu file
  rockchip: rk3399: syscon: Add pmu support
  rockchip: dts: rk3399: Add u-boot,dm-pre-reloc for pmu
  ram: rk3399: Add LPPDDR4-400 timings inc
  ram: rk3399: Add LPPDDR4-800 timings inc
  ram: rk3399: Add set_rate sdram rk3399 ops
  ram: rk3399: Add lpddr4 set rate support
  ram: rk3399: Set lpddr4 dq odt
  ram: rk3399: Set lpddr4 ca odt
  ram: rk3399: Set lpddr4 MR3
  ram: rk3399: Set lpddr4 MR12
  ram: rk3399: Set lpddr4 MR14
  configs: rockpro64: Enable LPDDR4 support
  configs: rock-pi-4: Enable LPDDR4 support
  rockchip: dts: rk3399: Add LPDDR4-100 timings
  rockchip: dts: rk3399: rockpro64: Use LPDDR4-100 dtsi
  rockchip: dts: rk3399: rock-pi-4: Use LPDDR4-100 dtsi

 arch/arm/dts/rk3399-nanopi-neo4-u-boot.dtsi   |    1 +
 arch/arm/dts/rk3399-rock-pi-4-u-boot.dtsi     |    1 +
 arch/arm/dts/rk3399-rockpro64-u-boot.dtsi     |    1 +
 arch/arm/dts/rk3399-sdram-lpddr4-100.dtsi     | 1537 +++++++++++
 arch/arm/dts/rk3399-u-boot.dtsi               |    4 +
 .../include/asm/arch-rockchip/pmu_rk3399.h    |   72 +
 arch/arm/include/asm/arch-rockchip/sdram.h    |    6 -
 .../include/asm/arch-rockchip/sdram_common.h  |   90 +
 .../include/asm/arch-rockchip/sdram_rk322x.h  |    7 -
 .../include/asm/arch-rockchip/sdram_rk3399.h  |   65 +-
 arch/arm/mach-rockchip/rk3399/syscon_rk3399.c |    8 +
 configs/rock-pi-4-rk3399_defconfig            |    1 +
 configs/rockpro64-rk3399_defconfig            |    1 +
 drivers/clk/rockchip/clk_rk3399.c             |   76 +-
 drivers/ram/Kconfig                           |    1 +
 drivers/ram/rockchip/Kconfig                  |   33 +
 drivers/ram/rockchip/Makefile                 |    3 +-
 .../ram/rockchip/sdram-rk3399-lpddr4-400.inc  | 1570 +++++++++++
 .../ram/rockchip/sdram-rk3399-lpddr4-800.inc  | 1570 +++++++++++
 drivers/ram/rockchip/sdram_debug.c            |  147 ++
 drivers/ram/rockchip/sdram_rk3399.c           | 2289 ++++++++++++++---
 include/debug_uart.h                          |   19 +
 22 files changed, 7035 insertions(+), 467 deletions(-)
 create mode 100644 arch/arm/dts/rk3399-sdram-lpddr4-100.dtsi
 create mode 100644 arch/arm/include/asm/arch-rockchip/pmu_rk3399.h
 create mode 100644 drivers/ram/rockchip/Kconfig
 create mode 100644 drivers/ram/rockchip/sdram-rk3399-lpddr4-400.inc
 create mode 100644 drivers/ram/rockchip/sdram-rk3399-lpddr4-800.inc
 create mode 100644 drivers/ram/rockchip/sdram_debug.c

-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

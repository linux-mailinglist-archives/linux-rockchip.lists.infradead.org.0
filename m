Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C4313CF71
	for <lists+linux-rockchip@lfdr.de>; Tue, 11 Jun 2019 16:52:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rf7bphN3wmtK2v2cb5B8dqkDH0bQqHGHwFHKmoo4X5M=; b=AdYdo2K2Oh03A6
	lveGkUPakG2sXNoL8iKInRIhRLGgAbUnJICD7sQqQcPEke07QLGQE8iX5fKQKoWzBffpfDTgGp6ad
	D5hIZjYQSqWUDe9VqIta655UW8JjHhqz1bWhSfLY77hgFmdVTRn0+oy+lNcr3W3Uz9ZMpJKFQ5ifs
	nmVY67l8BXtjMkoT/ICQqGrpB6ulJHewRV0SXMHj+epUThSwOm7dGxNIk0m75sFl8MTKUGN7Gq6fN
	qt+s36RXOrukOmHZOmyLfluIcqBgsBQ9g1J4kLKwgDXJnFBT/X6J6fGtphFFqSexjesG6X1bfgaTz
	xh/ytAnzIP4mEaSq9tRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hai7x-0003hI-0d; Tue, 11 Jun 2019 14:51:57 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hai7s-0003gc-RA
 for linux-rockchip@lists.infradead.org; Tue, 11 Jun 2019 14:51:54 +0000
Received: by mail-pf1-x444.google.com with SMTP id i189so7579237pfg.10
 for <linux-rockchip@lists.infradead.org>; Tue, 11 Jun 2019 07:51:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=N6ehd24yn8jAZhsNeGIrg5t2afRTTfW1ISExG34ET+A=;
 b=XUg1q5d7Ov0grwWplG679f33jVa0hsts/W2HWMs5BaGhGU6h585c1E5jIqdyGz0CqE
 SGaIzFlX+diwwpVdvYqUIx/JCryPiaZC+rI3q+yU+3Xa/l81zNYFGFNevJgDhvjyLGVF
 QaOhTayeANS7Q0bgGJHQiJSPoDPjPEtshjPZA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=N6ehd24yn8jAZhsNeGIrg5t2afRTTfW1ISExG34ET+A=;
 b=H7XOeVaopdSr48g7wPPCVyMDtcWp14Yp6stwlZivUj4XMlQYAEejQ4NzilWBhoTXvI
 QvqVn+EOGVjoid8P6w8afJa0tCz4ND0WTLhF9B6yTy8jkDT0Zx6Qv1whsckncSD0R+KY
 8EHQfIJZlJvaQDZ1r309u3fDuuRn28wcux1GoHW/YekWHK/OTfQ4vNYtQhriONE44Ek9
 X7PIrJXx6yAy1E1aC8q7YuVLA1K3t3RpMF5P2wXswIpFXVgIQV2mYhoDQC4nr83dr+Zw
 DsmB+IO2h6FowOphUBhgD1BHQg1u0kD0FBaW7QPpw5+pJslDiFNx4IypVLC5EpFl79CX
 3R/A==
X-Gm-Message-State: APjAAAUu7SmDVgH29VXenROXmWmL1g1O3sCTDcGJtkAepNlfERuW1C4k
 MXJtc0N1KTdDFISs3+Nb2mRysw==
X-Google-Smtp-Source: APXvYqzMxMl5iJxuJw59T+y/PAimCcIAESUxOZNOuhJuW5M0bffsIWzA+gXi1YRIFJtnTRrGpfOXMQ==
X-Received: by 2002:a17:90a:3a85:: with SMTP id
 b5mr11177412pjc.84.1560264711490; 
 Tue, 11 Jun 2019 07:51:51 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.18])
 by smtp.gmail.com with ESMTPSA id e9sm16206208pfn.154.2019.06.11.07.51.47
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Jun 2019 07:51:51 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH 00/92] ram: rk3399: Add LPDDR4 support
Date: Tue, 11 Jun 2019 20:20:03 +0530
Message-Id: <20190611145135.21399-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_075153_349621_35E7EB9F 
X-CRM114-Status: UNSURE (   9.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com,
 Jagan Teki <jagan@amarulasolutions.com>, gajjar04akash@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Yes, it can be possible to break this series into multiple sub series
but idea here is to mark all the required changes to support LPDDR4 
in rk3399 in one set. if required we can break it from next versions.

This is the initial set for supporting LPDDR4 with associated
features.

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

patch 0001 - 0033: fix code warnings, prints, new macros

patch 0034 - 0051: rank detection, sdram debug code

patch 0052: Use DDR3-1800 on NanoPI-NEO4

patch 0053 - 0089: lpddr4 support

patch 0090: LPDDR4-100 timings

patch 0091: Use LPDDR4-100 on Rockpro64

patch 0092: Use LPDDR4-100 on Rock-PI 4

Note: Puma rk3399 has SPL size overflow, better to enable TPL
for this board.

Any inputs?
Jagan.

Jagan Teki (92):
  ram: rk3399: Fix code warnings
  ram: rk3399: Add space between string with format specifier
  ram: rk3399: Add proper spaces in data training
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
  ram: rk3399: Add lpddr4 rank mask for cs training
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
  ram: rk3399: Add LPPDR4 mr detection
  arm: include: rockchip: Add rk3399 pmu file
  rockchip: rk3399: syscon: Add pmu support
  rockchip: dts: rk3399: Add u-boot,dm-pre-reloc for pmu
  ram: rk3399: Add LPPDDR4-400 timings inc
  ram: rk3399: Add LPPDDR4-800 timings inc
  ram: rk3399: Add lpddr4 set rate support
  ram: rk3399: Set lpddr4 dq odt
  ram: rk3399: Set lpddr4 ca odt
  ram: rk3399: Set lpddr4 MR3
  ram: rk3399: Set lpddr4 MR12
  ram: rk3399: Set lpddr4 MR14
  rockchip: dts: rk3399: Add LPDDR4-100 timings
  rockchip: dts: rk3399: rockpro64: Use LPDDR4-100 dtsi
  rockchip: dts: rk3399: rock-pi-4: Use LPDDR4-100 dtsi

 arch/arm/dts/rk3399-nanopi-neo4-u-boot.dtsi   |    1 +
 arch/arm/dts/rk3399-rock-pi-4-u-boot.dtsi     |    1 +
 arch/arm/dts/rk3399-rockpro64-u-boot.dtsi     |    1 +
 arch/arm/dts/rk3399-sdram-lpddr4-100.dtsi     | 1537 ++++++++++++
 arch/arm/dts/rk3399-u-boot.dtsi               |    4 +
 .../include/asm/arch-rockchip/pmu_rk3399.h    |   72 +
 arch/arm/include/asm/arch-rockchip/sdram.h    |    6 -
 .../include/asm/arch-rockchip/sdram_common.h  |   89 +
 .../include/asm/arch-rockchip/sdram_rk322x.h  |    7 -
 .../include/asm/arch-rockchip/sdram_rk3399.h  |   65 +-
 arch/arm/mach-rockchip/rk3399/syscon_rk3399.c |    8 +
 drivers/clk/rockchip/clk_rk3399.c             |   76 +-
 drivers/ram/Kconfig                           |    1 +
 drivers/ram/rockchip/Kconfig                  |   26 +
 drivers/ram/rockchip/Makefile                 |    3 +-
 .../ram/rockchip/sdram-rk3399-lpddr4-400.inc  | 1570 ++++++++++++
 .../ram/rockchip/sdram-rk3399-lpddr4-800.inc  | 1570 ++++++++++++
 drivers/ram/rockchip/sdram_debug.c            |  147 ++
 drivers/ram/rockchip/sdram_rk3399.c           | 2176 ++++++++++++++---
 include/debug_uart.h                          |   19 +
 20 files changed, 6964 insertions(+), 415 deletions(-)
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

Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 492126A7D7
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 13:59:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1u3ZI14e1NxvxajoiSKBnG7NTDzPxtmhOkIfbGDp6pY=; b=Rw572zwFq93BR1
	ZTkr/fq8xNwyebQk9TviXmhS8cmW2znUlk4R/eYGONv0rfooAZwQqsq1ICLFCRqa/Utzelf06aIqr
	pcod3ASs5NoXG6URCi9SdciMdQhcDNtt+zqpy7AXtkYY62Xg1ZV2wPOtRe8APgmprSwIsdc988vdl
	2KBk54QFhpG8NtT1BggdplZDwFv49lnqJ3bb8YZme8qxY5+ML5vxVFMuMGmQEB9cFwBjGpEESaik1
	cCJ39a5cOY++wgKyLvpagg9vvKSsmc/QY/E4Q7iL2ptCcVBigmf5OVy4Ls0sfaeVEfsuYJ8SAjkvL
	Hr637Mb08VkerYYxD8hg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnM6m-0004HS-0G; Tue, 16 Jul 2019 11:59:00 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnM5m-0003UP-Bv
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 11:58:01 +0000
Received: by mail-pf1-x443.google.com with SMTP id r1so8992422pfq.12
 for <linux-rockchip@lists.infradead.org>; Tue, 16 Jul 2019 04:57:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=iH5gCfl0OuGYiRTd2UB1cBM68KaQdhsCRty5hxYd3dY=;
 b=V9cyzw4kFa/RZS43vz1q2ZotcgrBABA+mp6/ba1o+Kk2FT4QcZnLk9FD5kVaWihJ1d
 EkaJ3iHPGcAmd7uTHYp7wsxpULujIUqJAsBqoC6K4sNVWjzf012KvGkJBHhu1lFq2p7q
 z8PmUN/C1Wp4vdiP8fd9j8kbCFEkAWLZs6ai8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=iH5gCfl0OuGYiRTd2UB1cBM68KaQdhsCRty5hxYd3dY=;
 b=sEd33aSj/u19x6V1cPubgK6aMxYXvpWUiif/9dmut5bJjjlS90c2KI4BV2xuxSdsSB
 TfDwOVTqbatzLpDJySwZ6BrvIB5fSPvMkCVJZ/YxYBE5w5CCMpGkyDQYPqhXuAcT2Bx1
 3fJYkgSJl4ZZ50ivsubynEEOj6ioTPWERq6IcM8D8M6YZoLlN2zAjFRHL+ERUbYWboLP
 jesxYw9gxBiqLPQLPK8V9sKsC217O0lAayvAGBih7tarq1OtBPDwtCY47pLhaUQHGSMk
 phWfJwClwnXp1QGQLaV2wdd6IWlfcLduMbwR+2EYiGPqE6qoV6hBWt2Wv/PwMARgF6Tb
 qXXw==
X-Gm-Message-State: APjAAAWJACTpVUBTEUzua/B7Hbc8IYOqrWupKD2xU9Iv3fAFgf+8yB96
 ueZAflXU/KVHCQv8+jxflCiRTA==
X-Google-Smtp-Source: APXvYqwEudRW4UCecmhqxDxNv8pqZvtVnV0Gb3zuBM6EJpnKYenUO/UU4YNjtBxRGQSmZ4apf6sa1A==
X-Received: by 2002:a63:2cc7:: with SMTP id
 s190mr21276476pgs.236.1563278276626; 
 Tue, 16 Jul 2019 04:57:56 -0700 (PDT)
Received: from localhost.localdomain ([49.206.201.107])
 by smtp.gmail.com with ESMTPSA id z24sm36269566pfr.51.2019.07.16.04.57.53
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 16 Jul 2019 04:57:56 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v3 00/57] ram: rk3399: Add LPDDR4 support 
Date: Tue, 16 Jul 2019 17:26:48 +0530
Message-Id: <20190716115745.12585-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_045758_745361_6E87A395 
X-CRM114-Status: GOOD (  10.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
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
Cc: linux-rockchip@lists.infradead.org, gajjar04akash@gmail.com,
 linux-amarula@amarulasolutions.com, Jagan Teki <jagan@amarulasolutions.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

This is next revison of lpddr4 support on rk3399 compared to
previous set[1]. It has some changes based on the commit orders
and squashing few patches together and rest is same.

Thanks to
- YouMin Chen
- Akash Gajjar
- Kever Yang
for supporting all the help on this work.

Changes for v3:
- squash set_rate code in one patch
- tested in Rockpro64 and Rock-PI-4
- order them in proper way
- rebase on master
Changes for v2:
- handle LPDDR4 code as part of CONFIG_RAM_RK3399_LPDDR4
- support data_training and set_rate via sdram_rk3399_ops
- add proper sys_reg_enc macros
- add new patch to rename variable sdram_params with params
- fix few commit messages.

patch 0001 - 0018: add dram config enc macro

patch 0019: configure phy IO in ds odt

patch 0020: add LPDDR4 config 

patch 0021 - 0043: lpddr4 data training changes

patch 0044 - 0046: syscon pmu support

patch 0047: set 50MHz ddr clock

patch 0048: set 400MHz ddr clock

patch 0049: LPDDR4-400 timings

patch 0050: LPDDR4-800 timings

patch 0051 - 0052: lpddr4 set rate

patch 0053: enable lpddr4 support on Rockpro64

patch 0054: enable lpddr4 support on Rock-PI 4

patch 0055: add LPDDR-100 timings via dts

patch 0056: use LPDDR-100 timings on Rockpro64

patch 0057: use LPDDR-100 timings on Rock-PI 4

[1] https://patchwork.ozlabs.org/cover/1116734/

Any inputs?
Jagan.

Jagan Teki (57):
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
  rockchip: dts: rk3399: Add u-boot, dm-pre-reloc for pmu
  clk: rockchip: rk3399: Set 50MHz ddr clock
  clk: rockchip: rk3399: Set 400MHz ddr clock
  ram: rk3399: Add LPPDDR4-400 timings inc
  ram: rk3399: Add LPPDDR4-800 timings inc
  ram: rk3399: Add set_rate sdram rk3399 ops
  ram: rk3399: Add lpddr4 set rate support
  configs: rockpro64: Enable LPDDR4 support
  configs: rock-pi-4: Enable LPDDR4 support
  rockchip: dts: rk3399: Add LPDDR4-100 timings
  rockchip: dts: rk3399: rockpro64: Use LPDDR4-100 dtsi
  rockchip: dts: rk3399: rock-pi-4: Use LPDDR4-100 dtsi

 arch/arm/dts/rk3399-rock-pi-4-u-boot.dtsi     |    1 +
 arch/arm/dts/rk3399-rockpro64-u-boot.dtsi     |    1 +
 arch/arm/dts/rk3399-sdram-lpddr4-100.dtsi     | 1537 +++++++++++++++
 arch/arm/dts/rk3399-u-boot.dtsi               |    4 +
 .../include/asm/arch-rockchip/pmu_rk3399.h    |   72 +
 .../include/asm/arch-rockchip/sdram_common.h  |   31 +
 .../include/asm/arch-rockchip/sdram_rk3399.h  |   29 +-
 arch/arm/mach-rockchip/rk3399/syscon_rk3399.c |    8 +
 configs/rock-pi-4-rk3399_defconfig            |    1 +
 configs/rockpro64-rk3399_defconfig            |    1 +
 drivers/clk/rockchip/clk_rk3399.c             |    8 +
 drivers/ram/rockchip/Kconfig                  |    7 +
 .../ram/rockchip/sdram-rk3399-lpddr4-400.inc  | 1570 +++++++++++++++
 .../ram/rockchip/sdram-rk3399-lpddr4-800.inc  | 1570 +++++++++++++++
 drivers/ram/rockchip/sdram_rk3399.c           | 1726 ++++++++++++++---
 15 files changed, 6317 insertions(+), 249 deletions(-)
 create mode 100644 arch/arm/dts/rk3399-sdram-lpddr4-100.dtsi
 create mode 100644 arch/arm/include/asm/arch-rockchip/pmu_rk3399.h
 create mode 100644 drivers/ram/rockchip/sdram-rk3399-lpddr4-400.inc
 create mode 100644 drivers/ram/rockchip/sdram-rk3399-lpddr4-800.inc

-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 867F29D5AC
	for <lists+linux-rockchip@lfdr.de>; Mon, 26 Aug 2019 20:21:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6S3L4GEixtWe1Ru6rO/kBrrYiCh/K2GhIG7XCOxqDw8=; b=mlCmANep6dC3jS
	I776aic3WJ27h/S4jVTqTwLFRSWaW3ACaSx37vpJpxLOxzP89Ojp4HVDEnkMEwVzU7mpm9rAFiHeY
	z5zD0lM2LcLDRASvRpGYLK6fa+lu2BOFQ82NPIMeFRLtVQ6bEuA+Cdnyhe02BuLFhOko584EkDjcw
	r/hhyH1Y4jf6llt/0GxQl/aj/j6/xL3qCMXi6FJpurAYrjYY5D+bisQiqylO8zDYLEigoxIVLzBqB
	XOpLhkGFaw9pfg2p5MwI50wIK2/w+98qjCJXAETeYHw2PtWd/dpgHXsbLcsyAkEICYz+bVW6WdYvM
	ftBO+gOjy1XiRP4iO6mw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2JcN-0001L0-Jx; Mon, 26 Aug 2019 18:21:27 +0000
Received: from mail-oi1-x242.google.com ([2607:f8b0:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2JcG-0001JK-RU
 for linux-rockchip@lists.infradead.org; Mon, 26 Aug 2019 18:21:22 +0000
Received: by mail-oi1-x242.google.com with SMTP id l2so12883488oil.0
 for <linux-rockchip@lists.infradead.org>; Mon, 26 Aug 2019 11:21:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=/7SgKrjWzUviuhlLMkeSP3k1gsudg9fnF1buswRrfG8=;
 b=iXVF3gsIFc2HPowc8nO2Ug2FY/L2RSQP85BVkPl+fHmuxh54FIlYanvlfSRZA7dUjI
 cW1MNjVQb7GJWvBb1w+dbb4YN9oWyCwYi8chaRB3yefm8LgUZSop/C3h12gjDsYKrVjj
 PQCis36ESoZlWYM2RjoKmkuSnNvduMdPZXA5o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=/7SgKrjWzUviuhlLMkeSP3k1gsudg9fnF1buswRrfG8=;
 b=JkxFfhooYz71Q/k+Ay7w3tj81cNf1Wcb+MIYonnW1+PBDPV2erXmoTQWKRiA0P+0+J
 dsake5EY9ABT3IUSHg/t27a7lfWGXAk38eyknJ87ew6Ed9/8eAbrJ2UjQMpxp5BDpp0s
 jxSEt4bhFWL7DS5zzhLwUeAgzX2LhO6h5ZDDBqs2G7GKtfy+iOvL44LR4LgKxB3rVanJ
 DTi9lQu2TrG1oFU0PZGCVXoFd3Qne2r6mCgqy7Bd2MH6BzHwXwxXsJIb6mR/PpEzuqdp
 fyKFAqye/MilEBcVnRF2USZVWhVeHgpLH+9Z7GmQ+aF63E3Bmcn0ydRRKlQ61xZymBPD
 JKhA==
X-Gm-Message-State: APjAAAUjVo1rxKjPT+3tuxWMOLLgxdX2PRz//X8TYCiNMLw0plqBHl7U
 ApIW29mLLXAQTqIs/EiLkqdWvg==
X-Google-Smtp-Source: APXvYqwzKUvJZ163nGk5vJPp6Wpnx0mU92xfSVTtcBSCrylyil1TjRndz/5i2bdoF0Fa40Tg4w3ZgA==
X-Received: by 2002:aca:1104:: with SMTP id 4mr8966621oir.65.1566843678496;
 Mon, 26 Aug 2019 11:21:18 -0700 (PDT)
Received: from jagan-XPS-13-9350.attlocal.net
 ([2600:1700:7430:38e0:d5b0:4823:33c8:5e46])
 by smtp.gmail.com with ESMTPSA id c11sm4401461otr.54.2019.08.26.11.21.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 Aug 2019 11:21:17 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH v2 00/16] rk3399: Add redundant boot support 
Date: Mon, 26 Aug 2019 23:50:55 +0530
Message-Id: <20190826182111.30999-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_112121_498093_25285673 
X-CRM114-Status: GOOD (  10.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Jagan Teki <jagan@amarulasolutions.com>, u-boot@lists.denx.de,
 linux-amarula@amarulasolutions.com, Akash Gajjar <akash@openedev.com>,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Boot redundancy is one of the key criteria for switch
recovery or golden partition based on the bootcount 
value, which indeed very much needed in production 
systems on the fields.

This patchset support redundant boot on Rockchip rk3399.

To make full functional redundancy below features 
would require from U-Boot level.
- bootcount, for counting number reboots
- altboot
- watchdog support, if SPL or U-Boot reset because of WDT
- add CPUINFO for more understanding about how SoC and 
  reset reason.

Changes for v2:
- Handle TPL build for watchdog, if TPL won't enable
- Fix comments for dw_wdt driver-model comments from Andy
- Add Kconfig items for WDT_TPL
- Support WDT on TPL as well
- Use SYS_SOC for cpu-info

I would like, not to merge watchdog and bootcount on Mainline
devboards since these features will mostly required on production
devices but any comments, please share.

Any inputs?
Jagan.

Jagan Teki (16):
  rockchip: Add cpu-info
  rockchip: rk3288/rk3399: Enable DISPLAY_CPUINFO
  arm: rockchip: Add common cru.h
  rockchip: Add rk3399 reset cause
  wdt: designware: Simplify is_enabled function
  wdt: designware: Simplify enable function
  wdt: dw: Add driver-model support
  wdt: dw: Rename to dw_wdt.c
  rockchip: dts: rk3399: Add u-boot, dm-pre-reloc for watchdog
  wdt: Kconfig: Add WDT_DW entry
  wdt: Kconfig: Add TPL_WDT entry
  spl: Add watchdog support fot TPL
  watchdog: Handle TPL build with watchdog disabled
  [DO NOT MERGE] rk3399: rockpro64: Enable watchdog
  rockchip: rk3399: Add bootcount support
  [DO NOT MERGE] rk3399: rockpro64: Enable bootcount

 arch/arm/dts/rk3399-u-boot.dtsi               |   6 +
 arch/arm/include/asm/arch-rockchip/cru.h      |  26 +++
 .../include/asm/arch-rockchip/cru_rk3399.h    |  10 +-
 arch/arm/mach-rockchip/Kconfig                |   2 +
 arch/arm/mach-rockchip/Makefile               |   1 +
 arch/arm/mach-rockchip/cpu-info.c             |  59 ++++++
 arch/arm/mach-rockchip/rk3399/Kconfig         |  10 +
 arch/arm/mach-rockchip/rk3399/clk_rk3399.c    |   2 +-
 arch/arm/mach-rockchip/rk3399/rk3399.c        |   2 +-
 common/board_f.c                              |   2 +-
 common/spl/Kconfig                            |   9 +
 configs/evb-rk3288_defconfig                  |   1 -
 configs/evb-rk3399_defconfig                  |   1 -
 configs/ficus-rk3399_defconfig                |   1 -
 configs/firefly-rk3288_defconfig              |   1 -
 configs/firefly-rk3399_defconfig              |   1 -
 configs/khadas-edge-captain-rk3399_defconfig  |   1 -
 configs/khadas-edge-rk3399_defconfig          |   1 -
 configs/khadas-edge-v-rk3399_defconfig        |   1 -
 configs/miqi-rk3288_defconfig                 |   1 -
 configs/nanopc-t4-rk3399_defconfig            |   1 -
 configs/nanopi-m4-rk3399_defconfig            |   1 -
 configs/nanopi-neo4-rk3399_defconfig          |   1 -
 configs/orangepi-rk3399_defconfig             |   1 -
 configs/phycore-rk3288_defconfig              |   1 -
 configs/popmetal-rk3288_defconfig             |   1 -
 configs/puma-rk3399_defconfig                 |   1 -
 configs/rock-pi-4-rk3399_defconfig            |   1 -
 configs/rock960-rk3399_defconfig              |   1 -
 configs/rockpro64-rk3399_defconfig            |   4 +-
 configs/tinker-rk3288_defconfig               |   1 -
 configs/vyasa-rk3288_defconfig                |   1 -
 drivers/Makefile                              |   2 +-
 drivers/clk/rockchip/clk_rk3399.c             |  36 ++--
 drivers/ram/rockchip/sdram_rk3399.c           |  10 +-
 drivers/video/rockchip/rk3399_mipi.c          |   2 +-
 drivers/video/rockchip/rk_mipi.c              |   2 +-
 drivers/watchdog/Kconfig                      |  15 ++
 drivers/watchdog/Makefile                     |   2 +-
 drivers/watchdog/designware_wdt.c             |  73 -------
 drivers/watchdog/dw_wdt.c                     | 188 ++++++++++++++++++
 include/configs/rk3399_common.h               |   5 +-
 include/configs/socfpga_common.h              |   2 +-
 include/configs/socfpga_stratix10_socdk.h     |   2 +-
 include/watchdog.h                            |   7 +-
 scripts/config_whitelist.txt                  |   1 -
 46 files changed, 364 insertions(+), 136 deletions(-)
 create mode 100644 arch/arm/include/asm/arch-rockchip/cru.h
 create mode 100644 arch/arm/mach-rockchip/cpu-info.c
 delete mode 100644 drivers/watchdog/designware_wdt.c
 create mode 100644 drivers/watchdog/dw_wdt.c

-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

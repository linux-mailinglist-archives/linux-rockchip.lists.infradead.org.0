Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 174D078693
	for <lists+linux-rockchip@lfdr.de>; Mon, 29 Jul 2019 09:47:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=u5C7cLg/2IPWx4CDrR+aABSlLOqNUALLLYbI3GVVGpw=; b=iyijVmE83Nhjj6
	V3DrQG/A9QpQU5h7K/z197Ahb5br3A/Ywyal8qG+yEnKRcdYwpBiySJmNkPMjYAqw2l+Y1sDu/SHd
	3d0ktSWEr9UrNdfTc+1vBRKPVlcSzvmSB4RWdPneKcKrXWFdaWVheZAXVzXhOp0qBAuFdjBchQKEa
	yJigxcBDlB3g/Hkh73esWa8AH/HijXiJ62Carv8PJsalvTdpkbRjk/nglrWKQwOwnqlNDNKFoda69
	kGCULTOBV1LbgfFruQ2pmJiXy7cTsCHhhDLNMbP4hSGOIKieM7CnFCeFpq6slDQ82H+hw1VvE1pBE
	a9BmWioBHUZ58JVf/KiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs0NU-0001ne-CM; Mon, 29 Jul 2019 07:47:29 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs0NQ-0001n0-3w
 for linux-rockchip@lists.infradead.org; Mon, 29 Jul 2019 07:47:25 +0000
Received: by mail-pg1-x543.google.com with SMTP id n9so21586630pgc.1
 for <linux-rockchip@lists.infradead.org>; Mon, 29 Jul 2019 00:47:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=KV637IdarZaxHAMhyyMC1da4VvXdY/IcpMGk7VTXTRo=;
 b=Y3m5OHTUj9C+h3vn5yexj8ZEjxIGl6emkcPM9JvHbdh8D03OAnvvHVv3bRBUPeY+Ju
 DRKcmAjkBudMm+bdSZpTfQ6k/OEu6uu6PnLBIP/IWniL5yOMsagi84bw6ZGNAxZMOHR8
 K7VYgEhTzNqKDt9Jj6JWioLSEFXaPY2AZ2Mh0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=KV637IdarZaxHAMhyyMC1da4VvXdY/IcpMGk7VTXTRo=;
 b=o58XtrA3Ul72XntML0R3PFH7StzKzQ6zO2WvkaaFjkHr66QTI/bSOlGCmDgq27QfA3
 btzhLZpJfIVa/JkCeZ35DMEM4/Cc55xjiXcmWk5vfjZtcRJ8ZKmERqEyLBI24ZYv07kB
 Ey6C05fTCGVFRCRC04NQGMrDZJntkQFotQ5g8kA6Uji4RbhaJAAfwd3cAiE9wWf0bMXR
 cu5mV2ZFn8FREoQwXdwQELUnv5RDuAbZvKfEHOxEI49ylIkys3OahXWVH07eidgZHXIg
 3uRLBNiLtGy0MpJpL92I8/447TYRvxcqzV1p5QNsEE32Ylp/CydIHd/3LAAfyd4m5mkv
 jQ5w==
X-Gm-Message-State: APjAAAWv+pD7Pic1YVbBF2Ya/Gkh6ba8dEDb++8dhGzT5Ww8DXpitocX
 ogjZ88iyShq6YzWxLjpUGal43A==
X-Google-Smtp-Source: APXvYqypdO6iCOGQIdl31nNrijxIPO8phXKQqmAiFNL84TZKcuomF/WA3aYpA7W4dyKSTs7wQiKfjA==
X-Received: by 2002:a62:ce8e:: with SMTP id y136mr35682242pfg.29.1564386442620; 
 Mon, 29 Jul 2019 00:47:22 -0700 (PDT)
Received: from localhost.localdomain ([49.206.203.41])
 by smtp.gmail.com with ESMTPSA id h14sm75723348pfq.22.2019.07.29.00.47.18
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 29 Jul 2019 00:47:22 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH 00/15] rk3399: Add redundant boot support
Date: Mon, 29 Jul 2019 13:16:56 +0530
Message-Id: <20190729074711.16988-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_004724_302872_E0FEAE81 
X-CRM114-Status: GOOD (  10.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

patch 0001 - 0005: cpu info, reset reason

patch 0006 - 0009: designware watchdog driver, dm-conversion

patch 0010: Add watchdog property available to SPL

patch 0011: Add Kconfig option for dw_wdt.c

patch 0012: Disable watchdog for TPL

patch 0013: enable watchdog on rockpro64, overlay

patch 0014: bootcount support

patch 0015: enable bootcount on rockpro64, overlay

I would like, not to merge watchdog and bootcount on Mainline
devboards since these features will mostly required on production
devices but any comments, please share.

Any inputs?
Jagan.

Jagan Teki (15):
  arm: rockchip: Add common cru.h
  rockchip: Add cpu-info
  rockchip: rk3288: Print reset reason
  rockchip: Add common reset reason
  rockchip: rk3288/rk3399: Enable DISPLAY_CPUINFO
  wdt: designware: Simplify is_enabled function
  wdt: designware: Simplify enable function
  wdt: dw: Add driver-model support
  wdt: dw: Rename to dw_wdt.c
  rockchip: dts: rk3399: Add u-boot, dm-pre-reloc for watchdog
  wdt: Kconfig: Add WDT_DW entry
  include: rk3399: Disable watchdog in TPL
  [DO NOT MERGE] rk3399: rockpro64: Enable watchdog
  rockchip: rk3399: Add bootcount support
  [DO NOT MERGE] rk3399: rockpro64: Enable bootcount

 arch/arm/dts/rk3399-u-boot.dtsi               |   6 +
 arch/arm/include/asm/arch-rockchip/cru.h      |  28 +++
 .../include/asm/arch-rockchip/cru_rk3288.h    |  14 +-
 arch/arm/mach-rockchip/Kconfig                |   2 +
 arch/arm/mach-rockchip/Makefile               |   1 +
 arch/arm/mach-rockchip/cpu-info.c             |  65 +++++++
 arch/arm/mach-rockchip/rk3288-board.c         |  39 ----
 arch/arm/mach-rockchip/rk3288/clk_rk3288.c    |   2 +-
 arch/arm/mach-rockchip/rk3399-board-spl.c     |   2 +-
 arch/arm/mach-rockchip/rk3399/Kconfig         |  10 +
 arch/arm/mach-rockchip/rk3399/clk_rk3399.c    |   2 +-
 common/board_f.c                              |   2 +-
 configs/evb-rk3288_defconfig                  |   1 -
 configs/evb-rk3399_defconfig                  |   1 -
 configs/fennec-rk3288_defconfig               |   1 -
 configs/ficus-rk3399_defconfig                |   1 -
 configs/firefly-rk3288_defconfig              |   1 -
 configs/firefly-rk3399_defconfig              |   1 -
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
 drivers/clk/rockchip/clk_rk3288.c             |   2 +-
 drivers/clk/rockchip/clk_rk3399.c             |   2 +-
 drivers/ram/rockchip/sdram_rk3288.c           |   2 +-
 drivers/ram/rockchip/sdram_rk3399.c           |   2 +-
 drivers/video/rockchip/rk3288_mipi.c          |   2 +-
 drivers/video/rockchip/rk3399_mipi.c          |   2 +-
 drivers/video/rockchip/rk_mipi.c              |   2 +-
 drivers/watchdog/Kconfig                      |   9 +
 drivers/watchdog/Makefile                     |   2 +-
 drivers/watchdog/designware_wdt.c             |  73 -------
 drivers/watchdog/dw_wdt.c                     | 184 ++++++++++++++++++
 include/configs/rk3399_common.h               |  10 +-
 include/configs/socfpga_common.h              |   2 +-
 include/configs/socfpga_stratix10_socdk.h     |   2 +-
 scripts/config_whitelist.txt                  |   1 -
 46 files changed, 332 insertions(+), 160 deletions(-)
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

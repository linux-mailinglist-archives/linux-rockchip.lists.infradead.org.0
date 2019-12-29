Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB94912CA88
	for <lists+linux-rockchip@lfdr.de>; Sun, 29 Dec 2019 20:07:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OQIPf9t9cBx/r3aC2uDZWEp1c3dEobxLp5Pd20rFDLs=; b=R0vOS8IGATZ4EB
	eerLmJw8npwQgMVT+koB3uSLsm5shzBcVgwRCrxvVsHIt4yLggWB9EUrvYwphq+VdzKQ457YR/wQh
	iw+Kc49DIAaRP8A6rvqRbt46KrztXgW2R+Yh5ykutkcaM0xxZR2pQqwjINFcjllPhGM2cINNICl12
	1NZYvtEELzc9RJgmnRjc/2qnId7WoWKFmY+NCXFUjE5MbQ+QT9P5vtAOoq5pbwGJENbtbcWEBSsKj
	GgICEWLbvqueu2AlUdM/ZLMQojPS0TffRKPs2M8v6S33kwnfLjBkAm/xUKDvQ5M+M1z3495yp/Mzi
	I8UlAbI75Q23sCthpQUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilduk-0003SR-3D; Sun, 29 Dec 2019 19:07:46 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ildug-0003RM-KH
 for linux-rockchip@lists.infradead.org; Sun, 29 Dec 2019 19:07:44 +0000
Received: by mail-pj1-x1042.google.com with SMTP id m13so7233545pjb.2
 for <linux-rockchip@lists.infradead.org>; Sun, 29 Dec 2019 11:07:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=6/cIAYyGH0jAm5aI9tiqG+q7zzWwp5cQMmn3vxtp/j0=;
 b=QPwHKmng1V/UXK5J9XuBtanhxCVdqSR8tntOxp6ZqG6Tb2xJRan29mJRm2wemT8XnU
 ey/AtaP9M80/a6BXyd8PMs3baqmf0x4aszAkVXgjD51rkJmZN3Mh9lNtBtTKOEUu+4VX
 nT822gvMMW3DoLAj7lKq8xVU02nBM9kPtMHzE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=6/cIAYyGH0jAm5aI9tiqG+q7zzWwp5cQMmn3vxtp/j0=;
 b=qn3Gn/p2LzQvkHpcnuBZk1ZDljXFfq6jGLCB2eA+jEdq3VAKn5ZhDYP/qG1IRgndNt
 D0/2TfAxz6mqHuLjIWb4iG9P60ErY4+5fWMWis7sck4lEGLRp8vkiOxjbFaXWlH41IWP
 hoQCKPt5v74yKyM+7W9Jb83TdNUy5fVt7PSbt9cVsJ+Qrh9it7GzG51SAVkQfgqoY8QJ
 /lIGXVhPNhMDPuyu4gsO53v5bQItkBRS8kMvKhsxTX8tBNbTQAXUarGyuRwmNT/LXsAt
 GuQiZb6fQvmf34lFCPpOIqkwb2Pat/Ja8qOpmpCgnjP5/Ejjhjboj48cyKlGgt7SeCq0
 ztyA==
X-Gm-Message-State: APjAAAW++JoTMKEr2b+Mxfpu9lVzM2NYpKbCA41ncZcsZQ9szre4LPVA
 o5x6AGGZEvyhnCh32/6WQySxdQ==
X-Google-Smtp-Source: APXvYqyRWFSdgjNC1mdOV5FotTSg63iUqqZd3Mwk9jARz9Eisdswhau3Tx8dMVwmczcTHtDPJuzw3Q==
X-Received: by 2002:a17:90a:f84:: with SMTP id 4mr41849977pjz.74.1577646458592; 
 Sun, 29 Dec 2019 11:07:38 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c809:c7d5:f590:ce0e:1ce1:c326])
 by smtp.gmail.com with ESMTPSA id u10sm44879700pgg.41.2019.12.29.11.07.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 29 Dec 2019 11:07:38 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH v3 0/5] rk3399: Add redundant boot support 
Date: Mon, 30 Dec 2019 00:37:21 +0530
Message-Id: <20191229190726.29266-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_110742_807815_0D394447 
X-CRM114-Status: UNSURE (   9.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

This is v3 patchset support redundant boot on Rockchip 
rk3399.

This series skip wdt changes as Marek patches support 
the same.

Changes for v3:
- rework of cru.h to include rk3288
- rebase on master
Changes for v2:
- Handle TPL build for watchdog, if TPL won't enable
- Fix comments for dw_wdt driver-model comments from Andy
- Add Kconfig items for WDT_TPL
- Support WDT on TPL as well
- Use SYS_SOC for cpu-info

Any inputs?
Jagan.

Jagan Teki (5):
  rockchip: Add cpu-info
  rockchip: rk3399: Enable DISPLAY_CPUINFO
  arm: rockchip: Add common cru.h
  rockchip: Add common reset cause
  rockchip: rk3399: Add bootcount support

 arch/arm/include/asm/arch-rockchip/clock.h    |  4 +-
 arch/arm/include/asm/arch-rockchip/cru.h      | 28 ++++++++
 .../include/asm/arch-rockchip/cru_rk3288.h    | 20 ++----
 .../include/asm/arch-rockchip/cru_rk3399.h    | 10 +--
 arch/arm/mach-rockchip/Kconfig                |  2 +
 arch/arm/mach-rockchip/Makefile               |  1 +
 arch/arm/mach-rockchip/cpu-info.c             | 65 +++++++++++++++++++
 arch/arm/mach-rockchip/rk3288/clk_rk3288.c    |  2 +-
 arch/arm/mach-rockchip/rk3288/rk3288.c        | 41 +-----------
 arch/arm/mach-rockchip/rk3399/Kconfig         | 10 +++
 arch/arm/mach-rockchip/rk3399/clk_rk3399.c    |  2 +-
 arch/arm/mach-rockchip/rk3399/rk3399.c        |  2 +-
 configs/evb-rk3288_defconfig                  |  1 -
 configs/evb-rk3399_defconfig                  |  1 -
 configs/ficus-rk3399_defconfig                |  1 -
 configs/firefly-rk3288_defconfig              |  1 -
 configs/firefly-rk3399_defconfig              |  1 -
 configs/khadas-edge-captain-rk3399_defconfig  |  1 -
 configs/khadas-edge-rk3399_defconfig          |  1 -
 configs/khadas-edge-v-rk3399_defconfig        |  1 -
 configs/leez-rk3399_defconfig                 |  1 -
 configs/miqi-rk3288_defconfig                 |  1 -
 configs/nanopc-t4-rk3399_defconfig            |  1 -
 configs/nanopi-m4-rk3399_defconfig            |  1 -
 configs/nanopi-neo4-rk3399_defconfig          |  1 -
 configs/orangepi-rk3399_defconfig             |  1 -
 configs/phycore-rk3288_defconfig              |  1 -
 configs/popmetal-rk3288_defconfig             |  1 -
 configs/puma-rk3399_defconfig                 |  1 -
 configs/roc-pc-rk3399_defconfig               |  1 -
 configs/rock-pi-4-rk3399_defconfig            |  1 -
 configs/rock960-rk3399_defconfig              |  1 -
 configs/rockpro64-rk3399_defconfig            |  1 -
 configs/tinker-rk3288_defconfig               |  1 -
 configs/tinker-s-rk3288_defconfig             |  1 -
 configs/vyasa-rk3288_defconfig                |  1 -
 drivers/clk/rockchip/clk_rk3288.c             | 42 ++++++------
 drivers/clk/rockchip/clk_rk3399.c             | 36 +++++-----
 drivers/ram/rockchip/sdram_rk3288.c           | 10 +--
 drivers/ram/rockchip/sdram_rk3399.c           | 10 +--
 drivers/video/rockchip/rk3288_mipi.c          |  2 +-
 drivers/video/rockchip/rk3399_mipi.c          |  2 +-
 drivers/video/rockchip/rk_mipi.c              |  2 +-
 include/configs/rk3399_common.h               |  5 +-
 44 files changed, 177 insertions(+), 143 deletions(-)
 create mode 100644 arch/arm/include/asm/arch-rockchip/cru.h
 create mode 100644 arch/arm/mach-rockchip/cpu-info.c

-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

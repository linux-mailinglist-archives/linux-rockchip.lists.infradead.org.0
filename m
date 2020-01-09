Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 501FB1354C8
	for <lists+linux-rockchip@lfdr.de>; Thu,  9 Jan 2020 09:52:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wt0z0lcz+ePKC3TyhWNcWGe+QaAtjb3ILnFN8sLTpUM=; b=CW9zxP9d6U7EMQ
	fARTw1WohM3D0MFcfwGyybs8yjIMZLhwwBtx4HNm5GK46Rz6sXbAzcEmYgl31bxl3j7+D03vvn28I
	uOEE8a3Xwdm+W/xFeH1oNEKt8b5fM3gUzbeufVfSL3UjU45Tw+ZfVCZK2LnMtZnvJ5xtAuZTHMtPI
	efiI72BDNAl027ZePkNRGigsXmTaaxvUxL5SdPSkQi6eHyhVVIzu0mnTg1/pypxUkwZTqz/TORvJ4
	A6ahog+7pxVWEPkDPlUEt1VA5LXxNOwSdxLOSVFzMOmsNQ/YrqEHTh5uC95cGF6u+XWeBqnpRmUiZ
	Tg75sOSYbV5Hf7pGta5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipTYV-0005kM-5j; Thu, 09 Jan 2020 08:52:39 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipTYR-0005XJ-32
 for linux-rockchip@lists.infradead.org; Thu, 09 Jan 2020 08:52:36 +0000
Received: by mail-pl1-x644.google.com with SMTP id x17so2311724pln.1
 for <linux-rockchip@lists.infradead.org>; Thu, 09 Jan 2020 00:52:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+G2wTQjYnk77KB6rEiwLgDcyPxGw48Lq2j8/Bllx3Bs=;
 b=easbO/zm2QtMslT9GzBSPNU8lWteQgPAlID3oLclJVL98jSOT2MMSTJq6pH4zVjOFh
 GQj6gexficMH2c51t3qGtA9tWpxKRNqu/RYVsP7txfuBNsX+bPtdcq5cFDqx5hhRylNz
 GvL9aSMmtVA0ffM/7/yT16pmS+jJmTDv2HggE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+G2wTQjYnk77KB6rEiwLgDcyPxGw48Lq2j8/Bllx3Bs=;
 b=maU9KPy737WPHTwtjLzQfPWA40vEkR3Hvl50beE9edWsaxsV0ZMJMwfWzifxGctVJq
 mb8ieex4UO7OuW9Yoin4ZX8wwlBT2CWwfyK0yQ2mnU3BXSulPs4wTpTj4kzEVdAe/1KE
 JBYbCdATFsKts/Q5PhfmUKCKmzaIZAVZDC+yKOQ8DhoNzPdvsigfqynxKqfb5FLdWkQ9
 zmPZC0dEc8TSKqeJRHmONe+OENrmJ/oSmtOJ+7l8YyOuRGj/rrlafhK/Ua16VDwtztMx
 ryLgo9GuWlUhEYG5dpX5U1b0sClw2/w162UxlkGCmA6oZsGHLdxDLzWSEHkenGXq6LHs
 Sfmg==
X-Gm-Message-State: APjAAAUNb1iLEvxrjYVgwddoOiXWhX6/uyHTFl+9wGXcc0Cwq5Us6LjU
 SpuCUCx6PuGNDnZrFRuYn67QYw==
X-Google-Smtp-Source: APXvYqwM9YUwiF9kbMX0gm4ox7tXchZKWC+teoqgqjvUaQIY5N249DLQEper8HD1ydrKzj1M8jwMpg==
X-Received: by 2002:a17:902:b087:: with SMTP id
 p7mr10899975plr.10.1578559954467; 
 Thu, 09 Jan 2020 00:52:34 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c809:c7d5:d888:9871:544a:b516])
 by smtp.gmail.com with ESMTPSA id o17sm2139121pjq.1.2020.01.09.00.52.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Jan 2020 00:52:33 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH v4 0/8] rk3399: Add redundant boot support
Date: Thu,  9 Jan 2020 14:22:14 +0530
Message-Id: <20200109085222.22670-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_005235_288412_490B14F3 
X-CRM114-Status: UNSURE (   9.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: u-boot@lists.denx.de, linux-amarula@amarulasolutions.com,
 Jagan Teki <jagan@amarulasolutions.com>, linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Boot redundancy is one of the key criteria for switch
recovery or golden partition based on the bootcount 
value, which indeed very much needed in production 
systems on the fields.

This is v4 patchset support redundant boot on Rockchip 
rk3399.

Changes for v4:
- fixed compilation issue
- add wdt kconfig option
- tested wdt and bootcount
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

Jagan Teki (8):
  rockchip: Add cpu-info
  rockchip: rk3399: Enable DISPLAY_CPUINFO
  arm: rockchip: Add common cru.h
  rockchip: Add common reset cause
  rockchip: rk3399: Add bootcount support
  watchdog: kconfig: Enable designware for rk3399
  [DO NOT MERGE] roc-rk3399-pc: Enable watchdog
  [DO NOT MERGE] roc-rk3399-pc: Enable bootcount

 arch/arm/include/asm/arch-rockchip/clock.h    |  4 +-
 arch/arm/include/asm/arch-rockchip/cru.h      | 30 +++++++++
 .../include/asm/arch-rockchip/cru_rk3288.h    | 20 ++----
 .../include/asm/arch-rockchip/cru_rk3399.h    | 11 ++--
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
 configs/roc-pc-rk3399_defconfig               |  3 +-
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
 drivers/watchdog/Kconfig                      |  1 +
 include/configs/rk3399_common.h               |  5 +-
 45 files changed, 182 insertions(+), 144 deletions(-)
 create mode 100644 arch/arm/include/asm/arch-rockchip/cru.h
 create mode 100644 arch/arm/mach-rockchip/cpu-info.c

-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

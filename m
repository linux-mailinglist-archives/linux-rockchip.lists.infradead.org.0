Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 040FAB33F
	for <lists+linux-rockchip@lfdr.de>; Sat, 27 Apr 2019 13:49:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=e3tCIM+qYKfgWqkPwVCWc5tu+97uQVPpyZh3VPS8MQQ=; b=MgBOQoUvrKObFI
	+1pOwikRWLofAQ3hrZfLqPi/M0hF0TMymCAlDcP7iOBMx8G0Jzd+JfXvmMAQ/lu5DD0UUcNlQmhsI
	dTc3iNLuhRksjZa/BSSrvN9zwk4/jAaQ74OGYJb3pglWd3fLyLgiyfuvRdZkpVBY9jjeSHTvB3z5A
	IyRvfAzMpisqiQBmUrEIupyuME5hcDEhg4bmcPXl/3B0dmtgsojmJNxqcV8jwa+jyMP0VhN/DTnnK
	69ZvgHYew4UcPT7A854O8UaZfIjfgcpqWnpuBfcFlYNp2tvMQVo6fc1RUZ6oJr87ulkwPh74jArVM
	ITrJxdCGdVxVg/xxXXww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKLpN-0000wE-U9; Sat, 27 Apr 2019 11:49:09 +0000
Received: from mail-pl1-x62e.google.com ([2607:f8b0:4864:20::62e])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKLpL-0000vV-4K
 for linux-rockchip@lists.infradead.org; Sat, 27 Apr 2019 11:49:08 +0000
Received: by mail-pl1-x62e.google.com with SMTP id b3so2806707plr.7
 for <linux-rockchip@lists.infradead.org>; Sat, 27 Apr 2019 04:49:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=7tiRNMPrQpiZJHMzCydiayFwTcOVCEl2dY7HQGjflDg=;
 b=bKOQhfmk+wyOO5fTEuhh8rXDF96KmPXNcnuxOC1AX1fVO3Wd0jYJ/Y9K/7NnfOznW5
 72u1R3I5Tg+D+m8nFLlcuBeVwX/GSZCklJZ52T5u2Of7sqyzzHbIEQ0g5SYBh9SiVNf3
 WEK6prNqfXw3WTmakgxQtLvLggwarQ+UP3qyA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=7tiRNMPrQpiZJHMzCydiayFwTcOVCEl2dY7HQGjflDg=;
 b=txIEM5jHI0U7Pjc8Gu3Fxs+e4mr1aXoXFzrjeK3Vu6u/Bx2bLhZDRvraVvki6AnC+E
 MmiHcFi8zB5MVUFi5+lwYtvpq1kN1GlPWTU0/zPaah5s0dKDmLHhiFgmt01w9+DilvIL
 04fkTnheEhPo06cjw+gG7k2OY6UciGrQPcFDMTtRH+9zD0gWzMOQ62X5Rjt2kb9GoFhW
 DrNOY8gPBFYJa1PXN228PQxn0R3TwZGP38zvDEmzJugZXYiJGlHrikynlHWYpVsmbuMf
 9LC/jETmy1GF7BUhCdl8yKNvpEgsm+Qxxwk2qbFPsrMwOFGNG3g9gT5zgt7V4TxCnUDo
 aRaA==
X-Gm-Message-State: APjAAAVS6Pi1O3cJJPgOyBHkgt2pgIjglO4DOYmDFXn04anBVOPHH0hO
 CMAq/jSiagazkucVAI1kYHOJ3A==
X-Google-Smtp-Source: APXvYqyB8w2QA1ydejTiGgzHuzXiVU8JXzVmHRrmDUgoPYbC9fqMf7sTIMLbtfKXaAI5Y9K316WNDg==
X-Received: by 2002:a17:902:2b87:: with SMTP id
 l7mr51794655plb.130.1556365745771; 
 Sat, 27 Apr 2019 04:49:05 -0700 (PDT)
Received: from localhost.localdomain ([115.97.185.144])
 by smtp.gmail.com with ESMTPSA id y3sm2368768pfe.9.2019.04.27.04.49.00
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 27 Apr 2019 04:49:04 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, Akash Gajjar <akash@openedev.com>,
 Tom Rini <trini@konsulko.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v6 00/13] rockchip: Add new rk3399 boards
Date: Sat, 27 Apr 2019 17:18:43 +0530
Message-Id: <20190427114852.7608-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190427_044907_175825_B69CB9B6 
X-CRM114-Status: GOOD (  10.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:62e listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.21
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
Cc: Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com,
 Jagan Teki <jagan@amarulasolutions.com>, u-boot@lists.denx.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

This is v6 patchset for New rk3399 boards support wrt previous
version[1]

Overall this series add support below rk3399 boards
- Orangepi RK3399
- NanoPI M4
- NanoPC T4
- NanoPI NEO4
- Orangepi RK3399
- Rock PI 4
- Rockpro64

All the respective dts(i) files are synced from Linux 5.1-rc2 and few
dts(i) from linux-next.

SoC u-boot specific dtsi rk3399-u-boot.dtsi changes are part of another
series [3].

Out of all above boards Rockpor64, Rock-PI and Nanopi NEO4 would support
booting via Rockchip miniloader as of now.

For booting the same with SPL NEO4 would require dynamic dram timing
detection and rest require LPDDR4 code. There is WIP[2] for these
dependencies and this would require big chunk of changes will effect
all the rk3399 boards, so I'm planning to mark it for next MW. 

Changes for v6:
- Include Nanopc T4 support patch
- drop rk3399-u-boot.dtsi patch since it is send separately.
Changes for v5:
- Make all changes related to move sdmmc, spi1 u-boot,dm-pre-reloc
  properties into all rk3399 dts(i) files.
Changes for v4:
- don't include existing dts(i) sdmmc, u-boot,dm-pre-reloc into
  rk3399-u-boot.dtsi
Changes for v3:
- drop NanoPC T4 for now, since board is yet to receive.
- add Rock PI-4 board.
- add separate -u-boot.dtsi file for nanopi4 sdram changes.
- collect Paul, Philipp and Kever Reviewed-by tags

[1] https://patchwork.ozlabs.org/cover/1091712/
[2] https://github.com/amarula/u-boot-amarula/tree/rockdev-lpddr4
[3] https://patchwork.ozlabs.org/cover/1091909/

Any inputs?
Jagan.

Jagan Teki (13):
  rockchip: dts: rk3399: Sync rk3399-opp from Linux
  rockchip: dts: rk3399: Sync pwm2_pin_pull_down from Linux 5.1-rc2
  Kconfig: Add default SPL_FIT_GENERATOR for rockchip
  arm: rockchip: rk3399: Move common configs in Kconfig
  rockchip: rk3399: Add Orangepi RK3399 support
  rockchip: dts: rk3399: Sync rk3399-nanopi4.dtsi from Linux
  rockchip: dts: rk3399: nanopi4: Use CD pin as RK_FUNC_1
  rockchip: rk3399: Add Nanopi M4 board support
  rockchip: rk3399: Add Nanopc T4 board support
  rockchip: rk3399: Add Nanopi NEO4 board support
  rockchip: rk3399: Add Rockpro64 board support
  rockchip: rk3399: Add Rock PI 4 support
  doc: rockchip: Add global doc for rk3399 build/flash

 Kconfig                                     |   1 +
 arch/arm/dts/Makefile                       |   6 +
 arch/arm/dts/rk3399-nanopc-t4-u-boot.dtsi   |   7 +
 arch/arm/dts/rk3399-nanopc-t4.dts           |  91 +++
 arch/arm/dts/rk3399-nanopi-m4-u-boot.dtsi   |   7 +
 arch/arm/dts/rk3399-nanopi-m4.dts           |  66 ++
 arch/arm/dts/rk3399-nanopi-neo4-u-boot.dtsi |   6 +
 arch/arm/dts/rk3399-nanopi-neo4.dts         |  50 ++
 arch/arm/dts/rk3399-nanopi4-u-boot.dtsi     |  11 +
 arch/arm/dts/rk3399-nanopi4.dtsi            | 703 ++++++++++++++++++
 arch/arm/dts/rk3399-opp.dtsi                | 133 ++++
 arch/arm/dts/rk3399-orangepi-u-boot.dtsi    |   7 +
 arch/arm/dts/rk3399-orangepi.dts            | 771 ++++++++++++++++++++
 arch/arm/dts/rk3399-rock-pi-4-u-boot.dtsi   |   6 +
 arch/arm/dts/rk3399-rock-pi-4.dts           | 606 +++++++++++++++
 arch/arm/dts/rk3399-rockpro64-u-boot.dtsi   |   6 +
 arch/arm/dts/rk3399-rockpro64.dts           | 712 ++++++++++++++++++
 arch/arm/dts/rk3399.dtsi                    |   6 +
 arch/arm/mach-rockchip/Kconfig              |  16 +
 board/rockchip/evb_rk3399/MAINTAINERS       |  39 +
 configs/chromebook_bob_defconfig            |  17 -
 configs/evb-rk3399_defconfig                |  17 -
 configs/ficus-rk3399_defconfig              |  17 -
 configs/firefly-rk3399_defconfig            |  17 -
 configs/nanopc-t4-rk3399_defconfig          |  58 ++
 configs/nanopi-m4-rk3399_defconfig          |  58 ++
 configs/nanopi-neo4-rk3399_defconfig        |  58 ++
 configs/orangepi-rk3399_defconfig           |  58 ++
 configs/puma-rk3399_defconfig               |  16 -
 configs/rock-pi-4-rk3399_defconfig          |  58 ++
 configs/rock960-rk3399_defconfig            |  17 -
 configs/rockpro64-rk3399_defconfig          |  58 ++
 doc/README.rockchip                         | 233 +++++-
 33 files changed, 3830 insertions(+), 102 deletions(-)
 create mode 100644 arch/arm/dts/rk3399-nanopc-t4-u-boot.dtsi
 create mode 100644 arch/arm/dts/rk3399-nanopc-t4.dts
 create mode 100644 arch/arm/dts/rk3399-nanopi-m4-u-boot.dtsi
 create mode 100644 arch/arm/dts/rk3399-nanopi-m4.dts
 create mode 100644 arch/arm/dts/rk3399-nanopi-neo4-u-boot.dtsi
 create mode 100644 arch/arm/dts/rk3399-nanopi-neo4.dts
 create mode 100644 arch/arm/dts/rk3399-nanopi4-u-boot.dtsi
 create mode 100644 arch/arm/dts/rk3399-nanopi4.dtsi
 create mode 100644 arch/arm/dts/rk3399-opp.dtsi
 create mode 100644 arch/arm/dts/rk3399-orangepi-u-boot.dtsi
 create mode 100644 arch/arm/dts/rk3399-orangepi.dts
 create mode 100644 arch/arm/dts/rk3399-rock-pi-4-u-boot.dtsi
 create mode 100644 arch/arm/dts/rk3399-rock-pi-4.dts
 create mode 100644 arch/arm/dts/rk3399-rockpro64-u-boot.dtsi
 create mode 100644 arch/arm/dts/rk3399-rockpro64.dts
 create mode 100644 configs/nanopc-t4-rk3399_defconfig
 create mode 100644 configs/nanopi-m4-rk3399_defconfig
 create mode 100644 configs/nanopi-neo4-rk3399_defconfig
 create mode 100644 configs/orangepi-rk3399_defconfig
 create mode 100644 configs/rock-pi-4-rk3399_defconfig
 create mode 100644 configs/rockpro64-rk3399_defconfig

-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

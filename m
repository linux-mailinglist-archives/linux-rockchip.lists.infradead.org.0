Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 094581287FA
	for <lists+linux-rockchip@lfdr.de>; Sat, 21 Dec 2019 08:55:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vohLqFxSsRAoEOyo4jtpk1h8HQfRpVJbOj6s/2ZDNxQ=; b=Q0JLHwei4ezWJn
	+yXGbO5/9A3DT5dGjU0kH/S4rkRHAVvD8c9DVZJDKbwAphTq/fHR3BXsH7pkqfQf79r7EQxUOxllp
	KjxJIUreYidEvJTAoCsP6bqSAc5EB/NWBnrsy6rNH1LrXeXvixFYENoekk0RGDysPqMbZpftjMTU5
	J4d+fZgQDBNM7zGrR5aLKb7QZYGu5eBvsi9IWQnyYHEqvIsRqUDey8Z453mBJX5qb9Q0ZzD5A6ex3
	Ub5ugzYCUyGlnb8rUMnRaMgc7yA608uO48D1flAn5OXyE4N/t17kpCnLFgQChcxvdz90zDBIUWhxO
	phDg4MJxZbkmIZY7PCRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiZbH-0005Hf-4I; Sat, 21 Dec 2019 07:54:59 +0000
Received: from mail-pf1-x432.google.com ([2607:f8b0:4864:20::432])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiZbD-0005GS-A7
 for linux-rockchip@lists.infradead.org; Sat, 21 Dec 2019 07:54:57 +0000
Received: by mail-pf1-x432.google.com with SMTP id q10so6500951pfs.6
 for <linux-rockchip@lists.infradead.org>; Fri, 20 Dec 2019 23:54:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=jYRNtcOfYSekvf8pKkssv0d2L549YvN3K52kbu1rGH0=;
 b=FySr5cuqEc5Cnr3U2ukA4CdaaX4hfkPltcUefnozw+ZzG8HH/qW+G93A5V43/EVDia
 bnFIf9DszvOCmeBzg+L6tnUncX7ZHuJHG8TtGkAFs9kRX/ot3o9hWNYIC5E3xhUn/N69
 NKSPkyna6AfXpLgpWzEiFZLQzn6gtXYw9FgGA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=jYRNtcOfYSekvf8pKkssv0d2L549YvN3K52kbu1rGH0=;
 b=LpKcUTjJ+kLTfSRCviOTcoESLWjIn44JtN9iocBDNqVlNLRDmA2SxCZz/T+kcWZJFd
 785g7kKwp21hJnYRV821gKQcE9FqGJGyoRztYqywfBprImhdw1zbgwCShBR4rzBJLq4b
 CxlLRvphKjIUaeuUfdPrcNHW7KU9GqwoH5P4h7WmVUyzL3aTYp6vmyOKXaGss4Yj3wV2
 03WNXhQdhWTOImFBs92eQl6ptSljM2unKY3e+7XN98EWBjIHuGx0BUUzVp6P9Pc1mkjD
 kwGdBo3xbfJTLgqSpuhEnt2uTOUCEyiXv+A8ghi3fjrwTJji7AW47qP8Rie3llYKJ70W
 bBsA==
X-Gm-Message-State: APjAAAVyRiwZjWR5iMrEWI/+b7iFNVPexlJAD2NZgU3aPd6AivsJZot2
 7o/HyvQc+XgJcwDRtfNbXnCPPIGzQwg=
X-Google-Smtp-Source: APXvYqwfZCzq6TtKJmLE0CqCbN4yVhBYQUQ8hJjhzAN4ipQ0l9N7dM+HagSJzxKmXoelqGHzk1YJnQ==
X-Received: by 2002:aa7:874c:: with SMTP id g12mr20061248pfo.78.1576914891641; 
 Fri, 20 Dec 2019 23:54:51 -0800 (PST)
Received: from localhost.localdomain ([49.206.202.177])
 by smtp.gmail.com with ESMTPSA id i9sm15551018pfk.24.2019.12.20.23.54.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 20 Dec 2019 23:54:51 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>, Kever Yang <kever.yang@rock-chips.com>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH 00/11] rk3399: SPI boot support (fixes, updates)
Date: Sat, 21 Dec 2019 13:24:29 +0530
Message-Id: <20191221075440.6944-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_235455_997711_54037EA0 
X-CRM114-Status: UNSURE (   7.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:432 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: u-boot@lists.denx.de, linux-amarula <linux-amarula@amarulasolutions.com>,
 Jagan Teki <jagan@amarulasolutions.com>, linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

This series support SPI boot on rk3399 in ROC-PC-RK3399 as
an example board.

Series introduces rk_spi fixes, sf distroboot, SPI boot support
on ROC-PC-RK3399 board.

SPI Boot log:
------------

Channel 0: LPDDR4, 50MHz
BW=32 Col=10 Bk=8 CS0 Row=15 CS1 Row=15 CS=2 Die BW=16 Size=2048MB
Channel 1: LPDDR4, 50MHz
BW=32 Col=10 Bk=8 CS0 Row=15 CS1 Row=15 CS=2 Die BW=16 Size=2048MB
256B stride
256B stride
lpddr4_set_rate: change freq to 400000000 mhz 0, 1
lpddr4_set_rate: change freq to 800000000 mhz 1, 0

U-Boot SPL 2020.01-rc4-00241-g9c3e7e925f (Dec 18 2019 - 19:54:46 +0530)
Trying to boot from SPI


U-Boot 2020.01-rc4-00241-g9c3e7e925f (Dec 18 2019 - 19:54:46 +0530)

Model: Firefly ROC-RK3399-PC Board
DRAM:  3.9 GiB
PMIC:  RK808 
MMC:   dwmmc@fe320000: 1, sdhci@fe330000: 0
Loading Environment from SPI Flash... SF: Detected w25q128 with page size 256 Bytes, erase size 4 KiB, total 16 MiB
*** Warning - bad CRC, using default environment

In:    serial@ff1a0000
Out:   serial@ff1a0000
Err:   serial@ff1a0000
Model: Firefly ROC-RK3399-PC Board
rockchip_dnl_key_pressed: adc_channel_single_shot fail!
Net:   
Error: ethernet@fe300000 address not set.
No ethernet found.

Hit any key to stop autoboot:  0 
=> 

Any inputs?
Jagan.

Jagan Teki (11):
  spi: rk: Limit transfers to (64K - 1) bytes
  distro_bootcmd: Add SF support
  rockchip: Include SF on distrocmd devices
  rk3399: Add boot flash script offet, size
  rk3399: Check MMC env while defining it
  env: kconfig: Restrict rockchip env for MMC
  env: Enable SPI flash env for rockchip
  rockchip: dts: Sync ROC-RK3399-PC changes from Linux
  roc-pc-rk3399: Enable SPI Flash
  rockpro-rk3399: Enable SPI Flash
  roc-rk3399-pc: Add SPI boot support

 arch/arm/dts/rk3399-roc-pc-u-boot.dtsi    |  16 +-
 arch/arm/dts/rk3399-roc-pc.dts            | 673 +-----------------
 arch/arm/dts/rk3399-roc-pc.dtsi           | 813 ++++++++++++++++++++++
 arch/arm/dts/rk3399-rockpro64-u-boot.dtsi |   4 +
 board/rockchip/evb_rk3399/MAINTAINERS     |   2 +
 configs/roc-pc-rk3399-spi_defconfig       |  62 ++
 configs/roc-pc-rk3399_defconfig           |   2 +
 configs/rockpro64-rk3399_defconfig        |   2 +
 drivers/spi/rk_spi.c                      |  10 +-
 env/Kconfig                               |   8 +-
 include/config_distro_bootcmd.h           |  35 +
 include/configs/evb_rk3399.h              |   4 +-
 include/configs/rk3399_common.h           |   2 +
 include/configs/rockchip-common.h         |   7 +
 14 files changed, 964 insertions(+), 676 deletions(-)
 create mode 100644 arch/arm/dts/rk3399-roc-pc.dtsi
 create mode 100644 configs/roc-pc-rk3399-spi_defconfig

-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

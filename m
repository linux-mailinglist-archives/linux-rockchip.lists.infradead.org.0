Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A622316A4B
	for <lists+linux-rockchip@lfdr.de>; Tue,  7 May 2019 20:36:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Ghm6a/DGB9u5tE+cvhpEGCo7/Ny1cJjCJTty80Q2DJ0=; b=qzd+bIq3FAL1Bn
	zAFFrKgCFGxHiK7j+FN+znwPIfkQog7FcsaytcuLm8P6qQY25U5XtYBbhHMZvrdaob3VW5vTPz1XT
	qvha1Rfq9T37jAXfcDKbbjVOUz05RqmBO4K5Ie5zpffEmfg5ByRXbzzordYIOjuHtW0qMCLDY+tbG
	pBvqngmQclujdQg5FpwnPWLKmgOqdmlJBv0kzXDnFoSziXCUULSLHGL3QsZhosZwbek5d0zuxo2DN
	j9HRsMV/hoO1FDjnpl73PBN35nIfMzJQpC6ukNbaqcGlxxKjLiL67XLPW+q9xoZDA0Tu8XrZ9o6/J
	kHrQdIvB9RmQUi2LLI3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO4xG-0000uy-BB; Tue, 07 May 2019 18:36:42 +0000
Received: from mail-pg1-x52c.google.com ([2607:f8b0:4864:20::52c])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO4xB-0000uM-NM
 for linux-rockchip@lists.infradead.org; Tue, 07 May 2019 18:36:41 +0000
Received: by mail-pg1-x52c.google.com with SMTP id h1so8746030pgs.2
 for <linux-rockchip@lists.infradead.org>; Tue, 07 May 2019 11:36:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=2GwT+05lBI5NivHnupzBp2Ei12dhXBwiTA+gDhRVV4A=;
 b=Vk+ztmPQUUMiFDRE/SZ3Q84tWmM02JrtqJZsRlHB5v/PQ/UAakZ4GpRPmQI1ZJ6qT7
 5SCWASU7VpyST4Ia0aCAsoDaW/8AgZXyiV2AHX87Ai1snvuvN+rGOw2mXgJbJXcD6gIH
 4PMzrySbDdtap7e2duc8sysxtIBVDm/6rZG3E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=2GwT+05lBI5NivHnupzBp2Ei12dhXBwiTA+gDhRVV4A=;
 b=jb8sqlvl5Cj5Ur5LuPm4ISshIl6NSkVmCyqRptF4nWCjwusap0yO7QvvnQoD8Cv/uS
 YWgNmxE18WHhQbzt3JE4AAPAeWagbSeI/skGB+PqPZnHTtdrUBa8vu38NtnKeMgHjGyG
 VHuuGr2aThHttAwPrQjFMt6j81pmfIsX5VL8sILqCgn/e2zl7F8WhmHKm1rXt0O+qI4C
 s2rTjO781BCxojdbnc3SALRzynKwUhkrr2vk8GIIxObmEZAATCLhaaOpcTi2zfUpBiw7
 RQ4yxm6lefZ8rL1KLV3171FvQY8R8L8FLsFdNXmgs6Pdc6QRIoirojSQNmrwJ/EDiU0P
 PMJA==
X-Gm-Message-State: APjAAAXevFub2NTf1JpyDbYNJFib8bzvnIny/AL2lvHnHkQ7hvWPKmfk
 rAFwoOGC1UoekFlEWoeDv1HgeA==
X-Google-Smtp-Source: APXvYqzmCt9tO/bc/QgzafwG/2JqoeCyXoXW/5zPcS+4ucn1y8iNAv6+NseFLIq9NCSkgY4/GucBLQ==
X-Received: by 2002:a65:51c5:: with SMTP id i5mr41643214pgq.189.1557254196850; 
 Tue, 07 May 2019 11:36:36 -0700 (PDT)
Received: from localhost.localdomain ([115.97.185.144])
 by smtp.gmail.com with ESMTPSA id b22sm21743728pgg.88.2019.05.07.11.36.33
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 07 May 2019 11:36:36 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, Akash Gajjar <akash@openedev.com>
Subject: [PATCH v7 00/11] rockchip: Add new rk3399 boards 
Date: Wed,  8 May 2019 00:06:16 +0530
Message-Id: <20190507183625.5983-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_113639_340569_A9BA8913 
X-CRM114-Status: GOOD (  12.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:52c listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

This is v7 patchset for New rk3399 boards support wrt previous
version[1]

Unfortunately initial version of creating rk3399-u-boot.dtsi and 
orangepi rk3399 changes are merged, so this is rework on top of 
u-boot-rockchip/master.

Overall this series add support below rk3399 boards
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

Changes for v7:
- rebase on top of u-boot-rockchip/master
- add SPL_TEXT_BASE on each board defconfig
- rebase on required changes
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

Travis-CI:
https://travis-ci.org/openedev/u-boot-amarula/builds/529284236

[1] https://patchwork.ozlabs.org/cover/1091914/
[2] https://github.com/amarula/u-boot-amarula/tree/rockdev-lpddr4
[3] https://patchwork.ozlabs.org/cover/1091909/

Any inputs?
Jagan.

Jagan Teki (11):
  rockchip: dts: rk3399: Sync pwm2_pin_pull_down from Linux 5.1-rc2
  Kconfig: Add default SPL_FIT_GENERATOR for rockchip
  arm: rockchip: rk3399: Move common configs in Kconfig
  rockchip: dts: rk3399: Sync rk3399-nanopi4.dtsi from Linux
  rockchip: dts: rk3399: nanopi4: Use CD pin as RK_FUNC_1
  rockchip: rk3399: Add Nanopi M4 board support
  rockchip: rk3399: Add Nanopc T4 board support
  rockchip: rk3399: Add Nanopi NEO4 board support
  rockchip: rk3399: Add Rockpro64 board support
  rockchip: rk3399: Add Rock PI 4 support
  doc: rockchip: Add global doc for rk3399 build/flash

 Kconfig                                     |   1 +
 arch/arm/dts/Makefile                       |   5 +
 arch/arm/dts/rk3399-nanopc-t4-u-boot.dtsi   |   7 +
 arch/arm/dts/rk3399-nanopc-t4.dts           |  91 +++
 arch/arm/dts/rk3399-nanopi-m4-u-boot.dtsi   |   7 +
 arch/arm/dts/rk3399-nanopi-m4.dts           |  66 ++
 arch/arm/dts/rk3399-nanopi-neo4-u-boot.dtsi |   6 +
 arch/arm/dts/rk3399-nanopi-neo4.dts         |  50 ++
 arch/arm/dts/rk3399-nanopi4-u-boot.dtsi     |  11 +
 arch/arm/dts/rk3399-nanopi4.dtsi            | 703 +++++++++++++++++++
 arch/arm/dts/rk3399-rock-pi-4-u-boot.dtsi   |   6 +
 arch/arm/dts/rk3399-rock-pi-4.dts           | 606 +++++++++++++++++
 arch/arm/dts/rk3399-rockpro64-u-boot.dtsi   |   6 +
 arch/arm/dts/rk3399-rockpro64.dts           | 712 ++++++++++++++++++++
 arch/arm/dts/rk3399.dtsi                    |   5 +
 arch/arm/mach-rockchip/Kconfig              |  16 +
 board/rockchip/evb_rk3399/MAINTAINERS       |  32 +
 configs/chromebook_bob_defconfig            |  17 -
 configs/evb-rk3399_defconfig                |  17 -
 configs/ficus-rk3399_defconfig              |  17 -
 configs/firefly-rk3399_defconfig            |  17 -
 configs/nanopc-t4-rk3399_defconfig          |  59 ++
 configs/nanopi-m4-rk3399_defconfig          |  59 ++
 configs/nanopi-neo4-rk3399_defconfig        |  59 ++
 configs/orangepi-rk3399_defconfig           |  17 -
 configs/puma-rk3399_defconfig               |  16 -
 configs/rock-pi-4-rk3399_defconfig          |  59 ++
 configs/rock960-rk3399_defconfig            |  17 -
 configs/rockpro64-rk3399_defconfig          |  59 ++
 doc/README.rockchip                         | 233 ++++++-
 30 files changed, 2857 insertions(+), 119 deletions(-)
 create mode 100644 arch/arm/dts/rk3399-nanopc-t4-u-boot.dtsi
 create mode 100644 arch/arm/dts/rk3399-nanopc-t4.dts
 create mode 100644 arch/arm/dts/rk3399-nanopi-m4-u-boot.dtsi
 create mode 100644 arch/arm/dts/rk3399-nanopi-m4.dts
 create mode 100644 arch/arm/dts/rk3399-nanopi-neo4-u-boot.dtsi
 create mode 100644 arch/arm/dts/rk3399-nanopi-neo4.dts
 create mode 100644 arch/arm/dts/rk3399-nanopi4-u-boot.dtsi
 create mode 100644 arch/arm/dts/rk3399-nanopi4.dtsi
 create mode 100644 arch/arm/dts/rk3399-rock-pi-4-u-boot.dtsi
 create mode 100644 arch/arm/dts/rk3399-rock-pi-4.dts
 create mode 100644 arch/arm/dts/rk3399-rockpro64-u-boot.dtsi
 create mode 100644 arch/arm/dts/rk3399-rockpro64.dts
 create mode 100644 configs/nanopc-t4-rk3399_defconfig
 create mode 100644 configs/nanopi-m4-rk3399_defconfig
 create mode 100644 configs/nanopi-neo4-rk3399_defconfig
 create mode 100644 configs/rock-pi-4-rk3399_defconfig
 create mode 100644 configs/rockpro64-rk3399_defconfig

-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

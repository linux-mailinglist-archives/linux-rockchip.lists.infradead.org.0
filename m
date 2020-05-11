Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B810C1CD350
	for <lists+linux-rockchip@lfdr.de>; Mon, 11 May 2020 09:54:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=qloqPxDktyd7wQCkOJca3MHfAnfBlSO6cXT3TaO5a0o=; b=Kt3
	wSNuK9IEwgJwHIuzGgkj78tTtzLxfl3TPSrY28zKlqabgDJOeMWbV5MQNsipQgI04V86E+Zgt8jBY
	dTzUZ9yanyA0CmJA56VCHbyD5ebmvMqFTDs2d4+16V8KdxhJc8Aij7KphVq/ktm2FBltreEcphN/I
	AwPWwMpkGnRFzS/LasV8K2WZWfaHjYTYyUSSXMJua6ePcqNyqCALCG7JiftGCCpNsVoatebk/85oU
	ZeUWIc95WuV4P1gOQ9WNj1ctdX3Kuaux42dHL0Q6F7iY/PGEOnQsVsJseHOMv6auWDS0ieQ99F2m5
	d+8GkhydW6jHK1njM/+wj1D1/Uevotg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY3GA-0007k1-1h; Mon, 11 May 2020 07:53:58 +0000
Received: from lucky1.263xmail.com ([211.157.147.132])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY3G1-0007cl-Md
 for linux-rockchip@lists.infradead.org; Mon, 11 May 2020 07:53:52 +0000
Received: from localhost (unknown [192.168.167.69])
 by lucky1.263xmail.com (Postfix) with ESMTP id D1888CCABB;
 Mon, 11 May 2020 15:53:32 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P27329T140438906509056S1589183610459145_; 
 Mon, 11 May 2020 15:53:32 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <226d11f8b02a0d7c9c78d134a12f2e29>
X-RL-SENDER: frank.wang@rock-chips.com
X-SENDER: wmc@rock-chips.com
X-LOGIN-NAME: frank.wang@rock-chips.com
X-FST-TO: heiko@sntech.de
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
X-System-Flag: 0
From: Frank Wang <frank.wang@rock-chips.com>
To: heiko@sntech.de, marex@denx.de, bmeng.cn@gmail.com,
 philipp.tomsich@theobroma-systems.com, klaus.goger@theobroma-systems.com,
 jagan@amarulasolutions.com, sjg@chromium.org, kever.yang@rock-chips.com
Subject: [PATCH v4 00/16] Add Rockchip RK3399 USB3.0 Host support
Date: Mon, 11 May 2020 15:53:14 +0800
Message-Id: <20200511075330.26462-1-frank.wang@rock-chips.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_005350_183543_66704884 
X-CRM114-Status: GOOD (  11.47  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.157.147.132 listed in list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [211.157.147.132 listed in wl.mailspike.net]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: jianing.ren@rock-chips.com, Frank Wang <frank.wang@rock-chips.com>,
 marek.belisko@gmail.com, wmc@rock-chips.com, u-boot@lists.denx.de,
 william.wu@rock-chips.com, linux-rockchip@lists.infradead.org,
 linux-amarula@amarulasolutions.com, chenjh@rock-chips.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

This series add quirks for DWC3 and add Rockchip RK3399 USB3.0 host support.

The function has been tested pass on rk3399-evb and roc-rk3399-pc board.

For V4 update:
 - Collect Jagan's all fixed patches [1].
 - Amend specific u-boot changes from dts to dtsi for [PATCH v3 6/7].

For V3 update:
 - Fix compile error for [PATCH v2 1/9].
 - Use Jagan's Type-C driver instead of [PATCH v2 5/9].
 - Cleanup dts changes for [PATCH v2 7/9].
 - Cleanup config changes for [PATCH v2 8/9] and [PATCH v2 9/9].

For V2 update:
 - Amend type-c driver followed Jagan's comments for [PATCH 5/8].
 - Fix dts commit for [PATCH 7/8].
 - Split RK3399 default config for [PATCH 8/8].
 - Add 'Reviewed-by' tag for [PATCH 1/8], [PATCH 2/8] and [PATCH 3/8].

[1] https://patchwork.ozlabs.org/project/uboot/cover/20200506075025.1677-1-jagan@amarulasolutions.com

BR,
Frank

Frank Wang (7):
  usb: dwc3: add dis_enblslpm_quirk
  usb: dwc3: add dis_u2_freeclk_exists_quirk
  usb: dwc3: amend UTMI/UTMIW phy interface setup
  usb: dwc3: add make compatible for rockchip platform
  driver: usb: drop legacy rockchip xhci driver
  ARM: dts: rk3399-evb: usb3.0 host support
  configs: evb-rk3399: update support usb3.0 host

Jagan Teki (9):
  clk: rk3399: Enable/Disable the USB2PHY clk
  clk: rk3399: Set empty for TCPHY assigned-clocks
  clk: rk3399: Enable/Disable TCPHY clocks
  phy: rockchip: Add Rockchip USB2PHY driver
  arm64: dts: rk3399: Move u2phy into root port
  phy: rockchip: Add Rockchip USB TypeC PHY driver
  usb: dwc3: Add disable u2mac linestate check quirk
  usb: dwc3: Enable AutoRetry feature in the controller
  roc-rk3399-pc: Enable USB3.0 Host

 arch/arm/dts/rk3399-evb-u-boot.dtsi           |  13 +
 arch/arm/dts/rk3399.dtsi                      | 108 +--
 configs/evb-rk3399_defconfig                  |   6 +
 configs/roc-pc-mezzanine-rk3399_defconfig     |   5 +
 configs/roc-pc-rk3399_defconfig               |   6 +
 drivers/Makefile                              |   1 +
 drivers/clk/rockchip/clk_rk3399.c             |  38 +
 drivers/phy/Kconfig                           |   1 +
 drivers/phy/rockchip/Kconfig                  |  21 +
 drivers/phy/rockchip/Makefile                 |   7 +
 drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 312 +++++++
 drivers/phy/rockchip/phy-rockchip-typec.c     | 796 ++++++++++++++++++
 drivers/usb/common/common.c                   |  25 +
 drivers/usb/dwc3/core.c                       | 106 ++-
 drivers/usb/dwc3/core.h                       |  19 +
 drivers/usb/dwc3/dwc3-generic.c               |  33 +-
 drivers/usb/host/Kconfig                      |   9 -
 drivers/usb/host/Makefile                     |   1 -
 drivers/usb/host/xhci-rockchip.c              | 196 -----
 include/dwc3-uboot.h                          |   3 +
 include/linux/usb/phy.h                       |  18 +
 21 files changed, 1427 insertions(+), 297 deletions(-)
 create mode 100644 drivers/phy/rockchip/Kconfig
 create mode 100644 drivers/phy/rockchip/Makefile
 create mode 100644 drivers/phy/rockchip/phy-rockchip-inno-usb2.c
 create mode 100644 drivers/phy/rockchip/phy-rockchip-typec.c
 delete mode 100644 drivers/usb/host/xhci-rockchip.c

-- 
2.17.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

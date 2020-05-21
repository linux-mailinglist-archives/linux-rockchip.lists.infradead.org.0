Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AC951DC47B
	for <lists+linux-rockchip@lfdr.de>; Thu, 21 May 2020 03:17:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CdCFUti/+ntlk1Sz/Xnlyd1cVXnryzArsdGK/xz72uo=; b=NL7f52SKRuY+DZ
	J2L9un8PdHTg/cqqteRKHBBCW1Gb1spUNLnKmk8E0NdFXRzch+K/fH2rY0SRl9aruY0WyhwUaoU2j
	pjBPtNAuW7/wwLOmdkvpoKkDjmJOMO2rhPX9tCkJm9OCZXVy05rwLJMQp5xK6cKV+pYKRLnSQ9j5W
	kFshSAW1JAvg1G9GvBFSlym6lVRSbi6DWf3slqXLIcCnE31mal41z7WQxE7nUECBlWunNYGs2Wl2C
	FI46vh9bCWOVbcIclfG+vytDki0UfIYjm2lqBGUA3zU996nPZvuuNp8oVLohkSdXysGmcsFIgPvP3
	Hhlcxt82gu2VuC+LVFEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbZpq-0002Wz-Nc; Thu, 21 May 2020 01:17:22 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbZpo-0002WA-4V; Thu, 21 May 2020 01:17:21 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1jbZpm-0005ff-Tf; Thu, 21 May 2020 03:17:18 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: arm@kernel.org
Subject: [GIT PULL 1/3] Rockchip dt64 changes for 5.8
Date: Thu, 21 May 2020 03:17:18 +0200
Message-ID: <1970481.V9vR1fIhX2@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_181720_181046_295CFB83 
X-CRM114-Status: GOOD (  15.45  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-rockchip@lists.infradead.org, soc@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Arnd, Kevin, Olof,

please find below some Rockchip devicetree changes for 5.8
Please pull!

Thanks
Heiko

The following changes since commit 8f3d9f354286745c751374f5f1fcafee6b3f3136:

  Linux 5.7-rc1 (2020-04-12 12:35:55 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.8-rockchip-dts64-1

for you to fetch changes up to b2cb68e864222eb3cc1d7c3c06edc40469699983:

  arm64: dts: rockchip: fix pinctrl-names for gpio-leds node on rk3326-odroid-go2 (2020-05-21 02:16:51 +0200)

----------------------------------------------------------------
New soc variant the rk3326 which is essentially a px30 with only one
display controller and a new board using it, the Odroid Advance Go.
sdcard regulator for the rockpro64 and a lot of devicetree fixes
making the dt-binding check a lot happier.

----------------------------------------------------------------
Boris Brezillon (1):
      arm64: dts: rockchip: Define the rockchip Video Decoder node on rk3399

Heiko Stuebner (3):
      arm64: dts: rockchip: add core devicetree for rk3326
      dt-bindings: Add binding for Hardkernel Odroid Go Advance
      arm64: dts: rockchip: add Odroid Advance Go

Johan Jonker (17):
      arm64: dts: rockchip: remove bus-width from mmc nodes in rk3308-roc-cc
      arm64: dts: rockchip: remove #sound-dai-cells from &i2s1 node of rk3399-pinebook-pro.dts
      arm64: dts: rockchip: remove #sound-dai-cells from &spdif node of rk3399-hugsun-x99.dts
      arm64: dts: rockchip: replace RK_FUNC defines in rk3326-odroid-go2
      include: dt-bindings: rockchip: remove unused defines
      arm64: dts: rockchip: fix phy nodename for rk3328
      arm64: dts: rockchip: fix rtl8211f nodename for rk3328 Beelink A1
      arm64: dts: rockchip: fix rtl8211e nodename for rk3399-nanopi4
      arm64: dts: rockchip: fix &pinctrl phy sub nodename for rk3399-nanopi4
      arm64: dts: rockchip: fix rtl8211e nodename for rk3399-orangepi
      arm64: dts: rockchip: fix &pinctrl phy sub nodename for rk3399-orangepi
      arm64: dts: rockchip: fix defines in pd_vio node for rk3399
      arm64: dts: rockchip: rename and label gpio-led subnodes
      arm64: dts: rockchip: remove disable-wp from rk3308-roc-cc emmc node
      arm64: dts: rockchip: add bus-width properties to mmc nodes for px30
      arm64: dts: rockchip: fix pd_tcpc0 and pd_tcpc1 node position on rk3399
      arm64: dts: rockchip: fix pinctrl-names for gpio-leds node on rk3326-odroid-go2

Tobias Schramm (1):
      arm64: dts: rockchip: add micro SD card regulator to rockpro64

 .../devicetree/bindings/arm/rockchip.yaml          |   5 +
 arch/arm64/boot/dts/rockchip/Makefile              |   1 +
 arch/arm64/boot/dts/rockchip/px30.dtsi             |   3 +
 arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts     |   7 +-
 arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts | 557 +++++++++++++++++++++
 arch/arm64/boot/dts/rockchip/rk3326.dtsi           |  15 +
 arch/arm64/boot/dts/rockchip/rk3328-a1.dts         |   2 +-
 arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts     |   4 +-
 arch/arm64/boot/dts/rockchip/rk3328-rock64.dts     |   4 +-
 arch/arm64/boot/dts/rockchip/rk3328.dtsi           |   2 +-
 arch/arm64/boot/dts/rockchip/rk3368-geekbox.dts    |   4 +-
 .../boot/dts/rockchip/rk3368-orion-r68-meta.dts    |   4 +-
 arch/arm64/boot/dts/rockchip/rk3368-r88.dts        |   2 +-
 arch/arm64/boot/dts/rockchip/rk3399-ficus.dts      |  29 +-
 arch/arm64/boot/dts/rockchip/rk3399-firefly.dts    |  10 +-
 arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts |   7 +-
 arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi   |   4 +-
 arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts   |   4 +-
 .../boot/dts/rockchip/rk3399-pinebook-pro.dts      |  11 +-
 arch/arm64/boot/dts/rockchip/rk3399-rock960.dts    |  29 +-
 arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi |  27 +
 arch/arm64/boot/dts/rockchip/rk3399.dtsi           |  34 +-
 include/dt-bindings/pinctrl/rockchip.h             |  11 -
 23 files changed, 691 insertions(+), 85 deletions(-)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3326.dtsi




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

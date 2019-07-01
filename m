Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B09855B814
	for <lists+linux-rockchip@lfdr.de>; Mon,  1 Jul 2019 11:34:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=INFrCknxAtWtWOAiXOUomRVC75mCnSChHTf0aFLtL9E=; b=BTIReCcRA55tjr
	y81Oi4gWPNd7RUjf7BrS4gRj35SqA6qibtgaxjcN9VVSQoXKT0ufT3AGH1CUTJEYyzZcEPmc/TRUV
	RDSBpt7/vlbDu3Yj7TFnihMG+WOLG+KFciglE6wfpn+YKm/MeaY7oBNO2vQVeJC+qDTB+vLSjyL3p
	wZeH4Y3v6lZ/J7YxsjwfXdhL5uCD0LZ2fgUJY5S6HZSbvhErm9EMS0dHO6aYQdmuCPVDPFy5rzCJ4
	bhpSKOFoxDHD5+h4uZALlZuqI/sm38G2DDFpGMihaEmf6eIPboBNo59UYYcDK404ZXrplBEiwzeEF
	DYxIiP27x41z2xNAuE7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhsh9-0006eE-7X; Mon, 01 Jul 2019 09:33:55 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhsgt-0006V2-Lt; Mon, 01 Jul 2019 09:33:41 +0000
Received: from ip5f5a6320.dynamic.kabel-deutschland.de ([95.90.99.32]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hhsgo-0001oa-Ti; Mon, 01 Jul 2019 11:33:34 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: arm@kernel.org
Subject: [GIT PULL 1/2] Rockchip dts32 updates for 5.3 round 2
Date: Mon, 01 Jul 2019 11:33:34 +0200
Message-ID: <1883297.MJ2kjSRBWT@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_023339_868310_FE3E5782 
X-CRM114-Status: GOOD (  10.92  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Arnd, Kevin, Olof,

please find below and in the reply round2 of Rockchip updates for armsoc.

Please pull!

Thanks
Heiko

The following changes since commit b8925b7c2f867df6ce3e20deb4b3e2b9b32b20ff:

  ARM: dts: rockchip: Split GPIO keys for veyron into multiple devices (2019-06-06 12:41:04 +0200)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.3-rockchip-dts32-2

for you to fetch changes up to 519574e3259c8d7e5d78366ef513cfaaf650784f:

  ARM: dts: rockchip: add display nodes for rk322x (2019-06-27 11:57:20 +0200)

----------------------------------------------------------------
Display support for rk3228/rk3229 (up to hdmi output) and more love
for rk3288-veyron boards.

----------------------------------------------------------------
Douglas Anderson (2):
      ARM: dts: rockchip: Configure BT_HOST_WAKE as wake-up signal on veyron
      ARM: dts: rockchip: Configure BT_DEV_WAKE in on rk3288-veyron

Heiko Stuebner (3):
      clk: rockchip: add clock id for watchdog pclk on rk3328
      clk: rockchip: add clock id for hdmi_phy special clock on rk3228
      Merge branch 'v5.3-shared/clk-ids' into v5.3-armsoc/dts32

Justin Swartz (2):
      ARM: dts: rockchip: fix vop iommu-cells on rk322x
      ARM: dts: rockchip: add display nodes for rk322x

Matthias Kaehlcke (1):
      Revert "ARM: dts: rockchip: set PWM delay backlight settings for Minnie"

 arch/arm/boot/dts/rk322x.dtsi                   | 85 ++++++++++++++++++++++++-
 arch/arm/boot/dts/rk3288-veyron-chromebook.dtsi |  2 +
 arch/arm/boot/dts/rk3288-veyron-minnie.dts      |  2 -
 arch/arm/boot/dts/rk3288-veyron.dtsi            | 49 ++++++++++++++
 include/dt-bindings/clock/rk3228-cru.h          |  1 +
 include/dt-bindings/clock/rk3328-cru.h          |  1 +
 6 files changed, 137 insertions(+), 3 deletions(-)




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

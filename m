Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DBF23C6A0
	for <lists+linux-rockchip@lfdr.de>; Tue, 11 Jun 2019 10:54:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZWKX02kPmp18wisnmujq+9QYFVV+VWFn1NALgpUlYqg=; b=C683BfeChOD+P6
	RfmoRp1IuPCo53WNHm5X81EVrnDjlKiSnR505Oa76V+59PcMnExkHSVzVZNki9WAE5Mm161BOlr0z
	qYtrZCzeQcppfiLgbHt2DPtZvF+yuI7671XIVrjfzT+9crtbVYjIOZuNC2IuOWEAYnQ/5K+dF2EHr
	NfaH7+5zgBC2i+sMgQ2c12VHNRdQ9VakSs24JmsRCiXJtIc+3lGWurZFIrK+EjMRROqbAUA+Vdz/k
	VOfpS3t8KpL+E8KhEt47ELPGwl11kytRwHrMc3Sp4xT0r3JgZtpgELdQo6xAq+g2zc3W8T4nABg7Y
	f3fkZLxGDSB6iMrE2p3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hacXs-0001a1-Ga; Tue, 11 Jun 2019 08:54:20 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hacXZ-0001NN-Us; Tue, 11 Jun 2019 08:54:03 +0000
Received: from p508fd648.dip0.t-ipconnect.de ([80.143.214.72]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hacXV-00017y-P8; Tue, 11 Jun 2019 10:53:57 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: arm@kernel.org
Subject: [GIT PULL 1/3] Rockchip dts32 updates for 5.3 round 1
Date: Tue, 11 Jun 2019 10:53:57 +0200
Message-ID: <3004130.oi6ZuZy1Zf@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_015402_139169_81CD0C3F 
X-CRM114-Status: GOOD (  11.61  )
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

please find below and in the replies round1 of Rockchip updates for armsoc.

As the tag implies this includes a lot of attention to the older rk3288-
based Veyron line of ChromeOS devices.

Please pull.

Thanks
Heiko

The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:

  Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.3-rockchip-dts32-1

for you to fetch changes up to b8925b7c2f867df6ce3e20deb4b3e2b9b32b20ff:

  ARM: dts: rockchip: Split GPIO keys for veyron into multiple devices (2019-06-06 12:41:04 +0200)

----------------------------------------------------------------
A lot more love for rk3288 in general and veyron specially with changes
all over the place.

----------------------------------------------------------------
Caesar Wang (1):
      ARM: dts: rockchip: fix PWM clock found on RK3288 Socs

Douglas Anderson (10):
      ARM: dts: rockchip: Remove bogus 'i2s_clk_out' from rk3288-veyron-mickey
      ARM: dts: rockchip: Make rk3288-veyron-mickey's emmc work again
      ARM: dts: rockchip: Make rk3288-veyron-minnie run at hs200
      ARM: dts: rockchip: Add pin names for rk3288-veyron-minnie
      ARM: dts: rockchip: Add pin names for rk3288-veyron-jerry
      ARM: dts: rockchip: Mark that the rk3288 timer might stop in suspend
      ARM: dts: rockchip: Add pin names for rk3288-veyron jaq, mickey, speedy
      ARM: dts: rockchip: Switch to builtin HDMI DDC bus on rk3288-veyron
      ARM: dts: rockchip: Add unwedge pinctrl entries for dw_hdmi on rk3288
      ARM: dts: rockchip: Add HDMI i2c unwedging for rk3288-veyron

John Keeping (1):
      ARM: dts: rockchip: fix pwm-cells for rk3288's pwm3

Matthias Kaehlcke (9):
      ARM: dts: rockchip: raise CPU trip point temperature for veyron to 100 degC
      ARM: dts: rockchip: raise GPU trip point temperatures for veyron
      ARM: dts: raise GPU trip point temperature for speedy to 80 degC
      ARM: dts: rockchip: Add #cooling-cells entry for rk3288 GPU
      ARM: dts: rockchip: Use GPU as cooling device for the GPU thermal zone of the rk3288
      ARM: dts: rockchip: remove GPU 500 MHz OPP on rk3288
      ARM: dts: rockchip: Use the GPU to cool CPU thermal zone of veyron mickey
      ARM: dts: rockchip: Configure the GPU thermal zone for mickey
      ARM: dts: rockchip: Split GPIO keys for veyron into multiple devices

 arch/arm/boot/dts/rk3288-veyron-chromebook.dtsi |  27 +--
 arch/arm/boot/dts/rk3288-veyron-jaq.dts         | 207 +++++++++++++++++++
 arch/arm/boot/dts/rk3288-veyron-jerry.dts       | 207 +++++++++++++++++++
 arch/arm/boot/dts/rk3288-veyron-mickey.dts      | 234 +++++++++++++++++++++-
 arch/arm/boot/dts/rk3288-veyron-minnie.dts      | 254 ++++++++++++++++++++++--
 arch/arm/boot/dts/rk3288-veyron-pinky.dts       |   2 +-
 arch/arm/boot/dts/rk3288-veyron-speedy.dts      | 219 ++++++++++++++++++++
 arch/arm/boot/dts/rk3288-veyron.dtsi            |  29 ++-
 arch/arm/boot/dts/rk3288.dtsi                   |  30 +--
 9 files changed, 1143 insertions(+), 66 deletions(-)




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

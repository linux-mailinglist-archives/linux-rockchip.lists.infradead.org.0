Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56A6E1025B6
	for <lists+linux-rockchip@lfdr.de>; Tue, 19 Nov 2019 14:46:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QQa5P1NKTWqSSKAAUemsn+c1LgkleB81oWDBn7iief4=; b=QwBSwJRcXC6XCI
	puC6uDhjwf3s8E73d1MC8GaBEYUack+bE59yWpMXdCm1Nkxdn0F4T4k2UCl79FeTQlYwAU6Hbq3z5
	2d7716ZMsKBLaCuoiz2Ajt4yyfDFCR3ufu6RYZ8tjs3dak9QcMxKwYEzLEMkoQyZFwNuNkhzRZEvN
	lqqCqC7bBp1oKkpAJCIKO8G7w/nyZURFaAq2PeQb3CFC3SS8AW5EckSEwk+gUY0IIrkBW8djFBsEJ
	vngUcEv1xYVnZPM3mKGPLHA9wAho997msLpNcA/N1XZ3QeMIZaX+Gt9nS+6HKzxnvuNUl5/ggYexl
	Nsk9qPIPkXy7DIOoElbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iX3pU-0002s0-Hn; Tue, 19 Nov 2019 13:46:04 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX3pP-0002rM-KR; Tue, 19 Nov 2019 13:46:02 +0000
Received: from wf0530.dip.tu-dresden.de ([141.76.182.18] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iX3pN-0005yT-5D; Tue, 19 Nov 2019 14:45:57 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: arm@kernel.org
Subject: [GIT PULL] Rockchip dts64 changes for 5.5 - round 3
Date: Tue, 19 Nov 2019 14:45:56 +0100
Message-ID: <3235791.ImxGk5JOut@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_054601_340716_91A9F683 
X-CRM114-Status: GOOD (  14.15  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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

Hi (arm-)soc people,

for whatever reason I've gotten a big avalanche of patches for various
arm64 parts since the last pull request and with -rc8 being real I thought
I'll try to get these into 5.5 still to not make the wait too long ;-)

And I don't think it's anything earth shattering in there.


If it's not overly late, please pull, otherwise I'll move these over to 5.6
which also wouldn't be problematic.

Thanks
Heiko

The following changes since commit 75aa567803b15e679432655badf95cd30b66b930:

  arm64: dts: rockchip: fix sdmmc detection on boot on rk3328-roc-cc (2019-11-09 02:15:22 +0100)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.5-rockchip-dts64-3

for you to fetch changes up to c36308abe4110e4db362d5e2ae3797834a7b1192:

  arm64: dts: rockchip: Enable MTD Flash on rk3399-roc-pc (2019-11-19 00:17:46 +0100)

----------------------------------------------------------------
PCIe regulator improvements for RockPi4 and Rock960, NanoPi improvements
for PCIe and cooling maps, a big number of improvements for the
rk3399-roc-pc (spi-flash, sdmmc, regulators, hdmi-sound, gpu node) and
some more things for the px30-evb (thermal handling and dropping an
operating point).

----------------------------------------------------------------
Anand Moon (1):
      arm64: dts: rockchip: Add regulators for pcie on rk3399-rock960

Heiko Stuebner (3):
      arm64: dts: rockchip: remove 408MHz operating point from px30
      arm64: dts: rockchip: add thermal infrastructure to px30
      arm64: dts: rockchip: enable tsadc on px30-evb

Kever Yang (1):
      arm64: dts: rockchip: Fix min voltage for rk3399-firefly vdd_log

Markus Reichl (8):
      arm64: dts: rockchip: Add node for gpu on rk3399-roc-pc
      arm64: dts: rockchip: Add regulators for pcie on rk3399-roc-pc
      arm64: dts: rockchip: Enable HDMI Sound on rk3399-roc-pc
      arm64: dts: rockchip: Disable HS400 for mmc on rk3399-roc-pc
      arm64: dts: rockchip: Fix vdd_log on rk3399-roc-pc
      arm64: dts: rockchip: Use correct pin for lcd-reset pinctrl on rk3399-roc-pc
      arm64: dts: rockchip: Add SDR104 mode to SD-card I/F on rk3399-roc-pc
      arm64: dts: rockchip: Enable MTD Flash on rk3399-roc-pc

Matwey V. Kornilov (1):
      arm64: dts: rockchip: Enable PCIe for Radxa Rock Pi 4 board

Robin Murphy (2):
      arm64: dts: rockchip: Fix NanoPC-T4 cooling maps
      arm64: dts: rockchip: Improve nanopi4 PCIe

 arch/arm64/boot/dts/rockchip/px30-evb.dts          |  6 ++
 arch/arm64/boot/dts/rockchip/px30.dtsi             | 71 ++++++++++++++++++++--
 arch/arm64/boot/dts/rockchip/rk3399-firefly.dts    |  2 +-
 arch/arm64/boot/dts/rockchip/rk3399-nanopc-t4.dts  | 28 +--------
 arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi   | 27 +++++++-
 .../boot/dts/rockchip/rk3399-roc-pc-mezzanine.dts  |  2 +
 arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi    | 62 ++++++++++++++++---
 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dts  | 14 +++++
 arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi   | 11 ++++
 9 files changed, 181 insertions(+), 42 deletions(-)




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

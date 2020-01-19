Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ACEC1420E3
	for <lists+linux-rockchip@lfdr.de>; Mon, 20 Jan 2020 00:26:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6ULofoSkgKfn1EcdSF6dMLAdyjEHJhUlCGFO01YShaQ=; b=L5CVFGWBCYfWG5
	jgYk/aIx3Aknv/3IDrlHLaEPgJ9m4sp73KFXrJZyAkQDnIe5Dzs5V4z46aVAfL62wRoDoC+nszhVR
	HRqj9FYnUEM9s9nUqqxHjHjHFloSiH11Akte2rIS2CEW5rjvcrXsRsZwF1lT99qiZKn3MHuweUKtz
	hgzYstsMN5gkYfWaulo8pwSvcuQWAWypQ3hANObtpe5izan/7RUitlhtm/eWYzEjmB85sF92qHLkS
	4SKZ7NGEK5nhcMjTd2cwRg5mdowTSSUWv3dX1pf/+J6prcPu8ftuGwj9Vw2jX/lmU8gvx3e/tnUa8
	lc+IZZB2E9hNkKBlJEjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itJxE-0004aT-09; Sun, 19 Jan 2020 23:26:04 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itJx9-0004Zo-SA; Sun, 19 Jan 2020 23:26:01 +0000
Received: from ip5f5a5d2f.dynamic.kabel-deutschland.de ([95.90.93.47]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1itJx3-0003Dn-JD; Mon, 20 Jan 2020 00:25:53 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: arm@kernel.org
Subject: [GIT PULL 1/2] Rockchip dt32 for 5.6 round2
Date: Mon, 20 Jan 2020 00:25:50 +0100
Message-ID: <3473489.DgqFdXXe5V@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200119_152600_057303_19A357C2 
X-CRM114-Status: GOOD (  13.62  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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

some additional cleanups came up since the previous round and with
Linus probably doing an -rc8 there may be still time for it.

So please find here and in the reply some cleanup patches and the actual
dsi display for the px30 eval board and if there is still time, please pull!

Thanks
Heiko

The following changes since commit a950c4c63cde7e5c9d849f6ced95f60ed163548d:

  ARM: dts: rockchip: Use ABI name for recovery mode pin on veyron fievel/tiger (2020-01-09 00:22:26 +0100)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git v5.6-rockchip-dts32-2

for you to fetch changes up to 8039c828a6cba966c9bdfacebff21ff823a94617:

  ARM: dts: rockchip: Kill off "simple-panel" compatibles (2020-01-18 23:57:39 +0100)

----------------------------------------------------------------
Removal of the simple-panel compatible and some minor
additional cleanups.

----------------------------------------------------------------
Johan Jonker (2):
      ARM: dts: rockchip: add reg property to brcmf sub node for rk3188-bqedison2qc
      ARM: dts: rockchip: rename dwmmc node names to mmc

Rob Herring (1):
      ARM: dts: rockchip: Kill off "simple-panel" compatibles

 arch/arm/boot/dts/rk3036.dtsi              | 6 +++---
 arch/arm/boot/dts/rk3188-bqedison2qc.dts   | 3 +++
 arch/arm/boot/dts/rk322x.dtsi              | 6 +++---
 arch/arm/boot/dts/rk3288-evb.dtsi          | 2 +-
 arch/arm/boot/dts/rk3288-veyron-edp.dtsi   | 2 +-
 arch/arm/boot/dts/rk3288-veyron-minnie.dts | 2 +-
 arch/arm/boot/dts/rk3288-veyron-tiger.dts  | 2 +-
 arch/arm/boot/dts/rk3288.dtsi              | 8 ++++----
 arch/arm/boot/dts/rk3xxx.dtsi              | 6 +++---
 arch/arm/boot/dts/rv1108.dtsi              | 6 +++---
 10 files changed, 23 insertions(+), 20 deletions(-)




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

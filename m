Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10D8D185C8
	for <lists+linux-rockchip@lfdr.de>; Thu,  9 May 2019 09:08:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z/bTdPdy5YJ5juTjfKDIsc3tbD6wUI7DK4zSnqZz8ww=; b=IZBx9oKlMh4HFH
	GnYDpcYhbhdYUBDQ2H6FTotgVMqX9JOSBZNnqe1wpuB+IzhXyY/KtAa7lbj5m9cGpEKzsp+GOm+om
	rfVSXOeWxRToASKBL/uO4rJsgkealBpUiWM+7XSF++3mWl53NmbVighhj79yvetCzIwYNBJfDjNar
	1ixzgJX3fAb7AmbivHdpBxw5uEY6TazkegPubTjGZ9GVXFbw6eiUCjt6DtEX88VGAkpQEfRxXE0Ng
	uNS4rPez37ETEUM4yrmidVvp3cP1tMgMamWw+61X+6Qa1lSr2jG0wXB8uFIwviTAEkOqcnDWme1LH
	nwS+5LF80UMByf3+mVkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOdAD-0001VU-SM; Thu, 09 May 2019 07:08:21 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOdA8-0001Uc-65
 for linux-rockchip@lists.infradead.org; Thu, 09 May 2019 07:08:18 +0000
Received: from aptenodytes (aaubervilliers-681-1-86-253.w90-88.abo.wanadoo.fr
 [90.88.28.253]) (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id 3BA9410000A;
 Thu,  9 May 2019 07:07:57 +0000 (UTC)
Message-ID: <b3755da63208dffc5c0f7676ece0fe55d4dfd4f7.camel@bootlin.com>
Subject: Re: [RESEND PATCH v7 00/11] rockchip: Add new rk3399 boards
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>, Kever Yang
 <kever.yang@rock-chips.com>, Akash Gajjar <akash@openedev.com>
Date: Thu, 09 May 2019 09:07:43 +0200
In-Reply-To: <20190508054151.21762-1-jagan@amarulasolutions.com>
References: <20190508054151.21762-1-jagan@amarulasolutions.com>
Organization: Bootlin
User-Agent: Evolution 3.32.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_000816_532774_77FEDD90 
X-CRM114-Status: GOOD (  16.07  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.231 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com,
 u-boot@lists.denx.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi,

On Wed, 2019-05-08 at 11:11 +0530, Jagan Teki wrote:
> (Sorry for the noice, I have missed to send two patches from v7)
> 
> This is v7 resend patchset for New rk3399 boards support wrt previous
> version[1]
> 
> Unfortunately initial version of creating rk3399-u-boot.dtsi and 
> orangepi rk3399 changes are merged, so this is rework on top of 
> u-boot-rockchip/master.
> 
> Overall this series add support below rk3399 boards
> - NanoPI M4
> - NanoPC T4
> - NanoPI NEO4
> - Orangepi RK3399
> - Rock PI 4
> - Rockpro64
> 
> All the respective dts(i) files are synced from Linux 5.1-rc2 and few
> dts(i) from linux-next.
> 
> SoC u-boot specific dtsi rk3399-u-boot.dtsi changes are part of another
> series [3].
> 
> Out of all above boards Rockpor64, Rock-PI and Nanopi NEO4 would support
> booting via Rockchip miniloader as of now.

Could you send these two boards in a separate series so that we avoid
merging them for now (because SPL support is broken) and then re-
iterate the series later with the DDR bringup? Or maybe find a way to
disable SPL support, but in any case, it's not ok to merge a board with
SPL enabled and broken.

Cheers,

Paul

> For booting the same with SPL NEO4 would require dynamic dram timing
> detection and rest require LPDDR4 code. There is WIP[2] for these
> dependencies and this would require big chunk of changes will effect
> all the rk3399 boards, so I'm planning to mark it for next MW. 
> 
> Changes for v7:
> - rebase on top of u-boot-rockchip/master
> - add SPL_TEXT_BASE on each board defconfig
> - rebase on required changes
> Changes for v6:
> - Include Nanopc T4 support patch
> - drop rk3399-u-boot.dtsi patch since it is send separately.
> Changes for v5:
> - Make all changes related to move sdmmc, spi1 u-boot,dm-pre-reloc
>   properties into all rk3399 dts(i) files.
> Changes for v4:
> - don't include existing dts(i) sdmmc, u-boot,dm-pre-reloc into
>   rk3399-u-boot.dtsi
> Changes for v3:
> - drop NanoPC T4 for now, since board is yet to receive.
> - add Rock PI-4 board.
> - add separate -u-boot.dtsi file for nanopi4 sdram changes.
> - collect Paul, Philipp and Kever Reviewed-by tags
> 
> Travis-CI:
> https://travis-ci.org/openedev/u-boot-amarula/builds/529284236
> 
> [1] https://patchwork.ozlabs.org/cover/1096473/
> [2] https://github.com/amarula/u-boot-amarula/tree/rockdev-lpddr4
> [3] https://patchwork.ozlabs.org/cover/1091909/
> 
> Any inputs?
> Jagan.
> 
> Jagan Teki (11):
>   rockchip: dts: rk3399: Sync pwm2_pin_pull_down from Linux 5.1-rc2
>   Kconfig: Add default SPL_FIT_GENERATOR for rockchip
>   arm: rockchip: rk3399: Move common configs in Kconfig
>   rockchip: dts: rk3399: Sync rk3399-nanopi4.dtsi from Linux
>   rockchip: dts: rk3399: nanopi4: Use CD pin as RK_FUNC_1
>   rockchip: rk3399: Add Nanopi M4 board support
>   rockchip: rk3399: Add Nanopc T4 board support
>   rockchip: rk3399: Add Nanopi NEO4 board support
>   rockchip: rk3399: Add Rockpro64 board support
>   rockchip: rk3399: Add Rock PI 4 support
>   doc: rockchip: Add global doc for rk3399 build/flash
> 
>  Kconfig                                     |   1 +
>  arch/arm/dts/Makefile                       |   5 +
>  arch/arm/dts/rk3399-nanopc-t4-u-boot.dtsi   |   7 +
>  arch/arm/dts/rk3399-nanopc-t4.dts           |  91 +++
>  arch/arm/dts/rk3399-nanopi-m4-u-boot.dtsi   |   7 +
>  arch/arm/dts/rk3399-nanopi-m4.dts           |  66 ++
>  arch/arm/dts/rk3399-nanopi-neo4-u-boot.dtsi |   6 +
>  arch/arm/dts/rk3399-nanopi-neo4.dts         |  50 ++
>  arch/arm/dts/rk3399-nanopi4-u-boot.dtsi     |  11 +
>  arch/arm/dts/rk3399-nanopi4.dtsi            | 703 +++++++++++++++++++
>  arch/arm/dts/rk3399-rock-pi-4-u-boot.dtsi   |   6 +
>  arch/arm/dts/rk3399-rock-pi-4.dts           | 606 +++++++++++++++++
>  arch/arm/dts/rk3399-rockpro64-u-boot.dtsi   |   6 +
>  arch/arm/dts/rk3399-rockpro64.dts           | 712 ++++++++++++++++++++
>  arch/arm/dts/rk3399.dtsi                    |   5 +
>  arch/arm/mach-rockchip/Kconfig              |  16 +
>  board/rockchip/evb_rk3399/MAINTAINERS       |  32 +
>  configs/chromebook_bob_defconfig            |  17 -
>  configs/evb-rk3399_defconfig                |  17 -
>  configs/ficus-rk3399_defconfig              |  17 -
>  configs/firefly-rk3399_defconfig            |  17 -
>  configs/nanopc-t4-rk3399_defconfig          |  59 ++
>  configs/nanopi-m4-rk3399_defconfig          |  59 ++
>  configs/nanopi-neo4-rk3399_defconfig        |  59 ++
>  configs/orangepi-rk3399_defconfig           |  17 -
>  configs/puma-rk3399_defconfig               |  16 -
>  configs/rock-pi-4-rk3399_defconfig          |  59 ++
>  configs/rock960-rk3399_defconfig            |  17 -
>  configs/rockpro64-rk3399_defconfig          |  59 ++
>  doc/README.rockchip                         | 233 ++++++-
>  30 files changed, 2857 insertions(+), 119 deletions(-)
>  create mode 100644 arch/arm/dts/rk3399-nanopc-t4-u-boot.dtsi
>  create mode 100644 arch/arm/dts/rk3399-nanopc-t4.dts
>  create mode 100644 arch/arm/dts/rk3399-nanopi-m4-u-boot.dtsi
>  create mode 100644 arch/arm/dts/rk3399-nanopi-m4.dts
>  create mode 100644 arch/arm/dts/rk3399-nanopi-neo4-u-boot.dtsi
>  create mode 100644 arch/arm/dts/rk3399-nanopi-neo4.dts
>  create mode 100644 arch/arm/dts/rk3399-nanopi4-u-boot.dtsi
>  create mode 100644 arch/arm/dts/rk3399-nanopi4.dtsi
>  create mode 100644 arch/arm/dts/rk3399-rock-pi-4-u-boot.dtsi
>  create mode 100644 arch/arm/dts/rk3399-rock-pi-4.dts
>  create mode 100644 arch/arm/dts/rk3399-rockpro64-u-boot.dtsi
>  create mode 100644 arch/arm/dts/rk3399-rockpro64.dts
>  create mode 100644 configs/nanopc-t4-rk3399_defconfig
>  create mode 100644 configs/nanopi-m4-rk3399_defconfig
>  create mode 100644 configs/nanopi-neo4-rk3399_defconfig
>  create mode 100644 configs/rock-pi-4-rk3399_defconfig
>  create mode 100644 configs/rockpro64-rk3399_defconfig
> 
-- 
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

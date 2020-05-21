Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95DE71DC47D
	for <lists+linux-rockchip@lfdr.de>; Thu, 21 May 2020 03:18:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kX3evftk/HH//Us9AV4Pvcw8GEP81LNnfE73JSrJ1kE=; b=R8YuoVJWua8eEe
	LYLQao2f/jV0b4Ove1+mePe+EL1NUG0bfWXZ2F4SyDocsfazlmzyj59qg8TbnIBgAHgNmqeNO094n
	IU9WpoZ1K/CpThHAli+QPZ7FMPrnj2Tg7H3F/tCpfPcd1UtWrRKxlg1iQ+oJGe+T4blPIjvb0UimK
	Z2lrQBdKVnRk+DzfQigOYy0CwFJjkLRfbYxhlkF2XTWsH8wlQcc9u8jg/y/2d0FBAEjB2im69wHgO
	QsVZZ7iL5Ov3cvEizOTW/fm+hmEgz2KBlMui5VbWKWAnTcmYd2e19M66r1aIPp4yj6Lfzo3QiUUoY
	G71ZcNvdf5DIOTc+rpfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbZqV-0002sC-V2; Thu, 21 May 2020 01:18:03 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbZqS-0002rJ-On; Thu, 21 May 2020 01:18:02 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1jbZqQ-0005g6-GP; Thu, 21 May 2020 03:17:58 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: arm@kernel.org
Subject: [GIT PULL 2/3] Rockchip dt32 changes for 5.8
Date: Thu, 21 May 2020 03:17:58 +0200
Message-ID: <3735080.6Cexqc3t0Y@phil>
In-Reply-To: <1970481.V9vR1fIhX2@phil>
References: <1970481.V9vR1fIhX2@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_181800_800633_9FB5071F 
X-CRM114-Status: GOOD (  12.06  )
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

The following changes since commit 8f3d9f354286745c751374f5f1fcafee6b3f3136:

  Linux 5.7-rc1 (2020-04-12 12:35:55 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.8-rockchip-dts32-1

for you to fetch changes up to 54b1a4e070330c3fba5becfb0b619bf360bc2657:

  ARM: dts: rockchip: add rga node for rk322x (2020-05-19 00:50:21 +0200)

----------------------------------------------------------------
RGA node for rk322x, wifi node for rk3229-xms6 and some cleanups.

----------------------------------------------------------------
Johan Jonker (2):
      ARM: dts: rockchip: rename and label gpio-led subnodes
      ARM: dts: rockchip: remove identical #include from rk3288.dtsi

Justin Swartz (3):
      ARM: dts: enable WLAN for Mecer Xtreme Mini S6
      ARM: dts: remove disable-wp from rk3229-xms6 emmc
      ARM: dts: rockchip: add rga node for rk322x

 arch/arm/boot/dts/rk3036-kylin.dts          |  2 +-
 arch/arm/boot/dts/rk3066a-mk808.dts         |  2 +-
 arch/arm/boot/dts/rk3188-radxarock.dts      |  6 +++---
 arch/arm/boot/dts/rk3229-xms6.dts           | 19 +++++++++++++++++--
 arch/arm/boot/dts/rk322x.dtsi               | 10 ++++++++++
 arch/arm/boot/dts/rk3288-firefly-reload.dts | 12 ++++++------
 arch/arm/boot/dts/rk3288-firefly.dtsi       | 12 ++++++------
 arch/arm/boot/dts/rk3288-miqi.dts           |  2 +-
 arch/arm/boot/dts/rk3288-phycore-som.dtsi   |  6 +++---
 arch/arm/boot/dts/rk3288-rock2-square.dts   |  4 ++--
 arch/arm/boot/dts/rk3288-tinker.dtsi        |  6 +++---
 arch/arm/boot/dts/rk3288.dtsi               |  1 -
 12 files changed, 53 insertions(+), 29 deletions(-)




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

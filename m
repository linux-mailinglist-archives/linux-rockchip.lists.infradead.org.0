Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E11441362B0
	for <lists+linux-rockchip@lfdr.de>; Thu,  9 Jan 2020 22:38:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VkKZkP6oZPGbJvH8Hn8BM+VAXZJriB3DZY5hnxhDhsQ=; b=jAHkptvjRV5g6B
	ZQ3icY+moT6YpKsCS+py/AQZfeu92FTb66yZYGbUnErLzluh9RNJPpUwmOhHGc5de7oi//ZmipRWC
	WdwcDd338OjC8sTyDL2OlOXr0HRRnsm8kvfw90PA8rM5lOLBrkSH0TV3lf/RuX1O9SlfFXkpk77d0
	BZwtO3qpiEo9bbkLuGLDAKe0v5MHXHpeXO7UxiUivH5j7DNyYZ95GQHvBW68b0p9zMRTL1WsovaWP
	AQ967ZZXRF8CEsu7/+2whYHzKWno4En0Qs+g1FCBzCcrEzGpq2zw8gSb/HAPF6hVy/BFyVAXwJ/uB
	BykUL06+MCwP8Xw6i7Qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipfVL-0004ap-08; Thu, 09 Jan 2020 21:38:11 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipfVH-0004a2-6V; Thu, 09 Jan 2020 21:38:09 +0000
Received: from ip5f5a5f74.dynamic.kabel-deutschland.de ([95.90.95.116]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1ipfVE-0000gD-PJ; Thu, 09 Jan 2020 22:38:04 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: arm@kernel.org
Subject: [GIT PULL] Rockchip dt fix for 5.5
Date: Thu, 09 Jan 2020 22:38:04 +0100
Message-ID: <2054603.JKFSmqfO19@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_133807_386572_D8F48E1C 
X-CRM114-Status: GOOD (  12.29  )
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
Cc: linux-rockchip@lists.infradead.org, soc@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Arnd, Kevin, Olof,

please find below a single fix for the interrupt polarity of the ir receiver
of the Beelink A1 board. It was reported that without that fix no IR stuff
could be received on the board.

The following changes since commit e42617b825f8073569da76dc4510bfa019b1c35a:

  Linux 5.5-rc1 (2019-12-08 14:57:55 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.5-rockchip-dtsfixes

for you to fetch changes up to 3433bdf98d8e9dd923118577dc582216a143e60d:

  arm64: dts: rockchip: Fix IR on Beelink A1 (2020-01-06 12:39:26 +0100)

----------------------------------------------------------------
A fix for the Beelink A1 IR receiver setting the correct polarity.

----------------------------------------------------------------
Robin Murphy (1):
      arm64: dts: rockchip: Fix IR on Beelink A1

 arch/arm64/boot/dts/rockchip/rk3328-a1.dts | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

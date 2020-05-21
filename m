Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 050031DC480
	for <lists+linux-rockchip@lfdr.de>; Thu, 21 May 2020 03:19:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L7xQV8b0xaWstkSXhT+n3aZUeYhAwkDdluAL8L+nZ1k=; b=XGlWKI0gkjcHhX
	t/VMvqEpNOJyz9UsTfcmvTHD8YMlrcuMzmaAZ4oznB0h8IJQPIBIUNTk+l48484NQQ+l9Q4bbTyNy
	BHdEh0X8SoALdR9QJbjMTg6i+69bQblKUAdtMV6O68+iGzwm3MtXdAC0WXRiWnAJuYG6Dm2OJELcT
	KQXvDtJG4qG3NiILE/FD4UKwsQuslYijcgOBKnRhs2AUsKfZR3KyCWpoqzmUdApu2KKKAzoVqgEtc
	IbK8UJ1O53qqHYg5jAUVStGQmXUg8XVJmmQcYS0OMYy6i/WZmhUcWqiLZvvF8HrMK0agSMaHK5e5a
	TKnxBJ8BQqAt6/yFUKsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbZrP-0003FV-VF; Thu, 21 May 2020 01:18:59 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbZrM-0003EN-UM; Thu, 21 May 2020 01:18:58 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1jbZrL-0005gb-R6; Thu, 21 May 2020 03:18:55 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: arm@kernel.org
Subject: [GIT PULL 3/3] Rockchip soc32 changes for 5.8
Date: Thu, 21 May 2020 03:18:55 +0200
Message-ID: <2307012.mB7vfBFN1M@phil>
In-Reply-To: <1970481.V9vR1fIhX2@phil>
References: <1970481.V9vR1fIhX2@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_181856_976269_ACBD5913 
X-CRM114-Status: GOOD (  10.92  )
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

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.8-rockchip-soc32-1

for you to fetch changes up to 0b973c65d2f2da049252bc8370e4cf037b99c7e9:

  ARM: rockchip: fix spelling mistake "to" -> "too" (2020-04-13 09:40:45 +0200)

----------------------------------------------------------------
A spelling fix and stop using clk_provider.h when of_clk.h is enough
as the soc file is only a clock user, not a provider.

----------------------------------------------------------------
Colin Ian King (1):
      ARM: rockchip: fix spelling mistake "to" -> "too"

Geert Uytterhoeven (1):
      ARM: rockchip: Replace <linux/clk-provider.h> by <linux/of_clk.h>

 arch/arm/mach-rockchip/platsmp.c  | 2 +-
 arch/arm/mach-rockchip/rockchip.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8CFAF6C06
	for <lists+linux-rockchip@lfdr.de>; Mon, 11 Nov 2019 01:45:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=M9XQv4qHVrYqFbKRuo7pLPmGjFNev3srIWhNXDQ8LvM=; b=B5HJwssiicwTx/
	nHgE6xwVSXNZmdC0cSiElPIBP+s60eR35Re2NzNYiA0s1Vzpkcn8xXDAttJ/ITQblOv4LiJjZWXS+
	PSatPzMRotbYEQNLhXQHSLyGEWSdIKlgwkkzFMNMhc11frPxvvEAG01/BoOgK9NuE4ENobTVB9oye
	p6X7v3juYrYjoWyXcwMOUKLvE9YKCSs0Bras2SQOWI8NFmmAMQLYZqiGrCVFEQaPDbtwOSseYLGD6
	UGBa6UhWJYVWQ5MUgYuNbWLop1PpRv08h9dBuZuvMOEn88NEUelljgIYg+bnNum2OhT2dfWg2cffc
	iA+pbY0NdvZDPxgj9yvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTxpQ-0001hu-RD; Mon, 11 Nov 2019 00:45:12 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTxpM-0001UK-V0
 for linux-rockchip@lists.infradead.org; Mon, 11 Nov 2019 00:45:10 +0000
Received: from ip5f5a6266.dynamic.kabel-deutschland.de ([95.90.98.102]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iTxpJ-00062S-QQ; Mon, 11 Nov 2019 01:45:05 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: mturquette@baylibre.com, Stephen Boyd <sboyd@kernel.org>
Subject: [GIT PULL] Rockchip clock updates for 5.4
Date: Mon, 11 Nov 2019 01:45:05 +0100
Message-ID: <2139639.gTPWsosUxc@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191110_164509_169770_2197C605 
X-CRM114-Status: GOOD (  10.30  )
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
Cc: linux-rockchip@lists.infradead.org, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Mike, Stephen,

please find below rockchip clock changes for 5.5
Please pull

Thanks
Heiko

The following changes since commit 54ecb8f7028c5eb3d740bb82b0f1d90f2df63c5c:

  Linux 5.4-rc1 (2019-09-30 10:35:40 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git v5.5-rockchip-clk-1

for you to fetch changes up to 3b0b4ebfd761943179fe03b107f66c72c3b5c8d4:

  clk: rockchip: protect the pclk_usb_grf as critical on px30 (2019-11-05 20:53:42 +0100)

----------------------------------------------------------------
Adding a missing static declaration for clk_half_divider_ops
and a number of improvements for the px30 clock tree.

----------------------------------------------------------------
Ben Dooks (Codethink) (1):
      clk: rockchip: make clk_half_divider_ops static

Finley Xiao (2):
      clk: rockchip: Add div50 clock-ids for sdmmc on px30 and nandc
      clk: rockchip: Add div50 clocks for px30 sdmmc, emmc, sdio and nandc

Heiko Stuebner (3):
      clk: rockchip: move px30 critical clocks to correct clock controller
      clk: rockchip: add video-related niu clocks as critical on px30
      clk: rockchip: protect the pclk_usb_grf as critical on px30

 drivers/clk/rockchip/clk-half-divider.c |  3 +-
 drivers/clk/rockchip/clk-px30.c         | 70 ++++++++++++++++++++++++++-------
 include/dt-bindings/clock/px30-cru.h    |  2 +
 3 files changed, 59 insertions(+), 16 deletions(-)





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

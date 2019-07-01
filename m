Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2EDF5B81C
	for <lists+linux-rockchip@lfdr.de>; Mon,  1 Jul 2019 11:36:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WZdOWq1wMhrlZtvF5goAl4EeGE4B0XQM252O/Fwp+IE=; b=r/iYMWPqLytTD+
	CWT2ewsor7wAc1glElOXYgPRPOCqpS+TYGXInu47HLzHtsbeN63vc6f7weOb1CxDEJwI8RKjbvEK6
	vVxIZQZGqV1r47vLclvQWDlxvLPkdm1ruGpRC4jB9WAJcBxZ6D8BeIl85NhyCXHAJ9CffBGLl6dI5
	seryKBgI4HwpsY94kKlH7319cDrRZh6MtGfQpD7mijUmdacMqzYwIs6ErEI3QTQ1EUEp58uAgbLp4
	UEg48zZQKKqZuczD328wQwydsjl/VKecOUFbga7o8d7WSZ16zKJpFnUHRa8DlGzt3c652z/9HxSVb
	beZghIy9hEyd/qIkYkUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhsjY-0000DM-PC; Mon, 01 Jul 2019 09:36:24 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhsjV-0000Ca-Eq
 for linux-rockchip@lists.infradead.org; Mon, 01 Jul 2019 09:36:22 +0000
Received: from ip5f5a6320.dynamic.kabel-deutschland.de ([95.90.99.32]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hhsjS-0001pq-GI; Mon, 01 Jul 2019 11:36:18 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: mturquette@baylibre.com, Stephen Boyd <sboyd@kernel.org>
Subject: [GIT PULL] Rockchip clock updates for 5.3
Date: Mon, 01 Jul 2019 11:36:17 +0200
Message-ID: <3855405.N158XnxgeL@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_023621_653325_928E84D1 
X-CRM114-Status: GOOD (  11.11  )
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

please find below rockchip clock changes for 5.3

Please pull

Thanks
Heiko

The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:

  Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.3-rockchip-clk1

for you to fetch changes up to 794e94ca83450c436313df18291e139cf5f9121f:

  clk: rockchip: export HDMIPHY clock on rk3228 (2019-06-27 11:02:28 +0200)

----------------------------------------------------------------
New clock-ids+exports for two clocks, cleanup for some boilerplate code
for clocks we cannot really control from the kernel, but want to define
separately to match the hardware-description (watchdog in secure-grf).
Improvement in mmc phase calculation and cleanup of some rate defintions.

----------------------------------------------------------------
Douglas Anderson (4):
      clk: rockchip: Use clk_hw_get_rate() in MMC phase calculation
      clk: rockchip: Don't yell about bad mmc phases when getting
      clk: rockchip: Slightly more accurate math in rockchip_mmc_get_phase()
      clk: rockchip: Remove 48 MHz PLL rate from rk3288

Heiko Stuebner (7):
      clk: rockchip: add a type from SGRF-controlled gate clocks
      clk: rockchip: convert pclk_wdt boilerplat to new SGRF_GATE macro
      clk: rockchip: add clock id for watchdog pclk on rk3328
      clk: rockchip: add clock id for hdmi_phy special clock on rk3228
      Merge branch 'v5.3-shared/clk-ids' into v5.3-clk/next
      clk: rockchip: add watchdog pclk on rk3328
      clk: rockchip: export HDMIPHY clock on rk3228

Justin Swartz (1):
      clk: rockchip: add 1.464GHz cpu-clock rate to rk3228

 drivers/clk/rockchip/clk-mmc-phase.c   | 14 ++++++--------
 drivers/clk/rockchip/clk-px30.c        | 12 +++---------
 drivers/clk/rockchip/clk-rk3228.c      |  3 ++-
 drivers/clk/rockchip/clk-rk3288.c      | 13 +++----------
 drivers/clk/rockchip/clk-rk3328.c      |  3 +++
 drivers/clk/rockchip/clk-rk3368.c      | 12 +++---------
 drivers/clk/rockchip/clk-rk3399.c      | 12 +++---------
 drivers/clk/rockchip/clk.h             |  4 ++++
 include/dt-bindings/clock/rk3228-cru.h |  1 +
 include/dt-bindings/clock/rk3328-cru.h |  1 +
 10 files changed, 29 insertions(+), 46 deletions(-)




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

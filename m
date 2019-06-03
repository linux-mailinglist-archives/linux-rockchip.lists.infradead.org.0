Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A2B93362B
	for <lists+linux-rockchip@lfdr.de>; Mon,  3 Jun 2019 19:10:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JDB/wWVJOAuRmBMw0rV2BhC2yuPmzBu49wCliPYL+iQ=; b=iF0BDL70Rgko2Q
	tZofSDH9GZ0KHtOCxB8EfFQABiw7Tk1APILiqPO+xRncDtOowbjikT1Yn2sD4bdkDm7cRsmquwImE
	b9stJYIvnv+q7/QzQ/c4fHnmweIK5kx0GbaxLZkgQHNbzaMkrAi8/NbtfuFzT2jIMSD/4Pq0/xJp1
	1jeR+EqNmVismAQRwc8AuMCoL5/TkR0aRi6E6VkgnlEG+0zzm0Z7duLmnEwj1qPWli2eoPYBML/ZT
	YBymTe0crlCTYIqymR/Jzrr5KXwKRlVN0fNNdvVVGTLHfAr0/cjTKhPOwbKEa/K9CRT6JKhJklXar
	5cAH/goUJzA1aItiJMMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXqTW-00032j-LE; Mon, 03 Jun 2019 17:10:22 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXqSk-0000uo-I2; Mon, 03 Jun 2019 17:09:37 +0000
Received: from ip5f5a6320.dynamic.kabel-deutschland.de ([95.90.99.32]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hXqSd-0004ZW-Vz; Mon, 03 Jun 2019 19:09:28 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: broonie@kernel.org,
	lee.jones@linaro.org
Subject: [PATCH v8 RESEND 0/5] support a new rk80x pmic-variants (rk817 and
 rk809)
Date: Mon,  3 Jun 2019 19:08:55 +0200
Message-Id: <20190603170900.5195-1-heiko@sntech.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_100934_749017_C2B84851 
X-CRM114-Status: UNSURE (   9.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: huangtao@rock-chips.com, Heiko Stuebner <heiko@sntech.de>,
 zhangqing@rock-chips.com, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, tony.xie@rock-chips.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

I've picked up and rebased Tony's patch-series for rk809 and rk817.
From the last iteration it looks like the regulator-portion did
fall through the cracks, the other patches seem to be sufficiently
reviewed/acked.

The regulator-patch could either just be picked alone to the regulator-
tree or with an Ack go through the mfd tree with the other patches.


Original cover-letter + changelog follows:

Most of functions and registers of the rk817 and rk808 are the same,
so they can share allmost all codes.

Their specifications are as follows:
  1) The RK809 and RK809 consist of 5 DCDCs, 9 LDOs and have the same
registers
     for these components except dcdc5.
  2) The dcdc5 is a boost dcdc for RK817 and is a buck for RK809.
  3) The RK817 has one switch but The Rk809 has two.

Changes in V2:
1. initialize the pm_pwroff_fn to NULL.
2. use EXPORT_SYMBOL_GPL to export pm_power_off_prepare.
3. change patch 2/3/4/5 subjects.

Changes in V3
1. change patch 4 subjects
2. replace pr_ with dev_ for printing in patch 2
3. modify switch1 and switch2 configs in patch 2
4. explain gpio information for rk809 and rk817 in patch 4

Changes in V4:
1. modify some codes for patch 2 and patch 5 according to comments 
2. add reviewer mail lists for patch 3 and 4

Changes in V5:
modify some codes for patch 1 according to reveiw comments for v3.
 1) remove the pm_power_off_prepare() and replace with shutdown
call-back from syscore
 2) move the macro REGMAP_IRQ_M into the regmap.h and rename it
REGMAP_IRQ_LINE
 3) make some dev_warn() log clear

Changes in V6:
modify some codes according to reveiw comments for v5.

Changes in V7:
modify some codes for patch 2 according to reveiw comments.

Changes in V8:
- [Heiko] rebase onto current mainline
- [Heiko] add some tags from Lee so that he can keep track of what
  he reviewed

Changes in V8 RESEND:
- none, just needs a regulator Ack


Tony Xie (5):
  mfd: rk808: Add RK817 and RK809 support
  regulator: rk808: add RK809 and RK817 support.
  dt-bindings: mfd: rk808: Add binding information for RK809 and RK817.
  rtc: rk808: add RK809 and RK817 support.
  clk: RK808: add RK809 and RK817 support.

 .../devicetree/bindings/mfd/rk808.txt         |  44 ++
 drivers/clk/Kconfig                           |   9 +-
 drivers/clk/clk-rk808.c                       |  64 +-
 drivers/mfd/Kconfig                           |   6 +-
 drivers/mfd/rk808.c                           | 192 ++++-
 drivers/regulator/Kconfig                     |   4 +-
 drivers/regulator/rk808-regulator.c           | 657 +++++++++++++++++-
 drivers/rtc/Kconfig                           |   4 +-
 drivers/rtc/rtc-rk808.c                       |  68 +-
 include/linux/mfd/rk808.h                     | 175 +++++
 10 files changed, 1165 insertions(+), 58 deletions(-)

-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

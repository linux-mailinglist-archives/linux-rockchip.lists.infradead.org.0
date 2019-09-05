Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6038FAA311
	for <lists+linux-rockchip@lfdr.de>; Thu,  5 Sep 2019 14:25:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mCPbpWZrd3uOlO2iVQybBmAcl1STQ2sGIpYJqTS5cSY=; b=Fy8IxW3XvM9tOF
	daS63zPkOHzP/Wn9+9U14ErtdAdet+FzNUl1pfz/TOJRwlxABfEvYmEmbtsSqtHH4H0GKX1kZmIPf
	4fsBSGUI1Ezd1mQrVOXCgA8yykTATBvH+/ctgLRlDerWA9LQ8bpOyDas06MTb+gwICNuPibp++M7g
	BHTZ1XiHFBoR2gLtNuSZQV397DnGv6CgJAAc3kgqODZUz/HpxO+tZhG3mGIZSqFdXC+QpZCALm9wY
	kLYseX25W+iBe3KddIFrwHdL89WsDxw5D1q+KymtXpP7UOwxldO95zlg2h2MQF3kcf5VRAWvyNFR5
	qX2xD7oKs/LZvYwLwkSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5qpJ-0002Bx-B8; Thu, 05 Sep 2019 12:25:25 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5qpE-00026r-33
 for linux-rockchip@lists.infradead.org; Thu, 05 Sep 2019 12:25:21 +0000
Received: from wf0413.dip.tu-dresden.de ([141.76.181.157] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <heiko@sntech.de>)
 id 1i5qp9-0003t7-6a; Thu, 05 Sep 2019 14:25:15 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: mturquette@baylibre.com, Stephen Boyd <sboyd@kernel.org>
Subject: [GIT PULL] Rockchip clock updates for 5.4
Date: Thu, 05 Sep 2019 14:25:14 +0200
Message-ID: <1787421.rStINWtZbh@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_052520_323069_6CB9861D 
X-CRM114-Status: GOOD (  10.48  )
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

please find below rockchip clock changes for 5.4

Please pull

Thanks
Heiko


The following changes since commit 5f9e832c137075045d15cd6899ab0505cfb2ca4b:

  Linus 5.3-rc1 (2019-07-21 14:05:38 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.4-rockchip-clk1

for you to fetch changes up to ac68dfd3c4836bb2636fd37f3e075ed218afdb2b:

  clk: rockchip: Add clock controller for the rk3308 (2019-09-05 12:43:39 +0200)

----------------------------------------------------------------
Removal of an unused variable vom rv1108 and addition of
clock driver for rk3308 arm64 soc.

----------------------------------------------------------------
Finley Xiao (3):
      dt-bindings: Add bindings for rk3308 clock controller
      clk: rockchip: Add dt-binding header for rk3308
      clk: rockchip: Add clock controller for the rk3308

Nathan Huckleberry (1):
      clk: rockchip: Fix -Wunused-const-variable in rv1108 clk driver

 .../bindings/clock/rockchip,rk3308-cru.txt         |  60 ++
 drivers/clk/rockchip/Makefile                      |   1 +
 drivers/clk/rockchip/clk-rk3308.c                  | 955 +++++++++++++++++++++
 drivers/clk/rockchip/clk-rv1108.c                  |   1 -
 drivers/clk/rockchip/clk.h                         |  13 +
 include/dt-bindings/clock/rk3308-cru.h             | 387 +++++++++
 6 files changed, 1416 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk3308-cru.txt
 create mode 100644 drivers/clk/rockchip/clk-rk3308.c
 create mode 100644 include/dt-bindings/clock/rk3308-cru.h




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

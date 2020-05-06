Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8E231C6514
	for <lists+linux-rockchip@lfdr.de>; Wed,  6 May 2020 02:28:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vtIh5Jz+NZIuX5MOMbrWCUi/M2glkBkvoTVTBz2vhwA=; b=GyDShOjrQuGvXo
	RBQCRcQzsRc/27SV7V104jczbe2jWmv/9WkJhNh30eHyJgvNk9DRVaiV90VukTXZBF4TYqoP/xDAV
	2VsoIk4UOS0c+QP1Cqos8gpkcthkAvZx8wXsSA1e9QDBUFLckUCpJUPY4t91qp8DiB01jEal3pdgy
	Wx94gCgB3B6mT1gAPv2L6K+pLbCsGUvW8JmUa1sWjgBKewmqhbL4zrgpV0HcCoXyh2XNPjk9STo1c
	m0ulgtoDWDD7or0zcUeiWU0dSbAAPB24h066yEPvGIW/P/AqHpJj9/mi9DgbweM8rQIPgheigsEJ1
	h3EDnW9l0kD4m06LhhZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jW7vf-00009t-GF; Wed, 06 May 2020 00:28:51 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jW7vb-00008O-TA
 for linux-rockchip@lists.infradead.org; Wed, 06 May 2020 00:28:50 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1jW7vV-0005g9-E9; Wed, 06 May 2020 02:28:41 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: mturquette@baylibre.com, Stephen Boyd <sboyd@kernel.org>
Subject: [GIT PULL] Rockchip clock fix for 5.7
Date: Wed, 06 May 2020 02:28:40 +0200
Message-ID: <2256140.alkMTrVvHO@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_172847_938795_F5713310 
X-CRM114-Status: UNSURE (   9.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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

please find below a rockchip clock fix for 5.7
Please pull

Thanks
Heiko

The following changes since commit 8f3d9f354286745c751374f5f1fcafee6b3f3136:

  Linux 5.7-rc1 (2020-04-12 12:35:55 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.7-rockchip-clk-fixes1

for you to fetch changes up to cec9d101d70a3509da9bd2e601e0b242154ce616:

  clk: rockchip: fix incorrect configuration of rk3228 aclk_gpu* clocks (2020-04-13 09:35:24 +0200)

----------------------------------------------------------------
Fix for wrongly defines rk3228 aclk_gpu*

----------------------------------------------------------------
Justin Swartz (1):
      clk: rockchip: fix incorrect configuration of rk3228 aclk_gpu* clocks

 drivers/clk/rockchip/clk-rk3228.c | 17 ++++-------------
 1 file changed, 4 insertions(+), 13 deletions(-)




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

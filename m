Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 155BEBFD6A
	for <lists+linux-rockchip@lfdr.de>; Fri, 27 Sep 2019 05:02:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=0IoXgWDor41czAWMQxTNu0StX7nrtlL0iWs9gIaIJ5w=; b=Y8z
	H+GBuBc/0H8TbdEZ1fVTDP/ld3Jw+JB2NyNqR7FQHHqIvd3euJaihnj44BjP3R5M9zQgdHwr0t4HV
	K+f2mMCRhcCE41xXNfHBq/G1MRbdUugB0Hogoo3V/pc0Ux2u7JvxHsgMqmsTpVoM2g1vet2ONQGK2
	2jFLf7H5kxbRk70LFonG+qzYj+pDrdI7DTMHb70d0fxGpZzeITtIDUAlGT8lCbgyows4ku4TLGjq1
	LB4meWhP6x8ESRikK4NUNERA0iJyJ6ogJkEcKdnC2bfzLUEBEheGPDqmk4QmhzIUSh+tuXwCH8gmG
	/n8URknGLuizcgr6TZtqrpB01HMj01w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDgWV-0000X3-33; Fri, 27 Sep 2019 03:02:23 +0000
Received: from lucky1.263xmail.com ([211.157.147.135])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDgVH-0007r6-Tz; Fri, 27 Sep 2019 03:01:09 +0000
Received: from localhost (unknown [192.168.167.158])
 by lucky1.263xmail.com (Postfix) with ESMTP id 822C143EDB;
 Fri, 27 Sep 2019 11:00:37 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P5565T139972115928832S1569553235679252_; 
 Fri, 27 Sep 2019 11:00:37 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <d2c50f30286dfff9eea87f826a4255ce>
X-RL-SENDER: zhangqing@rock-chips.com
X-SENDER: zhangqing@rock-chips.com
X-LOGIN-NAME: zhangqing@rock-chips.com
X-FST-TO: heiko@sntech.de
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
From: Elaine Zhang <zhangqing@rock-chips.com>
To: heiko@sntech.de
Subject: [PATCH v3 0/5] clk: rockchip: Support for some new features
Date: Fri, 27 Sep 2019 11:00:39 +0800
Message-Id: <1569553244-3165-1-git-send-email-zhangqing@rock-chips.com>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_200108_419395_BFE3DD89 
X-CRM114-Status: UNSURE (   8.08  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.157.147.135 listed in list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [211.157.147.135 listed in wl.mailspike.net]
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
Cc: huangtao@rock-chips.com, xxx@rock-chips.com, xf@rock-chips.com,
 sboyd@kernel.org, mturquette@baylibre.com,
 Elaine Zhang <zhangqing@rock-chips.com>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

1. Support for some new features
2. fix up some error

Chang in V3:
[PATCH v2 3/6] : It's been merged
So rebased and resubmit.

Chang in V2:
[PATCH v2 5/6] : fix up the Register error, and add delay.

Elaine Zhang (4):
  clk: rockchip: fix up the frac clk get rate error
  clk: rockchip: add a clock-type for muxes based in the pmugrf
  clk: rockchip: add pll up and down when change pll freq
  clk: rockchip: support pll setting by auto

Finley Xiao (1):
  clk: rockchip: Add supprot to limit input rate for fractional divider

 drivers/clk/rockchip/clk-pll.c    | 236 +++++++++++++++++++++++++++++++++++---
 drivers/clk/rockchip/clk-px30.c   |  29 ++---
 drivers/clk/rockchip/clk-rk3036.c |  13 ++-
 drivers/clk/rockchip/clk-rk3128.c |  15 ++-
 drivers/clk/rockchip/clk-rk3188.c |  24 ++--
 drivers/clk/rockchip/clk-rk3228.c |  18 +--
 drivers/clk/rockchip/clk-rk3288.c |  19 +--
 drivers/clk/rockchip/clk-rk3308.c |  46 ++++----
 drivers/clk/rockchip/clk-rk3328.c |  17 +--
 drivers/clk/rockchip/clk-rk3368.c |  17 +--
 drivers/clk/rockchip/clk-rk3399.c |  32 +++---
 drivers/clk/rockchip/clk-rv1108.c |  14 ++-
 drivers/clk/rockchip/clk.c        |  39 ++++++-
 drivers/clk/rockchip/clk.h        |  27 ++++-
 include/linux/clk-provider.h      |   2 +
 15 files changed, 422 insertions(+), 126 deletions(-)

-- 
1.9.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

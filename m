Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9776E138478
	for <lists+linux-rockchip@lfdr.de>; Sun, 12 Jan 2020 02:55:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=nUyM/NsB7PGzSmmPTHWCNuYqLYfmQxguasw2JXCFolg=; b=NS5
	PtMRjxH+dvUl/CqifXb7Vyeq4kZ2MlwQ8fLfismk6WWeLQRlSo3qgHbU7WJYUnmnWYU0ipXOiuhcD
	7ffzOqJWqqX/8QZgulKsoVrs/jcZ8QTol1V9s0WTP5BHqExawMcFUwIblfNwK3oDz/em5F2dySj9E
	HssJmM+4C+485SB471na8792YrMv4yDTbpQnfglMowNJCg+rCtvb81w9KKz5VznWospc6IaLEft4w
	Pf4UXdfhQN8rsXr6NOTD295rOx+iTCliSw+GSSuBpFWxWuMGot/ynI6sl2k/oEZlxVBZVyRL1O0Y6
	0INHCK2lvtYVfndSFYczTtXr649Y7yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqSTH-000421-Qp; Sun, 12 Jan 2020 01:55:19 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqSTE-00041F-RF
 for linux-rockchip@lists.infradead.org; Sun, 12 Jan 2020 01:55:18 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 883E3328;
 Sat, 11 Jan 2020 17:55:11 -0800 (PST)
Received: from DESKTOP-VLO843J.lan (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 9D1A63F6C4;
 Sat, 11 Jan 2020 17:55:10 -0800 (PST)
From: Robin Murphy <robin.murphy@arm.com>
To: lee.jones@linaro.org
Subject: [PATCH v2 0/5] mfd: RK8xx tidyup
Date: Sun, 12 Jan 2020 01:54:59 +0000
Message-Id: <cover.1578789410.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200111_175516_927884_2DD9B528 
X-CRM114-Status: UNSURE (   8.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-rockchip@lists.infradead.org, smoch@web.de,
 linux-kernel@vger.kernel.org, heiko@sntech.de
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi all,

Here's a second crack at my RK805-inspired cleanup. There was a bit
of debate around v1[1], but it seems like we're now all happy that this
is a reasonable way to go. For clarity I decided to include Soeren's
patch as #1/5, but since I've rewritten most of my patches I've not
included the tested-by tags.

Robin.

[1] https://lore.kernel.org/lkml/cover.1575932654.git.robin.murphy@arm.com/

Robin Murphy (4):
  mfd: rk808: Ensure suspend/resume hooks always work
  mfd: rk808: Stop using syscore ops
  mfd: rk808: Reduce shutdown duplication
  mfd: rk808: Convert RK805 to shutdown/suspend hooks

Soeren Moch (1):
  mfd: rk808: Always use poweroff when requested

 drivers/mfd/rk808.c       | 139 +++++++++++++-------------------------
 include/linux/mfd/rk808.h |   2 -
 2 files changed, 48 insertions(+), 93 deletions(-)

-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60A0F1189BA
	for <lists+linux-rockchip@lfdr.de>; Tue, 10 Dec 2019 14:27:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=N0ZRIFtGi0znEVllSE+YGX+yyZPrSH1TW6Fx8Ua3uUo=; b=REs
	CJ30y8P6irTZkBkVgDQbDyAwwrLCq5fA8t2mqUllizXTy8oy2eQ44Z5okvWgdRiiHDFqefV7hqZPD
	/pgKi78nglsqsGC0cjgpPKGPZxCcuM4ED10zzwCImLlUstreDRwWHPRycA78dj8AIZCQeZWveCHlR
	3Nv0bmT3Cbg6yNciwC8PAnjPBpbL8+pkWTrXzhUl11ccJrVPu6YKO5Fe/AAS3TC+//Iv0YW0X2KKY
	bZcJVjgAX+gKgcesLXCpCTnn1LFv5sn32A4lg2mngmLwJNRE7CyCMOpUlhkOC22MGS40xQ+t6a7cl
	TzcGR3cD8WVaXKrf4F/kugR/qjCQhqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iefXy-0006Gy-Dx; Tue, 10 Dec 2019 13:27:26 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iefV5-00025J-M6
 for linux-rockchip@lists.infradead.org; Tue, 10 Dec 2019 13:24:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6047A328;
 Tue, 10 Dec 2019 05:24:26 -0800 (PST)
Received: from DESKTOP-VLO843J.cambridge.arm.com
 (DESKTOP-VLO843J.cambridge.arm.com [10.1.26.198])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 6B7493F52E;
 Tue, 10 Dec 2019 05:24:25 -0800 (PST)
From: Robin Murphy <robin.murphy@arm.com>
To: lee.jones@linaro.org
Subject: [PATCH 0/4] mfd: RK8xx tidyup
Date: Tue, 10 Dec 2019 13:24:29 +0000
Message-Id: <cover.1575932654.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_052427_785822_2CDE52D7 
X-CRM114-Status: UNSURE (   9.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux.amoon@gmail.com, linux-rockchip@lists.infradead.org, smoch@web.de,
 linux-kernel@vger.kernel.org, heiko@sntech.de
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi all,

In trying to debug suspend issues on my RK3328 box, I was looking at
how the RK8xx driver handles the RK805 sleep pin, and frankly the whole
driver seemed untidy enough to warrant some cleanup and minor fixes
before going any further. I've based the series on top of Soeren's
"mfd: rk808: Always use poweroff when requested" patch[1].

Note that I've only had time to build-test these patches so far, but I
wanted to share them early for the sake of discussion in response to
the other thread[2].

Robin.

[1] https://patchwork.kernel.org/patch/11279249/
[2] https://patchwork.kernel.org/cover/11276945/

Robin Murphy (4):
  mfd: rk808: Set global instance unconditionally
  mfd: rk808: Always register syscore ops
  mfd: rk808: Reduce shutdown duplication
  mfd: rk808: Convert RK805 to syscore/PM ops

 drivers/mfd/rk808.c       | 122 ++++++++++++++++----------------------
 include/linux/mfd/rk808.h |   2 -
 2 files changed, 50 insertions(+), 74 deletions(-)

-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

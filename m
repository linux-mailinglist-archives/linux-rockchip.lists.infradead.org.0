Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6403BEC77E
	for <lists+linux-rockchip@lfdr.de>; Fri,  1 Nov 2019 18:26:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MrPNI5SkZNPZdQssrrf6ekp1QrUGG574rGDP6fDFRFM=; b=ARitC6E1EFr8yR
	EAF/UvzTS7VHlp2Lu20uNVb4Gis8KjdnrlayPwKy9/6l1qiF8R3a5m3k5ZbesAYUEoCexoRir4++h
	6STVSq5mAcM4cXI/+tvor5ACoMQ31bo+5rDOzrWdpIspzUndI6t56dyhMUtEgN5Xq8N0kbGh4PeQ7
	5Z1rTn9/UOvC803NrAH0bqjL7QvWKQWlRQX6Xq2D1f+Y5bz70Y5rM99jfCaLqF8vpdD/CaRem8our
	FeocmMk+0QareN+tojatbFOAIjF6JZlqx7GWBuXE7gpR+aEHM+QjW1OUjGdWobhijcJFs+6GBE+II
	4cYWKc3gKWpTUT6on//Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQagd-0000ae-Ec; Fri, 01 Nov 2019 17:26:11 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQagT-0000TT-Tl; Fri, 01 Nov 2019 17:26:03 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:1e2::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id B65A11511ABF7;
 Fri,  1 Nov 2019 10:25:56 -0700 (PDT)
Date: Fri, 01 Nov 2019 10:25:56 -0700 (PDT)
Message-Id: <20191101.102556.721413828280813656.davem@davemloft.net>
To: hslester96@gmail.com
Subject: Re: [PATCH] net: ethernet: arc: add the missed clk_disable_unprepare
From: David Miller <davem@davemloft.net>
In-Reply-To: <20191101121725.13349-1-hslester96@gmail.com>
References: <20191101121725.13349-1-hslester96@gmail.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Fri, 01 Nov 2019 10:25:57 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_102601_966628_73E4AE62 
X-CRM114-Status: UNSURE (   5.68  )
X-CRM114-Notice: Please train this message.
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org, heiko@sntech.de,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

From: Chuhong Yuan <hslester96@gmail.com>
Date: Fri,  1 Nov 2019 20:17:25 +0800

> The remove misses to disable and unprepare priv->macclk like what is done
> when probe fails.
> Add the missed call in remove.
> 
> Signed-off-by: Chuhong Yuan <hslester96@gmail.com>

Applied, thank you.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A46FB5D5
	for <lists+linux-rockchip@lfdr.de>; Sun, 28 Apr 2019 12:40:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WJlIcDD2Agv0cz5LhrOXeiuF5hwraZdEXdRKi0X730o=; b=cmSwkKuIXATbce
	pOGkB+lHsNJMzfQ9anQqJ/TOpoWKEDy2DKQ2/N7GhtsxPrFIY49Htmg0JAx5Arm8wB21XlNj/Srch
	mfSd7Wzs7XYl7Cs6vdhFKERBeQG069yPbzZ9oU7YA93deOsPIwbyX0Ag2QDCpoUg7ernEw5L0FVBP
	TOf0sF/h/bmrq6H7YcHFcj6j+X0oDP4/RJyXu3X4PquXaTwBsrbgWOgpkG+C12ahkdyXpPm/1v0pH
	/P7TWnSgqpC7i53Cv+gWSvTFmJMZNZkG4B4Z1QJbPXVwOLYTZaXmy2Sd0bG8ho6EpCy5QyzqMJ9vG
	qWppCWqdsRQbxsxEjjjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKhER-0004Me-Dn; Sun, 28 Apr 2019 10:40:27 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKhEJ-0004I6-IG; Sun, 28 Apr 2019 10:40:21 +0000
Received: from p57b775bf.dip0.t-ipconnect.de ([87.183.117.191]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hKhE9-0005IF-Ax; Sun, 28 Apr 2019 12:40:09 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Markus Elfring <Markus.Elfring@web.de>
Subject: Re: [v3] ARM: rockchip: Fix a leaked reference by adding
 of_node_put() in two functions
Date: Sun, 28 Apr 2019 12:40:08 +0200
Message-ID: <2816348.laE8LpYbrI@phil>
In-Reply-To: <cee2ab03-d0b7-c9c6-acc3-d5aa28979e2b@web.de>
References: <1556262488-21072-1-git-send-email-wen.yang99@zte.com.cn>
 <cee2ab03-d0b7-c9c6-acc3-d5aa28979e2b@web.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_034019_755508_0587922E 
X-CRM114-Status: GOOD (  12.49  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Yi Wang <wang.yi59@zte.com.cn>, Florian Fainelli <f.fainelli@gmail.com>,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Wen Yang <wen.yang99@zte.com.cn>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Sonntag, 28. April 2019, 08:27:05 CEST schrieb Markus Elfring:
> >  arch/arm/mach-rockchip/platsmp.c | 12 ++++++++++--
> >  arch/arm/mach-rockchip/pm.c      |  2 ++
> 
> * Would a commit subject variant be nicer?

yeah, but I'll simply adjust that when applying.

> * I dare to present a reminder for a recurring development topic.
>   How do you think about to adjust the exception handling in these function
>   implementations a bit more according to the Linux coding style
>   (so that the addition of duplicate function calls would be avoided)?

I actually requested not doing wild gotos for of_node_put calls,
as it makes the code harder to read, especially when the "node"
gets reused for a different node-source.



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

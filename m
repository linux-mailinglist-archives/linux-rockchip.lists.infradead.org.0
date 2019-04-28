Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50705B5D9
	for <lists+linux-rockchip@lfdr.de>; Sun, 28 Apr 2019 12:46:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YHb2xIdyhx+9nksZS/Urlh+94TA0w4OiHGoaj3WLr3o=; b=jFHAStmaO9Q5ji
	vOQLi7OLD/EkzcfNXX2mB6q8bDCoPmBk/RCNRo2AiQJfUgUEtKxS2/hLSvIGmq7uakl2lK7B26ncE
	CXGoy9gYqTXDk6JgJ1sNEMqBfPOn8NH82X8aYNwFbNQUcEVu9txs4RGXiHP5Tka2KjY7OKX+4UWGS
	vEd4eLAu1QQJDbL2266BlAC7A/f7bCmgSjmy11duh9m7v+Iq0UCT58/h9s12Xc/yVzPJQ0JhyU4kP
	kxNuk7lOk9R69DTGE8XU6qmpX3WVFh9dLfwtHp53qbI2GeZpyPmGTugDnwEM/2C2Jx2/GYXKRZFaX
	s8oafjhZpDNWfREJE/2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKhKF-00060u-1c; Sun, 28 Apr 2019 10:46:27 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKhK6-0005tr-VU; Sun, 28 Apr 2019 10:46:20 +0000
Received: from p57b775bf.dip0.t-ipconnect.de ([87.183.117.191]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hKhK1-0005J6-QB; Sun, 28 Apr 2019 12:46:13 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Wen Yang <wen.yang99@zte.com.cn>
Subject: Re: [PATCH v3] ARM: rockchip: fix a leaked reference by adding
 missing of_node_put
Date: Sun, 28 Apr 2019 12:46:13 +0200
Message-ID: <5474132.bFrQNdgMoI@phil>
In-Reply-To: <1556262488-21072-1-git-send-email-wen.yang99@zte.com.cn>
References: <1556262488-21072-1-git-send-email-wen.yang99@zte.com.cn>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_034619_165555_843117DF 
X-CRM114-Status: GOOD (  10.82  )
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
Cc: wang.yi59@zte.com.cn, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Russell King <linux@armlinux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Freitag, 26. April 2019, 09:08:08 CEST schrieb Wen Yang:
> The call to of_get_next_child returns a node pointer with refcount
> incremented thus it must be explicitly decremented after the last
> usage.
> 
> Detected by coccinelle with the following warnings:
> ./arch/arm/mach-rockchip/pm.c:269:2-8: ERROR: missing of_node_put; acquired a node pointer with refcount incremented on line 259, but without a corresponding object release within this function.
> ./arch/arm/mach-rockchip/pm.c:275:2-8: ERROR: missing of_node_put; acquired a node pointer with refcount incremented on line 259, but without a corresponding object release within this function
> ./arch/arm/mach-rockchip/platsmp.c:281:2-8: ERROR: missing of_node_put; acquired a node pointer with refcount incremented on line 272, but without a corresponding object release within this function.
> ./arch/arm/mach-rockchip/platsmp.c:285:2-8: ERROR: missing of_node_put; acquired a node pointer with refcount incremented on line 272, but without a corresponding object release within this function.
> ./arch/arm/mach-rockchip/platsmp.c:289:3-9: ERROR: missing of_node_put; acquired a node pointer with refcount incremented on line 272, but without a corresponding object release within this function.
> ./arch/arm/mach-rockchip/platsmp.c:303:3-9: ERROR: missing of_node_put; acquired a node pointer with refcount incremented on line 294, but without a corresponding object release within this function.
> 
> Signed-off-by: Wen Yang <wen.yang99@zte.com.cn>
> Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
> Suggested-by: Heiko Stuebner <heiko@sntech.de>
> Cc: Russell King <linux@armlinux.org.uk>
> Cc: Heiko Stuebner <heiko@sntech.de>
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-rockchip@lists.infradead.org
> Cc: linux-kernel@vger.kernel.org

queued for 5.3 (too late for 5.2)

Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

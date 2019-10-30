Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14775E986E
	for <lists+linux-rockchip@lfdr.de>; Wed, 30 Oct 2019 09:47:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kQY81EQTlrq4XwDJ5PXoqzl0Gnu4ko4w1iMIkva0Ct4=; b=dlVxdoloa2E8/O
	oGT5+l5U8RzOo/z61GltJajWp/i4jrIWTxaSLpzUIOO+3EDsy/mDxMzuAsr70TSh0yhBtKBxnIBVl
	pOiqUH3Dp13TCjn/hE5WDBAzE9Q1RCr11bgo8+/S64T8Ac99Ik/f7eZ07ME2PgUZW59SVwDSJ6WKj
	MoBAQnt0toxwVrMjPeF6vzcCNyBbAVRE4Ir1L8ZQXO/9qVAzdaTfsoyPAJiCGR3kwBa9lRIyWZL1N
	5egO1I/TZiV1mlXRhR+HNibVjRR5fTLGxv00IQNNLCQILBvqoBk8CBQchiQQ3n8r+383ioSd7IrVh
	tQeXukqXyIxjk4j4zghA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPjdu-0005y5-8X; Wed, 30 Oct 2019 08:47:50 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPjdr-0005xR-0S
 for linux-rockchip@lists.infradead.org; Wed, 30 Oct 2019 08:47:48 +0000
Received: from [91.217.168.176] (helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iPj8Y-0006sO-1G; Wed, 30 Oct 2019 09:15:26 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Peter Geis <pgwipeout@gmail.com>
Subject: Re: [PATCH 1/5] phy: rockchip: add inno-usb3 phy driver
Date: Wed, 30 Oct 2019 09:15:25 +0100
Message-ID: <10419898.gYlDFaIxON@phil>
In-Reply-To: <20191028182254.30739-2-pgwipeout@gmail.com>
References: <20191028182254.30739-1-pgwipeout@gmail.com>
 <20191028182254.30739-2-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_014747_196510_4519A449 
X-CRM114-Status: UNSURE (   6.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 3.6 (+++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (3.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [91.217.168.176 listed in zen.spamhaus.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: katsuhiro@katsuster.net, linux-rockchip@lists.infradead.org,
 linux-usb@vger.kernel.org, robin.murphy@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Montag, 28. Oktober 2019, 19:22:50 CET schrieb Peter Geis:
> Add the rockchip innosilicon usb3 phy driver, supporting devices such as the rk3328.
> Pulled from:
> https://github.com/FireflyTeam/kernel/blob/roc-rk3328-cc/drivers/phy/rockchip/phy-rockchip-inno-usb3.c
> 
> Signed-off-by: Peter Geis <pgwipeout@gmail.com>

What happens on plug - unplug - plug?

I remember what kept me from pushing the usb3 stuff for rk3328
was the usbphy breaking hotplug after the first unplug.

Did this get fixed?

Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

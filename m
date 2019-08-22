Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 543789A02B
	for <lists+linux-rockchip@lfdr.de>; Thu, 22 Aug 2019 21:39:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DXsD9tYZuUI5q6qjvJcdKN+oE9R3iFxWCe3+RV6iZyE=; b=faxTcM3aHQdJyE
	NG1nfCTS5PZ6/g2hiFR83M/xis0fmZoNx5AHCypnaXYO5+Vpnx+lJX9m795BEF18rIwIPVwgu06w4
	7ojifUq4gJattfBSktiWUKFd2lEJ1osuLiyzWJFZl8JAwwxGiLUEzhkzlJvVdTCU1pz/XPG6YdCo5
	9UFtngr4zA1uxVUh0RLfKfriuFXLiNcR73Q8cpembRL1Y6TikCHofOvsp4amyv3Ckuk6QiguB+7Rc
	0XYJsvMYbnMZZZqAqWJOv7oNlW500fhlFKra7llcYJwYMXpwdOna1Q4EEu70FvRKxzXVdxolUAHk9
	8VC7ligeHzTP+SueigsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0svC-0002Uf-St; Thu, 22 Aug 2019 19:38:58 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0svA-0002Tz-8Q; Thu, 22 Aug 2019 19:38:57 +0000
Received: from wsip-184-188-36-2.sd.sd.cox.net ([184.188.36.2]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1i0sv7-0001tv-QT; Thu, 22 Aug 2019 21:38:54 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Jonas Karlman <jonas@kwiboo.se>
Subject: Re: [RESEND PATCH] arm64: dts: rockchip: add rk3328 VPU node
Date: Thu, 22 Aug 2019 21:38:09 +0200
Message-ID: <13275867.8yMunGSYaK@phil>
In-Reply-To: <HE1PR06MB4011C8496657B2C267A66327ACAA0@HE1PR06MB4011.eurprd06.prod.outlook.com>
References: <HE1PR06MB4011C8496657B2C267A66327ACAA0@HE1PR06MB4011.eurprd06.prod.outlook.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_123856_451166_250DF549 
X-CRM114-Status: UNSURE (   9.60  )
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
Cc: "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Mittwoch, 21. August 2019, 19:54:38 CEST schrieb Jonas Karlman:
> This patch add a VPU device node for rk3328.
> 
> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>

applied for 5.4

I'm still not sure where your original patch went though. I can see it
in patchwork but somehow not in my inbox ... in any case, thanks for
resending.


Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

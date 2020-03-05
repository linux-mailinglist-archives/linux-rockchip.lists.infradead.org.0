Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD83817B260
	for <lists+linux-rockchip@lfdr.de>; Fri,  6 Mar 2020 00:47:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pHL1jeOsJQMEzEqaaJGJ6gRJ0NgP6c+NohhAiD+Xpvc=; b=SVtmKNKdDrUWlI
	IifEJsIQJHKlJH2UsinbDkHSmWU77pxNl5lMPKh9bInOho01k1BBakz+y5iV1qmPb0xv8uo+WxgbR
	oCZdv5xj+DmfqXDYS0vnYDSL5P2e0pOx3QIPPWCNHhDvjIdKqtDRmkghaajxc335oqYS2Lc1hnhUo
	7kwaa3DMZ49FaXzTWV6uGZaQUo2Ew4Uu5u9QgcjBKj5aynHYTHCjhoMy8EhX9oNH6uvIbWju28GUi
	utEl6bl6awV/eEiFcTB0nPNr7CRrroc7pMGAkZgHXQTq1UMb0UUu6l0xFlTI8HDojiX8ZYuqF9EUn
	EXO8kRdOtl/vtDnzx0Sw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jA0Cr-0003j9-Gg; Thu, 05 Mar 2020 23:47:09 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jA0Cn-0003hm-UI; Thu, 05 Mar 2020 23:47:07 +0000
Received: from ip5f5a5d2f.dynamic.kabel-deutschland.de ([95.90.93.47]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1jA0CY-0006aW-Td; Fri, 06 Mar 2020 00:46:50 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [PATCH 2/4] arm64: dts: rockchip: Add pmic dt tree for rk3399 evb
Date: Fri, 06 Mar 2020 00:46:50 +0100
Message-ID: <33721271.s4QA4oKXoP@phil>
In-Reply-To: <20200305113912.32226-3-andy.yan@rock-chips.com>
References: <20200305113912.32226-1-andy.yan@rock-chips.com>
 <20200305113912.32226-3-andy.yan@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_154706_124474_00E685AD 
X-CRM114-Status: UNSURE (   8.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Donnerstag, 5. M=E4rz 2020, 12:39:10 CET schrieb Andy Yan:
> RK3399 EVB use 2 SYR837/8 and a RK808 for power supply,
> Add regulator tree for it.
> =

> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
> ---

I applied this for 5.7 after fixing quite a number of issues
- spaces instead of tabs in one syr
- odering of nodes and properties
- node names


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

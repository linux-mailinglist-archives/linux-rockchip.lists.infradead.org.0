Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5561145A73
	for <lists+linux-rockchip@lfdr.de>; Fri, 14 Jun 2019 12:32:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6JAUIMtFJzQtC2mbruuODuxVU666/ERfJ+Wnwaiwn8M=; b=evLCSvVmVbwKmW
	gAYKfGNMDiSHJXPL5n+1Do5ebj8pBpFT+ZAuIeY/A56aZ8eK7h21Gj2B6lhR2nSV1801b2MUB8SsV
	P4UeO9jG3qlEV5Z5MoSUMKqI+yDGVeGWMmvZC8AS9YRPN7JYak5bdANqIssZwP7zvR3wPD03QHm0t
	Z6XAez0Vbavf5xWdb6XFD0hFGRcSuDneBdFwyTIRkzwupXldDHSQHZlQqIs49tbwFIxnVQ8J1V9nU
	kaT2AkXVmASw/CAWWUlMGmB4qGvUF2hQz8EWKzycAVmO52HhtGjAvAB0BIg5Vit63t4jlay7vxM4f
	2JXBR2i0R+YGv3Bigxwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbjVR-0003HB-HU; Fri, 14 Jun 2019 10:32:25 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbjV6-00034B-0Q; Fri, 14 Jun 2019 10:32:05 +0000
Received: from we0305.dip.tu-dresden.de ([141.76.177.49] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hbjV0-0004UU-OB; Fri, 14 Jun 2019 12:31:58 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: "Leonidas P. Papadakos" <papadakospan@gmail.com>
Subject: Re: [PATCH 1/2] clk: rockchip: add clock for the watchdog pclk on
 rk3328
Date: Fri, 14 Jun 2019 12:31:58 +0200
Message-ID: <2207770.HSO279VB62@phil>
In-Reply-To: <1560506054.1367.0@gmail.com>
References: <20190605235714.22432-1-papadakospan@gmail.com>
 <5657669.4RvfzeBcXs@phil> <1560506054.1367.0@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_033204_245039_F2F1A40F 
X-CRM114-Status: GOOD (  13.66  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
 itdaniher@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi,

Am Freitag, 14. Juni 2019, 11:54:14 CEST schrieb Leonidas P. Papadakos:
> 
> > Were you able yet to take a look at the clock-patches I Cc'ed you on
> > and look at reworking your patch accrodingly?
> > 
> > 
> > Thanks
> > Heiko
> > 
> My time is limited due to exams, and I have no knowledge on how the clk 
> stuff works, but I'll read up when I have the time. The patched you 
> CCed me on is certainly helpful in this regard

ok. I have tested the conversion on the platforms I did convert there,
so I'll just apply the 2 patches later on.

Should I wait on you respinning the rk3328 watchdog patch, or just
add the rk3328 watchdog pclk myself?


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

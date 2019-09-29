Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7562FC193E
	for <lists+linux-rockchip@lfdr.de>; Sun, 29 Sep 2019 21:58:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0GnCqqt9YKKDgyb70SfUxGjnBvfC4fk0jT27pzgsJlw=; b=G8Wd0fszfQvqpL
	5uzzlKO0ShotDHLuzSkhRfL24LIAWvxOoqCkQc58wvP07F89j/R8e2abdQCUmMSCH9wfVppgjM+o3
	e94fWI1ZuGfqJwFdzX0niDr00mzpNSC4jmTSqSyBjFOWmdc1pttYs25yNbDTcRUSlq0nXZEmXF0cA
	KbguiNGYiMD1tBEHSYMKHsfyoOnQVkG1wvYIDDeAApxJ5TX2Y9+dA+7gOTaYBqNd6snAsaj/KxWDH
	rNDBN9UrIUHKNrsBMdOp6NxIa/XjgMJvw6xu7cVeP3Hiba/VTI1RUiyZpOJS/AtlQyv85fJRIyx5G
	O+i5B4CE7lTWtAuCYvOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEfLK-0008Ot-2x; Sun, 29 Sep 2019 19:58:54 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEfL6-0008FU-Le; Sun, 29 Sep 2019 19:58:42 +0000
Received: from ip5f5a6266.dynamic.kabel-deutschland.de ([95.90.98.102]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iEfL3-0001Hr-2j; Sun, 29 Sep 2019 21:58:37 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Hugh Cole-Baker <sigmaris@gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: fix Rockpro64 RK808 interrupt line
Date: Sun, 29 Sep 2019 21:58:36 +0200
Message-ID: <2631784.KOmX0qhJ1H@phil>
In-Reply-To: <20190921131457.36258-1-sigmaris@gmail.com>
References: <20190921131457.36258-1-sigmaris@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190929_125840_859426_05F93BA3 
X-CRM114-Status: GOOD (  11.53  )
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
 Akash Gajjar <Akash_Gajjar@mentor.com>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Samstag, 21. September 2019, 15:14:57 CEST schrieb Hugh Cole-Baker:
> Fix the pinctrl and interrupt specifier for RK808 to use GPIO3_B2. On the
> Rockpro64 schematic [1] page 16, it shows GPIO3_B2 used for the interrupt
> line PMIC_INT_L from the RK808, and there's a note which translates as:
> "PMU termination GPIO1_C5 changed to this".
> 
> Tested by setting an RTC wakealarm and checking /proc/interrupts counters.
> Without this patch, neither the rockchip_gpio_irq counter for the RK808,
> nor the RTC alarm counter increment when the alarm time is reached.
> With this patch, both interrupt counters increment by 1 as expected.
> 
> [1] http://files.pine64.org/doc/rockpro64/rockpro64_v21-SCH.pdf
> 
> Fixes: e4f3fb4 ("arm64: dts: rockchip: add initial dts support for Rockpro64")
> Signed-off-by: Hugh Cole-Baker <sigmaris@gmail.com>

applied as fix for 5.4

Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

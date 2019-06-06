Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B59363721C
	for <lists+linux-rockchip@lfdr.de>; Thu,  6 Jun 2019 12:53:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TZSDQQdu9++XyndKhULvTaLQ0nbCMIrzx9dvNvTPeVs=; b=bT2BbffTRGbtq/
	b4eOvfltK6TNuWk7ckyqloEvAF6duolI+jrhsBb8UHTdTCJO8VBIGD64vYhuPKSojFE9r/NtyOO3I
	BJBEz6RsDNXcMlpm+OsJ4iHKOJpxlZjmEhdJfy+ndcRnOvOXTJK+2CiIozeOO/hCnGMDnny/bJz+g
	pAVHCSRKJ+0uHAEFf0VGcJzMCBXPoN7YfDTtsT5up4phmMFpf2jOpfGUNNvE2ZE0S5GRcGQDZAY3e
	bF0fXrOr/rlPn8OStrG2SiSl5MNVPlgJ2CY4zDGuoLWVDBxsjfB7UUF9+UIoiH3abV9G5UeNqHJu7
	JoVoINjBBLuMTlaFTHAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYq1b-0001CL-65; Thu, 06 Jun 2019 10:53:39 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYq1Y-0001Bh-Mk; Thu, 06 Jun 2019 10:53:38 +0000
Received: from we0305.dip.tu-dresden.de ([141.76.177.49] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hYq1V-0003l3-NS; Thu, 06 Jun 2019 12:53:33 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Douglas Anderson <dianders@chromium.org>
Subject: Re: [PATCH] clk: rockchip: Remove 48 MHz PLL rate from rk3288
Date: Thu, 06 Jun 2019 12:53:33 +0200
Message-ID: <4759206.qoGe4VK7Kb@phil>
In-Reply-To: <20190604223200.345-1-dianders@chromium.org>
References: <20190604223200.345-1-dianders@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_035336_892225_899FACB2 
X-CRM114-Status: GOOD (  13.00  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 Urja Rannikko <urjaman@gmail.com>, linux-rockchip@lists.infradead.org,
 mka@chromium.org, seanpaul@chromium.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Mittwoch, 5. Juni 2019, 00:31:59 CEST schrieb Douglas Anderson:
> The 48 MHz PLL rate is not present in the downstream chromeos-3.14
> tree.  Looking at history, it was originally removed in
> <https://crrev.com/c/265810> ("CHROMIUM: clk: rockchip: expand more
> clocks support") with no explanation.  Much of that patch was later
> reverted in <https://crrev.com/c/284595> ("CHROMIUM: clk: rockchip:
> Revert more questionable PLL rates"), but that patch left in the
> removal of 48 MHz.  What I wrote in that patch:
> 
> > Note that the original change also removed the rate (48000000, 1,
> > 64, 32) from the table.  I have no idea why that was squashed in
> > there, but that rate was invalid anyway (it appears to have an out
> > of bounds NO).  I'm not putting that rate in.
> 
> Reading the TRM I see that NO is defined as
> - NO: 1, 2-16 (even only)
> ...and furthermore only 4 bits are assigned for NO-1, which means that
> the highest NO we could even represent is 16.
> 
> Signed-off-by: Douglas Anderson <dianders@chromium.org>

applied for 5.3

Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AB1345870
	for <lists+linux-rockchip@lfdr.de>; Fri, 14 Jun 2019 11:18:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DyJ3hUCclxExMji+o9VBjE5TMC9sZJvBxrJL8NWY34U=; b=ncw8W0mLjhlOmO
	+eNmpt5wV9sI4X7ZtgFzy8tbSZ3lSdA7xyeJOnyzNxzwayk5zM+5/0riOxXZ+ZCT3EamWfhAo7rK9
	yLlkU3yJmy59E+eI2DY+wNDxpodDNG3DKfOH4+pE+W5qWEZy6PVYsJWKJTAZNOnErMvZ9PWze9x6w
	vcxtMVAoGsV1CVzsVZxK5S3WFegF2evr+ll1KAfKD3CiubiFCYpdpNwOeVN4r3IFlNc5rmOMrs7QP
	Lj+MCgumIlbk428PQIu4ufTWH/PoSKyQlCgPTr4tPRI05hP4GeJcEkly4Z+t+34/Cfgq1TiANnH7m
	HjXHAuvpNTR3ho6UCAyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbiM3-0005tP-Su; Fri, 14 Jun 2019 09:18:40 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbiLc-0005fK-22; Fri, 14 Jun 2019 09:18:13 +0000
Received: from we0305.dip.tu-dresden.de ([141.76.177.49] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hbiLY-00041V-D9; Fri, 14 Jun 2019 11:18:08 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Justin Swartz <justin.swartz@risingedge.co.za>
Subject: Re: [PATCH] clk: rockchip: select hdmiphy clock source for rk3228
Date: Fri, 14 Jun 2019 11:18:07 +0200
Message-ID: <4689860.tqrvb1PrOO@phil>
In-Reply-To: <20190612133343.28309-1-justin.swartz@risingedge.co.za>
References: <20190612133343.28309-1-justin.swartz@risingedge.co.za>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_021812_250626_54E21C3F 
X-CRM114-Status: GOOD (  15.26  )
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
Cc: Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi,

Am Mittwoch, 12. Juni 2019, 15:33:43 CEST schrieb Justin Swartz:
> Unless explictly configured by a bootloader, the hdmiphy clock parent
> defaults to the xin24m clock source. This configuration does not yield
> any HDMI video output, so let hdmiphy_phy (the HDMI PHY output clock)
> be the parent instead.
> 
> Signed-off-by: Justin Swartz <justin.swartz@risingedge.co.za>

Mainly for having breadcrumbs for people skimming the lists,
I've adapted this to use assigned-clocks instead of hardcoding.

See the dts-thread for further infos:
https://lore.kernel.org/linux-arm-kernel/1854794.0zkvb3x0FP@phil/T/#mf86ab45e07442ab2b25c67f423ebc4130259f6b0

Heiko


> ---
>  drivers/clk/rockchip/clk-rk3228.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/clk/rockchip/clk-rk3228.c b/drivers/clk/rockchip/clk-rk3228.c
> index 1c5267d134ee..00a195e6c014 100644
> --- a/drivers/clk/rockchip/clk-rk3228.c
> +++ b/drivers/clk/rockchip/clk-rk3228.c
> @@ -699,6 +699,9 @@ static void __init rk3228_clk_init(struct device_node *np)
>  		return;
>  	}
>  
> +	/* Let hdmiphy_phy be the parent of the hdmiphy clock. */
> +	writel_relaxed(HIWORD_UPDATE(0, 1, 13), reg_base + RK2928_MISC_CON);
> +
>  	ctx = rockchip_clk_init(np, reg_base, CLK_NR_CLKS);
>  	if (IS_ERR(ctx)) {
>  		pr_err("%s: rockchip clk init failed\n", __func__);
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

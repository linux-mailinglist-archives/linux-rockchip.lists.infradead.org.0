Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4992E14B289
	for <lists+linux-rockchip@lfdr.de>; Tue, 28 Jan 2020 11:26:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HbFTa/A6y2q+jQbhtSk25v5fNhr//ki2Di/S17VVypw=; b=pl8s160NKc+8P/
	W7JJYYAfRyNJ2uPA0IPfJdLgoPWmy/XgGgdgHXflY7OkOq9btW/sa2mZFwmzqp6qp0GfN6AJ/dnNJ
	/oH39EQWPAwfh1dOVUgIEEMx0PdxbPo24QhUTDyNflqJBBOBHtVW+fG9mytFOqd31B3CBQNBpBstX
	CHYNG3livQPN6AxvNnc0LUbeCwG5Mje2gZPrSrDVodJ8AK/CSWx4ZD4GqDgWnV+Vngab6IIB7mCpW
	ekufDkUnwBf94alVUZmjTtUg7QnH/BChd8tMYv6zIW3Wr9wW44NjgaJATU+rEjB4wXteDI8uLk3qq
	zAJe/h01QSF8F1G+aDdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwO56-0000jA-VE; Tue, 28 Jan 2020 10:26:53 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwO4u-0000Zs-09; Tue, 28 Jan 2020 10:26:41 +0000
Received: from p57b77a13.dip0.t-ipconnect.de ([87.183.122.19]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iwO4s-0008VL-DY; Tue, 28 Jan 2020 11:26:38 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH] clk: rockchip: convert rk3036 pll type to use internal
 lock status
Date: Tue, 28 Jan 2020 11:26:37 +0100
Message-ID: <3308363.gZKxoYc2QA@phil>
In-Reply-To: <20200114050518.D3C40222C3@mail.kernel.org>
References: <20200113152656.2313846-1-heiko@sntech.de>
 <20200114050518.D3C40222C3@mail.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_022640_193276_C4B08C91 
X-CRM114-Status: GOOD (  15.09  )
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
Cc: mturquette@baylibre.com, zhangqing@rock-chips.com,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 christoph.muellner@theobroma-systems.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Dienstag, 14. Januar 2020, 06:05:18 CET schrieb Stephen Boyd:
> Quoting Heiko Stuebner (2020-01-13 07:26:56)
> > diff --git a/drivers/clk/rockchip/clk-pll.c b/drivers/clk/rockchip/clk-pll.c
> > index 198417d56300..37378ded0993 100644
> > --- a/drivers/clk/rockchip/clk-pll.c
> > +++ b/drivers/clk/rockchip/clk-pll.c
> > @@ -118,12 +118,30 @@ static int rockchip_pll_wait_lock(struct rockchip_clk_pll *pll)
> >  #define RK3036_PLLCON1_REFDIV_SHIFT            0
> >  #define RK3036_PLLCON1_POSTDIV2_MASK           0x7
> >  #define RK3036_PLLCON1_POSTDIV2_SHIFT          6
> > +#define RK3036_PLLCON1_LOCK_STATUS             BIT(10)
> >  #define RK3036_PLLCON1_DSMPD_MASK              0x1
> >  #define RK3036_PLLCON1_DSMPD_SHIFT             12
> > +#define RK3036_PLLCON1_PWRDOWN                 BIT(13)
> >  #define RK3036_PLLCON2_FRAC_MASK               0xffffff
> >  #define RK3036_PLLCON2_FRAC_SHIFT              0
> >  
> > -#define RK3036_PLLCON1_PWRDOWN                 (1 << 13)
> > +static int rockchip_rk3036_pll_wait_lock(struct rockchip_clk_pll *pll)
> > +{
> > +       u32 pllcon;
> > +       int delay = 24000000;
> > +
> > +       /* poll check the lock status in rk3399 xPLLCON2 */
> > +       while (delay > 0) {
> > +               pllcon = readl_relaxed(pll->reg_base + RK3036_PLLCON(1));
> > +               if (pllcon & RK3036_PLLCON1_LOCK_STATUS)
> > +                       return 0;
> > +
> > +               delay--;
> 
> There isn't any udelay here. So the timeout is just as fast as the CPU
> can churn through this? Why not use an actual time? Or use the
> readl_poll_timeout() APIs?

Done in 
http://lore.kernel.org/r/20200128100204.1318450-3-heiko@sntech.de

and to keep things similar, I did a conversion to iopoll helpers for the
other variants too.

Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

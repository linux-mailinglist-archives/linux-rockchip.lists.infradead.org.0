Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 314FB14BCD8
	for <lists+linux-rockchip@lfdr.de>; Tue, 28 Jan 2020 16:29:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YdJiPrZuHzVjog8g4KwfscDOp3+HQa2t3IDY8PMhr+A=; b=at5Juy86wBtTMcIb3bOYUGPSy
	vhI3mLKPOkqpKzS3OCLNaTDdIP6/eRM3Gtx91RTECEbOxGqxp1BY+wegy7YW2plO03g2o/vtQApvr
	duMQ87eflEmlCTaV30dMjBXYALsdXPLF9YA8B1ZbGNszQNq5TK3ghvLRwKYvFjrh8J5D8E28laBik
	PWnAL3yb3yokgzQ22hhf5nQzrYNhKQyDuahlLjq0IRgiHtjMRL53ibSI5nf//4fcOn0v7u11jkM0k
	ByDS0Es3VmE2pDqZEomYgRpCu2yearT3RdpzSWb0bHQkb5LMu9FYzJcSyNnUA59hKfn8jj6GCZdKI
	Rc2lCbCRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwSnV-0000oT-Oo; Tue, 28 Jan 2020 15:29:01 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwSnJ-0000ft-SS; Tue, 28 Jan 2020 15:28:51 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 286EB31B;
 Tue, 28 Jan 2020 07:28:48 -0800 (PST)
Received: from [10.1.196.37] (e121345-lin.cambridge.arm.com [10.1.196.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DC3383F68E;
 Tue, 28 Jan 2020 07:28:46 -0800 (PST)
Subject: Re: [PATCH 1/3] clk: rockchip: convert rk3399 pll type to use
 readl_poll_timeout
To: Heiko Stuebner <heiko@sntech.de>, linux-clk@vger.kernel.org
References: <20200128100204.1318450-1-heiko@sntech.de>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <f8001dbb-ebbc-ebe3-d1db-c75d3888fd38@arm.com>
Date: Tue, 28 Jan 2020 15:28:44 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200128100204.1318450-1-heiko@sntech.de>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_072849_963737_4D1BCD4B 
X-CRM114-Status: GOOD (  21.17  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: sboyd@kernel.org, Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 mturquette@baylibre.com, zhangqing@rock-chips.com,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, christoph.muellner@theobroma-systems.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On 28/01/2020 10:02 am, Heiko Stuebner wrote:
> From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> 
> Instead of open coding the polling of the lock status, use the
> handy readl_poll_timeout for this. As the pll locking is normally
> blazingly fast and we don't want to incur additional delays, we're
> not doing any sleeps similar to for example the imx clk-pllv4
> and define a very safe but still short timeout of 1ms.
> 
> Suggested-by: Stephen Boyd <sboyd@kernel.org>
> Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> ---
>   drivers/clk/rockchip/clk-pll.c | 21 ++++++++++-----------
>   1 file changed, 10 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/clk/rockchip/clk-pll.c b/drivers/clk/rockchip/clk-pll.c
> index 198417d56300..43c9fd0086a2 100644
> --- a/drivers/clk/rockchip/clk-pll.c
> +++ b/drivers/clk/rockchip/clk-pll.c
> @@ -585,19 +585,18 @@ static const struct clk_ops rockchip_rk3066_pll_clk_ops = {
>   static int rockchip_rk3399_pll_wait_lock(struct rockchip_clk_pll *pll)
>   {
>   	u32 pllcon;
> -	int delay = 24000000;
> +	int ret;
>   
> -	/* poll check the lock status in rk3399 xPLLCON2 */
> -	while (delay > 0) {
> -		pllcon = readl_relaxed(pll->reg_base + RK3399_PLLCON(2));
> -		if (pllcon & RK3399_PLLCON2_LOCK_STATUS)
> -			return 0;
> +	/*
> +	 * Lock time typical 250, max 500 input clock cycles @24MHz
> +	 * So define a very safe maximum of 1000us, meaning 24000 cycles.
> +	 */
> +	ret = readl_poll_timeout(pll->reg_base + RK3399_PLLCON(2), pllcon,
> +				 pllcon & RK3399_PLLCON2_LOCK_STATUS, 0, 1000);

Note that the existing I/O accessor was readl_relaxed(), but using plain 
readl_poll_timeout() switches it to regular readl(). It may well not 
matter, but since it's not noted as an intentional change it seemed 
worth pointing out.

Robin.

> +	if (ret)
> +		pr_err("%s: timeout waiting for pll to lock\n", __func__);
>   
> -		delay--;
> -	}
> -
> -	pr_err("%s: timeout waiting for pll to lock\n", __func__);
> -	return -ETIMEDOUT;
> +	return ret;
>   }
>   
>   static void rockchip_rk3399_pll_get_params(struct rockchip_clk_pll *pll,
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

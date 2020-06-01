Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54F4D1EAFFD
	for <lists+linux-rockchip@lfdr.de>; Mon,  1 Jun 2020 22:09:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TayaTisjur+eK2nvlMjMBRND2T4MAFOOUwwqDNrlWv0=; b=FFdshD1PTWm6wF
	FbvgihdMR0Msuq+F2PwDkgZqZStWjOz5cybqTEpYR9Qn1dItq1DCq/eRk2xX5/BY3PYmVf4xjGeoX
	T2LBRgrwRwtaQuXfJz3kIvGjb7mVlx10uRj7/VZ7VcmosnN+jOpZx5IFD8taoW6jALh5JH7ySrXA7
	i+si23ex1eZWl7pvoOxljlPeNB/qYpysPp34qKJ5m3YlSxSlyjkVfXJKnl2Zs/EjEg0GUPK7ecaZ8
	KodUTZB3Uq8UR1ycSY+3kKqn99gmZb49bW/wJ8/OuEON9CgZruUwYU0pq1kFC4J3Ju4ganax7HJ0M
	jxNKrWvaUFEU2ON2JBxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfqkh-0006s9-Pq; Mon, 01 Jun 2020 20:09:43 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfqkZ-0006kl-0c; Mon, 01 Jun 2020 20:09:36 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1jfqkQ-0004eb-4t; Mon, 01 Jun 2020 22:09:26 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: =?ISO-8859-1?Q?Myl=E8ne?= Josserand <mylene.josserand@collabora.com>
Subject: Re: [PATCH v3 1/1] clk: rockchip: rk3288: Handle clock tree for
 rk3288w
Date: Mon, 01 Jun 2020 22:09:25 +0200
Message-ID: <8288442.SvGebX2C5V@diego>
In-Reply-To: <20200601151442.156184-2-mylene.josserand@collabora.com>
References: <20200601151442.156184-1-mylene.josserand@collabora.com>
 <20200601151442.156184-2-mylene.josserand@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_130935_053718_6D81DBF2 
X-CRM114-Status: GOOD (  16.50  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: sboyd@kernel.org, mturquette@baylibre.com, linux-kernel@vger.kernel.org,
 kever.yang@rock-chips.com, linux-rockchip@lists.infradead.org,
 geert@linux-m68k.org, kernel@collabora.com, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Myl=E8ne,

Am Montag, 1. Juni 2020, 17:14:42 CEST schrieb Myl=E8ne Josserand:
> The revision rk3288w has a different clock tree about "hclk_vio"
> clock, according to the BSP kernel code.
> =

> This patch handles this difference by detecting which device-tree
> we are using. If it is a "rockchip,rk3288-cru", let's register
> the clock tree as it was before. If the compatible is
> "rockchip,rk3288w-cru", we will apply the difference according to this
> version of this SoC.
> =

> Noticed that this new device-tree compatible must be handled by
> bootloader.
> =

> Signed-off-by: Myl=E8ne Josserand <mylene.josserand@collabora.com>

approach looks good, but you should also update the clock-controller
dt-binding for the new compatible.

Style nits below.


> ---
>  drivers/clk/rockchip/clk-rk3288.c | 20 ++++++++++++++++++--
>  1 file changed, 18 insertions(+), 2 deletions(-)
> =

> diff --git a/drivers/clk/rockchip/clk-rk3288.c b/drivers/clk/rockchip/clk=
-rk3288.c
> index cc2a177bbdbf..5018d2f1e54c 100644
> --- a/drivers/clk/rockchip/clk-rk3288.c
> +++ b/drivers/clk/rockchip/clk-rk3288.c
> @@ -425,8 +425,6 @@ static struct rockchip_clk_branch rk3288_clk_branches=
[] __initdata =3D {
>  	COMPOSITE(0, "aclk_vio0", mux_pll_src_cpll_gpll_usb480m_p, CLK_IGNORE_U=
NUSED,
>  			RK3288_CLKSEL_CON(31), 6, 2, MFLAGS, 0, 5, DFLAGS,
>  			RK3288_CLKGATE_CON(3), 0, GFLAGS),
> -	DIV(0, "hclk_vio", "aclk_vio0", 0,
> -			RK3288_CLKSEL_CON(28), 8, 5, DFLAGS),
>  	COMPOSITE(0, "aclk_vio1", mux_pll_src_cpll_gpll_usb480m_p, CLK_IGNORE_U=
NUSED,
>  			RK3288_CLKSEL_CON(31), 14, 2, MFLAGS, 8, 5, DFLAGS,
>  			RK3288_CLKGATE_CON(3), 2, GFLAGS),
> @@ -819,6 +817,16 @@ static struct rockchip_clk_branch rk3288_clk_branche=
s[] __initdata =3D {
>  	INVERTER(0, "pclk_isp", "pclk_isp_in", RK3288_CLKSEL_CON(29), 3, IFLAGS=
),
>  };
>  =

> +static struct rockchip_clk_branch rk3288w_hclkvio_branch[] __initdata =
=3D {
> +	DIV(0, "hclk_vio", "aclk_vio1", 0,
> +	    RK3288_CLKSEL_CON(28), 8, 5, DFLAGS),

please keep indentations as they were, the sub-lines starting where they
are is actually intentional :-)


> +};
> +
> +static struct rockchip_clk_branch rk3288_hclkvio_branch[] __initdata =3D=
 {
> +	DIV(0, "hclk_vio", "aclk_vio0", 0,
> +	    RK3288_CLKSEL_CON(28), 8, 5, DFLAGS),

same here

> +};
> +
>  static const char *const rk3288_critical_clocks[] __initconst =3D {
>  	"aclk_cpu",
>  	"aclk_peri",
> @@ -936,6 +944,14 @@ static void __init rk3288_clk_init(struct device_nod=
e *np)
>  				   RK3288_GRF_SOC_STATUS1);
>  	rockchip_clk_register_branches(ctx, rk3288_clk_branches,
>  				  ARRAY_SIZE(rk3288_clk_branches));
> +
> +	if (of_device_is_compatible(np, "rockchip,rk3288w-cru"))
> +		rockchip_clk_register_branches(ctx, rk3288w_hclkvio_branch,
> +					       ARRAY_SIZE(rk3288w_hclkvio_branch));
> +	else
> +		rockchip_clk_register_branches(ctx, rk3288_hclkvio_branch,
> +					       ARRAY_SIZE(rk3288_hclkvio_branch));
> +
>  	rockchip_clk_protect_critical(rk3288_critical_clocks,
>  				      ARRAY_SIZE(rk3288_critical_clocks));
>  =

> =






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

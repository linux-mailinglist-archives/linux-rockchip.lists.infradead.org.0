Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 787991202C6
	for <lists+linux-rockchip@lfdr.de>; Mon, 16 Dec 2019 11:39:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lieYgXHG44azaSSh7BpKQa+XqSvzlAiUEvI/LgWK7hc=; b=b8yS/SHoifPFLj
	QGV86YdkPi8MTl38uODY//ko9vyax9+TY+bTGZF1B70FY8ChoTDFssSBmRwASa+WPH1gtdWWIlV2s
	FjwLEqGCtaREyYq4ToNFS9VzfbqGSwXO30st99MmwyIF6VLZwq6EtRcPPqppKX463CgChOz3c++M9
	HdgGCX7/1/eYEsLI61wb6Do5ws3eSR+RrMOxhIdLyMCkkbjmR9uOzMaaSHbEgS/j599eOh7XtG/Lr
	o1EjLmq5R30g4V7IoI4YzlNwtJga7Ce2PCwDAEEVwh03j9gBZleqGRR3Vpfl6+z4iK8WmSXdrss4l
	pifIx7yZii2KlXNb8OJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ignn4-0002Fu-NL; Mon, 16 Dec 2019 10:39:50 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ignn1-0002FK-0D
 for linux-rockchip@lists.infradead.org; Mon, 16 Dec 2019 10:39:48 +0000
Received: by mail-wr1-x441.google.com with SMTP id t2so6632345wrr.1
 for <linux-rockchip@lists.infradead.org>; Mon, 16 Dec 2019 02:39:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:openpgp:autocrypt:organization
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=ii06wxcb9L021v3GgtcqEZ9AgzJ8e/NMKTcA4UTvOEY=;
 b=uFI9httlI4FlbYf3pq+TtooCL62GDwlyjemmEDfVia8KyutxATi+dhuUXCXWIB2JSB
 aRmhPcJdb37Kz2FUUa/+aYJVivDdu+l8aAwpTFLxLOzPzuqSS5Y0gkceb4fmooFcZdbk
 RWfD06QSJ/HYJUZRNRxB57N9mavB+Zncfqh8E7b8ZxHsbvC2pXudNdHP+RrUJcxzihPz
 NBoGZxawdSOiEPwmO5SAhFZIE57Vk0vxa+CpSXSkOBQwrcZ9g9ImxMCHvowidHKvO5YX
 0vx1oLrINJuUskf1MD5Td+w4E9hYV9VFFpmOPkEeOb2B94YLmhFntXMCfZf9U7TKpcwr
 hzrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :organization:message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=ii06wxcb9L021v3GgtcqEZ9AgzJ8e/NMKTcA4UTvOEY=;
 b=a5ajuQJpwPBRizP8dxjzs/bisKRj8Xy14MOeD9DD90rcWfsp2OEWc7l3+7MN0RDP/a
 T7262jyUnjZMO35p/0qxGpvCX6zoubbclZ8IFOjDxH4yoOibUcc95PgYkinvFbR3ngYu
 xzFjWOrpuFRjMBs2q1/mA748+SoiQDYqbjBVeSuJyXpp5MPPnx8YpNg0vsBJ61Lievig
 byLm6RA5tTJCAJkRy2hcubtkzS75RdyeLqIN4ZI9Ep9d8i5gHoulm7pOJknhloriYZNg
 s8fp2v6M+oUtyqB1ZJDhcg04uS9ZXwv9pH6hJqz1vvyKLXYi5PkBJs0CDN8scW+w2kcP
 RZIg==
X-Gm-Message-State: APjAAAUEDpkHq7HKK8T0OMPXqCbexmxlmjhaqd0Km+mFJY3fUrJ4C2bx
 Yp98fjM1NiizYmx/bwtRtdw5Mw==
X-Google-Smtp-Source: APXvYqxVGQvgWvVnRxy9bC1AGO790BmKTAc01FS7CV0llqhz8LkqEFIJgHcJfzxc8yn5yPgOOPLiuQ==
X-Received: by 2002:adf:e3d0:: with SMTP id k16mr30082646wrm.241.1576492785196; 
 Mon, 16 Dec 2019 02:39:45 -0800 (PST)
Received: from [10.2.4.230] (lfbn-nic-1-505-157.w90-116.abo.wanadoo.fr.
 [90.116.92.157])
 by smtp.gmail.com with ESMTPSA id k13sm20958632wrx.59.2019.12.16.02.39.44
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 16 Dec 2019 02:39:44 -0800 (PST)
Subject: Re: [PATCH v5 6/6] drm/rockchip: dsi: add px30 support
To: Heiko Stuebner <heiko@sntech.de>, a.hajda@samsung.com
References: <20191209143130.4553-1-heiko@sntech.de>
 <20191209143130.4553-7-heiko@sntech.de>
From: Neil Armstrong <narmstrong@baylibre.com>
Openpgp: preference=signencrypt
Autocrypt: addr=narmstrong@baylibre.com; prefer-encrypt=mutual; keydata=
 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
 ZaTUOEkgIor5losDrePdPgE=
Organization: Baylibre
Message-ID: <99e4a800-fa12-9d64-3ceb-99b961a9f3d3@baylibre.com>
Date: Mon, 16 Dec 2019 11:39:43 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191209143130.4553-7-heiko@sntech.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_023947_043658_F5C20E33 
X-CRM114-Status: GOOD (  18.31  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: bivvy.bi@rock-chips.com, jernej.skrabec@siol.net,
 kuninori.morimoto.gx@renesas.com, jonas@kwiboo.se, sean@poorly.run,
 xzy.xu@rock-chips.com, philippe.cornu@st.com, dri-devel@lists.freedesktop.org,
 hjc@rock-chips.com, yannick.fertre@st.com, linux-rockchip@lists.infradead.org,
 nickey.yang@rock-chips.com, eddie.cai@rock-chips.com,
 Laurent.pinchart@ideasonboard.com,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>, sam@ravnborg.org,
 christoph.muellner@theobroma-systems.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On 09/12/2019 15:31, Heiko Stuebner wrote:
> From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> 
> Add the compatible and GRF definitions for the PX30 soc.
> 
> changes in v5:
> - rebased on top of 5.5-rc1
> - merged with dsi timing change to prevent ordering conflicts
> 
> Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> ---
>  .../gpu/drm/rockchip/dw-mipi-dsi-rockchip.c   | 27 +++++++++++++++++++
>  1 file changed, 27 insertions(+)
> 
> diff --git a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
> index f16bd1e9b633..f04b5064974d 100644
> --- a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
> +++ b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
> @@ -140,6 +140,12 @@
>  #define DW_MIPI_NEEDS_PHY_CFG_CLK	BIT(0)
>  #define DW_MIPI_NEEDS_GRF_CLK		BIT(1)
>  
> +#define PX30_GRF_PD_VO_CON1		0x0438
> +#define PX30_DSI_FORCETXSTOPMODE	(0xf << 7)
> +#define PX30_DSI_FORCERXMODE		BIT(6)
> +#define PX30_DSI_TURNDISABLE		BIT(5)
> +#define PX30_DSI_LCDC_SEL		BIT(0)
> +
>  #define RK3288_GRF_SOC_CON6		0x025c
>  #define RK3288_DSI0_LCDC_SEL		BIT(6)
>  #define RK3288_DSI1_LCDC_SEL		BIT(9)
> @@ -1127,6 +1133,24 @@ static int dw_mipi_dsi_rockchip_remove(struct platform_device *pdev)
>  	return 0;
>  }
>  
> +static const struct rockchip_dw_dsi_chip_data px30_chip_data[] = {
> +	{
> +		.reg = 0xff450000,
> +		.lcdsel_grf_reg = PX30_GRF_PD_VO_CON1,
> +		.lcdsel_big = HIWORD_UPDATE(0, PX30_DSI_LCDC_SEL),
> +		.lcdsel_lit = HIWORD_UPDATE(PX30_DSI_LCDC_SEL,
> +					    PX30_DSI_LCDC_SEL),
> +
> +		.lanecfg1_grf_reg = PX30_GRF_PD_VO_CON1,
> +		.lanecfg1 = HIWORD_UPDATE(0, PX30_DSI_TURNDISABLE |
> +					     PX30_DSI_FORCERXMODE |
> +					     PX30_DSI_FORCETXSTOPMODE),
> +
> +		.max_data_lanes = 4,
> +	},
> +	{ /* sentinel */ }
> +};
> +
>  static const struct rockchip_dw_dsi_chip_data rk3288_chip_data[] = {
>  	{
>  		.reg = 0xff960000,
> @@ -1195,6 +1219,9 @@ static const struct rockchip_dw_dsi_chip_data rk3399_chip_data[] = {
>  
>  static const struct of_device_id dw_mipi_dsi_rockchip_dt_ids[] = {
>  	{
> +	 .compatible = "rockchip,px30-mipi-dsi",
> +	 .data = &px30_chip_data,
> +	}, {
>  	 .compatible = "rockchip,rk3288-mipi-dsi",
>  	 .data = &rk3288_chip_data,
>  	}, {
> 

Reviewed-by: Neil Armstrong <narmstrong@baylibre.com>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

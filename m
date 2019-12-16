Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B49D1202C3
	for <lists+linux-rockchip@lfdr.de>; Mon, 16 Dec 2019 11:39:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LAvviI57WyAe4zcmUqnZjt6ZJL4WzYDtxtSU+0wzCyo=; b=MZK0AtFAxTgJmP
	27kfkQ+pxuXh2lv2hqMvb2Mdl3lA97g32AHQXaKmq7aunV9pcQ8rImYzVkawgHWgBrAbitbnKgXfp
	NQgiEz+OjSz9+FTwGrUQ/E3FovgS57ip3zApL31IXNCTnDyac1T8g6vfRfFREsGQKhQjp4LZnl7SG
	T0hEDVHwuBJgYMvEmM5jpX173FVK7LH0jxtGBek6396ZwAm15to4Kx3S23JGpOFbB7PTFOAdXHZnw
	f5ggwjIKA0niTULMO2a5pbI5h02uKEIWtFP1WWgnSrbqYbtePEkhIamrczJzCaBG/7Fx57xRJOtMa
	v7fRJFNYprdJZWENkYsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ignmZ-0002AS-VM; Mon, 16 Dec 2019 10:39:19 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ignmW-00029m-VX
 for linux-rockchip@lists.infradead.org; Mon, 16 Dec 2019 10:39:18 +0000
Received: by mail-wr1-x444.google.com with SMTP id b6so6638841wrq.0
 for <linux-rockchip@lists.infradead.org>; Mon, 16 Dec 2019 02:39:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:openpgp:autocrypt:organization
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=iUEj1Sq+gPRazKsZFaCSsJgKA7ZuTEYORKqousBx8Ic=;
 b=X+Mm74liExH2eRr5JZcJ9Key/NLzp99hzDGz8AdYTGsSJbtMDb3BG9CclOL7N4CYps
 SYY9sxJR/odN0RMlZoDCsMPRbjjYu69XNg1ahUtd/I95xE/fUojoIwB3u04nGXzh8whp
 d865IGhvJuzoLn5ygc5bWy31ijZlHHib9hpnC5rop78cXJHkljFyh5YfGlHvPuo+qXSm
 oOh6Puhn8dDWQJWK2Sx/B/NMuPTbkd4dNOjW3bTBxwB4qeSUERN4TfAKwbvrv0L1Pvvz
 GZs5hOIwZaDFjZlJbZjHLvoZ1fLNiA/J94MZk/Aiwcu6/ftLloC+eJBpDegjTWOdlMw1
 kmYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :organization:message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=iUEj1Sq+gPRazKsZFaCSsJgKA7ZuTEYORKqousBx8Ic=;
 b=KUnguBzIJccin8W+JF3Ar7zbEIr9ehmR2OXZtAbkgzQ+Y79d0TtsuSz/Glm7du52EX
 CeRZtyKmLk4PPcYRncu9YV5qt0aJk9PrQzzb9nkWQbmjwCUZmHabOydHdEBlrs8c2g9w
 xOFlmB/8neOduY3yj2qjf2GiFaFiY4wOnepHyFkL1QDud1KbV91zb92O3q2F+GJEf0sJ
 4/6VncFjnUBWBu3zDCCmiWDhq7i4PBpPIiQI0Wd+3JLGfvsId4ZRP43Kz2fvpx9SMxeM
 pnpZlWW+Pzy9aj9Bn4RzM47QXUUmLS069HQbPxJ/Aq7t699/1F/L8Y49DxWt67NW3d2W
 tbFQ==
X-Gm-Message-State: APjAAAWJovI41k836xfWtnLInJBvQidKRZ8eaS2NMHg/2JJSD/7PVR/E
 BEEQFPiOLb006sUMVjnH4YgZWA==
X-Google-Smtp-Source: APXvYqzfzYiDgn55zkTvomEaxMD9mGfFM0wVVmu7MRPFRotExPDnBBd+hOxaAFEbe4TeMBs1P5eCjA==
X-Received: by 2002:adf:fe90:: with SMTP id l16mr31043802wrr.265.1576492755275; 
 Mon, 16 Dec 2019 02:39:15 -0800 (PST)
Received: from [10.2.4.230] (lfbn-nic-1-505-157.w90-116.abo.wanadoo.fr.
 [90.116.92.157])
 by smtp.gmail.com with ESMTPSA id x18sm20857268wrr.75.2019.12.16.02.39.14
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 16 Dec 2019 02:39:14 -0800 (PST)
Subject: Re: [PATCH v5 4/6] drm/rockchip: add ability to handle external dphys
 in mipi-dsi
To: Heiko Stuebner <heiko@sntech.de>, a.hajda@samsung.com
References: <20191209143130.4553-1-heiko@sntech.de>
 <20191209143130.4553-5-heiko@sntech.de>
From: Neil Armstrong <narmstrong@baylibre.com>
Openpgp: preference=signencrypt
Autocrypt: addr=narmstrong@baylibre.com; prefer-encrypt=mutual; keydata=
 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
 ZaTUOEkgIor5losDrePdPgE=
Organization: Baylibre
Message-ID: <b53704e5-83eb-3dcf-60d8-f21ef51859ee@baylibre.com>
Date: Mon, 16 Dec 2019 11:39:13 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191209143130.4553-5-heiko@sntech.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_023917_020674_C706E1D7 
X-CRM114-Status: GOOD (  25.08  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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
> While the common case is that the dsi controller uses an internal dphy,
> accessed through the phy registers inside the dsi controller, there is
> also the possibility to use a separate dphy from a different vendor.
> 
> One such case is the Rockchip px30 that uses a Innosilicon Mipi dphy,
> so add the support for handling such a constellation, including the pll
> also getting generated inside that external phy.
> 
> changes in v5:
> - rebased on top of 5.5-rc1
> - merged with dsi timing change to prevent ordering conflicts
> 
> Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> ---
>  .../gpu/drm/rockchip/dw-mipi-dsi-rockchip.c   | 68 +++++++++++++++++--
>  1 file changed, 64 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
> index 9406effe8077..f16bd1e9b633 100644
> --- a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
> +++ b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
> @@ -12,6 +12,7 @@
>  #include <linux/mfd/syscon.h>
>  #include <linux/module.h>
>  #include <linux/of_device.h>
> +#include <linux/phy/phy.h>
>  #include <linux/pm_runtime.h>
>  #include <linux/regmap.h>
>  
> @@ -223,6 +224,10 @@ struct dw_mipi_dsi_rockchip {
>  	bool is_slave;
>  	struct dw_mipi_dsi_rockchip *slave;
>  
> +	/* optional external dphy */
> +	struct phy *phy;
> +	union phy_configure_opts phy_opts;
> +
>  	unsigned int lane_mbps; /* per lane */
>  	u16 input_div;
>  	u16 feedback_div;
> @@ -359,6 +364,9 @@ static int dw_mipi_dsi_phy_init(void *priv_data)
>  	struct dw_mipi_dsi_rockchip *dsi = priv_data;
>  	int ret, i, vco;
>  
> +	if (dsi->phy)
> +		return 0;
> +
>  	/*
>  	 * Get vco from frequency(lane_mbps)
>  	 * vco	frequency table
> @@ -467,6 +475,28 @@ static int dw_mipi_dsi_phy_init(void *priv_data)
>  	return ret;
>  }
>  
> +static void dw_mipi_dsi_phy_power_on(void *priv_data)
> +{
> +	struct dw_mipi_dsi_rockchip *dsi = priv_data;
> +	int ret;
> +
> +	ret = phy_set_mode(dsi->phy, PHY_MODE_MIPI_DPHY);
> +	if (ret) {
> +		DRM_DEV_ERROR(dsi->dev, "failed to set phy mode: %d\n", ret);
> +		return;
> +	}
> +
> +	phy_configure(dsi->phy, &dsi->phy_opts);
> +	phy_power_on(dsi->phy);
> +}
> +
> +static void dw_mipi_dsi_phy_power_off(void *priv_data)
> +{
> +	struct dw_mipi_dsi_rockchip *dsi = priv_data;
> +
> +	phy_power_off(dsi->phy);
> +}
> +
>  static int
>  dw_mipi_dsi_get_lane_mbps(void *priv_data, const struct drm_display_mode *mode,
>  			  unsigned long mode_flags, u32 lanes, u32 format,
> @@ -504,6 +534,17 @@ dw_mipi_dsi_get_lane_mbps(void *priv_data, const struct drm_display_mode *mode,
>  				      "DPHY clock frequency is out of range\n");
>  	}
>  
> +	/* for external phy only a the mipi_dphy_config is necessary */
> +	if (dsi->phy) {
> +		phy_mipi_dphy_get_default_config(mode->clock * 1000 * 10 / 8,
> +						 bpp, lanes,
> +						 &dsi->phy_opts.mipi_dphy);
> +		dsi->lane_mbps = target_mbps;
> +		*lane_mbps = dsi->lane_mbps;
> +
> +		return 0;
> +	}
> +
>  	fin = clk_get_rate(dsi->pllref_clk);
>  	fout = target_mbps * USEC_PER_SEC;
>  
> @@ -638,6 +679,8 @@ dw_mipi_dsi_phy_get_timing(void *priv_data, unsigned int lane_mbps,
>  
>  static const struct dw_mipi_dsi_phy_ops dw_mipi_dsi_rockchip_phy_ops = {
>  	.init = dw_mipi_dsi_phy_init,
> +	.power_on = dw_mipi_dsi_phy_power_on,
> +	.power_off = dw_mipi_dsi_phy_power_off,
>  	.get_lane_mbps = dw_mipi_dsi_get_lane_mbps,
>  	.get_timing = dw_mipi_dsi_phy_get_timing,
>  };
> @@ -998,12 +1041,29 @@ static int dw_mipi_dsi_rockchip_probe(struct platform_device *pdev)
>  		return -EINVAL;
>  	}
>  
> +	/* try to get a possible external dphy */
> +	dsi->phy = devm_phy_optional_get(dev, "dphy");
> +	if (IS_ERR(dsi->phy)) {
> +		ret = PTR_ERR(dsi->phy);
> +		DRM_DEV_ERROR(dev, "failed to get mipi dphy: %d\n", ret);
> +		return ret;
> +	}
> +
>  	dsi->pllref_clk = devm_clk_get(dev, "ref");
>  	if (IS_ERR(dsi->pllref_clk)) {
> -		ret = PTR_ERR(dsi->pllref_clk);
> -		DRM_DEV_ERROR(dev,
> -			      "Unable to get pll reference clock: %d\n", ret);
> -		return ret;
> +		if (dsi->phy) {
> +			/*
> +			 * if external phy is present, pll will be
> +			 * generated there.
> +			 */
> +			dsi->pllref_clk = NULL;
> +		} else {
> +			ret = PTR_ERR(dsi->pllref_clk);
> +			DRM_DEV_ERROR(dev,
> +				      "Unable to get pll reference clock: %d\n",
> +				      ret);
> +			return ret;
> +		}
>  	}
>  
>  	if (dsi->cdata->flags & DW_MIPI_NEEDS_PHY_CFG_CLK) {
> 

Reviewed-by: Neil Armstrong <narmstrong@baylibre.com>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

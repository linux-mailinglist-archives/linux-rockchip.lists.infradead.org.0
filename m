Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8349C108B66
	for <lists+linux-rockchip@lfdr.de>; Mon, 25 Nov 2019 11:09:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=COFKg5aImYyyonK3YvuLNNWYzCHMWn2XON05BmXaPRo=; b=OZsX29F+KMB8qX
	Ay0w4YLpjlf8Fnx2ZsR5sVW2OisLYUsQ3Yc640eZnwt3cNuZ6VuLZOQ1Wn78v2dyJsz3N/rc+T6V0
	pN+yzdxsh/r/x93fzcTupDWH8iw1J2xnDaDOf027n0vIuNPrbyb4PNbH+pqoOLRXZu5p/RE+aSVWf
	A7eEESIUvJZvwPy6UUmN2c6cLCYGKuSFzgUj/2AHGi56uv8ewCzzmYNCUWimiuHIMG3f1wihu8xa1
	gJVtg2CLtFZm+O/hsXfnjigHKRHMoUBcHWkzj09HeTMkrVpJ3AxnxGV7AZKJ48yeUgMzrKMUfq3R6
	7a1v8Tvhr1Gxepa/nfzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZBJb-0007ti-A8; Mon, 25 Nov 2019 10:09:55 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZBJX-0007tB-6Y
 for linux-rockchip@lists.infradead.org; Mon, 25 Nov 2019 10:09:54 +0000
Received: by mail-wm1-x344.google.com with SMTP id y5so15195253wmi.5
 for <linux-rockchip@lists.infradead.org>; Mon, 25 Nov 2019 02:09:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:openpgp:autocrypt:organization
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=x1W78m1u/LQKtp5tGLR0wkaAU9vrBD+v82ceAsHDQns=;
 b=gCCdL7tt4UpWC1YgyUHbmnHgIGphoiBdeyhg76mLqr8NXH7VUeDaQVCH8YWUM7N7sp
 qtAWpMDNKXID/fuX/22MJoUiRkY8qbCxrhRxrDkZztq/wmd1DqnKrZRVa6mL/Nkz7If7
 2ET3YuYDohHBuzXRCOQqkyDHWN2QghPinWxonkSY42yM0F9t1TAAr0btrC42BmFkDOPr
 0FtcDDylwLMo7mLjA5vi2kogzhDWOqEWywoyjT05LfRk0G6de13iJotuUNyqL/9FFFvV
 +uCyMpjN6RxUjjbQwGvGa4+aLWF004ZnfxoNF98Guc42rAHA/29p+7QfQtaF69b5JLcs
 wXBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :organization:message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=x1W78m1u/LQKtp5tGLR0wkaAU9vrBD+v82ceAsHDQns=;
 b=JuZ4MxK3JUQ+qEMy97qQ2od0GnSxDO+cF4Tmdku0BNbW4l6y5WkXHQ9BtpLlcfgJzG
 RABT198FKgzgwjW09x0ZUqWt1TqhX1Rpj6Y1UifpLiDp9jELA6Xh5p1TFI+QEj8554Rb
 jY6MuXrFtHTzPi4vXSCLgM5HYUQvfxSX/RApCdQitTpz3CWDl7vQClNnf+Ndg3cYtGDr
 Bkkuk8TBVaAsJZPVlBwiUCVqNXtKmnX8gSEnNCXRSp2RnGjfnTUL8Q/Z8/aosiO4a+Zi
 ywVFrHsqFHxl3VQKyEwXgiUy80r/fyThV8yjUU7E5w8T1XahYE1I/LwFcrWUiUU4nV6a
 Bwrg==
X-Gm-Message-State: APjAAAUjtqTOsX2UN/kZli/CqYBWH/DxHaNsxnIEKHdY+OyiKsLeIsMO
 57JBIR99Dyfp8N+P5KBnq9XISA==
X-Google-Smtp-Source: APXvYqwxNrRVj6D129ZYTz6x3P5mvSApPGFYA7darKFdAqkWmNPmBdTfgN/xH3Cbx3n3CB5YTu5PhA==
X-Received: by 2002:a7b:c935:: with SMTP id h21mr7707432wml.173.1574676587771; 
 Mon, 25 Nov 2019 02:09:47 -0800 (PST)
Received: from [10.1.2.12] (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id b17sm10026158wrp.49.2019.11.25.02.09.46
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 25 Nov 2019 02:09:47 -0800 (PST)
Subject: Re: [PATCH v3 RESEND] drm/bridge/synopsys: dsi: driver-specific
 configuration of phy timings
To: Heiko Stuebner <heiko@sntech.de>, a.hajda@samsung.com
References: <20191125093151.22706-1-heiko@sntech.de>
From: Neil Armstrong <narmstrong@baylibre.com>
Openpgp: preference=signencrypt
Autocrypt: addr=narmstrong@baylibre.com; prefer-encrypt=mutual; keydata=
 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
 ZaTUOEkgIor5losDrePdPgE=
Organization: Baylibre
Message-ID: <695294b9-8105-4be0-15a5-73243b227cb1@baylibre.com>
Date: Mon, 25 Nov 2019 11:09:39 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191125093151.22706-1-heiko@sntech.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_020951_296233_559D6CCE 
X-CRM114-Status: GOOD (  26.52  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: bivvy.bi@rock-chips.com, jernej.skrabec@siol.net, xzy.xu@rock-chips.com,
 kuninori.morimoto.gx@renesas.com, jonas@kwiboo.se, sean@poorly.run,
 briannorris@chromium.org, dianders@chromium.org,
 dri-devel@lists.freedesktop.org, philippe.cornu@st.com, yannick.fertre@st.com,
 linux-rockchip@lists.infradead.org, nickey.yang@rock-chips.com,
 hjc@rock-chips.com, eddie.cai@rock-chips.com,
 Laurent.pinchart@ideasonboard.com,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>, sam@ravnborg.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi,

On 25/11/2019 10:31, Heiko Stuebner wrote:
> From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> 
> The timing values for dw-dsi are often dependent on the used display and
> according to Philippe Cornu will most likely also depend on the used phy
> technology in the soc-specific implementation.
> 
> To solve this and allow specific implementations to define them as needed
> add a new get_timing callback to phy_ops and call this from the dphy_timing
> function to retrieve the necessary values for the specific mode.
> 
> Right now this handles the hs2lp + lp2hs where Rockchip SoCs need handling
> according to the phy speed, while STM seems to be ok with static values.
> 
> changes in v3:
> - check existence of phy_ops->get_timing in __dw_mipi_dsi_probe()
> - emit actual error when get_timing() call fails
> - add tags from Philippe and Yannick
> 
> changes in v2:
> - add driver-specific handling, don't force all bridge users to use
>   the same timings, as suggested by Philippe
> 
> Suggested-by: Philippe Cornu <philippe.cornu@st.com>
> Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> Reviewed-by: Philippe Cornu <philippe.cornu@st.com>
> Tested-by: Yannick Fertre <yannick.fertre@st.com>
> ---
> Resend because I seem to have forgotten to Cc mailing lists
> 
>  drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c | 27 +++++--
>  drivers/gpu/drm/rockchip/Kconfig              |  1 +
>  .../gpu/drm/rockchip/dw-mipi-dsi-rockchip.c   | 78 +++++++++++++++++++
>  drivers/gpu/drm/stm/dw_mipi_dsi-stm.c         | 13 ++++
>  include/drm/bridge/dw_mipi_dsi.h              |  9 +++
>  5 files changed, 121 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c b/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
> index c214c6389918..b8b112278690 100644
> --- a/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
> +++ b/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
> @@ -727,7 +727,15 @@ static void dw_mipi_dsi_vertical_timing_config(struct dw_mipi_dsi *dsi,
>  
>  static void dw_mipi_dsi_dphy_timing_config(struct dw_mipi_dsi *dsi)
>  {
> +	const struct dw_mipi_dsi_phy_ops *phy_ops = dsi->plat_data->phy_ops;
> +	struct dw_mipi_dsi_dphy_timing timing;
>  	u32 hw_version;
> +	int ret;
> +
> +	ret = phy_ops->get_timing(dsi->plat_data->priv_data,
> +				  dsi->lane_mbps, &timing);
> +	if (ret)
> +		DRM_DEV_ERROR(dsi->dev, "Retrieving phy timings failed\n");
>  
>  	/*
>  	 * TODO dw drv improvements
> @@ -740,16 +748,20 @@ static void dw_mipi_dsi_dphy_timing_config(struct dw_mipi_dsi *dsi)
>  	hw_version = dsi_read(dsi, DSI_VERSION) & VERSION;
>  
>  	if (hw_version >= HWVER_131) {
> -		dsi_write(dsi, DSI_PHY_TMR_CFG, PHY_HS2LP_TIME_V131(0x40) |
> -			  PHY_LP2HS_TIME_V131(0x40));
> +		dsi_write(dsi, DSI_PHY_TMR_CFG,
> +			  PHY_HS2LP_TIME_V131(timing.data_hs2lp) |
> +			  PHY_LP2HS_TIME_V131(timing.data_lp2hs));
>  		dsi_write(dsi, DSI_PHY_TMR_RD_CFG, MAX_RD_TIME_V131(10000));
>  	} else {
> -		dsi_write(dsi, DSI_PHY_TMR_CFG, PHY_HS2LP_TIME(0x40) |
> -			  PHY_LP2HS_TIME(0x40) | MAX_RD_TIME(10000));
> +		dsi_write(dsi, DSI_PHY_TMR_CFG,
> +			  PHY_HS2LP_TIME(timing.data_hs2lp) |
> +			  PHY_LP2HS_TIME(timing.data_lp2hs) |
> +			  MAX_RD_TIME(10000));
>  	}
>  
> -	dsi_write(dsi, DSI_PHY_TMR_LPCLK_CFG, PHY_CLKHS2LP_TIME(0x40)
> -		  | PHY_CLKLP2HS_TIME(0x40));
> +	dsi_write(dsi, DSI_PHY_TMR_LPCLK_CFG,
> +		  PHY_CLKHS2LP_TIME(timing.clk_hs2lp) |
> +		  PHY_CLKLP2HS_TIME(timing.clk_lp2hs));
>  }
>  
>  static void dw_mipi_dsi_dphy_interface_config(struct dw_mipi_dsi *dsi)
> @@ -999,7 +1011,8 @@ __dw_mipi_dsi_probe(struct platform_device *pdev,
>  	dsi->dev = dev;
>  	dsi->plat_data = plat_data;
>  
> -	if (!plat_data->phy_ops->init || !plat_data->phy_ops->get_lane_mbps) {
> +	if (!plat_data->phy_ops->init || !plat_data->phy_ops->get_lane_mbps ||
> +	    !plat_data->phy_ops->get_timing) {
>  		DRM_ERROR("Phy not properly configured\n");
>  		return ERR_PTR(-ENODEV);
>  	}
> diff --git a/drivers/gpu/drm/rockchip/Kconfig b/drivers/gpu/drm/rockchip/Kconfig
> index 6f4222f8beeb..4b7a276994ce 100644
> --- a/drivers/gpu/drm/rockchip/Kconfig
> +++ b/drivers/gpu/drm/rockchip/Kconfig
> @@ -46,6 +46,7 @@ config ROCKCHIP_DW_HDMI
>  
>  config ROCKCHIP_DW_MIPI_DSI
>  	bool "Rockchip specific extensions for Synopsys DW MIPI DSI"
> +	select GENERIC_PHY_MIPI_DPHY
>  	help
>  	  This selects support for Rockchip SoC specific extensions
>  	  for the Synopsys DesignWare HDMI driver. If you want to
> diff --git a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
> index 13858f377a0c..f04b5064974d 100644
> --- a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
> +++ b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
> @@ -606,11 +606,89 @@ dw_mipi_dsi_get_lane_mbps(void *priv_data, const struct drm_display_mode *mode,
>  	return 0;
>  }
>  
> +struct hstt {
> +	unsigned int maxfreq;
> +	struct dw_mipi_dsi_dphy_timing timing;
> +};
> +
> +#define HSTT(_maxfreq, _c_lp2hs, _c_hs2lp, _d_lp2hs, _d_hs2lp)	\
> +{					\
> +	.maxfreq = _maxfreq,		\
> +	.timing = {			\
> +		.clk_lp2hs = _c_lp2hs,	\
> +		.clk_hs2lp = _c_hs2lp,	\
> +		.data_lp2hs = _d_lp2hs,	\
> +		.data_hs2lp = _d_hs2lp,	\
> +	}				\
> +}
> +
> +/* Table A-3 High-Speed Transition Times */
> +struct hstt hstt_table[] = {
> +	HSTT(  90,  32, 20,  26, 13),
> +	HSTT( 100,  35, 23,  28, 14),
> +	HSTT( 110,  32, 22,  26, 13),
> +	HSTT( 130,  31, 20,  27, 13),
> +	HSTT( 140,  33, 22,  26, 14),
> +	HSTT( 150,  33, 21,  26, 14),
> +	HSTT( 170,  32, 20,  27, 13),
> +	HSTT( 180,  36, 23,  30, 15),
> +	HSTT( 200,  40, 22,  33, 15),
> +	HSTT( 220,  40, 22,  33, 15),
> +	HSTT( 240,  44, 24,  36, 16),
> +	HSTT( 250,  48, 24,  38, 17),
> +	HSTT( 270,  48, 24,  38, 17),
> +	HSTT( 300,  50, 27,  41, 18),
> +	HSTT( 330,  56, 28,  45, 18),
> +	HSTT( 360,  59, 28,  48, 19),
> +	HSTT( 400,  61, 30,  50, 20),
> +	HSTT( 450,  67, 31,  55, 21),
> +	HSTT( 500,  73, 31,  59, 22),
> +	HSTT( 550,  79, 36,  63, 24),
> +	HSTT( 600,  83, 37,  68, 25),
> +	HSTT( 650,  90, 38,  73, 27),
> +	HSTT( 700,  95, 40,  77, 28),
> +	HSTT( 750, 102, 40,  84, 28),
> +	HSTT( 800, 106, 42,  87, 30),
> +	HSTT( 850, 113, 44,  93, 31),
> +	HSTT( 900, 118, 47,  98, 32),
> +	HSTT( 950, 124, 47, 102, 34),
> +	HSTT(1000, 130, 49, 107, 35),
> +	HSTT(1050, 135, 51, 111, 37),
> +	HSTT(1100, 139, 51, 114, 38),
> +	HSTT(1150, 146, 54, 120, 40),
> +	HSTT(1200, 153, 57, 125, 41),
> +	HSTT(1250, 158, 58, 130, 42),
> +	HSTT(1300, 163, 58, 135, 44),
> +	HSTT(1350, 168, 60, 140, 45),
> +	HSTT(1400, 172, 64, 144, 47),
> +	HSTT(1450, 176, 65, 148, 48),
> +	HSTT(1500, 181, 66, 153, 50)
> +};
> +
> +static int
> +dw_mipi_dsi_phy_get_timing(void *priv_data, unsigned int lane_mbps,
> +			   struct dw_mipi_dsi_dphy_timing *timing)
> +{
> +	int i;
> +
> +	for (i = 0; i < ARRAY_SIZE(hstt_table); i++)
> +		if (lane_mbps < hstt_table[i].maxfreq)
> +			break;
> +
> +	if (i == ARRAY_SIZE(hstt_table))
> +		i--;
> +
> +	*timing = hstt_table[i].timing;
> +
> +	return 0;
> +}
> +
>  static const struct dw_mipi_dsi_phy_ops dw_mipi_dsi_rockchip_phy_ops = {
>  	.init = dw_mipi_dsi_phy_init,
>  	.power_on = dw_mipi_dsi_phy_power_on,
>  	.power_off = dw_mipi_dsi_phy_power_off,
>  	.get_lane_mbps = dw_mipi_dsi_get_lane_mbps,
> +	.get_timing = dw_mipi_dsi_phy_get_timing,
>  };
>  
>  static void dw_mipi_dsi_rockchip_config(struct dw_mipi_dsi_rockchip *dsi,
> diff --git a/drivers/gpu/drm/stm/dw_mipi_dsi-stm.c b/drivers/gpu/drm/stm/dw_mipi_dsi-stm.c
> index a03a642c147c..5c97e09bbfa0 100644
> --- a/drivers/gpu/drm/stm/dw_mipi_dsi-stm.c
> +++ b/drivers/gpu/drm/stm/dw_mipi_dsi-stm.c
> @@ -306,11 +306,24 @@ dw_mipi_dsi_get_lane_mbps(void *priv_data, const struct drm_display_mode *mode,
>  	return 0;
>  }
>  
> +static int
> +dw_mipi_dsi_phy_get_timing(void *priv_data, unsigned int lane_mbps,
> +			   struct dw_mipi_dsi_dphy_timing *timing)
> +{
> +	timing->clk_hs2lp = 0x40;
> +	timing->clk_lp2hs = 0x40;
> +	timing->data_hs2lp = 0x40;
> +	timing->data_lp2hs = 0x40;
> +
> +	return 0;
> +}
> +
>  static const struct dw_mipi_dsi_phy_ops dw_mipi_dsi_stm_phy_ops = {
>  	.init = dw_mipi_dsi_phy_init,
>  	.power_on = dw_mipi_dsi_phy_power_on,
>  	.power_off = dw_mipi_dsi_phy_power_off,

It doesn't apply at all on drm-misc-next due to missing "dw-mipi-dsi support for Rockchip px30" serie.

Neil

>  	.get_lane_mbps = dw_mipi_dsi_get_lane_mbps,
> +	.get_timing = dw_mipi_dsi_phy_get_timing,
>  };
>  
>  static struct dw_mipi_dsi_plat_data dw_mipi_dsi_stm_plat_data = {
> diff --git a/include/drm/bridge/dw_mipi_dsi.h b/include/drm/bridge/dw_mipi_dsi.h
> index 94cc64a342e1..b0e390b3288e 100644
> --- a/include/drm/bridge/dw_mipi_dsi.h
> +++ b/include/drm/bridge/dw_mipi_dsi.h
> @@ -19,6 +19,13 @@ struct dw_mipi_dsi;
>  struct mipi_dsi_device;
>  struct platform_device;
>  
> +struct dw_mipi_dsi_dphy_timing {
> +	u16 data_hs2lp;
> +	u16 data_lp2hs;
> +	u16 clk_hs2lp;
> +	u16 clk_lp2hs;
> +};
> +
>  struct dw_mipi_dsi_phy_ops {
>  	int (*init)(void *priv_data);
>  	void (*power_on)(void *priv_data);
> @@ -27,6 +34,8 @@ struct dw_mipi_dsi_phy_ops {
>  			     const struct drm_display_mode *mode,
>  			     unsigned long mode_flags, u32 lanes, u32 format,
>  			     unsigned int *lane_mbps);
> +	int (*get_timing)(void *priv_data, unsigned int lane_mbps,
> +			  struct dw_mipi_dsi_dphy_timing *timing);
>  };
>  
>  struct dw_mipi_dsi_host_ops {
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

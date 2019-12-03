Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB75510F89C
	for <lists+linux-rockchip@lfdr.de>; Tue,  3 Dec 2019 08:17:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5GD6IAwIe3dCTktlmf0NahTUGOsNPu3jbicM40rzB8Y=; b=Y2ZpNyqVsz3mzU
	cWxee6/9NJVnpRDXmDm86YVdg0h1e6uKYyrRTALF6lXReK1V4Kz1vkZytZMyzSNPNeKAOqVO5NoZs
	ISVjs8eKy9lNd195B7qb4sgFYp+tuy9wALprkSIbr4wpV19BtazG8qyLBRU440c1lSbdl+5j0e8c/
	MjCKxniglTCtn6xqs8vMYGWONryiX/QyBlXUTYZ0zPPGJt4Tu+IdObO2Aoeoh7u3Xt+VJeqwq3Plp
	rgKMvmc3Oy+2hwswa3RHK1ofNqkjzrqh8XN68ytob+2cax92Am27iCkV4GIuSiVc89vKjw9xA+lPX
	hgtsyHtWKKcHUgMkZoOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic2Qw-0001G3-12; Tue, 03 Dec 2019 07:17:18 +0000
Received: from perceval.ideasonboard.com
 ([2001:4b98:dc2:55:216:3eff:fef7:d647])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic2Qj-00015t-3U; Tue, 03 Dec 2019 07:17:06 +0000
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 71191309;
 Tue,  3 Dec 2019 08:17:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1575357423;
 bh=2sS2BNdYv6fX1ZVYfHwfsift774drFxDzzXfy61j3mo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=bPWhZrNrgOWtYf8bWSO9OXFRAzb0KzASqB+zcaGgwB8egLfVpmjpHb99ocat/HVZ2
 KXP6LctrJxUyHcBA8x+LtERl6X5lfcld+a+pF6yK2NbTsQYBNyZReQFnyJF+++NUfS
 WDvTL4PNlJKHLKW1i522QTbrUwCqyUerScR5JFEU=
Date: Tue, 3 Dec 2019 09:16:56 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Sam Ravnborg <sam@ravnborg.org>
Subject: Re: [PATCH v1 25/26] drm/panel: tpo-td028ttec1: use drm_panel
 backlight support
Message-ID: <20191203071656.GJ4730@pendragon.ideasonboard.com>
References: <20191202193230.21310-1-sam@ravnborg.org>
 <20191202193230.21310-26-sam@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191202193230.21310-26-sam@ravnborg.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_231705_435138_B1A23A59 
X-CRM114-Status: GOOD (  14.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 Linus Walleij <linus.walleij@linaro.org>, dri-devel@lists.freedesktop.org,
 Andrzej Hajda <a.hajda@samsung.com>, Thierry Reding <thierry.reding@gmail.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Stefan Agner <stefan@agner.ch>, linux-samsung-soc@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Tomi Valkeinen <tomi.valkeinen@ti.com>,
 NXP Linux Team <linux-imx@nxp.com>, Jagan Teki <jagan@amarulasolutions.com>,
 Jitao Shi <jitao.shi@mediatek.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, linux-mediatek@lists.infradead.org,
 Abhinav Kumar <abhinavk@codeaurora.org>, linux-tegra@vger.kernel.org,
 Sean Paul <sean@poorly.run>, linux-arm-kernel@lists.infradead.org,
 Purism Kernel Team <kernel@puri.sm>, linux-renesas-soc@vger.kernel.org,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Daniel Vetter <daniel@ffwll.ch>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Sam,

Thank you for the patch.

On Mon, Dec 02, 2019 at 08:32:29PM +0100, Sam Ravnborg wrote:
> Use the backlight support in drm_panel to simplify the driver
> 
> Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
> Cc: Thierry Reding <thierry.reding@gmail.com>
> Cc: Sam Ravnborg <sam@ravnborg.org>

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

> ---
>  drivers/gpu/drm/panel/panel-tpo-td028ttec1.c | 14 ++++----------
>  1 file changed, 4 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/gpu/drm/panel/panel-tpo-td028ttec1.c b/drivers/gpu/drm/panel/panel-tpo-td028ttec1.c
> index 37252590b541..cf29405a2dbe 100644
> --- a/drivers/gpu/drm/panel/panel-tpo-td028ttec1.c
> +++ b/drivers/gpu/drm/panel/panel-tpo-td028ttec1.c
> @@ -17,7 +17,6 @@
>   * H. Nikolaus Schaller <hns@goldelico.com>
>   */
>  
> -#include <linux/backlight.h>
>  #include <linux/delay.h>
>  #include <linux/module.h>
>  #include <linux/spi/spi.h>
> @@ -83,7 +82,6 @@ struct td028ttec1_panel {
>  	struct drm_panel panel;
>  
>  	struct spi_device *spi;
> -	struct backlight_device *backlight;
>  };
>  
>  #define to_td028ttec1_device(p) container_of(p, struct td028ttec1_panel, panel)
> @@ -243,8 +241,6 @@ static int td028ttec1_enable(struct drm_panel *panel)
>  	if (ret)
>  		return ret;
>  
> -	backlight_enable(lcd->backlight);
> -
>  	return 0;
>  }
>  
> @@ -252,8 +248,6 @@ static int td028ttec1_disable(struct drm_panel *panel)
>  {
>  	struct td028ttec1_panel *lcd = to_td028ttec1_device(panel);
>  
> -	backlight_disable(lcd->backlight);
> -
>  	jbt_ret_write_0(lcd, JBT_REG_DISPLAY_OFF, NULL);
>  
>  	return 0;
> @@ -334,10 +328,6 @@ static int td028ttec1_probe(struct spi_device *spi)
>  	spi_set_drvdata(spi, lcd);
>  	lcd->spi = spi;
>  
> -	lcd->backlight = devm_of_find_backlight(&spi->dev);
> -	if (IS_ERR(lcd->backlight))
> -		return PTR_ERR(lcd->backlight);
> -
>  	spi->mode = SPI_MODE_3;
>  	spi->bits_per_word = 9;
>  
> @@ -350,6 +340,10 @@ static int td028ttec1_probe(struct spi_device *spi)
>  	drm_panel_init(&lcd->panel, &lcd->spi->dev, &td028ttec1_funcs,
>  		       DRM_MODE_CONNECTOR_DPI);
>  
> +	ret = drm_panel_of_backlight(&lcd->panel);
> +	if (ret)
> +		return ret;
> +
>  	return drm_panel_add(&lcd->panel);
>  }
>  

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

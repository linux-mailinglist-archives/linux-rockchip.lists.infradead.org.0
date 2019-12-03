Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44BF810F7C6
	for <lists+linux-rockchip@lfdr.de>; Tue,  3 Dec 2019 07:25:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wdIRF2vyTv4P12zO1bWk5r9MzPtVYtrlSBJteX6TTfE=; b=Ze+4K+OSeAeEu/
	P4yfdqb0oaJh9h8TGbLch6g2l2P7iy5RfUWQxvdz7AZRaK298i94bRZbzb5Z25fk++qy2TfleN50s
	OJaY49hD6wnrHHVMKdyb4QxQrytIFYB8knFaMnpOKSiMcp6fynG0Hs7h+V16r3GOogGdiBdDk2WHp
	oCRssyfkmxMNIT50OcIBukvcIzFYmF3itZ7Ia4xMmsWSJqgI6ICRoe/e7ZruToekoqWI/qnk6DcxK
	SHTVuq8rJBL8/fWHdWxXUOfoj9j0xK9+eVecW1sF4xxQuUiEPQOvUES2SP8WFVBICEabpUIR2SZ4a
	tm2KA7/yikb0uMs3f48Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic1cx-0003ng-52; Tue, 03 Dec 2019 06:25:39 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic1cW-00039B-Sv; Tue, 03 Dec 2019 06:25:15 +0000
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id ED8F8309;
 Tue,  3 Dec 2019 07:25:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1575354306;
 bh=xMhIy5HaiSKkNSrpN5V89DDzQfYcJU5ugOWimrHaPOs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=h6qBeI/WhmgWblAgjLQFXmZpvICtdJ7ang5ZAu5QF/RWsHFhxgfKLrUQgLiN0ZySP
 te8cQY0l0xw5SKujiIaFAPliBjJuQRSuy8VjWqLPVlmREWdKpCygHfjb38yR1iYlaQ
 x2aoQRv36caeBrjXBdi/fF336MdBMzwTFlpaN1nk=
Date: Tue, 3 Dec 2019 08:24:59 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Sam Ravnborg <sam@ravnborg.org>
Subject: Re: [PATCH v1 01/26] drm/drm_panel: no error when no callback
Message-ID: <20191203062459.GA4730@pendragon.ideasonboard.com>
References: <20191202193230.21310-1-sam@ravnborg.org>
 <20191202193230.21310-2-sam@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191202193230.21310-2-sam@ravnborg.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_222513_390710_20B987CC 
X-CRM114-Status: GOOD (  17.34  )
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

On Mon, Dec 02, 2019 at 08:32:05PM +0100, Sam Ravnborg wrote:
> The callbacks in drm_panel_funcs are optional, so do not
> return an error just because no callback is assigned.

Unless I'm mistaken the callbacks are not documented as optional. Should
this be fixed too ?

> Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Cc: Maxime Ripard <mripard@kernel.org>
> Cc: Thierry Reding <thierry.reding@gmail.com>
> Cc: Sam Ravnborg <sam@ravnborg.org>
> Cc: David Airlie <airlied@linux.ie>
> Cc: Daniel Vetter <daniel@ffwll.ch>
> ---
>  drivers/gpu/drm/drm_panel.c | 35 +++++++++++++++++++++++++----------
>  1 file changed, 25 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/gpu/drm/drm_panel.c b/drivers/gpu/drm/drm_panel.c
> index ed7985c0535a..2d59cdd05e50 100644
> --- a/drivers/gpu/drm/drm_panel.c
> +++ b/drivers/gpu/drm/drm_panel.c
> @@ -151,10 +151,13 @@ EXPORT_SYMBOL(drm_panel_detach);
>   */
>  int drm_panel_prepare(struct drm_panel *panel)
>  {
> -	if (panel && panel->funcs && panel->funcs->prepare)
> +	if (!panel)
> +		return -EINVAL;
> +
> +	if (panel->funcs && panel->funcs->prepare)
>  		return panel->funcs->prepare(panel);
>  
> -	return panel ? -ENOSYS : -EINVAL;
> +	return 0;
>  }
>  EXPORT_SYMBOL(drm_panel_prepare);
>  
> @@ -171,10 +174,13 @@ EXPORT_SYMBOL(drm_panel_prepare);
>   */
>  int drm_panel_unprepare(struct drm_panel *panel)
>  {
> -	if (panel && panel->funcs && panel->funcs->unprepare)
> +	if (!panel)
> +		return -EINVAL;
> +
> +	if (panel->funcs && panel->funcs->unprepare)
>  		return panel->funcs->unprepare(panel);
>  
> -	return panel ? -ENOSYS : -EINVAL;
> +	return 0;
>  }
>  EXPORT_SYMBOL(drm_panel_unprepare);
>  
> @@ -190,10 +196,13 @@ EXPORT_SYMBOL(drm_panel_unprepare);
>   */
>  int drm_panel_enable(struct drm_panel *panel)
>  {
> -	if (panel && panel->funcs && panel->funcs->enable)
> +	if (!panel)
> +		return -EINVAL;
> +
> +	if (panel->funcs && panel->funcs->enable)
>  		return panel->funcs->enable(panel);
>  
> -	return panel ? -ENOSYS : -EINVAL;
> +	return 0;
>  }
>  EXPORT_SYMBOL(drm_panel_enable);
>  
> @@ -209,10 +218,13 @@ EXPORT_SYMBOL(drm_panel_enable);
>   */
>  int drm_panel_disable(struct drm_panel *panel)
>  {
> -	if (panel && panel->funcs && panel->funcs->disable)
> +	if (!panel)
> +		return -EINVAL;
> +
> +	if (panel->funcs && panel->funcs->disable)
>  		return panel->funcs->disable(panel);
>  
> -	return panel ? -ENOSYS : -EINVAL;
> +	return 0;
>  }
>  EXPORT_SYMBOL(drm_panel_disable);
>  
> @@ -228,10 +240,13 @@ EXPORT_SYMBOL(drm_panel_disable);
>   */
>  int drm_panel_get_modes(struct drm_panel *panel)
>  {
> -	if (panel && panel->funcs && panel->funcs->get_modes)
> +	if (!panel)
> +		return -EINVAL;
> +
> +	if (panel->funcs && panel->funcs->get_modes)
>  		return panel->funcs->get_modes(panel);

Should get_modes() be optional ? As far as I can tell all the panel
drivers in drivers/gpu/drm/panel/ implement it, and I'm not sure to see
how a panel could be usable if it can't return its mode.

On the other hand you return 0 if the callback isn't implemented, which
doesn't mean success here, so I suppose that's fine, but I don't think
we should document .get_modes() as being optional.

With these issues addressed (if they need to be),

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

>  
> -	return panel ? -ENOSYS : -EINVAL;
> +	return 0;
>  }
>  EXPORT_SYMBOL(drm_panel_get_modes);
>  

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

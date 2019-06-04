Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C162E34747
	for <lists+linux-rockchip@lfdr.de>; Tue,  4 Jun 2019 14:50:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MTz/nAUF4eJNw9ZXiOffxmhPoyPku/LPJWfz8QUQVhE=; b=qJ9I+jVYT36A5W
	YFVXUnt1nRKJ4X/7YJEi/iFbE/t/xt3UeFDeapbNklXiTLzkgK+HmyKK8TD4lOtB4Dw+eQpI168rm
	SXNBtCdfW8V51BZj814WNRi5mfl0Q2YAgJmOAVRvaCrQDcdJt0Gn1lsnzknDiyTK9N+AA5ealU719
	kjOelQQ13LNSMcZh5ggPlGSon7ZSQ6awI1Zk/KayJHSOI4t9EEyKcCosRAr9/CNI7tFtBsdyOen5/
	ksG9ljCW/mCaO02tdVIVzhStkti62EUZFx6SokEK6pOP/Htd8xlJCqh/g6hILDq636OKx+ebsOFlm
	c3f86F1uUUcU3KSalY3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY8tR-0000Mi-Bx; Tue, 04 Jun 2019 12:50:21 +0000
Received: from perceval.ideasonboard.com
 ([2001:4b98:dc2:55:216:3eff:fef7:d647])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY8tN-0000FD-5N
 for linux-rockchip@lists.infradead.org; Tue, 04 Jun 2019 12:50:20 +0000
Received: from pendragon.ideasonboard.com (unknown
 [IPv6:2a02:2788:668:163:5bb7:9f6c:564c:d55e])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 38CA02D1;
 Tue,  4 Jun 2019 14:50:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1559652602;
 bh=49AXk+Qk9s0ffpOBjkaJWUGYPSwhbMANLkqmpJAIs0U=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Pq5xdg303rmgusvJWmZE5zLcpVJgX2KME5ag1uy+HPylZBBug6iPN6Lyq5beNr1p0
 m36g10rGucJ9uploJyFGYYc5BRx2+5IXpw+Cz+R3yOTOwRVUXOlt1xz432IcnUj+7O
 yPzEqc1yOLPTkNraXBQ4SvJDPbzg+BIKAs2cLcuc=
Date: Tue, 4 Jun 2019 15:49:48 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Douglas Anderson <dianders@chromium.org>
Subject: Re: [PATCH v2 1/2] drm: bridge: dw-hdmi: Add hook for resume
Message-ID: <20190604124948.GF7812@pendragon.ideasonboard.com>
References: <20190516214022.65220-1-dianders@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190516214022.65220-1-dianders@chromium.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_055017_528046_A467063D 
X-CRM114-Status: GOOD (  24.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Heiko Stuebner <heiko@sntech.de>, Jonas Karlman <jonas@kwiboo.se>,
 David Airlie <airlied@linux.ie>, Neil Armstrong <narmstrong@baylibre.com>,
 Sandy Huang <hjc@rock-chips.com>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, Andrzej Hajda <a.hajda@samsung.com>,
 mka@chromium.org, Sean Paul <seanpaul@chromium.org>,
 linux-rockchip@lists.infradead.org, Sam Ravnborg <sam@ravnborg.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Douglas,

Thank you for the patch.

On Thu, May 16, 2019 at 02:40:21PM -0700, Douglas Anderson wrote:
> On Rockchip rk3288-based Chromebooks when you do a suspend/resume
> cycle:
> 
> 1. You lose the ability to detect an HDMI device being plugged in.
> 
> 2. If you're using the i2c bus built in to dw_hdmi then it stops
> working.
> 
> Let's add a hook to the core dw-hdmi driver so that we can call it in
> dw_hdmi-rockchip in the next commit.
> 
> NOTE: the exact set of steps I've done here in resume come from
> looking at the normal dw_hdmi init sequence in upstream Linux plus the
> sequence that we did in downstream Chrome OS 3.14.  Testing show that
> it seems to work, but if an extra step is needed or something here is
> not needed we could improve it.
> 
> As part of this change we'll refactor the hardware init bits of
> dw-hdmi to happen all in one function and all at the same time.  Since
> we need to init the interrupt mutes before we request the IRQ, this
> means moving the hardware init earlier in the function, but there
> should be no problems with that.  Also as part of this we now
> unconditionally init the "i2c" parts of dw-hdmi, but again that ought
> to be fine.
> 
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> ---
> 
> Changes in v2:
> - No empty stub for suspend (Laurent)
> - Refactor to use the same code in probe and resume (Laurent)
> - Unconditionally init i2c (seems OK + needed before hdmi->i2c init)
> - Combine "init" of i2c and "setup" of i2c (no reason to split)
> 
>  drivers/gpu/drm/bridge/synopsys/dw-hdmi.c | 50 ++++++++++++++---------
>  include/drm/bridge/dw_hdmi.h              |  2 +
>  2 files changed, 33 insertions(+), 19 deletions(-)
> 
> diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> index ab7968c8f6a2..636d55d1398c 100644
> --- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> +++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> @@ -227,6 +227,13 @@ static void hdmi_mask_writeb(struct dw_hdmi *hdmi, u8 data, unsigned int reg,
>  
>  static void dw_hdmi_i2c_init(struct dw_hdmi *hdmi)
>  {
> +	hdmi_writeb(hdmi, HDMI_PHY_I2CM_INT_ADDR_DONE_POL,
> +		    HDMI_PHY_I2CM_INT_ADDR);
> +
> +	hdmi_writeb(hdmi, HDMI_PHY_I2CM_CTLINT_ADDR_NAC_POL |
> +		    HDMI_PHY_I2CM_CTLINT_ADDR_ARBITRATION_POL,
> +		    HDMI_PHY_I2CM_CTLINT_ADDR);
> +
>  	/* Software reset */
>  	hdmi_writeb(hdmi, 0x00, HDMI_I2CM_SOFTRSTZ);
>  
> @@ -1925,16 +1932,6 @@ static int dw_hdmi_setup(struct dw_hdmi *hdmi, struct drm_display_mode *mode)
>  	return 0;
>  }
>  
> -static void dw_hdmi_setup_i2c(struct dw_hdmi *hdmi)
> -{
> -	hdmi_writeb(hdmi, HDMI_PHY_I2CM_INT_ADDR_DONE_POL,
> -		    HDMI_PHY_I2CM_INT_ADDR);
> -
> -	hdmi_writeb(hdmi, HDMI_PHY_I2CM_CTLINT_ADDR_NAC_POL |
> -		    HDMI_PHY_I2CM_CTLINT_ADDR_ARBITRATION_POL,
> -		    HDMI_PHY_I2CM_CTLINT_ADDR);
> -}
> -
>  static void initialize_hdmi_ih_mutes(struct dw_hdmi *hdmi)
>  {
>  	u8 ih_mute;
> @@ -2435,6 +2432,21 @@ static const struct regmap_config hdmi_regmap_32bit_config = {
>  	.max_register	= HDMI_I2CM_FS_SCL_LCNT_0_ADDR << 2,
>  };
>  
> +static void dw_hdmi_init_hw(struct dw_hdmi *hdmi)
> +{
> +	initialize_hdmi_ih_mutes(hdmi);
> +
> +	/*
> +	 * Reset HDMI DDC I2C master controller and mute I2CM interrupts.
> +	 * Even if we are using a separate i2c adapter doing this doesn't
> +	 * hurt.
> +	 */
> +	dw_hdmi_i2c_init(hdmi);
> +
> +	if (hdmi->phy.ops->setup_hpd)
> +		hdmi->phy.ops->setup_hpd(hdmi, hdmi->phy.data);
> +}
> +
>  static struct dw_hdmi *
>  __dw_hdmi_probe(struct platform_device *pdev,
>  		const struct dw_hdmi_plat_data *plat_data)
> @@ -2586,7 +2598,7 @@ __dw_hdmi_probe(struct platform_device *pdev,
>  		 prod_id1 & HDMI_PRODUCT_ID1_HDCP ? "with" : "without",
>  		 hdmi->phy.name);
>  
> -	initialize_hdmi_ih_mutes(hdmi);
> +	dw_hdmi_init_hw(hdmi);
>  
>  	irq = platform_get_irq(pdev, 0);
>  	if (irq < 0) {
> @@ -2625,10 +2637,6 @@ __dw_hdmi_probe(struct platform_device *pdev,
>  	hdmi->bridge.of_node = pdev->dev.of_node;
>  #endif
>  
> -	dw_hdmi_setup_i2c(hdmi);
> -	if (hdmi->phy.ops->setup_hpd)
> -		hdmi->phy.ops->setup_hpd(hdmi, hdmi->phy.data);
> -
>  	memset(&pdevinfo, 0, sizeof(pdevinfo));
>  	pdevinfo.parent = dev;
>  	pdevinfo.id = PLATFORM_DEVID_AUTO;
> @@ -2681,10 +2689,6 @@ __dw_hdmi_probe(struct platform_device *pdev,
>  		hdmi->cec = platform_device_register_full(&pdevinfo);
>  	}
>  
> -	/* Reset HDMI DDC I2C master controller and mute I2CM interrupts */
> -	if (hdmi->i2c)
> -		dw_hdmi_i2c_init(hdmi);
> -
>  	return hdmi;
>  
>  err_iahb:
> @@ -2788,6 +2792,14 @@ void dw_hdmi_unbind(struct dw_hdmi *hdmi)
>  }
>  EXPORT_SYMBOL_GPL(dw_hdmi_unbind);
>  
> +int dw_hdmi_resume(struct dw_hdmi *hdmi)
> +{
> +	dw_hdmi_init_hw(hdmi);
> +
> +	return 0;
> +}

If the function always returns 0 I would make it void. Apart from that,

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

> +EXPORT_SYMBOL_GPL(dw_hdmi_resume);
> +
>  MODULE_AUTHOR("Sascha Hauer <s.hauer@pengutronix.de>");
>  MODULE_AUTHOR("Andy Yan <andy.yan@rock-chips.com>");
>  MODULE_AUTHOR("Yakir Yang <ykk@rock-chips.com>");
> diff --git a/include/drm/bridge/dw_hdmi.h b/include/drm/bridge/dw_hdmi.h
> index 66e70770cce5..1626731e1681 100644
> --- a/include/drm/bridge/dw_hdmi.h
> +++ b/include/drm/bridge/dw_hdmi.h
> @@ -154,6 +154,8 @@ struct dw_hdmi *dw_hdmi_bind(struct platform_device *pdev,
>  			     struct drm_encoder *encoder,
>  			     const struct dw_hdmi_plat_data *plat_data);
>  
> +int dw_hdmi_resume(struct dw_hdmi *hdmi);
> +
>  void dw_hdmi_setup_rx_sense(struct dw_hdmi *hdmi, bool hpd, bool rx_sense);
>  
>  void dw_hdmi_set_sample_rate(struct dw_hdmi *hdmi, unsigned int rate);

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

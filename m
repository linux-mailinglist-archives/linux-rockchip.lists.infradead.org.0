Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E2B2379D5
	for <lists+linux-rockchip@lfdr.de>; Thu,  6 Jun 2019 18:36:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gGrgfYdDr7Ihv9nCIR8tZeBkfpQTHmuFNUYbB8gijcA=; b=hW9hdwrxxY94JX
	jwqFBHYEeiOeLiZJqWMrFVZyvw/Ch7vuFgfT5AOTcKrPJuraRVeM2tmj/1VF3IykK5hMC+9vxQ5/X
	rXcosMLLWEMYiJFTTdltO5+Wz0ADe0aqsqkzgEdQEPBvSJIbgIaLtk7yOdMU4gt2e1N4gbJbttu3d
	G8QMonMPRT0cBSl2Dy9SWeQ5F6pke1j5BlqwCmtAYRi+lLAbJQGYT6vrK94X8UN863XtN7g2squc1
	vKON8wjgH0GBo1UHZ3lmMo1P2Wx/PtOeHkuWio0DvnJZm9dRH7KqQhwDgD1vHZB2pXpw3+UNMXU4J
	ejTlZiqKPg5rR7bvfT5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYvNX-0003HD-H9; Thu, 06 Jun 2019 16:36:39 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYvNT-0003AH-UZ
 for linux-rockchip@lists.infradead.org; Thu, 06 Jun 2019 16:36:37 +0000
Received: by mail-qk1-x743.google.com with SMTP id t64so1869784qkh.1
 for <linux-rockchip@lists.infradead.org>; Thu, 06 Jun 2019 09:36:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=STDsoXP+pP2kkBjWE7AbnmJ4gXdqJUBbofwVvAfemWs=;
 b=PQgR50TZn+Ke3GnbJe8k0G/PFOCHXvPSXJec2go6hcGHOhUYyPspzvF6SjMF3fPdLM
 WuHCEEjr3lUfQ+IpKwwuMt6sPrMX9LyiLP3ziO1PW8OC5JOMuB+pD1OXYWFpJnuiShci
 ommHhdFzQYtabM/kdJBVpYbfxfU5VzPsKFbX73tZMX+cakbkPqiDGVHAs12fkh9jy225
 OxaeIi1pINWySoa8C7zrQ6UxTb4ickSVgPzJazTqZUQ1V9CeDS/GYn2Ct/54IEmkT8P3
 8fyDDyc8lB1/y6qXM1skJiCegtJGtm33cVok2Om6TBF+GUdRBKNpsC0okA3Y8GpijLGg
 mMQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=STDsoXP+pP2kkBjWE7AbnmJ4gXdqJUBbofwVvAfemWs=;
 b=EFoY4fY0d7VpAAcrQu2Ow6gmgHQvCnvX2T5GmJgMRq863A8NYGAH6efZkJJYAWPLwG
 dN3y/Q669qJ81RQSD0NmCZfT9qBFvGc/x+fJeedpU2tiUCqBok43P+NGtrL+LfezyzXw
 j+MMPr3zekh5bDEYUAPH/xdc6HAuDN5f/IzDGMJ/UWuH9FCSWTACoR6oi2ubrr5XB17U
 f5VmmI14FAzEXGebZHt264g+egU0CTp0GZQtrRBcjRb3eYmaV22EdzTQYtoTeYPmikTI
 z1mmWEiQmaJTI1mGrdJ8IYuNOLmcjV7hz2nPHPrVueEp94C9qhhssaEp77/L8mq9YXug
 QSvw==
X-Gm-Message-State: APjAAAUaYzVGoDesfeln02/9wDg0y6U2JYk8S71b3PlaUQOLe0t/qJz1
 f8/40FqBrbpKeSdkq4+lTWBVZA==
X-Google-Smtp-Source: APXvYqzpj1H1CbzLQUyuVsyUmsnz4igWAdFlH5g0LzOPDJVCSL/w61N4HjhZWbY61HW0rU8n+hr/OQ==
X-Received: by 2002:a05:620a:1116:: with SMTP id
 o22mr37715818qkk.82.1559838994730; 
 Thu, 06 Jun 2019 09:36:34 -0700 (PDT)
Received: from localhost ([2620:0:1013:11:89c6:2139:5435:371d])
 by smtp.gmail.com with ESMTPSA id y29sm1179784qkj.8.2019.06.06.09.36.34
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 06 Jun 2019 09:36:34 -0700 (PDT)
Date: Thu, 6 Jun 2019 12:36:33 -0400
From: Sean Paul <sean@poorly.run>
To: Douglas Anderson <dianders@chromium.org>
Subject: Re: [PATCH v3 1/2] drm: bridge: dw-hdmi: Add hook for resume
Message-ID: <20190606163633.GH17077@art_vandelay>
References: <20190604204207.168085-1-dianders@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190604204207.168085-1-dianders@chromium.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_093636_038629_CA4A1E9E 
X-CRM114-Status: GOOD (  27.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 David Airlie <airlied@linux.ie>, Neil Armstrong <narmstrong@baylibre.com>,
 Sandy Huang <hjc@rock-chips.com>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, Andrzej Hajda <a.hajda@samsung.com>,
 Jonas Karlman <jonas@kwiboo.se>, mka@chromium.org,
 Sean Paul <seanpaul@chromium.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, Sam Ravnborg <sam@ravnborg.org>,
 Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>,
 Zheng Yang <zhengyang@rock-chips.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Tue, Jun 04, 2019 at 01:42:06PM -0700, Douglas Anderson wrote:
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

Reviewed-by: Sean Paul <sean@poorly.run>

> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> ---
> 
> Changes in v3:
> - Change resume to void function (Laurent)
> 
> Changes in v2:
> - No empty stub for suspend (Laurent)
> - Refactor to use the same code in probe and resume (Laurent)
> - Unconditionally init i2c (seems OK + needed before hdmi->i2c init)
> - Combine "init" of i2c and "setup" of i2c (no reason to split)
> 
>  drivers/gpu/drm/bridge/synopsys/dw-hdmi.c | 48 ++++++++++++++---------
>  include/drm/bridge/dw_hdmi.h              |  2 +
>  2 files changed, 31 insertions(+), 19 deletions(-)
> 
> diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> index 66bd66bad44c..a00ccf123877 100644
> --- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> +++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> @@ -228,6 +228,13 @@ static void hdmi_mask_writeb(struct dw_hdmi *hdmi, u8 data, unsigned int reg,
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
> @@ -1926,16 +1933,6 @@ static int dw_hdmi_setup(struct dw_hdmi *hdmi, struct drm_display_mode *mode)
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
> @@ -2436,6 +2433,21 @@ static const struct regmap_config hdmi_regmap_32bit_config = {
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
> @@ -2587,7 +2599,7 @@ __dw_hdmi_probe(struct platform_device *pdev,
>  		 prod_id1 & HDMI_PRODUCT_ID1_HDCP ? "with" : "without",
>  		 hdmi->phy.name);
>  
> -	initialize_hdmi_ih_mutes(hdmi);
> +	dw_hdmi_init_hw(hdmi);
>  
>  	irq = platform_get_irq(pdev, 0);
>  	if (irq < 0) {
> @@ -2626,10 +2638,6 @@ __dw_hdmi_probe(struct platform_device *pdev,
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
> @@ -2682,10 +2690,6 @@ __dw_hdmi_probe(struct platform_device *pdev,
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
> @@ -2789,6 +2793,12 @@ void dw_hdmi_unbind(struct dw_hdmi *hdmi)
>  }
>  EXPORT_SYMBOL_GPL(dw_hdmi_unbind);
>  
> +void dw_hdmi_resume(struct dw_hdmi *hdmi)
> +{
> +	dw_hdmi_init_hw(hdmi);
> +}
> +EXPORT_SYMBOL_GPL(dw_hdmi_resume);
> +
>  MODULE_AUTHOR("Sascha Hauer <s.hauer@pengutronix.de>");
>  MODULE_AUTHOR("Andy Yan <andy.yan@rock-chips.com>");
>  MODULE_AUTHOR("Yakir Yang <ykk@rock-chips.com>");
> diff --git a/include/drm/bridge/dw_hdmi.h b/include/drm/bridge/dw_hdmi.h
> index 66e70770cce5..601243b56b69 100644
> --- a/include/drm/bridge/dw_hdmi.h
> +++ b/include/drm/bridge/dw_hdmi.h
> @@ -154,6 +154,8 @@ struct dw_hdmi *dw_hdmi_bind(struct platform_device *pdev,
>  			     struct drm_encoder *encoder,
>  			     const struct dw_hdmi_plat_data *plat_data);
>  
> +void dw_hdmi_resume(struct dw_hdmi *hdmi);
> +
>  void dw_hdmi_setup_rx_sense(struct dw_hdmi *hdmi, bool hpd, bool rx_sense);
>  
>  void dw_hdmi_set_sample_rate(struct dw_hdmi *hdmi, unsigned int rate);
> -- 
> 2.22.0.rc1.311.g5d7573a151-goog
> 

-- 
Sean Paul, Software Engineer, Google / Chromium OS

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

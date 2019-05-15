Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B0821F9D5
	for <lists+linux-rockchip@lfdr.de>; Wed, 15 May 2019 20:20:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Uh3RAvZOeXyvGcINVd+mNYfxGVmmeTHTaRITkiseC20=; b=rnbBK5FrkRZmoS
	uzEcZqJz7qKb+F3AdaJfcLEPE8+3+byxoi1u0EUgt+vp1kao81pAeQ920gb6q7v5X+r7vlhnFX3+9
	GYjKQvUQUNqXLhmh0JSsr7E348gtBl686AbPuNzmacXU90WH+9xQMQ4UnEMXdODo1qhZ1ljhDV0hm
	vaB7uWfgLUVzzf7KvM+YuMRAQWmDCP1FgYvQBflIoK887EJMOi5rPH1mNkre2nIaRKs9qJ13swl/o
	DCyBwWDEEwgTwIf6kttjmdPyRNSEtq40SpVTP51Oo92goTxcX/UhNUyaTVIS6mwDx4bh/ezaRVkIL
	7O70/ZoT8yG8NZDlsOqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQyWC-0008Ir-GK; Wed, 15 May 2019 18:20:44 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQyW8-0008II-M1
 for linux-rockchip@lists.infradead.org; Wed, 15 May 2019 18:20:42 +0000
Received: by mail-qt1-x842.google.com with SMTP id z19so747260qtz.13
 for <linux-rockchip@lists.infradead.org>; Wed, 15 May 2019 11:20:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=v/0i4suNLrZlvLYCymnJUzWMiUujcvtmtoNvzuC9xPk=;
 b=dKwtWkJBxN4Ffyi6WayRfbCyUB29AkQMdx3yr8GO0yMT82FxN86x3iFEYMj/enkanw
 CEkqNy97kqREecZQQHG5xz5fdRAq1MiGJujwXNGblfmxDBjUdIbyyaauV6ir4uLsT/4o
 9qd/BnaKqmdsP6BOvPc+d36qcEjQcF9TvarAu5/Y0X3Zb8CFEDjR5cseL/KlG8GQmKOr
 O+182LfChBB1T4DjYHL3OEb6rBXTJ5Jyi6JV5zWXJNLzAzfhQArSdO7W9S6iRZA2CP+F
 etu6DAssYupHdCJrpvVPfhXHCRB4g8hZ6k+fDi0L4fJgNqMuISaYO8QY8cTu282xWYz7
 BtWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=v/0i4suNLrZlvLYCymnJUzWMiUujcvtmtoNvzuC9xPk=;
 b=m8oJN/8wrD4pblBs0XGAhdTyoD723YDXwRt5nhGOuThX+tkb7bD1e4KSBAVhO8HWzb
 HVXPqrvzTlvPTJPmq9BgBWTACMXeVjL2KkSNcQeDJ57748gPrVwlWXPbyyzWT73qCPeI
 10AXEvfd9zvrNHKC7Lfj/R3X2ptx1PU9um+IxFQbHGK4GvMqumg0IEnpoinHbVnH4opo
 nLRpJfKPZOCdkdlzHuVs8j4NhliosIzO7INUMwIlrTuAF7yRWGB27616OTzv9l/ECOvY
 F4caP9P0knIQKyOWupfWWSF5JahoWgdEKpE0eveFSo22LHZCOtbQXe1zppIChattwxJf
 6rGg==
X-Gm-Message-State: APjAAAVmwrfJXjlDQxsH4Vmhqcw4KDuz+5nDbGjfSMReJfIO4y/O4M8e
 SxTFQad/In8lY1lAx0kei6D4iQ==
X-Google-Smtp-Source: APXvYqy2Ftu9tGgy5VThvdaW8121BYKmev4Dui5YBA07+f4Avqy70b0KFtuOSd05AcYAcDOr2XEf1A==
X-Received: by 2002:a0c:86e5:: with SMTP id 34mr28715424qvg.201.1557944439349; 
 Wed, 15 May 2019 11:20:39 -0700 (PDT)
Received: from localhost ([2620:0:1013:11:89c6:2139:5435:371d])
 by smtp.gmail.com with ESMTPSA id w41sm1896116qtc.49.2019.05.15.11.20.38
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 15 May 2019 11:20:38 -0700 (PDT)
Date: Wed, 15 May 2019 14:20:38 -0400
From: Sean Paul <sean@poorly.run>
To: Douglas Anderson <dianders@chromium.org>
Subject: Re: [PATCH 2/5] drm/bridge/synopsys: dw-hdmi: Add "unwedge" for ddc
 bus
Message-ID: <20190515182038.GV17077@art_vandelay>
References: <20190502225336.206885-1-dianders@chromium.org>
 <20190502225336.206885-2-dianders@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190502225336.206885-2-dianders@chromium.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_112040_724373_7EAECE7F 
X-CRM114-Status: GOOD (  34.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Jernej Skrabec <jernej.skrabec@siol.net>, Heiko Stuebner <heiko@sntech.de>,
 Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 Sandy Huang <hjc@rock-chips.com>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, Andrzej Hajda <a.hajda@samsung.com>,
 Rob Herring <robh+dt@kernel.org>, Sean Paul <seanpaul@chromium.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 linux-rockchip@lists.infradead.org, mka@chromium.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Thu, May 02, 2019 at 03:53:33PM -0700, Douglas Anderson wrote:
> See the PhD thesis in the comments in this patch for details, but to
> summarize this adds a hacky "unwedge" feature to the dw_hdmi i2c bus to
> workaround what appears to be a hardware errata.  This relies on a
> pinctrl entry to help change around muxing to perform the unwedge.
> 
> NOTE that the specific TV this was tested on was the "Samsung
> UN40HU6950FXZA" and the specific port was the "STB" port.
> 
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> ---
> 
>  drivers/gpu/drm/bridge/synopsys/dw-hdmi.c | 116 +++++++++++++++++++---
>  1 file changed, 100 insertions(+), 16 deletions(-)
> 
> diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> index db761329a1e3..c66587e33813 100644
> --- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> +++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> @@ -19,6 +19,7 @@
>  #include <linux/hdmi.h>
>  #include <linux/mutex.h>
>  #include <linux/of_device.h>
> +#include <linux/pinctrl/consumer.h>
>  #include <linux/regmap.h>
>  #include <linux/spinlock.h>
>  
> @@ -169,6 +170,10 @@ struct dw_hdmi {
>  	bool sink_is_hdmi;
>  	bool sink_has_audio;
>  
> +	struct pinctrl *pinctrl;
> +	struct pinctrl_state *default_state;
> +	struct pinctrl_state *unwedge_state;
> +
>  	struct mutex mutex;		/* for state below and previous_mode */
>  	enum drm_connector_force force;	/* mutex-protected force state */
>  	bool disabled;			/* DRM has disabled our bridge */
> @@ -247,11 +252,82 @@ static void dw_hdmi_i2c_init(struct dw_hdmi *hdmi)
>  		    HDMI_IH_MUTE_I2CM_STAT0);
>  }
>  
> +static bool dw_hdmi_i2c_unwedge(struct dw_hdmi *hdmi)
> +{
> +	/* If no unwedge state then give up */
> +	if (IS_ERR(hdmi->unwedge_state))
> +		return false;
> +
> +	dev_info(hdmi->dev, "Attempting to unwedge stuck i2c bus\n");
> +
> +	/*
> +	 * This is a huge hack to workaround a problem where the dw_hdmi i2c
> +	 * bus could sometimes get wedged.  Once wedged there doesn't appear
> +	 * to be any way to unwedge it (including the HDMI_I2CM_SOFTRSTZ)
> +	 * other than pulsing the SDA line.
> +	 *
> +	 * We appear to be able to pulse the SDA line (in the eyes of dw_hdmi)
> +	 * by:
> +	 * 1. Remux the pin as a GPIO output, driven low.
> +	 * 2. Wait a little while.  1 ms seems to work, but we'll do 10.
> +	 * 3. Immediately jump to remux the pin as dw_hdmi i2c again.
> +	 *
> +	 * At the moment of remuxing, the line will still be low due to its
> +	 * recent stint as an output, but then it will be pulled high by the
> +	 * (presumed) external pullup.  dw_hdmi seems to see this as a rising
> +	 * edge and that seems to get it out of its jam.
> +	 *
> +	 * This wedging was only ever seen on one TV, and only on one of
> +	 * its HDMI ports.  It happened when the TV was powered on while the
> +	 * device was plugged in.  A scope trace shows the TV bringing both SDA
> +	 * and SCL low, then bringing them both back up at roughly the same
> +	 * time.  Presumably this confuses dw_hdmi because it saw activity but
> +	 * no real STOP (maybe it thinks there's another master on the bus?).
> +	 * Giving it a clean rising edge of SDA while SCL is already high
> +	 * presumably makes dw_hdmi see a STOP which seems to bring dw_hdmi out
> +	 * of its stupor.
> +	 *
> +	 * Note that after coming back alive, transfers seem to immediately
> +	 * resume, so if we unwedge due to a timeout we should wait a little
> +	 * longer for our transfer to finish, since it might have just started
> +	 * now.
> +	 */
> +	pinctrl_select_state(hdmi->pinctrl, hdmi->unwedge_state);
> +	msleep(10);
> +	pinctrl_select_state(hdmi->pinctrl, hdmi->default_state);
> +
> +	return true;
> +}
> +
> +static int dw_hdmi_i2c_wait(struct dw_hdmi *hdmi)
> +{
> +	struct dw_hdmi_i2c *i2c = hdmi->i2c;
> +	int stat;
> +
> +	stat = wait_for_completion_timeout(&i2c->cmp, HZ / 10);
> +	if (!stat) {
> +		/* If we can't unwedge, return timeout */
> +		if (!dw_hdmi_i2c_unwedge(hdmi))
> +			return -EAGAIN;
> +
> +		/* We tried to unwedge; give it another chance */
> +		stat = wait_for_completion_timeout(&i2c->cmp, HZ / 10);
> +		if (!stat)
> +			return -EAGAIN;
> +	}
> +
> +	/* Check for error condition on the bus */
> +	if (i2c->stat & HDMI_IH_I2CM_STAT0_ERROR)
> +		return -EIO;
> +
> +	return 0;
> +}
> +
>  static int dw_hdmi_i2c_read(struct dw_hdmi *hdmi,
>  			    unsigned char *buf, unsigned int length)
>  {
>  	struct dw_hdmi_i2c *i2c = hdmi->i2c;
> -	int stat;
> +	int ret;
>  
>  	if (!i2c->is_regaddr) {
>  		dev_dbg(hdmi->dev, "set read register address to 0\n");
> @@ -270,13 +346,9 @@ static int dw_hdmi_i2c_read(struct dw_hdmi *hdmi,
>  			hdmi_writeb(hdmi, HDMI_I2CM_OPERATION_READ,
>  				    HDMI_I2CM_OPERATION);
>  
> -		stat = wait_for_completion_timeout(&i2c->cmp, HZ / 10);
> -		if (!stat)
> -			return -EAGAIN;
> -
> -		/* Check for error condition on the bus */
> -		if (i2c->stat & HDMI_IH_I2CM_STAT0_ERROR)
> -			return -EIO;
> +		ret = dw_hdmi_i2c_wait(hdmi);
> +		if (ret)
> +			return ret;
>  
>  		*buf++ = hdmi_readb(hdmi, HDMI_I2CM_DATAI);
>  	}
> @@ -289,7 +361,7 @@ static int dw_hdmi_i2c_write(struct dw_hdmi *hdmi,
>  			     unsigned char *buf, unsigned int length)
>  {
>  	struct dw_hdmi_i2c *i2c = hdmi->i2c;
> -	int stat;
> +	int ret;
>  
>  	if (!i2c->is_regaddr) {
>  		/* Use the first write byte as register address */
> @@ -307,13 +379,9 @@ static int dw_hdmi_i2c_write(struct dw_hdmi *hdmi,
>  		hdmi_writeb(hdmi, HDMI_I2CM_OPERATION_WRITE,
>  			    HDMI_I2CM_OPERATION);
>  
> -		stat = wait_for_completion_timeout(&i2c->cmp, HZ / 10);
> -		if (!stat)
> -			return -EAGAIN;
> -
> -		/* Check for error condition on the bus */
> -		if (i2c->stat & HDMI_IH_I2CM_STAT0_ERROR)
> -			return -EIO;
> +		ret = dw_hdmi_i2c_wait(hdmi);
> +		if (ret)
> +			return ret;
>  	}
>  
>  	return 0;
> @@ -2606,6 +2674,22 @@ __dw_hdmi_probe(struct platform_device *pdev,
>  
>  	/* If DDC bus is not specified, try to register HDMI I2C bus */
>  	if (!hdmi->ddc) {
> +		/* Look for (optional) stuff related to unwedging */
> +		hdmi->pinctrl = devm_pinctrl_get(dev);
> +		if (!IS_ERR(hdmi->pinctrl)) {
> +			hdmi->unwedge_state =
> +				pinctrl_lookup_state(hdmi->pinctrl, "unwedge");
> +			hdmi->default_state =
> +				pinctrl_lookup_state(hdmi->pinctrl, "default");
> +
> +			if (IS_ERR(hdmi->default_state) &&
> +			    !IS_ERR(hdmi->unwedge_state)) {
> +				dev_warn(dev,
> +					 "Unwedge requires default pinctrl\n");

Can you downgrade this message to info or dbg? Given how rare this issue is, we
probably don't want to spam everyone who is happily using dw-hdmi.

With that, 

Reviewed-by: Sean Paul <sean@poorly.run>


Sean

> +				hdmi->unwedge_state = ERR_PTR(-ENODEV);
> +			}
> +		}
> +
>  		hdmi->ddc = dw_hdmi_i2c_adapter(hdmi);
>  		if (IS_ERR(hdmi->ddc))
>  			hdmi->ddc = NULL;
> -- 
> 2.21.0.1020.gf2820cf01a-goog
> 
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel

-- 
Sean Paul, Software Engineer, Google / Chromium OS

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

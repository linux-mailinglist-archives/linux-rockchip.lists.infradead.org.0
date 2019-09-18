Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B79F0B5F5D
	for <lists+linux-rockchip@lfdr.de>; Wed, 18 Sep 2019 10:44:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:References:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=BB4em4PFx4P/srVdBNWZiTWNx4xusZUI4yZUIznDj3k=; b=umq3pXB07VCOpult6oP9H2DiY2
	TBhkRaE86egHAJDYebmPRO4atO9CBW2zbI+L/JZC3UCW8PxYST2gUgLsKnFMUCGindyGLNfb7tlav
	IELfRaSIn2+MQCbn2VrI6BA13kTMxa5y4oBOycYufhZzq9OMqo5liXzDGlQ3v7R6bjvW1WTMdLCnP
	0XvBnIM3aCsPfz1sSdhb0orKSnueaGE3G3tZyI0LiW3FJLUeZ4UL0FW42l+zPv8it3aN9Xs41T7Pw
	XaWPGLtH9u45FMy6EEHULCCPPv8+haBeOkEqAvdbMpl5zndmUU8b6zX69ncmDO+ecXPaNyLn3H06p
	MzAu4YRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAVZ7-0003t9-GQ; Wed, 18 Sep 2019 08:43:57 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAVZ3-0003sV-Ci
 for linux-rockchip@lists.infradead.org; Wed, 18 Sep 2019 08:43:55 +0000
Received: by mail-wr1-x444.google.com with SMTP id a11so5992057wrx.1
 for <linux-rockchip@lists.infradead.org>; Wed, 18 Sep 2019 01:43:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:references:user-agent:to:cc:subject:in-reply-to:date
 :message-id:mime-version;
 bh=Es/bmU3c9XGaRtzCiMLIVrPNjr9MNI0eTxg3xMnbUYc=;
 b=S2FCcJGdZtO1gO4SQHnOHraw90NxGk+ySbB9OIxE1vfxheAusATdTaw/syxuwdGWQI
 92sF2Nr9TgHxs7w9AuZJMkw35AR0EvurNbRLvbFBj0IhXv8+CtvAmZEn4/1JRD/sQl+7
 tNMt7J5QEAw5awSGxUcQ8/C/fS2112pJR0ilZf81yL8vBnGNaugVKY9xmUmAErDUp2Sh
 VlGTEU7rvD1DW5sD4FehEg9RXAfUKfdQ8YV5iBOpMAeohp1oWwhAsgleYcPMPeSmZEgO
 sl+eIrDHwIH3Ei22m0zaGRvVaJHEvtf5PLgIY9dlvf0pyHhxZ0Kxb/8q3jOurf9y3lOh
 +X0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:references:user-agent:to:cc:subject
 :in-reply-to:date:message-id:mime-version;
 bh=Es/bmU3c9XGaRtzCiMLIVrPNjr9MNI0eTxg3xMnbUYc=;
 b=XNaysbLfPJDp/jFIfvwr6fu0nlWEfG29Ug2VufM0r2KP9yGUFWey6ns8vPsHxF6AjM
 HVlY3joRNRKLZAQWAVWt8zb97vQ+PoIYpkX0Z/1qz5VM0zs3U/JHBx9aSEf7+28lqqW/
 amJemYOeXgVEP5wj1pAxy+6mcD40bw5PZGIZKft5VBnNiHIxqIeF2UhA3mMnwSWpERkr
 KyeJxKIlE6YVg0+x+LH4P1drgrp7teVPEqQGG8dq9hYXrQ7mwAfL5H4IxMpGRfinwzz/
 LIPg7ozYp8RR8Zv7l91/5KZpqPwxyyBlWYYnglWMwEBDP39iPvT1D5bCzaeO5JVnOv1b
 mLdA==
X-Gm-Message-State: APjAAAVlxP9Y41R1fL9vm2qYki103uj0Mkm7LJhLV36xx03OB/mwEltU
 U2y5Cji/Q3vmM6Jxd64tGmE10w==
X-Google-Smtp-Source: APXvYqz3Kpju44v9NdaCUS71dFKfNZ3q3V7oya0OqrnOC9uxnDdFSkv5zrOWWA/QCE/CJM9pIPUidg==
X-Received: by 2002:a5d:52c8:: with SMTP id r8mr2192409wrv.256.1568796231510; 
 Wed, 18 Sep 2019 01:43:51 -0700 (PDT)
Received: from localhost (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id q10sm9774982wrd.39.2019.09.18.01.43.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Sep 2019 01:43:50 -0700 (PDT)
From: Jerome Brunet <jbrunet@baylibre.com>
X-Google-Original-From: Jerome Brunet <jbrunet@starbuckisacylon.baylibre.com>
References: <20190918082500.209281-1-cychiang@chromium.org>
 <20190918082500.209281-3-cychiang@chromium.org>
User-agent: mu4e 1.3.1; emacs 26.2
To: Cheng-Yi Chiang <cychiang@chromium.org>
Subject: Re: [PATCH v6 2/4] drm: dw-hdmi-i2s: Use fixed id for codec device
In-reply-to: <20190918082500.209281-3-cychiang@chromium.org>
Date: Wed, 18 Sep 2019 10:43:49 +0200
Message-ID: <1j7e663sfu.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_014353_436918_FCA00B40 
X-CRM114-Status: GOOD (  16.13  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: alsa-devel@alsa-project.org, Heiko Stuebner <heiko@sntech.de>,
 Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Hans Verkuil <hverkuil@xs4all.nl>, Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Takashi Iwai <tiwai@suse.com>, linux-rockchip@lists.infradead.org,
 dgreid@chromium.org, tzungbi@chromium.org, Jonas Karlman <jonas@kwiboo.se>,
 Liam Girdwood <lgirdwood@gmail.com>, Russell King <rmk+kernel@armlinux.org.uk>,
 Mark Brown <broonie@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
 linux-arm-kernel@lists.infradead.org, Jernej Skrabec <jernej.skrabec@siol.net>,
 dianders@chromium.org, Daniel Vetter <daniel@ffwll.ch>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org


On Wed 18 Sep 2019 at 10:24, Cheng-Yi Chiang <cychiang@chromium.org> wrote:

> The problem of using auto ID is that the device name will be like
> hdmi-audio-codec.<id number>.auto.
>
> The number might be changed when there are other platform devices being
> created before hdmi-audio-codec device.
> Use a fixed name so machine driver can set codec name on the DAI link.
>
> Using the fixed name should be fine because there will only be one
> hdmi-audio-codec device.

While this is true all platforms we know of (I suppose), It might not be
the case later on. I wonder if making such assumption is really
desirable in a code which is used by quite a few different platforms.

Instead of trying to predict what the device name will be, can't you just
query it in your machine driver ? Using a device tree phandle maybe ?

It is quite usual to set the dai links this way, "simple-card" is a good
example of this.

>
> Fix the codec name in rockchip rk3288_hdmi_analog machine driver.
>
> Signed-off-by: Cheng-Yi Chiang <cychiang@chromium.org>
> ---
>  drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c | 2 +-
>  sound/soc/rockchip/rk3288_hdmi_analog.c             | 3 ++-
>  2 files changed, 3 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c
> index d7e65c869415..86bd482b9f94 100644
> --- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c
> +++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c
> @@ -193,7 +193,7 @@ static int snd_dw_hdmi_probe(struct platform_device *pdev)
>  
>  	memset(&pdevinfo, 0, sizeof(pdevinfo));
>  	pdevinfo.parent		= pdev->dev.parent;
> -	pdevinfo.id		= PLATFORM_DEVID_AUTO;
> +	pdevinfo.id		= PLATFORM_DEVID_NONE;
>  	pdevinfo.name		= HDMI_CODEC_DRV_NAME;
>  	pdevinfo.data		= &pdata;
>  	pdevinfo.size_data	= sizeof(pdata);
> diff --git a/sound/soc/rockchip/rk3288_hdmi_analog.c b/sound/soc/rockchip/rk3288_hdmi_analog.c
> index 767700c34ee2..8286025a8747 100644
> --- a/sound/soc/rockchip/rk3288_hdmi_analog.c
> +++ b/sound/soc/rockchip/rk3288_hdmi_analog.c
> @@ -15,6 +15,7 @@
>  #include <linux/gpio.h>
>  #include <linux/of_gpio.h>
>  #include <sound/core.h>
> +#include <sound/hdmi-codec.h>
>  #include <sound/jack.h>
>  #include <sound/pcm.h>
>  #include <sound/pcm_params.h>
> @@ -142,7 +143,7 @@ static const struct snd_soc_ops rk_ops = {
>  SND_SOC_DAILINK_DEFS(audio,
>  	DAILINK_COMP_ARRAY(COMP_EMPTY()),
>  	DAILINK_COMP_ARRAY(COMP_CODEC(NULL, NULL),
> -			   COMP_CODEC("hdmi-audio-codec.2.auto", "i2s-hifi")),
> +			   COMP_CODEC(HDMI_CODEC_DRV_NAME, "i2s-hifi")),
>  	DAILINK_COMP_ARRAY(COMP_EMPTY()));
>  
>  static struct snd_soc_dai_link rk_dailink = {


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

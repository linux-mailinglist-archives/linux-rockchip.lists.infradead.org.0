Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5365BB6285
	for <lists+linux-rockchip@lfdr.de>; Wed, 18 Sep 2019 13:53:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tT9Cuvj4g+jZdX0N+wbpQVIQ1K3cZtngpvsMBewJ4ZY=; b=lMa0VeihJnhAF1
	2+A6Pyjy3mCWng7W8m8PdPGqQdC3WfLBoytH/b+38L8Y5kvKLyce7wFQNmXCjLjE2Cx88OPxvlbvI
	+bPfMtq5MtNDtBpmd2qfBLEHhefAdsadWBcnsQQDFEbZWWrY1lafWHdS4NTfesjJ1totjFc1Ey5ZG
	GPrWiSS6NBsa0crVtFPT+fwQVjpUNPiPrTo5Y3Q8t6XjFrWEufonnKDuyhHsuF+Q5jqq05LrsJk1I
	yd5r3ZOha7QbSD6kp12y1ZriSGW5Lsr+20fNbp5w7TlK/8xk+wOiS2jPvzOekiDDiilNbVfluXSAQ
	v/zjTu0z5zQ0RjwIBjwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAYWK-00017Z-4e; Wed, 18 Sep 2019 11:53:16 +0000
Received: from mail-vs1-xe41.google.com ([2607:f8b0:4864:20::e41])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAYWC-00013H-Jd
 for linux-rockchip@lists.infradead.org; Wed, 18 Sep 2019 11:53:12 +0000
Received: by mail-vs1-xe41.google.com with SMTP id p13so4286433vso.0
 for <linux-rockchip@lists.infradead.org>; Wed, 18 Sep 2019 04:53:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=1KlX045+but4kZYDkxl79NCCq10iOcslEdRaiYLes50=;
 b=fego5LxIL6sB7nuVbbaJVJB9N7WNC8aIjmYR0y5szXrjm/cLvc2AEl4CT76peU8LyO
 ovgIJAkEcVdo/HQkTbgy73bCOznMQ54xCR6vuEpJF43zd/anX3d2aaBum9pZVtNEW2/S
 KaQ6549ctO0oKG1CzL2x+C+6Ci98YSp8YZRfo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1KlX045+but4kZYDkxl79NCCq10iOcslEdRaiYLes50=;
 b=Ke7gFgvJSsbryHYtl1InCbRX+1+qdiF2MigPva0PLf12deTuVo/tkpeU4IxEON7Zf4
 mCeYzfDRjjK1+hDSiRQFEmZ+gpGtFuhLcJO+LZColhoTrrl0whN1PUm+s0ppHypDo1SG
 BhJXuK+94s5PHaOeLvAbD1vp7IermKuskUyi7oXy7j8lLAzX77XNJcZD65Se+JESwmML
 Ul0Fk+v9ar0CvCFS3r6MklhP5tm00tHugLVhXwkIPg9JyfDUmSbR6v/utmfg30qtiUlq
 kVtUPz8vk4nDxktuJWWEq6q3dHiOib9poLDPtXdRS/74jkpRj8lG0LdWer1QuMk4WSjf
 reAw==
X-Gm-Message-State: APjAAAXZtRbLo2i6X4/qmUgQmYy42CFtgAxExszrIqv7GOslB0f4unTr
 pVL5AZpJWDdboGQ71j01Gj0ygkiKyskCe6Hd2eFxxQ==
X-Google-Smtp-Source: APXvYqyhL40Vy4UIINlY/uIQouC/knlNQeJfWaG2W2HqYygbGI5RQ+ggz1DPkhARkI89YhNy/gvof3y7jgV5PmDT70U=
X-Received: by 2002:a67:db8d:: with SMTP id f13mr1855977vsk.163.1568807586619; 
 Wed, 18 Sep 2019 04:53:06 -0700 (PDT)
MIME-Version: 1.0
References: <20190918082500.209281-1-cychiang@chromium.org>
 <20190918082500.209281-3-cychiang@chromium.org>
 <1j7e663sfu.fsf@starbuckisacylon.baylibre.com>
In-Reply-To: <1j7e663sfu.fsf@starbuckisacylon.baylibre.com>
From: Cheng-yi Chiang <cychiang@chromium.org>
Date: Wed, 18 Sep 2019 19:52:39 +0800
Message-ID: <CAFv8Nw+JssR+qJYWaQAjDRbHuNidHXQBPLsbOM7kNs4MN-Nkkw@mail.gmail.com>
Subject: Re: [PATCH v6 2/4] drm: dw-hdmi-i2s: Use fixed id for codec device
To: Jerome Brunet <jbrunet@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_045309_745208_B912FC2C 
X-CRM114-Status: GOOD (  21.97  )
X-Spam-Score: -7.4 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e41 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: "moderated list:SOUND - SOC LAYER / DYNAMIC AUDIO POWER MANAGEM..."
 <alsa-devel@alsa-project.org>, Heiko Stuebner <heiko@sntech.de>,
 Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 dri-devel@lists.freedesktop.org, linux-kernel <linux-kernel@vger.kernel.org>,
 Hans Verkuil <hverkuil@xs4all.nl>, Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Takashi Iwai <tiwai@suse.com>, linux-rockchip@lists.infradead.org,
 Dylan Reid <dgreid@chromium.org>, tzungbi@chromium.org,
 Jonas Karlman <jonas@kwiboo.se>, Liam Girdwood <lgirdwood@gmail.com>,
 Russell King <rmk+kernel@armlinux.org.uk>, Mark Brown <broonie@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>, linux-arm-kernel@lists.infradead.org,
 Jernej Skrabec <jernej.skrabec@siol.net>,
 Doug Anderson <dianders@chromium.org>, Daniel Vetter <daniel@ffwll.ch>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Wed, Sep 18, 2019 at 4:43 PM Jerome Brunet <jbrunet@baylibre.com> wrote:
>
>
> On Wed 18 Sep 2019 at 10:24, Cheng-Yi Chiang <cychiang@chromium.org> wrote:
>
> > The problem of using auto ID is that the device name will be like
> > hdmi-audio-codec.<id number>.auto.
> >
> > The number might be changed when there are other platform devices being
> > created before hdmi-audio-codec device.
> > Use a fixed name so machine driver can set codec name on the DAI link.
> >
> > Using the fixed name should be fine because there will only be one
> > hdmi-audio-codec device.
>
> While this is true all platforms we know of (I suppose), It might not be
> the case later on. I wonder if making such assumption is really
> desirable in a code which is used by quite a few different platforms.
>
> Instead of trying to predict what the device name will be, can't you just
> query it in your machine driver ? Using a device tree phandle maybe ?
>
> It is quite usual to set the dai links this way, "simple-card" is a good
> example of this.
>

Hi Jerome,
Thanks for the quick reply!
And thanks for pointing this out.
I found that
soc_component_to_node searches upward for one layer so it can find the
node which creates hdmi-audio-codec in runtime. This works even that
hdmi-audio-codec does not have its own node in dts.
I will change accordingly in v7.
Thanks!



> >
> > Fix the codec name in rockchip rk3288_hdmi_analog machine driver.
> >
> > Signed-off-by: Cheng-Yi Chiang <cychiang@chromium.org>
> > ---
> >  drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c | 2 +-
> >  sound/soc/rockchip/rk3288_hdmi_analog.c             | 3 ++-
> >  2 files changed, 3 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c
> > index d7e65c869415..86bd482b9f94 100644
> > --- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c
> > +++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c
> > @@ -193,7 +193,7 @@ static int snd_dw_hdmi_probe(struct platform_device *pdev)
> >
> >       memset(&pdevinfo, 0, sizeof(pdevinfo));
> >       pdevinfo.parent         = pdev->dev.parent;
> > -     pdevinfo.id             = PLATFORM_DEVID_AUTO;
> > +     pdevinfo.id             = PLATFORM_DEVID_NONE;
> >       pdevinfo.name           = HDMI_CODEC_DRV_NAME;
> >       pdevinfo.data           = &pdata;
> >       pdevinfo.size_data      = sizeof(pdata);
> > diff --git a/sound/soc/rockchip/rk3288_hdmi_analog.c b/sound/soc/rockchip/rk3288_hdmi_analog.c
> > index 767700c34ee2..8286025a8747 100644
> > --- a/sound/soc/rockchip/rk3288_hdmi_analog.c
> > +++ b/sound/soc/rockchip/rk3288_hdmi_analog.c
> > @@ -15,6 +15,7 @@
> >  #include <linux/gpio.h>
> >  #include <linux/of_gpio.h>
> >  #include <sound/core.h>
> > +#include <sound/hdmi-codec.h>
> >  #include <sound/jack.h>
> >  #include <sound/pcm.h>
> >  #include <sound/pcm_params.h>
> > @@ -142,7 +143,7 @@ static const struct snd_soc_ops rk_ops = {
> >  SND_SOC_DAILINK_DEFS(audio,
> >       DAILINK_COMP_ARRAY(COMP_EMPTY()),
> >       DAILINK_COMP_ARRAY(COMP_CODEC(NULL, NULL),
> > -                        COMP_CODEC("hdmi-audio-codec.2.auto", "i2s-hifi")),
> > +                        COMP_CODEC(HDMI_CODEC_DRV_NAME, "i2s-hifi")),
> >       DAILINK_COMP_ARRAY(COMP_EMPTY()));
> >
> >  static struct snd_soc_dai_link rk_dailink = {
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

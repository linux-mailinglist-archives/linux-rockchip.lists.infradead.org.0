Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAC28607C9
	for <lists+linux-rockchip@lfdr.de>; Fri,  5 Jul 2019 16:26:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9wSpTOKrJcmDCb7CD5AopBLfhCs6p0hlA236x0ZXe1U=; b=oGtPSdM80hOTbv
	Qy4dUSYed+NdhnREFMu6cWDzuMFIM66SauIn+O2lGuY4clR165TkI0+XB4Aj5cjIU/OJ1jVxd4IOC
	63N25jnhDgA1HSykN40HKWv8ItLSyLL0pW9TrK96KQERmjCwlr2dkAG+8NDJCZf3HsKeIcmKuU1go
	xZxE9Evgr3cosXS3aylPCamSFfsonAbakZ1RWdm6OrIjNcKQ0yeC9lc2ofWMT9wwjm+Kbls8QEbu2
	ztECnvsr6ZzjcQ0mb+ASosupeq2E/5nhfsaK1Iz7oBJlWaUBybZ3HVWh7po4TQefboFJFRqhwpJtm
	rCMTXSrDjbwXwopJcJWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjPAv-0000aS-8b; Fri, 05 Jul 2019 14:26:57 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjPAs-0000Zv-V5
 for linux-rockchip@bombadil.infradead.org; Fri, 05 Jul 2019 14:26:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Type:Cc:To:Subject:Message-ID:
 Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DICfq5XTcQzxq11n/NHs27mGioZf4mAb5LvXEz+xYZo=; b=AqAopKXEmq698ZRHoWWpKKhzc
 Aq3iydJ7A5LWyX7W6fhngCT6yzNK359sRJOpwbDb644LdDVOnjYIJBV3CbdaapK5eMWPzR7G3TLqp
 iJg56zhy44Zj6D++3rsnBVJ4o/H1xb4bjP9CZkQwNjH1dQc91j+lzqNpPq6GfNEtEbCJHaB6NOn9k
 AnffR+iMsQyNJ0UmLFm7vYQP8a9wNi9I7hmpcj+2M+F73w1ADPUX3oQsSKj8Epa5UdMMsAGLxUDfM
 2xvKqUPnL5/X62S9//C5iQHkIrZ3b4AfQZzMBfA9ieUmJCeqg0dwSvN7lLLqDsLxtoCZlmhehd9+P
 f8O3ZQPsA==;
Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjIn5-0003hs-Q1
 for linux-rockchip@lists.infradead.org; Fri, 05 Jul 2019 07:37:57 +0000
Received: by mail-vs1-xe44.google.com with SMTP id 190so3267392vsf.9
 for <linux-rockchip@lists.infradead.org>; Fri, 05 Jul 2019 00:37:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=DICfq5XTcQzxq11n/NHs27mGioZf4mAb5LvXEz+xYZo=;
 b=YlCq+DE8tSdVqwbF3dpt0TH/SmtFyBBicmFzm5tIOkFu9Btry9eggH7ZbR7zIsjneP
 vl5S6rdRmPU2O0sguGIJrqbsKGX1U2kmIJ3+JV7oWErOccYdO7obFudkwSYRDf4dH5nu
 cljbA5+v7H9LJh5TheVtDJLkkn8k5OS1t+mj0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DICfq5XTcQzxq11n/NHs27mGioZf4mAb5LvXEz+xYZo=;
 b=OIZK02Qsy0hru+yWiMDA4dZCFMbwzEYjVlx6j/cnvh7V7XVTZnsqdUSX4pujGVTgcE
 PWX9a4E/ilPpljmiK7Euk9bWWKOEMX0RSE0eHTcOjZ17cQLvebr2DpgYDtHYBIQhqY4d
 dYfDsdsxpwuawhkDlZW7pQDX+hIo7k8uDDvrZowuN3xSWDIy7izmF1RZVijcgJ3CrFrG
 cqA6Vff91rcmx0Wib6aTMlX38ggUcRiacoLCrXlfF2bx8JMCu4k5BNVj4UD6FT1pXYyJ
 ao92VRWsktAh9nucwqMZJg7Y25Rves/gXMzgk2KL/XSdTBKLyyopSg5UGhdmsZMapTLD
 161A==
X-Gm-Message-State: APjAAAUCdLhdoc60I1adp+n6ya0cbXpwP3YuivzPLsnqJ7c4fHEkIjG4
 cTHFl6dJyRg5CM9mwfk5cBWtnQN0XUR68WLAMI4Yzg==
X-Google-Smtp-Source: APXvYqzc+pyNbVyeJdIdT5O/oHPA0+Ko7qWiAF8npTA/knIhPiNLZILpC61LRZIQfdUztKYjkkq02bq7H2jdTEwOT38=
X-Received: by 2002:a67:fb87:: with SMTP id n7mr1309522vsr.9.1562312148663;
 Fri, 05 Jul 2019 00:35:48 -0700 (PDT)
MIME-Version: 1.0
References: <20190705042623.129541-1-cychiang@chromium.org>
 <20190705042623.129541-3-cychiang@chromium.org>
 <CA+Px+wWwudeG5BLOkgcq_sJqfTxmre1O=XqU8OM6oqC966TUuQ@mail.gmail.com>
In-Reply-To: <CA+Px+wWwudeG5BLOkgcq_sJqfTxmre1O=XqU8OM6oqC966TUuQ@mail.gmail.com>
From: Cheng-yi Chiang <cychiang@chromium.org>
Date: Fri, 5 Jul 2019 15:35:22 +0800
Message-ID: <CAFv8NwJBSvN-7LRX8ZMOQ4hwQ1NA9y09L0tGOyCDvsXRbADUSA@mail.gmail.com>
Subject: Re: [PATCH 2/4] drm: bridge: dw-hdmi: Report connector status using
 callback
To: Tzung-Bi Shih <tzungbi@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190705_083755_939588_45F7EF5E 
X-CRM114-Status: GOOD (  23.23  )
X-Spam-Score: -7.6 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-7.6 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e44 listed in]
 [list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
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
Cc: ALSA development <alsa-devel@alsa-project.org>,
 Doug Anderson <dianders@chromium.org>, Heiko Stuebner <heiko@sntech.de>,
 Liam Girdwood <lgirdwood@gmail.com>, David Airlie <airlied@linux.ie>,
 dri-devel@lists.freedesktop.org, Takashi Iwai <tiwai@suse.com>,
 tzungbi@chromium.org, linux-kernel <linux-kernel@vger.kernel.org>,
 Hans Verkuil <hverkuil@xs4all.nl>, Andrzej Hajda <a.hajda@samsung.com>,
 Russell King <rmk+kernel@armlinux.org.uk>, Mark Brown <broonie@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, linux-rockchip@lists.infradead.org,
 Dylan Reid <dgreid@chromium.org>, Jaroslav Kysela <perex@perex.cz>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Fri, Jul 5, 2019 at 3:09 PM Tzung-Bi Shih <tzungbi@google.com> wrote:
>
> On Fri, Jul 5, 2019 at 12:26 PM Cheng-Yi Chiang <cychiang@chromium.org> wrote:
> > diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-audio.h b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-audio.h
> > index 63b5756f463b..f523c590984e 100644
> > --- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-audio.h
> > +++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-audio.h
> > @@ -2,6 +2,8 @@
> >  #ifndef DW_HDMI_AUDIO_H
> >  #define DW_HDMI_AUDIO_H
> >
> > +#include <sound/hdmi-codec.h>
> > +
> >  struct dw_hdmi;
> >
> >  struct dw_hdmi_audio_data {
> > @@ -17,6 +19,7 @@ struct dw_hdmi_i2s_audio_data {
> >
> >         void (*write)(struct dw_hdmi *hdmi, u8 val, int offset);
> >         u8 (*read)(struct dw_hdmi *hdmi, int offset);
> > +       int (*set_plugged_cb)(struct dw_hdmi *hdmi, hdmi_codec_plugged_cb fn);
> >  };
> >
> >  #endif
> > diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c
> > index 5cbb71a866d5..7b93cf05c985 100644
> > --- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c
> > +++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c
> > @@ -104,10 +104,20 @@ static int dw_hdmi_i2s_get_dai_id(struct snd_soc_component *component,
> >         return -EINVAL;
> >  }
> >
> > +static int dw_hdmi_i2s_hook_plugged_cb(struct device *dev, void *data,
> > +                                      hdmi_codec_plugged_cb fn)
> > +{
> > +       struct dw_hdmi_i2s_audio_data *audio = data;
> > +       struct dw_hdmi *hdmi = audio->hdmi;
> > +
> > +       return audio->set_plugged_cb(hdmi, fn);
> > +}
> > +
> The first parameter dev could be removed.  Not used.
>
Hi Tzungbi, thanks for the review.

I am not sure about this one.
I think it depends on the DRM driver so I need to keep both..
E.g.
drivers/gpu/drm/rockchip/cdn-dp-core.c
it needs dev to access the required data.
You can check this patch:

"efc9194bcff8  ASoC: hdmi-codec: callback function will be called with
private data"

It explains that some cases use *dev, some cases use *data.

> >  static struct hdmi_codec_ops dw_hdmi_i2s_ops = {
> >         .hw_params      = dw_hdmi_i2s_hw_params,
> >         .audio_shutdown = dw_hdmi_i2s_audio_shutdown,
> >         .get_dai_id     = dw_hdmi_i2s_get_dai_id,
> > +       .hook_plugged_cb = dw_hdmi_i2s_hook_plugged_cb,
> >  };
> >
> >  static int snd_dw_hdmi_probe(struct platform_device *pdev)
> > diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> > index 045b1b13fd0e..c69a399fc7ca 100644
> > --- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> > +++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> > @@ -26,6 +26,8 @@
> >  #include <drm/drm_probe_helper.h>
> >  #include <drm/bridge/dw_hdmi.h>
> >
> > +#include <sound/hdmi-codec.h>
> > +
> >  #include <uapi/linux/media-bus-format.h>
> >  #include <uapi/linux/videodev2.h>
> >
> > @@ -185,6 +187,9 @@ struct dw_hdmi {
> >         void (*disable_audio)(struct dw_hdmi *hdmi);
> >
> >         struct cec_notifier *cec_notifier;
> > +
> > +       hdmi_codec_plugged_cb plugged_cb;
> > +       enum drm_connector_status last_connector_result;
> >  };
> >
> >  #define HDMI_IH_PHY_STAT0_RX_SENSE \
> > @@ -209,6 +214,17 @@ static inline u8 hdmi_readb(struct dw_hdmi *hdmi, int offset)
> >         return val;
> >  }
> >
> > +static int hdmi_set_plugged_cb(struct dw_hdmi *hdmi, hdmi_codec_plugged_cb fn)
> > +{
> > +       mutex_lock(&hdmi->mutex);
> > +       hdmi->plugged_cb = fn;
> > +       if (hdmi->audio && !IS_ERR(hdmi->audio))
> I would expect if IS_ERR(hdmi->audio), then this should not be called
> (i.e. should exit somewhere earlier).
>
ACK. I should fix that.
Thanks!
> > +               fn(hdmi->audio,
> > +                  hdmi->last_connector_result == connector_status_connected);
> > +       mutex_unlock(&hdmi->mutex);
> > +       return 0;
> > +}
> > +
> >  static void hdmi_modb(struct dw_hdmi *hdmi, u8 data, u8 mask, unsigned reg)
> >  {
> >         regmap_update_bits(hdmi->regm, reg << hdmi->reg_shift, mask, data);
> > @@ -2044,6 +2060,7 @@ dw_hdmi_connector_detect(struct drm_connector *connector, bool force)
> >  {
> >         struct dw_hdmi *hdmi = container_of(connector, struct dw_hdmi,
> >                                              connector);
> > +       enum drm_connector_status result;
> >
> >         mutex_lock(&hdmi->mutex);
> >         hdmi->force = DRM_FORCE_UNSPECIFIED;
> > @@ -2051,7 +2068,20 @@ dw_hdmi_connector_detect(struct drm_connector *connector, bool force)
> >         dw_hdmi_update_phy_mask(hdmi);
> >         mutex_unlock(&hdmi->mutex);
> >
> > -       return hdmi->phy.ops->read_hpd(hdmi, hdmi->phy.data);
> > +       result = hdmi->phy.ops->read_hpd(hdmi, hdmi->phy.data);
> > +
> > +       mutex_lock(&hdmi->mutex);
> > +       if (result != hdmi->last_connector_result) {
> > +               dev_dbg(hdmi->dev, "read_hpd result: %d", result);
> > +               if (hdmi->plugged_cb && hdmi->audio && !IS_ERR(hdmi->audio)) {
> Share the same concern above.
ACK

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 118EDA2984
	for <lists+linux-rockchip@lfdr.de>; Fri, 30 Aug 2019 00:17:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NfKmxIpsTgKrnmz6jihlyAGQYDAfoMFcY+XPP7peuDM=; b=IzwUP/XCE0ySJq
	vlw9OAhfGKvMPvitbrX1xcOg23EtCI+2rFcBJAZlXCuuvVWaXyoWCX/KlRHrJjfN8dhhX/tLe4PfH
	BRAoliRZaHf8VjKlG9v+/lqzuoOvrIl+dp4CAmYz8kJcbeo6h9NgsdaOsQMZEemLojBX758ZHVvC+
	iTYM67CGZPCuHBGG996mX4Oot3mzYUBuMNeyMbvT7Xxu8ZXECGrJxiNACchV2Z4mrmAuj8+n7C/TE
	c2x+tlZksAt2xK0WrzdUrEpCjhT0Da0HQrz4ThQt7G6rNdYnvuuJSs1rvk1bkosMoJOweZRcUbWZk
	7nYK87sVv5M3GESridhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3Siw-0004wV-0B; Thu, 29 Aug 2019 22:16:58 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3Siq-0004vr-8x
 for linux-rockchip@lists.infradead.org; Thu, 29 Aug 2019 22:16:53 +0000
Received: by mail-io1-xd44.google.com with SMTP id t3so10033240ioj.12
 for <linux-rockchip@lists.infradead.org>; Thu, 29 Aug 2019 15:16:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=eiH72N61VDWmVxItzkF6zksnlwjwA2NHJACDtY2Xycg=;
 b=Way9cSCIYfArenznA8oYHlnHTJabAbfOvU8IBuvW3W6wFHlllPVoSIv2T/WNlJ0q6e
 SoUznNz9PMqM6gzVg33TP/25HbF7F99Rzcq7p8kxHA9bjWkVaWA3Kmw0x8gROWIYNNGo
 szQWao+/UlAj8ndbqomemYcpAzbSPosUn43N0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=eiH72N61VDWmVxItzkF6zksnlwjwA2NHJACDtY2Xycg=;
 b=jGs/Ooc0cIThOUgMH/M6Asc2hQNcMywRjn9Ag0vglaL41ilrqbsgRnIZBxXGEok7Ja
 mvyaUD3m6VKf9VYcD0T4Mg/y948JtpmWfNibVZQGZoG7KNRGeDD3ZdwSERJo4yeETVdZ
 OvkrtNxoivysRK8m4Rkc3s/npXU4nRYsNHM4yrVNmw33aX7Tin/qVW4pssW2dWRqR+ya
 pYKdMU+bDLTG38lrp0OS7+wub5bKJ23TzsbNz0nSks7v2i92zYK2GxO4eJKP89ZK0QZC
 ofug5DSg724/RGrV2aP+MKJ1RQJ0WcSQflyBJtkbIjLfFJbgY0+sSqazvBO5yU9+74yV
 2YuA==
X-Gm-Message-State: APjAAAXvsbVji+zMuKzeBK+pdJRWUnQjDIVF4nm4oYjGTa+wwYSk/NrI
 AvKz1de6NgUd+AjEcJz+2apTsiK1EoE=
X-Google-Smtp-Source: APXvYqwNBDvyDOTu3RBKyCwUCT3hhjPMqNdS7ON6a9EU4hser/c++ibKEHVWO3DPVmz5BU3+DIBdyA==
X-Received: by 2002:a02:a07:: with SMTP id 7mr13160394jaw.141.1567117009279;
 Thu, 29 Aug 2019 15:16:49 -0700 (PDT)
Received: from mail-io1-f42.google.com (mail-io1-f42.google.com.
 [209.85.166.42])
 by smtp.gmail.com with ESMTPSA id v13sm4004125iol.60.2019.08.29.15.16.48
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 29 Aug 2019 15:16:49 -0700 (PDT)
Received: by mail-io1-f42.google.com with SMTP id o9so10149598iom.3
 for <linux-rockchip@lists.infradead.org>; Thu, 29 Aug 2019 15:16:48 -0700 (PDT)
X-Received: by 2002:a6b:d006:: with SMTP id x6mr13702031ioa.218.1567117008526; 
 Thu, 29 Aug 2019 15:16:48 -0700 (PDT)
MIME-Version: 1.0
References: <20190829042957.150929-1-cychiang@chromium.org>
In-Reply-To: <20190829042957.150929-1-cychiang@chromium.org>
From: Doug Anderson <dianders@chromium.org>
Date: Thu, 29 Aug 2019 15:16:36 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Xb_SkUTkVRpOX7B+B0AdT3cOB+JamNyXzq_UQK3mvz1A@mail.gmail.com>
Message-ID: <CAD=FV=Xb_SkUTkVRpOX7B+B0AdT3cOB+JamNyXzq_UQK3mvz1A@mail.gmail.com>
Subject: Re: [PATCH] drm: dw-hdmi-i2s: enable audio clock in audio_startup
To: Cheng-Yi Chiang <cychiang@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_151652_338227_49138A4B 
X-CRM114-Status: GOOD (  19.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: ALSA Development Mailing List <alsa-devel@alsa-project.org>,
 tzungbi@chromium.org, =?UTF-8?B?6YOR5YW0?= <zhengxing@rock-chips.com>,
 kuninori.morimoto.gx@renesas.com, Andrzej Hajda <a.hajda@samsung.com>,
 David Airlie <airlied@linux.ie>,
 =?UTF-8?B?6ZmI5riQ6aOe?= <jeffy.chen@rock-chips.com>,
 LKML <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 =?UTF-8?B?6JSh6Im65Lyf?= <cain.cai@rock-chips.com>,
 Neil Armstrong <narmstrong@baylibre.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Eddie Cai <eddie.cai@rock-chips.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Dylan Reid <dgreid@chromium.org>, Sam Ravnborg <sam@ravnborg.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi,

On Wed, Aug 28, 2019 at 9:30 PM Cheng-Yi Chiang <cychiang@chromium.org> wrote:
>
> In the designware databook, the sequence of enabling audio clock and
> setting format is not clearly specified.
> Currently, audio clock is enabled in the end of hw_param ops after
> setting format.
>
> On some monitors, there is a possibility that audio does not come out.
> Fix this by enabling audio clock in audio_startup ops
> before hw_param ops setting format.
>
> Signed-off-by: Cheng-Yi Chiang <cychiang@chromium.org>
> ---
>  drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c | 9 +++++++++
>  1 file changed, 9 insertions(+)
>
> diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c
> index 5cbb71a866d5..08b4adbb1ddc 100644
> --- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c
> +++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c
> @@ -69,6 +69,14 @@ static int dw_hdmi_i2s_hw_params(struct device *dev, void *data,
>         hdmi_write(audio, conf0, HDMI_AUD_CONF0);
>         hdmi_write(audio, conf1, HDMI_AUD_CONF1);
>
> +       return 0;
> +}
> +
> +static int dw_hdmi_i2s_audio_startup(struct device *dev, void *data)
> +{
> +       struct dw_hdmi_i2s_audio_data *audio = data;
> +       struct dw_hdmi *hdmi = audio->hdmi;
> +
>         dw_hdmi_audio_enable(hdmi);
>
>         return 0;
> @@ -105,6 +113,7 @@ static int dw_hdmi_i2s_get_dai_id(struct snd_soc_component *component,
>  }
>
>  static struct hdmi_codec_ops dw_hdmi_i2s_ops = {
> +       .audio_startup = dw_hdmi_i2s_audio_startup,
>         .hw_params      = dw_hdmi_i2s_hw_params,
>         .audio_shutdown = dw_hdmi_i2s_audio_shutdown,
>         .get_dai_id     = dw_hdmi_i2s_get_dai_id,
> --

I am no expert on audio stuff, but this seems sane to me.  If you
happened to spin it for another reason, it might seem slightly nicer
to put the setting of ".audio_startup" adjacent to the setting of
".audio_shutdown" in the struct.

I have tested your patch on Chrome OS 4.19 and it definitely fixes the
problems I saw.  Chrome OS 4.19 is a little different than upstream
and I'm not setup to test HDMI audio directly on upstream, but I did
at least confirm that my problem _wasn't_ magically fixed by any of
these patches that I found upstream (I picked them into my tree and
still saw the problem):

fc1ca6e01d0a drm/bridge: dw-hdmi-i2s: add .get_eld support
43e88f670a5e drm/bridge: dw-hdmi-i2s: enable only the required i2s lanes
46cecde310bb drm/bridge: dw-hdmi-i2s: reset audio fifo before applying
new params
0c6098859176 drm/bridge: dw-hdmi-i2s: set the channel allocation
17a1e555b608 drm/bridge: dw-hdmi-i2s: enable lpcm multi channels
da5f5bc92f49 drm/bridge: dw-hdmi: set channel count in the infoframes
2a2a3d2ff799 drm/bridge: dw-hdmi: move audio channel setup out of ahb
8067f62bccaf drm/bridge: dw-hdmi-i2s: support more i2s format

Thus:

Reviewed-by: Douglas Anderson <dianders@chromium.org>
Tested-by: Douglas Anderson <dianders@chromium.org>

-Doug

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

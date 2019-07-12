Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6CDB66AF7
	for <lists+linux-rockchip@lfdr.de>; Fri, 12 Jul 2019 12:38:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m79e8u2r5uq7z7yT6XED9QOw6Mnr2wO08dgmxSUpglA=; b=hC4S54KUw/CTld
	/oFAby5IPUmOKt2JeMgOFYugUE7LHkQaOCqdocXZMioLIWwAw61WXuI1uT9DzPFNSxoVC722v6Svf
	BP7lgB91NrOx7tSM282QvgwjwialBgKfsc8XRG5Tak/eP22lMEBeUFCUekgmXxCPr8VfUUm6Q60aU
	00eM8uCfWQaMYAhuxNT654zgS1DD9O4Zwq+db/9WO+QX3lXluQ62KiGjNj7xy7gj917vx549cqIX1
	IGiGt3LVJv0Gc1hhM1Oua0vRA1reJ+xRbo0hWMtEeiuz+q21vX2ipsSWrq+Acw4C1Bs2CqaWgt0JX
	f05SQ+ihIJGGgd9rUJMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlsx2-0006Ir-ES; Fri, 12 Jul 2019 10:38:52 +0000
Received: from mail-ua1-x943.google.com ([2607:f8b0:4864:20::943])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlswx-0006H4-C9
 for linux-rockchip@lists.infradead.org; Fri, 12 Jul 2019 10:38:48 +0000
Received: by mail-ua1-x943.google.com with SMTP id j8so3812024uan.6
 for <linux-rockchip@lists.infradead.org>; Fri, 12 Jul 2019 03:38:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=NFlnVgtsH1wq+XzR7Jf0TraeqzPpP2anw1H9Vmw2tvM=;
 b=ZZWCRPdCfXzrnVtRzZdwa1ITRmB3qxf5geOYMDfWQUsSK85+lC95yAWwXfIWtojj3Z
 +U5nZwLyKEoHiF/KfrDvTV3RQwC3bWT6oq5DVauijG88SJsDnIFShBwLwjLw75Qqi3Pw
 uvgV0slD6iFweegv0PnpZ9YeoJUKQTa3aoJqg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NFlnVgtsH1wq+XzR7Jf0TraeqzPpP2anw1H9Vmw2tvM=;
 b=PDlqRcZQ8/czuT0KjqCI6edMgHYsD2HzTf7N7ZSFTKtUu8df4vgHbueLC5gEb59S56
 tjhaM+Tkl39jYpXpLnuybH6rv4nb5d4lpXGLYKHIN2bJ7qCCD21UGgdh4gnnNN3mudhH
 1cRR2AcEnbLfgwdISMiY92Pu3wX9CT4GM9GiwWcbwEyEGvj1lAJ0tqdvws0Rye61EPKt
 VbtWx+ZoTU7/RfgqsSXn4wDJcR1GVuLpD18F7GK9scw4vDdEmV1mQy/M4rmn73SN6JlY
 GdP8edQjjJQ4++yAsCMADTMz7WYTAvmUjX+hCjG8CF+RGENsOFmOdCa6LxL+lC4kB6JC
 Bmow==
X-Gm-Message-State: APjAAAXqsh5s9GAbKyvBHKCU3FN/xICZOMkK5l9CZ/ONeB0yejTgKbso
 e/f1SRHUCmUhpCeGfOX68VckqOOGFJ0EoBwVdJTr/g==
X-Google-Smtp-Source: APXvYqwr8ViLkFyuDpuZsdv+4CeIPeQhpf+eg0vAcxLw4Fe8TNWMbS82tIBGOSDng7L1p4Sa5VlGPV5eMJFqWsRho94=
X-Received: by 2002:a9f:3605:: with SMTP id r5mr8414289uad.131.1562927921086; 
 Fri, 12 Jul 2019 03:38:41 -0700 (PDT)
MIME-Version: 1.0
References: <20190712100443.221322-1-cychiang@chromium.org>
 <20190712100443.221322-6-cychiang@chromium.org>
In-Reply-To: <20190712100443.221322-6-cychiang@chromium.org>
From: Cheng-yi Chiang <cychiang@chromium.org>
Date: Fri, 12 Jul 2019 18:38:14 +0800
Message-ID: <CAFv8NwKOhAz4B1da5MarXkVfavya6AYsvURa1Tq4LW=_nyZjiw@mail.gmail.com>
Subject: Re: [PATCH v3 5/5] FROMLIST: ASoC: rockchip_max98090: Add HDMI jack
 support
To: linux-kernel <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_033847_420797_B2B6008E 
X-CRM114-Status: GOOD (  14.44  )
X-Spam-Score: -7.4 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:943 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 <alsa-devel@alsa-project.org>, Doug Anderson <dianders@chromium.org>,
 Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org,
 Takashi Iwai <tiwai@suse.com>, Liam Girdwood <lgirdwood@gmail.com>,
 tzungbi@chromium.org, Jaroslav Kysela <perex@perex.cz>,
 Hans Verkuil <hverkuil@xs4all.nl>, Andrzej Hajda <a.hajda@samsung.com>,
 Russell King <rmk+kernel@armlinux.org.uk>, Mark Brown <broonie@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, Dylan Reid <dgreid@chromium.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Fri, Jul 12, 2019 at 6:06 PM Cheng-Yi Chiang <cychiang@chromium.org> wrote:
>
> In machine driver, create a jack and let hdmi-codec report jack status.
>
> Signed-off-by: Cheng-Yi Chiang <cychiang@chromium.org>
> ---
>  sound/soc/rockchip/rockchip_max98090.c | 20 ++++++++++++++++++++
>  1 file changed, 20 insertions(+)
>
> diff --git a/sound/soc/rockchip/rockchip_max98090.c b/sound/soc/rockchip/rockchip_max98090.c
> index c82948e383da..c81c4acda917 100644
> --- a/sound/soc/rockchip/rockchip_max98090.c
> +++ b/sound/soc/rockchip/rockchip_max98090.c
> @@ -134,6 +134,25 @@ enum {
>         DAILINK_HDMI,
>  };
>
> +static struct snd_soc_jack rk_hdmi_jack;
> +
> +static int rk_hdmi_init(struct snd_soc_pcm_runtime *runtime)
> +{
> +       struct snd_soc_card *card = runtime->card;
> +       struct snd_soc_component *component = runtime->codec_dai->component;
> +       int ret;
> +
> +       /* enable jack detection */
> +       ret = snd_soc_card_jack_new(card, "HDMI Jack", SND_JACK_LINEOUT,
> +                                   &rk_hdmi_jack, NULL, 0);
> +       if (ret) {
> +               dev_err(card->dev, "Can't new HDMI Jack %d\n", ret);
> +               return ret;
> +       }
> +
> +       return hdmi_codec_set_jack_detect(component, &rk_hdmi_jack);
> +}
> +
>  /* max98090 and HDMI codec dai_link */
>  static struct snd_soc_dai_link rk_dailinks[] = {
>         [DAILINK_MAX98090] = {
> @@ -151,6 +170,7 @@ static struct snd_soc_dai_link rk_dailinks[] = {
>                 .ops = &rk_aif1_ops,
>                 .dai_fmt = SND_SOC_DAIFMT_I2S | SND_SOC_DAIFMT_NB_NF |
>                         SND_SOC_DAIFMT_CBS_CFS,
> +               .init = rk_hdmi_init,
>                 SND_SOC_DAILINK_REG(hdmi),
>         }
>  };
> --
> 2.22.0.510.g264f2c817a-goog
>

Sorry for the wrong title.
I forgot to remove FROMLIST in the title.
I'll wait for comments on other patches and fix the title in v4.
Thanks!

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

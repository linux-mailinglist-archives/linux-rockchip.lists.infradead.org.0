Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5939860FB6
	for <lists+linux-rockchip@lfdr.de>; Sat,  6 Jul 2019 12:00:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aDKQWxppr1gRLErR4+RVg1NXFCxT2QQ2WlLTcmOvdY4=; b=QN2O3E9k8z60Ag
	bQmVe3KIIKmX6QldKA9UpBQ7pPDFnWZAr50L2a8nPbGUrVc9xQVnEdqOtex+KWfZmD1ZUkQ6jQyWy
	MJuYraPZ0+ujGbhNlLjn8ZZ5oDxqp5WKy1/rqvAWimVhZHc/hqRraOuIk4rwBDUfzJ4l9PIAaQfE5
	qYDXHCMr93vpKx3PSRO3SaNUnLlbCqkl4oJsuRvlS38d3tBJYp0UvmT5jnOu8rGFOSmYrs+o/zvUp
	6ccOeRJwEvsOAKC9H1MhL2FTkFq5IQreWztELW2OPxxvmx6gUPyoNxdqrt+fOk6+uOtyBsKcyo+Ax
	ZMAKnHj0PZ7ZKNGtp3fQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjhU8-0001tz-AW; Sat, 06 Jul 2019 10:00:01 +0000
Received: from mail-ua1-x943.google.com ([2607:f8b0:4864:20::943])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjhTa-0001lV-VV
 for linux-rockchip@lists.infradead.org; Sat, 06 Jul 2019 09:59:28 +0000
Received: by mail-ua1-x943.google.com with SMTP id s4so3062872uad.7
 for <linux-rockchip@lists.infradead.org>; Sat, 06 Jul 2019 02:59:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=x2Rz/d21/ylv5Zd5tSKi5YqfwGQ980yh4WNadx9GYzU=;
 b=MhXumSV4QoeqvPMiVA5KMYVeE+uN2th6BsySYscGyYhJjh3srusH1YsRVfrkrYlVen
 7ZUCu1dWeAV26hNlZSvWFcuU7tmTva0QMuiGbbaxaZtBQNJiKVrnj/g9MjCDAiMF3z5p
 2c94LPDUb0u0w1hsNsGm1S9a1uVjq58OkHTE0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=x2Rz/d21/ylv5Zd5tSKi5YqfwGQ980yh4WNadx9GYzU=;
 b=k44+Y8c1EPEnsn6LTXlXTEr64JHxe+d9TAThbjw39ehUspcZefKrFALCd2hkIE9VRA
 6VC+mugEoZjs8fpRbKWtul+FHRQ1ouHR0EgR+1Kw1kKcdSaTDIdhluATO316fPVLa2uJ
 TsiYu7YMaL5PBnudMy/aRv9Q0cesDwKc8NjRd5iq9Qb/49aELRe/ttOBbqyKAj1jJMnO
 OCKn71z+f1DgG8w4CIz2xXYsTpkvLcRBNX7UqV8yzDKtUy8L2DRoKBwhOjW7WLk0KL6a
 IvJIPonWg49RSXNBu1MIEPWcttvUfbxxAVuKsLG5GcipBwpw+nSXzr14pa3JtM3RpnnN
 QsFQ==
X-Gm-Message-State: APjAAAVAe3sCfbatq6lpiK9Ovtfbahvvr2WU75aboyUFlV/hTlEUUU+B
 aQwZ/5vw58qpqFBjcznvJMEK+nhNjKLOLoqP0Di++g==
X-Google-Smtp-Source: APXvYqwUUszDaeoohzqNnkpQSYnHVhSPEY45kVLHkzpLi5HEdIAQnRyv7V0QmFsdPAf8yIUxZoaDtdCrRbHH7LsGI9Q=
X-Received: by 2002:a9f:3605:: with SMTP id r5mr4738015uad.131.1562407158879; 
 Sat, 06 Jul 2019 02:59:18 -0700 (PDT)
MIME-Version: 1.0
References: <20190705042623.129541-1-cychiang@chromium.org>
 <20190705042623.129541-4-cychiang@chromium.org>
 <CA+Px+wXVghbk8k0WE5TEsGRQXx26K0-=h3O7cje-F1phwBGrbQ@mail.gmail.com>
In-Reply-To: <CA+Px+wXVghbk8k0WE5TEsGRQXx26K0-=h3O7cje-F1phwBGrbQ@mail.gmail.com>
From: Cheng-yi Chiang <cychiang@chromium.org>
Date: Sat, 6 Jul 2019 17:58:52 +0800
Message-ID: <CAFv8NwKBA_=R2YsgU+dvr_G5fUCNiVL-TOKL=26rK2m_qbrcbw@mail.gmail.com>
Subject: Re: [PATCH 3/4] ASoC: rockchip_max98090: Add dai_link for HDMI
To: Tzung-Bi Shih <tzungbi@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190706_025927_013773_6C09B049 
X-CRM114-Status: GOOD (  15.25  )
X-Spam-Score: -7.6 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:943 listed in]
 [list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 PDS_NO_HELO_DNS        High profile HELO but no A record
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

On Fri, Jul 5, 2019 at 3:10 PM Tzung-Bi Shih <tzungbi@google.com> wrote:
>
> On Fri, Jul 5, 2019 at 12:26 PM Cheng-Yi Chiang <cychiang@chromium.org> wrote:
> > diff --git a/sound/soc/rockchip/rockchip_max98090.c b/sound/soc/rockchip/rockchip_max98090.c
> > index c5fc24675a33..195309d1225a 100644
> > --- a/sound/soc/rockchip/rockchip_max98090.c
> > +++ b/sound/soc/rockchip/rockchip_max98090.c
> >  static int rk_aif1_hw_params(struct snd_pcm_substream *substream,
> > @@ -92,38 +95,59 @@ static int rk_aif1_hw_params(struct snd_pcm_substream *substream,
> >
> >         ret = snd_soc_dai_set_sysclk(cpu_dai, 0, mclk,
> >                                      SND_SOC_CLOCK_OUT);
> > -       if (ret < 0) {
> > -               dev_err(codec_dai->dev, "Can't set codec clock %d\n", ret);
> > +       if (ret && ret != -ENOTSUPP) {
> > +               dev_err(cpu_dai->dev, "Can't set cpu dai clock %d\n", ret);
I should remove this change because cpu dai should support sysclk ops.

> >                 return ret;
> >         }
> >
> >         ret = snd_soc_dai_set_sysclk(codec_dai, 0, mclk,
> >                                      SND_SOC_CLOCK_IN);
> > -       if (ret < 0) {
> > -               dev_err(codec_dai->dev, "Can't set codec clock %d\n", ret);
> > +       if (ret && ret != -ENOTSUPP) {
> > +               dev_err(codec_dai->dev, "Can't set codec dai clock %d\n", ret);
> >                 return ret;
> >         }
> Does it imply: it is acceptable even if they are "not supported"?
Thank you for this good catch.
Here machine driver has the knowledge of deciding whether it is
expected to see the ops is not supported.
For HDMI path using hdmi-codec driver, it is expected to see -ENOTSUPP.
But it is not expected for codec DAI of max98090.
I should distinguish them.

>
>
> >
> > -       return ret;
> > +       return 0;
> >  }
> >
> >  static const struct snd_soc_ops rk_aif1_ops = {
> >         .hw_params = rk_aif1_hw_params,
> >  };
> >
> > -SND_SOC_DAILINK_DEFS(hifi,
> > +SND_SOC_DAILINK_DEFS(analog,
> >         DAILINK_COMP_ARRAY(COMP_EMPTY()),
> >         DAILINK_COMP_ARRAY(COMP_CODEC(NULL, "HiFi")),
> >         DAILINK_COMP_ARRAY(COMP_EMPTY()));
> >
> > -static struct snd_soc_dai_link rk_dailink = {
> > -       .name = "max98090",
> > -       .stream_name = "Audio",
> > -       .ops = &rk_aif1_ops,
> > -       /* set max98090 as slave */
> > -       .dai_fmt = SND_SOC_DAIFMT_I2S | SND_SOC_DAIFMT_NB_NF |
> > -               SND_SOC_DAIFMT_CBS_CFS,
> > -       SND_SOC_DAILINK_REG(hifi),
> > +SND_SOC_DAILINK_DEFS(hdmi,
> > +       DAILINK_COMP_ARRAY(COMP_EMPTY()),
> > +       DAILINK_COMP_ARRAY(COMP_CODEC("hdmi-audio-codec.3.auto", "i2s-hifi")),
> > +       DAILINK_COMP_ARRAY(COMP_EMPTY()));
> > +
> > +enum {
> > +       DAILINK_MAX98090,
> > +       DAILINK_HDMI,
> > +};
> > +
> > +/* max98090 and HDMI codec dai_link */
> > +static struct snd_soc_dai_link rk_dailinks[] = {
> > +       [DAILINK_MAX98090] = {
> > +               .name = "max98090",
> > +               .stream_name = "Analog",
> > +               .ops = &rk_aif1_ops,
> > +               /* set max98090 as slave */
> > +               .dai_fmt = SND_SOC_DAIFMT_I2S | SND_SOC_DAIFMT_NB_NF |
> > +                       SND_SOC_DAIFMT_CBS_CFS,
> > +               SND_SOC_DAILINK_REG(analog),
> > +       },
> > +       [DAILINK_HDMI] = {
> > +               .name = "HDMI",
> > +               .stream_name = "HDMI",
> > +               .ops = &rk_aif1_ops,
> > +               .dai_fmt = SND_SOC_DAIFMT_I2S | SND_SOC_DAIFMT_NB_NF |
> > +                       SND_SOC_DAIFMT_CBS_CFS,
> > +               SND_SOC_DAILINK_REG(hdmi),
> > +       }
> >  };
> >
> >  static int rk_98090_headset_init(struct snd_soc_component *component);
> > @@ -136,8 +160,8 @@ static struct snd_soc_aux_dev rk_98090_headset_dev = {
> >  static struct snd_soc_card snd_soc_card_rk = {
> >         .name = "ROCKCHIP-I2S",
> >         .owner = THIS_MODULE,
> > -       .dai_link = &rk_dailink,
> > -       .num_links = 1,
> > +       .dai_link = rk_dailinks,
> > +       .num_links = ARRAY_SIZE(rk_dailinks),
> >         .aux_dev = &rk_98090_headset_dev,
> >         .num_aux_devs = 1,
> >         .dapm_widgets = rk_dapm_widgets,
> > @@ -173,27 +197,48 @@ static int snd_rk_mc_probe(struct platform_device *pdev)
> >         int ret = 0;
> >         struct snd_soc_card *card = &snd_soc_card_rk;
> >         struct device_node *np = pdev->dev.of_node;
> > +       struct device_node *np_analog;
> > +       struct device_node *np_cpu;
> > +       struct of_phandle_args args;
> >
> >         /* register the soc card */
> >         card->dev = &pdev->dev;
> >
> > -       rk_dailink.codecs->of_node = of_parse_phandle(np,
> > -                       "rockchip,audio-codec", 0);
> > -       if (!rk_dailink.codecs->of_node) {
> > +       np_analog = of_parse_phandle(np, "rockchip,audio-codec", 0);
> > +       if (!np_analog) {
> >                 dev_err(&pdev->dev,
> >                         "Property 'rockchip,audio-codec' missing or invalid\n");
> >                 return -EINVAL;
> >         }
> > +       rk_dailinks[DAILINK_MAX98090].codecs->of_node = np_analog;
> > +
> > +       ret = of_parse_phandle_with_fixed_args(np, "rockchip,audio-codec",
> > +                                              0, 0, &args);
> > +       if (ret) {
> > +               dev_err(&pdev->dev,
> > +                       "Unable to parse property 'rockchip,audio-codec'\n");
> > +               return ret;
> > +       }
> > +
> > +       ret = snd_soc_get_dai_name(
> > +                       &args, &rk_dailinks[DAILINK_MAX98090].codecs->dai_name);
> > +       if (ret) {
> > +               dev_err(&pdev->dev, "Unable to get codec dai_name\n");
> > +               return ret;
> > +       }
> > +
> > +       np_cpu = of_parse_phandle(np, "rockchip,i2s-controller", 0);
> >
> > -       rk_dailink.cpus->of_node = of_parse_phandle(np,
> > -                       "rockchip,i2s-controller", 0);
> > -       if (!rk_dailink.cpus->of_node) {
> > +       if (!np_cpu) {
> >                 dev_err(&pdev->dev,
> >                         "Property 'rockchip,i2s-controller' missing or invalid\n");
> >                 return -EINVAL;
> >         }
> >
> > -       rk_dailink.platforms->of_node = rk_dailink.cpus->of_node;
> > +       rk_dailinks[DAILINK_MAX98090].cpus->of_node = np_cpu;
> > +       rk_dailinks[DAILINK_MAX98090].platforms->of_node = np_cpu;
> > +       rk_dailinks[DAILINK_HDMI].cpus->of_node = np_cpu;
> > +       rk_dailinks[DAILINK_HDMI].platforms->of_node = np_cpu;
> >
> >         rk_98090_headset_dev.codec_of_node = of_parse_phandle(np,
> >                         "rockchip,headset-codec", 0);
> > --
> > 2.22.0.410.gd8fdbe21b5-goog
> >

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

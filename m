Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 941A16AA77
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 16:16:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u6uTYk1dPFmP2idSMaASi6BmVGgoOOuv7qsk38lCQxk=; b=O/+hQETkm2xvaJ
	MDae9d73L4jshoHjlOA0/Wq1DO90sI/snsGYvaIT1NaIVLf+xDaJwJDi6uOV7zApczG5S8EYN9FdT
	JMCMMA9DqifsjvmJnXQ1PI28Rbkix92UAz9p1k7NA5kR9D7BNYPQWISeGXtb15jNnhNUvzXJHlumZ
	2nYk94WnIXgrs7Zb5Tt5KSMVpWMz/aW4IjWjnzAKs4EdLk5THp/19MfNHxlu2fB0VFuhZ3p5ssE1o
	KIunh5keMkzBN2XoIl0O+ghyBIe7XXsxFWPeA4LrdINuXm6gx8Y5+niOUz0X6SM1FhriTlz51054h
	vd+syka9yO5syIwXCpjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnOG7-0003Kr-Km; Tue, 16 Jul 2019 14:16:47 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnOG4-0003Jy-Gf
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 14:16:45 +0000
Received: by mail-ot1-x344.google.com with SMTP id s20so21228407otp.4
 for <linux-rockchip@lists.infradead.org>; Tue, 16 Jul 2019 07:16:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=jVq/zyKNmBTqyWzD5MQLwwT+e3xMbKqpQWodHdoZ+Mk=;
 b=qYBVXqle+7vCUqLEVGwc67lXP5F/twwhlFE5Z3mnLHfQaL3woXgBZgCVi92TBDhjeJ
 2xYZtFtWIO5evm6dUtiAoTEGoDOsm7fC7AJucP0UX9gFrIopG668rPCYstFNF/deP0NO
 Yow3WDYPuKUXWR6NI8bIKWpEgK5Io9YYvt0wF0VNxQOMp4A/Yvrc6EGJuKBoAyR7WEFk
 BKTpMnxxGFDKUSaSEHeIdUeyft5UdLs/UKvUocHQGm9LDJsZL1rqSQe42AuAX+b4dBhv
 mjMEEk6vcD90usHttnGty2wR67IuGbimfqxxuyyfVqldMtrUTdVGUz7HAU4v4CZXe41f
 chrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=jVq/zyKNmBTqyWzD5MQLwwT+e3xMbKqpQWodHdoZ+Mk=;
 b=daaJa0T37hL28/5NsQMGjzlsuiUmJEpiSEbv3ri/DsSRlabtoGbVOR9d8y3SjBKgel
 k70IIIXDSrZvo+mcyb2xRS0zXmaSscrKaFGBnrUo2cX/4lfyt7iIDVWFzoj5jZX8Lsw8
 HAkKat93psLh4/0uA9b0gfGQfZ0d0AsGS4yFGzDKMcTj8NDY4pkpfVdvTL2btoJ6fpbL
 klKtETNWsbUWfXvBTZx7yPpj7y6rjlOlGhN60Oyoi0DmnEvDdM0D0BX48iBSc7f2+Els
 9hEFetsc32dZsiOzLNoiDN0sZvS1vdTMW2SnkBVFtOCUjjj0JGJQIGzzVPeBrlWEJmEf
 0LdA==
X-Gm-Message-State: APjAAAXIb27GTrTF03ifkkiSimjUS41l/hilf/72ftO8Gn6PRqK+dYHw
 oX/JLeVCC3S25YJhVkY8GobLO21Lx0VMih8/Yv0/1A==
X-Google-Smtp-Source: APXvYqwN9uylP2hsCV6+LMaCJG6qvXFU449tm2O5OEbnNN4gNeP8+80YgzfQ+LB6vAKflWj5X25PTd+HkjgUEvFFruA=
X-Received: by 2002:a05:6830:1cd:: with SMTP id
 r13mr12627965ota.99.1563286603085; 
 Tue, 16 Jul 2019 07:16:43 -0700 (PDT)
MIME-Version: 1.0
References: <20190716115725.66558-1-cychiang@chromium.org>
 <20190716115725.66558-6-cychiang@chromium.org>
In-Reply-To: <20190716115725.66558-6-cychiang@chromium.org>
From: Tzung-Bi Shih <tzungbi@google.com>
Date: Tue, 16 Jul 2019 22:16:32 +0800
Message-ID: <CA+Px+wXK9gJKZwzsG8BXh1gmoEyscxtMzB_VCrHz-nenBEL9AQ@mail.gmail.com>
Subject: Re: [PATCH v4 5/5] ASoC: rockchip_max98090: Add HDMI jack support
To: Cheng-Yi Chiang <cychiang@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_071644_553675_5412555F 
X-CRM114-Status: GOOD (  10.80  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
 Douglas Anderson <dianders@chromium.org>, Heiko Stuebner <heiko@sntech.de>,
 Liam Girdwood <lgirdwood@gmail.com>, David Airlie <airlied@linux.ie>,
 dri-devel@lists.freedesktop.org, Takashi Iwai <tiwai@suse.com>,
 tzungbi@chromium.org, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Hans Verkuil <hverkuil@xs4all.nl>, Andrzej Hajda <a.hajda@samsung.com>,
 Russell King <rmk+kernel@armlinux.org.uk>, Mark Brown <broonie@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, linux-rockchip@lists.infradead.org,
 dgreid@chromium.org, Jaroslav Kysela <perex@perex.cz>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Tue, Jul 16, 2019 at 7:58 PM Cheng-Yi Chiang <cychiang@chromium.org> wrote:
>
> diff --git a/sound/soc/rockchip/rockchip_max98090.c b/sound/soc/rockchip/rockchip_max98090.c
> index c82948e383da..c81c4acda917 100644
> --- a/sound/soc/rockchip/rockchip_max98090.c
> +++ b/sound/soc/rockchip/rockchip_max98090.c
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
In the patch, you should select SND_SOC_HDMI_CODEC, because the patch
uses hdmi_codec_set_jack_detect which depends on hdmi-codec.c.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

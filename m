Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7195F63539
	for <lists+linux-rockchip@lfdr.de>; Tue,  9 Jul 2019 13:56:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zHEMK6xjIhlLo4CX+OBsmcVryQ57W1Q6SNXzyIjyxyw=; b=e2UljIju4gdItz
	wxP4+4sDmnVJ/iEhVYrWkMTDx0chIwonLdAEu/TwWDxEeGRrnHkYBTfpF0kGlGe8oVjmfO+ue2Uyx
	BQQ3SUwVup4YQytmNSngceoaTT7TUs402FgdKXpEJL6EGSn+fWvZRdylGm9kvRtkYUWAnIRlJNffF
	L/pJsCWH3d9KcHsvlkxdeFAMH368axQ8kdgqWF5drz3gKsYP2MKG/hFg6PafZsrVDQywTZHAY1aAb
	2ojbLXAgqOV4gpKiv+JtJm+8PzEeMX1h+PxrscejW7nfFGVfGmHbHqJk+Caj5iUM5ZLtA9Gk2VXeB
	jLlU8KjAuarPleyVt26Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkoj6-0004DL-WF; Tue, 09 Jul 2019 11:56:05 +0000
Received: from mail-vs1-xe43.google.com ([2607:f8b0:4864:20::e43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkoj3-0004Bn-Et
 for linux-rockchip@lists.infradead.org; Tue, 09 Jul 2019 11:56:02 +0000
Received: by mail-vs1-xe43.google.com with SMTP id k9so10429297vso.5
 for <linux-rockchip@lists.infradead.org>; Tue, 09 Jul 2019 04:55:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=BVsg21whGsT0nCQujzZPC48g95cuUgQWLBZNQAx+pZc=;
 b=Hif8gvZ34qKJMh958dAAJSHO70lREX96FjBgtOfqYNFJyuQpBMR0C1BjfHgf8lDQ92
 sADjoOm6BOziZ8iFV4rfX/D+8PH0/e3yQd9VX01BYzeP27ufOcJLZvyArqht8aRbI3eJ
 IS7yqBpL3VKcMJ1o6/XM6Re5YNCRXm029XCfc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BVsg21whGsT0nCQujzZPC48g95cuUgQWLBZNQAx+pZc=;
 b=B9HHk7X1qgQB+dBfmsgZLKlDtc0G2s5hoA5NXCg96PQ+3YdU67yvvEGWCc4TGSkCA7
 QUJbJ7MxZzDtaScizDievLXuZkMnKGH9T26ucIfsCrlbDaoyYXVPAksSFuvw5IcYdbbF
 2xljhQ1JEpD66v/UdjPcmio89eIb4fcI1751ohh3VeERS20XsnlRs/v2x2T5wQ5bqXbx
 agknKlopjLKo601XOpIU4fsfyQ/xKOSKfOFTc91eMkgFIFb7ICBdA8qZ8oyVXwKeB6Jb
 87s14l18wGPp8vqP/EOQhS3szu9MsQymM3GW3Nku0/ClYvPAru2iOMnOgtiGxlB8GmBG
 Gr0Q==
X-Gm-Message-State: APjAAAWyUWTqtNovU5AzAVdLu4d9onCeLE9kG34wWZ9PlIhj4dKm219G
 kvS5ze4T4nG87F4lb6ek4FIiSU9MMczaeqwGN7GtBA==
X-Google-Smtp-Source: APXvYqzIvsL1PEG4x0OPfoI+B4eR1OeQ7eQJVZ/D8bs1VUH/IGuRilDy9DOu2h4I32heosv7RyuyXtXOhjY3Ym1TCUo=
X-Received: by 2002:a67:ebcb:: with SMTP id y11mr13483911vso.138.1562673356146; 
 Tue, 09 Jul 2019 04:55:56 -0700 (PDT)
MIME-Version: 1.0
References: <20190705042623.129541-1-cychiang@chromium.org>
 <20190705042623.129541-2-cychiang@chromium.org>
 <3d5755cf-34e9-44f7-3b03-6bdfca84ff95@intel.com>
In-Reply-To: <3d5755cf-34e9-44f7-3b03-6bdfca84ff95@intel.com>
From: Cheng-yi Chiang <cychiang@chromium.org>
Date: Tue, 9 Jul 2019 19:55:29 +0800
Message-ID: <CAFv8NwLos-XcB9K8315vmmfKn+z0XaBph3QxSwrmqhfYqoju2Q@mail.gmail.com>
Subject: Re: [PATCH 1/4] ASoC: hdmi-codec: Add an op to set callback function
 for plug event
To: Cezary Rojewski <cezary.rojewski@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_045601_506446_86D97E00 
X-CRM114-Status: GOOD (  13.94  )
X-Spam-Score: -6.1 (------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-6.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e43 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
 Heiko Stuebner <heiko@sntech.de>, Liam Girdwood <lgirdwood@gmail.com>,
 David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org,
 Takashi Iwai <tiwai@suse.com>, tzungbi@chromium.org,
 linux-kernel <linux-kernel@vger.kernel.org>, Hans Verkuil <hverkuil@xs4all.nl>,
 Andrzej Hajda <a.hajda@samsung.com>, Russell King <rmk+kernel@armlinux.org.uk>,
 Mark Brown <broonie@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, linux-rockchip@lists.infradead.org,
 Dylan Reid <dgreid@chromium.org>, Jaroslav Kysela <perex@perex.cz>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Tue, Jul 9, 2019 at 7:47 PM Cezary Rojewski
<cezary.rojewski@intel.com> wrote:
>
> On 2019-07-05 06:26, Cheng-Yi Chiang wrote:
> > +static void hdmi_codec_jack_report(struct hdmi_codec_priv *hcp,
> > +                                unsigned int jack_status)
> > +{
> > +     if (!hcp->jack)
> > +             return;
> > +
> > +     if (jack_status != hcp->jack_status) {
> > +             snd_soc_jack_report(hcp->jack, jack_status, SND_JACK_LINEOUT);
> > +             hcp->jack_status = jack_status;
> > +     }
> > +}
>
> Single "if" statement instead? The first "if" does not even cover all
> cases - if the secondary check fails, you'll "return;" too.
>
ACK.
I will fix in v2.
> > +/**
> > + * hdmi_codec_set_jack_detect - register HDMI plugged callback
> > + * @component: the hdmi-codec instance
> > + * @jack: ASoC jack to report (dis)connection events on
> > + */
> > +int hdmi_codec_set_jack_detect(struct snd_soc_component *component,
> > +                            struct snd_soc_jack *jack)
> > +{
> > +     struct hdmi_codec_priv *hcp = snd_soc_component_get_drvdata(component);
> > +     int ret;
> > +
> > +     if (hcp->hcd.ops->hook_plugged_cb) {
> > +             hcp->jack = jack;
> > +             ret = hcp->hcd.ops->hook_plugged_cb(component->dev->parent,
> > +                                                 hcp->hcd.data,
> > +                                                 plugged_cb);
> > +             if (ret) {
> > +                     hcp->jack = NULL;
> > +                     return ret;
> > +             }
> > +             return 0;
> > +     }
> > +     return -EOPNOTSUPP;
> > +}
> > +EXPORT_SYMBOL_GPL(hdmi_codec_set_jack_detect);
>
> int ret = -EOPNOTSUPP;
> (...)
>
> return ret;
>
> In consequence, you can reduce the number of "return(s)" and also remove
> the redundant parenthesis for the if-statement used to set jack to NULL.
>
> Czarek
ACK
will fix in v2.

Thanks a lot for the review!

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 623EBE6ACF
	for <lists+linux-rockchip@lfdr.de>; Mon, 28 Oct 2019 03:33:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N6Hqef9Z+LJdlPSsRLK3VSevK2dhB3MfwObCR5S5Cjk=; b=sBZE+CeIIEd+z4
	YCRdBMAgQlX22kPAqReQaCy8ioDnoNIj4gXKlvpe5gYFG5+JCJRDCO9CIjDebPOY/A94X0Fk30Fs6
	fEC1feuvxS5IsGN/u8q0/pqRZsYb3W90d24HRdGVouV9b4J4S7aZS7Yanuzhq4CgcQB7XKNdOIElz
	kOQ2klEc/ihB02y0WDXa/dM6S6PeVF2bhfCdiv9zrpvNF0CUntdqE2J4mbRi7OtD99G5uOJm0O4bH
	TYluLIvjlZ9AHOm/hcKsaziWJ4c0D8ikfF9DKhmJuP8dnLCvUOWcZ7QpWwEhP7+WefLFcGkCr/pLD
	eb8FDQ7IcGkqzi1hnXtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOuq8-0003rc-M8; Mon, 28 Oct 2019 02:33:04 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOuq1-0003kk-7O
 for linux-rockchip@lists.infradead.org; Mon, 28 Oct 2019 02:32:58 +0000
Received: by mail-wr1-x443.google.com with SMTP id e11so8214798wrv.4
 for <linux-rockchip@lists.infradead.org>; Sun, 27 Oct 2019 19:32:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=w7WLAChacz4cdQUuGvSzDH2SDjigryRCbt+WDbtW90s=;
 b=IysszB7/4YwlqN2hIxbjmBzRqB+jb5hB3Tg+ljjzuq3A+FEhC3OFZFMovTbRT0LJfK
 H4qNyEspy1rpsUjibdaW/gAWpBeFZqCkQNS/a6m2giKGzWFHNCZXv+UikEp3b05qqUYQ
 XL2aGPYxYupmlhSDoZ4ce3ZDLKnBEnisKO4aE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=w7WLAChacz4cdQUuGvSzDH2SDjigryRCbt+WDbtW90s=;
 b=ZgfhYUf0p6sbl4FYKPNjHY5pkpU1LKk/A9jSU5o70B5XuqCdar+vN4wyJ+xZ3LVqLt
 4J10NVGYyy0rVJLNJgkW6R9ZOs7S/v6KP391ycH6IjOlmBeR6uZBS94tuixYFvTGXP5m
 hrNyJlxzd7h2IIH/IJkafiBP1lA1mT8vgv+IZANn305csr7P+6bRPPzYBjMLWdNfODNi
 a9c0ziGzIL8iMmsEwmufX6vPF3jqp28KtqW6m7oVH1qwhRBnr8JuaI4mf/QUCRiHUS5E
 b6bP4Sg5Nco4tfTSVlk3S9OnfnO/VWP9mnu9UbdY5lNfYv1X/e3yxyriY6lZovhAhF0U
 GPPg==
X-Gm-Message-State: APjAAAUaspLS1rNDgjrxCU5jrRryRXh4xaaeNNZtXUm9AChNrrMaC0gG
 08dbs8L/FUguTrqcMDAGdi0bHvFHR9n0uoLQXghPMA==
X-Google-Smtp-Source: APXvYqzK0YBdyQgsMLm2ci9Dx4kOzJFycGTSzYpVPVfKV8gCZkiX6U1k76C9C14EYAVMDUxQGFHxdvyM+PTOBO8Lys4=
X-Received: by 2002:adf:b1d1:: with SMTP id r17mr12904765wra.201.1572229970951; 
 Sun, 27 Oct 2019 19:32:50 -0700 (PDT)
MIME-Version: 1.0
References: <20191025133007.11190-1-cychiang@chromium.org>
 <20191025133007.11190-3-cychiang@chromium.org>
 <20191025162232.GA23022@bogus>
In-Reply-To: <20191025162232.GA23022@bogus>
From: Cheng-yi Chiang <cychiang@chromium.org>
Date: Mon, 28 Oct 2019 10:32:24 +0800
Message-ID: <CAFv8NwKhe=CEuMCgeP1G0-Az4GEdMGPMMhvM3oY2=KmZNGrcRw@mail.gmail.com>
Subject: Re: [PATCH v8 2/6] ASoC: rockchip-max98090: Support usage with and
 without HDMI
To: Rob Herring <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191027_193257_264126_84E1489D 
X-CRM114-Status: GOOD (  14.82  )
X-Spam-Score: -7.4 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "moderated list:SOUND - SOC LAYER / DYNAMIC AUDIO POWER MANAGEM..."
 <alsa-devel@alsa-project.org>, Heiko Stuebner <heiko@sntech.de>,
 Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 dri-devel@lists.freedesktop.org, linux-kernel <linux-kernel@vger.kernel.org>,
 Hans Verkuil <hverkuil@xs4all.nl>, Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jerome Brunet <jbrunet@baylibre.com>, Takashi Iwai <tiwai@suse.com>,
 linux-rockchip@lists.infradead.org, Dylan Reid <dgreid@chromium.org>,
 devicetree@vger.kernel.org, Tzung-Bi Shih <tzungbi@chromium.org>,
 Jonas Karlman <jonas@kwiboo.se>, Liam Girdwood <lgirdwood@gmail.com>,
 Russell King <rmk+kernel@armlinux.org.uk>, Mark Brown <broonie@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>, linux-arm-kernel@lists.infradead.org,
 Jernej Skrabec <jernej.skrabec@siol.net>,
 Doug Anderson <dianders@chromium.org>, Daniel Vetter <daniel@ffwll.ch>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Sat, Oct 26, 2019 at 12:22 AM Rob Herring <robh@kernel.org> wrote:
>
> On Fri, Oct 25, 2019 at 09:30:03PM +0800, Cheng-Yi Chiang wrote:
> > There will be multiple boards sharing this machine driver.
> > Use compatible string to specify the use case.
> >
> > "rockchip,rockchip-audio-max98090" for max98090-only.
> > "rockchip,rockchip-audio-hdmi" for HDMI-only
> > "rockchip,rockchip-audio-max98090-hdmi" for max98090 plus
> >
> > Move these properties to optional because they are not needed for
> > HDMI-only use case.
> > "rockchip,audio-codec": The phandle of the MAX98090 audio codec
> > "rockchip,headset-codec": The phandle of Ext chip for jack detection
> >
> > The machine driver change will add support for HDMI codec in
> > rockchip-max98090.
> > Add one optional property "rockchip,hdmi-codec" to let user specify HDMI
> > device node in DTS so machine driver can find hdmi-codec device node for
> > codec DAI.
>
> Why not just use the presence of rockchip,hdmi-codec to enable HDMI or
> not. Maybe you still add rockchip,rockchip-audio-hdmi for HDMI only.
>
> Really, the same should have been done for which codec is used too, but
> I guess someone wanted 2 machine drivers.

Hi Rob,
Thanks for the quick reply.
I can make change in machine driver so that
- The presence of rockchip,audio-codec enable max98090
- The presence of rockchip,hdmi-codec enable HDMI.

With that, we don't need the three properties added in this patch:
"rockchip,rockchip-audio-max98090" for max98090-only.
"rockchip,rockchip-audio-hdmi" for HDMI-only
"rockchip,rockchip-audio-max98090-hdmi" for max98090 plus HDMI.

I will post an update soon. Thanks!

>
>
> >
> > Signed-off-by: Cheng-Yi Chiang <cychiang@chromium.org>
> > ---
> >  .../bindings/sound/rockchip-max98090.txt      | 38 +++++++++++++++++--
> >  1 file changed, 35 insertions(+), 3 deletions(-)

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

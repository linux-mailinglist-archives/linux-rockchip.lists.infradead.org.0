Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDE9963FD6
	for <lists+linux-rockchip@lfdr.de>; Wed, 10 Jul 2019 06:12:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6a9KQdrQINOPP0N91s+q3ilxCTmV6Cu7/kLgkUSiJtc=; b=RX4gxuP0tXshk/
	H8lK/7kEyJ6U+h2E6abZqcVy+rHQ+F3Ayg58pBJ7NCSJa2SkDvhVl/oUzBeOn5UsZhvC3TxSybBmg
	mhgkuuCdziJYPOOHe4HjxgI1WTkoCY2bkbRtOfupxLA4RJPEsw/9J/KYJbp2k6+uwMvjvREFzyUdT
	Brp1J9fjfGl+FRmgl9UU8yv2cmxEDw7dovPlouB0kVaoZ9CdL6nEaBRRQmTE3FvanzAX4DTY399JY
	m3kjgo+gy2QTPbWNbXKVzbO8t02xi0mYgIG2th9F3OzdvELYV2Wzx2e5LD3++0j5iGQBl/MRgrBoW
	lKbvk2g7XydcBNW+eTDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hl3yJ-0008V9-0H; Wed, 10 Jul 2019 04:12:47 +0000
Received: from mail-vs1-xe43.google.com ([2607:f8b0:4864:20::e43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hl3xp-0008Aj-VJ
 for linux-rockchip@lists.infradead.org; Wed, 10 Jul 2019 04:12:19 +0000
Received: by mail-vs1-xe43.google.com with SMTP id h28so589630vsl.12
 for <linux-rockchip@lists.infradead.org>; Tue, 09 Jul 2019 21:12:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=jsT84thXZgrjljKWPHUjY7JeFgImc9+U4hEoxyiTJcc=;
 b=bWsVGu9ZtrSBJl4JbELamsoGGvbUEuoJyLkzEdD/lBLkOe2SuDywqNJvjhLcdkFQIV
 uQzhsHZfClHSSErFS8YngoK5icUK/zOzfk2MyJE77f/EpBtLGiDl5OLXwZaYMg1H4xvi
 8bZw2KyzNEgXQhxeZxd3j43hSpSd9KAK3Vxwk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=jsT84thXZgrjljKWPHUjY7JeFgImc9+U4hEoxyiTJcc=;
 b=bSpXeY+ejXFeVA1kPNmevHGVhpxaBafeZX2hmvbgJDK5FyydBzjeqoTQ//McKfUADy
 TotaDReIMDP5jNYoB8bZUgiInk4Ts9HCC7K6CsE4J5wyzmPNlzaZ6AFyznufkGAL06If
 eIRyF6BPuNnmwuvgjMXxG2Qt51dxJAEILPUSVXxCYZ954erKpyQolwIL52yWHPPvZyy4
 z1A59nOwmVHPpNluUNwp9vWvxJx6utPSXNUvH7QlbpgipyjcahoRT5umsZLcrMb4zEM3
 +0TYa4Pkm7mEFlzuEQQw1yTwq/oOVDiBWYEcyFrx4AuCLp1TFVm/slsLSYVrEBmL+H60
 zlgQ==
X-Gm-Message-State: APjAAAWgDyi0uLPtoSVRWK203ms9GtJLFD+R2Oh2QczO8dpXHIOHcW+J
 tWw9mWPcomgfNxiOzMsrveD96z3NLlPUPXjQT8ZnSg==
X-Google-Smtp-Source: APXvYqwRDoiekjMfVg1dAkd95CbZGZ3jhAzyHEQ1N/LeXKKIJksHQNLAm0BnKpQtXYeH+ZnDwbVN+JmCCFjQkCNhqMc=
X-Received: by 2002:a67:f7cd:: with SMTP id a13mr14190782vsp.163.1562731935844; 
 Tue, 09 Jul 2019 21:12:15 -0700 (PDT)
MIME-Version: 1.0
References: <20190603043251.226549-1-cychiang@chromium.org>
 <20190603043251.226549-6-cychiang@chromium.org> <20190709200121.GA19118@bogus>
In-Reply-To: <20190709200121.GA19118@bogus>
From: Cheng-yi Chiang <cychiang@chromium.org>
Date: Wed, 10 Jul 2019 12:11:48 +0800
Message-ID: <CAFv8NwLiKu055S7apzj+gTYh0neQ5rLmPYEYkEj6Zf3hikWWpA@mail.gmail.com>
Subject: Re: [PATCH 5/7] ASoC: rockchip: rockchip-max98090: Add node for HDMI
To: Rob Herring <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_211218_036463_43372A43 
X-CRM114-Status: GOOD (  15.88  )
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
 <alsa-devel@alsa-project.org>, Heiko Stuebner <heiko@sntech.de>,
 Liam Girdwood <lgirdwood@gmail.com>, David Airlie <airlied@linux.ie>,
 dri-devel@lists.freedesktop.org, Takashi Iwai <tiwai@suse.com>,
 Hans Verkuil <hverkuil@xs4all.nl>, Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 linux-rockchip@lists.infradead.org, Dylan Reid <dgreid@chromium.org>,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org, tzungbi@chromium.org,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Russell King <rmk+kernel@armlinux.org.uk>, Mark Brown <broonie@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>, linux-arm-kernel@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Doug Anderson <dianders@chromium.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, Daniel Vetter <daniel@ffwll.ch>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Wed, Jul 10, 2019 at 4:01 AM Rob Herring <robh@kernel.org> wrote:
>
> On Mon, Jun 03, 2019 at 12:32:49PM +0800, Cheng-Yi Chiang wrote:
> > Let user specify HDMI node so machine driver can use it to let codec
> > driver register callback on correct hdmi-notifier.
> >
> > Signed-off-by: Cheng-Yi Chiang <cychiang@chromium.org>
> > ---
> >  Documentation/devicetree/bindings/sound/rockchip-max98090.txt | 2 ++
> >  1 file changed, 2 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/sound/rockchip-max98090.txt b/Documentation/devicetree/bindings/sound/rockchip-max98090.txt
> > index a805aa99ad75..dae57c14864e 100644
> > --- a/Documentation/devicetree/bindings/sound/rockchip-max98090.txt
> > +++ b/Documentation/devicetree/bindings/sound/rockchip-max98090.txt
> > @@ -7,6 +7,7 @@ Required properties:
> >    connected to the CODEC
> >  - rockchip,audio-codec: The phandle of the MAX98090 audio codec
> >  - rockchip,headset-codec: The phandle of Ext chip for jack detection
> > +- rockchip,hdmi: The phandle of HDMI node for HDMI jack detection
> >
> >  Example:
> >
> > @@ -16,4 +17,5 @@ sound {
> >       rockchip,i2s-controller = <&i2s>;
> >       rockchip,audio-codec = <&max98090>;
> >       rockchip,headset-codec = <&headsetcodec>;
> > +     rockchip,hdmi= <&hdmi>;
>
> space                ^
>
> With that,
>
> Acked-by: Rob Herring <robh@kernel.org>
>
Hi Rob,
Thank you for the review.
But I have changed the approach in v2 so there is no need for machine
driver to expose this property.
Thanks!
> >  };
> > --
> > 2.22.0.rc1.257.g3120a18244-goog
> >

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

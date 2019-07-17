Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B13BF6B7E8
	for <lists+linux-rockchip@lfdr.de>; Wed, 17 Jul 2019 10:13:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XgI6Mid24W5SOkslGuhKJyB2uANYOSWjmPEp+Lsp64U=; b=fgHpvBvk51WGo6
	hR06FpGVscdJm5dsUQd1O+kzwTqfK0btVH6UWiBy10TcC/zq9QJoao1KQYtq1hFo4Ud9rIu0CHQ+1
	IeDrBshtCjTrhblN9iMEiyGTpTKR0T34yhn/U/qNxoZs9Y1oWJy5SNrzsxcGY9ncnkTvsmPjLC1j1
	qONOU60SWZaqcMtJqZPnc46jPznm1jbRmwiG68G90G7g8TghMqeMS1KZ8mYptZpNfbzDmJlZC04dT
	fy8Z4Ob3r6bJb2gmCqLLE5WdNK/73n0BXZLBtZ6KkivFaqEgEUxxDY7Fv6xrX9N4XOQDvEpMEULXa
	QfvFyQK66oFvhOyjYcnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnf3z-0000Pe-UT; Wed, 17 Jul 2019 08:13:24 +0000
Received: from mail-ua1-x943.google.com ([2607:f8b0:4864:20::943])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnf3w-0000OL-5h
 for linux-rockchip@lists.infradead.org; Wed, 17 Jul 2019 08:13:21 +0000
Received: by mail-ua1-x943.google.com with SMTP id o2so9309595uae.10
 for <linux-rockchip@lists.infradead.org>; Wed, 17 Jul 2019 01:13:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=rPZj9UlJHzFlKhJn6/fmruVkm+j5FSEf7iBCwWIUVP4=;
 b=PGAFc+PfE3kR9fcYCHC8OBC1+IoRoDTjks9fGGEtJhXcGwvydqTrmOTUlJG5NcIoi+
 DhgCrVbGujMZ7kdW7pd2LxhnmzfkWVhrSGU6+vUrDINKdXOnsMlhOmTpRSBNgMGfmh6M
 2FzdJiKfwVdXZUmZgAS729lwaeb3EbIcBDD8E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rPZj9UlJHzFlKhJn6/fmruVkm+j5FSEf7iBCwWIUVP4=;
 b=l1hfuADg9IBFWrIpotMDw/fpXf32zSwuc4js4FET8C8HkIhbMPlgBwdM5jj1Wndnby
 T51MFPWdo6Iv8xDxFE2MVP01uTrDS4k3wUVRUOGnTZKkhs05qve9taw2iVUZgT2P6r7w
 mcmaMviwWHQhplvSyWxViFZcpE/dt4JoOrr+tPAph2PyNOYjZUq1U0U+OvmivEKQlIjT
 kYVlIr9sb85kB7aD+TwZgaKM30NHi3NcNA6Bg2DwCPPYvbhu46EtnRSp0j5RdVAVPXUF
 fnSff7efzJW9NCIAUUxqPahMaAx+MjgbnypgMwm40Nu39cWGHofT7KbMyxYmH6pKPMpO
 uOhA==
X-Gm-Message-State: APjAAAUAZvNJLiyptx7bxrx0CaNLlHbua+dedI5t1L7Hk161nDYiuV0F
 fjJJoiQFBtowDiDjxDLX3OdYrCTr47CW67H3QtoT4g==
X-Google-Smtp-Source: APXvYqw12VFX7Lv6Sh5rKLzmIJDafMfD4+5vdQs5GbevDPTLgen0n5WPlVHqD/WI9vXfnk5kxptgrH3h3fBuUjYs/4Q=
X-Received: by 2002:ab0:7c3:: with SMTP id d3mr6146624uaf.131.1563351195035;
 Wed, 17 Jul 2019 01:13:15 -0700 (PDT)
MIME-Version: 1.0
References: <20190716115725.66558-1-cychiang@chromium.org>
 <20190716115725.66558-5-cychiang@chromium.org>
 <CA+Px+wV6RSfv4GL8+EJzXGq2nqzKtH9p23VTo2s30h0To2rQtg@mail.gmail.com>
In-Reply-To: <CA+Px+wV6RSfv4GL8+EJzXGq2nqzKtH9p23VTo2s30h0To2rQtg@mail.gmail.com>
From: Cheng-yi Chiang <cychiang@chromium.org>
Date: Wed, 17 Jul 2019 16:12:48 +0800
Message-ID: <CAFv8NwJu14XEDLE3Y+GTU2foFH3b5iBQ-q=tehjBYQ51m2LiCQ@mail.gmail.com>
Subject: Re: [PATCH v4 4/5] ASoC: rockchip_max98090: Add dai_link for HDMI
To: Tzung-Bi Shih <tzungbi@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_011320_219834_533C9B72 
X-CRM114-Status: GOOD (  10.98  )
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
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: ALSA development <alsa-devel@alsa-project.org>,
 Douglas Anderson <dianders@chromium.org>, Heiko Stuebner <heiko@sntech.de>,
 Liam Girdwood <lgirdwood@gmail.com>, David Airlie <airlied@linux.ie>,
 dri-devel@lists.freedesktop.org, Takashi Iwai <tiwai@suse.com>,
 tzungbi@chromium.org, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
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

On Tue, Jul 16, 2019 at 10:14 PM Tzung-Bi Shih <tzungbi@google.com> wrote:
>
> On Tue, Jul 16, 2019 at 7:58 PM Cheng-Yi Chiang <cychiang@chromium.org> wrote:
> >
> > diff --git a/sound/soc/rockchip/Kconfig b/sound/soc/rockchip/Kconfig
> > index b43657e6e655..d610b553ea3b 100644
> > --- a/sound/soc/rockchip/Kconfig
> > +++ b/sound/soc/rockchip/Kconfig
> > @@ -40,9 +40,10 @@ config SND_SOC_ROCKCHIP_MAX98090
> >         select SND_SOC_ROCKCHIP_I2S
> >         select SND_SOC_MAX98090
> >         select SND_SOC_TS3A227E
> > +       select SND_SOC_HDMI_CODEC
> >         help
> >           Say Y or M here if you want to add support for SoC audio on Rockchip
> > -         boards using the MAX98090 codec, such as Veyron.
> > +         boards using the MAX98090 codec and HDMI codec, such as Veyron.
> You should not need to select the option in this patch (but in next
> patch), because this patch does not depend on anything from
> hdmi-codec.c.
Thanks for the explanation.
I'll fix in v5.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

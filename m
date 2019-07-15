Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A180698A1
	for <lists+linux-rockchip@lfdr.de>; Mon, 15 Jul 2019 17:56:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UQ5LvEBPBhJiYW3L9owicjwEvqyF8vYbn3fm7JV8yi8=; b=XG7Exn/1jDqpJR
	HWxM8IrmQkfIqdQNp8bhvWl+A/IMgZMyBKq99hzGtZBoy2fC87SfeuV8dI1382SmVSPRWzHPAudqv
	/MZhqIiWhX6z/2G0ZEcuxyu8JSJAgCprueJqZB+DqfXD3zbLP2GlTw8yiWyjczI6MFn90G6f0CosQ
	RQJ4D40hW6aXLlZkOAiKPh7c5zr1hDCxqetLax+gag5SNYC7sFGLXR6flhnUoER68r2gtdG7h9xvL
	zD/l8s2EgTPJEnCd3Kpg5ryiyQr7re2qYDI5fpZoSSnDQh8vhEFKHG7ucGX3ZQMB8gEi09gCd2xbM
	DASxOhcb6biowFNYcGKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn3LD-0006oJ-Ke; Mon, 15 Jul 2019 15:56:39 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn3LA-0006mu-Gn
 for linux-rockchip@lists.infradead.org; Mon, 15 Jul 2019 15:56:37 +0000
Received: by mail-ot1-x342.google.com with SMTP id y20so1583235otk.7
 for <linux-rockchip@lists.infradead.org>; Mon, 15 Jul 2019 08:56:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=BxdnANqifDB1z1Ih8rPgPPFQ52+wPGcxB0Lct34ID5Q=;
 b=SA30rmEvAAB/UeWM0cJpboyXWomGji7I7a5x3X8IC2z8RDCcu48fRpx3oXaTPieM78
 hMUBvyfACXuvhVyl7122TsYzmlo3PSQz9JgHl3IzAfFzF4LUSFpBOVOTOS1B1L4yygl7
 QOOGtMtHFpJt8B1LZKpTsfOdvejMLuCIDQCalifs34k7ukv+KzyMS3/rAXEkr2VMjwP1
 SBtlOVlmpKFktDXSl32r68WJn6RZP964o2hS1wrBNhCu42BpzNeAZYsIqnpYlDH19pdT
 IooGaAqomRnAwqqNrb8iHZz4u/RbyBz6uQU3gz+bKjgxr0xq0hFlSy/JRzbwLlHSQ+Nf
 EO5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BxdnANqifDB1z1Ih8rPgPPFQ52+wPGcxB0Lct34ID5Q=;
 b=FgLpn7Jo8REJmlq4zoiqhQQ9GWCV4m7bnnNEi/0bgfCgDzPFyyA0Ci98rIGKtNmV9u
 j8qsoXsg2HcVdUvhIyj4pudsvDfA+rx//WiKvC9JHz0HH9h/lXQkGeUlsDpAGW2CpKQE
 Ztw8jCVxKt0kIpNNjPJL/nVchjFp5rwCw3+qb6ZRr3ZNqMx5JZXiX1DT1LaGY2vAYn3b
 LWxFgKVdxH7rWc80REv+EeRYFaeKC2QRwUxcP/+RxzngEE9z89CJYflG3kl6ACFxKrd1
 jf2XIkK7ltUkrLeQnMpY4Ql8Kct/dxcrCNl3yBLAehmpZ6rZCa5CgfDXPvaPFS1Zan4z
 DniA==
X-Gm-Message-State: APjAAAWFqPb7pyjJZhUnmEH/uCyaKd1NMwTeNFBgSYg3LCUfbK7iB96r
 1wyqd5Wx+OOENt++cOEmA1YsfUgPkP5E89gCPexZHw==
X-Google-Smtp-Source: APXvYqwsZvLcK5LidkOK7j4XvKdYHFQb2nVh/AtXUYin5kr5W0WlZFyIM9UGzPAW85pcfSoyZbDk7ZxnfK/q+cptnb0=
X-Received: by 2002:a05:6830:1cd:: with SMTP id
 r13mr8619272ota.99.1563206191242; 
 Mon, 15 Jul 2019 08:56:31 -0700 (PDT)
MIME-Version: 1.0
References: <20190712100443.221322-1-cychiang@chromium.org>
 <20190712100443.221322-2-cychiang@chromium.org>
 <20190712105745.xr7jxc626lwoaajx@shell.armlinux.org.uk>
In-Reply-To: <20190712105745.xr7jxc626lwoaajx@shell.armlinux.org.uk>
From: Tzung-Bi Shih <tzungbi@google.com>
Date: Mon, 15 Jul 2019 23:56:19 +0800
Message-ID: <CA+Px+wWbmUemETY3OMk1T9XS2w8ZXvZUhVEGzw_w6AxtU8R0rw@mail.gmail.com>
Subject: Re: [PATCH v3 1/5] ASoC: hdmi-codec: Add an op to set callback
 function for plug event
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_085636_590053_705A2546 
X-CRM114-Status: GOOD (  18.22  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: ALSA development <alsa-devel@alsa-project.org>, tzungbi@chromium.org,
 Heiko Stuebner <heiko@sntech.de>, Liam Girdwood <lgirdwood@gmail.com>,
 David Airlie <airlied@linux.ie>, Mark Brown <broonie@kernel.org>,
 Takashi Iwai <tiwai@suse.com>, Douglas Anderson <dianders@chromium.org>,
 dri-devel@lists.freedesktop.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Hans Verkuil <hverkuil@xs4all.nl>, linux-rockchip@lists.infradead.org,
 Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, dgreid@chromium.org,
 Jaroslav Kysela <perex@perex.cz>, linux-arm-kernel@lists.infradead.org,
 Cheng-Yi Chiang <cychiang@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Fri, Jul 12, 2019 at 6:58 PM Russell King - ARM Linux admin
<linux@armlinux.org.uk> wrote:
>
> On Fri, Jul 12, 2019 at 06:04:39PM +0800, Cheng-Yi Chiang wrote:
> > Add an op in hdmi_codec_ops so codec driver can register callback
> > function to handle plug event.
> >
> > Driver in DRM can use this callback function to report connector status.
> >
> > Signed-off-by: Cheng-Yi Chiang <cychiang@chromium.org>
> > ---
> >  include/sound/hdmi-codec.h    | 16 +++++++++++++
> >  sound/soc/codecs/hdmi-codec.c | 45 +++++++++++++++++++++++++++++++++++
> >  2 files changed, 61 insertions(+)
> >
> > diff --git a/include/sound/hdmi-codec.h b/include/sound/hdmi-codec.h
> > index 7fea496f1f34..9a8661680256 100644
> > --- a/include/sound/hdmi-codec.h
> > +++ b/include/sound/hdmi-codec.h
> > @@ -47,6 +47,9 @@ struct hdmi_codec_params {
> >       int channels;
> >  };
> >
> > +typedef void (*hdmi_codec_plugged_cb)(struct device *dev,
> > +                                   bool plugged);
> > +
>
> I'd like to pose a question for people to think about.
>
> Firstly, typedefs are generally shunned in the kernel.  However, for
> these cases it seems to make sense.
>
> However, should the "pointer"-ness be part of the typedef or not?  To
> see what I mean, consider:
>
>         typedef void (*hdmi_foo)(void);
>
>         int register_foo(hdmi_foo foo);
>
> vs
>
>         typedef void hdmi_foo(void);
>
>         int register_foo(hdmi_foo *foo);
>
> which is more in keeping with how we code non-typedef'd code - it's
> obvious that foo is a pointer while reading the code.
I have a different opinion.  Its suffix "_cb" self-described it is a
callback function.  Since function and function pointer are equivalent
in the language, I think we don't need to emphasize that it is a
function "pointer".


> It seems to me that the latter better matches what is in the kernel's
> coding style, which states:
>
>   In general, a pointer, or a struct that has elements that can
>   reasonably be directly accessed should **never** be a typedef.
>
> or maybe Documentation/process/coding-style.rst needs updating?

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

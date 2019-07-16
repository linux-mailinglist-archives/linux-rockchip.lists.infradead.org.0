Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C297D6A373
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 10:00:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z8WXNbgAdRc6jAnqb698sOMhNo8MaM1ogeRfqovvF6s=; b=cGdI4mpd9+7CLI
	poBty32AE0TSXXwNYs6VE11CBKO7hYtr28nsdiZqVRxbYN3iCCogBAdLVHNnVZQpWBTewUdqSdPqY
	5EpkwDm/g4O7Tl/8nXQ0Zlaj7X9RPPeMoI0bRc/SroqU06PbW5PR3wIkfh+k4hTZdPrw65srzEqUN
	fmb3cypZaT8sukyqg+5IWEsFIy9Bxbwqe5woysc69AY1ogg4UYNZO4Oi1/cfdCnfa6O/IXx2pZrrJ
	Fca+VsiBT+4Xadfzl1XuVEU+ZGyjujJogCZSiSuTorGEYsFQACZmQWSxHl2EE05U94VA3f/ERG9VV
	tU0Gby/ffP+64842XXPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnINx-0006GX-KG; Tue, 16 Jul 2019 08:00:29 +0000
Received: from mail-vs1-xe42.google.com ([2607:f8b0:4864:20::e42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnINd-0005M4-6d
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 08:00:12 +0000
Received: by mail-vs1-xe42.google.com with SMTP id v129so13244405vsb.11
 for <linux-rockchip@lists.infradead.org>; Tue, 16 Jul 2019 01:00:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0k1aHf58/gxem57t+/HJk9SNpX74KfXqdFRssCgasHQ=;
 b=WkIXGD93vnc7/jgdUJCOyAhWfQWj4JwZxZhvfijDRISLuLx4yflZHTDWWSxx7WAFgi
 P/75eR1ocFjiim/HAtaQ/hHHMdj/AJhGCoGv3O1KDMwV3amytYQ+kgBq/LAKt+YymIQH
 cgPBdjhd4eTA/OcE54ml3PqvteVAcATrUZsBw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0k1aHf58/gxem57t+/HJk9SNpX74KfXqdFRssCgasHQ=;
 b=A8HMQ0opqkm5fgG1I4NBs3LCr/b7AJKB8daebMt2SOkIjIH/+ZFKIytB4reY03lYAV
 n5iawAkqiZyvXRpMckbj36jHb8r5Zr0HGTAL968hcy0wloUFyX2raW2e4ByVCRX+RxEJ
 tRrFfHomW6J6zhv3PQk/eRB6lPDZFBmEHd1dWwPNLvbAI55fRpgETucbkfzO8TJ76xBT
 ajqa3PimOuAZuE7cbQ78b/lhyulzIU3kmT8AIkBIPchfA3fvrZJ2bR/Mlkqkm40qAMIv
 TURAN/Qu+XZReFOjMpgy0jiMwo3qV8D14kctSSxylUpd+egeOknPXb2y7Gcxcx2Vmttb
 UxcA==
X-Gm-Message-State: APjAAAUb8UDjx9ZOyo96qcPY25axj906YskiCjatCpN59fdVUVm+1NFu
 sPD9YV6v+WwT7bucrKXEA3lyVOmNrcP3QF43XE4hew==
X-Google-Smtp-Source: APXvYqz3UlcLWtTzFizosrgSxqzhf3bbaJZCfMhWBpiXfCrTTv26BLTLvewBhZnAiR6udq4k9bpOekTvU0tfbVw4RAQ=
X-Received: by 2002:a67:ebcb:: with SMTP id y11mr9527514vso.138.1563264004214; 
 Tue, 16 Jul 2019 01:00:04 -0700 (PDT)
MIME-Version: 1.0
References: <20190712100443.221322-1-cychiang@chromium.org>
 <20190712100443.221322-2-cychiang@chromium.org>
 <20190712105745.xr7jxc626lwoaajx@shell.armlinux.org.uk>
 <CA+Px+wWbmUemETY3OMk1T9XS2w8ZXvZUhVEGzw_w6AxtU8R0rw@mail.gmail.com>
In-Reply-To: <CA+Px+wWbmUemETY3OMk1T9XS2w8ZXvZUhVEGzw_w6AxtU8R0rw@mail.gmail.com>
From: Cheng-yi Chiang <cychiang@chromium.org>
Date: Tue, 16 Jul 2019 15:59:36 +0800
Message-ID: <CAFv8NwKwd8Yf4UmqUhcaP1pL2K_d_FSZm9JyY_Azy13017RWgg@mail.gmail.com>
Subject: Re: [PATCH v3 1/5] ASoC: hdmi-codec: Add an op to set callback
 function for plug event
To: Tzung-Bi Shih <tzungbi@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_010009_286256_49BA21A6 
X-CRM114-Status: GOOD (  22.19  )
X-Spam-Score: -7.4 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e42 listed in]
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
Cc: ALSA development <alsa-devel@alsa-project.org>, tzungbi@chromium.org,
 Heiko Stuebner <heiko@sntech.de>, Liam Girdwood <lgirdwood@gmail.com>,
 David Airlie <airlied@linux.ie>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Mark Brown <broonie@kernel.org>, Takashi Iwai <tiwai@suse.com>,
 Douglas Anderson <dianders@chromium.org>, dri-devel@lists.freedesktop.org,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Hans Verkuil <hverkuil@xs4all.nl>, linux-rockchip@lists.infradead.org,
 Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, Dylan Reid <dgreid@chromium.org>,
 Jaroslav Kysela <perex@perex.cz>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Mon, Jul 15, 2019 at 11:56 PM Tzung-Bi Shih <tzungbi@google.com> wrote:
>
> On Fri, Jul 12, 2019 at 6:58 PM Russell King - ARM Linux admin
> <linux@armlinux.org.uk> wrote:
> >
> > On Fri, Jul 12, 2019 at 06:04:39PM +0800, Cheng-Yi Chiang wrote:
> > > Add an op in hdmi_codec_ops so codec driver can register callback
> > > function to handle plug event.
> > >
> > > Driver in DRM can use this callback function to report connector status.
> > >
> > > Signed-off-by: Cheng-Yi Chiang <cychiang@chromium.org>
> > > ---
> > >  include/sound/hdmi-codec.h    | 16 +++++++++++++
> > >  sound/soc/codecs/hdmi-codec.c | 45 +++++++++++++++++++++++++++++++++++
> > >  2 files changed, 61 insertions(+)
> > >
> > > diff --git a/include/sound/hdmi-codec.h b/include/sound/hdmi-codec.h
> > > index 7fea496f1f34..9a8661680256 100644
> > > --- a/include/sound/hdmi-codec.h
> > > +++ b/include/sound/hdmi-codec.h
> > > @@ -47,6 +47,9 @@ struct hdmi_codec_params {
> > >       int channels;
> > >  };
> > >
> > > +typedef void (*hdmi_codec_plugged_cb)(struct device *dev,
> > > +                                   bool plugged);
> > > +
> >
> > I'd like to pose a question for people to think about.
> >
> > Firstly, typedefs are generally shunned in the kernel.  However, for
> > these cases it seems to make sense.
> >
> > However, should the "pointer"-ness be part of the typedef or not?  To
> > see what I mean, consider:
> >
> >         typedef void (*hdmi_foo)(void);
> >
> >         int register_foo(hdmi_foo foo);
> >
> > vs
> >
> >         typedef void hdmi_foo(void);
> >
> >         int register_foo(hdmi_foo *foo);
> >
> > which is more in keeping with how we code non-typedef'd code - it's
> > obvious that foo is a pointer while reading the code.
> I have a different opinion.  Its suffix "_cb" self-described it is a
> callback function.  Since function and function pointer are equivalent
> in the language, I think we don't need to emphasize that it is a
> function "pointer".
>
>

Hi Russell and Tzungbi, thank you for the review.
Regarding this typedef of callback function, I found a thread
discussing this very long time ago:

https://yarchive.net/comp/linux/typedefs.html

From that thread, Linus gave an example of using typedef for function
pointer that is following to this pattern.
I also looked around how other driver use it:
$ git grep typedef | grep _cb | less | wc -l
138
$ git grep typedef | grep _cb | grep "(\*" | wc -l
115
Most of the typedef of callback function use this pattern.
So I think this should be fine.
Thanks!


> > It seems to me that the latter better matches what is in the kernel's
> > coding style, which states:
> >
> >   In general, a pointer, or a struct that has elements that can
> >   reasonably be directly accessed should **never** be a typedef.
> >
> > or maybe Documentation/process/coding-style.rst needs updating?

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

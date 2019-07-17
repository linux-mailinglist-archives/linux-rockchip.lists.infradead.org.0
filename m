Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4049D6B473
	for <lists+linux-rockchip@lfdr.de>; Wed, 17 Jul 2019 04:18:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6aICME5HS7XuiXv2bwU3dQWD6ehdk+9gZ6eZfJDMth8=; b=Cf4X0T4DnYNXxe
	jQQUdWDND0qaNpxvbYUk75rIVHmw4wFkV5z5Q9beUjN48+avaCDGous3TnGoDiqiDyZqgs04UVfi7
	Y+m+V1o25nG4t/2X7Sa9muooPseWZ5aFder8msxAGI49kzTf2WTvSgYop2pZXocYCTO1txxj0jaxe
	IDmFphFYXa6gFbmcV+mJ2xm3D/LZT1gd74DbOErPv8qgzMN3rN7KVJZ/EsCiPTvU2bIvNRdSwOp5q
	GSOEbwTDWRMh9DVoJ9gxsOBWqV3j2P2jfvajG0OgLjM1vr0pAGtBAO4vUwH93seLDJO20LwispnzF
	jw3Btk9PYmejIfyhXHKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnZWD-0005Yw-Lp; Wed, 17 Jul 2019 02:18:09 +0000
Received: from mail-vs1-xe43.google.com ([2607:f8b0:4864:20::e43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnZVy-0005OE-1h
 for linux-rockchip@lists.infradead.org; Wed, 17 Jul 2019 02:17:55 +0000
Received: by mail-vs1-xe43.google.com with SMTP id v6so15383835vsq.4
 for <linux-rockchip@lists.infradead.org>; Tue, 16 Jul 2019 19:17:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Yeo9/78yIZ/9VC2V6OzC4jD48Q2tlshLhO2xlpzyNJY=;
 b=nUiqNxzKLCH4uh7Rdk28OYJeCqZg+QKn/Ua3o40RM8WpdDaG3iflhnr8M/qkqbKcgw
 MB6O6mEn6WPNEgokSircT8LHVL2pkHwIAhiObF6mtO0l5foVBQDuDCYQgfQ/yKy2vod1
 EiRO1lNXlRxUc2xtXifWRV0NCnbRPoBSHfW0o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Yeo9/78yIZ/9VC2V6OzC4jD48Q2tlshLhO2xlpzyNJY=;
 b=Dh8fRTPm593LYxIg7F9C1z6oL8HwnD7W4xGmVI/x7BizBLMMroMfwknl5nbxP11TBf
 ObgcNGi1saePxRDdQA7VcBp56sVVx8lbDPI8Ld71vcBMCY1jud1H6NzWiRYKfkw/rl5R
 GmQC66YKLr+AYx3urNQFp8lFCWfQ9/PoeJqjzbybE5XGWUKwVCkWLILHmErE7rxUS4/1
 Tti1pkEE4Tcg1JqZnjvOwgnfMG0R0IoJWRix6PY//7I+vjQcO66TCWNqP8bTqWyfgixN
 hmwsW8AfodlTxKq8Clm8ZN2o/sz9yerMrRg/k81BxxtsF4rjgzIHrmaJCm1fwzFTByAj
 EhZw==
X-Gm-Message-State: APjAAAWOJEozeZ3BSwoj9xAX6vtJWbeX/tjd33EfujzzFEjd56sZBnVs
 Dvia+KGtbLp5u6K3UgDHdclJHPz5WitPOgM2g5XLaQ==
X-Google-Smtp-Source: APXvYqxWnVBbK8jRKVsd6t2y7gQJuZMs4DlVLf7zXq9OOaLMsZSZoBF8H9LF78AxDMSny/dXL5TfEDzdnilbzMthY7M=
X-Received: by 2002:a67:ebcb:: with SMTP id y11mr13049180vso.138.1563329872293; 
 Tue, 16 Jul 2019 19:17:52 -0700 (PDT)
MIME-Version: 1.0
References: <20190716115725.66558-1-cychiang@chromium.org>
 <20190716115725.66558-3-cychiang@chromium.org>
 <CA+Px+wWuCBvWra8+=szQOrvr3iv2YPMeoHHVtJ1vmaZWEEQ44A@mail.gmail.com>
In-Reply-To: <CA+Px+wWuCBvWra8+=szQOrvr3iv2YPMeoHHVtJ1vmaZWEEQ44A@mail.gmail.com>
From: Cheng-yi Chiang <cychiang@chromium.org>
Date: Wed, 17 Jul 2019 10:17:25 +0800
Message-ID: <CAFv8NwKVEpnUi=+Hvi1_2vdYqWFd49zu8eoQbMwnjg6i_PGhcA@mail.gmail.com>
Subject: Re: [PATCH v4 2/5] drm: bridge: dw-hdmi: Report connector status
 using callback
To: Tzung-Bi Shih <tzungbi@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_191754_249105_F69C1438 
X-CRM114-Status: GOOD (  14.11  )
X-Spam-Score: -7.4 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.4 points)
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

On Tue, Jul 16, 2019 at 10:13 PM Tzung-Bi Shih <tzungbi@google.com> wrote:
>
> On Tue, Jul 16, 2019 at 7:57 PM Cheng-Yi Chiang <cychiang@chromium.org> wrote:
> >
> > Change the Kconfig of DRM_DW_HDMI so it selects SND_SOC_HDMI_CODEC.
> > This is for the typedef of hdmi_codec_plugged_cb to be used in dw-hdmi.c.
> Not sure why you select SND_SOC_HDMI_CODEC in this patch.  To have
> definition of hdmi_codec_plugged_cb, include hdmi-codec.h should be
> sufficient.
>
Thank you for the review!
I misunderstood when to change Kconfig.
Will fix in v5.
> >
> > diff --git a/drivers/gpu/drm/bridge/synopsys/Kconfig b/drivers/gpu/drm/bridge/synopsys/Kconfig
> > index 21a1be3ced0f..309da052db97 100644
> > --- a/drivers/gpu/drm/bridge/synopsys/Kconfig
> > +++ b/drivers/gpu/drm/bridge/synopsys/Kconfig
> > @@ -4,6 +4,7 @@ config DRM_DW_HDMI
> >         select DRM_KMS_HELPER
> >         select REGMAP_MMIO
> >         select CEC_CORE if CEC_NOTIFIER
> > +       select SND_SOC_HDMI_CODEC
> So that it is weird to select this option.
>
Will be removed in v5.
Thanks!
> >
> >  config DRM_DW_HDMI_AHB_AUDIO
> >         tristate "Synopsys Designware AHB Audio interface"
> > @@ -20,7 +21,6 @@ config DRM_DW_HDMI_I2S_AUDIO
> >         tristate "Synopsys Designware I2S Audio interface"
> >         depends on SND_SOC
> >         depends on DRM_DW_HDMI
> > -       select SND_SOC_HDMI_CODEC
> Also strange for deselecting the option.  Should be in another commit
> for another reason?
Will be removed in v5.
Thanks!

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

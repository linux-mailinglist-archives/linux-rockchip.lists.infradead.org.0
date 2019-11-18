Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCE35100C7A
	for <lists+linux-rockchip@lfdr.de>; Mon, 18 Nov 2019 21:03:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WNIvHksD7o3aLh+geFLAmkVyU0So6RXZ0FfqD7N32ns=; b=Bskprtsy6ppdNv
	/Mw2oFe3+LD1REwyl6dcF7E5KgUMxW8MOIgKKUv8vZQNJdvKFI8YdS02glsqakR3seHoNZYKnAYzZ
	dvQloC6Irh1xhwDoriCC0Fc0YpKiqvGtNw/bw2ZgZeC30NddgBVeuYyQ+Dp3aM8sH8iHG2O044dB8
	5pLUP9gbm080kgz2SUQYQi89mVzTicC8fCLL+M1xrB5T32disc1G8D0vSbpX35R/FnDbch+eeVcjx
	izikU89sCp0v3om6FCIbwZRTXjVbtGYtjdzVKQEenjPfZpVpkYd34XuRwkFuNn+MwRrjIk5A6Hj4l
	+YN50OAg2nTg/HTIt8iQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWnFR-0001xP-EK; Mon, 18 Nov 2019 20:03:45 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWnFE-0001nr-Sw
 for linux-rockchip@lists.infradead.org; Mon, 18 Nov 2019 20:03:34 +0000
Received: by mail-ot1-x343.google.com with SMTP id l14so15642309oti.10
 for <linux-rockchip@lists.infradead.org>; Mon, 18 Nov 2019 12:03:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2PDaqtIBFBkrRQtsY42nVpJi6m3lJCgdaGJOcPD9Eus=;
 b=UxPgDGEUGSS2r8QojZ/ioqZmAmyhiiIEOQoy9RtBqwwu3kaOweSHsI8J4m2K+HhZA2
 mjvPBHZeE6rg6BOyz/I2PnBSCrqeMEqNQ6qYLKjizgjbfQauOxWanDCnsw3hAhfcpw40
 76vwRpGOIpHjgHlFudj72VJL3sr8VtLtvfikY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2PDaqtIBFBkrRQtsY42nVpJi6m3lJCgdaGJOcPD9Eus=;
 b=MIBxj/u1YCkMU74Oovh5pwqLQU6DiYxG9PseFyKTYP+z86OTmBYLXIprVKYqaTpp5H
 IpOZyLFiAo1jWk03oM1PAivA4nm5jb9S5V9oU76rL96lYgCtpNN8DxwMi/KlnGeAnR+5
 oAKgZtabgZWGdW1C3yWpHBJSOFEB00GsKoFTSqdU+qke+9NEBnJlDa6mk8ojd4ojZ3tJ
 337cSUyaQvRTRS+D1fgc6Sdmw3WXrZAvLT1xsAqx4Xfk5SSEE27s75ZnmSca6qTWSRvK
 ZFWgWH1PMQT/dNyoRMvj0KTo9EhiM1LMDui76RYSFuQr5ulrLi0sLQh3IGr71nJRIks1
 GoYg==
X-Gm-Message-State: APjAAAUDx+bXLxkQJ8hfXfF0II3x8J++WsdbYz6WqVKwqfdf4kI8whQv
 EoJYKiyia7QIenJFUuLf36EWJOVXeX934ywrb9MvcQ==
X-Google-Smtp-Source: APXvYqxmAHc8pVLhK0Y0804VQwtyYsvapomac1UHPu9BRJmQq3WYdIqSwK6xX5pOlFN607Lp+Hp7TwzWoW9x/GPS1/Q=
X-Received: by 2002:a05:6830:22d0:: with SMTP id
 q16mr849080otc.188.1574107411531; 
 Mon, 18 Nov 2019 12:03:31 -0800 (PST)
MIME-Version: 1.0
References: <20191114132436.7232-1-wambui.karugax@gmail.com>
 <8736ep1hm2.fsf@intel.com> <20191118192450.GA135013@art_vandelay>
In-Reply-To: <20191118192450.GA135013@art_vandelay>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Mon, 18 Nov 2019 21:03:20 +0100
Message-ID: <CAKMK7uG7Tb6oocrRgRFvq5oB2Rxjy+JmyOSXQtjo6Gt_WH91+A@mail.gmail.com>
Subject: Re: [PATCH 0/2] add new DRM_DEV_WARN macro
To: Sean Paul <sean@poorly.run>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_120332_997110_A0FC7C63 
X-CRM114-Status: GOOD (  15.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Dave Airlie <airlied@linux.ie>, dri-devel <dri-devel@lists.freedesktop.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Sandy Huang <hjc@rock-chips.com>, Maxime Ripard <mripard@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Wambui Karuga <wambui.karugax@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Mon, Nov 18, 2019 at 8:24 PM Sean Paul <sean@poorly.run> wrote:
> On Fri, Nov 15, 2019 at 01:52:53PM +0200, Jani Nikula wrote:
> > On Thu, 14 Nov 2019, Wambui Karuga <wambui.karugax@gmail.com> wrote:
> > > This adds a new DRM_DEV_WARN helper macro for warnings log output that include
> > > device pointers. It also includes the use of the DRM_DEV_WARN macro in
> > > drm/rockchip to replace dev_warn.
> >
> > I'm trying to solicit new struct drm_device based logging macros, and
> > starting to convert to those. [1]
> >
>
> This sounds good to me, I'd much prefer the non-caps versions of these
> functions. So let's wait for those to bubble up and then convert rockchip to
> drm_dev_*

Care to ack Jani's patch directly, so this is all formal?

Jani, can you pls also add a todo.rst patch on top to adjust the
relevant item to the new color choice?

Wambui, I guess slight change of plans, it happens ...

Cheers, Daniel

>
> Sean
>
> > BR,
> > Jani.
> >
> >
> > [1] http://patchwork.freedesktop.org/patch/msgid/63d1e72b99e9c13ee5b1b362a653ff9c21e19124.1572258936.git.jani.nikula@intel.com
> >
> >
> >
> >
> > >
> > > Wambui Karuga (2):
> > >   drm/print: add DRM_DEV_WARN macro
> > >   drm/rockchip: use DRM_DEV_WARN macro in debug output
> > >
> > >  drivers/gpu/drm/rockchip/inno_hdmi.c | 3 ++-
> > >  include/drm/drm_print.h              | 9 +++++++++
> > >  2 files changed, 11 insertions(+), 1 deletion(-)
> >
> > --
> > Jani Nikula, Intel Open Source Graphics Center
>
> --
> Sean Paul, Software Engineer, Google / Chromium OS



-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42ABA5A00E
	for <lists+linux-rockchip@lfdr.de>; Fri, 28 Jun 2019 17:56:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tNMhM0AA82wZKnrAy8U0c4Gq9g/rw4NBts7SmN0IHMw=; b=c4U5F6V19Nz6CV
	aAvZ9vTEVY2yo9AgnZlsFB/W0mUtueh6BjpyBWeAe8vw2geuUSKYH1nm1rHsMMEX9keT5Ew5MWdS3
	TDFtpgOjNBjdk5ZKV7N8q5iXZ/3ydpMF9ODMlp5E9+Bn/Ar4sZUI2ZElrxrxyluuYZni9Km0sM502
	+xDvEA4Km8r894Ur8wuwMq1enPfBq7EuPTejwnQPjCwlp1LV1MW2YWNgy28cpk/Xu829DrfE4wlxE
	lSVDBdm4GXu1DyYyVkhhIDoERhPgC78/Uf2jntVUzL3PLobuiMBBLlW5uvnY03YuuvnMCd6c+9qW8
	kHfum0wj5KD/ms/d6m9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgtEA-0004Iq-DH; Fri, 28 Jun 2019 15:55:54 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgtE4-0004Hv-CA
 for linux-rockchip@lists.infradead.org; Fri, 28 Jun 2019 15:55:50 +0000
Received: by mail-io1-xd44.google.com with SMTP id h6so13602551ioh.3
 for <linux-rockchip@lists.infradead.org>; Fri, 28 Jun 2019 08:55:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=qvsku1LsJlCMNeTol53NqA/7OgT8tqKKHqYv+Wh37GE=;
 b=CzTrUukzMMeVRGwtHonyk2yl+qyq6WCscFXVn/MC+4gnXi3vA+3kMHy6iRQGqVZrU5
 w20Qcluka+u28ayDtwVRqBQcrYz+4pCRRXefNm0+pAj+0E4hSBY3IzGe9/jYZeN6+zm7
 0cy9PihW6uY+H+FazttpKeB7XOxwJRVWhPe0M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qvsku1LsJlCMNeTol53NqA/7OgT8tqKKHqYv+Wh37GE=;
 b=bQbcwsPTyAnukOZGkQR/UrVPJPDPl0NO5IJFBUQWDsyuH6FkjVNW6BV9n+7yjCIu5X
 xacTueTK6qY+MMhpNock4SMh99pMojGesoPOxyweGxdL58KNR9WK5Vr5KX23LqNi8Ftb
 g48Pb9QLgbUnYeKbH1AJcegB8yqR4dIU7MNIBReTXBxCAGbf3AUyCc+NXovjQU1JjV/7
 FGU/aAiMX6/fvmFQNonb0skFKAH6wfdeUTvb5wFsGIBWvg9z86wCP6XXGWGF7iTjHcjS
 fwmcwjkrkwRLokBPptjhTJ+7YcvObF6YW8jglJ8/7DrXSxP6Ip2pdxHiXOjeKp8PvtjH
 W2kg==
X-Gm-Message-State: APjAAAWEg2FFGrf/KwvXBjdlWXYy14hwhsRzNxeacxZTXN+Rcrs4b3K4
 sHzGDCtEScL4MrtdBjZcyVzSQlykpw8=
X-Google-Smtp-Source: APXvYqxBkhNkc6yxtsncSafgHuE5NvZU9cgMnkKx0sUOLQQAQq4RlmXrneDdiMBSiVtihM9FiNZlvQ==
X-Received: by 2002:a5d:9bc6:: with SMTP id d6mr404553ion.160.1561737346884;
 Fri, 28 Jun 2019 08:55:46 -0700 (PDT)
Received: from mail-io1-f50.google.com (mail-io1-f50.google.com.
 [209.85.166.50])
 by smtp.gmail.com with ESMTPSA id u187sm4163386iod.37.2019.06.28.08.55.44
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Fri, 28 Jun 2019 08:55:45 -0700 (PDT)
Received: by mail-io1-f50.google.com with SMTP id r185so13546729iod.6
 for <linux-rockchip@lists.infradead.org>; Fri, 28 Jun 2019 08:55:44 -0700 (PDT)
X-Received: by 2002:a5d:96d8:: with SMTP id r24mr1014520iol.269.1561737344434; 
 Fri, 28 Jun 2019 08:55:44 -0700 (PDT)
MIME-Version: 1.0
References: <20190401171724.215780-1-dianders@chromium.org>
 <20190626130007.GE23428@ravnborg.org>
 <CAD=FV=U4UU8q+CS76uuuGUP=EVnE6+BTUf8U=j7uwfczNgkrZw@mail.gmail.com>
In-Reply-To: <CAD=FV=U4UU8q+CS76uuuGUP=EVnE6+BTUf8U=j7uwfczNgkrZw@mail.gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Fri, 28 Jun 2019 08:55:38 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Vi2C7s2oWBDD0n+HK=_SuBYhRM9saMK-y6Qa0+k-g17w@mail.gmail.com>
Message-ID: <CAD=FV=Vi2C7s2oWBDD0n+HK=_SuBYhRM9saMK-y6Qa0+k-g17w@mail.gmail.com>
Subject: Re: [PATCH v5 0/7] drm/panel: simple: Add mode support to devicetree
To: Sam Ravnborg <sam@ravnborg.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_085548_443844_3592F857 
X-CRM114-Status: GOOD (  24.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Brian Norris <briannorris@chromium.org>, Heiko Stuebner <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>, Viresh Kumar <viresh.kumar@linaro.org>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 LKML <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Thierry Reding <thierry.reding@gmail.com>, Sean Paul <seanpaul@chromium.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 =?UTF-8?Q?Enric_Balletb=C3=B2?= <enric.balletbo@collabora.com>,
 Klaus Goger <klaus.goger@theobroma-systems.com>,
 Ezequiel Garcia <ezequiel@collabora.com>, Matthias Kaehlcke <mka@chromium.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi,

On Wed, Jun 26, 2019 at 7:41 AM Doug Anderson <dianders@chromium.org> wrote:
>
> Hi,
>
> On Wed, Jun 26, 2019 at 6:00 AM Sam Ravnborg <sam@ravnborg.org> wrote:
> >
> > Hi Douglas.
> >
> > On Mon, Apr 01, 2019 at 10:17:17AM -0700, Douglas Anderson wrote:
> > > I'm reviving Sean Paul's old patchset to get mode support in device
> > > tree.  The cover letter for his v3 is at:
> > > https://lists.freedesktop.org/archives/dri-devel/2018-February/165162.html
> > >
> > > No code is different between v4 and v5, just commit messages and text
> > > in the bindings.
> > >
> > > I've pulled together the patches that didn't land in v3, addressed
> > > outstanding feedback, and reposted.  Atop them I've added patches for
> > > rk3288-veyron-chromebook (used for jaq, jerry, mighty, speedy) and
> > > rk3288-veryon-minnie.
> > >
> > > Please let me know how they look.
> > >
> > > In general I have added people to the whole series who I think would
> > > like the whole series and then let get_maintainer pick extra people it
> > > thinks are relevant to each individual patch.  If I see you respond to
> > > any of the patches in the series, though, I'll add you to the whole
> > > series Cc list next time.
> > >
> > > Changes in v5:
> > > - Removed bit about OS may ignore (Rob/Ezequiel)
> > > - Added Heiko's Tested-by
> > > - It's not just jerry, it's most rk3288 Chromebooks (Heiko)
> >
> > What are the plans to move forward with this?
> > Or did you drop the whole idea again?
>
> At the moment I'm blocked on Thierry responding, either taking the
> patch or telling me what I need to do to fix it.  I saw Sean Paul ping
> Thierry on IRC on June 3rd and as far as I could tell there was no
> response.
>
> https://people.freedesktop.org/~cbrill/dri-log/?channel=dri-devel&highlight_names=&date=2019-06-03&show_html=true
>
> ...and as you can see Heiko pinged this thread on June 14th.
>
> Thierry: can you help give us some direction?  Are you uninterested in
> reviewing them and would prefer that I find someone to land them in
> drm-misc directly?

Sam: Oh!  I hadn't noticed that you've been added as a panel
maintainer in commit ef0db94f94a0 ("MAINTAINERS: Add Sam as reviewer
for drm/panel").  Does that mean you are able to provide some advice
for how to land this series?  As far as I know everything is in order
for it to land, but if you are aware of something I need to do to spin
it then please let me know!

Thanks!

-Doug

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

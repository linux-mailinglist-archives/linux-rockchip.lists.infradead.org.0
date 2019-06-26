Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79E5556C64
	for <lists+linux-rockchip@lfdr.de>; Wed, 26 Jun 2019 16:41:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xClfWRcZxtNi6cJjLP/ZiX40RvGv95zE7rxq+dPB7X8=; b=GSXNkPvfWaIfOb
	jpnsjgyAEKmllQKzfJWJ3tqsIGwvsztrevHYME1kZosDtVs+/2Qq/S3C7Lm3JqE/C/np/7dOPvLRv
	Eq2URs0woJcp5sJJfB7GA63kFPSzOKvlHhhd3EGbNlgLnRrksQRgZshoiFc6mNX7XcgIcelkg2gOT
	53zOX3PjtX82GEjExLTmmQImF+OjWG4Uq30hByZdbPILDYyY6/g4tCFAWOalhX3w4KJesq8YPlqVk
	/K3jOBlB0ps6r9DqLxHzSoc5ecBtCFyDntl2wz5b9I5icU1kGHZJg/ANFBxPoDXOWOEp2ZJ0VEG1I
	ol1SEzctIR7d4yRKDElQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg97J-0000AY-If; Wed, 26 Jun 2019 14:41:45 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg97G-0000A1-JX
 for linux-rockchip@lists.infradead.org; Wed, 26 Jun 2019 14:41:44 +0000
Received: by mail-io1-xd42.google.com with SMTP id e5so2472151iok.4
 for <linux-rockchip@lists.infradead.org>; Wed, 26 Jun 2019 07:41:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=DgyZrV/0GXyIl5zMpVdez37+pt0NN6PZa+e8Yh9Hijw=;
 b=dOdIhYXTF+no3YlbD2CeiKg6dat5l5CZOYD1xXFNvcNIBlAs26LBlatTYEcR2hhgI7
 H9zsMLsH3VQ22LOEebISJz7Gu5FaNqEkZLSey44RurxttEJ7oggMzJFFrJxCMhUlqrk1
 Z9EaitNaYGsRLgbaGEakPUC+tbKPTUuNIqIRc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DgyZrV/0GXyIl5zMpVdez37+pt0NN6PZa+e8Yh9Hijw=;
 b=lXNjy9mfUn8s8c1YqpNk0/WWDNLRMGfWkvifp1xMzyTktF9354aYFJTs/yWP4y7/7+
 xElb4fWfwr5njpPX5XlFs70R8UljXVDrrziy5wI5HpBS8lUQu0jH8Zrhwx6T6VHCB/kP
 lhxP5I3x6UN5vhu88dJ0wciHiKKetWdxD9QKGjxmWWZwEoVJWNMzSLCPmtXEgfWo9nwC
 znWcft1JXnvUMX18rrR2fyIZe3pdd7Y2SzpXiBI7fU5uIRwz6HlAGN7wkpJO60aYBidj
 A3sw0ijXPESEiztxJkn9A9iDh/0/r2J+kAlIk07YXhNrqb+nZgdzR9dkodg9Yy6AONO1
 9hxw==
X-Gm-Message-State: APjAAAWxa3O650SO+5EbhVst3QQyd5JdeIcsE/WZsw+Yfg8gdlfoJuvr
 hGoSrMJdGPkWo/p9di2NIOxlIsCxV0g=
X-Google-Smtp-Source: APXvYqzFxPkfY1HscWHSiNH1pffJUTDiUFJ/UpJVIukRUwBiv6ha5SC7NANbT4EJN1+cx9PxGZkraQ==
X-Received: by 2002:a05:6602:104:: with SMTP id
 s4mr5507199iot.200.1561560100477; 
 Wed, 26 Jun 2019 07:41:40 -0700 (PDT)
Received: from mail-io1-f43.google.com (mail-io1-f43.google.com.
 [209.85.166.43])
 by smtp.gmail.com with ESMTPSA id c10sm17417741ioh.58.2019.06.26.07.41.37
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Wed, 26 Jun 2019 07:41:38 -0700 (PDT)
Received: by mail-io1-f43.google.com with SMTP id h6so3910597ioh.3
 for <linux-rockchip@lists.infradead.org>; Wed, 26 Jun 2019 07:41:37 -0700 (PDT)
X-Received: by 2002:a02:aa1d:: with SMTP id r29mr5324399jam.127.1561560097502; 
 Wed, 26 Jun 2019 07:41:37 -0700 (PDT)
MIME-Version: 1.0
References: <20190401171724.215780-1-dianders@chromium.org>
 <20190626130007.GE23428@ravnborg.org>
In-Reply-To: <20190626130007.GE23428@ravnborg.org>
From: Doug Anderson <dianders@chromium.org>
Date: Wed, 26 Jun 2019 07:41:25 -0700
X-Gmail-Original-Message-ID: <CAD=FV=U4UU8q+CS76uuuGUP=EVnE6+BTUf8U=j7uwfczNgkrZw@mail.gmail.com>
Message-ID: <CAD=FV=U4UU8q+CS76uuuGUP=EVnE6+BTUf8U=j7uwfczNgkrZw@mail.gmail.com>
Subject: Re: [PATCH v5 0/7] drm/panel: simple: Add mode support to devicetree
To: Sam Ravnborg <sam@ravnborg.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_074142_672511_852E5E42 
X-CRM114-Status: GOOD (  20.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On Wed, Jun 26, 2019 at 6:00 AM Sam Ravnborg <sam@ravnborg.org> wrote:
>
> Hi Douglas.
>
> On Mon, Apr 01, 2019 at 10:17:17AM -0700, Douglas Anderson wrote:
> > I'm reviving Sean Paul's old patchset to get mode support in device
> > tree.  The cover letter for his v3 is at:
> > https://lists.freedesktop.org/archives/dri-devel/2018-February/165162.html
> >
> > No code is different between v4 and v5, just commit messages and text
> > in the bindings.
> >
> > I've pulled together the patches that didn't land in v3, addressed
> > outstanding feedback, and reposted.  Atop them I've added patches for
> > rk3288-veyron-chromebook (used for jaq, jerry, mighty, speedy) and
> > rk3288-veryon-minnie.
> >
> > Please let me know how they look.
> >
> > In general I have added people to the whole series who I think would
> > like the whole series and then let get_maintainer pick extra people it
> > thinks are relevant to each individual patch.  If I see you respond to
> > any of the patches in the series, though, I'll add you to the whole
> > series Cc list next time.
> >
> > Changes in v5:
> > - Removed bit about OS may ignore (Rob/Ezequiel)
> > - Added Heiko's Tested-by
> > - It's not just jerry, it's most rk3288 Chromebooks (Heiko)
>
> What are the plans to move forward with this?
> Or did you drop the whole idea again?

At the moment I'm blocked on Thierry responding, either taking the
patch or telling me what I need to do to fix it.  I saw Sean Paul ping
Thierry on IRC on June 3rd and as far as I could tell there was no
response.

https://people.freedesktop.org/~cbrill/dri-log/?channel=dri-devel&highlight_names=&date=2019-06-03&show_html=true

...and as you can see Heiko pinged this thread on June 14th.

Thierry: can you help give us some direction?  Are you uninterested in
reviewing them and would prefer that I find someone to land them in
drm-misc directly?


-Doug

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8797C571B3
	for <lists+linux-rockchip@lfdr.de>; Wed, 26 Jun 2019 21:25:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L01N90xKSgp3vcaeiPAsvE4B29EJztQ+0zbuU0rYNqA=; b=bjUNdHC6sw/Wyx
	Yin7N73nfBMKzCBJfRmMSeJlpwcVlcgVREXeYZFASiDkO4B9zj6tnKjzCFzQ13rg6a67lYoTDRn5A
	BBsROhysV0C07kfyf/7vVrbGwl3gTITmVbhQWuBOxAKi0hSX/Z/T5kfqm9vWyDXqSiApHm2TlRbgh
	CnSWq8HmCT5V0fLG4QTNSJigytYQD1dsMkTkZQlBEqdrLPRcHSDJRSxT+AehV1siy9WHrXOc3NnIJ
	WtWV2zeNasJ37jJe9VW9zAdjIBVr3tnpJtpu+cXxiQ/VYGEE0fbh2f55WXQCh6hNc0o/D0BHGHt/I
	jZLFNiQk+MbqDBK/tE3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgDXL-0008MD-QA; Wed, 26 Jun 2019 19:24:56 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgDXE-0008JE-4h
 for linux-rockchip@lists.infradead.org; Wed, 26 Jun 2019 19:24:49 +0000
Received: by mail-io1-xd43.google.com with SMTP id e5so4497342iok.4
 for <linux-rockchip@lists.infradead.org>; Wed, 26 Jun 2019 12:24:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ZMDBPgUsvp65+GDLE8L0NRSWZecIdZ0UtHWFD2Htqnw=;
 b=f8TY1v47mlNmVd21P8YuLUhvPcChePJhG5luDNvNOtOVM0rQxgkmqCwMDmf30Pudhf
 Z2bz0ZwXvpg8OX8mhH5NXCZszTpkwlUwUseq96CumbKwcURP9hZVRxWVqkhb/A+4g1V7
 DEcJcWvGjKFFkLhlwMo6C03JF99srWG00HP6c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ZMDBPgUsvp65+GDLE8L0NRSWZecIdZ0UtHWFD2Htqnw=;
 b=coFDV7QYaRklTznIpdDYsy1BaHPUX2QqP9Uw4SFAvAGDd1IQSyrYqRNV+kxcYqObYX
 fcaiTmewBp2Wt+iaFoXsRxD90sW9E4biiqbOVX7xCUjygm8wCqXW1714/EvO/qacLREu
 SX+jqNctZ4Tsjly99n3NvTdyTrQLHFVMRiBb6orouw1+SbhCT61NA9gikcO/iZLnUVbY
 gA3FOthkWblLPLfhLMe7iDD4AlGA+e+JUIkdx5rK6/WIScs+unqxk6AU7BZZVknFvZyf
 CGwdnvqMMLZBGiWG0zmo915icD2o37tDCFixDOXel04NIEP6NJpzMhGiB4aQVmyfwsvl
 /Ssg==
X-Gm-Message-State: APjAAAUOKobzmau7RUKH/UD46CxOopZMiPnc+9PEDfpL9uuGRAosmfxI
 MN7ND1JHAho7UFhFpxz9r1MdwUf6YVg=
X-Google-Smtp-Source: APXvYqzJe51bGYb8NZGClgANGj3jdnSypTw6KemdAvR8tFF+eeC0Z3rrmSy8p8uAJXHwdu84izU5iw==
X-Received: by 2002:a6b:e20a:: with SMTP id z10mr6988234ioc.76.1561577086858; 
 Wed, 26 Jun 2019 12:24:46 -0700 (PDT)
Received: from mail-io1-f47.google.com (mail-io1-f47.google.com.
 [209.85.166.47])
 by smtp.gmail.com with ESMTPSA id k5sm18485301ioj.47.2019.06.26.12.24.45
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Wed, 26 Jun 2019 12:24:45 -0700 (PDT)
Received: by mail-io1-f47.google.com with SMTP id h6so5929774ioh.3
 for <linux-rockchip@lists.infradead.org>; Wed, 26 Jun 2019 12:24:45 -0700 (PDT)
X-Received: by 2002:a5e:8f08:: with SMTP id c8mr6956221iok.52.1561577085074;
 Wed, 26 Jun 2019 12:24:45 -0700 (PDT)
MIME-Version: 1.0
References: <CGME20190619211151epcas3p4dbb163c034afa4063869c761b93e24b1@epcas3p4.samsung.com>
 <20190619210718.134951-1-dianders@chromium.org>
 <bec87373-48cc-0c55-9662-a74a7d2a47a0@samsung.com>
 <CAD=FV=WJBkYfRznh6aAyvgKgHb8-AG0hMORdKA0BXCL89wG_7w@mail.gmail.com>
 <a94d9554-fc93-a2d0-9a30-9604db8c123e@samsung.com>
In-Reply-To: <a94d9554-fc93-a2d0-9a30-9604db8c123e@samsung.com>
From: Doug Anderson <dianders@chromium.org>
Date: Wed, 26 Jun 2019 12:24:32 -0700
X-Gmail-Original-Message-ID: <CAD=FV=VNR1z_WL7rrfv-O5cXFjDowq3qZe-3tg9o9YHjQgyCAA@mail.gmail.com>
Message-ID: <CAD=FV=VNR1z_WL7rrfv-O5cXFjDowq3qZe-3tg9o9YHjQgyCAA@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] drm/bridge/synopsys: dw-hdmi: Handle audio for
 more clock rates
To: Andrzej Hajda <a.hajda@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_122448_361727_EC815F44 
X-CRM114-Status: GOOD (  15.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
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
Cc: Jernej Skrabec <jernej.skrabec@siol.net>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Jonas Karlman <jonas@kwiboo.se>, Maxime Ripard <maxime.ripard@bootlin.com>,
 David Airlie <airlied@linux.ie>, Neil Armstrong <narmstrong@baylibre.com>,
 LKML <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Sean Paul <seanpaul@chromium.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, Dylan Reid <dgreid@chromium.org>,
 Jerome Brunet <jbrunet@baylibre.com>, Sam Ravnborg <sam@ravnborg.org>,
 Cheng-Yi Chiang <cychiang@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi,

On Wed, Jun 26, 2019 at 2:56 AM Andrzej Hajda <a.hajda@samsung.com> wrote:
>
> >   AKA: anyone using auto-CTS won't notice any change
> > at all.  I guess the question is: with Auto-CTS should you pick the
> > "ideal" 6272 or a value that allows CTS to be the closest to integral
> > as possible.  By reading between the lines of the spec, I decided that
> > it was slightly more important to allow for an integral CTS.  If
> > achieving an integral CTS wasn't a goal then the spec wouldn't even
> > have listed special cases for any of the clock rates.  We would just
> > be using the ideal N and Auto-CTS and be done with it.  The whole
> > point of the tables they list is to make CTS integral.
>
>
> Specification recommends many contradictory things without explicit
> prioritization, at least I have not found it.
>
> So we should relay on our intuition.
>
> I guess that with auto-cts N we should follow recommendation - I guess
> most sinks have been better tested with recommended values.
>
> So what with non-auto-cts case:
>
> 1. How many devices do not have auto-cts? how many alternative TMDS
> clocks we have? Maybe it is theoretical problem.
>
> 2. Alternating CTS in software is possible, but quite
> complicated/annoying, but at least it will follow recommendation :)

It is OK w/ me if we want to drop my patch.  With the auto-CTS patch
it shouldn't matter anymore.  ...but I still wanted to post it to the
list for posterity in case it is ever useful for someone else.

-Doug

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

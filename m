Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43CB955468
	for <lists+linux-rockchip@lfdr.de>; Tue, 25 Jun 2019 18:26:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oGzwjF2XVHKMTTGPXxRVJe22Q636LhkplbVDXUywIk8=; b=fTnD7i30Br8D+e
	BOny9aR1GPOYpJ7dmeNJbdDvQxbHvCiL6jz+s8ChINIDdLSthLkBuNo1s4CiPlVaI2gNXFDqA4nxH
	kNKW7AekwL+Ot6Oqhg7hl91ip/U1CVQl2ZNUopSXUPD77UHdgGVs92P15ynf3IYlExRG4PEWcn4wa
	HKGU8NycoRH2VQ9Sgu7CZBdV7qwNoAeIG6eNo9ZYJZV0jZfdD7ZD+Ke+fZ4Ln8mkVqIstXgIhWJ7Y
	Fr49FbaCT2RDGWszf9BMzkB1+TfaBPFfT+tAhLU69RRYdg/qF+IOrXHNrRLwlXt36BE04r6U2EnNZ
	BK1ymtMMjvX2x9e9KyrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfoHR-0007w9-1w; Tue, 25 Jun 2019 16:26:49 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfoHN-0007vq-FI
 for linux-rockchip@lists.infradead.org; Tue, 25 Jun 2019 16:26:46 +0000
Received: by mail-io1-xd43.google.com with SMTP id w25so199501ioc.8
 for <linux-rockchip@lists.infradead.org>; Tue, 25 Jun 2019 09:26:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=gwY+oa4CU+2jLrCTvWh4nbvrkKnM/pKWMZeBvxC7ZU0=;
 b=UnAYvApESHYhIZR/6fC9tpaOr5kt+ZnKyBE9mrQhqGpqI2byLeJRHdhAOAAgquPl1T
 HbDW11YvB3zM5qCXzEXKmtW4ZCBN6EK+1UjFx+KwSt8v0elkLfQ0eK3KSju0odSDKVlW
 bKPaxgduKYKyR8eFnQWp8Tn2593l1UvURVSt8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gwY+oa4CU+2jLrCTvWh4nbvrkKnM/pKWMZeBvxC7ZU0=;
 b=gXzGEPw7gzinyBavfi8LOwMCT21TyT34g9HbYKl0rMfAYJVvqLCTOK02nzmxZJPFrI
 r/+h7qcOyHR7amka+2+w+AFEpN4e0wERPfczSLhDOtnmR/t5cbVKnczY/cbCNafSeK5S
 poruceUbnudIZNrCT2gOKiCtijNjj7RVrOSwT9s8v6dmprUAiQJAZffN8oZs48B9xNZj
 x+6rpvvNKjJp0MA5Y7hEeSfbxZ730+h8O0b3asjlTyLp3sb+kqv75xMqXl/fEG0sWCzF
 naGryCqhI9RP5vsi/C4SzaOUEP6fGHgzi3+YurvYvNBHQ5eiZJ/8hzZtNw7oKFBih39e
 /7fg==
X-Gm-Message-State: APjAAAUz+WkyXw7EnugWlJ/sncJ8sbb+PTpajqqJBYs0RprTQsTAq4+f
 Mt8SDucugjXsfB2Iqc0FpA6d9M7KJKY=
X-Google-Smtp-Source: APXvYqyJMkAndgOwoB6HjD+B2z31XquDl3swrEFt1NVfYjxl6xqjsoA81ILPYIRQNzEJLFBa33qDkg==
X-Received: by 2002:a6b:7606:: with SMTP id g6mr7642784iom.288.1561480004358; 
 Tue, 25 Jun 2019 09:26:44 -0700 (PDT)
Received: from mail-io1-f45.google.com (mail-io1-f45.google.com.
 [209.85.166.45])
 by smtp.gmail.com with ESMTPSA id w23sm21529271ioa.51.2019.06.25.09.26.43
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Tue, 25 Jun 2019 09:26:43 -0700 (PDT)
Received: by mail-io1-f45.google.com with SMTP id w25so199331ioc.8
 for <linux-rockchip@lists.infradead.org>; Tue, 25 Jun 2019 09:26:43 -0700 (PDT)
X-Received: by 2002:a6b:5103:: with SMTP id f3mr7084335iob.142.1561480003100; 
 Tue, 25 Jun 2019 09:26:43 -0700 (PDT)
MIME-Version: 1.0
References: <CGME20190619211151epcas3p4dbb163c034afa4063869c761b93e24b1@epcas3p4.samsung.com>
 <20190619210718.134951-1-dianders@chromium.org>
 <bec87373-48cc-0c55-9662-a74a7d2a47a0@samsung.com>
In-Reply-To: <bec87373-48cc-0c55-9662-a74a7d2a47a0@samsung.com>
From: Doug Anderson <dianders@chromium.org>
Date: Tue, 25 Jun 2019 09:26:28 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WJBkYfRznh6aAyvgKgHb8-AG0hMORdKA0BXCL89wG_7w@mail.gmail.com>
Message-ID: <CAD=FV=WJBkYfRznh6aAyvgKgHb8-AG0hMORdKA0BXCL89wG_7w@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] drm/bridge/synopsys: dw-hdmi: Handle audio for
 more clock rates
To: Andrzej Hajda <a.hajda@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_092645_539504_09E58A77 
X-CRM114-Status: GOOD (  24.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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


On Tue, Jun 25, 2019 at 9:07 AM Andrzej Hajda <a.hajda@samsung.com> wrote:
>
> On 19.06.2019 23:07, Douglas Anderson wrote:
> > Let's add some better support for HDMI audio to dw_hdmi.
> > Specifically:
> >
> > 1. For 44.1 kHz audio the old code made the assumption that an N of
> > 6272 was right most of the time.  That wasn't true and the new table
> > should pick a more ideal value.
>
>
> Why? I ask because it is against recommendation from HDMI specs.

The place where it does matter (and why I originally did this work) is
when you don't have auto-CTS.  In such a case you really need "N" and
"CTS" to make the math work and both be integral.  This makes sure
that you don't slowly accumulate offsets.  I'm hoping that this point
should be non-controversial so I won't argue it more.

I am an admitted non-expert, but I have a feeling that with Auto-CTS
either the old number or the new numbers would produce pretty much the
same experience.  AKA: anyone using auto-CTS won't notice any change
at all.  I guess the question is: with Auto-CTS should you pick the
"ideal" 6272 or a value that allows CTS to be the closest to integral
as possible.  By reading between the lines of the spec, I decided that
it was slightly more important to allow for an integral CTS.  If
achieving an integral CTS wasn't a goal then the spec wouldn't even
have listed special cases for any of the clock rates.  We would just
be using the ideal N and Auto-CTS and be done with it.  The whole
point of the tables they list is to make CTS integral.


> > 2. The new table has values from the HDMI spec for 297 MHz and 594
> > MHz.
> >
> > 3. There is now code to try to come up with a more idea N/CTS for
> > clock rates that aren't in the table.  This code is a bit slow because
> > it iterates over every possible value of N and picks the best one, but
> > it should make a good fallback.
> >
> > NOTES:
> > - The oddest part of this patch comes about because computing the
> >   ideal N/CTS means knowing the _exact_ clock rate, not a rounded
> >   version of it.  The drm framework makes this harder by rounding
> >   rates to kHz, but even if it didn't there might be cases where the
> >   ideal rate could only be calculated if we knew the real
> >   (non-integral) rate.  This means that in cases where we know (or
> >   believe) that the true rate is something other than the rate we are
> >   told by drm.
> > - This patch makes much less of a difference after the patch
> >   ("drm/bridge: dw-hdmi: Use automatic CTS generation mode when using
> >   non-AHB audio"), at least if you're using I2S audio.  The main goal
> >   of picking a good N is to make it possible to get a nice integral
> >   CTS value, but if CTS is automatic then that's much less critical.
>
>
> As I said above HDMI recommendations are different from those from your
> patch. Please elaborate why?
>
> Btw I've seen your old patches introducing recommended N/CTS calculation
> helpers in HDMI framework, unfortunately abandoned due to lack of interest.
>
> Maybe resurrecting them would be a good idea, with assumption there will
> be users :)

I have old patches introducing this into the HDMI framework?  I don't
remember them / can't find them.  Can you provide a pointer?

-Doug

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

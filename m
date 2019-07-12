Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02B5067371
	for <lists+linux-rockchip@lfdr.de>; Fri, 12 Jul 2019 18:37:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1E2Umehp+NAxzBul+I6+frAe+uZPiUp22zJ0vovSfJA=; b=dLqJPT3aase5gF
	/vzIceF1HLeSVT5KNjeXbZEb08hTyvvOFS5Fj7gM7v+WlP8WA7IrF2Lv1QM0n9ilpXUuOdYUFYCCm
	eTlglUeZz26pmMOVomSiGPrt8ghozr/A0Ozkd3qUIVqk68SPrkXWvS40JSK1No2VfC1pqVIP1AxZ4
	slOMCALThS9IZ5EaWYsXc5cgT4u530gOcaTiGpZP3E5qkmqK/ZeYdsAN4dZWNcAlIDAoHYqAoe2bR
	FRnSqBJfaPxJBy80PR6a1auUM/p1qBKCZQ1ZYIbU29HfO2HyaghiFoplirlzK0Cy/3oPqYn0nMZsT
	pNRuW3ZvQskbSyv4a9zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlyYT-000656-HY; Fri, 12 Jul 2019 16:37:53 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlyYP-00064N-KS
 for linux-rockchip@lists.infradead.org; Fri, 12 Jul 2019 16:37:51 +0000
Received: by mail-io1-xd41.google.com with SMTP id i10so21578951iol.13
 for <linux-rockchip@lists.infradead.org>; Fri, 12 Jul 2019 09:37:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=1uamx4VkpAz7OTzGeRs+kr2OaHae670D3WH4tTrkzLk=;
 b=Ung3RKmkytToVTSIaF1K1EPHzaSzlQCF3R2XbQcAJRyz7bl1mtx5b1PJhTJ9UiIz+u
 nuYp5Vid428d8OLD/ZRfdS8NudBt+rNJ6fSN+7yt3pimr+f/ITICt1z3eTLFIAnaH+jm
 f7weMJmRsYu3sNIeBe88h9k5/qQOslWZNh+IU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1uamx4VkpAz7OTzGeRs+kr2OaHae670D3WH4tTrkzLk=;
 b=SKeXSnAD0K6XSvD3s/xXdR1lceY1jd5a4B79v0DuEqKn+/6tjX8Lt5EQGrfSY1apKa
 uy41L1UgGwc4SpBywZ5HNcT5vhzOkHVaFLkyYQjHc7cuWg18f2OgrQGK3l6NbHm+1QxH
 e12vDKHr08GVTOSaLsQq2w0h2a1AXNqw3BPvusJRwPoehGPfngCF9jiAXup8nLtKIgHM
 YfzHkOqc1plBx/P0RLGJqYmEWrODWkZqi6fQi7uy+iYx2tmwY7mrDpQCl9UG0AplceTH
 gmvqDyuofDd7GQusYsAEoNHvQ9kw8zljtS1/H5zNSAhDiKzKxQ+HJ8UhP+IO+YyRwP18
 DK+Q==
X-Gm-Message-State: APjAAAXcdtd36dk7xWHIwCgR6Wn+rzLbmlibjCqkfC1/3aFi/wCBdD1Y
 AKYcUs9gYJJOuAX01l0a2PYnVqhe5dE=
X-Google-Smtp-Source: APXvYqxXt/kgdIhLaeu+r2IHUMIXd3dhZVf7Q/3Bi1vF27wdhpRf+car/2ytASgUikRW8aFPwFcpbg==
X-Received: by 2002:a6b:b3c1:: with SMTP id
 c184mr10361234iof.222.1562949468279; 
 Fri, 12 Jul 2019 09:37:48 -0700 (PDT)
Received: from mail-io1-f48.google.com (mail-io1-f48.google.com.
 [209.85.166.48])
 by smtp.gmail.com with ESMTPSA id n26sm6496568ioc.74.2019.07.12.09.37.46
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Fri, 12 Jul 2019 09:37:46 -0700 (PDT)
Received: by mail-io1-f48.google.com with SMTP id h6so21630251iom.7
 for <linux-rockchip@lists.infradead.org>; Fri, 12 Jul 2019 09:37:46 -0700 (PDT)
X-Received: by 2002:a5d:96d8:: with SMTP id r24mr11787238iol.269.1562949466057; 
 Fri, 12 Jul 2019 09:37:46 -0700 (PDT)
MIME-Version: 1.0
References: <20190711203455.125667-1-dianders@chromium.org>
 <20190712060737.GA9569@ravnborg.org>
In-Reply-To: <20190712060737.GA9569@ravnborg.org>
From: Doug Anderson <dianders@chromium.org>
Date: Fri, 12 Jul 2019 09:37:33 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WG7SbdFu+-Kpr9JDQpNhQW+nA6tbfT2inwgTYF0mgdpQ@mail.gmail.com>
Message-ID: <CAD=FV=WG7SbdFu+-Kpr9JDQpNhQW+nA6tbfT2inwgTYF0mgdpQ@mail.gmail.com>
Subject: Re: [PATCH v6 0/3] drm/panel: simple: Add mode support to devicetree
To: Sam Ravnborg <sam@ravnborg.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_093749_670297_A172D0D1 
X-CRM114-Status: GOOD (  15.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Heiko Stuebner <heiko@sntech.de>, David Airlie <airlied@linux.ie>,
 LKML <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Thierry Reding <thierry.reding@gmail.com>, Sean Paul <seanpaul@chromium.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Rob Herring <robh+dt@kernel.org>, Ezequiel Garcia <ezequiel@collabora.com>,
 Matthias Kaehlcke <mka@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi,

On Thu, Jul 11, 2019 at 11:07 PM Sam Ravnborg <sam@ravnborg.org> wrote:
>
> Hi Doug.
>
> On Thu, Jul 11, 2019 at 01:34:52PM -0700, Douglas Anderson wrote:
> > I'm reviving Sean Paul's old patchset to get mode support in device
> > tree.  The cover letter for his v3 is at:
> > https://lists.freedesktop.org/archives/dri-devel/2018-February/165162.html
> >
> > v6 of this patch is just a repost of the 3 DRM patches in v5 rebased
> > atop drm-misc.  A few notes:
> > - I've dropped the bindings patch.  Commit 821a1f7171ae ("dt-bindings:
> >   display: Convert common panel bindings to DT schema") has landed and
> >   Rob H said [1] that when that landed the bindings were implicitly
> >   supported.
> > - Since the bindings patch was dropped I am assuming that Heiko
> >   can just pick up the .dts patches from the v5 series.  I
> >   double-checked with him and he confirmed this is fine.  Thus I
> >   have left the device tree patches out of this version.
> >
> > There were some coding style discussions on v5 of the path but it's
> > been agreed that we can land this series as-is and after it lands we
> > can address the minor style issues.
> >
> > [1] https://lkml.kernel.org/r/CAL_JsqJGtUTpJL+SDEKi09aDT4yDzY4x9KwYmz08NaZcn=nHfA@mail.gmail.com
> >
> > Changes in v6:
> > - Rebased to drm-misc next
> > - Added tags
> ...
>
> Thanks for your patience with this.
> Applied to drm-misc-next and pushed out.

As promised, posted the follow-up patch addressing the style concerns
/ suggestions.  I didn't CC every last person here, but it's on LKML
and I'm happy for anyone to review it that is interested:

https://lkml.kernel.org/r/20190712163333.231884-1-dianders@chromium.org

-Doug

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

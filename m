Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18ED62C189
	for <lists+linux-rockchip@lfdr.de>; Tue, 28 May 2019 10:42:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U30fALFgIUe13lCuRX2vaV79d3r8pu3nFLEcVKRnz0U=; b=cHtGBF8Zb/nFxc
	VwUYmsZMWjowNYcFEbApt0esMOlWK9aIL+F9X9wTdltnTBkSszoc/vCv5dFoeixLGqK6ZR65BdClX
	knW53X5VEx5A0O7gXgZwqly/GC8qNgVSfAUt/4VLQvam6dhOgnhFtmCHqe19Mo7BnpSqegjLp/u8D
	kvMZNF1XvCZD3X0W/fhNdHVrCVU5m5+qq0OLDI9MdHDlS3pjC0SB16im1YY+di+8xg7A8Y8b36WgV
	H0sg35NEDaY9x2P4z8VIB6u4sm1XaLCAMh1DuKdZKcsDbiNlSq/FhWI+idrCBbIyJ1QuMjJ5P5+TM
	wx4bc7/pDIJbm2P1Sllg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVXgL-0004KD-5L; Tue, 28 May 2019 08:42:05 +0000
Received: from mail-lj1-f195.google.com ([209.85.208.195])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVXgI-0004Jl-BP; Tue, 28 May 2019 08:42:03 +0000
Received: by mail-lj1-f195.google.com with SMTP id q62so16861571ljq.7;
 Tue, 28 May 2019 01:42:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ygkFSrOUs2wAQrj519Ns5GvdxA1S7D4YiKeP8FBGjUc=;
 b=aZE7CkzpTOHInK61PojJkAgVGTPSnj4el9iHIehlLCzUdEqJeCGWS//EnAts7wSpJN
 qK1sqjUEGDUe4gCTRTq2LGpzKmpTYz9D/v5g2DsPEQBx3o1LDPQ7slkkQ2elm6ZEBrMz
 ve6OKJFbPF9nS+44xWGDKBLMejq7Jzjb8jT/pWJNeMSsPzkqmZ1ZLaW8c+zhWGWnkAK/
 9f7wuWV2b/Z1pKt0v7mRphvtnWddGSPECuHXl/MSLEX0LfgbhXKW6GYUQ+JI58D+F2Bz
 FRtEZZS1Uo1/+WoLlpNGHSErpIPILo4OCNzfZN6KUe+TLl8glL1xiFkc34d9TMW/GHvr
 fmQg==
X-Gm-Message-State: APjAAAUTolNZBAlRCW8+W9je23pxBJRBl5BsSBxVLubSt3s3h667uPtF
 A65ocd0ujWbRZMlswJO159DXlXMv25mFiJaAScc=
X-Google-Smtp-Source: APXvYqzZOuoB7xeUwboMimv2YSMlSWfGHoyt2S/rx8pW4inWIs7Uyh9nphOHLevt3f4ts4P2YOKp0CLg7C99oF1gcQ4=
X-Received: by 2002:a05:651c:150:: with SMTP id
 c16mr64013182ljd.65.1559032920568; 
 Tue, 28 May 2019 01:42:00 -0700 (PDT)
MIME-Version: 1.0
References: <5cec74e8.1c69fb81.37335.9d7b@mx.google.com>
 <0edab48f-06e5-9ed8-09be-7c9976ae1afb@collabora.com>
 <CAMuHMdUF1Csi1ZMccOj=kurijMLcA6G+TP_spsE+fnMvZR71Vw@mail.gmail.com>
 <de92e3bd-70e8-fcba-3c88-c04170704e7b@collabora.com>
In-Reply-To: <de92e3bd-70e8-fcba-3c88-c04170704e7b@collabora.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 28 May 2019 10:41:48 +0200
Message-ID: <CAMuHMdW9Rz=ZQ=wWg=vGJAzzM85+UnN1otKfJzVvbkTkPQ2g2g@mail.gmail.com>
Subject: Re: linusw/for-next boot bisection: v5.2-rc1-8-g73a790c68d7e on
 rk3288-veyron-jaq
To: Guillaume Tucker <guillaume.tucker@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_014202_386163_354FF4CF 
X-CRM114-Status: GOOD (  17.65  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.195 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.3 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.195 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.21
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
Cc: Elaine Zhang <zhangqing@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>,
 Tomeu Vizoso <tomeu.vizoso@collabora.com>,
 Linux PM list <linux-pm@vger.kernel.org>, Kevin Hilman <khilman@baylibre.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Eduardo Valentin <edubezval@gmail.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Mark Brown <broonie@kernel.org>, Matt Hart <matthew.hart@linaro.org>,
 mgalka@collabora.com, Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Zhang Rui <rui.zhang@intel.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Guillaume,

On Tue, May 28, 2019 at 10:36 AM Guillaume Tucker
<guillaume.tucker@collabora.com> wrote:
> On 28/05/2019 08:45, Geert Uytterhoeven wrote:
> > On Tue, May 28, 2019 at 9:13 AM Guillaume Tucker
> > <guillaume.tucker@collabora.com> wrote:
> >> This commit has now been reverted in mainline.  Would it be OK
> >> for you to rebase your for-next branch on v5.2-rc2 or cherry-pick
> >> the revert to avoid recurring bisections?
> >>
> >> Ideally this should have been fixed or reverted in mainline
> >> before v5.2-rc1 was released, or even earlier when this was first
> >> found in -next on 13th May.  Unfortunately it was overlooked and
> >> then spread to other branches like yours.
> >
> > I'm afraid it's gonna spread to even more for-next branches, as most
> > subsystem maintainers base their for-next branch on the previous rc1
> > release.  Typically maintainers do not rebase their for-next branches,
> > and do not cherry-pick fixes, unless they are critical for their
> > subsystem.  So you can expect this to show up in e.g. the m68k for-next
> > branch soon...
>
> That is what I feared, thanks for confirming.
>
> > Can't you mark this as a known issue, to prevent spending cycles on the
> > same bisection, and sending out more bisection reports for the same
> > issue?
>
> Not really, so I've disabled bisections in the linux-gpio tree
> and a few other maintainers' trees for now.  I'll see if we can
> come up with a more systematic way of suppressing bisections in
> similar cases (i.e. the issue has been fixed in mainline later
> than the base commit for the branch being tested).

Having a systematic way would be good, else you will have to disable
most other maintainers' trees soon, severely limiting test coverage,
or fall back to linux-next testing only, as linux-next will always include\
latest mainline.

Thanks!

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

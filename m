Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B921C5DD96
	for <lists+linux-rockchip@lfdr.de>; Wed,  3 Jul 2019 06:55:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YioEETTpQc5873oPCC7RUiCo8GTeH6+4IdLLAFS4eGo=; b=Y718u1A+EM819Y
	M7W758ozltd6nU1mDKwMZCNclJt4DQgC770mL6nOdNr1fNAoadwubFZRVma9aPssOE/nbTAjQu+z6
	jkAX9aswdFy2EiUkUu71aewPjkdb8+a3ZBo5urYXWKBL+rw4gT2JaXXWsbO2s4TdrUbtsmD1NCezp
	7zo3PXa3me+FQNWLhVF4sbSTkHakWRPdobUCEAuAc3WD0deYYYbjLekbh5gEeB5utr+373irtXD7N
	/FzVIkelS4l0N9qNwKTVZDvDY18X37UkIBdMZ6qoT0G4apMy+zHmO2HQCPZpDnIA02hLKVWtm/qDw
	w8nGv1YvRupYYNLNOAqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiXIZ-00057j-Np; Wed, 03 Jul 2019 04:55:15 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiXIV-00056Q-1K
 for linux-rockchip@lists.infradead.org; Wed, 03 Jul 2019 04:55:12 +0000
Received: by mail-io1-xd41.google.com with SMTP id r185so1705446iod.6
 for <linux-rockchip@lists.infradead.org>; Tue, 02 Jul 2019 21:55:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Dz5HtnV173FQfBMfXXnX/xMaAQPeeA9atZJs94y2ZNE=;
 b=MaWsuh6TbgZ6Y1ytSmhgmMuRvwKpUnM2Lm3L/1hO4mFnab9W8gwVqGT3YU4K2mDQTK
 w6Gevp/LkJQV7G6+bQg4WOXb4/Mq9EAAc8nm5DTV9Fqsu3jYgzXoLA39sIRBDDY0ghwj
 yoF75Sok83b5uMpWvaeKmDFRkreXrtkWm3gNE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Dz5HtnV173FQfBMfXXnX/xMaAQPeeA9atZJs94y2ZNE=;
 b=boA8OSomHzRb4YMc8v8ZjPFNuOZZP9zEQBNvXp8QFr9od6/tQXqDwjRilPHNncHrJW
 Sb6o5nxoYW2BP2vVo7F3f0lLMmMUCb/0o1SHMASIuyw+DUhwPxJQziDN5qYTbRZkpaJQ
 6rHRHjXe26yYEgKFjsIgfzuhqBDTfI4ofuSC9DPDl2kSFqdJ7Cm3gvy7dDsLGHlWcqFz
 qNZNoZjJS83a1ZZLnmi5QRqDMuBPFQ99PEV0z40+JluRPkNYHDkFjr6jNkSqUmtm1BmR
 sKc1lFs5BD2wS5g6Ofq8dg8cAQi+FCyCUO3RfbWIPKk8ToURjX1km36woT14ba/p0VUO
 smbQ==
X-Gm-Message-State: APjAAAWVK4pPOfDYG9YljJ88KfgBgE2M8ROFykBX/xGOxhhb4U3UbUsV
 Un84YVGcXLdMw4uh1mRdNsm5+cLXhK8=
X-Google-Smtp-Source: APXvYqxFrb9szVjnrhFNxBa+D96Xt+sB4WkG89FnzIZCrlZf1BcIh1zxTgJaq5rVRWoNUY4ZLy/rQg==
X-Received: by 2002:a6b:7a42:: with SMTP id k2mr7817381iop.214.1562129709707; 
 Tue, 02 Jul 2019 21:55:09 -0700 (PDT)
Received: from mail-io1-f51.google.com (mail-io1-f51.google.com.
 [209.85.166.51])
 by smtp.gmail.com with ESMTPSA id n7sm747569ioo.79.2019.07.02.21.55.08
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Tue, 02 Jul 2019 21:55:08 -0700 (PDT)
Received: by mail-io1-f51.google.com with SMTP id n5so1699722ioc.7
 for <linux-rockchip@lists.infradead.org>; Tue, 02 Jul 2019 21:55:08 -0700 (PDT)
X-Received: by 2002:a5d:885a:: with SMTP id t26mr8802188ios.218.1562129708023; 
 Tue, 02 Jul 2019 21:55:08 -0700 (PDT)
MIME-Version: 1.0
References: <20190620182056.61552-1-dianders@chromium.org>
 <CAD=FV=Wi21Emjg7CpCJfSRiKr_EisR20UO1tbPjAeJzdJNbSVw@mail.gmail.com>
In-Reply-To: <CAD=FV=Wi21Emjg7CpCJfSRiKr_EisR20UO1tbPjAeJzdJNbSVw@mail.gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Tue, 2 Jul 2019 21:54:58 -0700
X-Gmail-Original-Message-ID: <CAD=FV=UhNfhVG422=huthFSptoV4FXED=xPtArO2KkyNb1U3Xw@mail.gmail.com>
Message-ID: <CAD=FV=UhNfhVG422=huthFSptoV4FXED=xPtArO2KkyNb1U3Xw@mail.gmail.com>
Subject: Re: [PATCH] Revert "ARM: dts: rockchip: add startup delay to
 rk3288-veyron panel-regulators"
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_215511_105498_0C315712 
X-CRM114-Status: GOOD (  20.59  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 LKML <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Matthias Kaehlcke <mka@chromium.org>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi,

On Thu, Jun 20, 2019 at 1:31 PM Doug Anderson <dianders@chromium.org> wrote:
>
> Hi,
>
> On Thu, Jun 20, 2019 at 11:21 AM Douglas Anderson <dianders@chromium.org> wrote:
> >
> > This reverts commit 1f45e8c6d0161f044d679f242fe7514e2625af4a.
> >
> > This 100 ms mystery delay is not on downstream kernels and no longer
> > seems needed on upstream kernels either [1].  Presumably something in the
> > meantime has made things better.  A few possibilities for patches that
> > have landed in the meantime that could have made this better are
> > commit 3157694d8c7f ("pwm-backlight: Add support for PWM delays
> > proprieties."), commit 5fb5caee92ba ("pwm-backlight: Enable/disable
> > the PWM before/after LCD enable toggle."), and commit 6d5922dd0d60
> > ("ARM: dts: rockchip: set PWM delay backlight settings for Veyron")
> >
> > Let's revert and get our 100 ms back.
> >
> > [1] https://lkml.kernel.org/r/2226970.BAPq4liE1j@diego
> >
> > Signed-off-by: Douglas Anderson <dianders@chromium.org>
> > ---
> >
> >  arch/arm/boot/dts/rk3288-veyron-jaq.dts    | 1 -
> >  arch/arm/boot/dts/rk3288-veyron-jerry.dts  | 1 -
> >  arch/arm/boot/dts/rk3288-veyron-minnie.dts | 1 -
> >  arch/arm/boot/dts/rk3288-veyron-speedy.dts | 1 -
> >  4 files changed, 4 deletions(-)
>
> Maybe wait before applying.  I've been running reboot tests now with
> this patch applied (among others) and with enough reboots I managed to
> see:
>
> [    5.682418] rockchip-dp ff970000.dp: eDP link training failed (-5)
>
> I'll see if I can confirm that it's this patch and why things are
> different compared to downstream.

OK, I finally got back to this and confirmed:

1. The above error is actually somewhat harmless.  The eDP failure
will be retried automatically despite the scary message.  Specifically
see the loop in analogix_dp_bridge_enable().  I confirmed that after
seeing the error the screen came up just fine (I looked at the screen
in two actual instances but I believe it's pretty much always fine).

2. I haven't seen any evidence that the eDP link training happens any
more often with this revert in place.  Specifically, I see the same
message in the logs (at what appears to be the same rate) with or
without this revert.

3. Probably the link-training failures here are the same ones we
debugged for PSR for rk3399-gru-kevin that we fixed by making the eDP
PCLK rate exactly 24 MHz.  See <https://crrev.com/c/433393> for
details.  On rk3399-gru-kevin it was super important to resolve the
root cause of these errors because we had PSR (which meant we were
constantly taking to the eDP controller).  On rk3288-veyron devices
with no PSR the retry should be a fine solution and it doesn't seem
like a good idea to fully rejigger our clock plan to fix the root
cause.


NOTE: I saw _one_ case on rk3288-veyron-minnie where the screen looked
wonky at bootup and I saw the eDP link training error in the logs.
That's what originally made me cautious.  I haven't been able to
reproduce this, but presumably I just got super unlucky in that one
case.  I've left devices rebooting all day at work and haven't seen
the wonky screen since then.


Summary: I think this revert is just fine.


-Doug

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

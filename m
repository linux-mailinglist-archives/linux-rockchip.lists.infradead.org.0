Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98EFE2101F
	for <lists+linux-rockchip@lfdr.de>; Thu, 16 May 2019 23:39:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vS4TBipAfPawWfSTOlIql18eDsjD+aLTJ3/PiXEH3H0=; b=m4W3U5RvF0ovNr
	UV2KxlMC7sV4HC7UB2joL3gg3idEmj2La3HI5JI1rKZyC29n4Luotj2lnq8CwMGSCpSzrJlYGcSPq
	Brfh5EezFbneO4l3OlBa0LSnG6t40qPzznX8H7F9bMFfSOGSI//t4bjCkoJJn0oEWsoKl/x9NEP8z
	DYmgREfNNpzQ6YFlw5uGf8iIazYivPA/bmqlPett5Ghj3J3sMJezhWqCCKhVxFWOM2PT+E+z5HXkR
	aQ8udc93kU6DJEG3y7CLWcFQCt+AQthJ2I7y6ND9UdXKgNBm5s2vKbZXB9E6Nb8rP7nBTd2LZy1rQ
	2Lg3R95Nk9sXFRz2H1rQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRO5s-0008O9-OR; Thu, 16 May 2019 21:39:16 +0000
Received: from mail-vs1-xe41.google.com ([2607:f8b0:4864:20::e41])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRO5p-0008Nk-HZ
 for linux-rockchip@lists.infradead.org; Thu, 16 May 2019 21:39:15 +0000
Received: by mail-vs1-xe41.google.com with SMTP id o5so3319114vsq.4
 for <linux-rockchip@lists.infradead.org>; Thu, 16 May 2019 14:39:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=++a8Pfd1pmd0gtgzMiYzStSZkT1QAJ0q9LoMMmyznno=;
 b=lxC0mVIjA0SLzDUNfcqRwxoiM0ULrrdBItgvpMV0PYh4yCZN/egZlHDYXZIOCb0MWy
 MEptyIyNH17TyhG2+6tHcF8ypoGmsF8PJqLzkBm6+Qlwyk2Q/8Ro+UcRneAkuDiSuMtV
 KnOVeynDlXHVxD7AA7uJiQXAlzHOQX14yDO8c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=++a8Pfd1pmd0gtgzMiYzStSZkT1QAJ0q9LoMMmyznno=;
 b=Yda3D3d0S1Zymsrja0wgOZoeOSQ7Qn631gus8cYW0iWYXNru4st15m1SAwUxEALKLv
 OwFpOwaK3S+MiXTqcfNQmjE0SoJPCgwJKvZBCOnhXqrtpWCqxQScXDo1E6ieCNis/s7k
 lLnO3AFNm/qIutODJzUwzyiJSgnbi68BiFudkNPJo7ced475YIxN+QDxy8uHtmPleHFB
 PgeW+NlxwpBSWe0REMqvR0chvdgE6hGZt489ADOBuHI1FXFztx+n4WkGLJeIw8ellb70
 hOE3TZ5PlZcarIsX5dLe7oJtftQmzx16Nz3l7MOI/NTiKWANFVJnPXDehOzdaP2CTfyz
 WEyg==
X-Gm-Message-State: APjAAAWIZlw2INr5KXLVil0sv/AnxXemRVwgObfaud4nytyrU/RxUJVK
 IBTeFK16M3zpZIUm2pQY80AkxZ6taac=
X-Google-Smtp-Source: APXvYqyDT551fj60t3rZYYMH8UeVeoyAAcpfMP+URPgyu7CEdtY9gUGrffqPxo5jXoN0lOA1hYrnOw==
X-Received: by 2002:a67:f610:: with SMTP id k16mr19839196vso.85.1558042751096; 
 Thu, 16 May 2019 14:39:11 -0700 (PDT)
Received: from mail-vs1-f48.google.com (mail-vs1-f48.google.com.
 [209.85.217.48])
 by smtp.gmail.com with ESMTPSA id q6sm1262734vsd.25.2019.05.16.14.39.07
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Thu, 16 May 2019 14:39:08 -0700 (PDT)
Received: by mail-vs1-f48.google.com with SMTP id o10so3271113vsp.12
 for <linux-rockchip@lists.infradead.org>; Thu, 16 May 2019 14:39:07 -0700 (PDT)
X-Received: by 2002:a67:dd8e:: with SMTP id i14mr18643024vsk.149.1558042747509; 
 Thu, 16 May 2019 14:39:07 -0700 (PDT)
MIME-Version: 1.0
References: <5cdae78b.1c69fb81.a32a9.870f@mx.google.com>
In-Reply-To: <5cdae78b.1c69fb81.a32a9.870f@mx.google.com>
From: Doug Anderson <dianders@chromium.org>
Date: Thu, 16 May 2019 14:38:52 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WDjUBvwoAaWNOmXPaLpZCccpAgRWDzRSnvsQ62TFwVmQ@mail.gmail.com>
Message-ID: <CAD=FV=WDjUBvwoAaWNOmXPaLpZCccpAgRWDzRSnvsQ62TFwVmQ@mail.gmail.com>
Subject: Re: next/master boot bisection: next-20190514 on rk3288-veyron-jaq
To: "kernelci.org bot" <bot@kernelci.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_143913_608572_22845097 
X-CRM114-Status: GOOD (  13.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Elaine Zhang <zhangqing@rock-chips.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Tomeu Vizoso <tomeu.vizoso@collabora.com>, Linux PM <linux-pm@vger.kernel.org>,
 Guillaume Tucker <guillaume.tucker@collabora.com>, mgalka@collabora.com,
 LKML <linux-kernel@vger.kernel.org>, Eduardo Valentin <edubezval@gmail.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Mark Brown <broonie@kernel.org>, matthew.hart@linaro.org,
 Kevin Hilman <khilman@baylibre.com>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Zhang Rui <rui.zhang@intel.com>, Matthias Kaehlcke <mka@chromium.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Heiko Stuebner <heiko@sntech.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi,

From: kernelci.org bot <bot@kernelci.org>
Date: Tue, May 14, 2019 at 9:06 AM
To: <tomeu.vizoso@collabora.com>, <guillaume.tucker@collabora.com>,
<mgalka@collabora.com>, <broonie@kernel.org>,
<matthew.hart@linaro.org>, <khilman@baylibre.com>,
<enric.balletbo@collabora.com>, Elaine Zhang, Eduardo Valentin, Daniel
Lezcano
Cc: Heiko Stuebner, <linux-pm@vger.kernel.org>,
<linux-kernel@vger.kernel.org>, <linux-rockchip@lists.infradead.org>,
Zhang Rui, <linux-arm-kernel@lists.infradead.org>

> * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
> * This automated bisection report was sent to you on the basis  *
> * that you may be involved with the breaking commit it has      *
> * found.  No manual investigation has been done to verify it,   *
> * and the root cause of the problem may be somewhere else.      *
> * Hope this helps!                                              *
> * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
>
> next/master boot bisection: next-20190514 on rk3288-veyron-jaq
>
> Summary:
>   Start:      0a13f187b16a Add linux-next specific files for 20190514
>   Details:    https://kernelci.org/boot/id/5cda7f2259b514876d7a3628
>   Plain log:  https://storage.kernelci.org//next/master/next-20190514/arm/multi_v7_defconfig+CONFIG_EFI=y+CONFIG_ARM_LPAE=y/gcc-8/lab-collabora/boot-rk3288-veyron-jaq.txt
>   HTML log:   https://storage.kernelci.org//next/master/next-20190514/arm/multi_v7_defconfig+CONFIG_EFI=y+CONFIG_ARM_LPAE=y/gcc-8/lab-collabora/boot-rk3288-veyron-jaq.html
>   Result:     691d4947face thermal: rockchip: fix up the tsadc pinctrl setting error
>
> Checks:
>   revert:     PASS
>   verify:     PASS
>
> Parameters:
>   Tree:       next
>   URL:        git://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
>   Branch:     master
>   Target:     rk3288-veyron-jaq
>   CPU arch:   arm
>   Lab:        lab-collabora
>   Compiler:   gcc-8
>   Config:     multi_v7_defconfig+CONFIG_EFI=y+CONFIG_ARM_LPAE=y
>   Test suite: boot
>
> Breaking commit found:
>
> -------------------------------------------------------------------------------
> commit 691d4947faceb8bd841900049e07c81c95ca4b0d
> Author: Elaine Zhang <zhangqing@rock-chips.com>
> Date:   Tue Apr 30 18:09:44 2019 +0800
>
>     thermal: rockchip: fix up the tsadc pinctrl setting error
>
>     Explicitly use the pinctrl to set/unset the right mode
>     instead of relying on the pinctrl init mode.
>     And it requires setting the tshut polarity before select pinctrl.
>
>     When the temperature sensor mode is set to 0, it will automatically
>     reset the board via the Clock-Reset-Unit (CRU) if the over temperature
>     threshold is reached. However, when the pinctrl initializes, it does a
>     transition to "otp_out" which may lead the SoC restart all the time.
>
>     "otp_out" IO may be connected to the RESET circuit on the hardware.
>     If the IO is in the wrong state, it will trigger RESET.
>     (similar to the effect of pressing the RESET button)
>     which will cause the soc to restart all the time.
>
>     Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
>     Reviewed-by: Daniel Lezcano <daniel.lezcano@linaro.org>
>     Signed-off-by: Eduardo Valentin <edubezval@gmail.com>

I can confirm that the above commit breaks my jerry, though I haven't
dug into the details.  :(  Is anyone fixing?  For now I'm just booting
with the revert.


-Doug

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

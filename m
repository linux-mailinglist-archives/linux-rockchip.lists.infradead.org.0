Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0F744DB41
	for <lists+linux-rockchip@lfdr.de>; Thu, 20 Jun 2019 22:31:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HEqPduXAvch3vqruP7w4bicDHZ98bISnv5h3F4bA8Sg=; b=JxP+P5VdfoHLav
	OSEkt9Rfvy5hbP8NgULy21zKAw+iu33mjTOg5vOBWnCzGMlLw6Ga5FNqKK/XnC7v+v/6eV8g19lYq
	l6SLXacb9UfrCbjc4Ajy16KdE5Mz67noaylXg210ejNjUqmmyz+p+hWQAzy8CychygVophVC/FfuG
	r8gD8oSJmOugIH88Zao30ehwCQ8XCgfdaf0uIulTB3i288PeEIovqvrhM2jhfab4chHjZBQ4HqfrB
	M9w3gGLyQmvteI3FpNwHEDMKLqZQ65XEWXfjCJheKWaViAzWIzairkuh0fDOtDmxD1auz7PJXXFzT
	HnQsrbJmt1Y+ZyPX3FTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1he3iT-0004Gi-Hj; Thu, 20 Jun 2019 20:31:29 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1he3iQ-0004FX-1C
 for linux-rockchip@lists.infradead.org; Thu, 20 Jun 2019 20:31:27 +0000
Received: by mail-io1-xd42.google.com with SMTP id w25so1701489ioc.8
 for <linux-rockchip@lists.infradead.org>; Thu, 20 Jun 2019 13:31:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/RIT3PGSIDktw6riBTCLlesL4b2Jegy8h8HP+jn0p40=;
 b=Iz+3qSD6WbRhUE+tFCZqsR6W+T43RQqlhJuaueVgnsR+UHXqI6yGDiXDmoAN2KQV+J
 K7hg/B5bhJJNeAfOcSvC9amZalXql2GlhpAuSC3SORlAuoH0aFCsWHNWnVuqQGKr3bWe
 AvfJ6cVBI86oXbCiPbIGzMw+OcyhdOGqhwB0E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/RIT3PGSIDktw6riBTCLlesL4b2Jegy8h8HP+jn0p40=;
 b=MkS05UB1osXO+hIOzt/5U5cSsnNOjk+MzRZwjdVwP2DmERc/wzmH7+FfgOnY9vPlo7
 hW/E3PR/wOZh2dCgsVa33DUjiycPc1F7tUFjqA6eM6Wxh9J5vOMEPdkVUgpnhwOXlMuk
 B5/OiQiwL5DGw0oJytzd1uxF/fcMzWDcPACKECbpUcYnEVTghWJoHbC/RZR0sRGJof+S
 94PCeFA9hgfx2JXZ/d5yzTSjM9+Tc4yq2a/uUggOe+7Qc4cxUQrA3cmtUEevwVMm3B39
 i61j9UIoX7x02zjofkkEkCPF6STnMoU3gPNFlvJTldUGwYGltrMD3tiIMHS+SGAG8aWn
 ngzg==
X-Gm-Message-State: APjAAAV4ns20w14otYv5vHReg+lveis5TJm1fsGnKPS9TAr28ENsn57j
 xLgjqK7qPb+zE9bHCY0CuULv6LqJjBc=
X-Google-Smtp-Source: APXvYqwNXtPdPowDeMG6ECMBcrks12TB+220e1bzOKVY7xjqfhOpXh4DSwmWAKW+dOM4sI7avMirkg==
X-Received: by 2002:a02:ca57:: with SMTP id i23mr22575910jal.25.1561062684107; 
 Thu, 20 Jun 2019 13:31:24 -0700 (PDT)
Received: from mail-io1-f50.google.com (mail-io1-f50.google.com.
 [209.85.166.50])
 by smtp.gmail.com with ESMTPSA id c23sm1176681iod.11.2019.06.20.13.31.23
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Thu, 20 Jun 2019 13:31:23 -0700 (PDT)
Received: by mail-io1-f50.google.com with SMTP id r185so7050359iod.6
 for <linux-rockchip@lists.infradead.org>; Thu, 20 Jun 2019 13:31:23 -0700 (PDT)
X-Received: by 2002:a5d:8ccc:: with SMTP id k12mr9824185iot.141.1561062682954; 
 Thu, 20 Jun 2019 13:31:22 -0700 (PDT)
MIME-Version: 1.0
References: <20190620182056.61552-1-dianders@chromium.org>
In-Reply-To: <20190620182056.61552-1-dianders@chromium.org>
From: Doug Anderson <dianders@chromium.org>
Date: Thu, 20 Jun 2019 13:31:09 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Wi21Emjg7CpCJfSRiKr_EisR20UO1tbPjAeJzdJNbSVw@mail.gmail.com>
Message-ID: <CAD=FV=Wi21Emjg7CpCJfSRiKr_EisR20UO1tbPjAeJzdJNbSVw@mail.gmail.com>
Subject: Re: [PATCH] Revert "ARM: dts: rockchip: add startup delay to
 rk3288-veyron panel-regulators"
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_133126_105223_C1C5BC6B 
X-CRM114-Status: GOOD (  11.52  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On Thu, Jun 20, 2019 at 11:21 AM Douglas Anderson <dianders@chromium.org> wrote:
>
> This reverts commit 1f45e8c6d0161f044d679f242fe7514e2625af4a.
>
> This 100 ms mystery delay is not on downstream kernels and no longer
> seems needed on upstream kernels either [1].  Presumably something in the
> meantime has made things better.  A few possibilities for patches that
> have landed in the meantime that could have made this better are
> commit 3157694d8c7f ("pwm-backlight: Add support for PWM delays
> proprieties."), commit 5fb5caee92ba ("pwm-backlight: Enable/disable
> the PWM before/after LCD enable toggle."), and commit 6d5922dd0d60
> ("ARM: dts: rockchip: set PWM delay backlight settings for Veyron")
>
> Let's revert and get our 100 ms back.
>
> [1] https://lkml.kernel.org/r/2226970.BAPq4liE1j@diego
>
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> ---
>
>  arch/arm/boot/dts/rk3288-veyron-jaq.dts    | 1 -
>  arch/arm/boot/dts/rk3288-veyron-jerry.dts  | 1 -
>  arch/arm/boot/dts/rk3288-veyron-minnie.dts | 1 -
>  arch/arm/boot/dts/rk3288-veyron-speedy.dts | 1 -
>  4 files changed, 4 deletions(-)

Maybe wait before applying.  I've been running reboot tests now with
this patch applied (among others) and with enough reboots I managed to
see:

[    5.682418] rockchip-dp ff970000.dp: eDP link training failed (-5)

I'll see if I can confirm that it's this patch and why things are
different compared to downstream.

-Doug

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

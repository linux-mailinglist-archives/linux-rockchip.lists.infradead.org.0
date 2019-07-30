Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37F417B117
	for <lists+linux-rockchip@lfdr.de>; Tue, 30 Jul 2019 20:02:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x6csxMVpK1Z7aAJehM8ERWm0oQF/Flg9fnddOixvzBg=; b=Na6JKQpuVP4I1L
	wBQhhV+ceQJ240TAYbDUyBm7dyRCac8WNk4ASRrf3VKYR7gr4PFGuNDJRMgmTmrlYvK9Kanda5pwV
	EMr8yDUBhcfcoi4pGuPlegn+faeQGGnw7Sag7fITwsrnlTLbV0K0WO/1v1Gmhc5w6zHulvxzVj9V3
	UCcyQ4z78Bsx6Pvl1CwVw3AiJTiCy4quvdQ1gOsq0chwLHOINiTQh01SsawZxT0CwQTomXIn/9Us8
	zBI3qhubq8gb+Kph840Qj1743YWZXsvlazJ7rG6N4rNfpXedfV5K1Vd02ARr/66mtfZSTNhE3aXGx
	HaJMxMCuZollHXfcArkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsWRl-0004R7-Kj; Tue, 30 Jul 2019 18:02:01 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsWRi-0004QU-JO
 for linux-rockchip@lists.infradead.org; Tue, 30 Jul 2019 18:01:59 +0000
Received: by mail-io1-xd41.google.com with SMTP id h6so5021915iom.7
 for <linux-rockchip@lists.infradead.org>; Tue, 30 Jul 2019 11:01:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=NcAR3GqqxpAusQVog8Fhc1feuDH351bpfQTCcdx/nxs=;
 b=STnYbrirbKr1yAmc2nPF92sj0DFq3tq71Bs1c1x0ibWy4hdKDtZ8Tq4VPh1Kn85/6B
 w6lcKTR8uT01woEtqCg9jLmTWvC64bWHDataDtPgVlKtQQaaffkWMeVo4I/xwBfioTRL
 EcR2XKnbW3Nia+1xvzACV2DzMbUJEtS9EKIhY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NcAR3GqqxpAusQVog8Fhc1feuDH351bpfQTCcdx/nxs=;
 b=CXd08/lr3GYj8k7p+yraolAaQQAF2cBIREUoP5G0SrSa5LY+EIVcG0gfwCYbXcd8py
 etThhTB8Ez8AGUj3zmG2/FGAZC3vw+L6j6CfwGKbqOF76QXzYBVeKHKN3jCJMGQjuTaz
 +jwn159JSDNjP2P5X1WG0gB/1/C1PkeQgbIn/fx5RnqDcl0dxivuHXHjB8itbgrZmOzf
 9QOE/nbyizUEaoybg3MnuznszgicH6xgoGtP85hEh9YPpB0kGhugWxeEz2Sc6vpQTvi4
 EJ5vaK0RpVNnHfoCiGH9HXrCwQE6sn5DCgUwMajToyxT0xMCR12o/VYhPmCsMoL64Rq+
 ok/A==
X-Gm-Message-State: APjAAAVUlKBezT805thU16RH3Q+1hSQ6jKqvFjgLoRhiKSbTq+zUCZ0t
 1k6J691m/v3UM1eG0ljSIfj7+CTfoQ0=
X-Google-Smtp-Source: APXvYqw5XiMG1OpDBcOzZW5Y+d62I7T/Nt0AGEogqzGw+tLH+bIJH4D09iYVRzAekEeoB2TL+kWwig==
X-Received: by 2002:a6b:f90f:: with SMTP id j15mr101314672iog.43.1564509716252; 
 Tue, 30 Jul 2019 11:01:56 -0700 (PDT)
Received: from mail-io1-f46.google.com (mail-io1-f46.google.com.
 [209.85.166.46])
 by smtp.gmail.com with ESMTPSA id b20sm51731033ios.44.2019.07.30.11.01.54
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Tue, 30 Jul 2019 11:01:55 -0700 (PDT)
Received: by mail-io1-f46.google.com with SMTP id s7so130063572iob.11
 for <linux-rockchip@lists.infradead.org>; Tue, 30 Jul 2019 11:01:54 -0700 (PDT)
X-Received: by 2002:a6b:5103:: with SMTP id f3mr103345503iob.142.1564509714317; 
 Tue, 30 Jul 2019 11:01:54 -0700 (PDT)
MIME-Version: 1.0
References: <20190730173444.56741-1-mka@chromium.org>
In-Reply-To: <20190730173444.56741-1-mka@chromium.org>
From: Doug Anderson <dianders@chromium.org>
Date: Tue, 30 Jul 2019 11:01:42 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Wub9Wkc5t4iQRjBK8R_d_oh4PoHPwLHb4T5+Meij7sSg@mail.gmail.com>
Message-ID: <CAD=FV=Wub9Wkc5t4iQRjBK8R_d_oh4PoHPwLHb4T5+Meij7sSg@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: rockchip: A few fixes for veyron-{fievel, tiger}
To: Matthias Kaehlcke <mka@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_110158_635845_FAA2C60B 
X-CRM114-Status: GOOD (  11.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Heiko Stuebner <heiko@sntech.de>, LKML <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi,

On Tue, Jul 30, 2019 at 10:34 AM Matthias Kaehlcke <mka@chromium.org> wrote:
>
> @@ -130,12 +138,13 @@
>                         regulator-max-microvolt = <1800000>;
>                         regulator-name = "vdd18_lcdt";
>                         regulator-state-mem {
> -                               regulator-on-in-suspend;
> +                               regulator-off-in-suspend;
>                                 regulator-suspend-microvolt = <1800000>;

Please remove "regulator-suspend-microvolt = <1800000>;" which doesn't
make sense once you have "regulator-off-in-suspend".


>                         };
>                 };
>
> -               /* This is not a pwren anymore, but the real power supply,
> +               /*
> +                * This is not a pwren anymore, but the real power supply,
>                  * vdd10_lcd for HDMI_AVDD_1V0
>                  */
>                 vdd10_lcd: LDO_REG7 {
> @@ -145,7 +154,7 @@
>                         regulator-max-microvolt = <1000000>;
>                         regulator-name = "vdd10_lcd";
>                         regulator-state-mem {
> -                               regulator-on-in-suspend;
> +                               regulator-off-in-suspend;
>                                 regulator-suspend-microvolt = <1000000>;

Please remove "regulator-suspend-microvolt = <1000000>;" which doesn't
make sense once you have "regulator-off-in-suspend".


>                         };
>
> @@ -159,7 +168,7 @@
>                         regulator-max-microvolt = <3300000>;
>                         regulator-name = "vcc33_ccd";
>                         regulator-state-mem {
> -                               regulator-on-in-suspend;
> +                               regulator-off-in-suspend;
>                                 regulator-suspend-microvolt = <3300000>;

Please remove "regulator-suspend-microvolt = <3300000>;" which doesn't
make sense once you have "regulator-off-in-suspend".


Other than those things, this patch looks good to me and feel free to
add my Reviewed-by.  NOTE: when I tried applying this to my tree git
complained and I had to apply manually.  Could you try sending this
patch atop Heiko's for-next tree?  The yell I got:

error: sha1 information is lacking or useless
(arch/arm/boot/dts/rk3288-veyron-fievel.dts).
error: could not build fake ancestor


-Doug

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

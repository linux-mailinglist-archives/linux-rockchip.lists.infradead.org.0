Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF0BC17CB4
	for <lists+linux-rockchip@lfdr.de>; Wed,  8 May 2019 16:59:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vWicVJHBjBK55egIMdsLYqWrFelvtyOzCJ200u8ex4w=; b=tc7U/C9bjqBWIb
	zw3MoqoXIbVSKpgKbxf3qzx9CyM/1UifqGVPip8oCzt0oDWm8epZwYRu6MA8hAJExTaUF2WpfcUTm
	fySISlQvLLAELhN1LdbXkwyOWPhiDm5mweOw5fUCJIhEwyIT8ChJvNNKf/Qw6mIPsrqr+E/547K6L
	dyNyKK8KbI0ip7oP7eP7LKypD2dtR3hr/dSAs5MyK9rqF5Rue3m6w81j6vQ1y2phNQ/8YdVbNZkVI
	8a9KEv31KUDpRhCXEB+NGx+KlGxtR80JL9ux0TUgDZvAb7ZbsCeMjVStnWufCrdXZ5Hn5hqrDnbxf
	8XdrJ0arszNGiYD+qtZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOO2e-00036w-0I; Wed, 08 May 2019 14:59:32 +0000
Received: from mail-it1-x141.google.com ([2607:f8b0:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOO2Z-00036L-V7
 for linux-rockchip@lists.infradead.org; Wed, 08 May 2019 14:59:29 +0000
Received: by mail-it1-x141.google.com with SMTP id g71so4396066ita.5
 for <linux-rockchip@lists.infradead.org>; Wed, 08 May 2019 07:59:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=JhOOq0CNhx9PvURht02cW9gqBe9dn/turvBxkkRBIZ0=;
 b=FaOG+au1W0W+GM4Rlyqrkro5+ad9g3y/hZClOpgyeNxZ8Kvoj8JQzMLBsRbhAkp8QB
 cOr8ToppbZe+nLxUv0JLeLiU8su6Z+nuxiPKqDBCyjYxcZfMxAbixYXrpemIYvXrDSw9
 6zf/wGJTEu4jGxEZk0e5QuF2jzeNRJ0ZgeEVA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=JhOOq0CNhx9PvURht02cW9gqBe9dn/turvBxkkRBIZ0=;
 b=VyUWgBnx10ZWd48gz1Cj2ann+ndu9PjaeDSRNhrnymiWu0SHo87fdHpgtKp5QlbXxE
 +xOEphKYgPC/aTEvpTJ691SRGoDvn4qFZW1Wil0X7T0i1P3rAyDuo462AbOQ+wbFX92R
 1Rmq0H4xU9TUn5wvYPi/lI77BnzLe2dbM7B5PbxQVVnVRTOUA3UXOA7Cl9P6y/SYcXLx
 /or6rZjamb8JN+LtPvqwipFo1iB9lVhuF5Igdlm/iHdIe6cXtu/D+eR8PPjDZj5mWeEF
 JtYAKiREdRlVLgFEXthXqhm7LyKh+AYCGfAPBugEWc4kBM3McpoPyxkL2vGLWCXSWGOI
 Dyxg==
X-Gm-Message-State: APjAAAXzusWjx6f97vDzkqaKJdhjo6/vTOAp2yVqSaKjop98zdQOCEqW
 Or+9aDCTWc2vcczWuaRcoRvJk+HW0cPupjFIMphBAg==
X-Google-Smtp-Source: APXvYqwApSMfv0I4nlMeHPB7DG9Tg0iHMfBQV9YRJtIu8C4rcZHs2q6rpC2HFq7NAsCXow1erzu+XiXd/pBWrhj8gzI=
X-Received: by 2002:a24:65cf:: with SMTP id u198mr3834196itb.32.1557327566322; 
 Wed, 08 May 2019 07:59:26 -0700 (PDT)
MIME-Version: 1.0
References: <20190508054151.21762-1-jagan@amarulasolutions.com>
 <20190508054151.21762-6-jagan@amarulasolutions.com>
 <649bcf2d-429e-cd6d-1ed6-f797604fb90c@arm.com>
In-Reply-To: <649bcf2d-429e-cd6d-1ed6-f797604fb90c@arm.com>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Wed, 8 May 2019 20:29:14 +0530
Message-ID: <CAMty3ZC-XrcueoqwVyUfq3vHitJ5dniN1vU_SFLpaLc_n3jShg@mail.gmail.com>
Subject: Re: [RESEND PATCH v7 05/11] rockchip: dts: rk3399: nanopi4: Use CD
 pin as RK_FUNC_1
To: Robin Murphy <robin.murphy@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_075928_472178_71041AC5 
X-CRM114-Status: GOOD (  25.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: U-Boot-Denx <u-boot@lists.denx.de>, Simon Glass <sjg@chromium.org>,
 Kever Yang <kever.yang@rock-chips.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Akash Gajjar <akash@openedev.com>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Wed, May 8, 2019 at 7:22 PM Robin Murphy <robin.murphy@arm.com> wrote:
>
> On 08/05/2019 06:41, Jagan Teki wrote:
> > sdmmc cd pin is configured as RK_FUNC_GPIO which is wrong and
> > indeed failed to detect the sdcard on the board with below error
> >
> >    Card did not respond to voltage select!
> >
> > So, fix it by replacing RK_FUNC_GPIO with RK_FUNC_1 which
> > is already defined in rk3399.dts so make use of same like
> > other boards.
>
> AFAICS this should also be true of RockPro64 and (at least with the
> Linux DT) Firefly - those aren't grabbing &sdmmc_cd by default either. I
> imagine that U-Boot might also see similar problems on Gru, where the
> card detect signal is on a completely different GPIO.

But RockPro64 is not using sdmmc_cd and it is able to detect the card
w/o pin but it has cd-gpio.

>
> I'd note that in Linux, only rk3399-evb is actually *using* &sdmmc_cd -
> despite the fact that they claim it, nearly all the other boards also
> have "cd-gpios" and thus end up overriding the dedicated function with
> an implicit GPIO configuration anyway. Sapphire is the odd one out in
> using "broken-cd" as the less-efficient way of mitigating the runtime PM
> issue.
>
> > Add these changes in -u-boot.dtsi to make Linux sync easy for future
> > changes.
> >
> > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> > Reviewed-by: Kever Yang <kever.yang@rock-chips.com>
> > ---
> >   arch/arm/dts/rk3399-nanopi4-u-boot.dtsi | 9 +++++++++
> >   1 file changed, 9 insertions(+)
> >   create mode 100644 arch/arm/dts/rk3399-nanopi4-u-boot.dtsi
> >
> > diff --git a/arch/arm/dts/rk3399-nanopi4-u-boot.dtsi b/arch/arm/dts/rk3399-nanopi4-u-boot.dtsi
> > new file mode 100644
> > index 0000000000..20db99c0b8
> > --- /dev/null
> > +++ b/arch/arm/dts/rk3399-nanopi4-u-boot.dtsi
> > @@ -0,0 +1,9 @@
> > +// SPDX-License-Identifier: GPL-2.0+
> > +/*
> > + * Copyright (C) 2019 Jagan Teki <jagan@amarulasolutions.com>
> > + */
> > +
> > +&sdmmc {
> > +     pinctrl-names = "default";
>
> That's already set in the base DTSI, so doesn't really need to be
> shadowed here.
>
> > +     pinctrl-0 = <&sdmmc_bus4 &sdmmc_clk &sdmmc_cmd &sdmmc_cd>;
> > +};
> >
>
> I suppose you could also delete the "cd-gpios" property to make it
> really clear what this override is for (and save a few bytes if it's
> going to be ignored anyway).

Why so? few boards like OrangePI do use both sdmmc_cd along with cd-gpio.

On the other-hand, how about doing this change in Linux?

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

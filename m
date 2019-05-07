Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62EF815DA4
	for <lists+linux-rockchip@lfdr.de>; Tue,  7 May 2019 08:42:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P/RnBxDA/70Kel486w+Cpz/03sOkDu1jB7dyfJ+9aI4=; b=Ilr6cmxl6TAlf8
	gtl6zYQ7qr22AdZgpfjx583rzE26zUCVGjaOEw761rHYsD8sobOLaVR+AeEvafyUQ7eqezSAl1cvo
	bBMYfj9E9xBpDsF+ZXrIT3Jo36qhJQY8cBadjo9sZuKr9UQFNnziaiQpMWJc3inW7zfDv3NMCScJL
	nKKLUsxVejt4n6W2W9UoqUrRHGr1o6tUS1FRPysEXD0pbif9/mZokMFG9ul8agVuzh6MFACkzqXyF
	aX7NXVo8P42QX8mumj1OXJGCpkGEamO9zqPRe/Cp8WNgml1/q8gNtScaytFRdb+5BFkFlU1qQfH+i
	qzkG+lh2iow+5Za0A81w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNtoG-0004ZT-Pc; Tue, 07 May 2019 06:42:40 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNtoD-0004Z5-74
 for linux-rockchip@lists.infradead.org; Tue, 07 May 2019 06:42:38 +0000
Received: by mail-io1-xd41.google.com with SMTP id m14so13306895ion.13
 for <linux-rockchip@lists.infradead.org>; Mon, 06 May 2019 23:42:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=A2sQqlxfv1ngSoJavEvrju1fy8U0zYdeiXK0IvQmGYA=;
 b=ARXqGiwBpZAz5OAtxeMo1G5iKLFvXZozgMpWbMYEDIruKMqgs2U2A22UmkflnDdA8r
 u716KfiJpHn4xP9sLEol7cg1FQUuxXHQ0Vwig0GPiAFbnz7sSkXnuS5Sw2GYsJ1Trog0
 yMxWB3urvNPJf13XD+MM1b231U+QCr5N6Vr/4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=A2sQqlxfv1ngSoJavEvrju1fy8U0zYdeiXK0IvQmGYA=;
 b=sJ/3CYNk1YoBOgPOyv4B3/Sfk9SZJSUb1J9bM8Vo/IfrkJ9nojPusXRr6km1iCk6xx
 jo31jA1JDY6JeefeF+UlqdefG6N+FCcQQ1AzwWNvqEYl24GcBUn5BpLQNU06RS5s0soZ
 Dit2UqI8Dl1t2h3JBtxV7Hsx8vTOK4UuJFGnx2RexN540dAG/GSNyFylx12bHXwMzUek
 AxjBR8K7c3H4Awb3x126fI0hrYjCUNY/pYdAJI1WHT4dJ6BQzoWL4GAqOARZKFsvo9bE
 dDurNf2XTkMwoxVtIEaZbf2ebzQSv7Ry4Hs8blOvR+i8HgMK9HHDsjEmDUM+0dkDWwmy
 2/fQ==
X-Gm-Message-State: APjAAAU5cVSB5YC+sb3RfIMsJasjzLj4mVKxBGYry9liBJZW69EQF6u9
 bpvwlFf8gYOkIpR+McoiLgubkTiUlI/iwQDT6WiWiw==
X-Google-Smtp-Source: APXvYqzOxwwhRtuq1+tG4VTVqHGJ0udfnY+HeODHZH7BxKpLL3eXZiQ1DbCfLPfD8b0SScFmM/IYQ0Zrm7ITSA0748U=
X-Received: by 2002:a5d:8d18:: with SMTP id p24mr21660777ioj.267.1557211355450; 
 Mon, 06 May 2019 23:42:35 -0700 (PDT)
MIME-Version: 1.0
References: <20190427114852.7608-1-jagan@amarulasolutions.com>
 <20190427114852.7608-4-jagan@amarulasolutions.com>
 <7bd53b02-2a0f-d242-31bc-2baba0a69405@rock-chips.com>
In-Reply-To: <7bd53b02-2a0f-d242-31bc-2baba0a69405@rock-chips.com>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Tue, 7 May 2019 12:12:23 +0530
Message-ID: <CAMty3ZCadSyo+DdYSjcOgeUVWBEZZgST5_cr4dXeMUZ8mZe=yw@mail.gmail.com>
Subject: Re: [PATCH v6 03/13] Kconfig: Add default SPL_FIT_GENERATOR for
 rockchip
To: Kever Yang <kever.yang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_234237_411402_15CABFC1 
X-CRM114-Status: GOOD (  14.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Tom Rini <trini@konsulko.com>, U-Boot-Denx <u-boot@lists.denx.de>,
 Simon Glass <sjg@chromium.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org,
 Klaus Goger <klaus.goger@theobroma-systems.com>,
 Akash Gajjar <akash@openedev.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Kever,

On Tue, May 7, 2019 at 9:36 AM Kever Yang <kever.yang@rock-chips.com> wrote:
>
> Hi Jagan,
>
>
> On 04/27/2019 07:48 PM, Jagan Teki wrote:
> > Add default SPL_FIT_GENERATOR py script for rockchip platforms if
> > specific target enabled SPL_LOAD_FIT.
> >
> > So, this would help get rid of explicitly mentioning the default
> > SPL FIT generator in defconfigs. however some targets, like puma_rk3399
> > still require their own FIT generator so in those cases the default will
> > override with defconfig defined generator.
> >
> > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> > Reviewed-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> > ---
> >  Kconfig                          | 1 +
> >  configs/chromebook_bob_defconfig | 1 -
> >  configs/evb-rk3399_defconfig     | 1 -
> >  configs/ficus-rk3399_defconfig   | 1 -
> >  configs/firefly-rk3399_defconfig | 1 -
> >  configs/rock960-rk3399_defconfig | 1 -
> >  6 files changed, 1 insertion(+), 5 deletions(-)
> >
> > diff --git a/Kconfig b/Kconfig
> > index 305b265ed7..5679a288ec 100644
> > --- a/Kconfig
> > +++ b/Kconfig
> > @@ -424,6 +424,7 @@ config SPL_FIT_GENERATOR
> >       string ".its file generator script for U-Boot FIT image"
> >       depends on SPL_FIT
> >       default "board/sunxi/mksunxi_fit_atf.sh" if SPL_LOAD_FIT && ARCH_SUNXI
> > +     default "arch/arm/mach-rockchip/make_fit_atf.py" if SPL_LOAD_FIT && ARCH_ROCKCHIP
>
> What happens to puma-rk3399 board with this patch? For it use dedicate
> its file now.
> configs/puma-rk3399_defconfig
> CONFIG_SPL_FIT_SOURCE="board/theobroma-systems/puma_rk3399/fit_spl_atf.its"

It replaced with defined .fit in puma, atleast I've tested the build.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

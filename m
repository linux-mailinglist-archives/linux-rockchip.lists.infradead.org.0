Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC8B4EA2C8
	for <lists+linux-rockchip@lfdr.de>; Wed, 30 Oct 2019 18:50:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AomvvmVDuj67OPIDtHY1mjfkFKpsLIVKLta2WNdnaOI=; b=C7KqVqJsGS/kAW
	Wo3qDYBi9hzgIFuBa2pZhcgJxbpVCVp6C5kUFFgY+TLMwgfqqTeQyYpkswH7cezjs6kLdazaOy5QJ
	mmwhM+CvykHBx+nqcePOPj44KLpop7P5wYlnOUW/N7NnJqEuZ5LEAM3yp8x4Z8sTWX/790FfZW88r
	LJI9fZWcCY9J1+biHHCbFtP0ZW4iK9xCfNaVITF/E3HRn1AU3xf4EpaqI33JeNJvYlMhV8gfcHVQy
	N4W55rczou1QXcSRl5b24eKrw0Y9oh6XE8oY1sH4VG2+rtt27b5063CFoZ1jKeRvFdORq5tLKE8n7
	g6qSE2QZV3IQStTLgqyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPs7S-0002BQ-VE; Wed, 30 Oct 2019 17:50:54 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPs7P-0002Ao-QL
 for linux-rockchip@lists.infradead.org; Wed, 30 Oct 2019 17:50:53 +0000
Received: by mail-qt1-x844.google.com with SMTP id b10so2604246qto.11
 for <linux-rockchip@lists.infradead.org>; Wed, 30 Oct 2019 10:50:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=aHAG5QGlfTZcV0ev6KxjaigdKgxCpJWBp61pmiRVhto=;
 b=CCJNOLqBQ7EqfGi77fpKdyM+s/IREZlN72gGYoExLAMS5QR9PfLRsZnFmPWqbcc9Yp
 GZKOU3a6pPPGt+6B6UqiXy0bsZzAmu89nQWybhiSY//73ztlC4Kv7S4zz840p5UBNi+4
 MzEZGDILlOsGUnpPRUzIg6naA9LsGhvSV4ZrFJ3BxTL4qGeRpgHquplE22eYBuiny9XJ
 UHk5MC5EvU4SqKjwDaaR+JnsTFiiPQS6LOfXn9SQrmEjlrvO21cU/cajfDMCKQHti+/z
 /OHqy949GoLmJrxexRO0yn/kD6nNwbgsaR5F2WLRL5fXm9FxWO51e/Aj3OTcxdTfH6Tu
 Mtaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=aHAG5QGlfTZcV0ev6KxjaigdKgxCpJWBp61pmiRVhto=;
 b=lO1NRK1Ej19kpMhRKwkOnoAteCsw3DTubq+oqGy/g60mSJ6oUMMXlN5Ynnj60FdYt5
 nGWRjmdmrqlHuUZtRhzIfL7E4FneMJr1xjknOGRSSWMXRYtF4ZUSy6eeTuQ5yWp4dxtF
 vMZecH33ZySFi1FiGPydrOu88Ujfoide9OvFL8rImKaRHaaqVTatEJdTugIgl2E4v0g7
 tLFaRoUoE+Jl2G8l5QmSQGgv+djCOtKGrxNzGDxNhSmCNYDf4g/7n2vMRsldnSPt5rIf
 jsOA6mMlhu7QEgOHIFDzAWsueYpEHfSlJD0CYsruu1u/wfkXyYTPGAtOP+2lwSRv/ZEw
 M7jg==
X-Gm-Message-State: APjAAAX5KWfTA3q29o0WsDMxMKW507MtfiOSRckDJT9aSqzOcVb8GsN5
 1FqROXojCUUwSmLZjgTaR8upUXwbj07uWR1+Euw=
X-Google-Smtp-Source: APXvYqwT7Y4406iDzbNo0bjXF+UX1OQ/pkV18E5pWAQKCaZRYA0p+Aybj6lZFhHy2OVMPW4U6o8NmPJF0Qe1kBeTl6Q=
X-Received: by 2002:ac8:80f:: with SMTP id u15mr1358783qth.193.1572457850268; 
 Wed, 30 Oct 2019 10:50:50 -0700 (PDT)
MIME-Version: 1.0
References: <20191028182254.30739-1-pgwipeout@gmail.com>
 <20191028182254.30739-2-pgwipeout@gmail.com>
 <1572315115.18464.11.camel@mhfsdcap03>
 <CAMdYzYoOQ_C_f2v-3XBid8X0fc6z3Bw0XqRi3CQiwCzRLT-_0g@mail.gmail.com>
 <1572404361.18464.24.camel@mhfsdcap03>
In-Reply-To: <1572404361.18464.24.camel@mhfsdcap03>
From: Peter Geis <pgwipeout@gmail.com>
Date: Wed, 30 Oct 2019 13:50:32 -0400
Message-ID: <CAMdYzYphK=R-3tw67xrutRv-fxOq7=dPXg5=4kT6bkivH77E0w@mail.gmail.com>
Subject: Re: [PATCH 1/5] phy: rockchip: add inno-usb3 phy driver
To: Chunfeng Yun <chunfeng.yun@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_105051_853555_CE70BDDB 
X-CRM114-Status: GOOD (  18.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pgwipeout[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: katsuhiro@katsuster.net, linux-rockchip@lists.infradead.org,
 linux-usb@vger.kernel.org, Robin Murphy <robin.murphy@arm.com>,
 Heiko Stuebner <heiko@sntech.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Tue, Oct 29, 2019 at 10:59 PM Chunfeng Yun <chunfeng.yun@mediatek.com> wrote:
>
> On Tue, 2019-10-29 at 11:26 -0400, Peter Geis wrote:
> > On Mon, Oct 28, 2019 at 10:12 PM Chunfeng Yun <chunfeng.yun@mediatek.com> wrote:
> > >
> > > On Mon, 2019-10-28 at 18:22 +0000, Peter Geis wrote:
> > > > Add the rockchip innosilicon usb3 phy driver, supporting devices such as the rk3328.
> > > > Pulled from:
> > > > https://github.com/FireflyTeam/kernel/blob/roc-rk3328-cc/drivers/phy/rockchip/phy-rockchip-inno-usb3.c
> > > >
> > > > Signed-off-by: Peter Geis <pgwipeout@gmail.com>
> > > > ---
> > > >  drivers/phy/rockchip/Kconfig                  |    9 +
> > > >  drivers/phy/rockchip/Makefile                 |    1 +
> > > >  drivers/phy/rockchip/phy-rockchip-inno-usb3.c | 1107 +++++++++++++++++
> > > >  3 files changed, 1117 insertions(+)
> > > >  create mode 100644 drivers/phy/rockchip/phy-rockchip-inno-usb3.c
> > > >
> ...
> > > > +static int rk3328_u3phy_pipe_power(struct rockchip_u3phy *u3phy,
> > > > +                                struct rockchip_u3phy_port *u3phy_port,
> > > > +                                bool on)
> > > > +{
> > > > +     unsigned int reg;
> > > > +
> > > > +     if (on) {
> > > > +             reg = readl(u3phy_port->base + 0x1a8);
> > > > +             reg &= ~BIT(4); /* ldo power up */
> > > > +             writel(reg, u3phy_port->base + 0x1a8);
> > > > +
> > > > +             reg = readl(u3phy_port->base + 0x044);
> > > > +             reg &= ~BIT(4); /* bg power on */
> > > > +             writel(reg, u3phy_port->base + 0x044);
> > > > +
> > > > +             reg = readl(u3phy_port->base + 0x150);
> > > > +             reg |= BIT(6); /* tx bias enable */
> > > > +             writel(reg, u3phy_port->base + 0x150);
> > > > +
> > > > +             reg = readl(u3phy_port->base + 0x080);
> > > > +             reg &= ~BIT(2); /* tx cm power up */
> > > > +             writel(reg, u3phy_port->base + 0x080);
> > > > +
> > > > +             reg = readl(u3phy_port->base + 0x0c0);
> > > > +             /* tx obs enable and rx cm enable */
> > > > +             reg |= (BIT(3) | BIT(4));
> > > > +             writel(reg, u3phy_port->base + 0x0c0);
> > > > +
> > > > +             udelay(1);
> > > > +     } else {
> > > > +             reg = readl(u3phy_port->base + 0x1a8);
> > > > +             reg |= BIT(4); /* ldo power down */
> > > > +             writel(reg, u3phy_port->base + 0x1a8);
> > > > +
> > > > +             reg = readl(u3phy_port->base + 0x044);
> > > > +             reg |= BIT(4); /* bg power down */
> > > > +             writel(reg, u3phy_port->base + 0x044);
> > > > +
> > > > +             reg = readl(u3phy_port->base + 0x150);
> > > > +             reg &= ~BIT(6); /* tx bias disable */
> > > > +             writel(reg, u3phy_port->base + 0x150);
> > > > +
> > > > +             reg = readl(u3phy_port->base + 0x080);
> > > > +             reg |= BIT(2); /* tx cm power down */
> > > > +             writel(reg, u3phy_port->base + 0x080);
> > > > +
> > > > +             reg = readl(u3phy_port->base + 0x0c0);
> > > > +             /* tx obs disable and rx cm disable */
> > > > +             reg &= ~(BIT(3) | BIT(4));
> > > > +             writel(reg, u3phy_port->base + 0x0c0);
> > > > +     }
> > > Try to avoid magic number
> >
> > Since this was not my driver, I only pulled it in and made the
> > necessary changes to get it working, I tried to refrain from
> > modifications as much as possible.
> > Do you want me to convert these addresses to definitions based on the
> > comments in the code?
> It's better to follow register names defined in register map doc if you
> have

Some of these registers appear to be in the rk3328 TRM.
Most, such as the tuning registers, are not documented anywhere I can find.
:'( Why rockchip, why?!
> >
> > >
> > > > +
> > > > +     return 0;
> > > > +}
> > > > +
>
>
>
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

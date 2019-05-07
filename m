Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E991B163BD
	for <lists+linux-rockchip@lfdr.de>; Tue,  7 May 2019 14:28:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FH0c9XwXTarsI5JJHbG9ko64MFKkApxyx1rddRGN1uA=; b=sh6pqWilxX+UmJ
	1D2RwBTbqgOL1eOi3vJutLE/CquNPgIW1LwpkNXGgzOOT604+2MiK2Myd2JQyMN8ou0PdixEa7d77
	D3lqe6lQ81PH+d05+SQHJn6fp8WpVeAqiRksI8/R/CUmN742uSKs3zh/90KQ/Oz8iSJ1ZRJuqe25K
	qqGLFHS3WXo3Wlba6ZTXG0p5U0knCWTeem1cnzE/9G9Tx+/ZjOxqjaWQiH4qFkktNtv4Ec+c3APMp
	MPLeNDyo79S3hCy2bmojqn7Ji+2L3MwzR9Yr87jzY+owyoov7/EsChjh3M42twtF53at4bSdKSyH0
	TswM0s3oTVB0RIM/D/ww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNzD7-0001k4-Df; Tue, 07 May 2019 12:28:41 +0000
Received: from mail-it1-x141.google.com ([2607:f8b0:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNzD3-0001ji-9f
 for linux-rockchip@lists.infradead.org; Tue, 07 May 2019 12:28:38 +0000
Received: by mail-it1-x141.google.com with SMTP id l140so25404744itb.0
 for <linux-rockchip@lists.infradead.org>; Tue, 07 May 2019 05:28:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=w5dwrGfdvyu25N0glpPYbHqV4b9B6YHWB6QUc2P09NY=;
 b=rsyypVVLFjaj9dhw4HJ0RDBgF/ZjRt5QIPH504TLqjN5pSwHgSuhbGumnfbLCOx+zU
 T/KfpO5L+myKRAWPz8MUDLnqnvQZ+Ugro+eSRI0hpE2Q7KxHkeOTlYBUDfST4eYVS6Wx
 iAAFZxAMOetIeKsBRUlSfX/Xe/GaZUMx52kVM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=w5dwrGfdvyu25N0glpPYbHqV4b9B6YHWB6QUc2P09NY=;
 b=YPThHT05TwAf71SrLwukNtsGWMg0YXXmv8znW/5HIySvjdPqrnIuNGgUVSGpIx4Pa4
 d0bJmngNuko2+QwKk3TZ8nvcJM8W0VdfQO6XhO3CetvInFEwfmy2ZAYcpF5b/aqB50b+
 HtgUsLhlLM5pStKx4eT8aF+GelFVJk0wdh+Eh9BlN2/USd574Biy1UcKxhoSynGQJkdt
 VxbAPdtQQvBt+UbROZOKcvbj4jXzxUzqMmOJndj2Ph5cRzruaDGkvp3nqCwkD4UpJQH4
 cljcT5SPFheZfhypZZs8Ytcw054rp2aQEdI+bq3tehCi9Z4V/4/OK/rbJHRKCOA1A/b6
 w+xA==
X-Gm-Message-State: APjAAAV2snym0rT73ztKlVELJC8MYYj8OHj0stWmcuytiHTmass2Qpkv
 A91yOJWx/mwyxYWDq7H5os8QaXBHbHcuZ9TsS3PfnQ==
X-Google-Smtp-Source: APXvYqz3GdfGwATK3JJQ7+vek+MptuwD7fweoB5nIGZJraSJfG7EicKNK08NtZPPsyTh9NRe2ZoF2/Si6m1qB8h+lu4=
X-Received: by 2002:a24:cec3:: with SMTP id
 v186mr23236908itg.173.1557232115456; 
 Tue, 07 May 2019 05:28:35 -0700 (PDT)
MIME-Version: 1.0
References: <20190427114852.7608-1-jagan@amarulasolutions.com>
 <20190427114852.7608-10-jagan@amarulasolutions.com>
 <b250ecbc4cb638f36f25e9f14860cf5a99c31621.camel@bootlin.com>
In-Reply-To: <b250ecbc4cb638f36f25e9f14860cf5a99c31621.camel@bootlin.com>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Tue, 7 May 2019 17:58:23 +0530
Message-ID: <CAMty3ZA5n3K77pCYmQis=oKUtWqhnMYvkZZeii863_mFmwhLig@mail.gmail.com>
Subject: Re: [PATCH v6 09/13] rockchip: rk3399: Add Nanopc T4 board support
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_052837_488487_5E338787 
X-CRM114-Status: GOOD (  15.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Simon Glass <sjg@chromium.org>, Kever Yang <kever.yang@rock-chips.com>,
 linux-rockchip@lists.infradead.org, Akash Gajjar <akash@openedev.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Tue, May 7, 2019 at 2:42 PM Paul Kocialkowski
<paul.kocialkowski@bootlin.com> wrote:
>
> Hi,
>
> On Sat, 2019-04-27 at 17:18 +0530, Jagan Teki wrote:
> > diff --git a/board/rockchip/evb_rk3399/MAINTAINERS b/board/rockchip/evb_rk3399/MAINTAINERS
> > index ae43805a6a..5917abb9c1 100644
> > --- a/board/rockchip/evb_rk3399/MAINTAINERS
> > +++ b/board/rockchip/evb_rk3399/MAINTAINERS
> > @@ -6,6 +6,12 @@ F:      include/configs/evb_rk3399.h
> >  F:      configs/evb-rk3399_defconfig
> >  F:      configs/firefly-rk3399_defconfig
> >
> > +NANOPC-T4
> > +M:   Jagan Teki <jagan@amarulasolutions.com>
> > +S:   Maintained
> > +F:   configs/nanopic-t4-rk3399_defconfig
> > +F:   arch/arm/dts/rk3399-nanopic-t4-u-boot.dtsi
> > +
>
> Mhh, I feel like each new board that you are introducing should have
> its own board directory -- this board is definitely not a rk3399 evb
> made by rockchip, but another board.

The behavior of all these added boards remains similar like evb, so
instead of adding separate board directory with redundant code this
patch uses existing stuff. Idea is to make common board directory as
rk3399, that have separate rework planed.

>
> I have already patches to split that for the firefly-rk3399, but I
> cannot really test them outside of building.

Do you have any specific board code for this firefly, I would suggest
to keep use evb since most of the peripheral handling in rockchip done
via dt so we can go-ahead w/o separating the board code atleast for
these boards.

>
> >  NANOPI-M4
> >  M:   Jagan Teki <jagan@amarulasolutions.com>
> >  S:   Maintained
> > diff --git a/configs/nanopc-t4-rk3399_defconfig b/configs/nanopc-t4-rk3399_defconfig
> > new file mode 100644
> > index 0000000000..7ba4f85485
> > --- /dev/null
> > +++ b/configs/nanopc-t4-rk3399_defconfig
> > @@ -0,0 +1,58 @@
>
> Also I don't see which TARGET is selected here, is there a fallback on
> the RK3399 EVB for the rk3399 platform?

It will select the EVB from mach-rockchip by default, ie reason I
didn't mentioned explicitly.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C264A55754
	for <lists+linux-rockchip@lfdr.de>; Tue, 25 Jun 2019 20:42:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m0ajIh4rbxwnRKQI9TB+T7BEOzdJr8xemAW9+g9X80s=; b=sumDhrmCn3BV8T
	0Z9oGludGDaVbG+vbuN2uBFlh+ugynW7OshAHKE5BL/71VXmxdLFz3UwDwDAUZHbfFZt4dUCpmbZ4
	TiBnUTjDU/a3r+WLK1POObpXbIS5Resy6dt2T8DzPD/soX/B4Q3s/ZBnVASgD8BO+f2Y5L65/VHpL
	aZYD+lToaQ/B5Bzk5cj6tiXI4zLvnmgbr3IaC2R8vdEmXNgZiO6E6+M8n2h9285UITkBrEXadAUy8
	zQl5y5CILmiMoiVxOHsGkKfhoDhQ6mMVzmXJc6oZVC+p2i2DijZh7NEYWqVrO9U5rRHG8ZVfTRQ5l
	pujJmSn77cyAs5wutnWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfqOx-0006Gt-Rs; Tue, 25 Jun 2019 18:42:44 +0000
Received: from mail-vs1-xe42.google.com ([2607:f8b0:4864:20::e42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfqOr-0006GH-AH
 for linux-rockchip@lists.infradead.org; Tue, 25 Jun 2019 18:42:39 +0000
Received: by mail-vs1-xe42.google.com with SMTP id v129so11578705vsb.11
 for <linux-rockchip@lists.infradead.org>; Tue, 25 Jun 2019 11:42:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vanguardiasur-com-ar.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=5Q+K9YNp3Zl3ryUS0ETgQtC7UHccnMAF9AMhMMm4j/A=;
 b=D09tLf5Hnba5BD4W0ni2MpyUyIy3NDKdMhO4lRlHKIqU68hMdS0zQC2pNmLQqpCFIY
 oqtnduFmv4qKzxsZdsi6G/Ot18yv4CYVQLRX8aoFDIeShy/ct/FslJircLLae7JgoD2z
 s39YsYRCTzAabBRmrk6/Q32Gm9a5jwJW+RSSVLBKJf1/XpPOU6OJmeUdGMf8oM6myhv7
 FoBWs6az2Vb0oVBg5UPLTn+qGyHkLXzntUJ6JJlzO8Wq77sh5PP++pSNTYNOAX5Q0dBd
 6dYjRvisPdcMjmkHuonyc8rWRK4SgYripiB00JhyNeDKKjMo/A5GdiVJnMyl0E7z925p
 fYFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5Q+K9YNp3Zl3ryUS0ETgQtC7UHccnMAF9AMhMMm4j/A=;
 b=LFlSR+C4I5ZbWtyhUXHH3/eZ9H2RMQU+2qU3ttVXjmRywJbdu5BVX4s1syYeGGeRKM
 sRu+6W2CGb+QIvsESczIl+aFTg9Y5gQgQWjYAb0IKK/8/3jWhoV+NQGoScBrpxE5uMYI
 TugaEyWbbWrQBRy7cnlle1uMz7YyuScyteSyMDqZF34J4gK1iGI0Self7umZ+pjY2tgW
 ueRhyxbSEeTySnWLxx2qLvtbLpRnreyjt1Wltz5jkXaF0p2UAj08RA67uN0jZqRCYl9C
 6GSPhTY14FNmZcs5A2h7yzpgcJS47ckVJ3i7Mx8UQGgDSOmM0SwRBAZSEGGGoJO7opkk
 fD3w==
X-Gm-Message-State: APjAAAWSk6S6drQ9BSkPlCynDStEwV+2OxW2WIT8mXIZXt91p6dsPOBe
 6cDr6Qoqs4CBbhHV3nOzV4Uouh+z3+5ecEHIj7nl8w==
X-Google-Smtp-Source: APXvYqy7jR/R71HfJXWIgZ/96d8MHOxBg1xPlHKGLB/Hv23XEvmmDL+JO5E8uanl4mrxSIht7KdUHh16AldOhnuiTsI=
X-Received: by 2002:a67:e244:: with SMTP id w4mr187366vse.176.1561488154406;
 Tue, 25 Jun 2019 11:42:34 -0700 (PDT)
MIME-Version: 1.0
References: <20190617073252.27810-1-jagan@amarulasolutions.com>
 <CA+E=qVfuy-UYUWujYC8fG+Os4tefPdYzFECkZZdoctvmiSMzcA@mail.gmail.com>
 <CAMty3ZBr3oy1PxQ3C6fLQZAfPR3Dio7pX0m+y7LApAMQr5gbkA@mail.gmail.com>
In-Reply-To: <CAMty3ZBr3oy1PxQ3C6fLQZAfPR3Dio7pX0m+y7LApAMQr5gbkA@mail.gmail.com>
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Date: Tue, 25 Jun 2019 15:42:23 -0300
Message-ID: <CAAEAJfAxgF2JqOUhjXLmn5RVGMLbM2-7JqsyZgXvfU6Q9ScK+A@mail.gmail.com>
Subject: Re: [U-Boot] [PATCH v2 00/99] ram: rk3399: Add LPDDR4 support
To: Jagan Teki <jagan@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_114237_499478_377F8A0A 
X-CRM114-Status: GOOD (  11.56  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: YouMin Chen <cym@rock-chips.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Akash Gajjar <gajjar04akash@gmail.com>, Vasily Khoruzhick <anarsoul@gmail.com>,
 U-Boot Mailing List <u-boot@lists.denx.de>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-amarula <linux-amarula@amarulasolutions.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Jagan,

Thanks for your hard work. I'm sure everyone in the Rockchip community
is excited about finally having this support in U-Boot.

On Tue, 25 Jun 2019 at 12:46, Jagan Teki <jagan@amarulasolutions.com> wrote:
[..]
> >
> > Was it absolutely necessary to split these changes into 99 commits? I
> > believe at least some of them can be squashed. Reviewing 99 patches
> > isn't feasible.
>
> Squashed, I'm not sure because the patches were created to satisfy the
> bisectability and travis-ci, if you find any please feel to comment.
> About the commit count, I have mentioned in v1, the idea of having
> many commits in one series to have all lpddr4(-related) changes in one
> place and also all the commit has incremental approach of supporting
> rank detection and lpddr4. If require I'm open to sent next versions
> as multiple series, no problem on that.
>

I strongly agree with Vasily, and I don't think multiple series makes it any
better.

What's the reason for having two commits for:

"ram: rk3399: Set lpddr4 MR3" and "ram: rk3399: Set lpddr4 MR12" ?

Or splitting all the "ram: rk3399: Add ... macro" ?

What do you loose if you merge the patches into one?

I must confess I am very surprised, and don't really understand what do you
gain with this excessive split. Normally, when we are adding a new feature,
we normally don't need many patches, so it's the other way around, really.

Bisectability is about not breaking existing support, but because the feature
is new, normally this is easy.

Thanks again!
Eze

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

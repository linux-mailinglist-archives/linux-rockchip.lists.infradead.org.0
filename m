Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1DB756695
	for <lists+linux-rockchip@lfdr.de>; Wed, 26 Jun 2019 12:23:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mto1oJNourLM8umJwYGh+b9kcgO/Cs4Hf/HoA4t79FE=; b=fPVlNWZ9XdgicM
	UjVTPxZ2QI78ftndwMGeceqaX5/GVoEUcCHZ1RFa42z2yzbh3zflu5C9Uzl93alG/TL5S3+EDJjk/
	qSFQidWYdGtCqYqo5iI4rDF2/H9GmoJEc9y1+GRgtaV6V84l0O3jPKqKhSQXMjhAGiqcSUYFuXolN
	9ORZyaLl83F39VNPrT2Q6lHOtlsSXhjP6ZY7tFJDihycPu7zSpqnzYJWGq1FWRe5AxQok/aXiURIF
	HtT3S20vKVr9TNJOSnWJECcSnn4L+n3U1Cxn9vwISPkBytEq+TWNnFKMe/0CXQ4g6d7WS6PVVj/eg
	nFZrOnjHFkzJaaqhja0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg54v-0004DM-UA; Wed, 26 Jun 2019 10:23:02 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg54q-0004Cd-SX
 for linux-rockchip@lists.infradead.org; Wed, 26 Jun 2019 10:23:00 +0000
Received: by mail-io1-xd41.google.com with SMTP id k8so633916iot.1
 for <linux-rockchip@lists.infradead.org>; Wed, 26 Jun 2019 03:22:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GlBLEloN/TINX4HWZebfBk6ZSKRC/jfNfSiqh209Pys=;
 b=k/f0Q9wNANmy/1Mt+2sKUyxhMl07MagCH9OjCt0dvV3v6ZdcPIaVTXfv1dMLi9x3aJ
 9vk3FMb+eFR7VUVv0GuYUh4l/5B4PdA9o4kpFcbv1tdQ1OWxeUP5FuNF02190/gSfFOd
 O9pUL18131VinqiyloVHYT/H4ugtb4pf4kptw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GlBLEloN/TINX4HWZebfBk6ZSKRC/jfNfSiqh209Pys=;
 b=Sk6iGm6rC25Xdn6TxoMn2rg/5MutFDoVoXi3zJjZXFUN+axHdWQA6f9in04hgHv4oz
 aKboj6UHd5Ave6/rZGNK2NMCbHOgQV6GTUnQbusFQEGRijd19Q4vK78PcFRXT0OqTJdV
 A4N8TEUEa9MjISSoMjHZ7QkljEDlMtWZW4eM9kV1FsbtQVL7coz8EvWBtE7fFdYcpm0D
 If/MvkDkaheW8CHLkBCUwbvtLOWW/9+kEAfbOL1xLUgLuaijE48ftX3mZYC8pW+AHZXS
 njJKb5HtW9QQFwijgDKC04+J8lnkMKRZ9CgMfAuX2Jpt+se1XUOSzSl6dp5dKt5cqWhZ
 7GlA==
X-Gm-Message-State: APjAAAUUY2mUs6Zih5Mt/XVDOBvL5YaopaTKV5hrTTpE24HABKep4rdV
 sEXUBzNIfGjchGltYN/otcXvFPd1q6MuO4IUcpHPDw==
X-Google-Smtp-Source: APXvYqwuvhwKOJscIvXT1ZhdMjD2UEOkRrMU97vaahOZFqep2jzEvkm85XS0RVS3lm7r+jyiw2IZORl/AoduNBBaBJU=
X-Received: by 2002:a5d:9ad6:: with SMTP id x22mr4116878ion.136.1561544575506; 
 Wed, 26 Jun 2019 03:22:55 -0700 (PDT)
MIME-Version: 1.0
References: <20190617073252.27810-1-jagan@amarulasolutions.com>
 <CA+E=qVfuy-UYUWujYC8fG+Os4tefPdYzFECkZZdoctvmiSMzcA@mail.gmail.com>
 <CAMty3ZBr3oy1PxQ3C6fLQZAfPR3Dio7pX0m+y7LApAMQr5gbkA@mail.gmail.com>
 <CAAEAJfAxgF2JqOUhjXLmn5RVGMLbM2-7JqsyZgXvfU6Q9ScK+A@mail.gmail.com>
In-Reply-To: <CAAEAJfAxgF2JqOUhjXLmn5RVGMLbM2-7JqsyZgXvfU6Q9ScK+A@mail.gmail.com>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Wed, 26 Jun 2019 15:52:44 +0530
Message-ID: <CAMty3ZA9HRYx4tYDWAFoG5geQeyB1VPkofdU-4jSDNHY0ZEHdA@mail.gmail.com>
Subject: Re: [U-Boot] [PATCH v2 00/99] ram: rk3399: Add LPDDR4 support
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_032257_866853_F730107A 
X-CRM114-Status: GOOD (  17.40  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On Wed, Jun 26, 2019 at 12:12 AM Ezequiel Garcia
<ezequiel@vanguardiasur.com.ar> wrote:
>
> Hi Jagan,
>
> Thanks for your hard work. I'm sure everyone in the Rockchip community
> is excited about finally having this support in U-Boot.
>
> On Tue, 25 Jun 2019 at 12:46, Jagan Teki <jagan@amarulasolutions.com> wrote:
> [..]
> > >
> > > Was it absolutely necessary to split these changes into 99 commits? I
> > > believe at least some of them can be squashed. Reviewing 99 patches
> > > isn't feasible.
> >
> > Squashed, I'm not sure because the patches were created to satisfy the
> > bisectability and travis-ci, if you find any please feel to comment.
> > About the commit count, I have mentioned in v1, the idea of having
> > many commits in one series to have all lpddr4(-related) changes in one
> > place and also all the commit has incremental approach of supporting
> > rank detection and lpddr4. If require I'm open to sent next versions
> > as multiple series, no problem on that.
> >
>
> I strongly agree with Vasily, and I don't think multiple series makes it any
> better.
>
> What's the reason for having two commits for:
>
> "ram: rk3399: Set lpddr4 MR3" and "ram: rk3399: Set lpddr4 MR12" ?

These are individual lpddr4 set rate registers to support, each one is
independent on it' own initialization and more over on the whole, it
is critical to review.

>
> Or splitting all the "ram: rk3399: Add ... macro" ?

You mean the patches 13 to 20 same like above each one has it's own
meaning. It is not meaningful to squash them all.

>
> What do you loose if you merge the patches into one?
>
> I must confess I am very surprised, and don't really understand what do you
> gain with this excessive split. Normally, when we are adding a new feature,
> we normally don't need many patches, so it's the other way around, really.
>
> Bisectability is about not breaking existing support, but because the feature
> is new, normally this is easy.

Look, like the whole confusion seems to be because of more patches in
one series and the cover-letter states that it support lpddr4. I
understand it now, will send the relevant changes in next version
accordingly, if require I will squash if any.

Jagan.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

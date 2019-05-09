Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30539189DA
	for <lists+linux-rockchip@lfdr.de>; Thu,  9 May 2019 14:37:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0DwjfB5sP5foDFOCGHoyAAgvKip5J6qvK/604ypjAC0=; b=mlDyMcdwaPSP+o
	WOIMWYIKkSbVvpik3kmmISMJtMl+K2nTZe5zzb7o66n+Xtkk1kWckB5es4p843sGXb3czELe6nT8G
	ZMAU2CofCgxSL8IMGeNgiJDA3VKMlTHNfXxrPWbLrB3T/ANwlT31WBCk2oL0/ED0B37YQlghYakzY
	0Gn64gHe4DnzPsnj+HPHxqtSyO0kRdMDOsi7bVrAfBu129q8aXhvdorBsrydwkCym+VzW3FIUhWDZ
	ABjUhhhZs+ocQk08UHeOfuCxtR8q/0IHmIgYM5fjh2K/XKF5EpqcnOb5omCx5Z4KOziZWMa4NT+47
	UnUbGokql85Paibit9Eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOiIT-0005FF-Va; Thu, 09 May 2019 12:37:13 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOiIQ-0005Et-0R
 for linux-rockchip@lists.infradead.org; Thu, 09 May 2019 12:37:12 +0000
Received: by mail-io1-xd43.google.com with SMTP id m7so1456853ioa.6
 for <linux-rockchip@lists.infradead.org>; Thu, 09 May 2019 05:37:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/t6Jl+OS7fVz8naJFfoNj9DEtIT3l7m5l81lSH5Mj04=;
 b=TlK8rKVbj366N2SHNdiG8sVARnj1vzBKNkGkQnh056H3n37+i6dBFLpgdAe8eAO65u
 m4qxjUFuisI5fxKe2HIRq3izUjDk+KUyprDnGlUcHlAnkEg23hiri5enQ3tiYjrBt4Gk
 BB97TZJGbKwAn2nmFH+2rXkaSghjIn3gEX4f8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/t6Jl+OS7fVz8naJFfoNj9DEtIT3l7m5l81lSH5Mj04=;
 b=jD7eVycZI7TsWKfvTSrLTTIimfW8QHHfB5d3DkcQl40rZJXJ70zTNuFCjg0v75GKqH
 vHweFV5ILkJy7YgLPBqRRVQe/Q3+wUgxU2Hf1Vl3xJ5rXF/uhV6uktY8qs3FUl1LPtLu
 Ce7CA6tIYrt51ht17BvfCMKo9Dh81oSWYydey7KcSz5EmETdoedABvcaTKo8WDVmHxtK
 +Vo84v/T1ZZW0+R+iDMz3RFlTZ2NgtnZucz+PAmIyBn3QsJ0yvJjy8D4Jx4HEwYMnSuc
 BYQIsTUMnonxZw8JlowTo3yNcAPKoasz1a8x28tNOxC52zmU7UtB7PfQ6kGa743hfMHY
 43Jw==
X-Gm-Message-State: APjAAAVKuwOyM/zLy17xnfJrWaIHbZJyMEJJ6APvStQXjgZLRYq83FZK
 PiztfGWoUDdz55vTZhofGKv3Avx8fHxoYpX/ay6nXA==
X-Google-Smtp-Source: APXvYqwhqImPcyvyXhxugeGsZipzNT0Hpt6vSohCCxfUWOP5TZ/GemaTcBuoHf7KO0lJzvOvmgefN18ASb73gM03AJE=
X-Received: by 2002:a5d:9a11:: with SMTP id s17mr2494384iol.267.1557405428514; 
 Thu, 09 May 2019 05:37:08 -0700 (PDT)
MIME-Version: 1.0
References: <20190508054151.21762-1-jagan@amarulasolutions.com>
 <b3755da63208dffc5c0f7676ece0fe55d4dfd4f7.camel@bootlin.com>
 <CAMty3ZBNGmO6Qjysih=4UROO4s6dyawWw8L13Ga7XFqBZyPdtA@mail.gmail.com>
 <2e7668d0bfd5d328c071730113fe8c63aaab62d0.camel@bootlin.com>
In-Reply-To: <2e7668d0bfd5d328c071730113fe8c63aaab62d0.camel@bootlin.com>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Thu, 9 May 2019 18:06:57 +0530
Message-ID: <CAMty3ZCzY+UgHvA7gabt0vAbWR_zOGv3t=gFp9bJnmTOOU_aMg@mail.gmail.com>
Subject: Re: [RESEND PATCH v7 00/11] rockchip: Add new rk3399 boards
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_053710_518031_C6EFBE6C 
X-CRM114-Status: GOOD (  25.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: U-Boot-Denx <u-boot@lists.denx.de>, Simon Glass <sjg@chromium.org>,
 Kever Yang <kever.yang@rock-chips.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Thu, May 9, 2019 at 6:01 PM Paul Kocialkowski
<paul.kocialkowski@bootlin.com> wrote:
>
> Hi,
>
> On Thu, 2019-05-09 at 16:15 +0530, Jagan Teki wrote:
> > Hi Paul,
> >
> > On Thu, May 9, 2019 at 12:38 PM Paul Kocialkowski
> > <paul.kocialkowski@bootlin.com> wrote:
> > > Hi,
> > >
> > > On Wed, 2019-05-08 at 11:11 +0530, Jagan Teki wrote:
> > > > (Sorry for the noice, I have missed to send two patches from v7)
> > > >
> > > > This is v7 resend patchset for New rk3399 boards support wrt previous
> > > > version[1]
> > > >
> > > > Unfortunately initial version of creating rk3399-u-boot.dtsi and
> > > > orangepi rk3399 changes are merged, so this is rework on top of
> > > > u-boot-rockchip/master.
> > > >
> > > > Overall this series add support below rk3399 boards
> > > > - NanoPI M4
> > > > - NanoPC T4
> > > > - NanoPI NEO4
> > > > - Orangepi RK3399
> > > > - Rock PI 4
> > > > - Rockpro64
> > > >
> > > > All the respective dts(i) files are synced from Linux 5.1-rc2 and few
> > > > dts(i) from linux-next.
> > > >
> > > > SoC u-boot specific dtsi rk3399-u-boot.dtsi changes are part of another
> > > > series [3].
> > > >
> > > > Out of all above boards Rockpor64, Rock-PI and Nanopi NEO4 would support
> > > > booting via Rockchip miniloader as of now.
> > >
> > > Could you send these two boards in a separate series so that we avoid
> > > merging them for now (because SPL support is broken) and then re-
> > > iterate the series later with the DDR bringup? Or maybe find a way to
> > > disable SPL support, but in any case, it's not ok to merge a board with
> > > SPL enabled and broken.
> >
> > I have explained the details about this concern on v2 [1], thought you
> > would comeback on the same line instead here.
>
> Yes, you have already explained the issue, but I don't think it's
> enough a justification to merge broken SPL support. If it was only
> partial or limited, it would be fine, but here it's just broken.
>
> > Anyway, making SPL as an optional is not an idea to go with Mainline
> > as we make many decisions with regards to make SPL is mandatory.
>
> Yes I think making SPL mandatory is a good idea, so that's why I'm
> suggesting that we don't merge the boards until they have SPL support.
>
> > Since the DDR is show stopper here (and it would really need a good
> > amount of time, since it effect the other boards), I can go with TPL
> > enabled boot-chain where ddr bin, SPL and U-Boot proper can be part of
> > booting stages. This way we can avoid skipping SPL usage, and many
> > config changes to make SPL optional.
>
> Honestly I don't really see the point of merging these boards at all if
> they don't have SPL support. People who really want to use them with
> the rockchip blob can cherry-pick the patches from the list in the
> meantime.
>
> It also creates incentive for people to free the DDR init, since that
> becomes a condition to have the board upstream.
>
> What do you think?

I don't know whether you get my point or not? these boards are not
merged yet. What I'm saying is we are going to support them with
TPL-enabled, that was SPL can make use of these boards which still a
valid boot-chain. moreover this way can avoid touching core files and
no specific change require while supporting ddr dtsi.

Jagan.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

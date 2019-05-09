Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02BD0189C8
	for <lists+linux-rockchip@lfdr.de>; Thu,  9 May 2019 14:31:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tBrQRo3w3xHppRo670F4R1IY1Mi4ZwBzVdY3xK8mShw=; b=Era85Hr5dVWhNZ
	8bhAG7S6v3Heb1Ey/g4WElnkFXh2GhFpNVRjNG4vQCPKqUFMzdhVMnK2FZirb6knsCL9llfpSOWAj
	fsB2mKMDEZk3v72ocxwb8uQV9+ums7dzSD1Q2O1UiSYK/xDvzVzBcxDgtx9RsfBy5uClTMeEWy48A
	ZiSQQVsHY+9fzhYVvTXNwpP6clfipzyNPlFN98BKgm9JglLxovKrMkhuMFtNkW4VxK2VShCYHzcQv
	6nWu2tYwuxXm3rkD3f4WAqDqh81sLhRlXj/zE0hbAw3KKytN/XTRNMjE0FiZnk7iYX3/FArawMwPA
	nR05GnGMFCz0VfF4+OMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOiCn-0002ih-Vh; Thu, 09 May 2019 12:31:21 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOiCj-0002hh-KM
 for linux-rockchip@lists.infradead.org; Thu, 09 May 2019 12:31:19 +0000
X-Originating-IP: 90.88.28.253
Received: from aptenodytes (aaubervilliers-681-1-86-253.w90-88.abo.wanadoo.fr
 [90.88.28.253]) (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 337711C0014;
 Thu,  9 May 2019 12:31:06 +0000 (UTC)
Message-ID: <2e7668d0bfd5d328c071730113fe8c63aaab62d0.camel@bootlin.com>
Subject: Re: [RESEND PATCH v7 00/11] rockchip: Add new rk3399 boards
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Jagan Teki <jagan@amarulasolutions.com>, Kever Yang
 <kever.yang@rock-chips.com>
Date: Thu, 09 May 2019 14:30:50 +0200
In-Reply-To: <CAMty3ZBNGmO6Qjysih=4UROO4s6dyawWw8L13Ga7XFqBZyPdtA@mail.gmail.com>
References: <20190508054151.21762-1-jagan@amarulasolutions.com>
 <b3755da63208dffc5c0f7676ece0fe55d4dfd4f7.camel@bootlin.com>
 <CAMty3ZBNGmO6Qjysih=4UROO4s6dyawWw8L13Ga7XFqBZyPdtA@mail.gmail.com>
Organization: Bootlin
User-Agent: Evolution 3.32.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_053117_969297_3D962245 
X-CRM114-Status: GOOD (  19.65  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.197 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 U-Boot-Denx <u-boot@lists.denx.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi,

On Thu, 2019-05-09 at 16:15 +0530, Jagan Teki wrote:
> Hi Paul,
> 
> On Thu, May 9, 2019 at 12:38 PM Paul Kocialkowski
> <paul.kocialkowski@bootlin.com> wrote:
> > Hi,
> > 
> > On Wed, 2019-05-08 at 11:11 +0530, Jagan Teki wrote:
> > > (Sorry for the noice, I have missed to send two patches from v7)
> > > 
> > > This is v7 resend patchset for New rk3399 boards support wrt previous
> > > version[1]
> > > 
> > > Unfortunately initial version of creating rk3399-u-boot.dtsi and
> > > orangepi rk3399 changes are merged, so this is rework on top of
> > > u-boot-rockchip/master.
> > > 
> > > Overall this series add support below rk3399 boards
> > > - NanoPI M4
> > > - NanoPC T4
> > > - NanoPI NEO4
> > > - Orangepi RK3399
> > > - Rock PI 4
> > > - Rockpro64
> > > 
> > > All the respective dts(i) files are synced from Linux 5.1-rc2 and few
> > > dts(i) from linux-next.
> > > 
> > > SoC u-boot specific dtsi rk3399-u-boot.dtsi changes are part of another
> > > series [3].
> > > 
> > > Out of all above boards Rockpor64, Rock-PI and Nanopi NEO4 would support
> > > booting via Rockchip miniloader as of now.
> > 
> > Could you send these two boards in a separate series so that we avoid
> > merging them for now (because SPL support is broken) and then re-
> > iterate the series later with the DDR bringup? Or maybe find a way to
> > disable SPL support, but in any case, it's not ok to merge a board with
> > SPL enabled and broken.
> 
> I have explained the details about this concern on v2 [1], thought you
> would comeback on the same line instead here.

Yes, you have already explained the issue, but I don't think it's
enough a justification to merge broken SPL support. If it was only
partial or limited, it would be fine, but here it's just broken.

> Anyway, making SPL as an optional is not an idea to go with Mainline
> as we make many decisions with regards to make SPL is mandatory.

Yes I think making SPL mandatory is a good idea, so that's why I'm
suggesting that we don't merge the boards until they have SPL support.

> Since the DDR is show stopper here (and it would really need a good
> amount of time, since it effect the other boards), I can go with TPL
> enabled boot-chain where ddr bin, SPL and U-Boot proper can be part of
> booting stages. This way we can avoid skipping SPL usage, and many
> config changes to make SPL optional.

Honestly I don't really see the point of merging these boards at all if
they don't have SPL support. People who really want to use them with
the rockchip blob can cherry-pick the patches from the list in the
meantime.

It also creates incentive for people to free the DDR init, since that
becomes a condition to have the board upstream.

What do you think?

Cheers,

Paul

-- 
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD8621B21CE
	for <lists+linux-rockchip@lfdr.de>; Tue, 21 Apr 2020 10:38:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JLbDWWouXOXN8yA0WW+b3GhkvBVzsPikOZOZbkvKBj4=; b=ddA9ImVgzAPvXH
	lx1rxwKXqyE1idqGAFhSaTSO7pLBjBu0AsazOXyVQXMVPLixbE/+jFfMGHxF4KGVdiXlIaqaDe5Iu
	igilMrGWaJJ+ht4MUbcVGWuM3hQSjrg+AK7vsfQCgzTBw1yhZzDm011O73bf0iEGzi8+VCXrqNDAs
	aJEELJg3mOwKMgluLcEwJ82A+qUaZ7grm42TqQ/GtIztbzw5Ne+CLjuyOoaL6fuXQ0QmwlTMU22vI
	AS0bcmAstTjAfOtzjnc3TZchOT6ggmXdKZaGnu23S7glX71BS87EK7N0tJxp7x5j8wb1Cn/LrVkZ1
	QHNsvnRtYozbQg0ZdgzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQoPu-0006zg-8V; Tue, 21 Apr 2020 08:38:06 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQoPc-0006ln-IN; Tue, 21 Apr 2020 08:37:49 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1jQoPZ-0001XI-1R; Tue, 21 Apr 2020 10:37:45 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Chen-Yu Tsai <wens@kernel.org>
Subject: Re: [PATCH 1/3] arm64: dts: rockchip: add bus-width properties to mmc
 nodes for rk3328.dtsi
Date: Tue, 21 Apr 2020 10:37:44 +0200
Message-ID: <4769044.6T0MzsmYic@diego>
In-Reply-To: <CAGb2v67vV2Bxff5Gj1R8Qx3Cj+nzA5ine12hoXbhGP5Z+S7=UA@mail.gmail.com>
References: <20200416181944.5879-1-jbx6244@gmail.com>
 <2710874.PL6qFFFsBp@diego>
 <CAGb2v67vV2Bxff5Gj1R8Qx3Cj+nzA5ine12hoXbhGP5Z+S7=UA@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_013748_605020_A222ED6F 
X-CRM114-Status: GOOD (  18.94  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree <devicetree@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>, Johan Jonker <jbx6244@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Dienstag, 21. April 2020, 10:29:49 CEST schrieb Chen-Yu Tsai:
> On Tue, Apr 21, 2020 at 4:23 PM Heiko St=FCbner <heiko@sntech.de> wrote:
> >
> > Hi ChenYu,
> >
> > Am Dienstag, 21. April 2020, 05:48:52 CEST schrieb Chen-Yu Tsai:
> > > On Fri, Apr 17, 2020 at 2:19 AM Johan Jonker <jbx6244@gmail.com> wrot=
e:
> > > >
> > > > 'bus-width' and pinctrl containing the bus-pins
> > > > should be in the same file, so add them to
> > > > all mmc nodes in 'rk3328.dtsi'.
> > >
> > > Nope. First of all, pinctrl usage is with pinctrl-N properties, not t=
he
> > > pinctrl device, and there are no defaults set for any of the mmc node=
s.
> > > Second, these are board design specific. For example, boards are free=
 to
> > > use just 4 bits for the eMMC if they so desire. So this should be in =
each
> > > board dts file. If a board is missing this property, fix the board.
> >
> > you are correct that the pinctrl entries are missing from the patches,
> > bus-width and pinctrl should be defined in the same file each time,
> > but for the whole idea I tend to disagree.
> >
> > So far every board with a Rockchip socs follows Rockchip's reference de=
sign
> > for a lot of parts - for example I only see sdmmc nodes with bus-width=
=3D4
> > etc.
> >
> > So the basic idea is to have default pinctrl settings for the settings
> > everybody uses predefined ... if a board comes along that needs differe=
nt
> > settings it is free to redefine that.
> =

> I think having a default is a great idea. :)

especially for controllers that only ever use the same settings anyway.




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

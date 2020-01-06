Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2B0313112D
	for <lists+linux-rockchip@lfdr.de>; Mon,  6 Jan 2020 12:09:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1kpREEVTnuyXMkbYRYDWn5FukuUgCCHDJMq+k3ViwMk=; b=NlUQwMQZ5I/ED2
	CMO3uFZqLgEy1wI28Wn3xFWyJUsIrVA2XcUjn6KSv0DGXkA4qnUxX9+R/JpWgv2O6hde63+tJzMD7
	CUUddr4JOtk7vljOzyi2tzZHref41f9xYUbaq/Zu9gd/G/9DwQ5XrVtglS2GM2unSwnGO/BMQ6iTa
	xRsNteRD5yPSP4AVFUjYwBKkO2DrajwKaat6W3ELDMbXt/bRsEKBbWszygFn37EITu4ky3t9JYTOg
	QxR8BT/moNubvO/lqrR75pvf7sCmHhAOrpTiYMHhbL/Q+mfzcwfFJZqMb+21meD4pY/bCDq30TXHR
	9yLNvgUBtEax31E0rmMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioQGQ-0003cu-PW; Mon, 06 Jan 2020 11:09:38 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioQGN-0003bY-Js; Mon, 06 Jan 2020 11:09:36 +0000
Received: from ip5f5a5f74.dynamic.kabel-deutschland.de ([95.90.95.116]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1ioQG8-0004XS-2c; Mon, 06 Jan 2020 12:09:20 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH v2 00/11] Add PX30 LVDS support
Date: Mon, 06 Jan 2020 12:09:19 +0100
Message-ID: <2064471.Uj1soXtvLx@diego>
In-Reply-To: <1885398.klecWcqSHf@phil>
References: <20191224143900.23567-1-miquel.raynal@bootlin.com>
 <1885398.klecWcqSHf@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_030935_802454_A0D8D702 
X-CRM114-Status: GOOD (  16.52  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 David Airlie <airlied@linux.ie>, Sandy Huang <hjc@rock-chips.com>,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Daniel Vetter <daniel@ffwll.ch>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Sonntag, 5. Januar 2020, 15:05:26 CET schrieb Heiko Stuebner:
> Am Dienstag, 24. Dezember 2019, 15:38:49 CET schrieb Miquel Raynal:
> > Hello,
> > =

> > This series aims at supporting LVDS on PX30.
> > =

> > A first couple of patches update the documentation with the new
> > compatible and the presence of a PHY. Then, the existing Rockchip
> > driver is cleaned and extended to support PX30 specificities. Finally,
> > the PX30 DTSI is updated with CRTC routes, the DSI DPHY and the LVDS
> > IP itself.
> > =

> > Cheers,
> > Miqu=E8l
> > =

> > Changes since v1:
> > * Added Rob's Ack.
> > * Used "must" instead of "should" in the bindings.
> > * Precised that phy-names is an optional property in the case of
> >   PX30.
> > * Renamed the WRITE_EN macro into HIWORD_UPDATE to be aligned with
> >   other files.
> > * Removed extra configuration, not needed for generic panels (see
> >   Sandy Huang answer).
> > * Dropped the display-subsystem routes (useless).
> > * Merged two patches to avoid phandle interdependencies in graphs and
> >   intermediate build errors.
> > =

> > Miquel Raynal (11):
> >   dt-bindings: display: rockchip-lvds: Declare PX30 compatible
> >   dt-bindings: display: rockchip-lvds: Document PX30 PHY
> >   drm/rockchip: lvds: Fix indentation of a #define
> >   drm/rockchip: lvds: Harmonize function names
> >   drm/rockchip: lvds: Change platform data
> >   drm/rockchip: lvds: Create an RK3288 specific probe function
> >   drm/rockchip: lvds: Helpers should return decent values
> >   drm/rockchip: lvds: Pack functions together
> =

> applied patches 1-8 to drm-misc-next
> =

> >   drm/rockchip: lvds: Add PX30 support
> =

> drm-misc-next is currently still at 5.4-rc4, so I'll need to find out how
> to get newer kernel changes in there, as right now we're missing
> the PHY_MODE_LVDS constant.

applied now to drm-misc-next as well, after drm-misc maintainers did the
requested back-merge to get that constant.

Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

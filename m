Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51AA714EC5C
	for <lists+linux-rockchip@lfdr.de>; Fri, 31 Jan 2020 13:18:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nLPbK7PvT0TCCVwmVJp9HvINdOZ2kFQq6D41p5ienLw=; b=n+bh6pgpQ7GanH
	P+FNp9MS+7MZ5+rh9H3yMKotvTU4BfrZZ2o2/LmTOjFhE5VX6vJGOAsnDt9cuM66G4GRHoWaZ+B//
	//G2BY+F+GRyUX4apsZzaiLv/2WAwsbGF8nhrnBS1uQwYgVVrVySRTJ3FIv0MiFWziDuVSXkVtUI7
	aJrDQ+xo1GSsV33tChHVL4MGbHgs3x/dGHV+sQH6b5sIH3YwAvakpRFPQbLUnvGB7MKB13x+GJ6T/
	gSLXBR+/ic59NYJV3JvIKGixbDOn/eOSFujb1B4ihLixlPTGBHFGcWR+V8zxyql8v3LvDDt6BOO99
	1dzNgPV8MNQx/hH0Fc2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixVGA-0004a3-Gn; Fri, 31 Jan 2020 12:18:54 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixVG7-0004Yz-1k
 for linux-rockchip@lists.infradead.org; Fri, 31 Jan 2020 12:18:52 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id C86692954FD;
 Fri, 31 Jan 2020 12:18:48 +0000 (GMT)
Date: Fri, 31 Jan 2020 13:18:45 +0100
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Ezequiel Garcia <ezequiel@collabora.com>
Subject: Re: [PATCH v4 5/6] media: rkvdec: Add the rkvdec driver
Message-ID: <20200131131845.65451a8c@collabora.com>
In-Reply-To: <739f60a89646cc92f26e34523cbe8aaab5697351.camel@collabora.com>
References: <20200129195501.8317-1-ezequiel@collabora.com>
 <20200129195501.8317-6-ezequiel@collabora.com>
 <20200130171249.3ae0444a@collabora.com>
 <739f60a89646cc92f26e34523cbe8aaab5697351.camel@collabora.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200131_041851_235582_CF1F14DA 
X-CRM114-Status: GOOD (  17.21  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, kernel@collabora.com,
 Heiko Stuebner <heiko@sntech.de>, Jonas Karlman <jonas@kwiboo.se>,
 linux-kernel@vger.kernel.org, Tomasz Figa <tfiga@chromium.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Sakari Ailus <sakari.ailus@iki.fi>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Hans Verkuil <hverkuil@xs4all.nl>, Nicolas Dufresne <nicolas@ndufresne.ca>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Fri, 31 Jan 2020 08:53:47 -0300
Ezequiel Garcia <ezequiel@collabora.com> wrote:

> On Thu, 2020-01-30 at 17:12 +0100, Boris Brezillon wrote:
> > On Wed, 29 Jan 2020 16:55:00 -0300
> > Ezequiel Garcia <ezequiel@collabora.com> wrote:
> >   
> > > From: Boris Brezillon <boris.brezillon@collabora.com>
> > > 
> > > The rockchip vdec block is a stateless decoder that's able to decode
> > > H264, HEVC and VP9 content. This commit adds the core infrastructure
> > > and the H264 backend. Support for VP9 and HEVS will be added later on.

						 ^HEVC

> > > 
> > > Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
> > > Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> > > ---
> > > v4:
> > > * Make poc tables const, as suggested by Hans
> > > * Move buffer extra space calculation TRY_FMT, as done on Hantro.
> > > * Get rid of vb2_request_get_buf and open-code
> > >   following Cedrus. We can move it to a helper as a follow-up patch.  
> > 
> > Well, we know what that means in practice :-).
> >   
> 
> Well, not necesarily. I think we can expect a helper soon,
> but it doesn't have to be part of this series :-)

I'd be happy to be proven wrong ;-).

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

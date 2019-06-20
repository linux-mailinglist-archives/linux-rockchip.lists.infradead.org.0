Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB28A4D45C
	for <lists+linux-rockchip@lfdr.de>; Thu, 20 Jun 2019 18:56:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uRYlMcEm4FUZokyvyGiW3Sl0pI2rcBoOeK91HtlmJtQ=; b=hehxjVcfUOF/+0
	xDSfv6oK0iz9mAvhuBvrOPEcivnvIhaqRv1cWcK2YjHqlmALldOt7ESdouEKeLAl6p3A/5VDo5aFB
	CfRJ9ErBK6RSRxbOuuHBr62v0CW8bP+sitET/qu/Dn4XyiWHUaWjvp1aHCYQodRslXIMIljZBPP2R
	Kh6kRv+8DHyb2OKupT8R7VLsBtRXYwL5cfuaKqEQ/f33q4JffZC59sftYCgKozZAwWdrva3YOZOIX
	k2pmOZK0stCRl1T63EhhcUxmp0D+pbyoCIp9GxJdwZ+peWmGc1tvYnUPT5INGBSiDihgybA7xFG7Y
	u8hTU402Xo1/xYTbRunA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1he0Ma-0005IC-3L; Thu, 20 Jun 2019 16:56:40 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1he0MV-0005HK-HW
 for linux-rockchip@lists.infradead.org; Thu, 20 Jun 2019 16:56:37 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 5FE2B26A371
Message-ID: <385c93321be1ec5875769d1a825d0fcd44677959.camel@collabora.com>
Subject: Re: [PATCH 1/3] dt-bindings: display: rockchip: document VOP gamma
 LUT address
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Doug Anderson <dianders@chromium.org>
Date: Thu, 20 Jun 2019 13:56:23 -0300
In-Reply-To: <CAD=FV=UpZAjrWkQ7qj5Wo2tf2wkg5Q-34Sun0MOtYLBAwY731Q@mail.gmail.com>
References: <20190618213406.7667-1-ezequiel@collabora.com>
 <20190618213406.7667-2-ezequiel@collabora.com>
 <CAD=FV=UpZAjrWkQ7qj5Wo2tf2wkg5Q-34Sun0MOtYLBAwY731Q@mail.gmail.com>
Organization: Collabora
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_095635_714809_8336F167 
X-CRM114-Status: GOOD (  13.65  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
 Jacopo Mondi <jacopo@jmondi.org>,
 Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
 Sandy Huang <hjc@rock-chips.com>, dri-devel <dri-devel@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>, "open list:ARM/Rockchip
 SoC..." <linux-rockchip@lists.infradead.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Sean Paul <seanpaul@chromium.org>, Rob Herring <robh+dt@kernel.org>,
 kernel@collabora.com, Ilia Mirkin <imirkin@alum.mit.edu>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Thu, 2019-06-20 at 09:43 -0700, Doug Anderson wrote:
> Hi,
> 
> On Tue, Jun 18, 2019 at 2:43 PM Ezequiel Garcia <ezequiel@collabora.com> wrote:
> > Add the register specifier description for an
> > optional gamma LUT address.
> > 
> > Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> > ---
> >  .../bindings/display/rockchip/rockchip-vop.txt         | 10 +++++++++-
> >  1 file changed, 9 insertions(+), 1 deletion(-)
> > 
> > diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip-vop.txt b/Documentation/devicetree/bindings/display/rockchip/rockchip-
> > vop.txt
> > index 4f58c5a2d195..97ad78cc7e03 100644
> > --- a/Documentation/devicetree/bindings/display/rockchip/rockchip-vop.txt
> > +++ b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop.txt
> > @@ -20,6 +20,13 @@ Required properties:
> >                 "rockchip,rk3228-vop";
> >                 "rockchip,rk3328-vop";
> > 
> > +- reg: Must contain one entry corresponding to the base address and length
> > +       of the register space. Can optionally contain a second entry
> > +       corresponding to the CRTC gamma LUT address.
> > +
> > +- reg-names: "base" for the base register space. If present, the CRTC
> > +       gamma LUT name should be "lut".
> 
> As per Rob Herring, current suggestion is to avoid reg-names when
> possible.  The code should just look for the presence of a 2nd entry
> and assume that if it's there that it's the lut range.  Full context:
> 
> > https://lore.kernel.org/lkml/CAL_Jsq+MMunmVWqeW9v2RyzsMKP+=kMzeTHNMG4JDHM7Fy0HBg@mail.gmail.com/
> 

Oh, that's news to me. I was assuming having reg-names was preferred.

Thanks for the feedback, I'll send a new version.


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

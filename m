Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E070F3841
	for <lists+linux-rockchip@lfdr.de>; Thu,  7 Nov 2019 20:11:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b/QyEpTVgiGy1kHtcmXfvYTJB+BfV2YPqlKvNhq61vs=; b=ZF6UxKcC7RCXsp
	ZpJhzPj2xd4dzF+qzgJt54b+LWHg/OHh9b4vBO0G+kcV8B+tV10+a4MbzcI4QTL1Ypnjl0L/Trc0X
	h/eeNCtjglupVmJ+wk7r0i2Xn3IKjYGmOKjnToNetbWCdOnQRR295AJRcYqjuoPZNZitvEheBH0dp
	fDHDZrQNON0FKoLJjrMht2KDnAiBqrotZgM5YE3Dr63jqe4Z1+LYRwrUlEdpWCa0UO19ZLYATevVk
	yShOPujf46B7HkgVmnrY+KTNh8Pu1U9aRG8EOwA9SwoHdWtgRagj7dEi8Jhhvd3zPf8GIwQCHLHWF
	8eVPW//ioJ7Z9pW/d9Dw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSnBp-0005v4-D7; Thu, 07 Nov 2019 19:11:29 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSnBb-0005kt-79; Thu, 07 Nov 2019 19:11:16 +0000
Received: from ip5f5a6266.dynamic.kabel-deutschland.de ([95.90.98.102]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko.stuebner@theobroma-systems.com>)
 id 1iSnBK-0004qp-Rm; Thu, 07 Nov 2019 20:10:58 +0100
From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: Re: [PATCH 2/3] drm/rockchip: add ability to handle external dphys in
 mipi-dsi
Date: Thu, 07 Nov 2019 20:10:57 +0100
Message-ID: <1772103.UzfIEELiUT@phil>
In-Reply-To: <20191106130557.GF4878@pendragon.ideasonboard.com>
References: <20191106112650.8365-1-heiko.stuebner@theobroma-systems.com>
 <20191106112650.8365-2-heiko.stuebner@theobroma-systems.com>
 <20191106130557.GF4878@pendragon.ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_111115_408777_7A719D55 
X-CRM114-Status: GOOD (  18.70  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.7 SPF_NEUTRAL            SPF: sender does not match SPF record (neutral)
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, jernej.skrabec@siol.net,
 narmstrong@baylibre.com, linux-kernel@vger.kernel.org, jonas@kwiboo.se,
 hjc@rock-chips.com, dri-devel@lists.freedesktop.org, philippe.cornu@st.com,
 yannick.fertre@st.com, a.hajda@samsung.com, robh+dt@kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 christoph.muellner@theobroma-systems.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Laurent,

Am Mittwoch, 6. November 2019, 14:05:57 CET schrieb Laurent Pinchart:
> On Wed, Nov 06, 2019 at 12:26:49PM +0100, Heiko Stuebner wrote:
> > While the common case is that the dsi controller uses an internal dphy,
> > accessed through the phy registers inside the dsi controller, there is
> > also the possibility to use a separate dphy from a different vendor.
> > 
> > One such case is the Rockchip px30 that uses a Innosilicon Mipi dphy,
> > so add the support for handling such a constellation, including the pll
> > also getting generated inside that external phy.
> > 
> > Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> > ---
> >  .../display/rockchip/dw_mipi_dsi_rockchip.txt |  7 ++-
> >  .../gpu/drm/rockchip/dw-mipi-dsi-rockchip.c   | 54 ++++++++++++++++++-
> >  2 files changed, 57 insertions(+), 4 deletions(-)
> > 
> > diff --git a/Documentation/devicetree/bindings/display/rockchip/dw_mipi_dsi_rockchip.txt b/Documentation/devicetree/bindings/display/rockchip/dw_mipi_dsi_rockchip.txt
> > index ce4c1fc9116c..8b25156a9dcf 100644
> > --- a/Documentation/devicetree/bindings/display/rockchip/dw_mipi_dsi_rockchip.txt
> > +++ b/Documentation/devicetree/bindings/display/rockchip/dw_mipi_dsi_rockchip.txt
> > @@ -8,8 +8,9 @@ Required properties:
> >  	      "rockchip,rk3399-mipi-dsi", "snps,dw-mipi-dsi".
> >  - reg: Represent the physical address range of the controller.
> >  - interrupts: Represent the controller's interrupt to the CPU(s).
> > -- clocks, clock-names: Phandles to the controller's pll reference
> > -  clock(ref) and APB clock(pclk). For RK3399, a phy config clock
> > +- clocks, clock-names: Phandles to the controller's and APB clock(pclk)
> > +  and either a pll reference clock(ref) (internal dphy) or pll clock(pll)
> > +  (when connected to an external phy). For RK3399, a phy config clock
> 
> Why does external PHY clock need to be specified here ? Shouldn't it be
> handled by the PHY instead ?

You're completely right and it seems I didn't "see the forest  for the trees",
as there actually exists the phy_configure_* structs to transfer parameters
to an external phy in a correct way.

I'll revise my approach (and the phy driver) accordingly.

Thanks for the push in the right direction :-)
Heiko




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

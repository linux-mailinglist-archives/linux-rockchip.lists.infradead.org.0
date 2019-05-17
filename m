Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCAB021710
	for <lists+linux-rockchip@lfdr.de>; Fri, 17 May 2019 12:38:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zqzy3sVrbUA9Y6WXOECD9Hduig0CXMOQVV+mCWaF+OM=; b=vDZhrIbOGmv7ME
	X7b+gzRwW5hLuhRgnIuq8m9hJjHIDC0TG5TASzZj1WvZ7bw+V508gkCNL5zw6UPbTkWVF1fviZYX4
	PsFNDWcyKXm0XiIBrL1mHnTCMKUJNw0UAlk34ztOejB53PlqMetIAY385rsda49prYKKX9XzHXpgt
	geamSHHtMDjDc3uMPnpTAUDAmsExy14fWEtGUwr3SnyKMSwBItkw1oCLuQgw4AMpjmzcn3SlY4Ic7
	NB+pTndCGaWD6mqF/9dgN6g+CP27lQzB3KXjQxxS709i9SqCFqh5mFOHdqu8AyByu3SDLcWZ6cmnw
	Rajx2Wc0g0IJvZwXxl4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRaFb-0002nJ-4V; Fri, 17 May 2019 10:38:07 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRaFK-0002Qm-LJ; Fri, 17 May 2019 10:37:53 +0000
Received: from we0524.dip.tu-dresden.de ([141.76.178.12] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hRaFG-0001Rc-81; Fri, 17 May 2019 12:37:46 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH v2 1/3] dt-bindings: gpu: add #cooling-cells property to
 the ARM Mali Midgard GPU binding
Date: Fri, 17 May 2019 12:37:45 +0200
Message-ID: <13349008.xMc91k09bk@phil>
In-Reply-To: <CAD=FV=UQcv1+HC2eAk2ctBofufCi9-VvWc+OnY0mtBw3L-YG+Q@mail.gmail.com>
References: <20190516172510.181473-1-mka@chromium.org>
 <CAD=FV=UQcv1+HC2eAk2ctBofufCi9-VvWc+OnY0mtBw3L-YG+Q@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_033751_043984_9673C78D 
X-CRM114-Status: GOOD (  20.24  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 David Airlie <airlied@linux.ie>, Kevin Hilman <khilman@baylibre.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Matthias Kaehlcke <mka@chromium.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Donnerstag, 16. Mai 2019, 19:40:38 CEST schrieb Doug Anderson:
> Hi,
> 
> On Thu, May 16, 2019 at 10:25 AM Matthias Kaehlcke <mka@chromium.org> wrote:
> 
> > The GPU can be used as a thermal cooling device, add an optional
> > '#cooling-cells' property.
> >
> > Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> > ---
> > Changes in v2:
> > - patch added to the series
> > ---
> >  Documentation/devicetree/bindings/gpu/arm,mali-midgard.txt | 3 +++
> >  1 file changed, 3 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/gpu/arm,mali-midgard.txt b/Documentation/devicetree/bindings/gpu/arm,mali-midgard.txt
> > index 18a2cde2e5f3..61fd41a20f99 100644
> > --- a/Documentation/devicetree/bindings/gpu/arm,mali-midgard.txt
> > +++ b/Documentation/devicetree/bindings/gpu/arm,mali-midgard.txt
> > @@ -37,6 +37,8 @@ Optional properties:
> >  - operating-points-v2 : Refer to Documentation/devicetree/bindings/opp/opp.txt
> >    for details.
> >
> > +- #cooling-cells: Refer to Documentation/devicetree/bindings/thermal/thermal.txt
> > +  for details.
> >
> >  Example for a Mali-T760:
> >
> > @@ -51,6 +53,7 @@ gpu@ffa30000 {
> >         mali-supply = <&vdd_gpu>;
> >         operating-points-v2 = <&gpu_opp_table>;
> >         power-domains = <&power RK3288_PD_GPU>;
> > +       #cooling-cells = <2>;
> >  };
> 
> You will conflict with d5ff1adb3809 ("dt-bindings: gpu: mali-midgard:
> Add resets property"), but it's easy to rebase.  I'll leave it to
> whoever is going to land this to decide if they would like you to
> re-post or if they can handle resolving the conflict themselves.
> +Kevin who appears to be the one who landed the conflicting commit.

No problem, I can update this comment when applying
(likely to drm-misc to not create more conflicts),
but will give Rob a bit more time to possibly object :-)

[somewhere in the recent past, he said to not wait on him on the tiny
property-additions, and cooling-cells is pretty well used one at that]


> With that:
> 
> Reviewed-by: Douglas Anderson <dianders@chromium.org>






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

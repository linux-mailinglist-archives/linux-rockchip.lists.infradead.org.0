Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 192915B170
	for <lists+linux-rockchip@lfdr.de>; Sun, 30 Jun 2019 22:05:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hs0Rm9okqtBWAtJ/ZepVtG8L0GeAkKKm0ZIB3BDfyKc=; b=IlJUpXc3U7LOzk
	xVV2aWcOFi7g/d+AmOL7aW0Y1OXwKIaObi0HocEbPRnVpMf6fKuUCMRXjb+m94Lt1B8OE9ZK9YLHJ
	iiswn/NrYiVFiqVjwtqZ9/U+X5ZmK7AHqLAzH8oFogQN2OvE3WlQ15kbxEAcrXknWTM5m7pd2j50x
	7cqFy9JyKL6u8H6IBeY423Fth9ANj55e+OQlbexD8xfmKMOTabt7fgu4K+KQu+X/9yWxJwnXQ8jtY
	5pBdT9RTDtARhgNIVNeqpfMgcrPBBEluNXw+AjlUeX2cL75fF1+1P+nHbB3BHAXZDkksW56th9uIT
	O3gAb5h7QS5dlCehAZsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhg4k-0003fi-9B; Sun, 30 Jun 2019 20:05:26 +0000
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhg4d-0002Ny-66
 for linux-rockchip@lists.infradead.org; Sun, 30 Jun 2019 20:05:22 +0000
Received: from ravnborg.org (unknown [158.248.194.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk4.altibox.net (Postfix) with ESMTPS id CCB2680426;
 Sun, 30 Jun 2019 22:03:01 +0200 (CEST)
Date: Sun, 30 Jun 2019 22:02:59 +0200
From: Sam Ravnborg <sam@ravnborg.org>
To: Douglas Anderson <dianders@chromium.org>
Subject: Re: [PATCH v5 1/7] dt-bindings: Add panel-timing subnode to
 simple-panel
Message-ID: <20190630200259.GA15102@ravnborg.org>
References: <20190401171724.215780-1-dianders@chromium.org>
 <20190401171724.215780-2-dianders@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190401171724.215780-2-dianders@chromium.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=VcLZwmh9 c=1 sm=1 tr=0
 a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
 a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=8nJEP1OIZ-IA:10 a=cm27Pg_UAAAA:8
 a=-VAfIpHNAAAA:8 a=s8YR1HE3AAAA:8 a=VwQbUJbxAAAA:8 a=pGLkceISAAAA:8
 a=e5mUnYsNAAAA:8 a=JfrnYn6hAAAA:8 a=rQ-KyBzUA4MiSMEBMPUA:9
 a=wPNLvfGTeEIA:10 a=xmb-EsYY8bH0VWELuYED:22 a=srlwD-8ojaedGGhPAyx8:22
 a=jGH_LyMDp9YhSvY-UuyI:22 a=AjGcO6oz07-iQ99wixmX:22
 a=Vxmtnl_E_bksehYqCbjh:22 a=1CNFftbPRP8L7MoqJWF3:22
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190630_130519_756601_8D98C09D 
X-CRM114-Status: GOOD (  24.69  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [109.247.116.15 listed in list.dnswl.org]
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
 Heiko Stuebner <heiko@sntech.de>, David Airlie <airlied@linux.ie>,
 Jeffy Chen <jeffy.chen@rock-chips.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-rockchip@lists.infradead.org,
 Thierry Reding <thierry.reding@gmail.com>, Sean Paul <seanpaul@chromium.org>,
 dri-devel@lists.freedesktop.org,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Enric =?iso-8859-1?Q?Balletb=F2?= <enric.balletbo@collabora.com>,
 =?iso-8859-1?Q?St=E9phane?= Marchesin <marcheu@chromium.org>,
 Ezequiel Garcia <ezequiel@collabora.com>, mka@chromium.org,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Douglas.

Some long overdue review feedback.

On Mon, Apr 01, 2019 at 10:17:18AM -0700, Douglas Anderson wrote:
> From: Sean Paul <seanpaul@chromium.org>
> =

> This patch adds a new subnode to simple-panel allowing us to override
> the typical timing expressed in the panel's display_timing.
> =

> Changes in v2:
>  - Split out the binding into a new patch (Rob)
>  - display-timings is a new section (Rob)
>  - Use the full display-timings subnode instead of picking the timing
>    out (Rob/Thierry)
> Changes in v3:
>  - Go back to using the timing subnode directly, but rename to
>    panel-timing (Rob)
> Changes in v4:
>  - Simplify desc. for when override should be used (Thierry/Laurent)
>  - Removed Rob H review since it's been a year and wording changed
> Changes in v5:
>  - Removed bit about OS may ignore (Rob/Ezequiel)
> =

> Cc: Doug Anderson <dianders@chromium.org>
> Cc: Eric Anholt <eric@anholt.net>
> Cc: Heiko Stuebner <heiko@sntech.de>
> Cc: Jeffy Chen <jeffy.chen@rock-chips.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: St=E9phane Marchesin <marcheu@chromium.org>
> Cc: Thierry Reding <thierry.reding@gmail.com>
> Cc: devicetree@vger.kernel.org
> Cc: dri-devel@lists.freedesktop.org
> Cc: linux-rockchip@lists.infradead.org
> Signed-off-by: Sean Paul <seanpaul@chromium.org>
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> ---
> =

>  .../bindings/display/panel/simple-panel.txt   | 22 +++++++++++++++++++
>  1 file changed, 22 insertions(+)
> =

> diff --git a/Documentation/devicetree/bindings/display/panel/simple-panel=
.txt b/Documentation/devicetree/bindings/display/panel/simple-panel.txt
> index b2b872c710f2..93882268c0b9 100644
> --- a/Documentation/devicetree/bindings/display/panel/simple-panel.txt
> +++ b/Documentation/devicetree/bindings/display/panel/simple-panel.txt
> @@ -15,6 +15,16 @@ Optional properties:
>    (hot plug detect) signal, but the signal isn't hooked up so we should
>    hardcode the max delay from the panel spec when powering up the panel.
>  =

> +panel-timing subnode
> +--------------------
> +
> +This optional subnode is for devices which require a mode differing
> +from the panel's "typical" display timing.
Meybe add here that it is expected that the panel has included timing
in the driver itself, and not as part of DT.
So what is specified here is a more precise variant, within the limits
of what is specified for the panel.

> +
> +Format information on the panel-timing subnode can be found in
> +display-timing.txt.
display-timing defines otional properties:
hsync-active, pixelclk-active, doublescan etc.
It is not from the above obvious which properties from display-timings
that can be specified for a panel-timing sub-node.
Maybe because they can all be specified?

Display-timing allows timings to be specified as a range.
If it is also OK to specify a range for panle-timing then everythign is
fine. But if the panel-timign subnode do not allow ranges this needs to
be specified.

> +
> +
>  Example:
>  =

>  	panel: panel {
> @@ -25,4 +35,16 @@ Example:
>  		enable-gpios =3D <&gpio 90 0>;
>  =

>  		backlight =3D <&backlight>;
> +
> +		panel-timing {
> +			clock-frequency =3D <266604720>;
> +			hactive =3D <2400>;
> +			hfront-porch =3D <48>;
> +			hback-porch =3D <84>;
> +			hsync-len =3D <32>;
> +			vactive =3D <1600>;
> +			vfront-porch =3D <3>;
> +			vback-porch =3D <120>;
> +			vsync-len =3D <10>;
> +		};
>  	};
> -- =

> 2.21.0.392.gf8f6787159e-goog
> =

> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2CF21C4337
	for <lists+linux-rockchip@lfdr.de>; Mon,  4 May 2020 19:48:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RLqUxAKWkvGBERwjfRNVNi9yJMUkkXcaOW1Btcdhs+4=; b=b1GYUVy04URR8Y
	RedbFuesxrp7pQy5W0AF56WhNPpD0PnZkr7YsnJEvvc+uDyt/9HfqkL0wn7P/SqQxbCLZ/S4ndpLp
	UlBjrax3FKELFGn0Cjf8jqxdJsdGAynD+CrX2xcItSZJZDHfrjLLGjIITbnp2XsobYedadyLs+dUa
	HC6v4tAxK3NyJr6NMdyegKwJnkw3357di4EgxiNyBsaXR7xonkLE0dDNWpffZ+R7wlNDSMdhUxZYi
	b/WPEkTK53hgT5L55oey0NzSZ5KIJAPqqanhz10WJshtd2mS38vAaPqnpkEzLpFteG+2ncC6H/doF
	FKcm3jTJUvvY39DgnGMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVfC7-0001JU-Lb; Mon, 04 May 2020 17:47:55 +0000
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVfBx-0000u2-65; Mon, 04 May 2020 17:47:47 +0000
Received: from ravnborg.org (unknown [158.248.194.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk4.altibox.net (Postfix) with ESMTPS id 674D0804C8;
 Mon,  4 May 2020 19:45:29 +0200 (CEST)
Date: Mon, 4 May 2020 19:45:22 +0200
From: Sam Ravnborg <sam@ravnborg.org>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Subject: Re: [PATCH] docs: dt: fix broken links due to txt->yaml renames
Message-ID: <20200504174522.GA3383@ravnborg.org>
References: <967df5c3303b478b76199d4379fe40f5094f3f9b.1588584538.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <967df5c3303b478b76199d4379fe40f5094f3f9b.1588584538.git.mchehab+huawei@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=MOBOZvRl c=1 sm=1 tr=0
 a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
 a=kj9zAlcOel0A:10 a=VwQbUJbxAAAA:8 a=7gkXJVJtAAAA:8 a=7CQSdrXTAAAA:8
 a=8AirrxEcAAAA:8 a=vzhER2c_AAAA:8 a=pGLkceISAAAA:8 a=e5mUnYsNAAAA:8
 a=bwdeMy8yTPKsQMvDTKEA:9 a=CjuIK1q_8ugA:10 a=AjGcO6oz07-iQ99wixmX:22
 a=E9Po1WZjFZOl8hwRPBS3:22 a=a-qgeE7W1pNrGK8U0ZQC:22
 a=ST-jHhOKWsTCqRlWije3:22 a=0YTRHmU2iG2pZC6F1fw2:22
 a=Vxmtnl_E_bksehYqCbjh:22
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_104745_761962_AB021BED 
X-CRM114-Status: GOOD (  23.61  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: alsa-devel@alsa-project.org, Olivier Moysan <olivier.moysan@st.com>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org,
 linux-mips@vger.kernel.org, Andrzej Hajda <a.hajda@samsung.com>,
 Jonathan Corbet <corbet@lwn.net>, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, Liam Girdwood <lgirdwood@gmail.com>,
 Sean Wang <sean.wang@mediatek.com>, Jyri Sarha <jsarha@ti.com>,
 Mark Brown <broonie@kernel.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Arnaud Pouliquen <arnaud.pouliquen@st.com>, Sandy Huang <hjc@rock-chips.com>,
 linux-kernel@vger.kernel.org, linux-bluetooth@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, netdev@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Mauro.

On Mon, May 04, 2020 at 11:30:20AM +0200, Mauro Carvalho Chehab wrote:
> There are some new broken doc links due to yaml renames
> at DT. Developers should really run:
> 
> 	./scripts/documentation-file-ref-check
> 
> in order to solve those issues while submitting patches.
Would love if some bot could do this for me on any patches that creates
.yaml files or so.
I know I will forget this and it can be automated.
If I get a bot mail that my patch would broke a link I would
have it fixed before it hits any tree.


> This tool can even fix most of the issues with:
> 
> 	./scripts/documentation-file-ref-check --fix
> 
> Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>

Patch looks good.
Acked-by: Sam Ravnborg <sam@ravnborg.org>

> ---
> 
> PS.: This patch is against today's linux-next.
> 
> 
>  .../devicetree/bindings/display/bridge/sii902x.txt          | 2 +-
>  .../devicetree/bindings/display/rockchip/rockchip-drm.yaml  | 2 +-
>  .../devicetree/bindings/net/mediatek-bluetooth.txt          | 2 +-
>  .../devicetree/bindings/sound/audio-graph-card.txt          | 2 +-
>  .../devicetree/bindings/sound/st,sti-asoc-card.txt          | 2 +-
>  Documentation/mips/ingenic-tcu.rst                          | 2 +-
>  MAINTAINERS                                                 | 6 +++---
>  7 files changed, 9 insertions(+), 9 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/display/bridge/sii902x.txt b/Documentation/devicetree/bindings/display/bridge/sii902x.txt
> index 6e14e087c0d0..0d1db3f9da84 100644
> --- a/Documentation/devicetree/bindings/display/bridge/sii902x.txt
> +++ b/Documentation/devicetree/bindings/display/bridge/sii902x.txt
> @@ -37,7 +37,7 @@ Optional properties:
>  	simple-card or audio-graph-card binding. See their binding
>  	documents on how to describe the way the sii902x device is
>  	connected to the rest of the audio system:
> -	Documentation/devicetree/bindings/sound/simple-card.txt
> +	Documentation/devicetree/bindings/sound/simple-card.yaml
>  	Documentation/devicetree/bindings/sound/audio-graph-card.txt
>  	Note: In case of the audio-graph-card binding the used port
>  	index should be 3.
> diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip-drm.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip-drm.yaml
> index ec8ae742d4da..7204da5eb4c5 100644
> --- a/Documentation/devicetree/bindings/display/rockchip/rockchip-drm.yaml
> +++ b/Documentation/devicetree/bindings/display/rockchip/rockchip-drm.yaml
> @@ -24,7 +24,7 @@ properties:
>      description: |
>        Should contain a list of phandles pointing to display interface port
>        of vop devices. vop definitions as defined in
> -      Documentation/devicetree/bindings/display/rockchip/rockchip-vop.txt
> +      Documentation/devicetree/bindings/display/rockchip/rockchip-vop.yaml
>  
>  required:
>    - compatible
> diff --git a/Documentation/devicetree/bindings/net/mediatek-bluetooth.txt b/Documentation/devicetree/bindings/net/mediatek-bluetooth.txt
> index 219bcbd0d344..9ef5bacda8c1 100644
> --- a/Documentation/devicetree/bindings/net/mediatek-bluetooth.txt
> +++ b/Documentation/devicetree/bindings/net/mediatek-bluetooth.txt
> @@ -3,7 +3,7 @@ MediaTek SoC built-in Bluetooth Devices
>  
>  This device is a serial attached device to BTIF device and thus it must be a
>  child node of the serial node with BTIF. The dt-bindings details for BTIF
> -device can be known via Documentation/devicetree/bindings/serial/8250.txt.
> +device can be known via Documentation/devicetree/bindings/serial/8250.yaml.
>  
>  Required properties:
>  
> diff --git a/Documentation/devicetree/bindings/sound/audio-graph-card.txt b/Documentation/devicetree/bindings/sound/audio-graph-card.txt
> index 269682619a70..d5f6919a2d69 100644
> --- a/Documentation/devicetree/bindings/sound/audio-graph-card.txt
> +++ b/Documentation/devicetree/bindings/sound/audio-graph-card.txt
> @@ -5,7 +5,7 @@ It is based on common bindings for device graphs.
>  see ${LINUX}/Documentation/devicetree/bindings/graph.txt
>  
>  Basically, Audio Graph Card property is same as Simple Card.
> -see ${LINUX}/Documentation/devicetree/bindings/sound/simple-card.txt
> +see ${LINUX}/Documentation/devicetree/bindings/sound/simple-card.yaml
>  
>  Below are same as Simple-Card.
>  
> diff --git a/Documentation/devicetree/bindings/sound/st,sti-asoc-card.txt b/Documentation/devicetree/bindings/sound/st,sti-asoc-card.txt
> index 4d51f3f5ea98..a6ffcdec6f6a 100644
> --- a/Documentation/devicetree/bindings/sound/st,sti-asoc-card.txt
> +++ b/Documentation/devicetree/bindings/sound/st,sti-asoc-card.txt
> @@ -5,7 +5,7 @@ codec or external codecs.
>  
>  sti sound drivers allows to expose sti SoC audio interface through the
>  generic ASoC simple card. For details about sound card declaration please refer to
> -Documentation/devicetree/bindings/sound/simple-card.txt.
> +Documentation/devicetree/bindings/sound/simple-card.yaml.
>  
>  1) sti-uniperiph-dai: audio dai device.
>  ---------------------------------------
> diff --git a/Documentation/mips/ingenic-tcu.rst b/Documentation/mips/ingenic-tcu.rst
> index c5a646b14450..2b75760619b4 100644
> --- a/Documentation/mips/ingenic-tcu.rst
> +++ b/Documentation/mips/ingenic-tcu.rst
> @@ -68,4 +68,4 @@ and frameworks can be controlled from the same registers, all of these
>  drivers access their registers through the same regmap.
>  
>  For more information regarding the devicetree bindings of the TCU drivers,
> -have a look at Documentation/devicetree/bindings/timer/ingenic,tcu.txt.
> +have a look at Documentation/devicetree/bindings/timer/ingenic,tcu.yaml.
> diff --git a/MAINTAINERS b/MAINTAINERS
> index b6ec0b3c3125..b70842425302 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -3911,7 +3911,7 @@ L:	linux-crypto@vger.kernel.org
>  S:	Supported
>  F:	drivers/char/hw_random/cctrng.c
>  F:	drivers/char/hw_random/cctrng.h
> -F:	Documentation/devicetree/bindings/rng/arm-cctrng.txt
> +F:	Documentation/devicetree/bindings/rng/arm-cctrng.yaml
>  W:	https://developer.arm.com/products/system-ip/trustzone-cryptocell/cryptocell-700-family
>  
>  CEC FRAMEWORK
> @@ -5446,7 +5446,7 @@ F:	include/uapi/drm/r128_drm.h
>  DRM DRIVER FOR RAYDIUM RM67191 PANELS
>  M:	Robert Chiras <robert.chiras@nxp.com>
>  S:	Maintained
> -F:	Documentation/devicetree/bindings/display/panel/raydium,rm67191.txt
> +F:	Documentation/devicetree/bindings/display/panel/raydium,rm67191.yaml
>  F:	drivers/gpu/drm/panel/panel-raydium-rm67191.c
>  
>  DRM DRIVER FOR ROCKTECH JH057N00900 PANELS
> @@ -16294,7 +16294,7 @@ M:	Hoan Tran <hoan@os.amperecomputing.com>
>  M:	Serge Semin <fancer.lancer@gmail.com>
>  L:	linux-gpio@vger.kernel.org
>  S:	Maintained
> -F:	Documentation/devicetree/bindings/gpio/snps-dwapb-gpio.txt
> +F:	Documentation/devicetree/bindings/gpio/snps,dw-apb-gpio.yaml
>  F:	drivers/gpio/gpio-dwapb.c
>  
>  SYNOPSYS DESIGNWARE AXI DMAC DRIVER
> -- 
> 2.25.4
> 
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

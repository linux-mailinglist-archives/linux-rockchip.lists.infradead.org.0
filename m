Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F88417CFF0
	for <lists+linux-rockchip@lfdr.de>; Sat,  7 Mar 2020 21:08:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5r903r1K3R5RF2z0ImY/2xmIfAaL383zYlvHE9fvDMo=; b=DT+12kzSJ7ZNSI
	PAy+myelcfZ+9irC2TjOZBCj7AwGiWajcs0dd9lanX0f6ZRRq44Nxx16Gm69jvioXYH+3pI+dowaT
	1cGG4gQZVAhSuHPMf4g2SKJI5Ci9tP6K1lf5RofzBFWwEJFDEoa9enfln2TuZvYpqWUKqy2HYllBl
	V+kcA+CcZakdeiaAluFGPS4AuryMMN/jZIP5qlceihtPMgxFHTrr2TU/G9nrpUwDZqtYjDTg0cclm
	+Ago5k4tvLqmaUlHmw18l4zosw7TSllUgY5Ileh+dMrWQQntADVbNFBwwCGyS8BtHkT9AWZ3lADBG
	JYPj82RFB1T+V3i24DQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAfkK-0000M3-9U; Sat, 07 Mar 2020 20:08:28 +0000
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAfkF-0000L2-Q3; Sat, 07 Mar 2020 20:08:25 +0000
Received: from ravnborg.org (unknown [158.248.194.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk4.altibox.net (Postfix) with ESMTPS id C7F2880560;
 Sat,  7 Mar 2020 21:08:14 +0100 (CET)
Date: Sat, 7 Mar 2020 21:08:13 +0100
From: Sam Ravnborg <sam@ravnborg.org>
To: Thomas Zimmermann <tzimmermann@suse.de>
Subject: Re: [PATCH 00/22] drm: Convert drivers to drm_simple_encoder_init()
Message-ID: <20200307200813.GA15363@ravnborg.org>
References: <20200305155950.2705-1-tzimmermann@suse.de>
 <20200306142212.GF4878@pendragon.ideasonboard.com>
 <bccc380a-8925-81a7-34fe-5a1744a766d0@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <bccc380a-8925-81a7-34fe-5a1744a766d0@suse.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=XpTUx2N9 c=1 sm=1 tr=0
 a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
 a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=kj9zAlcOel0A:10 a=P1BnusSwAAAA:8
 a=7gkXJVJtAAAA:8 a=S-uJQXsthdm-Wup5EDkA:9 a=CjuIK1q_8ugA:10
 a=D0XLA9XvdZm18NrgonBM:22 a=E9Po1WZjFZOl8hwRPBS3:22
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200307_120824_208787_2C387E18 
X-CRM114-Status: GOOD (  24.04  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [109.247.116.15 listed in list.dnswl.org]
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
Cc: ludovic.desroches@microchip.com, hamohammed.sa@gmail.com,
 alexandre.belloni@bootlin.com, airlied@linux.ie,
 dri-devel@lists.freedesktop.org, linux@armlinux.org.uk, paul@crapouillou.net,
 linux-tegra@vger.kernel.org, thierry.reding@gmail.com,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 linux-samsung-soc@vger.kernel.org, jy0922.shim@samsung.com, hjc@rock-chips.com,
 abrodkin@synopsys.com, sebastian.reichel@collabora.com, krzk@kernel.org,
 jonathanh@nvidia.com, linux-rockchip@lists.infradead.org, wens@csie.org,
 tomi.valkeinen@ti.com, linux-imx@nxp.com, xinliang.liu@linaro.org,
 kong.kongxinwei@hisilicon.com, puck.chen@hisilicon.com, s.hauer@pengutronix.de,
 alison.wang@nxp.com, jsarha@ti.com, linux-mediatek@lists.infradead.org,
 matthias.bgg@gmail.com, virtualization@lists.linux-foundation.org,
 jernej.skrabec@siol.net, rodrigosiqueiramelo@gmail.com, bbrezillon@kernel.org,
 jingoohan1@gmail.com, sw0312.kim@samsung.com, nicolas.ferre@microchip.com,
 kyungmin.park@samsung.com, kieran.bingham+renesas@ideasonboard.com,
 kgene@kernel.org, kernel@pengutronix.de, zourongrong@gmail.com,
 shawnguo@kernel.org, kraxel@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Thomas.

On Fri, Mar 06, 2020 at 04:18:52PM +0100, Thomas Zimmermann wrote:
> Hi Laurent
> 
> Am 06.03.20 um 15:22 schrieb Laurent Pinchart:
> > Hi Thomas,
> > 
> > Thank you for the patch.
> > 
> > On Thu, Mar 05, 2020 at 04:59:28PM +0100, Thomas Zimmermann wrote:
> >> A call to drm_simple_encoder_init() initializes an encoder without
> >> further functionality. It only provides the destroy callback to
> >> cleanup the encoder's state. Only few drivers implement more
> >> sophisticated encoders than that. Most drivers implement such a
> >> simple encoder and can use drm_simple_encoder_init() instead.
> >>
> >> The patchset converts drivers where the encoder's instance is
> >> embedded in a larger data structure. The driver releases the
> >> memory during cleanup. Each patch replaces drm_encoder_init() with
> >> drm_simple_encoder_init() and removes the (now unused) driver's
> >> encoder functions.
> >>
> >> While the patchset is fairly large, the indiviual patches are self-
> >> contained and can be merged independently from each other. The
> >> simple-encoder functionality is currently in drm-misc-next, where
> >> these patches could go as well.
> > 
> > I've reviewed the whole series, including verifying that the few
> > instances of struct drm_encoder_funcs that were not declared const were
> > not modified somewhere to add more function pointers.
> > 
> > Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> 
> Thanks for the detailed review.
> 
> > 
> > for all the patches.
> > 
> > However, I'd like to note that drm_simple_encoder_init() is a bit of a
> > misnommer here. Several of the encoders in those drivers to implement
> > additional functionality. They just expose them through
> > drm_encoder_helper_funcs, not drm_encoder_funcs.
> 
> True. It's called 'simple encoder' for the lack of a better name. It's
> part of the simple KMS helpers, so the name's at least consistent. OTOH
> I always find drm_simple_display_pipe a bad name.
> 
> We can still rename the simple-encoder function without much effort. I'm
> open for suggestions.

IMO this does not belong in drm_simple_kms - but in drm_encoder.
This only occurs to me after looking a bit more on the patches,
you would have loved to get this feedback earlier.

Most users do not need their owm drm_encoder_funcs definition,
and would be happy with the default as provided by drm_simple_*

As the cleanup is handled automatically when the drm device
is teared down (in mode_config_rest()) I considered if we could here
use the drmm_ namespace - but that felt wrong.

My proposal is the following:
- Move the implementation to drm_encoder.c
- Name it drm_encoder_init_nofuncs()

The patches posted in this thread would be a little simpler
as they would loose the added include file.
And the three drivers using the current infrastructure would need a
small update.

I you decide to keep the current approach where the
functions are in drm_simple_* then the full series is:
Acked-by: Sam Ravnborg <sam@ravnborg.org>

But I think moving it to drm_encoder.c would be the approach that would
make it simpler to understand/follow. So that get my (biased) vote.

	Sam

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

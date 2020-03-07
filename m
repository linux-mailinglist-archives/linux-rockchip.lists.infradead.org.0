Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CA4517D00A
	for <lists+linux-rockchip@lfdr.de>; Sat,  7 Mar 2020 21:41:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YE3lzWBXqsHwlrnSv63K14csKBnhqbflvSKOWEA5wag=; b=uvnCS/Mr3CL0Da
	1G5WUd8liubC8ckl1SjwB37b+V7LmS6oyASIdxIu6wRPRi5XeLQVVNQWIaa9njAF+J4HRhaReHyBs
	QgNZfr9khs2VMRnz+k30V5sGQ29ZzH0sK35wlwi4bK4U62SnHplxa3a1OXtViroaoAvr71l/JghGw
	YKLsGFKNFu0ksAV1qt/IPn2E0+EKNgLr/fRJCrdytGJXPJqu0tMffU1ndjNCXDJxfSUZrzSdVnpBw
	iuX21L7o9IDJ8sRDMsZi2nVCYMXuZpIBKmHs0nXyMZohVwbW5iWwLtjYTS+efJ/7YH2LXOeLKdoj1
	WmFDbB/vQZiDRJ/i7/lw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAgGE-0002Pl-Jp; Sat, 07 Mar 2020 20:41:26 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAgGA-0002NA-51; Sat, 07 Mar 2020 20:41:23 +0000
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id AAA655F;
 Sat,  7 Mar 2020 21:34:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1583613288;
 bh=RZ2tUcPxucchrhxSolD6+AqEb18c4qF2ROrad4SqtpU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=SeYlFq5FyvOZJIZ6p7kXSWHrFrpwGuo2rxPZx3fxqLOs0d6yru3DxJk2wr+14QeXx
 Lyxfhn8s9e+rpDI/CQ31o+8egDx0SVXUEz6rc98Lw1HzeXNi7sPQFccO2Kw1823mZu
 ezRGQaDlYsLivwic3ivFH+73INcaLgC2WtuLS14Y=
Date: Sat, 7 Mar 2020 22:34:45 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Sam Ravnborg <sam@ravnborg.org>
Subject: Re: [PATCH 00/22] drm: Convert drivers to drm_simple_encoder_init()
Message-ID: <20200307203445.GC5021@pendragon.ideasonboard.com>
References: <20200305155950.2705-1-tzimmermann@suse.de>
 <20200306142212.GF4878@pendragon.ideasonboard.com>
 <bccc380a-8925-81a7-34fe-5a1744a766d0@suse.de>
 <20200307200813.GA15363@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200307200813.GA15363@ravnborg.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200307_124122_404771_EA4B71EC 
X-CRM114-Status: GOOD (  26.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 linux-tegra@vger.kernel.org, thierry.reding@gmail.com, kraxel@redhat.com,
 linux-samsung-soc@vger.kernel.org, jy0922.shim@samsung.com, hjc@rock-chips.com,
 abrodkin@synopsys.com, sebastian.reichel@collabora.com, krzk@kernel.org,
 jonathanh@nvidia.com, linux-rockchip@lists.infradead.org, wens@csie.org,
 tomi.valkeinen@ti.com, linux-imx@nxp.com, xinliang.liu@linaro.org,
 kong.kongxinwei@hisilicon.com, kernel@pengutronix.de, puck.chen@hisilicon.com,
 s.hauer@pengutronix.de, alison.wang@nxp.com, jsarha@ti.com,
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 virtualization@lists.linux-foundation.org, jernej.skrabec@siol.net,
 rodrigosiqueiramelo@gmail.com, bbrezillon@kernel.org, jingoohan1@gmail.com,
 sw0312.kim@samsung.com, nicolas.ferre@microchip.com, kyungmin.park@samsung.com,
 kieran.bingham+renesas@ideasonboard.com, kgene@kernel.org,
 Thomas Zimmermann <tzimmermann@suse.de>, zourongrong@gmail.com,
 shawnguo@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Sam,

On Sat, Mar 07, 2020 at 09:08:13PM +0100, Sam Ravnborg wrote:
> On Fri, Mar 06, 2020 at 04:18:52PM +0100, Thomas Zimmermann wrote:
> > Am 06.03.20 um 15:22 schrieb Laurent Pinchart:
> > > On Thu, Mar 05, 2020 at 04:59:28PM +0100, Thomas Zimmermann wrote:
> > >> A call to drm_simple_encoder_init() initializes an encoder without
> > >> further functionality. It only provides the destroy callback to
> > >> cleanup the encoder's state. Only few drivers implement more
> > >> sophisticated encoders than that. Most drivers implement such a
> > >> simple encoder and can use drm_simple_encoder_init() instead.
> > >>
> > >> The patchset converts drivers where the encoder's instance is
> > >> embedded in a larger data structure. The driver releases the
> > >> memory during cleanup. Each patch replaces drm_encoder_init() with
> > >> drm_simple_encoder_init() and removes the (now unused) driver's
> > >> encoder functions.
> > >>
> > >> While the patchset is fairly large, the indiviual patches are self-
> > >> contained and can be merged independently from each other. The
> > >> simple-encoder functionality is currently in drm-misc-next, where
> > >> these patches could go as well.
> > > 
> > > I've reviewed the whole series, including verifying that the few
> > > instances of struct drm_encoder_funcs that were not declared const were
> > > not modified somewhere to add more function pointers.
> > > 
> > > Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> > 
> > Thanks for the detailed review.
> > 
> > > for all the patches.
> > > 
> > > However, I'd like to note that drm_simple_encoder_init() is a bit of a
> > > misnommer here. Several of the encoders in those drivers to implement
> > > additional functionality. They just expose them through
> > > drm_encoder_helper_funcs, not drm_encoder_funcs.
> > 
> > True. It's called 'simple encoder' for the lack of a better name. It's
> > part of the simple KMS helpers, so the name's at least consistent. OTOH
> > I always find drm_simple_display_pipe a bad name.
> > 
> > We can still rename the simple-encoder function without much effort. I'm
> > open for suggestions.
> 
> IMO this does not belong in drm_simple_kms - but in drm_encoder.
> This only occurs to me after looking a bit more on the patches,
> you would have loved to get this feedback earlier.
> 
> Most users do not need their owm drm_encoder_funcs definition,
> and would be happy with the default as provided by drm_simple_*
> 
> As the cleanup is handled automatically when the drm device
> is teared down (in mode_config_rest()) I considered if we could here
> use the drmm_ namespace - but that felt wrong.
> 
> My proposal is the following:
> - Move the implementation to drm_encoder.c
> - Name it drm_encoder_init_nofuncs()

Or better, rename the existing drm_encoder_init() to
drm_encoder_init_funcs(), and rename drm_simple_encoder_init() to
drm_encoder_init() ? It's the common case.

> The patches posted in this thread would be a little simpler
> as they would loose the added include file.
> And the three drivers using the current infrastructure would need a
> small update.
> 
> I you decide to keep the current approach where the
> functions are in drm_simple_* then the full series is:
> Acked-by: Sam Ravnborg <sam@ravnborg.org>
> 
> But I think moving it to drm_encoder.c would be the approach that would
> make it simpler to understand/follow. So that get my (biased) vote.

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

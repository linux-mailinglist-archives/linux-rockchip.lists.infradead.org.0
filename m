Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D58E17C01E
	for <lists+linux-rockchip@lfdr.de>; Fri,  6 Mar 2020 15:22:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PDKxvJ4rwrSUOhjwSnhqpuDCSskOFJlvvEtL2/gGovY=; b=jgUWHZkMJCMKwr
	Xeg5oX9j9lfuBXpxUuq8WVI/sLSQNlUDqLuhqgW0TmJppE+RQof7QQ0abSXDqvDeh7ZTPzE+RFjfM
	Wmpp4yNcJKbCAmRBfPL0j+TGYZoGpdQYOYUoxQtYJ3eir1YIGuuKgp6oLwCpb+Ix4yGNjWm/AwCMN
	dqegcSuI8uCmN0AUUGXgnsGwuSu8ZS10Rza4XxuqWs0JUhvuievpZDhVEUxz/Ds/8hRidF3oR+lA1
	PbnLe4q/591p8vFU9ZURgGjhoLKzu4j51TS6cMXlfpdge8qGw1F9DRr6gRvkoSr2A/Mg8DkYwX+b/
	ne7BMEZWhu+QPzq6ll8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jADs6-0004lW-6x; Fri, 06 Mar 2020 14:22:38 +0000
Received: from perceval.ideasonboard.com
 ([2001:4b98:dc2:55:216:3eff:fef7:d647])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jADs2-0004jR-8N; Fri, 06 Mar 2020 14:22:36 +0000
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 8EC1F24B;
 Fri,  6 Mar 2020 15:22:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1583504536;
 bh=MH9YQYcDsr9s2M3IB0rXZTRRm+hDapSlDl0Vs61ST9o=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Xki5OYRB7mD7+l2b1SY8qPQ5tBQGg9BZ76pb0MHjxnVRTK9GNDUDJs6C1g2WW8dR3
 nuZArtefruHiDDFHMqRHCaxIFGYV12aKEnYRQVvJ/nnppxJVADd5/NUrEvX3Gckh5T
 fWcaVMBRXwWzmnFSyR3sLo/6PwauDVpx+Tncd0is=
Date: Fri, 6 Mar 2020 16:22:12 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Thomas Zimmermann <tzimmermann@suse.de>
Subject: Re: [PATCH 00/22] drm: Convert drivers to drm_simple_encoder_init()
Message-ID: <20200306142212.GF4878@pendragon.ideasonboard.com>
References: <20200305155950.2705-1-tzimmermann@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200305155950.2705-1-tzimmermann@suse.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_062234_450229_A591E372 
X-CRM114-Status: GOOD (  16.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: hamohammed.sa@gmail.com, alexandre.belloni@bootlin.com, heiko@sntech.de,
 airlied@linux.ie, stefan@agner.ch, linux@armlinux.org.uk, paul@crapouillou.net,
 eric@anholt.net, thierry.reding@gmail.com, krzk@kernel.org, sam@ravnborg.org,
 sebastian.reichel@collabora.com, linux-samsung-soc@vger.kernel.org,
 jy0922.shim@samsung.com, hjc@rock-chips.com, festevam@gmail.com,
 abrodkin@synopsys.com, kong.kongxinwei@hisilicon.com,
 patrik.r.jakobsson@gmail.com, jonathanh@nvidia.com, xinliang.liu@linaro.org,
 ludovic.desroches@microchip.com, kgene@kernel.org, linux-imx@nxp.com,
 ck.hu@mediatek.com, linux-rockchip@lists.infradead.org,
 virtualization@lists.linux-foundation.org, linux-tegra@vger.kernel.org,
 p.zabel@pengutronix.de, puck.chen@hisilicon.com, s.hauer@pengutronix.de,
 alison.wang@nxp.com, maarten.lankhorst@linux.intel.com, mripard@kernel.org,
 inki.dae@samsung.com, john.stultz@linaro.org, jsarha@ti.com,
 matthias.bgg@gmail.com, wens@csie.org, kernel@pengutronix.de,
 jernej.skrabec@siol.net, rodrigosiqueiramelo@gmail.com, tomi.valkeinen@ti.com,
 bbrezillon@kernel.org, jingoohan1@gmail.com, dri-devel@lists.freedesktop.org,
 sw0312.kim@samsung.com, nicolas.ferre@microchip.com, kyungmin.park@samsung.com,
 kieran.bingham+renesas@ideasonboard.com, daniel@ffwll.ch,
 zourongrong@gmail.com, linux-mediatek@lists.infradead.org, shawnguo@kernel.org,
 kraxel@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Thomas,

Thank you for the patch.

On Thu, Mar 05, 2020 at 04:59:28PM +0100, Thomas Zimmermann wrote:
> A call to drm_simple_encoder_init() initializes an encoder without
> further functionality. It only provides the destroy callback to
> cleanup the encoder's state. Only few drivers implement more
> sophisticated encoders than that. Most drivers implement such a
> simple encoder and can use drm_simple_encoder_init() instead.
> 
> The patchset converts drivers where the encoder's instance is
> embedded in a larger data structure. The driver releases the
> memory during cleanup. Each patch replaces drm_encoder_init() with
> drm_simple_encoder_init() and removes the (now unused) driver's
> encoder functions.
> 
> While the patchset is fairly large, the indiviual patches are self-
> contained and can be merged independently from each other. The
> simple-encoder functionality is currently in drm-misc-next, where
> these patches could go as well.

I've reviewed the whole series, including verifying that the few
instances of struct drm_encoder_funcs that were not declared const were
not modified somewhere to add more function pointers.

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

for all the patches.

However, I'd like to note that drm_simple_encoder_init() is a bit of a
misnommer here. Several of the encoders in those drivers to implement
additional functionality. They just expose them through
drm_encoder_helper_funcs, not drm_encoder_funcs.

> Future directions: There's another common case where the driver
> calls kzalloc() plus drm_encoder_init(). Such drivers are not
> handled by this patchset. The plan here is to use a simple encoder
> with either managed memory allocation (once it's merged), or embed
> the encoder in a larger data structure and drop kzalloc() entirely.

I think an even more interesting future enhancement would be to add
encoder support to the newly added drm_bridge_connector_init(), for
drivers that are fully based on bridges and don't implement any encoder
operation, neither through drm_encoder_funcs nor through
drm_encoder_helper_funcs.

> The patchset has been compile-tested on x86-64, aarch64 and arm.
> 
> Thomas Zimmermann (22):
>   drm/arc: Use simple encoder
>   drm/atmel-hlcdc: Use simple encoder
>   drm/exynos: Use simple encoder
>   drm/fsl-dcu: Use simple encoder
>   drm/gma500: Use simple encoder
>   drm/hisilicon/kirin: Use simple encoder
>   drm/i2c/tda998x: Use simple encoder
>   drm/imx: Use simple encoder
>   drm/ingenic: Use simple encoder
>   drm/mediatek: Use simple encoder
>   drm/rcar-du: Use simple encoder
>   drm/rockchip: Use simple encoder
>   drm/shmobile: Use simple encoder
>   drm/sun4i: Use simple encoder
>   drm/tegra: Use simple encoder
>   drm/tidss: Use simple encoder
>   drm/tilcdc: Use simple encoder
>   drm/vc4: Use simple encoder
>   drm/virtgpu: Use simple encoder
>   drm/vkms: Use simple encoder
>   drm/writeback: Use simple encoder
>   drm/zte: Use simple encoder
> 
>  drivers/gpu/drm/arc/arcpgu_hdmi.c              | 10 +++-------
>  drivers/gpu/drm/arc/arcpgu_sim.c               |  8 ++------
>  .../gpu/drm/atmel-hlcdc/atmel_hlcdc_output.c   | 12 ++++--------
>  drivers/gpu/drm/drm_writeback.c                | 10 +++-------
>  drivers/gpu/drm/exynos/exynos_dp.c             |  8 ++------
>  drivers/gpu/drm/exynos/exynos_drm_dpi.c        |  8 ++------
>  drivers/gpu/drm/exynos/exynos_drm_dsi.c        |  8 ++------
>  drivers/gpu/drm/exynos/exynos_drm_vidi.c       |  8 ++------
>  drivers/gpu/drm/exynos/exynos_hdmi.c           |  8 ++------
>  drivers/gpu/drm/fsl-dcu/fsl_dcu_drm_rgb.c      | 14 +++-----------
>  drivers/gpu/drm/gma500/cdv_intel_crt.c         | 14 +++-----------
>  drivers/gpu/drm/gma500/cdv_intel_dp.c          | 16 +++-------------
>  drivers/gpu/drm/gma500/cdv_intel_hdmi.c        |  4 ++--
>  drivers/gpu/drm/gma500/cdv_intel_lvds.c        | 17 +++--------------
>  drivers/gpu/drm/gma500/mdfld_dsi_dpi.c         |  7 +++----
>  drivers/gpu/drm/gma500/mdfld_output.h          |  1 -
>  drivers/gpu/drm/gma500/mdfld_tmd_vid.c         |  6 ------
>  drivers/gpu/drm/gma500/mdfld_tpo_vid.c         |  6 ------
>  drivers/gpu/drm/gma500/oaktrail_hdmi.c         | 14 ++------------
>  drivers/gpu/drm/gma500/oaktrail_lvds.c         |  5 +++--
>  drivers/gpu/drm/gma500/psb_intel_drv.h         |  1 -
>  drivers/gpu/drm/gma500/psb_intel_lvds.c        | 18 +++---------------
>  drivers/gpu/drm/gma500/tc35876x-dsi-lvds.c     |  5 -----
>  drivers/gpu/drm/hisilicon/kirin/dw_drm_dsi.c   |  8 ++------
>  drivers/gpu/drm/i2c/tda998x_drv.c              | 14 +++-----------
>  drivers/gpu/drm/imx/dw_hdmi-imx.c              |  8 ++------
>  drivers/gpu/drm/imx/imx-drm-core.c             |  6 ------
>  drivers/gpu/drm/imx/imx-drm.h                  |  1 -
>  drivers/gpu/drm/imx/imx-ldb.c                  |  8 ++------
>  drivers/gpu/drm/imx/imx-tve.c                  |  8 ++------
>  drivers/gpu/drm/imx/parallel-display.c         |  8 ++------
>  drivers/gpu/drm/ingenic/ingenic-drm.c          |  9 +++------
>  drivers/gpu/drm/mediatek/mtk_dpi.c             | 14 +++-----------
>  drivers/gpu/drm/mediatek/mtk_dsi.c             | 14 +++-----------
>  drivers/gpu/drm/rcar-du/rcar_du_encoder.c      | 14 +++-----------
>  .../gpu/drm/rockchip/analogix_dp-rockchip.c    |  9 +++------
>  drivers/gpu/drm/rockchip/cdn-dp-core.c         |  9 +++------
>  .../gpu/drm/rockchip/dw-mipi-dsi-rockchip.c    |  8 ++------
>  drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c    |  8 ++------
>  drivers/gpu/drm/rockchip/inno_hdmi.c           |  8 ++------
>  drivers/gpu/drm/rockchip/rk3066_hdmi.c         |  8 ++------
>  drivers/gpu/drm/rockchip/rockchip_lvds.c       | 10 +++-------
>  drivers/gpu/drm/rockchip/rockchip_rgb.c        |  8 ++------
>  drivers/gpu/drm/shmobile/shmob_drm_crtc.c      | 14 +++-----------
>  drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c         | 12 +++---------
>  drivers/gpu/drm/sun4i/sun4i_lvds.c             | 12 +++---------
>  drivers/gpu/drm/sun4i/sun4i_rgb.c              | 17 +++--------------
>  drivers/gpu/drm/sun4i/sun4i_tv.c               | 17 +++--------------
>  drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c         | 12 +++---------
>  drivers/gpu/drm/sun4i/sun8i_dw_hdmi.c          |  8 ++------
>  drivers/gpu/drm/tegra/drm.h                    |  2 --
>  drivers/gpu/drm/tegra/dsi.c                    | 10 +++-------
>  drivers/gpu/drm/tegra/hdmi.c                   |  9 +++------
>  drivers/gpu/drm/tegra/output.c                 |  6 +-----
>  drivers/gpu/drm/tegra/rgb.c                    |  8 ++------
>  drivers/gpu/drm/tegra/sor.c                    |  8 ++------
>  drivers/gpu/drm/tidss/tidss_encoder.c          | 10 +++-------
>  drivers/gpu/drm/tilcdc/tilcdc_external.c       | 10 +++-------
>  drivers/gpu/drm/tilcdc/tilcdc_panel.c          |  8 ++------
>  drivers/gpu/drm/vc4/vc4_dpi.c                  |  8 ++------
>  drivers/gpu/drm/vc4/vc4_dsi.c                  | 15 +++------------
>  drivers/gpu/drm/vc4/vc4_hdmi.c                 | 17 ++++-------------
>  drivers/gpu/drm/vc4/vc4_vec.c                  |  8 ++------
>  drivers/gpu/drm/virtio/virtgpu_display.c       |  8 ++------
>  drivers/gpu/drm/vkms/vkms_output.c             |  8 ++------
>  drivers/gpu/drm/zte/zx_hdmi.c                  |  8 ++------
>  drivers/gpu/drm/zte/zx_tvenc.c                 |  8 ++------
>  drivers/gpu/drm/zte/zx_vga.c                   |  8 ++------
>  68 files changed, 151 insertions(+), 488 deletions(-)

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

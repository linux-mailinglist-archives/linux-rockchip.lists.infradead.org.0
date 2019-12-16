Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E74F120395
	for <lists+linux-rockchip@lfdr.de>; Mon, 16 Dec 2019 12:18:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LiWUSa69/pMDkLBJciv20LtAW0FkuRyetjD/XBByWh0=; b=J+EcKRY44zHVQE
	mEjIJ3i0sydmLpr+TCMVxoGVCZc8W2C7QXVEocwVqi1Hz73QTQOJrtr9ZwbEUEJU3YCAOGEy9V6fD
	Y5yKGp4/K9DlkGAOKG3TCqz7KOw41N0qEocm5BK5ju6bniJJ0SLb4iwWxpSlp+C7+LpJcKbFTCJGA
	8undpiGm4pon+iM4UWWVskyPzoAv52F0F+EhpSimAjfj3op8ZvgwEVvPhTYmi9yyUCsVcnrVtpTFf
	k0wYiUM1lVqwOl884rclQiAR/fhfIXlu/9NZaMHK6iwywRNqO5LfI0zt88H/6RrdGFqhf0vi/19lK
	7xhOFjcEiaVCEVc8v3Mg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igoOI-0003dB-ED; Mon, 16 Dec 2019 11:18:18 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igoOF-0003ci-9h
 for linux-rockchip@lists.infradead.org; Mon, 16 Dec 2019 11:18:16 +0000
Received: from wf0651.dip.tu-dresden.de ([141.76.182.139] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <heiko@sntech.de>)
 id 1igoNu-0007np-RY; Mon, 16 Dec 2019 12:17:54 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH v5 0/6] drm/rockchip: px30 dsi support
Date: Mon, 16 Dec 2019 12:17:53 +0100
Message-ID: <4524104.zPHHQK04YB@phil>
In-Reply-To: <8a071340-6452-4de3-10c9-393bce815ad7@baylibre.com>
References: <20191209143130.4553-1-heiko@sntech.de>
 <8a071340-6452-4de3-10c9-393bce815ad7@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_031815_487661_5FE6F1A6 
X-CRM114-Status: GOOD (  16.10  )
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
Cc: bivvy.bi@rock-chips.com, jernej.skrabec@siol.net,
 kuninori.morimoto.gx@renesas.com, jonas@kwiboo.se, sean@poorly.run,
 xzy.xu@rock-chips.com, philippe.cornu@st.com, dri-devel@lists.freedesktop.org,
 hjc@rock-chips.com, yannick.fertre@st.com, a.hajda@samsung.com,
 nickey.yang@rock-chips.com, eddie.cai@rock-chips.com,
 Laurent.pinchart@ideasonboard.com, linux-rockchip@lists.infradead.org,
 sam@ravnborg.org, christoph.muellner@theobroma-systems.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Neil,

Am Montag, 16. Dezember 2019, 11:40:00 CET schrieb Neil Armstrong:
> On 09/12/2019 15:31, Heiko Stuebner wrote:
> > From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> > 
> > This series addes support for the px30 Rockchip soc to the dsi driver.
> > This includes support for external dsi-phys like used on the px30.
> > 
> > What happened between v1 and v5? The then separate dsi hs2lp timing
> > patch happened ;-) . As both it and this series touch similar areas
> > in the dsi driver ordering becomes an issue and so combining them to
> > make ordering explicit is helpful. v2-v4 where then iterations of the
> > timing patch.
> > 
> > So this v5 is mainly rebased on 5.5-rc1 and rechecked against drm-misc.
> > 
> > Heiko Stuebner (6):
> >   drm/bridge/synopsys: dsi: driver-specific configuration of phy timings
> >   drm/bridge/synopsys: dsi: move phy_ops callbacks around panel
> >     enablement
> >   dt-bindings: display: rockchip-dsi: document external phys
> >   drm/rockchip: add ability to handle external dphys in mipi-dsi
> >   dt-bindings: display: rockchip-dsi: add px30 compatible
> >   drm/rockchip: dsi: add px30 support
> > 
> >  .../display/rockchip/dw_mipi_dsi_rockchip.txt |  13 +-
> >  drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c |  40 ++--
> >  drivers/gpu/drm/rockchip/Kconfig              |   1 +
> >  .../gpu/drm/rockchip/dw-mipi-dsi-rockchip.c   | 173 +++++++++++++++++-
> >  drivers/gpu/drm/stm/dw_mipi_dsi-stm.c         |  13 ++
> >  include/drm/bridge/dw_mipi_dsi.h              |   9 +
> >  6 files changed, 227 insertions(+), 22 deletions(-)
> > 
> 
> You can go ahead and merge the whole serie with bridge stuff into drm-misc-next if you want,
> or I can do it.

I've applied the patches to drm-misc-next now (after double checking again).

Thanks a lot for doing the reviews
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

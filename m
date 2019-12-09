Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA629116EFA
	for <lists+linux-rockchip@lfdr.de>; Mon,  9 Dec 2019 15:32:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DMWICzPw45nKXHjHfb3JdS9ZW1cfaI1fPMi6q/qpi+8=; b=kgqrna9or9DR6T
	TVXXv7SP2c6BT4jiaxLu7/6KfYkl4KNWIbhJc1AarS2hCwEQNFRulDBFk+kH5oI/4P9VIlbA3qkeQ
	gIW8biNpptaqT/NjU4tjgtW48lup1+4UBjzEzKxHinaIyN/wnQYl3CqSWGuvFnBqcwKd8/7yUEL0P
	UJwvxPFF7OhTaJrYkABkS7mvOGsKJDQw11ccbxEeVj/rxJThz53NE7wege2zazYnUeeRI76wvK+h3
	ByAjS7BftUsSgX9AMx1vKx3VBQyRDpzY+57x95Cm9Wamtef2q1t/vG0aWf4zullW79sXYZ3nyl+pk
	U7T93P1zbqZ09fivrFmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieK5U-0006hv-MZ; Mon, 09 Dec 2019 14:32:36 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieK5P-0006f8-Vq
 for linux-rockchip@lists.infradead.org; Mon, 09 Dec 2019 14:32:33 +0000
Received: from ip5f5a6266.dynamic.kabel-deutschland.de ([95.90.98.102]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1ieK57-0000zC-Dz; Mon, 09 Dec 2019 15:32:13 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: a.hajda@samsung.com
Subject: [PATCH v5 0/6] drm/rockchip: px30 dsi support
Date: Mon,  9 Dec 2019 15:31:24 +0100
Message-Id: <20191209143130.4553-1-heiko@sntech.de>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_063232_169798_6C4C4AE8 
X-CRM114-Status: UNSURE (   8.55  )
X-CRM114-Notice: Please train this message.
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
Cc: bivvy.bi@rock-chips.com, jernej.skrabec@siol.net, xzy.xu@rock-chips.com,
 heiko@sntech.de, kuninori.morimoto.gx@renesas.com, jonas@kwiboo.se,
 sean@poorly.run, narmstrong@baylibre.com, philippe.cornu@st.com,
 dri-devel@lists.freedesktop.org, hjc@rock-chips.com, yannick.fertre@st.com,
 linux-rockchip@lists.infradead.org, nickey.yang@rock-chips.com,
 eddie.cai@rock-chips.com, Laurent.pinchart@ideasonboard.com,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>, sam@ravnborg.org,
 christoph.muellner@theobroma-systems.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>

This series addes support for the px30 Rockchip soc to the dsi driver.
This includes support for external dsi-phys like used on the px30.

What happened between v1 and v5? The then separate dsi hs2lp timing
patch happened ;-) . As both it and this series touch similar areas
in the dsi driver ordering becomes an issue and so combining them to
make ordering explicit is helpful. v2-v4 where then iterations of the
timing patch.

So this v5 is mainly rebased on 5.5-rc1 and rechecked against drm-misc.

Heiko Stuebner (6):
  drm/bridge/synopsys: dsi: driver-specific configuration of phy timings
  drm/bridge/synopsys: dsi: move phy_ops callbacks around panel
    enablement
  dt-bindings: display: rockchip-dsi: document external phys
  drm/rockchip: add ability to handle external dphys in mipi-dsi
  dt-bindings: display: rockchip-dsi: add px30 compatible
  drm/rockchip: dsi: add px30 support

 .../display/rockchip/dw_mipi_dsi_rockchip.txt |  13 +-
 drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c |  40 ++--
 drivers/gpu/drm/rockchip/Kconfig              |   1 +
 .../gpu/drm/rockchip/dw-mipi-dsi-rockchip.c   | 173 +++++++++++++++++-
 drivers/gpu/drm/stm/dw_mipi_dsi-stm.c         |  13 ++
 include/drm/bridge/dw_mipi_dsi.h              |   9 +
 6 files changed, 227 insertions(+), 22 deletions(-)

-- 
2.24.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

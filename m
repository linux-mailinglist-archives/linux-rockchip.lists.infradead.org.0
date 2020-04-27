Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E68A1B99B9
	for <lists+linux-rockchip@lfdr.de>; Mon, 27 Apr 2020 10:19:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iDnM/4JUNX6JJoBLBC41BqbBY3zbEHkF4NQlsfkMQcg=; b=tZBYxglA1BEMri
	FVF/8y1diO9SyT97eQ1ZBaUMLncsbEUP83PvKHUBHXdcPdopzGZR+4Tcz+9LA1UrbFhq/VhbuYInR
	HpBlnOdVZiMU8t60P9kQi4FeADgRsFnloo01h2xfqU3pYBEwRgR/RhKUoRcC8CL9Lum95sN9bNvxE
	pvh6/l000JRSfIYYX4f8jpE+ngoP6Qd6lBlDE2fKDOf9OM4gBGvOheikDd1nxwu3exCifZgowRO6q
	6ikGIGOQz5hfe0PNf6+mOQZ+AJah3US2ijVhze/r/izUktS4SzDHrsMzMh9X7LClFdIYHPzL5WykH
	9xLlVOxURPP/w3rcRdZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSyz1-0002pw-C0; Mon, 27 Apr 2020 08:19:19 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSyyj-0002Zw-BC; Mon, 27 Apr 2020 08:19:03 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: aratiu) with ESMTPSA id 0F8022A018F
From: Adrian Ratiu <adrian.ratiu@collabora.com>
To: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
Subject: [PATCH v8 00/10] Genericize DW MIPI DSI bridge and add i.MX 6 driver
Date: Mon, 27 Apr 2020 11:19:42 +0300
Message-Id: <20200427081952.3536741-1-adrian.ratiu@collabora.com>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_011901_512383_23384818 
X-CRM114-Status: GOOD (  11.68  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Jernej Skrabec <jernej.skrabec@siol.net>, Heiko Stuebner <heiko@sntech.de>,
 Jonas Karlman <jonas@kwiboo.se>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Andrzej Hajda <a.hajda@samsung.com>,
 linux-imx@nxp.com, kernel@collabora.com,
 linux-stm32@st-md-mailman.stormreply.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hello everyone,

The dt-binding added in this series depends on [1] for
"make dt_binding_check" to pass.

The biggest change in v8 is a conversion of the imx6 host controller
driver to drm_bridge and an extension to dw_mipi_dsi.c which allows
platform drivers to daisy-chain bridges between the encoder and the
Synopsis DSI bridge.

Obviously a lot more work can be done on this front, for example to
convert the Rockchip and STM platform drivers to drm_bridge (the STM
driver doesn't even use the current dw_mipi_dsi.c bind API to attach)
or to improve the API itself.

Another kind of related work is refactoring the existng IMX drivers
to drm_bridge and move the empty encoder management to imx-drm-core.

Because this patch is already quite big, I did only the minimum
changes to get the imx6 mipi dsi driver in good shape, all the other
changes should be done in separate patch series.

I also just realized imx6qdl.dtsi was missing some properties to get
the DSI host controller working so I've added them as a new patch.

All received feedback up to this point has been addressed.

Thank you and best wishes,
Adrian

[1] https://lore.kernel.org/linux-devicetree/20200423100058.1734009-1-adrian.ratiu@collabora.com/

Adrian Ratiu (10):
  drm: bridge: dw_mipi_dsi: add initial regmap infrastructure
  drm: bridge: dw_mipi_dsi: abstract register access using reg_fields
  drm: bridge: dw_mipi_dsi: add dsi v1.01 support
  drm: bridge: dw_mipi_dsi: allow bridge daisy chaining
  drm: imx: Add i.MX 6 MIPI DSI host platform driver
  ARM: dts: imx6qdl: add missing mipi dsi properties
  dt-bindings: display: add i.MX6 MIPI DSI host controller doc
  drm: stm: dw-mipi-dsi: let the bridge handle the HW version check
  drm: bridge: dw-mipi-dsi: split low power cfg register into fields
  drm: bridge: dw-mipi-dsi: fix bad register field offsets

 .../display/imx/fsl,mipi-dsi-imx6.yaml        | 145 ++++
 arch/arm/boot/dts/imx6qdl.dtsi                |   8 +
 drivers/gpu/drm/bridge/synopsys/Kconfig       |   1 +
 drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c | 698 +++++++++++++-----
 drivers/gpu/drm/imx/Kconfig                   |   8 +
 drivers/gpu/drm/imx/Makefile                  |   1 +
 drivers/gpu/drm/imx/dw_mipi_dsi-imx6.c        | 399 ++++++++++
 .../gpu/drm/rockchip/dw-mipi-dsi-rockchip.c   |   2 +-
 drivers/gpu/drm/stm/dw_mipi_dsi-stm.c         |  12 +-
 include/drm/bridge/dw_mipi_dsi.h              |   5 +-
 10 files changed, 1070 insertions(+), 209 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/display/imx/fsl,mipi-dsi-imx6.yaml
 create mode 100644 drivers/gpu/drm/imx/dw_mipi_dsi-imx6.c

-- 
2.26.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

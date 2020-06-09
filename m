Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6E711F40B2
	for <lists+linux-rockchip@lfdr.de>; Tue,  9 Jun 2020 18:26:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WV/pXUEMdYA7aDAtrGyj0sems1LQ2pko0yGlfyHzsLo=; b=awEUn84m3B9xeg
	FmpzyQef8cc2cs3rNk5qjpnrB9gnqZ5c8YP3B53LTx2gmio6k4w5tCU3ErRG6JVECMvnaPJSGbkhg
	pRvygyPPL75hVB/WuQPi6/GD03TgY9qeRLyB/6FhWQ8a15yOiKXXZv/uKqVhjqrH5URsOwije6rnN
	TSLkxDwZYruI2mRiCfAOm+xV3Nz+ec0VX0zhEpt9jEb1bU5tkzzYdArRlpOaa2Auu+j2uGKfVggoQ
	9w1BsrgaTOqaWz46RwEtS0HZwNpF1MseREtV6DGPw4Cu92wLPnvfwewvQWv3NAwBoUcRqifTFTynz
	1ezHRWjs7/vlmiVGj7Xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jih4Z-0000cF-RA; Tue, 09 Jun 2020 16:25:59 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jih4G-0000MR-GJ; Tue, 09 Jun 2020 16:25:42 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: aratiu) with ESMTPSA id 41FC42A3BFB
From: Adrian Ratiu <adrian.ratiu@collabora.com>
To: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
Subject: [PATCH v9 00/11] Genericize DW MIPI DSI bridge and add i.MX 6 driver
Date: Tue,  9 Jun 2020 19:26:49 +0300
Message-Id: <20200609162700.953260-1-adrian.ratiu@collabora.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_092540_668497_19D23297 
X-CRM114-Status: GOOD (  11.19  )
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
 Jonas Karlman <jonas@kwiboo.se>, Philippe CORNU <philippe.cornu@st.com>,
 Yannick FERTRE <yannick.fertre@st.com>, Andrzej Hajda <a.hajda@samsung.com>,
 linux-imx@nxp.com, kernel@collabora.com,
 linux-stm32@st-md-mailman.stormreply.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hello all,

v9 cleanly applies on top of latest next-20200609 tree.

v9 does not depend on other patches as the last binding doc has been merged.

All feedback up to this point has been addressed. Specific details in
individual patch changelogs.

The biggest changes are the deprecation of the Synopsys DW bridge bind()
API in favor of of_drm_find_bridge() and .attach callbacks, the addition
of a TODO entry which outlines future planned bridge driver refactorings
and a reordering of some i.MX 6 patches to appease checkpatch.

The idea behind the TODO is to get this regmap and i.MX 6 driver merged
and then do the rest of refactorings in-tree because it's easier and the
refactorings themselves are out-of-scope of this series which is adding
i.MX 6 support and is quite big already, so please, if there are more
refactoring ideas, let's add them to the TODO doc. :) I intend to tackle
those after this series is merged to avoid two complex inter-dependent
simultaneous series.

As always more testing is welcome especially on Rockchip and STM SoCs.

Big thank you to everyone who has contributed to this up to now,
Adrian

Adrian Ratiu (11):
  drm: bridge: dw_mipi_dsi: add initial regmap infrastructure
  drm: bridge: dw_mipi_dsi: abstract register access using reg_fields
  drm: bridge: dw_mipi_dsi: add dsi v1.01 support
  drm: bridge: dw_mipi_dsi: remove bind/unbind API
  dt-bindings: display: add i.MX6 MIPI DSI host controller doc
  ARM: dts: imx6qdl: add missing mipi dsi properties
  drm: imx: Add i.MX 6 MIPI DSI host platform driver
  drm: stm: dw-mipi-dsi: let the bridge handle the HW version check
  drm: bridge: dw-mipi-dsi: split low power cfg register into fields
  drm: bridge: dw-mipi-dsi: fix bad register field offsets
  Documentation: gpu: todo: Add dw-mipi-dsi consolidation plan

 .../display/imx/fsl,mipi-dsi-imx6.yaml        | 112 +++
 Documentation/gpu/todo.rst                    |  25 +
 arch/arm/boot/dts/imx6qdl.dtsi                |   8 +
 drivers/gpu/drm/bridge/synopsys/Kconfig       |   1 +
 drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c | 713 ++++++++++++------
 drivers/gpu/drm/imx/Kconfig                   |   8 +
 drivers/gpu/drm/imx/Makefile                  |   1 +
 drivers/gpu/drm/imx/dw_mipi_dsi-imx6.c        | 399 ++++++++++
 .../gpu/drm/rockchip/dw-mipi-dsi-rockchip.c   |   7 +-
 drivers/gpu/drm/stm/dw_mipi_dsi-stm.c         |  16 +-
 10 files changed, 1059 insertions(+), 231 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/display/imx/fsl,mipi-dsi-imx6.yaml
 create mode 100644 drivers/gpu/drm/imx/dw_mipi_dsi-imx6.c

-- 
2.27.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

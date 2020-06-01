Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B99CA1E9E0A
	for <lists+linux-rockchip@lfdr.de>; Mon,  1 Jun 2020 08:23:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=MQuZj72LmBtTxyRUl50O2TgfF/A9cqD3WaafIUUkmnQ=; b=b3t
	bnkU+Pc35YZUxqoejIVLxbjURWZApb2qBqXAVWMs3bsDBCQ+8l+vC6zqZwnT27SXgMCb4e6d36gOO
	REdSxW0h/I2/XwzzOfkkDbNUagULeMP2OuvSPzvqPr54zrTqeXO5p2QhwTMBRRA0V2cQbTMVwQetI
	n5NZ9ao+UYGzGstbvayGlnuUYs6LGLNml+wc1ZNOIhzp+cN/01qFQwK83ryo8147exXD041YTATVE
	8Fff/n052+dFFU5hd+B72DU5rffcAgaDG+0ALtCL53iXX9rvyYj9mBisTulp1HbZIYkkSH3E9Cha0
	G/7cSD3afL6ygXCc9jBSapl8pOK9vzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfdrI-0007c6-42; Mon, 01 Jun 2020 06:23:40 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfdqx-0007Nr-Ou; Mon, 01 Jun 2020 06:23:21 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 57FE22004CA;
 Mon,  1 Jun 2020 08:23:16 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 90AAA200480;
 Mon,  1 Jun 2020 08:23:10 +0200 (CEST)
Received: from localhost.localdomain (mega.ap.freescale.net [10.192.208.232])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 60F9D40280;
 Mon,  1 Jun 2020 14:23:03 +0800 (SGT)
From: sandor.yu@nxp.com
To: a.hajda@samsung.com, narmstrong@baylibre.com,
 Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
 jernej.skrabec@siol.net, heiko@sntech.de, hjc@rock-chips.com,
 Sandor.yu@nxp.com, dkos@cadence.com, dri-devel@lists.freedesktop.org
Subject: [PATCH 0/7] Initial support for Cadence MHDP(HDMI/DP)
Date: Mon,  1 Jun 2020 14:17:30 +0800
Message-Id: <cover.1590982881.git.Sandor.yu@nxp.com>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200531_232320_084931_EB0A40F6 
X-CRM114-Status: UNSURE (   7.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

From: Sandor Yu <Sandor.yu@nxp.com>

The patch set initial support for Cadence MHDP(HDMI/DP) drm bridge
driver and iMX8MQ HDMI/DP.

The first patch drm/rockchip: prepare common code for cdns and rk dpi/dp driver
is from the link https://patchwork.kernel.org/patch/10788309/
that still in reviewing.

Files in drm/bridge/cadence compose with serveral parties,
drm bridge driver, Audio and API functions.
 -cdns-dp-core.c: Displayport bridge driver
 -cdns-hdmi-core.c: HDMI bridge driver 
 -cdns-mhdp-audio.c: DP/HDMI Audio
 -cdns-mhdp-common.c: MHDP common API functions
 -cdns-mhdp-dp.c: MHDP DP API functions
 -cdns-mhdp-hdmi.c: MHDP HDMI API functions

Sandor Yu (7):
  drm/rockchip: prepare common code for cdns and rk dpi/dp driver
  drm: bridge: cadence: Create cadence fold
  drm: bridge: cadence: initial support for MHDP DP bridge driver
  drm: imx: mhdp: initial support for i.MX8MQ MHDP Displayport
  drm: bridge: cadence: Initial support for MHDP HDMI bridge driver
  drm: imx: mhdp: Initial support for i.MX8MQ MHDP HDMI
  dt-bindings: display: Document Cadence MHDP HDMI/DP bindings

 .../bindings/display/bridge/cdns,mhdp.yaml    |  46 +
 .../devicetree/bindings/display/imx/mhdp.yaml |  59 ++
 drivers/gpu/drm/bridge/Kconfig                |   2 +
 drivers/gpu/drm/bridge/Makefile               |   1 +
 drivers/gpu/drm/bridge/cadence/Kconfig        |  15 +
 drivers/gpu/drm/bridge/cadence/Makefile       |   5 +
 drivers/gpu/drm/bridge/cadence/cdns-dp-core.c | 530 ++++++++++
 .../gpu/drm/bridge/cadence/cdns-hdmi-core.c   | 600 +++++++++++
 .../gpu/drm/bridge/cadence/cdns-mhdp-audio.c  | 298 ++++++
 .../gpu/drm/bridge/cadence/cdns-mhdp-common.c | 682 +++++++++++++
 .../gpu/drm/bridge/cadence/cdns-mhdp-common.h |  40 +
 drivers/gpu/drm/bridge/cadence/cdns-mhdp-dp.c | 206 ++++
 .../gpu/drm/bridge/cadence/cdns-mhdp-hdmi.c   | 330 ++++++
 drivers/gpu/drm/imx/Kconfig                   |   1 +
 drivers/gpu/drm/imx/Makefile                  |   1 +
 drivers/gpu/drm/imx/mhdp/Kconfig              |   9 +
 drivers/gpu/drm/imx/mhdp/Makefile             |   4 +
 drivers/gpu/drm/imx/mhdp/cdns-mhdp-dp-phy.c   | 390 +++++++
 drivers/gpu/drm/imx/mhdp/cdns-mhdp-hdmi-phy.c | 588 +++++++++++
 drivers/gpu/drm/imx/mhdp/cdns-mhdp-imxdrv.c   | 142 +++
 drivers/gpu/drm/imx/mhdp/cdns-mhdp-phy.h      | 148 +++
 drivers/gpu/drm/rockchip/Kconfig              |   1 +
 drivers/gpu/drm/rockchip/Makefile             |   2 +-
 drivers/gpu/drm/rockchip/cdn-dp-core.c        | 247 ++---
 drivers/gpu/drm/rockchip/cdn-dp-core.h        |  44 +-
 drivers/gpu/drm/rockchip/cdn-dp-reg.c         | 960 ------------------
 .../drm/bridge/cdns-mhdp.h                    | 257 ++++-
 27 files changed, 4464 insertions(+), 1144 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/display/bridge/cdns,mhdp.yaml
 create mode 100644 Documentation/devicetree/bindings/display/imx/mhdp.yaml
 create mode 100644 drivers/gpu/drm/bridge/cadence/Kconfig
 create mode 100644 drivers/gpu/drm/bridge/cadence/Makefile
 create mode 100644 drivers/gpu/drm/bridge/cadence/cdns-dp-core.c
 create mode 100644 drivers/gpu/drm/bridge/cadence/cdns-hdmi-core.c
 create mode 100644 drivers/gpu/drm/bridge/cadence/cdns-mhdp-audio.c
 create mode 100644 drivers/gpu/drm/bridge/cadence/cdns-mhdp-common.c
 create mode 100644 drivers/gpu/drm/bridge/cadence/cdns-mhdp-common.h
 create mode 100644 drivers/gpu/drm/bridge/cadence/cdns-mhdp-dp.c
 create mode 100644 drivers/gpu/drm/bridge/cadence/cdns-mhdp-hdmi.c
 create mode 100644 drivers/gpu/drm/imx/mhdp/Kconfig
 create mode 100644 drivers/gpu/drm/imx/mhdp/Makefile
 create mode 100644 drivers/gpu/drm/imx/mhdp/cdns-mhdp-dp-phy.c
 create mode 100644 drivers/gpu/drm/imx/mhdp/cdns-mhdp-hdmi-phy.c
 create mode 100644 drivers/gpu/drm/imx/mhdp/cdns-mhdp-imxdrv.c
 create mode 100644 drivers/gpu/drm/imx/mhdp/cdns-mhdp-phy.h
 delete mode 100644 drivers/gpu/drm/rockchip/cdn-dp-reg.c
 rename drivers/gpu/drm/rockchip/cdn-dp-reg.h => include/drm/bridge/cdns-mhdp.h (64%)

-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

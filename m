Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C55131F4376
	for <lists+linux-rockchip@lfdr.de>; Tue,  9 Jun 2020 19:53:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7Pz3a0MC0zI0jImsj1BcjI0pD9z+Jn4JZYnY9s96JhY=; b=lfWu2D4MABdr2k
	HIPtAYRVjtBcZOrI6gP2Udp7NgPy+cP1F4adVaI5OE8Aj9L3eq5elPL14B4oB05lyCud3NTsHoNY7
	d1qiqLqnwqb4hlO2PJWUW0eiDRGs3KWh7F2GKqhA2LnbzZCkONFMtmNnrPaQg5N+GW7l5+YDV9e7u
	p2IQPQQ8rjTYnAdA4lOfxhY0ldFh8RFLF5wYYNTBzXfY+v11iX8LW/5hxEysoegR9e1g/Q4gsrDdT
	c+1K8bU8faBMbUZtKQGzoDjiacjuZFKEKjBFuX9uti63tsT3BFmTdRyKvf+RehdvGvfQFp9I7Nz5c
	lRLgEAz+ht3nHXp8U3rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiiRV-0004Gz-EO; Tue, 09 Jun 2020 17:53:45 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiiMd-0006RP-PP; Tue, 09 Jun 2020 17:48:45 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: aratiu) with ESMTPSA id B100A2A3B92
From: Adrian Ratiu <adrian.ratiu@collabora.com>
To: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
Subject: [PATCH v9 11/11] Documentation: gpu: todo: Add dw-mipi-dsi
 consolidation plan
Date: Tue,  9 Jun 2020 20:49:59 +0300
Message-Id: <20200609174959.955926-12-adrian.ratiu@collabora.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200609174959.955926-1-adrian.ratiu@collabora.com>
References: <20200609174959.955926-1-adrian.ratiu@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_104844_026533_835FBD43 
X-CRM114-Status: UNSURE (   9.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
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
 Jonas Karlman <jonas@kwiboo.se>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Philippe CORNU <philippe.cornu@st.com>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, Yannick FERTRE <yannick.fertre@st.com>,
 Andrzej Hajda <a.hajda@samsung.com>,
 Boris Brezillon <boris.brezillon@collabora.com>, linux-imx@nxp.com,
 kernel@collabora.com, Sam Ravnborg <sam@ravnborg.org>,
 linux-stm32@st-md-mailman.stormreply.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

This documents the longer-term plan to cleanup the dw-mipi-dsi bridge
based drivers after the regmap refactor and i.MX6 driver have landed.

The goal is to get the entire bridge logic in one place and continue
the refactorings under the drm/bridge tree.

Cc: Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
Cc: Boris Brezillon <boris.brezillon@collabora.com>
Cc: Sam Ravnborg <sam@ravnborg.org>
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Signed-off-by: Adrian Ratiu <adrian.ratiu@collabora.com>
---
 Documentation/gpu/todo.rst | 25 +++++++++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/Documentation/gpu/todo.rst b/Documentation/gpu/todo.rst
index 658b52f7ffc6c..2b142980a4b16 100644
--- a/Documentation/gpu/todo.rst
+++ b/Documentation/gpu/todo.rst
@@ -548,6 +548,31 @@ See drivers/gpu/drm/amd/display/TODO for tasks.
 
 Contact: Harry Wentland, Alex Deucher
 
+Reorganize dw-mipi-dsi bridge-based host-controller drivers
+-----------------------------------------------------------
+
+The Synopsys DW MIPI DSI bridge is used by a number of SoC platform drivers
+(STM, Rockchip, i.MX) which don't cleanly encapsulate their bridge logic which
+gets split between the Synopsys bridge (drm/bridge/synopsys/dw-mipi-dsi.c) and
+platform drivers like drm/imx/dw_mipi_dsi-imx6.c by passing around the bridge
+configuration regmap, creating new bridges / daisy chaining in platform drivers,
+duplicating encoder creation, having too much encoder logic instead of using the
+simple encoder interface and so on.
+
+The goal of this rework is to make the dw-mipi-dsi driver a better encapsulated
+bridge by moving all bridge-related logic under drm/bridge, including the SoC
+bindings which chain to the core Synopsys code under drm/bridge/dw-mipi-dsi/
+from which they can be further consolidated and cleaned up.
+
+If this goal proves to be impossible then drm_bridge might not be the correct
+abstraction for these host controllers and unifying their logic into a helper
+library encapsulating a drm_encoder might be more desirable, in other words to
+move away from drm_bridge entirely.
+
+Contact: Adrian Ratiu, Daniel Vetter, Laurent Pinchart
+
+Level: Intermediate
+
 Bootsplash
 ==========
 
-- 
2.27.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

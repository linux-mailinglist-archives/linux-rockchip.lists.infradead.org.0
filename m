Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C5F3116EFD
	for <lists+linux-rockchip@lfdr.de>; Mon,  9 Dec 2019 15:32:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7qdK+kWYT4hK9lE3r85ibOiWYezJVDr/OQYmSbwns30=; b=OWZZ8KaAmikFz7
	wy7sUdZVZwjVaN1vco08of9ZKrcJmkik/PkfYV8dzpy393dmV4L8dK9rr7OROJHDrmHbY3nUk9Nus
	kJmQ78tKb+sQ9Y4yYqHxKP9qs2zvUQ2QuxUsJKb/1Y9138fXnboN7BOQ1PoTmGtQ468sQ2c+x8/aT
	7sEIKvBOawESbAbqAgGoD+brrOlRwEtRoBvTrobvjrymj+Byo3t4oyxVlE9Ec++rQWfFByhqrpmv0
	1wNTakPhDe9rgxajZonSeAOP7hT4xeY/eZvLwAJoR+iS2gOOlY59H+r2JwoqYjnIlEw5xBNn6c9aD
	fbGzTFh3arU0qJ+1pnAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieK5X-0006kr-7g; Mon, 09 Dec 2019 14:32:39 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieK5S-0006gF-Jf
 for linux-rockchip@lists.infradead.org; Mon, 09 Dec 2019 14:32:36 +0000
Received: from ip5f5a6266.dynamic.kabel-deutschland.de ([95.90.98.102]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1ieK59-0000zC-BJ; Mon, 09 Dec 2019 15:32:15 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: a.hajda@samsung.com
Subject: [PATCH v5 3/6] dt-bindings: display: rockchip-dsi: document external
 phys
Date: Mon,  9 Dec 2019 15:31:27 +0100
Message-Id: <20191209143130.4553-4-heiko@sntech.de>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191209143130.4553-1-heiko@sntech.de>
References: <20191209143130.4553-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_063234_814081_7811A62E 
X-CRM114-Status: GOOD (  11.97  )
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
Cc: bivvy.bi@rock-chips.com, Rob Herring <robh@kernel.org>,
 jernej.skrabec@siol.net, xzy.xu@rock-chips.com, heiko@sntech.de,
 kuninori.morimoto.gx@renesas.com, jonas@kwiboo.se, sean@poorly.run,
 narmstrong@baylibre.com, philippe.cornu@st.com,
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

Some dw-mipi-dsi instances in Rockchip SoCs use external dphys.
In these cases the needs clock will also be generated externally
so these don't need the ref-clock as well.

changes in v5:
- rebased on top of 5.5-rc1
- merged with dsi timing change to prevent ordering conflicts

Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 .../bindings/display/rockchip/dw_mipi_dsi_rockchip.txt     | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/rockchip/dw_mipi_dsi_rockchip.txt b/Documentation/devicetree/bindings/display/rockchip/dw_mipi_dsi_rockchip.txt
index ce4c1fc9116c..1ba9237d0ac0 100644
--- a/Documentation/devicetree/bindings/display/rockchip/dw_mipi_dsi_rockchip.txt
+++ b/Documentation/devicetree/bindings/display/rockchip/dw_mipi_dsi_rockchip.txt
@@ -9,8 +9,9 @@ Required properties:
 - reg: Represent the physical address range of the controller.
 - interrupts: Represent the controller's interrupt to the CPU(s).
 - clocks, clock-names: Phandles to the controller's pll reference
-  clock(ref) and APB clock(pclk). For RK3399, a phy config clock
-  (phy_cfg) and a grf clock(grf) are required. As described in [1].
+  clock(ref) when using an internal dphy and APB clock(pclk).
+  For RK3399, a phy config clock (phy_cfg) and a grf clock(grf)
+  are required. As described in [1].
 - rockchip,grf: this soc should set GRF regs to mux vopl/vopb.
 - ports: contain a port node with endpoint definitions as defined in [2].
   For vopb,set the reg = <0> and set the reg = <1> for vopl.
@@ -18,6 +19,8 @@ Required properties:
 - video port 1 for either a panel or subsequent encoder
 
 Optional properties:
+- phys: from general PHY binding: the phandle for the PHY device.
+- phy-names: Should be "dphy" if phys references an external phy.
 - power-domains: a phandle to mipi dsi power domain node.
 - resets: list of phandle + reset specifier pairs, as described in [3].
 - reset-names: string reset name, must be "apb".
-- 
2.24.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

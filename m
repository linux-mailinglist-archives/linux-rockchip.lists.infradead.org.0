Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A94EDF3C80
	for <lists+linux-rockchip@lfdr.de>; Fri,  8 Nov 2019 01:05:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Haa8waglaTuGW91Kdjm9xkBvNMhf6lhfp0KCpiFD2N4=; b=ccKqz8e1NISt21
	w3yQsj4Yppz8Bz8A63BZDERs3qH3fLjanz0msAHiS48qa9GDDog7LGGZWEscFK4dvULXHBnrVtmUW
	zQ5pyBWRyVHW8HK62N02GtlSm2/DyKMfW2sqsVvflEv3nfRtR01kDfyqqRtjghpcLlC6FZaK8dakv
	ZhtZsgoR+F2e72ev16wtVLsINuHMehtOD39NReV5FSzexuWmdp/i+zxNYBnTthO9Q/p75ovm61pX2
	L0Ud/50Q8FsFXyySzy0P3M9ohdbl+mge/+gwTXT6mwRyR4CYzhbnEw5lRya640XDi5w831iRZa+fd
	wIfI9RA0KRnjCAzjWPTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSrlp-0007yX-Px; Fri, 08 Nov 2019 00:04:57 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSrkE-0006Oq-6C; Fri, 08 Nov 2019 00:03:21 +0000
Received: from ip5f5a6266.dynamic.kabel-deutschland.de ([95.90.98.102]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <heiko.stuebner@theobroma-systems.com>)
 id 1iSrk0-00065H-TQ; Fri, 08 Nov 2019 01:03:04 +0100
From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
To: dri-devel@lists.freedesktop.org,
	a.hajda@samsung.com
Subject: [PATCH v2 2/5] dt-bindings: display: rockchip-dsi: document external
 phys
Date: Fri,  8 Nov 2019 01:02:50 +0100
Message-Id: <20191108000253.8560-3-heiko.stuebner@theobroma-systems.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191108000253.8560-1-heiko.stuebner@theobroma-systems.com>
References: <20191108000253.8560-1-heiko.stuebner@theobroma-systems.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_160318_402125_A3E21739 
X-CRM114-Status: GOOD (  11.32  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.7 SPF_NEUTRAL            SPF: sender does not match SPF record (neutral)
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, jernej.skrabec@siol.net,
 heiko@sntech.de, jonas@kwiboo.se, linux-kernel@vger.kernel.org,
 narmstrong@baylibre.com, hjc@rock-chips.com, philippe.cornu@st.com,
 yannick.fertre@st.com, linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 Laurent.pinchart@ideasonboard.com,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 linux-arm-kernel@lists.infradead.org, christoph.muellner@theobroma-systems.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Some dw-mipi-dsi instances in Rockchip SoCs use external dphys.
In these cases the needs clock will also be generated externally
so these don't need the ref-clock as well.

Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
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
2.23.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

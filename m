Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9DD0197AEF
	for <lists+linux-rockchip@lfdr.de>; Mon, 30 Mar 2020 13:37:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NyxyY3Mo/rsIUQI76Np+OPVZ9G6bqVLL83W/HfCSNdY=; b=XihuRyZm+ujTVF
	j2IAAkZARI9PLUbZqOrdEv/AsjU1sihrld8EVtUvAfIBQDNTakeb+y38Lg/gU9HAFE3tPuKrTQvfK
	if+9z9XpjKHwkf9SK2kET6tCk0Rm+7GaKFJgY+c42M1ZXO+oFAhE9sK56PzyPPK5KB8KX57ZW0N6V
	BrwJPu/l9FUbSdrq26ll8I3KHenpuX3DdiJmS7IZcK1255V8cZYbC6QQkz3RJBg687GCwM+YotRZx
	XXmGczoxtrxgRyylv5Q0WiPc4pglTLsT+SwnAK+LUuGVv0izlAnsUH/zENrDmy3CmDJnGz9Z5vT1q
	IYikFFGwDvCkw1H2Xzrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIsjN-0002R0-73; Mon, 30 Mar 2020 11:37:25 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIshi-0007Vx-Ja; Mon, 30 Mar 2020 11:35:44 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: aratiu) with ESMTPSA id 81D902923C5
From: Adrian Ratiu <adrian.ratiu@collabora.com>
To: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH v5 5/5] dt-bindings: display: add i.MX6 MIPI DSI host
 controller doc
Date: Mon, 30 Mar 2020 14:35:42 +0300
Message-Id: <20200330113542.181752-6-adrian.ratiu@collabora.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200330113542.181752-1-adrian.ratiu@collabora.com>
References: <20200330113542.181752-1-adrian.ratiu@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_043542_956442_00FC41F0 
X-CRM114-Status: GOOD (  11.95  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Rob Herring <robh@kernel.org>, Jernej Skrabec <jernej.skrabec@siol.net>,
 Sjoerd Simons <sjoerd.simons@collabora.com>,
 Andrzej Hajda <a.hajda@samsung.com>, Martyn Welch <martyn.welch@collabora.com>,
 Jonas Karlman <jonas@kwiboo.se>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Neil Armstrong <narmstrong@baylibre.com>,
 linux-rockchip@lists.infradead.org, linux-imx@nxp.com, kernel@collabora.com,
 linux-stm32@st-md-mailman.stormreply.com,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

This provides an example DT binding for the MIPI DSI host controller
present on the i.MX6 SoC based on Synopsis DesignWare v1.01 IP.

Cc: Rob Herring <robh@kernel.org>
Cc: Neil Armstrong <narmstrong@baylibre.com>
Cc: devicetree@vger.kernel.org
Signed-off-by: Sjoerd Simons <sjoerd.simons@collabora.com>
Signed-off-by: Martyn Welch <martyn.welch@collabora.com>
Signed-off-by: Adrian Ratiu <adrian.ratiu@collabora.com>
---
Changes since v4:
  - Fixed yaml binding to pass `make dt_binding_check dtbs_check`
  and addressed received binding feedback (Rob)

Changes since v3:
  - Added commit message (Neil)
  - Converted to yaml format (Neil)
  - Minor dt node + driver fixes (Rob)
  - Added small panel example to the host controller binding

Changes since v2:
  - Fixed commit tags (Emil)
---
 .../display/imx/fsl,mipi-dsi-imx6.yaml        | 134 ++++++++++++++++++
 1 file changed, 134 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/imx/fsl,mipi-dsi-imx6.yaml

diff --git a/Documentation/devicetree/bindings/display/imx/fsl,mipi-dsi-imx6.yaml b/Documentation/devicetree/bindings/display/imx/fsl,mipi-dsi-imx6.yaml
new file mode 100644
index 000000000000..59146df11510
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/imx/fsl,mipi-dsi-imx6.yaml
@@ -0,0 +1,134 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/imx/fsl,mipi-dsi-imx6.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Freescale i.MX6 DW MIPI DSI Host Controller
+
+maintainers:
+  - Adrian Ratiu <adrian.ratiu@collabora.com>
+
+description: |
+  The i.MX6 DSI host controller is a Synopsys DesignWare MIPI DSI v1.01
+  IP block with a companion PHY IP.
+
+  These DT bindings follow the Synopsys DW MIPI DSI bindings defined in
+  Documentation/devicetree/bindings/display/bridge/dw_mipi_dsi.txt with
+  the following device-specific properties.
+
+properties:
+  compatible:
+    items:
+      - const: fsl,imx6q-mipi-dsi
+      - const: snps,dw-mipi-dsi
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: Module Clock
+      - description: DSI bus clock
+
+  clock-names:
+    items:
+      - const: ref
+      - const: pclk
+
+  fsl,gpr:
+    description: Phandle to the iomuxc-gpr region containing the multiplexer control register.
+    $ref: /schemas/types.yaml#/definitions/phandle
+
+  ports:
+    type: object
+    description: |
+      A node containing DSI input & output port nodes with endpoint
+      definitions as documented in
+      Documentation/devicetree/bindings/media/video-interfaces.txt
+      Documentation/devicetree/bindings/graph.txt
+    properties:
+      port@0:
+        type: object
+        description:
+          DSI input port node, connected to the ltdc rgb output port.
+
+      port@1:
+        type: object
+        description:
+          DSI output port node, connected to a panel or a bridge input port"
+
+patternProperties:
+  "^panel@[0-3]$":
+    type: object
+    description: |
+      A node containing the panel or bridge description as documented in
+      Documentation/devicetree/bindings/display/mipi-dsi-bus.txt
+    properties:
+      port:
+        type: object
+        description:
+          Panel or bridge port node, connected to the DSI output port (port@1)
+
+  "#address-cells":
+    const: 1
+
+  "#size-cells":
+    const: 0
+
+required:
+  - "#address-cells"
+  - "#size-cells"
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+  - ports
+
+additionalProperties: false
+
+examples:
+  - |+
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/clock/imx6qdl-clock.h>
+    #include <dt-bindings/gpio/gpio.h>
+
+    dsi: dsi@21e0000 {
+        #address-cells = <1>;
+        #size-cells = <0>;
+        compatible = "fsl,imx6q-mipi-dsi", "snps,dw-mipi-dsi";
+        reg = <0x021e0000 0x4000>;
+        interrupts = <0 102 IRQ_TYPE_LEVEL_HIGH>;
+        fsl,gpr = <&gpr>;
+        clocks = <&clks IMX6QDL_CLK_MIPI_CORE_CFG>,
+                 <&clks IMX6QDL_CLK_MIPI_IPG>;
+        clock-names = "ref", "pclk";
+
+        ports {
+            port@1 {
+                reg = <1>;
+                dsi_out: endpoint {
+                    remote-endpoint = <&panel_in>;
+                };
+            };
+        };
+
+        panel@0 {
+            compatible = "sharp,ls032b3sx01";
+            reg = <0>;
+            reset-gpios = <&gpio6 8 GPIO_ACTIVE_LOW>;
+            ports {
+                port@0 {
+                    panel_in: endpoint {
+                        remote-endpoint = <&dsi_out>;
+                    };
+                };
+            };
+        };
+    };
+
+...
-- 
2.26.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

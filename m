Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 258F5E267C
	for <lists+linux-rockchip@lfdr.de>; Thu, 24 Oct 2019 00:39:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZZ08KtryPiOrKGSIw8dJc6z7BKO56CR32WfWM+DIrbg=; b=idsEXjdQufaiSz
	26xmMYfniDbVob9qFK+fBqGcVehLKWwaJ3lMyh1OVNi5y33RGFPBvh0ds/Ha9EN/2hsE/zqyLQUda
	BrHkROLzgXrqM81xOC/y3MHL7oM0RM4UTLT5a8vmmHq4yAnpSZbQe93Bmf3Pd+XfeLSRkJxo469X4
	PfYb0I6eNXJ44x8JDd+U8AP2uRzHvF8tnFglAwIX9p3/osXTzFbBjXt4KUJlPfs9aZyKA2sI6BP2t
	ZEoD9uKmlJB3NSZ4759/MQP0zWRMAGxkqhf1i/2OcxQ4CVPdAOa0oT4WcccPuWd2jgdpvsIjG/I7O
	U5aan6hK/Av3WU6nTv9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNPI9-0006vX-3b; Wed, 23 Oct 2019 22:39:45 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNPHe-0006O9-Ni; Wed, 23 Oct 2019 22:39:16 +0000
Received: from ip5f5a6266.dynamic.kabel-deutschland.de ([95.90.98.102]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iNPHR-0004FB-Kh; Thu, 24 Oct 2019 00:39:01 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: kishon@ti.com
Subject: [PATCH 2/3] dt-bindings: phy: add yaml binding for rockchip,
 px30-dsi-dphy
Date: Thu, 24 Oct 2019 00:38:50 +0200
Message-Id: <20191023223851.3030-2-heiko@sntech.de>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191023223851.3030-1-heiko@sntech.de>
References: <20191023223851.3030-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_153914_917936_8DEEE3CC 
X-CRM114-Status: GOOD (  11.68  )
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
Cc: mark.rutland@arm.com, bivvy.bi@rock-chips.com,
 Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
 christoph.muellner@theobroma-systems.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

This adds a yaml binding for the external dsi phy found on Rockchip
socs of the px30, rk3128 and rk3368 variants.

Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 .../bindings/phy/rockchip,px30-dsi-dphy.yaml  | 75 +++++++++++++++++++
 1 file changed, 75 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml

diff --git a/Documentation/devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml b/Documentation/devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml
new file mode 100644
index 000000000000..c2e1a998a766
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml
@@ -0,0 +1,75 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/rockchip,px30-dsi-dphy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip MIPI DPHY with additional LVDS/TTL modes
+
+maintainers:
+  - Heiko Stuebner <heiko@sntech.de>
+
+properties:
+  "#phy-cells":
+    const: 0
+
+  "#clock-cells":
+    const: 0
+
+  compatible:
+    enum:
+      - rockchip,px30-dsi-dphy
+      - rockchip,rk3128-dsi-dphy
+      - rockchip,rk3368-dsi-dphy
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: PLL reference clock
+      - description: Module clock
+
+  clock-names:
+    items:
+      - const: ref
+      - const: pclk
+
+  power-domains:
+    maxItems: 1
+    description: phandle to the associated power domain
+
+  resets:
+    items:
+      - description: exclusive PHY reset line
+
+  reset-names:
+    items:
+      - const: apb
+
+required:
+  - "#phy-cells"
+  - "#clock-cells"
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - resets
+  - reset-names
+
+additionalProperties: false
+
+examples:
+  - |
+    dsi_dphy: phy@ff2e0000 {
+        compatible = "rockchip,px30-video-phy";
+        reg = <0x0 0xff2e0000 0x0 0x10000>;
+        clocks = <&pmucru 13>, <&cru 12>;
+        clock-names = "ref", "pclk";
+        #clock-cells = <0>;
+        resets = <&cru 12>;
+        reset-names = "apb";
+        #phy-cells = <0>;
+    };
+
+...
-- 
2.23.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

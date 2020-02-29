Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C45421747A0
	for <lists+linux-rockchip@lfdr.de>; Sat, 29 Feb 2020 16:15:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LYYs+iBifpOZFtemqIym8PvDh3+44UfPCiFQR5OGsZU=; b=TmY0nqOkxZaWHW
	bk3+RrmtbTBiU1WK8cqyw5BUr99w8Q5IQzPdQf4REgc7qepTY03x5eilrs+FE1yCSBHTr6JZlPVy8
	aZEHsrF1dz61IAJS0CwnEMNgQzKC2SHmSQ6GKHopk1HlF7dEB4/d6ylBZgwe36+5us96OYnLPsuDX
	0RU5/7H8WmrByoNib5PjPN6FU+AeEaA8WdGokQOIRlgDSSW0/mICadtEFSuhgrcyHsT+GoSSbeuY2
	oJ1zkqLkMa1kCLlwQAsvWNXxfn+ea9lqwVigt9TsMGN/Yq+aJxIDqYHjpAyx05GFPDQFb6PdSTULZ
	OkoU0TfOTPp2UgDVBUfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j83q2-0006gT-Vc; Sat, 29 Feb 2020 15:15:34 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j83pv-0006c5-PT
 for linux-rockchip@lists.infradead.org; Sat, 29 Feb 2020 15:15:30 +0000
Received: from p508fcd9d.dip0.t-ipconnect.de ([80.143.205.157]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1j83po-0003GL-La; Sat, 29 Feb 2020 16:15:20 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH v3 2/3] dt-bindings: display: panel: Add binding document for
 Elida KD35T133
Date: Sat, 29 Feb 2020 16:15:05 +0100
Message-Id: <20200229151506.750242-2-heiko@sntech.de>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200229151506.750242-1-heiko@sntech.de>
References: <20200229151506.750242-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200229_071527_970993_5585ED86 
X-CRM114-Status: UNSURE (   9.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, heiko@sntech.de,
 francescolavra.fl@gmail.com, robin.murphy@arm.com, robh+dt@kernel.org,
 linux-rockchip@lists.infradead.org, thierry.reding@gmail.com,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>, sam@ravnborg.org,
 christoph.muellner@theobroma-systems.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>

The KD35T133 is a 3.5" 320x480 DSI display used in the RK3326-based
Odroid Go Advance handheld device.

Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
Reviewed-by: Sam Ravnborg <sam@ravnborg.org>
---
 .../display/panel/elida,kd35t133.yaml         | 49 +++++++++++++++++++
 1 file changed, 49 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/elida,kd35t133.yaml

diff --git a/Documentation/devicetree/bindings/display/panel/elida,kd35t133.yaml b/Documentation/devicetree/bindings/display/panel/elida,kd35t133.yaml
new file mode 100644
index 000000000000..4bd74eaa61be
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/elida,kd35t133.yaml
@@ -0,0 +1,49 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/panel/elida,kd35t133.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Elida KD35T133 3.5in 320x480 DSI panel
+
+maintainers:
+  - Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
+
+allOf:
+  - $ref: panel-common.yaml#
+
+properties:
+  compatible:
+    const: elida,kd35t133
+  reg: true
+  backlight: true
+  reset-gpios: true
+  iovcc-supply:
+     description: regulator that supplies the iovcc voltage
+  vdd-supply:
+     description: regulator that supplies the vdd voltage
+
+required:
+  - compatible
+  - reg
+  - backlight
+  - iovcc-supply
+  - vdd-supply
+
+additionalProperties: false
+
+examples:
+  - |
+    dsi@ff450000 {
+        #address-cells = <1>;
+        #size-cells = <0>;
+        panel@0 {
+            compatible = "elida,kd35t133";
+            reg = <0>;
+            backlight = <&backlight>;
+            iovcc-supply = <&vcc_1v8>;
+            vdd-supply = <&vcc3v3_lcd>;
+        };
+    };
+
+...
-- 
2.24.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

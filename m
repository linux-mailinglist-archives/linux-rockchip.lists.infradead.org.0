Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B07C16984A
	for <lists+linux-rockchip@lfdr.de>; Sun, 23 Feb 2020 16:07:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o/iBDP0gBn2SaEslPWXZOtLmOoata/flSp3WMEEKfhI=; b=WZq9NaXxiNwPi0
	wbIkTEMq/7eXxf+PskGGK9ubjMNMCAuUG7KtGHIaN0FP7bkizWY4Gj9MtynZJbF1CX1myS1f6ze4s
	izN8Qh9FnfPgtPsZdGJ2UrmL1R2UeaCPLRlVJ2Ya803g8g9AJU6qGjeiRuuZZoQqXkVA3f1l5XdBI
	iNZELfMhSAfETkng/Ic/XdCzYBEs/SINTUEs/0DMp7TBGCyu/R71dp3oQmOqCxMhgI1FyAysKeKJT
	TLCRpeLOXyTlpW4oUPR0NSAxyEa6G3pgMaFrR/yQHZONf0kFkPQGLSaknNM1V4F9V2+W57I4GiIuY
	BT39XqMP30oRvsvqguOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5srC-0006yu-Qi; Sun, 23 Feb 2020 15:07:46 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5sr8-0006wL-HV
 for linux-rockchip@lists.infradead.org; Sun, 23 Feb 2020 15:07:44 +0000
Received: from p508fd060.dip0.t-ipconnect.de ([80.143.208.96]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1j5sqt-0003if-3r; Sun, 23 Feb 2020 16:07:27 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH 2/3] dt-bindings: display: panel: Add binding document for
 Elida KD35T133
Date: Sun, 23 Feb 2020 16:07:10 +0100
Message-Id: <20200223150711.194482-2-heiko@sntech.de>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200223150711.194482-1-heiko@sntech.de>
References: <20200223150711.194482-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200223_070742_726788_A01E22B5 
X-CRM114-Status: UNSURE (   9.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, heiko@sntech.de,
 robin.murphy@arm.com, robh+dt@kernel.org, linux-rockchip@lists.infradead.org,
 thierry.reding@gmail.com,
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

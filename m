Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EAB66194747
	for <lists+linux-rockchip@lfdr.de>; Thu, 26 Mar 2020 20:14:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4IeMh9jl+c8QLg5CxinyMCv3Y22x1tGRG7btPaB7Dk0=; b=uQTYi61BYwmdH8
	SoqVnwn5Tcf4wwj2TPEHocMWq5V4UADTP6eT2Gu0c5Q8rekkLhbePA+ilwzyywBd/u4gVjTafJEvr
	BPGcAz5mah57yaBKGRUZWWukg2GsGM8MLIkoVcH0lsykozgEC8HeGhrb3Wow0tk/8QKZIb1/1eHYo
	f4c2U+VhZMeTjIB7dQDI7Y8K/wIxbZPtCLLo1+HNGDMS6n1L6eqcP/+UCwqk2obzLCyf/tDefS/xP
	E+Q03ZCudHV6xRFNVBRURiQjm+S9Ulu+cykm21wwtnRNF1X7XgziYyzPAoGMmoEjyiM4wSp4Laat+
	UeNnSw8E5jcFP1UroEmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHXxM-0007q2-Vl; Thu, 26 Mar 2020 19:14:20 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHXxJ-0007pb-1F
 for linux-rockchip@lists.infradead.org; Thu, 26 Mar 2020 19:14:18 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 530B4297A10
From: Ezequiel Garcia <ezequiel@collabora.com>
To: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v4] dt-bindings: rockchip-vpu: Convert bindings to json-schema
Date: Thu, 26 Mar 2020 16:13:43 -0300
Message-Id: <20200326191343.1989-1-ezequiel@collabora.com>
X-Mailer: git-send-email 2.26.0.rc2
In-Reply-To: <20200325213439.16509-8-ezequiel@collabora.com>
References: <20200325213439.16509-8-ezequiel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_121417_345726_079E03AD 
X-CRM114-Status: GOOD (  12.69  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh@kernel.org>,
 Tomasz Figa <tfiga@chromium.org>, Heiko Stuebner <heiko@sntech.de>,
 Alexandre Courbot <acourbot@chromium.org>, Jonas Karlman <jonas@kwiboo.se>,
 Nicolas Dufresne <nicolas@ndufresne.ca>, Hans Verkuil <hverkuil@xs4all.nl>,
 devicetree@vger.kernel.org, Jeffrey Kardatzke <jkardatzke@chromium.org>,
 kernel@collabora.com, Ezequiel Garcia <ezequiel@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Convert Rockchip VPU (Hantro IP block) codec driver documentation to
json-schema.

Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Rob Herring <robh@kernel.org>
Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
---
v4:
* Fix issues pointed out by Rob,
  and make sure now dt_binding_check passes.

 .../bindings/media/rockchip-vpu.txt           | 43 -----------
 .../bindings/media/rockchip-vpu.yaml          | 74 +++++++++++++++++++
 MAINTAINERS                                   |  2 +-
 3 files changed, 75 insertions(+), 44 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/media/rockchip-vpu.txt
 create mode 100644 Documentation/devicetree/bindings/media/rockchip-vpu.yaml

diff --git a/Documentation/devicetree/bindings/media/rockchip-vpu.txt b/Documentation/devicetree/bindings/media/rockchip-vpu.txt
deleted file mode 100644
index 339252d9c515..000000000000
--- a/Documentation/devicetree/bindings/media/rockchip-vpu.txt
+++ /dev/null
@@ -1,43 +0,0 @@
-device-tree bindings for rockchip VPU codec
-
-Rockchip (Video Processing Unit) present in various Rockchip platforms,
-such as RK3288, RK3328 and RK3399.
-
-Required properties:
-- compatible: value should be one of the following
-		"rockchip,rk3288-vpu";
-		"rockchip,rk3328-vpu";
-		"rockchip,rk3399-vpu";
-- interrupts: encoding and decoding interrupt specifiers
-- interrupt-names: should be
-		"vepu", "vdpu" on RK3288 and RK3399,
-		"vdpu" on RK3328.
-- clocks: phandle to VPU aclk, hclk clocks
-- clock-names: should be "aclk" and "hclk"
-- power-domains: phandle to power domain node
-- iommus: phandle to a iommu node
-
-Example:
-SoC-specific DT entry:
-	vpu: video-codec@ff9a0000 {
-		compatible = "rockchip,rk3288-vpu";
-		reg = <0x0 0xff9a0000 0x0 0x800>;
-		interrupts = <GIC_SPI 9 IRQ_TYPE_LEVEL_HIGH>,
-			     <GIC_SPI 10 IRQ_TYPE_LEVEL_HIGH>;
-		interrupt-names = "vepu", "vdpu";
-		clocks = <&cru ACLK_VCODEC>, <&cru HCLK_VCODEC>;
-		clock-names = "aclk", "hclk";
-		power-domains = <&power RK3288_PD_VIDEO>;
-		iommus = <&vpu_mmu>;
-	};
-
-	vpu: video-codec@ff350000 {
-		compatible = "rockchip,rk3328-vpu";
-		reg = <0x0 0xff350000 0x0 0x800>;
-		interrupts = <GIC_SPI 9 IRQ_TYPE_LEVEL_HIGH>;
-		interrupt-names = "vdpu";
-		clocks = <&cru ACLK_VPU>, <&cru HCLK_VPU>;
-		clock-names = "aclk", "hclk";
-		power-domains = <&power RK3328_PD_VPU>;
-		iommus = <&vpu_mmu>;
-	};
diff --git a/Documentation/devicetree/bindings/media/rockchip-vpu.yaml b/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
new file mode 100644
index 000000000000..d7a42e6f9bcf
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
@@ -0,0 +1,74 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/media/rockchip-vpu.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: Hantro G1 VPU codecs implemented on Rockchip SoCs
+
+maintainers:
+  - Ezequiel Garcia <ezequiel@collabora.com>
+
+description:
+  Hantro G1 video encode and decode accelerators present on Rockchip SoCs.
+
+properties:
+  compatible:
+    enum:
+      - rockchip,rk3288-vpu
+      - rockchip,rk3328-vpu
+      - rockchip,rk3399-vpu
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 2
+
+  interrupt-names:
+    items:
+      - const: vepu
+      - const: vdpu
+
+  clocks:
+    maxItems: 2
+
+  clock-names:
+    items:
+      - const: aclk
+      - const: hclk
+
+  power-domains:
+    maxItems: 1
+
+  iommus:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - interrupt-names
+  - clocks
+  - clock-names
+
+additionalProperties: false
+
+examples:
+  - |
+        #include <dt-bindings/clock/rk3288-cru.h>
+        #include <dt-bindings/interrupt-controller/arm-gic.h>
+        #include <dt-bindings/power/rk3288-power.h>
+
+        vpu: video-codec@ff9a0000 {
+                compatible = "rockchip,rk3288-vpu";
+                reg = <0x0 0xff9a0000 0x0 0x800>;
+                interrupts = <GIC_SPI 9 IRQ_TYPE_LEVEL_HIGH>,
+                             <GIC_SPI 10 IRQ_TYPE_LEVEL_HIGH>;
+                interrupt-names = "vepu", "vdpu";
+                clocks = <&cru ACLK_VCODEC>, <&cru HCLK_VCODEC>;
+                clock-names = "aclk", "hclk";
+                power-domains = <&power RK3288_PD_VIDEO>;
+                iommus = <&vpu_mmu>;
+        };
diff --git a/MAINTAINERS b/MAINTAINERS
index d66ac41ef587..2b8b3e7f3df3 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -14320,7 +14320,7 @@ L:	linux-rockchip@lists.infradead.org
 S:	Maintained
 F:	drivers/staging/media/hantro/
 F:	Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
-F:	Documentation/devicetree/bindings/media/rockchip-vpu.txt
+F:	Documentation/devicetree/bindings/media/rockchip-vpu.yaml
 
 ROCKER DRIVER
 M:	Jiri Pirko <jiri@resnulli.us>
-- 
2.26.0.rc2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CEAEE197231
	for <lists+linux-rockchip@lfdr.de>; Mon, 30 Mar 2020 03:47:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZB2zow5F2g5XtO8IWdR9aWqT3U+v0ZtKE63UHfjcArg=; b=eQH8aywTkfZK9q
	v5YciCBF7zMC53irzmk6uFYlmvQfTcQPKlAvIvZy2dj25BNK4+YvKOjbvmMhvSAhV34LuAorFoXnj
	5jYOk/Izx4V5pnsPCy1cY67EGfcKshUH5zdrrvHeTvIEu/XPLUzQ/5ZUgBhFNOk5nGcXUqOVKolnW
	tQ1Sxk5gcRWjcqWPasVw9w0/jbFoLhC8DQphvm5N92PrwyD33RDZotUeso0rEn7LbzCbfLyQMc4FB
	RoHJv29+IBU15XbPOD8T4zQ+6zJUj57gqNkHfgov1kx6v4N02oiW6Z/rOwVMhYjdnJsiZIPq5DoSR
	PBRi5pAHaYecfwhPMYuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIjW0-0008AQ-0k; Mon, 30 Mar 2020 01:47:00 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIjVv-0007yI-PB
 for linux-rockchip@lists.infradead.org; Mon, 30 Mar 2020 01:46:57 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id D51312947A3
From: Ezequiel Garcia <ezequiel@collabora.com>
To: linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v7 3/5] media: dt-bindings: rockchip: Document RK3399 Video
 Decoder bindings
Date: Sun, 29 Mar 2020 22:46:14 -0300
Message-Id: <20200330014616.10621-4-ezequiel@collabora.com>
X-Mailer: git-send-email 2.26.0.rc2
In-Reply-To: <20200330014616.10621-1-ezequiel@collabora.com>
References: <20200330014616.10621-1-ezequiel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200329_184655_953095_BE0507FD 
X-CRM114-Status: UNSURE (   9.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Mark Rutland <mark.rutland@arm.com>, Hans Verkuil <hverkuil@xs4all.nl>,
 Tomasz Figa <tfiga@chromium.org>, Heiko Stuebner <heiko@sntech.de>,
 Alexandre Courbot <acourbot@chromium.org>, Jonas Karlman <jonas@kwiboo.se>,
 Nicolas Dufresne <nicolas@ndufresne.ca>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Rob Herring <robh+dt@kernel.org>, Jeffrey Kardatzke <jkardatzke@chromium.org>,
 Boris Brezillon <boris.brezillon@collabora.com>, kernel@collabora.com,
 Ezequiel Garcia <ezequiel@collabora.com>, Rob Herring <robh@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

From: Boris Brezillon <boris.brezillon@collabora.com>

Document the Rockchip RK3399 Video Decoder bindings.

Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
---
 .../bindings/media/rockchip,vdec.yaml         | 73 +++++++++++++++++++
 1 file changed, 73 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/rockchip,vdec.yaml

diff --git a/Documentation/devicetree/bindings/media/rockchip,vdec.yaml b/Documentation/devicetree/bindings/media/rockchip,vdec.yaml
new file mode 100644
index 000000000000..0c68cdad9a31
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/rockchip,vdec.yaml
@@ -0,0 +1,73 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/media/rockchip,vdec.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip Video Decoder (VDec) Device Tree Bindings
+
+maintainers:
+  - Heiko Stuebner <heiko@sntech.de>
+
+description: |-
+  The Rockchip rk3399 has a stateless Video Decoder that can decodes H.264,
+  HEVC an VP9 streams.
+
+properties:
+  compatible:
+    const: rockchip,rk3399-vdec
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: The Video Decoder AXI interface clock
+      - description: The Video Decoder AHB interface clock
+      - description: The Video Decoded CABAC clock
+      - description: The Video Decoder core clock
+
+  clock-names:
+    items:
+      - const: axi
+      - const: ahb
+      - const: cabac
+      - const: core
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
+  - clocks
+  - clock-names
+  - power-domains
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/clock/rk3399-cru.h>
+    #include <dt-bindings/power/rk3399-power.h>
+
+    vdec: video-codec@ff660000 {
+        compatible = "rockchip,rk3399-vdec";
+        reg = <0x0 0xff660000 0x0 0x400>;
+        interrupts = <GIC_SPI 116 IRQ_TYPE_LEVEL_HIGH 0>;
+        clocks = <&cru ACLK_VDU>, <&cru HCLK_VDU>,
+                 <&cru SCLK_VDU_CA>, <&cru SCLK_VDU_CORE>;
+        clock-names = "axi", "ahb", "cabac", "core";
+        power-domains = <&power RK3399_PD_VDU>;
+        iommus = <&vdec_mmu>;
+    };
+
+...
-- 
2.26.0.rc2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

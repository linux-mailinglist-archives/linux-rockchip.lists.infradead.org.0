Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8858DD3C00
	for <lists+linux-rockchip@lfdr.de>; Fri, 11 Oct 2019 11:12:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=orkoPERnWSx3/hdjLGNrVnxdI2AFSw0SCoOO6Uh+0ro=; b=LUogLMqNuwg+gV
	zOS6BZQYvYYnabfkdcFygfiWv2uwe0oR/FWZ73/QeFh4uqqBqTrpNLsmvJN5UaGyyJHbo2mBoRwD2
	G046eI60U4j9cNxq892+PxjCfm1U9yqpHsnmeNTygiUcR7yGlfVvIV1DvYjqf3Xew9hiLsjvqFaqU
	PdGMx/NDxQEJpaVQUC1mIL3J9tDlADjwwkqSZRAMrn7qwSk17JvA2kpcCBCle5ZPwJ9NAokrr6P6a
	i6T1q42+QQgJnoNUK8ex2uTQzqHhY8ETQMT16V0pj43luUAXjOhGEQQowvSg/dQyhKMpZ1nd9IJMc
	9a7FnLXP3yK9UpLRFPIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIqy9-0000KS-Et; Fri, 11 Oct 2019 09:12:17 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIqy6-0000Ja-6C
 for linux-rockchip@lists.infradead.org; Fri, 11 Oct 2019 09:12:15 +0000
Received: from localhost.localdomain (unknown
 [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 18039290D4D;
 Fri, 11 Oct 2019 10:12:12 +0100 (BST)
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hans.verkuil@cisco.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Sakari Ailus <sakari.ailus@iki.fi>, linux-media@vger.kernel.org
Subject: [PATCH v2 2/4] media: dt-bindings: rockchip: Document RK3399 Video
 Decoder bindings
Date: Fri, 11 Oct 2019 11:12:06 +0200
Message-Id: <20191011091206.1824-1-boris.brezillon@collabora.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191011090939.1377-1-boris.brezillon@collabora.com>
References: <20191011090939.1377-1-boris.brezillon@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_021214_360128_BC925C13 
X-CRM114-Status: GOOD (  11.36  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Tomasz Figa <tfiga@chromium.org>, Heiko Stuebner <heiko@sntech.de>,
 Jonas Karlman <jonas@kwiboo.se>, Nicolas Dufresne <nicolas@ndufresne.ca>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org,
 Boris Brezillon <boris.brezillon@collabora.com>, kernel@collabora.com,
 Ezequiel Garcia <ezequiel@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Document the Rockchip RK3399 Video Decoder bindings.

Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
---
 .../bindings/media/rockchip,vdec.yaml         | 71 +++++++++++++++++++
 1 file changed, 71 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/rockchip,vdec.yaml

diff --git a/Documentation/devicetree/bindings/media/rockchip,vdec.yaml b/Documentation/devicetree/bindings/media/rockchip,vdec.yaml
new file mode 100644
index 000000000000..7167c3d6a389
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/rockchip,vdec.yaml
@@ -0,0 +1,71 @@
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
+      - const: aclk
+      - const: iface
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
+
+    vdec: video-codec@ff660000 {
+        compatible = "rockchip,rk3399-vdec";
+        reg = <0x0 0xff660000 0x0 0x400>;
+        interrupts = <GIC_SPI 116 IRQ_TYPE_LEVEL_HIGH 0>;
+        clocks = <&cru ACLK_VDU>, <&cru HCLK_VDU>,
+                 <&cru SCLK_VDU_CA>, <&cru SCLK_VDU_CORE>;
+        clock-names = "aclk", "iface", "cabac", "core";
+        power-domains = <&power RK3399_PD_VDU>;
+        iommus = <&vdec_mmu>;
+    };
+
+...
-- 
2.21.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E16A712BB0C
	for <lists+linux-rockchip@lfdr.de>; Fri, 27 Dec 2019 21:05:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nbLHK0da0YcYBlIRFNJPOOCZ3mqsynKFcS17wd8EkKU=; b=a7Gd3NGtDErgc+
	BUKe5lv51BNV1xg2QQhVK9EnhPyaxoVUWRBjgzfTTvSSOsaX89hUTICUC67KhpLHIK52gWYlv7i1R
	l9EJY/L5CTlIgyPlprdv6DtKwoU4IcK6pPEQemc1M0CwcxpeNp63A2f8l67pIdzrLutd2CZ4HopP/
	tjHLLYTkox6UQaIxadDHt1CN8qR3q7y9lsh3OCjYl8ojfi1JoPgckwzBNXENN0wtxNC/28EbjHdpR
	vQoyz4UwVVjz1g3J0v9vyOeHRh4uUnFI4sstTX8JihJC/IyE67VXVIixDxUe8ePMb3IMulBcozE80
	VAcAG1FDblww/jo+ZTDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikvrh-0003kN-VD; Fri, 27 Dec 2019 20:05:41 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikvol-0000Mn-MQ; Fri, 27 Dec 2019 20:02:41 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: koike) with ESMTPSA id 5B7AC29288A
From: Helen Koike <helen.koike@collabora.com>
To: linux-rockchip@lists.infradead.org
Subject: [PATCH v12 09/11] media: staging: dt-bindings: add Rockchip MIPI RX
 D-PHY yaml bindings
Date: Fri, 27 Dec 2019 17:01:14 -0300
Message-Id: <20191227200116.2612137-10-helen.koike@collabora.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191227200116.2612137-1-helen.koike@collabora.com>
References: <20191227200116.2612137-1-helen.koike@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191227_120240_013279_BC048BB6 
X-CRM114-Status: UNSURE (   9.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, eddie.cai.linux@gmail.com,
 kernel@collabora.com, heiko@sntech.de, linux-arm-kernel@lists.infradead.org,
 ezequiel@collabora.com, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, tfiga@chromium.org,
 Helen Koike <helen.koike@collabora.com>, robh+dt@kernel.org,
 hans.verkuil@cisco.com, laurent.pinchart@ideasonboard.com,
 sakari.ailus@linux.intel.com, joacim.zetterling@gmail.com, mchehab@kernel.org,
 andrey.konovalov@linaro.org, jacob-chen@iotwrt.com,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Add yaml DT bindings for Rockchip MIPI D-PHY RX

This was tested and verified with:
mv drivers/staging/media/phy-rockchip-dphy/Documentation/devicetree/bindings/phy/rockchip-mipi-dphy.yaml  Documentation/devicetree/bindings/phy/
make dt_binding_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/phy/rockchip-mipi-dphy.yaml
make dtbs_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/phy/rockchip-mipi-dphy.yaml

Signed-off-by: Helen Koike <helen.koike@collabora.com>

---

Changes in v12:
- The commit replaces the following commit in previous series named
media: staging: dt-bindings: Document the Rockchip MIPI RX D-PHY bindings
This new patch adds yaml binding and was verified with
make dtbs_check and make dt_binding_check

Changes in v11: None
Changes in v10:
- unsquash

Changes in v9:
- fix title division style
- squash
- move to staging

Changes in v8: None
Changes in v7:
- updated doc with new design and tested example

 .../bindings/phy/rockchip-mipi-dphy.yaml      | 75 +++++++++++++++++++
 1 file changed, 75 insertions(+)
 create mode 100644 drivers/staging/media/phy-rockchip-dphy/Documentation/devicetree/bindings/phy/rockchip-mipi-dphy.yaml

diff --git a/drivers/staging/media/phy-rockchip-dphy/Documentation/devicetree/bindings/phy/rockchip-mipi-dphy.yaml b/drivers/staging/media/phy-rockchip-dphy/Documentation/devicetree/bindings/phy/rockchip-mipi-dphy.yaml
new file mode 100644
index 000000000000..af97f1b3e005
--- /dev/null
+++ b/drivers/staging/media/phy-rockchip-dphy/Documentation/devicetree/bindings/phy/rockchip-mipi-dphy.yaml
@@ -0,0 +1,75 @@
+# SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/rockchip-mipi-dphy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip SoC MIPI RX0 D-PHY Device Tree Bindings
+
+maintainers:
+  - Helen Koike <helen.koike@collabora.com>
+  - Ezequiel Garcia <ezequiel@collabora.com>
+
+description: |
+  The Rockchip SoC has a MIPI D-PHY bus with an RX0 entry which connects to
+  the ISP1 (Image Signal Processing unit v1.0) for CSI cameras.
+
+properties:
+  compatible:
+    const: rockchip,rk3399-mipi-dphy
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: Mipi d-phy ref clock
+      - description: Mipi d-phy rx0 cfg clock
+      - description: Video in/out general register file clock
+
+  clock-names:
+    items:
+      - const: dphy-ref
+      - const: dphy-cfg
+      - const: grf
+
+  '#phy-cells':
+    const: 0
+
+  power-domains:
+    description: Video in/out power domain.
+    maxItems: 1
+
+required:
+  - compatible
+  - clocks
+  - clock-names
+  - '#phy-cells'
+  - power-domains
+
+additionalProperties: false
+
+examples:
+  - |
+
+    /*
+     * MIPI RX D-PHY use registers in "general register files", it
+     * should be a child of the GRF.
+     *
+     * grf: syscon@ff770000 {
+     *  compatible = "rockchip,rk3399-grf", "syscon", "simple-mfd";
+     *  ...
+     */
+
+    #include <dt-bindings/clock/rk3399-cru.h>
+    #include <dt-bindings/power/rk3399-power.h>
+
+    dphy: mipi-dphy {
+        compatible = "rockchip,rk3399-mipi-dphy";
+        clocks = <&cru SCLK_MIPIDPHY_REF>,
+                 <&cru SCLK_DPHY_RX0_CFG>,
+                 <&cru PCLK_VIO_GRF>;
+        clock-names = "dphy-ref", "dphy-cfg", "grf";
+        power-domains = <&power RK3399_PD_VIO>;
+        #phy-cells = <0>;
+    };
-- 
2.24.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

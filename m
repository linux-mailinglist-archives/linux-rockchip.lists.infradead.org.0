Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A670115B958
	for <lists+linux-rockchip@lfdr.de>; Thu, 13 Feb 2020 07:10:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Jm4jkQZ+Due1HnOSmBjWpaFAzcBqZMwpFc/hNkx+sno=; b=ENZMpyDWfx2KsJCllMMSLEpgFN
	PPticUE9AV/4o9NhOfc9FcZi9l/3W86pcKdeM4En7P4eknmcIbPULXyElrzOr6sClzI+GYuPP/F4o
	jk5Ly0PfmjUxkQVonXrUlJhGmvwWOxvbYobbWhNFt3f9ABGPIyhBYPfJvuccVps/Q+yzs3nUXF0xX
	oe0KhI+d5HzbgxNhqjfF5f9/SZmo5JhhubapCKrArrpoCEX0cr84l83lSyTMDSGEa85SUr5IqR5gc
	CVtus/UYSGvzjgeZhHV5iDMeyBnRNV2QtwqQuerVgt3q6gLTIh9hXhAIYBCCXvyOObSyS/0TkxzRb
	nxs3pzpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j27ha-0006XB-0m; Thu, 13 Feb 2020 06:10:18 +0000
Received: from lucky1.263xmail.com ([211.157.147.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j27hW-0006VQ-TI
 for linux-rockchip@lists.infradead.org; Thu, 13 Feb 2020 06:10:16 +0000
Received: from localhost (unknown [192.168.167.8])
 by lucky1.263xmail.com (Postfix) with ESMTP id 7D4497F9EF;
 Thu, 13 Feb 2020 14:10:05 +0800 (CST)
X-MAIL-GRAY: 1
X-MAIL-DELIVERY: 0
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P16450T140624477026048S1581574189162340_; 
 Thu, 13 Feb 2020 14:10:05 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <512f38819e25d0463c2182f980fa4335>
X-RL-SENDER: shawn.lin@rock-chips.com
X-SENDER: lintao@rock-chips.com
X-LOGIN-NAME: shawn.lin@rock-chips.com
X-FST-TO: heiko@sntech.de
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Heiko Stuebner <heiko@sntech.de>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Rob Herring <robh+dt@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Bjorn Helgaas <bhelgaas@google.com>
Subject: [PATCH v2 1/6] dt-bindings: add binding for Rockchip combo phy using
 an Innosilicon IP
Date: Thu, 13 Feb 2020 14:08:06 +0800
Message-Id: <1581574091-240890-2-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1581574091-240890-1-git-send-email-shawn.lin@rock-chips.com>
References: <1581574091-240890-1-git-send-email-shawn.lin@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_221015_501986_B8D1E551 
X-CRM114-Status: GOOD (  13.04  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.157.147.130 listed in list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: devicetree@vger.kernel.org, Simon Xue <xxm@rock-chips.com>,
 Jingoo Han <jingoohan1@gmail.com>, Shawn Lin <shawn.lin@rock-chips.com>,
 linux-rockchip@lists.infradead.org, linux-pci@vger.kernel.org,
 William Wu <william.wu@rock-chips.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

This IP could supports USB3.0 and PCIe.

Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>

---

Changes in v2:
- fix yaml format

 .../bindings/phy/rockchip,inno-combophy.yaml       | 80 ++++++++++++++++++++++
 1 file changed, 80 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/rockchip,inno-combophy.yaml

diff --git a/Documentation/devicetree/bindings/phy/rockchip,inno-combophy.yaml b/Documentation/devicetree/bindings/phy/rockchip,inno-combophy.yaml
new file mode 100644
index 0000000..841f88a
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/rockchip,inno-combophy.yaml
@@ -0,0 +1,80 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/rockchip,inno-combophy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip USB3.0/PCI-e combo phy
+
+maintainers:
+        - Shawn Lin <shawn.lin@rock-chips.com>
+        - William Wu <william.wu@rock-chips.com>
+
+properties:
+  "#phy-cells":
+    const: 1
+
+  compatible:
+    enum:
+      - rockchip,rk1808-combphy
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: PLL reference clock
+
+  clock-names:
+    items:
+      - const: refclk
+
+  resets:
+    items:
+      - description: OTG unit reset line
+      - description: POR unit reset line
+      - description: APB interface reset line
+      - description: PIPE unit reset line
+
+  reset-names:
+    items:
+      - const: otg-rst
+      - const: combphy-por
+      - const: combphy-apb
+      - const: combphy-pipe
+
+  rockchip,combphygrf:
+    enum:
+      - rockchip,combphygrf
+    description: The grf for COMBPHY configuration and state registers.
+
+required:
+  - "#phy-cells"
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - resets
+  - reset-names
+  - rockchip,combphygrf
+
+additionalProperties: false
+
+examples:
+  - |
+    combphy: phy@ff380000 {
+        compatible = "rockchip,rk1808-combphy";
+        reg = <0x0 0xff380000 0x0 0x10000>;
+        #phy-cells = <1>;
+        clocks = <&cru SCLK_PCIEPHY_REF>;
+        clock-names = "refclk";
+        assigned-clocks = <&cru SCLK_PCIEPHY_REF>;
+        assigned-clock-rates = <25000000>;
+        resets = <&cru SRST_USB3_OTG_A>, <&cru SRST_PCIEPHY_POR>,
+                 <&cru SRST_PCIEPHY_P>, <&cru SRST_PCIEPHY_PIPE>;
+        reset-names = "otg-rst", "combphy-por",
+                      "combphy-apb", "combphy-pipe";
+        rockchip,combphygrf = <&combphy_grf>;
+    };
+
+...
-- 
1.9.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

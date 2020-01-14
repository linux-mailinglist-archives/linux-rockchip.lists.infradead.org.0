Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DDA013A1B4
	for <lists+linux-rockchip@lfdr.de>; Tue, 14 Jan 2020 08:24:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=U3EKU8+R9eFni8P2pElJYQ1d9iOZQIgvVbLZAUgAxSA=; b=Ik9ZpHWP1romdwwK9v5MK+7LzC
	KuJUWDlLSgig8H8o76hh/c0o3frtlgi/n6llitXjn9MmZJLq7gQRXHN/lHzeDE7zaZuc7QmUyzUsR
	nVSuEKJoq21vBw6Qdt+VAW/iEWHEHoG2oFTEB7a+s21XiHoN5Ya+FfTMQ0Ba5iTSvhmAGIyeTjpr/
	qEeBu4nmmXCYqbCgMRff3uYpFJ9chswm1dWrrIesi6e2fVexa4pq7dHG3QmuWczqBEDbc6/LjLA7A
	qGju+ITqB3XytRU1oQl7su089evl2eNIGXUnBsu8UUWUan+4iCvMtROwqyoJMmeSQuEUAcpOVrm0P
	5nxSVXXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irGZD-0000r8-9a; Tue, 14 Jan 2020 07:24:47 +0000
Received: from lucky1.263xmail.com ([211.157.147.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irGZ9-0000qS-Qz
 for linux-rockchip@lists.infradead.org; Tue, 14 Jan 2020 07:24:45 +0000
Received: from localhost (unknown [192.168.167.16])
 by lucky1.263xmail.com (Postfix) with ESMTP id 124AC7CF0C;
 Tue, 14 Jan 2020 15:24:42 +0800 (CST)
X-MAIL-GRAY: 1
X-MAIL-DELIVERY: 0
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P5437T140292994864896S1578986620990337_; 
 Tue, 14 Jan 2020 15:24:42 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <f25456ee66a8a74a07826691950c75a3>
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
Subject: [PATCH 4/6] dt-bindings: rockchip: Add DesignWare based PCIe
 controller
Date: Tue, 14 Jan 2020 15:22:58 +0800
Message-Id: <1578986580-71974-5-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1578986580-71974-1-git-send-email-shawn.lin@rock-chips.com>
References: <1578986580-71974-1-git-send-email-shawn.lin@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_232444_196001_7049E883 
X-CRM114-Status: GOOD (  12.86  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.157.147.130 listed in list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
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

From: Simon Xue <xxm@rock-chips.com>

Signed-off-by: Simon Xue <xxm@rock-chips.com>
Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---

 .../devicetree/bindings/pci/rockchip-dw-pcie.yaml  | 132 +++++++++++++++++++++
 1 file changed, 132 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml

diff --git a/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
new file mode 100644
index 0000000..c5205f6
--- /dev/null
+++ b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
@@ -0,0 +1,132 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/pci/rockchip-dw-pcie.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: DesignWare based PCIe RC controller on Rockchip SoCs
+
+maintainers:
+        - Shawn Lin <shawn.lin@rock-chips.com>
+        - Simon Xue <xxm@rock-chips.com>
+
+properties:
+  compatible:
+    enum:
+      - rockchip,rk1808-pcie
+      - snps,dw-pcie
+
+  reg:
+    maxItems: 2
+
+  clocks:
+    items:
+      - description: High speed clock for PCIe
+      - description: Low speed clock for PCIe
+      - description: AHB clock for PCIe
+      - description: APB clock for PCIe
+      - description: Auxiliary clock for PCIe
+
+  clock-names:
+    items:
+      - const: hsclk
+      - const: lsclk
+      - const: aclk
+      - const: pclk
+      - const: sclk-aux
+
+  resets:
+    items:
+      - description: PCIe niu high reset line
+      - description: PCIe niu low reset line
+      - description: PCIe grf reset line
+      - description: PCIe control reset line
+      - description: PCIe control powerup reset line
+      - description: PCIe control master reset line
+      - description: PCIe control slave reset line
+      - description: PCIe control dbi reset line
+      - description: PCIe control button reset line
+      - description: PCIe control power engine reset line
+      - description: PCIe control core reset line
+      - description: PCIe control non-sticky reset line
+      - description: PCIe control sticky reset line
+      - description: PCIe control power reset line
+      - description: PCIe niu ahb reset line
+      - description: PCIe niu apb reset line
+
+  reset-names:
+    items:
+      - const: niu-h
+      - const: niu-l
+      - const: grf-p
+      - const: ctl-p
+      - const: ctl-powerup
+      - const: ctl-mst-a
+      - const: ctl-slv-a
+      - const: ctl-dbi-a
+      - const: ctl-button
+      - const: ctl-pe
+      - const: ctl-core
+      - const: ctl-nsticky
+      - const: ctl-sticky
+      - const: ctl-pwr
+      - const: ctl-niu-a
+      - const: ctl-niu-p
+
+  rockchip,usbpciegrf:
+    items:
+      - description: The grf for COMBPHY configuration and state registers.
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - msi-map
+  - num-lanes
+  - phys
+  - phy-names
+  - resets
+  - reset-names
+  - rockchip,usbpciegrf
+
+additionalProperties: false
+
+examples:
+  - |
+    usb_pcie_grf: syscon@fe040000 {
+        compatible = "rockchip,usb-pcie-grf", "syscon";
+        reg = <0x0 0xfe040000 0x0 0x1000>;
+    };
+
+    pcie0: pcie@fc400000 {
+        compatible = "rockchip,rk1808-pcie", "snps,dw-pcie";
+        reg = <0x0 0xfc000000 0x0 0x400000>,
+              <0x0 0xfc400000 0x0 0x10000>;
+        clocks = <&cru HSCLK_PCIE>, <&cru LSCLK_PCIE>,
+                 <&cru ACLK_PCIE>, <&cru PCLK_PCIE>,
+                 <&cru SCLK_PCIE_AUX>;
+        clock-names = "hsclk", "lsclk",
+                      "aclk", "pclk",
+                      "sclk-aux";
+        msi-map = <0x0 &its 0x0 0x1000>;
+        num-lanes = <2>;
+        phys = <&combphy PHY_TYPE_PCIE>;
+        phy-names = "pcie-phy";
+        resets = <&cru SRST_PCIE_NIU_H>, <&cru SRST_PCIE_NIU_L>,
+                 <&cru SRST_PCIEGRF_P>, <&cru SRST_PCIECTL_P>,
+                 <&cru SRST_PCIECTL_POWERUP>, <&cru SRST_PCIECTL_MST_A>,
+                 <&cru SRST_PCIECTL_SLV_A>, <&cru SRST_PCIECTL_DBI_A>,
+                 <&cru SRST_PCIECTL_BUTTON>, <&cru SRST_PCIECTL_PE>,
+                 <&cru SRST_PCIECTL_CORE>, <&cru SRST_PCIECTL_NSTICKY>,
+                 <&cru SRST_PCIECTL_STICKY>, <&cru SRST_PCIECTL_PWR>,
+                 <&cru SRST_PCIE_NIU_A>, <&cru SRST_PCIE_NIU_P>;
+        reset-names = "niu-h", "niu-l", "grf-p", "ctl-p",
+                      "ctl-powerup", "ctl-mst-a", "ctl-slv-a",
+                      "ctl-dbi-a", "ctl-button", "ctl-pe",
+                      "ctl-core", "ctl-nsticky", "ctl-sticky",
+                      "ctl-pwr", "ctl-niu-a", "ctl-niu-p";
+        rockchip,usbpciegrf = <&usb_pcie_grf>;
+    };
+
+...
-- 
1.9.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

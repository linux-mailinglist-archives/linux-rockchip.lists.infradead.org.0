Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E578143CF5
	for <lists+linux-rockchip@lfdr.de>; Tue, 21 Jan 2020 13:35:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=LBbG3D8WU4D3URcdG6oYzh5tlenLvfLDt6p7n/DNBaQ=; b=nBC
	wU5gGqZ27JoBl64Rah8BCHJOahcIlVE0vmZTTaCSUhmTcd3Rv0pHd8uThYbN3rItyWdy8gS1MMKOl
	r8Rs0R6d3D69KhTN+hlYNbw5rh+uAWja1XuWDp4CrBD++rfhLYqgBNQSD98zvSuzRmbF/m1BYXHmM
	pWyCWzlFonkfG7kvrZTpOhnKrPfvSrYrvItAF4rpUkU0qJGfHwZj0ZxDDI7C0Bq0skLaLuZtA37cn
	+4RneD40i0Ju/4flzdxeLHuoXbPzgU18fIcXw2CQHeNSGkbUOVzvb+SzTNin/DTu9OJXQpB7XpTp6
	avBNwFjyvZuFPhkb+ExXyx7EjkVqeIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itskn-0001tD-FQ; Tue, 21 Jan 2020 12:35:33 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itskW-0001lC-HJ; Tue, 21 Jan 2020 12:35:21 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dafna) with ESMTPSA id 45F5028A204
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2] dt-bindings: convert rockchip-drm.txt to rockchip-drm.yaml
Date: Tue, 21 Jan 2020 13:34:45 +0100
Message-Id: <20200121123445.29774-1-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_043517_260390_BAC94797 
X-CRM114-Status: GOOD (  11.14  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 dafna.hirschfeld@collabora.com, heiko@sntech.de, airlied@linux.ie,
 dafna3@gmail.com, hjc@rock-chips.com, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org, helen.koike@collabora.com,
 robh+dt@kernel.org, daniel@ffwll.ch, kernel@collabora.com,
 ezequiel@collabora.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

convert the binding file rockchip-drm.txt to yaml format.
This was tested and verified with:
make dt_binding_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/display/rockchip/rockchip-drm.yaml
make dtbs_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/display/rockchip/rockchip-drm.yaml

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
---
Changes since v1:
- fixed worng sign-off
- fixed the path of the $id property to be the path of the yaml file

 .../display/rockchip/rockchip-drm.txt         | 19 ----------
 .../display/rockchip/rockchip-drm.yaml        | 38 +++++++++++++++++++
 2 files changed, 38 insertions(+), 19 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/display/rockchip/rockchip-drm.txt
 create mode 100644 Documentation/devicetree/bindings/display/rockchip/rockchip-drm.yaml

diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip-drm.txt b/Documentation/devicetree/bindings/display/rockchip/rockchip-drm.txt
deleted file mode 100644
index 5707af89319d..000000000000
--- a/Documentation/devicetree/bindings/display/rockchip/rockchip-drm.txt
+++ /dev/null
@@ -1,19 +0,0 @@
-Rockchip DRM master device
-================================
-
-The Rockchip DRM master device is a virtual device needed to list all
-vop devices or other display interface nodes that comprise the
-graphics subsystem.
-
-Required properties:
-- compatible: Should be "rockchip,display-subsystem"
-- ports: Should contain a list of phandles pointing to display interface port
-  of vop devices. vop definitions as defined in
-  Documentation/devicetree/bindings/display/rockchip/rockchip-vop.txt
-
-example:
-
-display-subsystem {
-	compatible = "rockchip,display-subsystem";
-	ports = <&vopl_out>, <&vopb_out>;
-};
diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip-drm.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip-drm.yaml
new file mode 100644
index 000000000000..538898ada9d1
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip-drm.yaml
@@ -0,0 +1,38 @@
+# SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/rockchip/rockchip-drm.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip DRM master device
+
+maintainers:
+  - Sandy Huang <hjc@rock-chips.com
+  - Heiko Stuebner <heiko@sntech.de>
+
+description: |
+  The Rockchip DRM master device is a virtual device needed to list all
+  vop devices or other display interface nodes that comprise the
+  graphics subsystem.
+
+properties:
+  compatible:
+    const: rockchip,display-subsystem
+
+  ports:
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    description: |
+      Should contain a list of phandles pointing to display interface port
+      of vop devices. vop definitions as defined in
+      Documentation/devicetree/bindings/display/rockchip/rockchip-vop.txt
+
+required:
+  - compatible
+  - ports
+
+examples:
+  - |
+    display-subsystem {
+        compatible = "rockchip,display-subsystem";
+        ports = <&vopl_out>, <&vopb_out>;
+    };
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

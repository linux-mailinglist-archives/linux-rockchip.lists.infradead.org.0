Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB886199ADC
	for <lists+linux-rockchip@lfdr.de>; Tue, 31 Mar 2020 18:05:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Z0ZLs17CrxJemQkdE15IYGwGfR+qXNvrvFu8zCqd5So=; b=V9z
	FzY3rRtRaszwZGc3RwTS+ofb+oZ7VYVkeBU60NilaJke+B9L3BGwl7E42ZIxVaSO65HP6Ll2STK+Z
	ZwULBkchu/D3RllA356U/6VSL3/b2IYx6Rkeyqr511tQQSNTTQKP7yZcm5gO/A6YQ5YdKFfVCm/76
	19Z98wnc9jHETA5/FPyE1pEejrD2F1U8DIRX7/POrlmWtgpu9Nw4EJjc2T+a5OxoIcULBRPMZ/7uz
	YpFOj9cMbus6XwWNalEGLG6YByrjnidjq5S5EJ4FWgqe8IdpEmOKWr8FDv2MI4vMQIjPSOpLLaPck
	jynCbqzeYEmoZXYnc/OmwImdJTAr6uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJJOB-00086o-8C; Tue, 31 Mar 2020 16:05:19 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJJNp-0005YG-Ef; Tue, 31 Mar 2020 16:04:59 +0000
Received: by mail-wm1-x343.google.com with SMTP id r16so3109608wmg.5;
 Tue, 31 Mar 2020 09:04:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=4VKI9AuPhMvUgqTj7z2yAveanc53o7XusIgD/wUX0qM=;
 b=q0agAYmm/VmDdDcewOukFSDP029eE+dPAyRe1UJebG980+mCCXFDfpDZYsJGXffTI9
 by1tNoD5G+i/Ffh4pvhmWX3TLLoAMEzIL0+NsQ/Q3ngv8BdhSX5kl5sX/ldWDTuEITlf
 4CfG/ggwB2NZs56lKww74VrGuLbMtYMZR5wmzOaipMmiozrTIBjFgLAaueoy7F4JYT9l
 pR+UOHuggwL6Zq3a6PHNYd6Ty+JXTKndlizKODM4acD6ZV1+Agcxn1jadBN0WycrsLqH
 NtNIirApMeePMh0wQNM4RLnxVBzfURMBSPQ25wes250TigM7rSn830EOpLFZKsTr+BHQ
 gDWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=4VKI9AuPhMvUgqTj7z2yAveanc53o7XusIgD/wUX0qM=;
 b=PdcD8SpWLjdbc3pC7VbTCf5lT2VfBFrPXylQKy+zjFSmYkJwZTpFbeQ5hE1/fmOoqF
 4DmlUHQ2vJm4Eqtk7C8uB6pXMkyvCHnNjomseJ+yIbsjMFQQy6skzL8ZSYOcdx4I47fj
 T5TIj5MpJ0V2r6u8AzHpq3xMbJ4rIiPnBPz6TGvKk82s5+LIDWxD+4hnOtiVBsXKkhrO
 uSsNWzN+9whYp1S1MmtagvOuDhCwPKgSJXVz8IMo36M4XBBPoKssCTXlRW08a+RdBIMo
 bqkBOIpksRpLVeW79az7Zg/MN73p+4zGeVNYuehavYAnlako+rNhzITATP0Q2lrhsTKo
 /34g==
X-Gm-Message-State: ANhLgQ0XpWyNQyzyOD0LDwWPuCXUNHSuj/L+ZDDpug2AxUDCAdTjUGcC
 YQf1hNh22J2VlVP7SGsX85o=
X-Google-Smtp-Source: ADFU+vuRA91pE+w4+dgBDghI6jnabCDYF3dXfWt06pUcEiVsl2Z3RjgW5I01mlHajMa+eP/KDc8jMw==
X-Received: by 2002:a1c:4987:: with SMTP id w129mr4406106wma.168.1585670696219; 
 Tue, 31 Mar 2020 09:04:56 -0700 (PDT)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id p17sm1651433wmb.30.2020.03.31.09.04.54
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 31 Mar 2020 09:04:55 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH v1] dt-bindings: display: convert rockchip rk3066 hdmi
 bindings to yaml
Date: Tue, 31 Mar 2020 18:04:48 +0200
Message-Id: <20200331160448.15331-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_090457_490261_F0194FD0 
X-CRM114-Status: GOOD (  16.12  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, airlied@linux.ie, hjc@rock-chips.com,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org, daniel@ffwll.ch,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Current dts files with 'hdmi' nodes for rk3066 are manually verified.
In order to automate this process rockchip,rk3066-hdmi.txt
has to be converted to yaml.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 .../display/rockchip/rockchip,rk3066-hdmi.txt      |  72 -----------
 .../display/rockchip/rockchip,rk3066-hdmi.yaml     | 141 +++++++++++++++++++++
 2 files changed, 141 insertions(+), 72 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/display/rockchip/rockchip,rk3066-hdmi.txt
 create mode 100644 Documentation/devicetree/bindings/display/rockchip/rockchip,rk3066-hdmi.yaml

diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3066-hdmi.txt b/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3066-hdmi.txt
deleted file mode 100644
index d1ad31bca..000000000
--- a/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3066-hdmi.txt
+++ /dev/null
@@ -1,72 +0,0 @@
-Rockchip specific extensions for rk3066 HDMI
-============================================
-
-Required properties:
-- compatible:
-	"rockchip,rk3066-hdmi";
-- reg:
-	Physical base address and length of the controller's registers.
-- clocks, clock-names:
-	Phandle to HDMI controller clock, name should be "hclk".
-- interrupts:
-	HDMI interrupt number.
-- power-domains:
-	Phandle to the RK3066_PD_VIO power domain.
-- rockchip,grf:
-	This soc uses GRF regs to switch the HDMI TX input between vop0 and vop1.
-- ports:
-	Contains one port node with two endpoints, numbered 0 and 1,
-	connected respectively to vop0 and vop1.
-	Contains one port node with one endpoint
-	connected to a hdmi-connector node.
-- pinctrl-0, pinctrl-name:
-	Switch the iomux for the HPD/I2C pins to HDMI function.
-
-Example:
-	hdmi: hdmi@10116000 {
-		compatible = "rockchip,rk3066-hdmi";
-		reg = <0x10116000 0x2000>;
-		interrupts = <GIC_SPI 64 IRQ_TYPE_LEVEL_HIGH>;
-		clocks = <&cru HCLK_HDMI>;
-		clock-names = "hclk";
-		power-domains = <&power RK3066_PD_VIO>;
-		rockchip,grf = <&grf>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&hdmii2c_xfer>, <&hdmi_hpd>;
-
-		ports {
-			#address-cells = <1>;
-			#size-cells = <0>;
-			hdmi_in: port@0 {
-				reg = <0>;
-				#address-cells = <1>;
-				#size-cells = <0>;
-				hdmi_in_vop0: endpoint@0 {
-					reg = <0>;
-					remote-endpoint = <&vop0_out_hdmi>;
-				};
-				hdmi_in_vop1: endpoint@1 {
-					reg = <1>;
-					remote-endpoint = <&vop1_out_hdmi>;
-				};
-			};
-			hdmi_out: port@1 {
-				reg = <1>;
-				hdmi_out_con: endpoint {
-					remote-endpoint = <&hdmi_con_in>;
-				};
-			};
-		};
-	};
-
-&pinctrl {
-		hdmi {
-			hdmi_hpd: hdmi-hpd {
-				rockchip,pins = <0 RK_PA0 1 &pcfg_pull_default>;
-			};
-			hdmii2c_xfer: hdmii2c-xfer {
-				rockchip,pins = <0 RK_PA1 1 &pcfg_pull_none>,
-						<0 RK_PA2 1 &pcfg_pull_none>;
-			};
-		};
-};
diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3066-hdmi.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3066-hdmi.yaml
new file mode 100644
index 000000000..8f4acf707
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3066-hdmi.yaml
@@ -0,0 +1,141 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/rockchip/rockchip,rk3066-hdmi.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip rk3066 HDMI controller
+
+maintainers:
+  - Sandy Huang <hjc@rock-chips.com>
+  - Heiko Stuebner <heiko@sntech.de>
+
+properties:
+  compatible:
+    const: rockchip,rk3066-hdmi
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  clock-names:
+    const: hclk
+
+  pinctrl-0:
+    maxItems: 2
+
+  pinctrl-names:
+    const: default
+    description:
+      Switch the iomux for the HPD/I2C pins to HDMI function.
+
+  power-domains:
+    maxItems: 1
+
+  rockchip,grf:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      This soc uses GRF regs to switch the HDMI TX input between vop0 and vop1.
+
+  ports:
+    type: object
+
+    properties:
+      "#address-cells":
+        const: 1
+
+      "#size-cells":
+        const: 0
+
+      port@0:
+        type: object
+        description:
+          Port node with two endpoints, numbered 0 and 1,
+          connected respectively to vop0 and vop1.
+
+      port@1:
+        type: object
+        description:
+          Port node with one endpoint connected to a hdmi-connector node.
+
+    required:
+      - "#address-cells"
+      - "#size-cells"
+      - port@0
+      - port@1
+
+    additionalProperties: false
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+  - pinctrl-0
+  - pinctrl-names
+  - power-domains
+  - rockchip,grf
+  - ports
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/rk3066a-cru.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/pinctrl/rockchip.h>
+    #include <dt-bindings/power/rk3066-power.h>
+    hdmi: hdmi@10116000 {
+      compatible = "rockchip,rk3066-hdmi";
+      reg = <0x10116000 0x2000>;
+      interrupts = <GIC_SPI 64 IRQ_TYPE_LEVEL_HIGH>;
+      clocks = <&cru HCLK_HDMI>;
+      clock-names = "hclk";
+      pinctrl-0 = <&hdmii2c_xfer>, <&hdmi_hpd>;
+      pinctrl-names = "default";
+      power-domains = <&power RK3066_PD_VIO>;
+      rockchip,grf = <&grf>;
+
+      ports {
+        #address-cells = <1>;
+        #size-cells = <0>;
+        hdmi_in: port@0 {
+          reg = <0>;
+          #address-cells = <1>;
+          #size-cells = <0>;
+          hdmi_in_vop0: endpoint@0 {
+            reg = <0>;
+            remote-endpoint = <&vop0_out_hdmi>;
+          };
+          hdmi_in_vop1: endpoint@1 {
+            reg = <1>;
+            remote-endpoint = <&vop1_out_hdmi>;
+          };
+        };
+        hdmi_out: port@1 {
+          reg = <1>;
+          hdmi_out_con: endpoint {
+            remote-endpoint = <&hdmi_con_in>;
+          };
+        };
+      };
+    };
+
+    pinctrl {
+      hdmi {
+        hdmi_hpd: hdmi-hpd {
+          rockchip,pins = <0 RK_PA0 1 &pcfg_pull_default>;
+        };
+        hdmii2c_xfer: hdmii2c-xfer {
+          rockchip,pins = <0 RK_PA1 1 &pcfg_pull_none>,
+                          <0 RK_PA2 1 &pcfg_pull_none>;
+        };
+      };
+    };
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

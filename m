Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F13A1E7856
	for <lists+linux-rockchip@lfdr.de>; Mon, 28 Oct 2019 19:23:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kq+bj3fpXdHrptmCFNrpIliNVL7QCU22nj8q6xAWXas=; b=XmY0mlnBJf0XWi
	jOZVv0iOyKq9vRu0v1bh4ztI0Zhmjk8GZPr//FslewFbICtteNbOekmqhFPasXnz2khnKHj1XspZA
	TvLn6mnpRvGlnXdPwHBKdg+erEG1t2qogfCRcLMWzl2hv2FayQw0HIMcRwmlgLHR/iukAcVog7veh
	ymuoInfOa6gmvqQb8QH5njTtbkbG0X6spyBuCNR66hoZQw+Kc9aYws83+0SS2wg8fRXqlpww6zGMx
	4zIvV6360eFJTr5qLRZjNEfFLTLA4mCcs7rqi4Uzl7Z1PMQ58UG33GUmcCtK0wzxBCKPlOyO4GKOB
	P0Kvn3Er0Bgyugt3NdNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP9fr-0001VI-5F; Mon, 28 Oct 2019 18:23:27 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP9fk-0001RX-Of
 for linux-rockchip@lists.infradead.org; Mon, 28 Oct 2019 18:23:22 +0000
Received: by mail-qt1-x844.google.com with SMTP id o49so15970638qta.7
 for <linux-rockchip@lists.infradead.org>; Mon, 28 Oct 2019 11:23:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=24mchh3lk2qW4NownaHeZFsWT5IBOkTUykvw4ymw35E=;
 b=REvl8X8Nwq+6+wn8Rc7S8oTuZa6YgHrp3U7vC6lGgb1xoDIbgzdkrqxXj/9rcykU/H
 e8MgaBCXqtzpobPHc9dSl8m76dX3DB/F5sjjpitarKbN5YLjNdHFSsencGGn8bS4zPlT
 F2BJI/a0AxAFsDtR1TViW6lRP3inIuWQ+LbXhqwjF5LPXwPJdbY1dHKnoxVrRfkM/sFH
 HpVluubNG1cdkRco7RTnXuwpOd7+poz4ZGdB4709UHFf3EMyoBDDSLHselWR0R3O1yn4
 CgKy6OvIBuUjAlk+H7SHAyAmSyG8CkCGWOxh59Wh0PlXufeqMGQNgsAtTKIQCzAn5g9g
 l4Xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=24mchh3lk2qW4NownaHeZFsWT5IBOkTUykvw4ymw35E=;
 b=BKjTDa/atz4kX8ithctF/8ud7x0qUvG7coH9AqtwZoYUV3i54bJtDQfutZ17NcizYR
 j8c0StpW8POOtMLxxeO/v19VzLpQB8LXo5NncPg3mDRA4RJ8yqiq2kGoEpO9Uk1P7q4f
 C3yxaW9RRSp6fVhNveWHtadfnHRjfPHA0TrNwroa3f+7GqY4rovIHwKZuJF3nxZApHjH
 WYv+TWqH2IO+yuHVXqRQfG06TLzt/GIFKvAcZtzV2CM/QgFMyjTNtTyzUjVhMiNjJNWV
 /SJarKB1+WTIMDuIwTkMUELFQSFSRgZZH0/EPdXKZ/ndtPuWSlioRfzJzrsNsG7tVgvS
 JDew==
X-Gm-Message-State: APjAAAWGfzApFBXTzgtKluPkpe9o7QhcYkjiHEN1hXqdRhN2C8tStXws
 4VC4wHdhyztMvNNXQd7GSis=
X-Google-Smtp-Source: APXvYqxRaNykqiT+tC9OtDvY3KS8A3kiicGKa/kk0vtTpc5kk13xhwf/oWc5bQhooKC9Z0ZT9pJ0gQ==
X-Received: by 2002:a0c:b38e:: with SMTP id t14mr8571002qve.125.1572286999718; 
 Mon, 28 Oct 2019 11:23:19 -0700 (PDT)
Received: from firefly.sparksnet ([2601:153:900:a52:6f12:874c:d2b2:a9d0])
 by smtp.gmail.com with ESMTPSA id x9sm5808631qkl.75.2019.10.28.11.23.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Oct 2019 11:23:18 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: heiko@sntech.de
Subject: [PATCH 3/5] Documentation: bindings: add dt documentation for
 rockchip usb3 phy
Date: Mon, 28 Oct 2019 18:22:52 +0000
Message-Id: <20191028182254.30739-4-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191028182254.30739-1-pgwipeout@gmail.com>
References: <20191028182254.30739-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_112320_870410_BB408323 
X-CRM114-Status: GOOD (  15.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pgwipeout[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: katsuhiro@katsuster.net, linux-rockchip@lists.infradead.org,
 linux-usb@vger.kernel.org, robin.murphy@arm.com,
 Peter Geis <pgwipeout@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Add devicetree bindings for inno-usb3-phy.

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
---
 .../bindings/phy/phy-rockchip-inno-usb3.yaml  | 157 ++++++++++++++++++
 .../devicetree/bindings/soc/rockchip/grf.txt  |   2 +
 .../devicetree/bindings/usb/rockchip,dwc3.txt |   9 +-
 3 files changed, 165 insertions(+), 3 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb3.yaml

diff --git a/Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb3.yaml b/Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb3.yaml
new file mode 100644
index 000000000000..f4f28625173a
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb3.yaml
@@ -0,0 +1,157 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/phy/phy-rockchip-inno-usb3.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: ROCKCHIP USB 3.0 PHY WITH INNO IP BLOCK
+
+maintainers:
+
+properties:
+  compatible:
+    enum:
+      - rockchip,rk3328-u3phy
+
+  reg:
+    - description: the base address of the USB 3.0 PHY
+
+  interrupts:
+    maxItems: 1
+
+  interrupt-names:
+    items:
+      - const: linestate
+        description: host/otg linestate interrupt
+
+  clocks:
+    maxItems: 2
+
+  clock-names:
+    items:
+      - const: u3phy-otg
+        description: USB 3.0 PHY UTMI
+      - const: u3phy-pipe
+        description: USB 3.0 PHY Pipe
+
+  resets:
+    maxItems: 6
+
+  reset-names:
+    items:
+      - const: u3phy-u2-por
+      description: USB 2.0 logic of USB 3.0 PHY
+      - const: u3phy-u3-por
+      description: USB 3.0 logic of USB 3.0 PHY
+      - const: u3phy-pipe-mac
+      description: USB 3.0 PHY pipe MAC
+      - const: u3phy-utmi-mac
+      description: USB 3.0 PHY utmi MAC
+      - const: u3phy-utmi-apb
+      description: USB 3.0 PHY utmi apb
+      - const: u3phy-pipe-apb
+      description: USB 3.0 PHY pipe apb
+
+  "#phy-cells":
+    const: 1
+
+  rockchip,u3phygrf:
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    type: array
+    - description: phandle to the syscon managing the
+                   "USB 3.0 PHY general register files".
+
+  vbus-drv-gpios:
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    type: array
+    - description: phandle for gpio vbus supply
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - interrupt-names
+  - clocks
+  - clock-names
+  - resets
+  - reset-names
+  - "#phy-cells"
+  - rockchip,u3phygrf
+
+patternProperties:
+  "^u3phy_utmi@[0-9a-f]+$":
+    type: object
+
+    properties:
+      - description: USB 2.0 utmi phy.
+
+      rockchip,odt-val-tuning:
+        type: boolean
+        - description: specify 45ohm ODT tuning value.
+
+      "phy-cells":
+        const: 0
+
+    required:
+      - reg
+      - "#phy-cells"
+
+patternProperties:
+  "^u3phy_pipe@[0-9a-f]+$":
+    type: object
+
+    properties:
+      - description: USB 3.0 pipe phy.
+
+      rockchip,refclk-25m-quirk :
+
+        - description: phy reference clock changed to 25m quirk.
+
+      "phy-cells":
+        const: 0
+
+    required:
+      - reg
+      - "#phy-cells"
+
+examples:
+
+usb3phy_grf: syscon@ff460000 {
+	compatible = "rockchip,usb3phy-grf", "syscon";
+	reg = <0x0 0xff460000 0x0 0x1000>;
+};
+
+...
+
+u3phy: usb3-phy@ff470000 {
+	compatible = "rockchip,rk3328-u3phy";
+	reg = <0x0 0xff470000 0x0 0x0>;
+	rockchip,u3phygrf = <&usb3phy_grf>;
+	interrupts = <GIC_SPI 77 IRQ_TYPE_LEVEL_HIGH>;
+	interrupt-names = "linestate";
+	clocks = <&cru PCLK_USB3PHY_OTG>, <&cru PCLK_USB3PHY_PIPE>;
+	clock-names = "u3phy-otg", "u3phy-pipe";
+	resets = <&cru SRST_USB3PHY_U2>,
+		 <&cru SRST_USB3PHY_U3>,
+		 <&cru SRST_USB3PHY_PIPE>,
+		 <&cru SRST_USB3OTG_UTMI>,
+		 <&cru SRST_USB3PHY_OTG_P>,
+		 <&cru SRST_USB3PHY_PIPE_P>;
+	reset-names = "u3phy-u2-por", "u3phy-u3-por",
+		      "u3phy-pipe-mac", "u3phy-utmi-mac",
+		      "u3phy-utmi-apb", "u3phy-pipe-apb";
+	vbus-drv-gpios = <&gpio0 0 GPIO_ACTIVE_HIGH>;
+	#address-cells = <2>;
+	#size-cells = <2>;
+	ranges;
+
+	u3phy_utmi: utmi@ff470000 {
+		reg = <0x0 0xff470000 0x0 0x8000>;
+		#phy-cells = <0>;
+	};
+
+	u3phy_pipe: pipe@ff478000 {
+		reg = <0x0 0xff478000 0x0 0x8000>;
+		#phy-cells = <0>;
+	};
+};
diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.txt b/Documentation/devicetree/bindings/soc/rockchip/grf.txt
index ada5435ce2c3..5f2f19344cc7 100644
--- a/Documentation/devicetree/bindings/soc/rockchip/grf.txt
+++ b/Documentation/devicetree/bindings/soc/rockchip/grf.txt
@@ -34,6 +34,8 @@ Required Properties:
    - "rockchip,rk3328-usb2phy-grf", "syscon": for rk3328
 - compatible: USBGRF should be one of the following:
    - "rockchip,rv1108-usbgrf", "syscon": for rv1108
+- compatible: USB3PHYGRF should be one of the following:
+   - "rockchip,u3phy-grf", "syscon"
 - reg: physical base address of the controller and length of memory mapped
   region.
 
diff --git a/Documentation/devicetree/bindings/usb/rockchip,dwc3.txt b/Documentation/devicetree/bindings/usb/rockchip,dwc3.txt
index c8c4b00ecb94..7ac8b748bac8 100644
--- a/Documentation/devicetree/bindings/usb/rockchip,dwc3.txt
+++ b/Documentation/devicetree/bindings/usb/rockchip,dwc3.txt
@@ -1,7 +1,9 @@
 Rockchip SuperSpeed DWC3 USB SoC controller
 
 Required properties:
-- compatible:	should contain "rockchip,rk3399-dwc3" for rk3399 SoC
+- compatible:	should be one of the listed compatibles:
+  - "rockchip,rk3328-dwc3" , "rockchip,rk3399-dwc3"	for rk3328 SoC
+  - "rockchip,rk3399-dwc3" 				for rk3399 SoC
 - clocks:	A list of phandle + clock-specifier pairs for the
 		clocks listed in clock-names
 - clock-names:	Should contain the following:
@@ -16,8 +18,9 @@ A child node must exist to represent the core DWC3 IP block. The name of
 the node is not important. The content of the node is defined in dwc3.txt.
 
 Phy documentation is provided in the following places:
-Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.txt - USB2.0 PHY
-Documentation/devicetree/bindings/phy/phy-rockchip-typec.txt     - Type-C PHY
+Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.txt  - USB2.0 PHY
+Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb3.yaml - USB3.0 PHY
+Documentation/devicetree/bindings/phy/phy-rockchip-typec.txt      - Type-C PHY
 
 Example device nodes:
 
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFCE01038F5
	for <lists+linux-rockchip@lfdr.de>; Wed, 20 Nov 2019 12:42:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8uK3hJiugxlJg+m+H+vbqqoDVL7AWYiE02yaYUKb6bY=; b=pwr9+0r+5FD1ZY
	mILu4NyvXhcjDNQPYGg4dv2iiaO6RnnFlk1kOGWqcnxI7+gjc/d+uA5nXxvvJZa9Eoyu5SN35FwxD
	qonTnvZMfOCxywsBpnRAaoaSd7xK4ab4W292XHC64Ydk3BORcFyU5iMafg03B6ZNygGF36hTHNces
	YWuv6bFBO3Z1udQpsy19kClF5avEsKeSANSGJjKAafXPgSQBUpVtPBJ75jQA3apPimyXQDLWf//vx
	ElTlYmt5UluuhbSUXiJFbxKeEiNElXPv283SLoPcw1AyYnyq5w8n1RM4w5oaiFDiLR58EVGrAtNgE
	LliyNi1P9D3HIekejbCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXONM-00040I-92; Wed, 20 Nov 2019 11:42:24 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXOMF-0002zY-Aq
 for linux-rockchip@lists.infradead.org; Wed, 20 Nov 2019 11:41:18 +0000
Received: by mail-pj1-x1042.google.com with SMTP id f7so4001080pjw.5
 for <linux-rockchip@lists.infradead.org>; Wed, 20 Nov 2019 03:41:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=LVPX3M80KZd4Q7MyVkxEYzA1D5QxK+GgoYXRS5JRiWY=;
 b=ZqDzjSyu/fJt3pgq1ysJiWYhXrLyTzhXDBrZ5o4XvAGgFy+WV2rmWSXsYxD8QUEJ4V
 bMdu4rEg/t/AiDp//7xaPwe5NjRNz14aO2qUAQtJIB3nUvAZ4iqXm40CwYWN37Gde2+b
 OrcCSVDSB5DHAKYBmCSe89OkQu0/k0kqQoSbM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=LVPX3M80KZd4Q7MyVkxEYzA1D5QxK+GgoYXRS5JRiWY=;
 b=QAsCG7+x0vWpwch2O5yQmpG+rlIipivKLUlq8fMtTgF42ZKwJAJ4O+eezaz/aW2Hl+
 j1Ohi1hfS2fiBz7OtY62msuXptY/+DtykyMpzmxonvFV50o4i9VvPmkosr1OiPCl2Dkb
 HGxvI6nujxJHEQ7FeQdGq1dgFgys6RXxvhgLoWKvmR30ChJZmx64fIMNVoRB6GCID2/W
 UPNu7qJucyj6i0i1k3PVCBgC3JbcFiiTr9R7By6JxbfPCclkVIougAK0oj9eDRZYyaC7
 agC1zFv7Pz6S+L7ccr8tdW7LOqCMfoQAlQLa3wq/gAO9P+NRPArEjNGsh4Egok7Op/8r
 TwMw==
X-Gm-Message-State: APjAAAVK11+Ex/CVMusDkoCr+HI6teKbmRqWSaKh3ce2FfehFQDFwlGI
 7uyU5+uGeFUw0UAANToPUvARhg==
X-Google-Smtp-Source: APXvYqwqL32dNuB7yaQ+9XBJponJe+hREoVt+opsUP7F+TjCrG3qhm4CRk19jTvicZ+iQ7HWGEShhA==
X-Received: by 2002:a17:902:d901:: with SMTP id
 c1mr2461318plz.93.1574250073423; 
 Wed, 20 Nov 2019 03:41:13 -0800 (PST)
Received: from localhost.localdomain ([115.97.180.31])
 by smtp.gmail.com with ESMTPSA id h185sm13492850pgc.87.2019.11.20.03.41.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 Nov 2019 03:41:12 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH 4/5] ARM: dts: rockchip: Add Radxa Carrier board
Date: Wed, 20 Nov 2019 17:09:22 +0530
Message-Id: <20191120113923.11685-5-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191120113923.11685-1-jagan@amarulasolutions.com>
References: <20191120113923.11685-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_034115_632826_7C9268B3 
X-CRM114-Status: GOOD (  13.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Tom Cubie <tom@radxa.com>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Akash Gajjar <akash@openedev.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-amarula@amarulasolutions.com, linux-arm-kernel@lists.infradead.org,
 Jagan Teki <jagan@amarulasolutions.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Carrier board often referred as baseboard. For making
complete SBC, the associated SOM will mount on top of
this carrier board.

Radxa has a carrier board which supports on board
peripherals, ports like USB-2.0, USB-3.0, HDMI, MIPI DSI/CSI,
eDP, Ethernet, PCIe, USB-C, 40-Pin GPIO header and etc.

Currently this carrier board can be used together with
VMARC RK3399Por SOM for making Rock PI N10 SBC.

So add this carrier board dtsi as a separate file in
ARM directory, so-that the same can reuse it in both
arm32 and arm64 variants of Rockchip SOMs.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 .../boot/dts/rockchip-radxa-carrierboard.dtsi | 81 +++++++++++++++++++
 1 file changed, 81 insertions(+)
 create mode 100644 arch/arm/boot/dts/rockchip-radxa-carrierboard.dtsi

diff --git a/arch/arm/boot/dts/rockchip-radxa-carrierboard.dtsi b/arch/arm/boot/dts/rockchip-radxa-carrierboard.dtsi
new file mode 100644
index 000000000000..df3712aedf8a
--- /dev/null
+++ b/arch/arm/boot/dts/rockchip-radxa-carrierboard.dtsi
@@ -0,0 +1,81 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2019 Fuzhou Rockchip Electronics Co., Ltd
+ * Copyright (c) 2019 Radxa Limited
+ * Copyright (c) 2019 Amarula Solutions(India)
+ */
+
+#include <dt-bindings/pwm/pwm.h>
+
+/ {
+	chosen {
+		stdout-path = "serial2:1500000n8";
+	};
+};
+
+&gmac {
+	status = "okay";
+};
+
+&i2c1 {
+	status = "okay";
+	i2c-scl-rising-time-ns = <140>;
+	i2c-scl-falling-time-ns = <30>;
+};
+
+&i2c2 {
+	status = "okay";
+	clock-frequency = <400000>;
+
+	hym8563: hym8563@51 {
+		compatible = "haoyu,hym8563";
+		reg = <0x51>;
+		#clock-cells = <0>;
+		clock-frequency = <32768>;
+		clock-output-names = "hym8563";
+		pinctrl-names = "default";
+		pinctrl-0 = <&hym8563_int>;
+		interrupt-parent = <&gpio4>;
+		interrupts = <30 IRQ_TYPE_LEVEL_LOW>;
+	};
+};
+
+&pwm0 {
+	status = "okay";
+};
+
+&pwm2 {
+	status = "okay";
+};
+
+&sdmmc {
+	bus-width = <4>;
+	cap-mmc-highspeed;
+	cap-sd-highspeed;
+	cd-gpios = <&gpio0 RK_PA7 GPIO_ACTIVE_LOW>;
+	disable-wp;
+	vqmmc-supply = <&vccio_sd>;
+	max-frequency = <150000000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&sdmmc_clk &sdmmc_cmd &sdmmc_cd &sdmmc_bus4>;
+	status = "okay";
+};
+
+&uart0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart0_xfer &uart0_cts>;
+	status = "okay";
+};
+
+&uart2 {
+	status = "okay";
+};
+
+&pinctrl {
+	hym8563 {
+		hym8563_int: hym8563-int {
+			rockchip,pins =
+				<4 RK_PD6 0 &pcfg_pull_up>;
+		};
+	};
+};
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

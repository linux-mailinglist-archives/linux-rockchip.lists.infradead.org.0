Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BEAE4121217
	for <lists+linux-rockchip@lfdr.de>; Mon, 16 Dec 2019 18:48:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I0SkkQY7FlFBRyakY+R0NL/+iLdCpSCGdtstb83t5dw=; b=LY5hQBiV0LGx+R
	lIFyJQ8oVL/69RMIt16e7bSGUnK3JfRnkWxYVEzFqwWtjhUGGk7x8try29EHMGnOrpr244h0zwXch
	0J+gnuwkW1XqG06d2pS6ibOVbnOGIxxdvh+Ve9t4UlmnqaVGqpbGS8uT8DLBEbHSNPB2J3Tp7uMlW
	3oMpJzmzxmwVfqn6K/Awpu9uLJvbVJ/pzAlTtVuUKgpb89eVE0k6YhdGVQNggpbw1bSMj6SWxTL6h
	mnbBdBrFGhejpRpCWfFV557ff6VqysXC2BV950EmFCa9/+9TSYgAhyWXsjq2N5uItmw5mdJiUlR4X
	Eg4SpiCRwH/YXQPT7vJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iguUF-0004l7-LG; Mon, 16 Dec 2019 17:48:51 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iguTM-0003tb-5u
 for linux-rockchip@lists.infradead.org; Mon, 16 Dec 2019 17:47:57 +0000
Received: by mail-pj1-x1042.google.com with SMTP id ep17so3295438pjb.4
 for <linux-rockchip@lists.infradead.org>; Mon, 16 Dec 2019 09:47:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=GsBjNENOsoqT3Ti/q8MjgvfcH88K3hdnCqSY0W84Ii0=;
 b=CZpv7hKhKwM6hd/Scc3APxW6cyON8Wk+eVweQIo7BJwpJlLycjtUkhILWu3EvtocUQ
 1IVcQWu10k6j4vi718yHWUX8oDiS9CclHeARkvFOhA+uOdCPRcA6segAXc52LbA3c7CT
 FVJ8JG6bEMGcFSouHAQ+okgrtBSpbSXD8wk00=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=GsBjNENOsoqT3Ti/q8MjgvfcH88K3hdnCqSY0W84Ii0=;
 b=Q7oekDNBGdEAmAhoThCZSx2irsPJGcUOS4iGTJkXwc6KJQU9Td5/ReuE1sGT9PKwYs
 fMDvSlilBWtOf3OlMapSlp44Mf9qBQBK8mz/wNm1kYcyzsFt9yTlYJXNXxHyquCnswA3
 z2C2hI0GLl4mwDjtSa5JkEXGHH5sl5FYwDM0HxJRE079taM141DMtzWeNpzARhcuePms
 204rLl4OdxFErHHqvu6wFu+jTBbG8kkelWZiXv/S2S3H7MY+tHtV/vXs6sA5Xo9H1iIa
 B1K2AExFZ69+D8RqVu7FNevlotT2XR3E2jQI77ZgHvPouopGNwgn/79AMc4uxR50kYap
 xdOA==
X-Gm-Message-State: APjAAAW7BhFqVvEtjAKaH3G4uG4zrI8aP7VZs6oQMC7tmEeJ1ArXDdei
 og1tJz/tNidHVxg7LjzhH+WGRA==
X-Google-Smtp-Source: APXvYqz+iv3tXMOmQkCoKsp3M01KIIk9WwfIebXGJsP426lmosp/FQUhk+gZEDSH93HQ5lak6qtuYQ==
X-Received: by 2002:a17:902:b78b:: with SMTP id
 e11mr17804193pls.129.1576518475223; 
 Mon, 16 Dec 2019 09:47:55 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c809:c7d5:6d28:a89:f9e1:1506])
 by smtp.gmail.com with ESMTPSA id
 a6sm22342924pgg.25.2019.12.16.09.47.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Dec 2019 09:47:54 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v3 3/4] ARM: dts: rockchip: Add Radxa Dalang Carrier board
Date: Mon, 16 Dec 2019 23:17:10 +0530
Message-Id: <20191216174711.17856-4-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191216174711.17856-1-jagan@amarulasolutions.com>
References: <20191216174711.17856-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_094756_246309_063DB9F8 
X-CRM114-Status: GOOD (  13.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
complete SBC or any other industrial boards, these
carrier boards will used with associated SOMs.

Radxa has Dalang carrier board which supports on board
peripherals, ports like USB-2.0, USB-3.0, HDMI, MIPI DSI/CSI,
eDP, Ethernet, WiFi, PCIe, USB-C, 40-Pin GPIO header and etc.

Right now Dalang carrier board is using with two variants
SBC, like
Rock Pi N10 => VMARC RK3399Por SOM + Dalang carrier board
Rock Pi N8  => VMARC RK3288 SOM + Dalang carrier board(+codec)

So add this carrier board dtsi as a separate file in
ARM directory, so-that the same can reuse it in both
rk3288, rk3399pro variants of Rockchip SOMs.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v3:
- none

 .../dts/rockchip-radxa-dalang-carrier.dtsi    | 81 +++++++++++++++++++
 1 file changed, 81 insertions(+)
 create mode 100644 arch/arm/boot/dts/rockchip-radxa-dalang-carrier.dtsi

diff --git a/arch/arm/boot/dts/rockchip-radxa-dalang-carrier.dtsi b/arch/arm/boot/dts/rockchip-radxa-dalang-carrier.dtsi
new file mode 100644
index 000000000000..df3712aedf8a
--- /dev/null
+++ b/arch/arm/boot/dts/rockchip-radxa-dalang-carrier.dtsi
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

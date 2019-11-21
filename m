Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E9B2105433
	for <lists+linux-rockchip@lfdr.de>; Thu, 21 Nov 2019 15:16:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DCYnBgyjfpqdx+h4DxiBkjh1RuVKQy2D0wWpXWEFrBw=; b=j6k+PntFKYk+TV
	EL7Wjtkdp1UKnPNIQpiY+vwK49otq30Arf+HfQDLJLwEPAklBTQfsNX1RjEbMVXTFaiErHdd3VvQv
	mDmlMfJJ7ruviPx2fS8B4QVODUjLvFkAiAKv1GqtmKurtgvQ7jmO6dv0BsGQX0yXXd0+DntUzoHBM
	lnYrXwT26dlsYf1eJGdor5R1c1Dcf53/vrW3t/KrFz76B+1tKWHkY4+s5tDhRhi9Y/fyBXeiUlaZw
	K6Fmpo41ib4mnXuwJ3TVL0IW8mFd+abuhM0n4y19beV20jH+9QemRs+5Dt3dIBHuhMcu8lxGOjPc9
	57kIs1+twl0+REt0RTpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXnGK-0003HK-Mn; Thu, 21 Nov 2019 14:16:48 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXnEw-0001vM-HG
 for linux-rockchip@lists.infradead.org; Thu, 21 Nov 2019 14:15:30 +0000
Received: by mail-pl1-x641.google.com with SMTP id j12so1619923plt.9
 for <linux-rockchip@lists.infradead.org>; Thu, 21 Nov 2019 06:15:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=28NKNs8dkxykNhTWIYrgk/H7+AdKWGipA1r9x9pF6H4=;
 b=J/G0CEgF9pu6Q6u9K+4b5CMj2oIcyKeAgWEYWZ0KAnAY96q/ia7+hOU23ZCPcya8W9
 5DVbOFfuzqcPZ1wF1T6MFehBWp+QDmEsXPUlYJxliXC9SoZXX7qy+zl/V5GB8TjasSzR
 UPWAiqGvq8dXtx67JR2gb0mQTI1gU+bJp5pgI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=28NKNs8dkxykNhTWIYrgk/H7+AdKWGipA1r9x9pF6H4=;
 b=TIIuMsp0SsdANOHy8Pyy8oBhGct4KeXMkDBvIHBras5KVcfpXYD8C+4Ki5W2Oi5Ebn
 B1rHnzhoCcoAyRj6LnY2gaVXbA4jxl/LJXw3NJDPzZ0K4Kzs0yxX+wh8UzACraicnAKN
 NkDJxVR/jjf2u1yv9WEbut95X9MWOYolcCL9DEWYD6azxgY3aQMDUIq22AQSFkH5P+ht
 WTNNqLGqQ7BvfWEZ76qkqhoPqwgiqkEg8SUwsQG9Bw5dhKpGwlUDXFpHkiIQ+zQ1Oi1x
 3jNXQqfPyljnfqYt4yYTIDyIid/bCWTR0V+1Ze8uJHyNWjBtrBoCQM1LRQQSmCo8RKaA
 JiUg==
X-Gm-Message-State: APjAAAWHRC0pynSoPMXC2/fBGHKhry8tQ3pKl4T4p5aGm2GiCnGNrOOt
 jXQ2TTpi9Tm0vt2cRrokRsKQfQ==
X-Google-Smtp-Source: APXvYqwrzn/yAW5BCNIum3Ewx8sgniyuYqnWVlppsp/WOPJZ/C2fWYKta18r1cYdnI9p8rKvOjCuKA==
X-Received: by 2002:a17:902:bb83:: with SMTP id
 m3mr8695155pls.94.1574345721637; 
 Thu, 21 Nov 2019 06:15:21 -0800 (PST)
Received: from localhost.localdomain ([115.97.180.31])
 by smtp.gmail.com with ESMTPSA id w138sm4072304pfc.68.2019.11.21.06.15.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 Nov 2019 06:15:20 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v2 4/5] ARM: dts: rockchip: Add Radxa Dalang Carrier board
Date: Thu, 21 Nov 2019 19:44:44 +0530
Message-Id: <20191121141445.28712-5-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191121141445.28712-1-jagan@amarulasolutions.com>
References: <20191121141445.28712-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_061522_721361_6B963F23 
X-CRM114-Status: GOOD (  13.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Changes for v2:
- use dalang carrier board as product name
- s/rockchip-radxa-carrierboard.dtsi/rockchip-radxa-dalang-carrier.dtsi

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

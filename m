Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 674C31F5273
	for <lists+linux-rockchip@lfdr.de>; Wed, 10 Jun 2020 12:37:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bKKjKWQZZOMhRR+tqzdEZdi5JDs7H6nU6FRX91kGIjM=; b=c3vArbPe1ZYaOh
	TeKqtzO4AKhQXuYDhUkSw3Y0uvrIxyss6L11kvxiV0YcC/fJidnJ9hNYb9RVHkoWYijUfrrm7AM6+
	PikM6t5GYg0VMiuWh+quuMJp89FC17/9bc4Sm2Sdv/hOJd7dlegm2lcJzXwUR3YJFtg5m9nLT36Lq
	/DOeDeDU6gZ8ux8AlaoY8mEwkOMbRGLf0TPVGaIlzATSyTnVjGULC4JI0P6tR/fAXhEQMflxaEtXt
	2hpyFL7aV1uzB7u5mvtNhmTinX5Z4P9HruX+CwArjPJUsvWYNJrne5pXqtC77M0uEu4HwpNMTtC1e
	S5EQ/0EVRBbH7u7OueFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiy6u-0004x8-Mz; Wed, 10 Jun 2020 10:37:32 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiy6r-0004va-8y
 for linux-rockchip@lists.infradead.org; Wed, 10 Jun 2020 10:37:30 +0000
Received: by mail-pf1-x443.google.com with SMTP id s23so931112pfh.7
 for <linux-rockchip@lists.infradead.org>; Wed, 10 Jun 2020 03:37:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=eyJ3QtIXYHjXan2xSx8t9mjX3yXNm5zgQujvAJEqQlc=;
 b=rTCjh+HfMTkAZKDYle2QvayPfTtmbhBBS/etOG5xMqrjVjn4I0hGopNEGZKVbA5IC9
 85nUGlRHBEsU60WsNC2sSJeIjp22wdj77hZ7XVT2tCZYaCeIHAfTHju4iWW2r+Su94+Y
 prkFuOs/S7GX69BQYn2mTwixuStct2bQtPTxM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=eyJ3QtIXYHjXan2xSx8t9mjX3yXNm5zgQujvAJEqQlc=;
 b=tSXiQ8/+mxaBZCAw06/Gymbu/yBXaqqRcuyfA4nGF0bEaxHDzJ2MLp6/Af/R/Qdixi
 ArMQ/3dKKwB0VsXTFD2Jv7Fg1KhsycFgiSZObw8RZfe9LI0OogWli8bWL8+x9mALlL9q
 DK3wuIlyXxUaN0nk+Km/vqLApIzIjsPJX1bXLj7T+Xs4GbOfpzS9nvyvjfMSmuyugoug
 zgA51OCZ+yBjS58bJvuIGzc0jHYyarMo7RhUHdIJWMQalFhguxFx6BAjBQ/I35Fqpeh9
 MmuEER47PdjkALaYCYwZ/RwFADyEUJYbSzVbFySsHbeDQyVYmcXznl+3nGwhFiyJeBTc
 cRQQ==
X-Gm-Message-State: AOAM5335BoEqyNKlKFnngqCyn57bJlceyB7+KUDKDSZytQoOyBSM0H9+
 EzzPw200gzRV3SvB80U0f0f/vPlRwYEmjg==
X-Google-Smtp-Source: ABdhPJxfB6e6tQ2WVsb2lnT/W6j1tFUBfDRKRB4QDEfuDXB2p+zQjRtpR1LNkKgZJwUH9oPaBc1RSQ==
X-Received: by 2002:a63:550d:: with SMTP id j13mr2112855pgb.139.1591785448097; 
 Wed, 10 Jun 2020 03:37:28 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:9daa:1b72:7bd0:50df])
 by smtp.gmail.com with ESMTPSA id x191sm12454754pfd.37.2020.06.10.03.37.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Jun 2020 03:37:27 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Simon Glass <sjg@chromium.org>
Subject: [PATCH 3/4] ARM: dts: rockchip: Sync v5.7-rc1 Radxa Dalang Carrier
Date: Wed, 10 Jun 2020 16:06:57 +0530
Message-Id: <20200610103658.96678-4-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200610103658.96678-1-jagan@amarulasolutions.com>
References: <20200610103658.96678-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_033729_320335_F5507A9D 
X-CRM114-Status: GOOD (  11.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-rockchip@lists.infradead.org, Tom Cubie <tom@radxa.com>,
 U-Boot-Denx <u-boot@lists.denx.de>, Jagan Teki <jagan@amarulasolutions.com>,
 Suniel Mahesh <sunil@amarulasolutions.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Carrier board often referred as baseboard. For making
complete SBC or any other industrial boards, these
carrier boards will be used with associated SOMs.

Radxa has Dalang carrier board which supports on-board
peripherals, ports like USB-2.0, USB-3.0, HDMI, MIPI DSI/CSI,
eDP, Ethernet, WiFi, PCIe, USB-C, 40-Pin GPIO header and etc.

Right now Dalang carrier board is used with two SBC-variants:
Rock Pi N10 => VMARC RK3399Por SOM + Dalang carrier board
Rock Pi N8  => VMARC RK3288 SOM + Dalang carrier board(+codec)

So add this carrier board dtsi as a separate file in
ARM directory, so-that the same can reuse it in both
rk3288, rk3399pro variants of Rockchip SOMs.

Sync this dtsi from linux-next v5.7-rc1.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 .../dts/rockchip-radxa-dalang-carrier.dtsi    | 81 +++++++++++++++++++
 1 file changed, 81 insertions(+)
 create mode 100644 arch/arm/dts/rockchip-radxa-dalang-carrier.dtsi

diff --git a/arch/arm/dts/rockchip-radxa-dalang-carrier.dtsi b/arch/arm/dts/rockchip-radxa-dalang-carrier.dtsi
new file mode 100644
index 0000000000..df3712aedf
--- /dev/null
+++ b/arch/arm/dts/rockchip-radxa-dalang-carrier.dtsi
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
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

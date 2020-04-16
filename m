Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99B311AC77C
	for <lists+linux-rockchip@lfdr.de>; Thu, 16 Apr 2020 16:56:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hnBY5/fkEsHOvmYqeITP0MD1dWx7GIdcjkx1zcgEyYw=; b=IMLPHSoQzxz1Ed
	iZcLIV/Q+0VjPxgLxucQKgswX44S73huV3Ex8bZp5sS4/c3YshQc2qLv3ojja24YtTGpHIKc82QpJ
	3E6ANGQrWQuPG19DxZ5T0Hi4j/NbpF+mIlSH3owYe5jYX6bnNEaxNuutQGg6iJlNdPhd27v5XrTv7
	sTBX0evv+i9znXz+2m0nFlHzQZtbs1fjcD4z4b5tk3+I7DaI8vuPvMyEwmf6LR+0LNG7LQ5zY8lNX
	GB4hQJaanwFxbyiDpQEZj6tAoZQLpTosCXge5T0r2379/HWHjXEmisDixuR3bdxPB7RUA3sx1FUyz
	SmDabO5Y3ecylR1mTFmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP5w1-0000ng-Ly; Thu, 16 Apr 2020 14:56:09 +0000
Received: from mail.manjaro.org ([176.9.38.148])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP5vy-0000l5-De
 for linux-rockchip@lists.infradead.org; Thu, 16 Apr 2020 14:56:08 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.manjaro.org (Postfix) with ESMTP id 735653702995;
 Thu, 16 Apr 2020 16:55:59 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at manjaro.org
Received: from mail.manjaro.org ([127.0.0.1])
 by localhost (manjaro.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Erx_frVr7CfS; Thu, 16 Apr 2020 16:55:57 +0200 (CEST)
From: Tobias Schramm <t.schramm@manjaro.org>
To: Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH] arm64: dts: rockchip: add micro SD card regulator to rockpro64
Date: Thu, 16 Apr 2020 16:55:34 +0200
Message-Id: <20200416145534.1263575-1-t.schramm@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_075606_603991_79FA8C24 
X-CRM114-Status: UNSURE (   8.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [176.9.38.148 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-kernel@vger.kernel.org, Tobias Schramm <t.schramm@manjaro.org>,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

This patch adds the RockPro64's micro SD card regulator to the
RockPro64 dtsi. The regulator is present on all revisions of the
device.
Previously the regular was missing, resulting in unreliable boot
behaviour when booting from SD card.

Signed-off-by: Tobias Schramm <t.schramm@manjaro.org>
---
 .../boot/dts/rockchip/rk3399-rockpro64.dtsi   | 27 +++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
index 9bca25801260..6788ab28f89a 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
@@ -96,6 +96,24 @@ vcc1v8_s3: vcca1v8_s3: vcc1v8-s3 {
 		vin-supply = <&vcc_1v8>;
 	};
 
+	/* micro SD card power */
+	vcc3v0_sd: vcc3v0-sd {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio0 RK_PA1 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&sdmmc0_pwr_h>;
+		regulator-name = "vcc3v0_sd";
+		regulator-always-on;
+		regulator-min-microvolt = <3000000>;
+		regulator-max-microvolt = <3000000>;
+		vin-supply = <&vcc3v3_sys>;
+
+		regulator-state-mem {
+			regulator-off-in-suspend;
+		};
+	};
+
 	vcc3v3_pcie: vcc3v3-pcie-regulator {
 		compatible = "regulator-fixed";
 		enable-active-high;
@@ -603,6 +621,13 @@ vsel2_gpio: vsel2-gpio {
 		};
 	};
 
+	sdcard {
+		sdmmc0_pwr_h: sdmmc0-pwr-h {
+			rockchip,pins = <0 RK_PA1 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+	};
+
 	sdio-pwrseq {
 		wifi_enable_h: wifi-enable-h {
 			rockchip,pins = <0 RK_PB2 RK_FUNC_GPIO &pcfg_pull_none>;
@@ -661,6 +686,8 @@ &sdmmc {
 	max-frequency = <150000000>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&sdmmc_clk &sdmmc_cmd &sdmmc_bus4>;
+	vmmc-supply = <&vcc3v0_sd>;
+	vqmmc-supply = <&vcc_sdio>;
 	status = "okay";
 };
 
-- 
2.26.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04C3B77945
	for <lists+linux-rockchip@lfdr.de>; Sat, 27 Jul 2019 16:29:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=3yUluF1ECYPMAPuX/f3kbmbtoVRYFiqTuBoyUNWtNOU=; b=qEa
	OAr2om5CuJBjX1Vn9sSrSm/XY76Xj//Bb7U8c/s37NUXbSW6m/4momFyAZ51sVTv4YeEWrpyaSlDy
	zeokNwYbbQmgrzaK9/WbBEzKd5sCactCzpGMBZB5PGHHtf8jmvoXMmhrDPojFgJohigh48r8z3WQV
	OcbHYtuV5zGtK23MFCvdevN1pimD0cI1obO25ASPjQDLZjbNrtuKdlT2fqIVZzDchpMpKYmfa2R++
	A/HGR2tE9iLRdMEPmgoRjKyCacWdz5OU8wWr8Z9JuJCHwAyNzLuiVtR0BU2gy3B4nqL75egpqRT0n
	Cm19vJYmdfdBBkWYgzU2OgD2v0x4Ecw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrNgz-0000D3-FM; Sat, 27 Jul 2019 14:29:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrNfn-00082h-OA; Sat, 27 Jul 2019 14:27:50 +0000
Received: from localhost.localdomain (unknown [194.230.155.239])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 26C122084C;
 Sat, 27 Jul 2019 14:27:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564237666;
 bh=cx+Jbyhf5yZekW1MxdTeEk8WHoyY1TG+dq0LGyTw3MY=;
 h=From:To:Cc:Subject:Date:From;
 b=oltjGzdA4YUsXZML7RTQY4BJ6RVH7UiHjZKs70rCudVBpxOh1bn17aShJWMo9oIEz
 tBT9PC5msGPN6FzW5nhBMbnzu/cjOmLfyvXGBUM2yyp+rXb4pLW6+aCUh+elDXFMoK
 /kX8AP3jQP2VS2Nk2mTbmQW4tr02Mhm+G3aglonY=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] ARM: dts: rockchip: Cleanup style around assignment
 operator
Date: Sat, 27 Jul 2019 16:27:35 +0200
Message-Id: <20190727142736.23188-1-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190727_072748_798984_BD574477 
X-CRM114-Status: GOOD (  11.84  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Krzysztof Kozlowski <krzk@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Use a space before and after assignment operator to have consistent
style.

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
---
 arch/arm/boot/dts/rk3036.dtsi                   |  2 +-
 arch/arm/boot/dts/rk3288-evb.dtsi               |  2 +-
 arch/arm/boot/dts/rk3288-tinker.dtsi            | 12 ++++++------
 arch/arm/boot/dts/rk3288-veyron-chromebook.dtsi |  2 +-
 4 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/arch/arm/boot/dts/rk3036.dtsi b/arch/arm/boot/dts/rk3036.dtsi
index 0290ea4edd32..c776321b2cc4 100644
--- a/arch/arm/boot/dts/rk3036.dtsi
+++ b/arch/arm/boot/dts/rk3036.dtsi
@@ -484,7 +484,7 @@
 		compatible = "rockchip,rockchip-spi";
 		reg = <0x20074000 0x1000>;
 		interrupts = <GIC_SPI 23 IRQ_TYPE_LEVEL_HIGH>;
-		clocks =<&cru PCLK_SPI>, <&cru SCLK_SPI>;
+		clocks = <&cru PCLK_SPI>, <&cru SCLK_SPI>;
 		clock-names = "apb-pclk","spi_pclk";
 		dmas = <&pdma 8>, <&pdma 9>;
 		dma-names = "tx", "rx";
diff --git a/arch/arm/boot/dts/rk3288-evb.dtsi b/arch/arm/boot/dts/rk3288-evb.dtsi
index 820440715302..2afd686b2033 100644
--- a/arch/arm/boot/dts/rk3288-evb.dtsi
+++ b/arch/arm/boot/dts/rk3288-evb.dtsi
@@ -97,7 +97,7 @@
 	};
 
 	panel: panel {
-		compatible ="lg,lp079qx1-sp0v", "simple-panel";
+		compatible = "lg,lp079qx1-sp0v", "simple-panel";
 		backlight = <&backlight>;
 		enable-gpios = <&gpio7 RK_PA4 GPIO_ACTIVE_HIGH>;
 		pinctrl-0 = <&lcd_cs>;
diff --git a/arch/arm/boot/dts/rk3288-tinker.dtsi b/arch/arm/boot/dts/rk3288-tinker.dtsi
index 293576869546..81e4e953d4a4 100644
--- a/arch/arm/boot/dts/rk3288-tinker.dtsi
+++ b/arch/arm/boot/dts/rk3288-tinker.dtsi
@@ -47,13 +47,13 @@
 		compatible = "gpio-leds";
 
 		act-led {
-			gpios=<&gpio1 RK_PD0 GPIO_ACTIVE_HIGH>;
-			linux,default-trigger="mmc0";
+			gpios = <&gpio1 RK_PD0 GPIO_ACTIVE_HIGH>;
+			linux,default-trigger = "mmc0";
 		};
 
 		heartbeat-led {
-			gpios=<&gpio1 RK_PD1 GPIO_ACTIVE_HIGH>;
-			linux,default-trigger="heartbeat";
+			gpios = <&gpio1 RK_PD1 GPIO_ACTIVE_HIGH>;
+			linux,default-trigger = "heartbeat";
 		};
 
 		pwr-led {
@@ -443,7 +443,7 @@
 
 &saradc {
 	vref-supply = <&vcc18_ldo1>;
-	status ="okay";
+	status = "okay";
 };
 
 &sdmmc {
@@ -516,7 +516,7 @@
 };
 
 &usb_otg {
-	status= "okay";
+	status = "okay";
 };
 
 &vopb {
diff --git a/arch/arm/boot/dts/rk3288-veyron-chromebook.dtsi b/arch/arm/boot/dts/rk3288-veyron-chromebook.dtsi
index 1cadb522fd0d..e0183655e92c 100644
--- a/arch/arm/boot/dts/rk3288-veyron-chromebook.dtsi
+++ b/arch/arm/boot/dts/rk3288-veyron-chromebook.dtsi
@@ -86,7 +86,7 @@
 	};
 
 	panel: panel {
-		compatible ="innolux,n116bge", "simple-panel";
+		compatible = "innolux,n116bge", "simple-panel";
 		status = "okay";
 		power-supply = <&vcc33_lcd>;
 		backlight = <&backlight>;
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

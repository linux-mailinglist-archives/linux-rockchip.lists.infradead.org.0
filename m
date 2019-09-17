Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4864EB4988
	for <lists+linux-rockchip@lfdr.de>; Tue, 17 Sep 2019 10:30:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mmoRxjkz/WMlPYFMeYjCqR6iW86I/cXCN3hybOT2qhk=; b=j2GnqUVcU/kOrt
	vFAe9YaSa5CDL0TSRh2h8OoB4zth7jdJ2gitdfnkGqqRC301CWb0tIQ1IMQ2o1hqOfRNpWpCY0Gqk
	dnMHIauC8yH8yCZn6DvwNbPhP4UKhxHaFIUIAmJ0/lm4K6qNYLR1EDgSPL/ePiTgC8qVHkv1RAYgz
	G4eVRt27MsYwtYP0955T9DVXDWF4EG+m8jg6UWc4qdhLzpkCZl5L/F6NvokmQi4f/xYOp59Q8eOzK
	N/ZmesYt2VVG6q473jSJpiKFrwtALmExdXzHecXOWcWirxI6/t2medpxDSKjOslD1+aNOsHIrcLkZ
	gL6Fo1Kv13meFG5yewvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iA8sd-0006Hf-3x; Tue, 17 Sep 2019 08:30:35 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iA8pN-0002IF-8I; Tue, 17 Sep 2019 08:27:15 +0000
Received: from ip5f5a6266.dynamic.kabel-deutschland.de ([95.90.98.102]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iA8pJ-0005ZY-Ul; Tue, 17 Sep 2019 10:27:10 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 10/13] arm64: dts: rockchip: add px30-evb i2c1 devices
Date: Tue, 17 Sep 2019 10:26:56 +0200
Message-Id: <20190917082659.25549-10-heiko@sntech.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190917082659.25549-1-heiko@sntech.de>
References: <20190917082659.25549-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_012713_644054_A3617B13 
X-CRM114-Status: UNSURE (   9.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 christoph.muellner@theobroma-systems.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Enable i2c1 and adds the devices connected to it.
This includes a magnetometer, goodix-touchscreen and accelerometer.

Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 arch/arm64/boot/dts/rockchip/px30-evb.dts | 37 +++++++++++++++++++++++
 1 file changed, 37 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/px30-evb.dts b/arch/arm64/boot/dts/rockchip/px30-evb.dts
index 80524afe94da..1185a314ba4a 100644
--- a/arch/arm64/boot/dts/rockchip/px30-evb.dts
+++ b/arch/arm64/boot/dts/rockchip/px30-evb.dts
@@ -349,6 +349,43 @@
 	};
 };
 
+&i2c1 {
+	status = "okay";
+
+	sensor@d {
+		compatible = "asahi-kasei,ak8963";
+		reg = <0x0d>;
+		gpios = <&gpio0 RK_PB7 GPIO_ACTIVE_HIGH>;
+		vdd-supply = <&vcc3v0_pmu>;
+		mount-matrix = "1", /* x0 */
+			       "0", /* y0 */
+			       "0", /* z0 */
+			       "0", /* x1 */
+			       "1", /* y1 */
+			       "0", /* z1 */
+			       "0", /* x2 */
+			       "0", /* y2 */
+			       "1"; /* z2 */
+	};
+
+	touchscreen@14 {
+		compatible = "goodix,gt1151";
+		reg = <0x14>;
+		interrupt-parent = <&gpio0>;
+		interrupts = <RK_PA5 IRQ_TYPE_LEVEL_LOW>;
+		irq-gpios = <&gpio0 RK_PA5 GPIO_ACTIVE_LOW>;
+		reset-gpios = <&gpio0 RK_PB4 GPIO_ACTIVE_HIGH>;
+		VDDIO-supply = <&vcc3v3_lcd>;
+	};
+
+	sensor@4c {
+		compatible = "fsl,mma7660";
+		reg = <0x4c>;
+		interrupt-parent = <&gpio0>;
+		interrupts = <RK_PB7 IRQ_TYPE_LEVEL_LOW>;
+	};
+};
+
 &i2s1_2ch {
 	status = "okay";
 };
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2604E11627D
	for <lists+linux-rockchip@lfdr.de>; Sun,  8 Dec 2019 15:55:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eu10TqLXZZ/t82pCJuLEuoEek8G+M05IMbg/X8YYRgg=; b=J/GwevRAX6rnQk
	Yp7Tu1H+Xv4CYB/WRFVBrrEwx8UiarsrBoUSCxNsYZUN4lyoPlUgTab4KQrGqG5qfv/EtFBuQVcML
	P9g9Dd+KFV8A4pBIiNUHhcrmjLbdV/rxkFqH11VYeLKatJAxKQ8G0S++HYhYsgt5iswde2dUHxO7Y
	1Xn0D6suAKTL1sjO4P3KUg3pHjQimjUa8AdMTmDqc+YXD8+gGXeNouFiFWKlaPIXzuqtfqxrLlgC/
	pgT022tffwYJY7ZiN2x2bCH8vak4EOPDp4FBSK4RC9FQ4AoRvv6qBp6CcDizyGAxb6EyAzIuxHNBV
	r05pp9BPhTcW2xYLg5rQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idxyA-0006dn-Mr; Sun, 08 Dec 2019 14:55:34 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idxy7-0006bs-Jr; Sun, 08 Dec 2019 14:55:32 +0000
Received: from muedsl-82-207-238-043.citykom.de ([82.207.238.43]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1idxy1-00043q-3y; Sun, 08 Dec 2019 15:55:25 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org
Subject: [PATCH 2/3] arm64: dts: rockchip: add the gpu for px30
Date: Sun,  8 Dec 2019 15:55:07 +0100
Message-Id: <20191208145508.3124-2-heiko@sntech.de>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191208145508.3124-1-heiko@sntech.de>
References: <20191208145508.3124-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191208_065531_805807_02E46D13 
X-CRM114-Status: UNSURE (   9.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, heiko@sntech.de,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, christoph.muellner@theobroma-systems.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>

The px30 contains a Mali Bifrost gpu, so add the necessary core node
for it with interrupts and powerdomains.

Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
---
 arch/arm64/boot/dts/rockchip/px30.dtsi | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
index 9a0f77ea4a78..c31423f36192 100644
--- a/arch/arm64/boot/dts/rockchip/px30.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
@@ -210,6 +210,12 @@ map0 {
 					cooling-device = <&cpu0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
 					contribution = <4096>;
 				};
+
+				map1 {
+					trip = <&target>;
+					cooling-device = <&gpu THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+					contribution = <4096>;
+				};
 			};
 		};
 
@@ -924,6 +930,19 @@ emmc: dwmmc@ff390000 {
 		status = "disabled";
 	};
 
+	gpu: gpu@ff400000 {
+		compatible = "rockchip,px30-mali", "arm,mali-bifrost";
+		reg = <0x0 0xff400000 0x0 0x4000>;
+		interrupts = <GIC_SPI 47 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 46 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 45 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "job", "mmu", "gpu";
+		clocks = <&cru SCLK_GPU>;
+		#cooling-cells = <2>;
+		power-domains = <&power PX30_PD_GPU>;
+		status = "disabled";
+	};
+
 	vopb: vop@ff460000 {
 		compatible = "rockchip,px30-vop-big";
 		reg = <0x0 0xff460000 0x0 0xefc>;
-- 
2.24.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

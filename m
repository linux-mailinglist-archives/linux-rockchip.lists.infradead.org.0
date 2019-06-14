Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 370E646529
	for <lists+linux-rockchip@lfdr.de>; Fri, 14 Jun 2019 18:56:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SmMjoPV+12hSiByhueVDJ0aAk0RN/ilHz/a3RJu/NOc=; b=TdHtz+SafBhNAf
	4CXJ2e3iqD3g3QscphimzbAZjC3BkRmB+i1FpqZJbQaZetYCF2s2jodKiUh/Vz8F0hN3c+WsGt8M0
	LunQStWc2Rm2WzScWJKScA7WOANUVlHCk4Wn6RBmDU0Mmk2HWaZpDHyo6sz7yNWuo7TV4Mp2Pql/n
	hl539dkJ2U10yZJ6J9JqwimS7094iTHL9AKEwfIsILs67G7VaI/m+pFboVtwfQEAlWDEfhPSTWmaS
	PTJA1TdCivkspgkQhAQ0bL8GdnBhyF7+EbTJRALVshnlwVIaHg3VFrTGyiAyeuaGa8zP8G4UzWSxY
	DsrCO031dJ18QaTEmtaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbpV0-0002yA-Pl; Fri, 14 Jun 2019 16:56:22 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbpTi-0000XD-8D; Fri, 14 Jun 2019 16:55:07 +0000
Received: from we0305.dip.tu-dresden.de ([141.76.177.49]
 helo=phil.dip.tu-dresden.de)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hbpTd-0006Tl-VV; Fri, 14 Jun 2019 18:54:58 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org
Subject: [PATCH 3/4] ARM: dts: rockchip: add display nodes for rk322x
Date: Fri, 14 Jun 2019 18:54:53 +0200
Message-Id: <20190614165454.13743-4-heiko@sntech.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190614165454.13743-1-heiko@sntech.de>
References: <20190614165454.13743-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_095502_501150_7AD02236 
X-CRM114-Status: GOOD (  11.11  )
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
Cc: justin.swartz@risingedge.co.za, Heiko Stuebner <heiko@sntech.de>,
 sboyd@kernel.org, mturquette@baylibre.com, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

From: Justin Swartz <justin.swartz@risingedge.co.za>

Add display_subsystem, hdmi_phy, vop, and hdmi device nodes plus
a few hdmi pinctrl entries to allow for HDMI output.

Signed-off-by: Justin Swartz <justin.swartz@risingedge.co.za>
[added assigned-clock settings for hdmiphy output]
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 arch/arm/boot/dts/rk322x.dtsi | 83 +++++++++++++++++++++++++++++++++++
 1 file changed, 83 insertions(+)

diff --git a/arch/arm/boot/dts/rk322x.dtsi b/arch/arm/boot/dts/rk322x.dtsi
index da102fff96a2..148f9b5157ea 100644
--- a/arch/arm/boot/dts/rk322x.dtsi
+++ b/arch/arm/boot/dts/rk322x.dtsi
@@ -143,6 +143,11 @@
 		#clock-cells = <0>;
 	};
 
+	display_subsystem: display-subsystem {
+		compatible = "rockchip,display-subsystem";
+		ports = <&vop_out>;
+	};
+
 	i2s1: i2s1@100b0000 {
 		compatible = "rockchip,rk3228-i2s", "rockchip,rk3066-i2s";
 		reg = <0x100b0000 0x4000>;
@@ -529,6 +534,17 @@
 		status = "disabled";
 	};
 
+	hdmi_phy: hdmi-phy@12030000 {
+		compatible = "rockchip,rk3228-hdmi-phy";
+		reg = <0x12030000 0x10000>;
+		clocks = <&cru PCLK_HDMI_PHY>, <&xin24m>, <&cru DCLK_HDMI_PHY>;
+		clock-names = "sysclk", "refoclk", "refpclk";
+		#clock-cells = <0>;
+		clock-output-names = "hdmiphy_phy";
+		#phy-cells = <0>;
+		status = "disabled";
+	};
+
 	gpu: gpu@20000000 {
 		compatible = "rockchip,rk3228-mali", "arm,mali-400";
 		reg = <0x20000000 0x10000>;
@@ -572,6 +588,28 @@
 		status = "disabled";
 	};
 
+	vop: vop@20050000 {
+		compatible = "rockchip,rk3228-vop";
+		reg = <0x20050000 0x1ffc>;
+		interrupts = <GIC_SPI 32 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru ACLK_VOP>, <&cru DCLK_VOP>, <&cru HCLK_VOP>;
+		clock-names = "aclk_vop", "dclk_vop", "hclk_vop";
+		resets = <&cru SRST_VOP_A>, <&cru SRST_VOP_H>, <&cru SRST_VOP_D>;
+		reset-names = "axi", "ahb", "dclk";
+		iommus = <&vop_mmu>;
+		status = "disabled";
+
+		vop_out: port {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			vop_out_hdmi: endpoint@0 {
+				reg = <0>;
+				remote-endpoint = <&hdmi_in_vop>;
+			};
+		};
+	};
+
 	vop_mmu: iommu@20053f00 {
 		compatible = "rockchip,iommu";
 		reg = <0x20053f00 0x100>;
@@ -594,6 +632,36 @@
 		status = "disabled";
 	};
 
+	hdmi: hdmi@200a0000 {
+		compatible = "rockchip,rk3228-dw-hdmi";
+		reg = <0x200a0000 0x20000>;
+		reg-io-width = <4>;
+		interrupts = <GIC_SPI 35 IRQ_TYPE_LEVEL_HIGH>;
+		assigned-clocks = <&cru SCLK_HDMI_PHY>;
+		assigned-clock-parents = <&hdmi_phy>;
+		clocks = <&cru SCLK_HDMI_HDCP>, <&cru PCLK_HDMI_CTRL>, <&cru SCLK_HDMI_CEC>;
+		clock-names = "isfr", "iahb", "cec";
+		pinctrl-names = "default";
+		pinctrl-0 = <&hdmii2c_xfer &hdmi_hpd &hdmi_cec>;
+		resets = <&cru SRST_HDMI_P>;
+		reset-names = "hdmi";
+		phys = <&hdmi_phy>;
+		phy-names = "hdmi";
+		rockchip,grf = <&grf>;
+		status = "disabled";
+
+		ports {
+			hdmi_in: port {
+				#address-cells = <1>;
+				#size-cells = <0>;
+				hdmi_in_vop: endpoint@0 {
+					reg = <0>;
+					remote-endpoint = <&vop_out_hdmi>;
+				};
+			};
+		};
+	};
+
 	sdmmc: dwmmc@30000000 {
 		compatible = "rockchip,rk3228-dw-mshc", "rockchip,rk3288-dw-mshc";
 		reg = <0x30000000 0x4000>;
@@ -922,6 +990,21 @@
 			};
 		};
 
+		hdmi {
+			hdmi_hpd: hdmi-hpd {
+				rockchip,pins = <0 RK_PB7 1 &pcfg_pull_down>;
+			};
+
+			hdmii2c_xfer: hdmii2c-xfer {
+				rockchip,pins = <0 RK_PA6 2 &pcfg_pull_none>,
+						<0 RK_PA7 2 &pcfg_pull_none>;
+			};
+
+			hdmi_cec: hdmi-cec {
+				rockchip,pins = <0 RK_PC4 1 &pcfg_pull_none>;
+			};
+		};
+
 		i2c0 {
 			i2c0_xfer: i2c0-xfer {
 				rockchip,pins = <0 RK_PA0 1 &pcfg_pull_none>,
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

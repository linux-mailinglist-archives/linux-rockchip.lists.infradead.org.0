Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A82D33207
	for <lists+linux-rockchip@lfdr.de>; Mon,  3 Jun 2019 16:23:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=X/hlU85MugiTimu096GCycG6Wv8r3rIONK1daMvJoZ8=; b=FsYF+Unnq8QzGn
	Jtycbp6wzB0dgRvDV3xzBgXPvkVpKvCfbZ8X1Z7q4o7Sd4FnQjsEYGx8/KcwVD0Pi9/WOXvsHmkNf
	hOAqSnaIfVZdA6SSz4DS7DkE1qpQEaoaZCXHPGV6SlnNwhMAOQ+IVikgOhh2GDej1aF5ripWtVRaV
	zljCQV+j/0wsx/MZCP4XTl8sZ1jJDWECiDMCIzdJeNbKWQsCOMVE+YhlO3UMc78/WSq1cyrfIvqDy
	LwAf3xx/TTJlH56gs7Aa3TBtk2ofaN+Y0kjTOFCYYSBo3p91b4nLp0wa2wWa30cMEMZw8et2HEAlc
	jbXxEo7aBC929wo4UNhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXnrg-0003P5-4Z; Mon, 03 Jun 2019 14:23:08 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXnrX-0003EU-Rc; Mon, 03 Jun 2019 14:23:01 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: koike) with ESMTPSA id A1E642639EE
From: Helen Koike <helen.koike@collabora.com>
To: linux-rockchip@lists.infradead.org
Subject: [PATCH] arm64: dts: rockchip: fix isp iommu clocks and power domain
Date: Mon,  3 Jun 2019 11:22:15 -0300
Message-Id: <20190603142214.24686-1-helen.koike@collabora.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_072300_035595_5BAE3427 
X-CRM114-Status: GOOD (  10.33  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.21
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Heiko Stuebner <heiko@sntech.de>, Tony Xie <tony.xie@rock-chips.com>,
 Viresh Kumar <viresh.kumar@linaro.org>, Randy Li <ayaka@soulik.info>,
 linux-kernel@vger.kernel.org, Vicente Bergas <vicencb@gmail.com>,
 Marc Zyngier <marc.zyngier@arm.com>, Helen Koike <helen.koike@collabora.com>,
 Rob Herring <robh+dt@kernel.org>,
 Klaus Goger <klaus.goger@theobroma-systems.com>,
 laurent.pinchart@ideasonboard.com, manivannan.sadhasivam@linaro.org,
 Matthias Brugger <matthias.bgg@gmail.com>, kernel@collabora.com,
 ezequiel@collabora.com, linux-arm-kernel@lists.infradead.org,
 Christoph Muellner <christoph.muellner@theobroma-systems.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

isp iommu requires wrapper variants of the clocks.
noc variants are always on and using the wrapper variants will activate
{A,H}CLK_ISP{0,1} due to the hierarchy.

Also add the respective power domain.

Refer:
 RK3399 TRM v1.4 Fig. 2-4 RK3399 Clock Architecture Diagram
 RK3399 TRM v1.4 Fig. 8-1 RK3399 Power Domain Partition

Signed-off-by: Helen Koike <helen.koike@collabora.com>

---
Hello,

I tested this using the isp patch set (which is not upstream
yet). Without this patch, streaming from the isp stalls.

I'm also enabling the power domain and removing the disable status,
please let me know if this should be done in a separated patch.

Thanks
Helen

 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index 196ac9b78076..89594a7276f4 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -1706,11 +1706,11 @@
 		reg = <0x0 0xff914000 0x0 0x100>, <0x0 0xff915000 0x0 0x100>;
 		interrupts = <GIC_SPI 43 IRQ_TYPE_LEVEL_HIGH 0>;
 		interrupt-names = "isp0_mmu";
-		clocks = <&cru ACLK_ISP0_NOC>, <&cru HCLK_ISP0_NOC>;
+		clocks = <&cru ACLK_ISP0_WRAPPER>, <&cru HCLK_ISP0_WRAPPER>;
 		clock-names = "aclk", "iface";
 		#iommu-cells = <0>;
+		power-domains = <&power RK3399_PD_ISP0>;
 		rockchip,disable-mmu-reset;
-		status = "disabled";
 	};
 
 	isp1_mmu: iommu@ff924000 {
@@ -1718,11 +1718,11 @@
 		reg = <0x0 0xff924000 0x0 0x100>, <0x0 0xff925000 0x0 0x100>;
 		interrupts = <GIC_SPI 44 IRQ_TYPE_LEVEL_HIGH 0>;
 		interrupt-names = "isp1_mmu";
-		clocks = <&cru ACLK_ISP1_NOC>, <&cru HCLK_ISP1_NOC>;
+		clocks = <&cru ACLK_ISP1_WRAPPER>, <&cru HCLK_ISP1_WRAPPER>;
 		clock-names = "aclk", "iface";
 		#iommu-cells = <0>;
+		power-domains = <&power RK3399_PD_ISP1>;
 		rockchip,disable-mmu-reset;
-		status = "disabled";
 	};
 
 	hdmi_sound: hdmi-sound {
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

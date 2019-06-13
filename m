Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D5A244394
	for <lists+linux-rockchip@lfdr.de>; Thu, 13 Jun 2019 18:31:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=odYkOsnu920txUj6h4cFpCtHiV+glFQJlG7u4y23dsE=; b=lM6U+QMlH95QK1
	NgSDVt8BJ+gEIL/FGYG5wCo/Z2X0g+EOHZEf16zGClb65vZPHLvC5UtkRmVX2Ocn8N8z03XNDTg+6
	6fdvOhr9QIdZKD3Ab3Dcb6Sj6xFpWVQJr+gxwVxVZw6D015lluEgRvLC2ew0s/I2Rqv1Dz+oKAu3G
	EeiBxffv5NLAyAPD16b+lALRx/ugydos6quyq9RKB2abIaAOoCilNqxFyqLs7Sh+mLRWlcffN8skv
	r/y9RwzH+aZk/4wl6a84VxmQGOvlgRN+p1AZtUOlGNXdo1v+2sLeyshYxttVx6dOp7jF4pRlwviz3
	n6QTsZPeSShDLWhk0+oQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbSdc-0008Rj-Ni; Thu, 13 Jun 2019 16:31:44 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbSZw-00036Y-Gr; Thu, 13 Jun 2019 16:27:58 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: eballetbo) with ESMTPSA id 2E34F27D7A1
From: Enric Balletbo i Serra <enric.balletbo@collabora.com>
To: devicetree@vger.kernel.org
Subject: [PATCH] arm64: dts: rockchip: Update DWC3 modules on RK3399 SoCs
Date: Thu, 13 Jun 2019 18:27:45 +0200
Message-Id: <20190613162745.12195-1-enric.balletbo@collabora.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_092756_843034_D5C41B2D 
X-CRM114-Status: GOOD (  10.09  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Mark Rutland <mark.rutland@arm.com>, Heiko Stuebner <heiko@sntech.de>,
 Felipe Balbi <felipe.balbi@linux.intel.com>,
 linux-rockchip@lists.infradead.org, Tony Xie <tony.xie@rock-chips.com>,
 Viresh Kumar <viresh.kumar@linaro.org>, Randy Li <ayaka@soulik.info>,
 linux-kernel@vger.kernel.org, Vicente Bergas <vicencb@gmail.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Rob Herring <robh+dt@kernel.org>,
 Klaus Goger <klaus.goger@theobroma-systems.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Collabora Kernel ML <kernel@collabora.com>,
 linux-arm-kernel@lists.infradead.org,
 Christoph Muellner <christoph.muellner@theobroma-systems.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

As per binding documentation [1], the DWC3 core should have the "ref",
"bus_early" and "suspend" clocks. As explained in the binding, those
clocks are required for new platforms but not for existing platforms
before commit fe8abf332b8f ("usb: dwc3: support clocks and resets for
DWC3 core").

However, as those clocks are really treated as required, this ends with
having some annoying messages when the "rockchip,rk3399-dwc3" is used:

[    1.724107] dwc3 fe800000.dwc3: Failed to get clk 'ref': -2
[    1.731893] dwc3 fe900000.dwc3: Failed to get clk 'ref': -2
[    2.495937] dwc3 fe800000.dwc3: Failed to get clk 'ref': -2
[    2.647239] dwc3 fe900000.dwc3: Failed to get clk 'ref': -2

In order to remove those annoying messages, update the DWC3 hardware
module node and add all the required clocks. With this change, both, the
glue node and the DWC3 core node, have the clocks defined, but that's
not really a problem and there isn't a side effect on do this. So, we
can get rid of the annoying get clk error messages.

[1] Documentation/devicetree/bindings/usb/dwc3.txt

Signed-off-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
---

 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index 196ac9b78076..a15348d185ce 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -414,6 +414,9 @@
 			compatible = "snps,dwc3";
 			reg = <0x0 0xfe800000 0x0 0x100000>;
 			interrupts = <GIC_SPI 105 IRQ_TYPE_LEVEL_HIGH 0>;
+			clocks = <&cru SCLK_USB3OTG0_REF>, <&cru ACLK_USB3OTG0>,
+				 <&cru SCLK_USB3OTG0_SUSPEND>;
+			clock-names = "ref", "bus_early", "suspend";
 			dr_mode = "otg";
 			phys = <&u2phy0_otg>, <&tcphy0_usb3>;
 			phy-names = "usb2-phy", "usb3-phy";
@@ -447,6 +450,9 @@
 			compatible = "snps,dwc3";
 			reg = <0x0 0xfe900000 0x0 0x100000>;
 			interrupts = <GIC_SPI 110 IRQ_TYPE_LEVEL_HIGH 0>;
+			clocks = <&cru SCLK_USB3OTG1_REF>, <&cru ACLK_USB3OTG1>,
+				 <&cru SCLK_USB3OTG1_SUSPEND>;
+			clock-names = "ref", "bus_early", "suspend";
 			dr_mode = "otg";
 			phys = <&u2phy1_otg>, <&tcphy1_usb3>;
 			phy-names = "usb2-phy", "usb3-phy";
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

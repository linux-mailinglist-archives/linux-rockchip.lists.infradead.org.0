Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01D571D09AF
	for <lists+linux-rockchip@lfdr.de>; Wed, 13 May 2020 09:16:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=3z+jjPD6R7bhkLjMtmfgTceWnfBhhyg755gp/76PqE4=; b=c/nLy5vP/+T8syzWMpKO0jqnXG
	dbOIjFQURSRtRazbzJL5zye8m2uzAZr8tex94DK6w19WSzRlx9qwX0gBSI9x/FSFgu1F8a6iw+Sue
	Y8w/GZt2bTehhqa1Ii9MPga//H/q+cl5UCl+yTm+6JeW1Ik0Ikbo7lIfeOpDhg4QLdcbr9/FvElel
	/p6RtQs+nJzyW+P3vP2/GXf8EYIXuSg85Kok5Mfg4YWRy05Dwinx81bKjZpsGEJ8DJRUw1JLKNdVw
	mXwbrYKSHi+wgv/aNLAY/bOP8P1wfMthl/r8sGH/iFuWoYlIchrjy3Most/LMbjwwALeFurfzkJsS
	E/hxLJ2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYlcT-0008AE-1v; Wed, 13 May 2020 07:15:57 +0000
Received: from lucky1.263xmail.com ([211.157.147.132])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYlcO-00089K-Nf
 for linux-rockchip@lists.infradead.org; Wed, 13 May 2020 07:15:54 +0000
Received: from localhost (unknown [192.168.167.16])
 by lucky1.263xmail.com (Postfix) with ESMTP id 75A9BCDD2D;
 Wed, 13 May 2020 15:15:50 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P15407T140446440306432S1589354149129638_; 
 Wed, 13 May 2020 15:15:50 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <ddf6895bc996f418fb9086f6eca8e469>
X-RL-SENDER: frank.wang@rock-chips.com
X-SENDER: wmc@rock-chips.com
X-LOGIN-NAME: frank.wang@rock-chips.com
X-FST-TO: heiko@sntech.de
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
X-System-Flag: 0
From: Frank Wang <frank.wang@rock-chips.com>
To: heiko@sntech.de, marex@denx.de, bmeng.cn@gmail.com,
 philipp.tomsich@theobroma-systems.com, klaus.goger@theobroma-systems.com,
 jagan@amarulasolutions.com, sjg@chromium.org, kever.yang@rock-chips.com
Subject: [PATCH v5 05/16] arm64: dts: rk3399: Move u2phy into root port
Date: Wed, 13 May 2020 15:15:35 +0800
Message-Id: <20200513071546.5560-1-frank.wang@rock-chips.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200513071344.5430-1-frank.wang@rock-chips.com>
References: <20200513071344.5430-1-frank.wang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_001553_279758_61567E2A 
X-CRM114-Status: GOOD (  12.29  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.157.147.132 listed in list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [211.157.147.132 listed in wl.mailspike.net]
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
Cc: jianing.ren@rock-chips.com, marek.belisko@gmail.com, wmc@rock-chips.com,
 u-boot@lists.denx.de, william.wu@rock-chips.com,
 linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com,
 chenjh@rock-chips.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

From: Jagan Teki <jagan@amarulasolutions.com>

Yes, This is changing the actual device tree u2phy
structure but the problem with the current Generic
PHY subsystem is unable to find PHY if the PHY node
is not part of the root structure.

This will be reverted,
- Once we support the PHY subsystem to get the PHY
  even though it is not part of the root node or
- any other relevant solution that get the phy
  directly without traversing all nodes.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm/dts/rk3399.dtsi | 108 +++++++++++++++++++--------------------
 1 file changed, 54 insertions(+), 54 deletions(-)

diff --git a/arch/arm/dts/rk3399.dtsi b/arch/arm/dts/rk3399.dtsi
index 74f2c3d490..6c77f25f23 100644
--- a/arch/arm/dts/rk3399.dtsi
+++ b/arch/arm/dts/rk3399.dtsi
@@ -1387,60 +1387,6 @@
 			status = "disabled";
 		};
 
-		u2phy0: usb2-phy@e450 {
-			compatible = "rockchip,rk3399-usb2phy";
-			reg = <0xe450 0x10>;
-			clocks = <&cru SCLK_USB2PHY0_REF>;
-			clock-names = "phyclk";
-			#clock-cells = <0>;
-			clock-output-names = "clk_usbphy0_480m";
-			status = "disabled";
-
-			u2phy0_host: host-port {
-				#phy-cells = <0>;
-				interrupts = <GIC_SPI 27 IRQ_TYPE_LEVEL_HIGH 0>;
-				interrupt-names = "linestate";
-				status = "disabled";
-			};
-
-			u2phy0_otg: otg-port {
-				#phy-cells = <0>;
-				interrupts = <GIC_SPI 103 IRQ_TYPE_LEVEL_HIGH 0>,
-					     <GIC_SPI 104 IRQ_TYPE_LEVEL_HIGH 0>,
-					     <GIC_SPI 106 IRQ_TYPE_LEVEL_HIGH 0>;
-				interrupt-names = "otg-bvalid", "otg-id",
-						  "linestate";
-				status = "disabled";
-			};
-		};
-
-		u2phy1: usb2-phy@e460 {
-			compatible = "rockchip,rk3399-usb2phy";
-			reg = <0xe460 0x10>;
-			clocks = <&cru SCLK_USB2PHY1_REF>;
-			clock-names = "phyclk";
-			#clock-cells = <0>;
-			clock-output-names = "clk_usbphy1_480m";
-			status = "disabled";
-
-			u2phy1_host: host-port {
-				#phy-cells = <0>;
-				interrupts = <GIC_SPI 31 IRQ_TYPE_LEVEL_HIGH 0>;
-				interrupt-names = "linestate";
-				status = "disabled";
-			};
-
-			u2phy1_otg: otg-port {
-				#phy-cells = <0>;
-				interrupts = <GIC_SPI 108 IRQ_TYPE_LEVEL_HIGH 0>,
-					     <GIC_SPI 109 IRQ_TYPE_LEVEL_HIGH 0>,
-					     <GIC_SPI 111 IRQ_TYPE_LEVEL_HIGH 0>;
-				interrupt-names = "otg-bvalid", "otg-id",
-						  "linestate";
-				status = "disabled";
-			};
-		};
-
 		emmc_phy: phy@f780 {
 			compatible = "rockchip,rk3399-emmc-phy";
 			reg = <0xf780 0x24>;
@@ -1462,6 +1408,60 @@
 		};
 	};
 
+	u2phy0: usb2-phy@e450 {
+		compatible = "rockchip,rk3399-usb2phy";
+		reg = <0x0 0xe450 0x0 0x10>;
+		clocks = <&cru SCLK_USB2PHY0_REF>;
+		clock-names = "phyclk";
+		#clock-cells = <0>;
+		clock-output-names = "clk_usbphy0_480m";
+		status = "disabled";
+
+		u2phy0_host: host-port {
+			#phy-cells = <0>;
+			interrupts = <GIC_SPI 27 IRQ_TYPE_LEVEL_HIGH 0>;
+			interrupt-names = "linestate";
+			status = "disabled";
+		};
+
+		u2phy0_otg: otg-port {
+			#phy-cells = <0>;
+			interrupts = <GIC_SPI 103 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 104 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 106 IRQ_TYPE_LEVEL_HIGH 0>;
+			interrupt-names = "otg-bvalid", "otg-id",
+					  "linestate";
+			status = "disabled";
+		};
+	};
+
+	u2phy1: usb2-phy@e460 {
+		compatible = "rockchip,rk3399-usb2phy";
+		reg = <0x0 0xe460 0x0 0x10>;
+		clocks = <&cru SCLK_USB2PHY1_REF>;
+		clock-names = "phyclk";
+		#clock-cells = <0>;
+		clock-output-names = "clk_usbphy1_480m";
+		status = "disabled";
+
+		u2phy1_host: host-port {
+			#phy-cells = <0>;
+			interrupts = <GIC_SPI 31 IRQ_TYPE_LEVEL_HIGH 0>;
+			interrupt-names = "linestate";
+			status = "disabled";
+		};
+
+		u2phy1_otg: otg-port {
+			#phy-cells = <0>;
+			interrupts = <GIC_SPI 108 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 109 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 111 IRQ_TYPE_LEVEL_HIGH 0>;
+			interrupt-names = "otg-bvalid", "otg-id",
+					  "linestate";
+			status = "disabled";
+		};
+	};
+
 	tcphy0: phy@ff7c0000 {
 		compatible = "rockchip,rk3399-typec-phy";
 		reg = <0x0 0xff7c0000 0x0 0x40000>;
-- 
2.17.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

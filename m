Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 280651CD355
	for <lists+linux-rockchip@lfdr.de>; Mon, 11 May 2020 09:55:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=3z+jjPD6R7bhkLjMtmfgTceWnfBhhyg755gp/76PqE4=; b=cpLEJppUXh5zVSA8A3IeB17wZx
	tIz3KkGRCMR3PSajQblWOKCXqT4Jj8+uq4imBflV8JlFiNxyElL2Vk7PbNpbQfYzB6Ly7jZ0NEeKC
	hRylwkXcdkQL8v03eyQ2sOb6gjO7pIqwjrmu98y457dvm4IguRXuu7gXLige9itm3JkrUulwxYDpV
	O9ifGvep3TG6064MMMi6GIhTLGfbLIJMPqheNGxQWqf6lMTQIZmlDRoHACfL770ovzFe8BmTri7ts
	1g0fjqlRIrmY4UsVAo7uLgpzYJ7VDAjflTH4YH25bvAChV8T+Q6/5k50kcTFVHNICnUbr/jJLqcpv
	MM4szfog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY3He-0001yY-8C; Mon, 11 May 2020 07:55:30 +0000
Received: from lucky1.263xmail.com ([211.157.147.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY3Ha-0001y5-0V
 for linux-rockchip@lists.infradead.org; Mon, 11 May 2020 07:55:27 +0000
Received: from localhost (unknown [192.168.167.8])
 by lucky1.263xmail.com (Postfix) with ESMTP id 83584A4D90;
 Mon, 11 May 2020 15:55:23 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P2949T140479804974848S1589183722650576_; 
 Mon, 11 May 2020 15:55:24 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <b864433a5b2894f75948061be895f85c>
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
Subject: [PATCH v4 05/16] arm64: dts: rk3399: Move u2phy into root port
Date: Mon, 11 May 2020 15:55:09 +0800
Message-Id: <20200511075520.26557-1-frank.wang@rock-chips.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200511075330.26462-1-frank.wang@rock-chips.com>
References: <20200511075330.26462-1-frank.wang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_005526_475062_83ADEE26 
X-CRM114-Status: GOOD (  10.99  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.157.147.134 listed in list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [211.157.147.134 listed in wl.mailspike.net]
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

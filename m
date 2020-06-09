Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 688551F3587
	for <lists+linux-rockchip@lfdr.de>; Tue,  9 Jun 2020 09:51:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=TBQAtX7N/IvMZpVaKn1isNZS3o1dU5i6O7tqc8pVANk=; b=OF7ek+0xC375Xt6nXXfdL1hNOI
	62v90YxNogeOKYk/4wSB+p3L0U15msEGvIX7vtmJkqHpZuWVVZz2DkyYJ1SLWARPSvTIx+HtcKqai
	LKduyyDA0QLfJMQsw6ZFLLr1v4DNmsJhqDAqyxAxbz7nIlRaMUgadsJt9XVyeuAL2H3/c3/lXSWYB
	kRVrgLBU7sU2a9KKL7PI7RO5G/KSL5+5jENzsbLEPIyxQ9otuoLYqkBSi309xVugjSl5YnqZ+xtmK
	Ysdl75EbwBFGimh6zp+K7E1h0hrV/rLnE51ZD6ZLytmjXBXIUpwBYZXH0u67rdDd4EQ7snSlfacR4
	H7zq+Z6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiZ2Z-0006sf-3m; Tue, 09 Jun 2020 07:51:23 +0000
Received: from lucky1.263xmail.com ([211.157.147.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiZ0Y-0002eN-EX; Tue, 09 Jun 2020 07:49:19 +0000
Received: from localhost (unknown [192.168.167.32])
 by lucky1.263xmail.com (Postfix) with ESMTP id 46C66C9690;
 Tue,  9 Jun 2020 15:49:16 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from ubuntu18.lan (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P3328T139696428545792S1591688948875935_; 
 Tue, 09 Jun 2020 15:49:15 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <f769330f5b224f474f4df90130169fc1>
X-RL-SENDER: yifeng.zhao@rock-chips.com
X-SENDER: zyf@rock-chips.com
X-LOGIN-NAME: yifeng.zhao@rock-chips.com
X-FST-TO: miquel.raynal@bootlin.com
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
X-System-Flag: 0
From: Yifeng Zhao <yifeng.zhao@rock-chips.com>
To: miquel.raynal@bootlin.com, richard@nod.at, vigneshr@ti.com,
 robh+dt@kernel.org
Subject: [PATCH v6 8/8] arm: dts: rockchip: Add nfc dts for RK3036 SOC
Date: Tue,  9 Jun 2020 15:49:07 +0800
Message-Id: <20200609074907.24075-4-yifeng.zhao@rock-chips.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200609074907.24075-1-yifeng.zhao@rock-chips.com>
References: <20200609074020.23860-1-yifeng.zhao@rock-chips.com>
 <20200609074907.24075-1-yifeng.zhao@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_004918_660113_F752E5CD 
X-CRM114-Status: UNSURE (   8.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.157.147.130 listed in list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [211.157.147.130 listed in wl.mailspike.net]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: devicetree@vger.kernel.org, heiko@sntech.de,
 Yifeng Zhao <yifeng.zhao@rock-chips.com>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-mtd@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Add nfc(nand flash controller) node for RK3036 Soc.

Signed-off-by: Yifeng Zhao <yifeng.zhao@rock-chips.com>
---

Changes in v6: None
Changes in v5: None
Changes in v4: None
Changes in v3: None
Changes in v2: None

 arch/arm/boot/dts/rk3036.dtsi | 52 +++++++++++++++++++++++++++++++++++
 1 file changed, 52 insertions(+)

diff --git a/arch/arm/boot/dts/rk3036.dtsi b/arch/arm/boot/dts/rk3036.dtsi
index 781ac7583522..7d7c43e4c104 100644
--- a/arch/arm/boot/dts/rk3036.dtsi
+++ b/arch/arm/boot/dts/rk3036.dtsi
@@ -291,6 +291,21 @@
 		status = "disabled";
 	};
 
+	nfc: nand-controller@10500000 {
+		compatible = "rockchip,rk3036-nfc",
+			     "rockchip,rk2928-nfc";
+		reg = <0x10500000 0x4000>;
+		interrupts = <GIC_SPI 18 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru HCLK_NANDC>, <&cru SCLK_NANDC>;
+		clock-names = "ahb", "nfc";
+		assigned-clocks = <&cru SCLK_NANDC>;
+		assigned-clock-rates = <150000000>;
+		pinctrl-0 = <&flash_ale &flash_bus8 &flash_cle &flash_csn0
+			     &flash_rdn &flash_rdy &flash_wrn>;
+		pinctrl-names = "default";
+		status = "disabled";
+	};
+
 	cru: clock-controller@20000000 {
 		compatible = "rockchip,rk3036-cru";
 		reg = <0x20000000 0x1000>;
@@ -642,6 +657,43 @@
 			};
 		};
 
+		nfc {
+			flash_ale: flash-ale {
+				rockchip,pins = <2 RK_PA0 1 &pcfg_pull_default>;
+			};
+
+			flash_bus8: flash-bus8 {
+				rockchip,pins = <1 RK_PD0 1 &pcfg_pull_default>,
+						<1 RK_PD1 1 &pcfg_pull_default>,
+						<1 RK_PD2 1 &pcfg_pull_default>,
+						<1 RK_PD3 1 &pcfg_pull_default>,
+						<1 RK_PD4 1 &pcfg_pull_default>,
+						<1 RK_PD5 1 &pcfg_pull_default>,
+						<1 RK_PD6 1 &pcfg_pull_default>,
+						<1 RK_PD7 1 &pcfg_pull_default>;
+			};
+
+			flash_cle: flash-cle {
+				rockchip,pins = <2 RK_PA1 1 &pcfg_pull_default>;
+			};
+
+			flash_csn0: flash-csn0 {
+				rockchip,pins = <2 RK_PA6 1 &pcfg_pull_default>;
+			};
+
+			flash_rdn: flash-rdn {
+				rockchip,pins = <2 RK_PA3 1 &pcfg_pull_default>;
+			};
+
+			flash_rdy: flash-rdy {
+				rockchip,pins = <2 RK_PA4 1 &pcfg_pull_default>;
+			};
+
+			flash_wrn: flash-wrn {
+				rockchip,pins = <2 RK_PA2 1 &pcfg_pull_default>;
+			};
+		};
+
 		emac {
 			emac_xfer: emac-xfer {
 				rockchip,pins = <2 RK_PB2 1 &pcfg_pull_default>, /* crs_dvalid */
-- 
2.17.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

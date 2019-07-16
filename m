Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 077AD6A9C7
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 15:40:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/AWFdK6PkgmFc3h1e/WA4eVtfouk2f2Te22qzareNOA=; b=RU6fDe07w1ydYv
	09IJeEBAmL8soFHWCzBqwIIRpZXcAbUx1BLgZJAD+T/R6iEFAfCraE75aP97FphjOTXMZj0oqz/0n
	eo5u2m88iTFw2oCCUC2LQNbPYInb3HMZY+P9lN/PDn8n7SLzGcCDDHshO1SjcgVhfe1dXn0z+qIR0
	s/uA1oWJda8DkfqPZib+i+LsEk1lFxwP75+zVEsWNeubMlJ45Ujqe2Eyh/Z9YMVtQfsRY1VhKD1L4
	EYIzXlBeZ2YNitvuEWTqEG/VPHLDFf5jzts6xpYXSVTdbDkKArVAvgOvQ3GW5I43KedVGkh+L94+s
	0LDp+GjSTXHncyvi8b0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnNge-0005p7-K6; Tue, 16 Jul 2019 13:40:08 +0000
Received: from gateway-a.fh-trier.de ([143.93.54.181])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnNgZ-0004vR-Vg
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 13:40:06 +0000
X-Virus-Scanned: by Amavisd-new + Sophos + ClamAV [Rechenzentrum Hochschule
 Trier (RZ/HT)]
Received: from hochschule-trier.de (owm2.fh-trier.de [143.93.54.169])
 by gateway-a.fh-trier.de (Postfix) with ESMTP id 4A5A418730D9
 for <linux-rockchip@lists.infradead.org>;
 Tue, 16 Jul 2019 15:34:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha1; c=simple/simple; d=hochschule-trier.de;
 s=default; t=1563284051; bh=qZcPzVsHQEiGO65dmWfFHX51WV0=;
 h=From:To:Subject:Date:Message-Id:MIME-Version:Content-Type;
 b=L0CageSyo4DismTwXw1/3E2bL4VAV3J9dVEkBwDrj4l8pFlecgFgyKyXuIjO6fY1y
 v7BQfokQfdx2BIOOWR+rLMLOtDmFhYztLeI4Xi1WSArqnjzwWkMOipt78YxISLweyL
 x5YSQLVBcmdkx4tKTqeQUWUvY8hKc9HGl12Mf8CU=
From: "Eric Auer, EMW-MT" <auere@hochschule-trier.de>
To: linux-rockchip@lists.infradead.org
Subject: RK3288 fast SPI DTS setting patches
Date: Tue, 16 Jul 2019 15:34:11 +0200
Message-Id: <20190716133056.M642@hochschule-trier.de>
X-Mailer: OpenWebMail 2.53 
X-OriginatingIP: 93.198.253.41 (auere)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_064004_473701_88FEB92F 
X-CRM114-Status: UNSURE (   2.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [143.93.54.181 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org


Dear list,

you may enjoy the patches below, regarding proper settings
for higher SPI clocks on RK3288. Thank you for having a look!

Base Version: Tinker OS 2.0.7 Linux Kernels Version 4.4.103
https://github.com/TinkerBoard/debian_kernel/tree/release

Regards, Eric



--- arch/arm/boot/dts/rk3288.dtsi.original	2018-06-01 04:25:35 +0200
+++ arch/arm/boot/dts/rk3288.dtsi	2018-08-07 19:04:10 +0200
@@ -373,8 +373,9 @@
 		dmas = <&dmac_peri 11>, <&dmac_peri 12>;
 		dma-names = "tx", "rx";
 		interrupts = <GIC_SPI 44 IRQ_TYPE_LEVEL_HIGH>;
-		pinctrl-names = "default";
+		pinctrl-names = "default", "high_speed";
 		pinctrl-0 = <&spi0_clk &spi0_tx &spi0_rx &spi0_cs0 &spi0_cs1>;
+		pinctrl-1 = <&spi0_clk_h &spi0_tx_h &spi0_rx_h &spi0_cs0_h &spi0_cs1_h>;
 		reg = <0x0 0xff110000 0x0 0x1000>;
 		#address-cells = <1>;
 		#size-cells = <0>;
@@ -403,9 +404,11 @@
 		dmas = <&dmac_peri 15>, <&dmac_peri 16>;
 		dma-names = "tx", "rx";
 		interrupts = <GIC_SPI 46 IRQ_TYPE_LEVEL_HIGH>;
-		pinctrl-names = "default";
-		//pinctrl-0 = <&spi2_clk &spi2_tx &spi2_rx &spi2_cs0 &spi2_cs1>;
+		pinctrl-names = "default", "high_speed";
+		// pinctrl-0 = <&spi2_clk &spi2_tx &spi2_rx &spi2_cs0 &spi2_cs1>;
 		pinctrl-0 = <&spi2_clk &spi2_tx &spi2_rx &spi2_cs0>;
+		// pinctrl-1 = <&spi2_clk_h &spi2_tx_h &spi2_rx_h &spi2_cs0_h &spi2_cs1_h>;
+		pinctrl-1 = <&spi2_clk_h &spi2_tx_h &spi2_rx_h &spi2_cs0_h>;
 		reg = <0x0 0xff130000 0x0 0x1000>;
 		#address-cells = <2>;
 		#size-cells = <0>;
@@ -2186,7 +2189,24 @@
 			spi0_cs1: spi0-cs1 {
 				rockchip,pins = <5 16 RK_FUNC_1 &pcfg_pull_up>;
 			};
+
+			spi0_clk_h: spi0-clk-h {
+				rockchip,pins = <5 12 RK_FUNC_1 &pcfg_pull_none_12ma>;
+			};
+			spi0_cs0_h: spi0-cs0-h {
+				rockchip,pins = <5 13 RK_FUNC_1 &pcfg_pull_none_12ma>;
+			};
+			spi0_tx_h: spi0-tx-h {
+				rockchip,pins = <5 14 RK_FUNC_1 &pcfg_pull_none_12ma>;
+			};
+			spi0_rx_h: spi0-rx-h {
+				rockchip,pins = <5 15 RK_FUNC_1 &pcfg_pull_up>;
+			};
+			spi0_cs1_h: spi0-cs1-h {
+				rockchip,pins = <5 16 RK_FUNC_1 &pcfg_pull_none_12ma>;
+			};
 		};
+
 		spi1 {
 			spi1_clk: spi1-clk {
 				rockchip,pins = <7 12 RK_FUNC_2 &pcfg_pull_up>;
@@ -2218,6 +2238,23 @@
 			spi2_tx: spi2-tx {
 				rockchip,pins = <8 9 RK_FUNC_1 &pcfg_pull_up>;
 			};
+
+			spi2_cs1_h: spi2-cs1-h {
+				rockchip,pins = <8 3 RK_FUNC_1 &pcfg_pull_none_12ma>;
+			};
+			spi2_clk_h: spi2-clk-h {
+				rockchip,pins = <8 6 RK_FUNC_1 &pcfg_pull_none_12ma>;
+			};
+			spi2_cs0_h: spi2-cs0-h {
+				rockchip,pins = <8 7 RK_FUNC_1 &pcfg_pull_none_12ma>;
+			};
+			spi2_rx_h: spi2-rx-h {
+				rockchip,pins = <8 8 RK_FUNC_1 &pcfg_pull_up>;
+			};
+			spi2_tx_h: spi2-tx-h {
+				rockchip,pins = <8 9 RK_FUNC_1 &pcfg_pull_none_12ma>;
+			};
+
 		};
 
 		uart0 {
--- arch/arm/boot/dts/rk3288-miniarm.dts.original	2018-06-01 04:25:35 +0200
+++ arch/arm/boot/dts/rk3288-miniarm.dts	2018-08-07 19:04:05 +0200
@@ -637,8 +637,9 @@
 &spi0 {
 	status = "okay";
 	max-freq = <50000000>;
-	pinctrl-names = "default";
+	pinctrl-names = "default", "high_speed";
 	pinctrl-0 = <&spi0_clk &spi0_tx &spi0_rx &spi0_cs0 &spi0_cs1>;
+	pinctrl-1 = <&spi0_clk_h &spi0_tx_h &spi0_rx_h &spi0_cs0_h &spi0_cs1_h>;
 	#address-cells = <1>;
 
 	spidev@0 {
@@ -659,8 +660,9 @@
 &spi2 {
 	status = "okay";
 	max-freq = <50000000>;
-	pinctrl-names = "default";
+	pinctrl-names = "default", "high_speed";
 	pinctrl-0 = <&spi2_clk &spi2_tx &spi2_rx &spi2_cs0 &spi2_cs1>;
+	pinctrl-1 = <&spi2_clk_h &spi2_tx_h &spi2_rx_h &spi2_cs0_h &spi2_cs1_h>;
 	#address-cells = <1>;
 
 	spidev@0 {



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B48C5FEC52
	for <lists+linux-rockchip@lfdr.de>; Sat, 16 Nov 2019 13:48:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=fjTSlJXZzD5gipB/G0NYSYRXgA8HoQrbBjrUN7dU/0U=; b=OKY
	UzvbsQun+G7iN7GuDa2YrYwOGgoe3DS72d6zxyKnoAo0wbs5UGxwTZRR7sDRlojMdO8kwXwExWVAK
	BbtgZMYR4he5eNmSUZfbkgpCMNYj+Zcn1dAMuPL4YguxRBEroVgrAQ3V62XaAm3H3s1MZkDyzYBFc
	665cvNlD8Bi5JMg3ZhIDZbAyTDBZI46SFKOwkrV6y5/xVje2ZSz57VvTD2suWW8qdzY+z6rEtCmrT
	F31EBankHcaq1j7B3KaLeMulyqwRuey12edT+Xw6tGbZqhLZ696p3u+m0QvBrXtvo0WWfoGoeMdF1
	8UTklC53gzcH9vdxt5WjIOBtCySWYAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVxV3-0007Qw-KK; Sat, 16 Nov 2019 12:48:25 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVxUf-000714-Lz; Sat, 16 Nov 2019 12:48:03 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DF658C86;
 Sat, 16 Nov 2019 04:47:57 -0800 (PST)
Received: from DESKTOP-VLO843J.lan (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 4141C3F534;
 Sat, 16 Nov 2019 04:47:57 -0800 (PST)
From: Robin Murphy <robin.murphy@arm.com>
To: heiko@sntech.de
Subject: [PATCH] arm64: dts: rockchip: Improve nanopi4 PCIe
Date: Sat, 16 Nov 2019 12:47:20 +0000
Message-Id: <a04a17f4b9b12e8698c76b34e7ca22f0c81845ce.1573908195.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191116_044801_759088_E177B4E3 
X-CRM114-Status: GOOD (  15.62  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Expand the power tree description with the 0V9 and 1V8 supplies to the
RK3399 PCIe block. The NanoPis M4 and NEO4 just route 2 lanes to the
user expansion pins, so there's not much more to say at the board level
for them; NanoPC-T4 has a standard M.2 connector so we can at least
claim the 3.3V supply to that too.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 .../boot/dts/rockchip/rk3399-nanopc-t4.dts    |  5 ++++
 .../boot/dts/rockchip/rk3399-nanopi4.dtsi     | 27 +++++++++++++++++--
 2 files changed, 30 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-nanopc-t4.dts b/arch/arm64/boot/dts/rockchip/rk3399-nanopc-t4.dts
index 6fe8bd604d6c..f399853c635a 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-nanopc-t4.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-nanopc-t4.dts
@@ -144,6 +144,11 @@
 	status = "okay";
 };
 
+&pcie0 {
+	num-lanes = <4>;
+	vpcie3v3-supply = <&vcc3v3_sys>;
+};
+
 &pinctrl {
 	ir {
 		ir_rx: ir-rx {
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
index 34b78ad4b6fa..778922ab1313 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
@@ -48,7 +48,7 @@
 	};
 
 	/* switched by pmic_sleep */
-	vcc1v8_s3: vcca1v8_s3: vcc1v8-s3 {
+	vcc1v8_s3: vcc1v8-s3 {
 		compatible = "regulator-fixed";
 		regulator-always-on;
 		regulator-boot-on;
@@ -71,6 +71,27 @@
 		vin-supply = <&vcc3v3_sys>;
 	};
 
+	/*
+	 * Really, this is supplied by vcc_1v8, and vcc1v8_s3 only
+	 * drives the enable pin, but we can't quite model that.
+	 */
+	vcca0v9_s3: vcca0v9-s3 {
+		compatible = "regulator-fixed";
+		regulator-min-microvolt = <900000>;
+		regulator-max-microvolt = <900000>;
+		regulator-name = "vcca0v9_s3";
+		vin-supply = <&vcc1v8_s3>;
+	};
+
+	/* As above, actually supplied by vcc3v3_sys */
+	vcca1v8_s3: vcca1v8-s3 {
+		compatible = "regulator-fixed";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		regulator-name = "vcca1v8_s3";
+		vin-supply = <&vcc1v8_s3>;
+	};
+
 	vbus_typec: vbus-typec {
 		compatible = "regulator-fixed";
 		regulator-min-microvolt = <5000000>;
@@ -510,7 +531,9 @@
 &pcie0 {
 	ep-gpios = <&gpio2 RK_PA4 GPIO_ACTIVE_HIGH>;
 	max-link-speed = <2>;
-	num-lanes = <4>;
+	num-lanes = <2>;
+	vpcie0v9-supply = <&vcca0v9_s3>;
+	vpcie1v8-supply = <&vcca1v8_s3>;
 	status = "okay";
 };
 
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

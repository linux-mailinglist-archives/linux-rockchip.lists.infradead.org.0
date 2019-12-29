Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E63D12CABD
	for <lists+linux-rockchip@lfdr.de>; Sun, 29 Dec 2019 21:16:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=gWRe8tGWM5w9HXLxZ1iqCz7LqNwO4QlldDfHJtltdAE=; b=Byt
	PiN18lzQmCYnWyY1GYw1IN3ymphd7Pd3j6+rFaoQ1+zJaA1MTL2gRlCTly6z/JsvnOT2YXDzE/plw
	GLQgrZpWxHGrYgHXTKcVsnhCF0zhm48QOQpeeAycQLC6z54/MkpYwFbIZPRHoNAFC4lKGNVcHlnAP
	cP0ESY3llrTjsdEdImGB6UunZbkOvTeL68gKwfgImPH89xX3anPNe8/ZpJ+BRvqSo/iRALkclMdR9
	3nIILzq1SXw1oZjt7cAEuALdvreOjec+kYRqifQZAf0rii4Z2LSVniP0sw0YVBaWT8SOwl4jbjoER
	J+yzGsreIxFdU2+thY/VyGTZmlkfjdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilezS-00087L-LU; Sun, 29 Dec 2019 20:16:42 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilezB-0007M5-Lz; Sun, 29 Dec 2019 20:16:27 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D66A81FB;
 Sun, 29 Dec 2019 12:16:23 -0800 (PST)
Received: from DESKTOP-VLO843J.localdomain (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id EB0173F237;
 Sun, 29 Dec 2019 12:16:22 -0800 (PST)
From: Robin Murphy <robin.murphy@arm.com>
To: heiko@sntech.de
Subject: [PATCH] arm64: dts: rockchip: Add RK3328 idle state
Date: Sun, 29 Dec 2019 20:16:17 +0000
Message-Id: <a8c83e705d387446ea8121516d410e38b2d9c57b.1577640736.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_121625_764137_10D7600A 
X-CRM114-Status: GOOD (  15.07  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

Downstream RK3328 DTBs describe a CPU idle state matching that present
on other SoCs like RK3399. This works with upstream Trusted Firmware-A
too, so let's add it here.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 arch/arm64/boot/dts/rockchip/rk3328.dtsi | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index 7df7daa188df..d71187cdd430 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -41,6 +41,7 @@
 			reg = <0x0 0x0>;
 			clocks = <&cru ARMCLK>;
 			#cooling-cells = <2>;
+			cpu-idle-states = <&CPU_SLEEP>;
 			dynamic-power-coefficient = <120>;
 			enable-method = "psci";
 			next-level-cache = <&l2>;
@@ -53,6 +54,7 @@
 			reg = <0x0 0x1>;
 			clocks = <&cru ARMCLK>;
 			#cooling-cells = <2>;
+			cpu-idle-states = <&CPU_SLEEP>;
 			dynamic-power-coefficient = <120>;
 			enable-method = "psci";
 			next-level-cache = <&l2>;
@@ -65,6 +67,7 @@
 			reg = <0x0 0x2>;
 			clocks = <&cru ARMCLK>;
 			#cooling-cells = <2>;
+			cpu-idle-states = <&CPU_SLEEP>;
 			dynamic-power-coefficient = <120>;
 			enable-method = "psci";
 			next-level-cache = <&l2>;
@@ -77,12 +80,26 @@
 			reg = <0x0 0x3>;
 			clocks = <&cru ARMCLK>;
 			#cooling-cells = <2>;
+			cpu-idle-states = <&CPU_SLEEP>;
 			dynamic-power-coefficient = <120>;
 			enable-method = "psci";
 			next-level-cache = <&l2>;
 			operating-points-v2 = <&cpu0_opp_table>;
 		};
 
+		idle-states {
+			entry-method = "psci";
+
+			CPU_SLEEP: cpu-sleep {
+				compatible = "arm,idle-state";
+				local-timer-stop;
+				arm,psci-suspend-param = <0x0010000>;
+				entry-latency-us = <120>;
+				exit-latency-us = <250>;
+				min-residency-us = <900>;
+			};
+		};
+
 		l2: l2-cache0 {
 			compatible = "cache";
 		};
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28A5D11296D
	for <lists+linux-rockchip@lfdr.de>; Wed,  4 Dec 2019 11:40:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RTUcEEvmw9Ix7UpXSB9po1nPWrVGyUClV78tE1EskMw=; b=mMOBNVjHKYH1eV
	D1zIU2ZcbMOgbPUJ2Eire+uwyNIcwjn0klBhEL8HHTI3SX7Z/PWCFIvC0VsWe8/k8JLSqthXojJng
	xrKfhZaiweOzo+IcUCJFVtYW00U8MYfbXBIBKIgZ4WKamFLtWLKPNNzioL4CV3pfEWFr1VWYgVTcW
	IIeSqGdtikgBnc/T6oo1F2/51JtOlyS0zOcYjq6Gp/W9fWrqAs4/s74+CumxYQaaZiZJfJm1hBdkO
	dlmtrctpG+rtFowoY5y0SGqBpeuCwEVwyoPqbCcf5BfaNK06KgaulInAw4m4xXKgwhTJ3YsmF9gXY
	SaK5SpQfkO/HbrNTvg5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icS4c-0000Go-9t; Wed, 04 Dec 2019 10:39:58 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icS4Y-0000GN-PN
 for linux-rockchip@lists.infradead.org; Wed, 04 Dec 2019 10:39:56 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id DA0A9E0012;
 Wed,  4 Dec 2019 10:39:42 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Heiko Stuebner <heiko@sntech.de>, <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 <devicetree@vger.kernel.org>
Subject: [PATCH] arm64: dts: rockchip: Describe PX30 caches
Date: Wed,  4 Dec 2019 11:39:40 +0100
Message-Id: <20191204103940.22050-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_023954_961612_B6AC9B27 
X-CRM114-Status: UNSURE (   7.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.196 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

PX30 SoCs feature 4 Cortex-A35 CPUs with each of them a L1 data and
instruction cache. Both are 32kiB wide (PX30 TRM) and made of 64-bit
lines (ARM Cortex-A35 manual). I-cache is 2-way set associative (ARM
Cortex-A35 manual), D-cache is 4-way set associative (ARM
Cortex-A35manual).

An L2 cache is placed after these 4 L1 caches (PX30 TRM), is 256kiB
wide (PX30 TRM) and made of 64-bit lines (ARM Cortex-A35 manual) and
is 8-way set associative (ARM Cortex-A35 manual).

Describe all of them in the PX30 DTSI.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 arch/arm64/boot/dts/rockchip/px30.dtsi | 35 ++++++++++++++++++++++++++
 1 file changed, 35 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
index 1fd12bd09e83..0e10a224a84b 100644
--- a/arch/arm64/boot/dts/rockchip/px30.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
@@ -48,6 +48,13 @@
 			cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP>;
 			dynamic-power-coefficient = <90>;
 			operating-points-v2 = <&cpu0_opp_table>;
+			i-cache-size = <0x8000>;
+			i-cache-line-size = <64>;
+			i-cache-sets = <256>;
+			d-cache-size = <0x8000>;
+			d-cache-line-size = <64>;
+			d-cache-sets = <128>;
+			next-level-cache = <&l2>;
 		};
 
 		cpu1: cpu@1 {
@@ -60,6 +67,13 @@
 			cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP>;
 			dynamic-power-coefficient = <90>;
 			operating-points-v2 = <&cpu0_opp_table>;
+			i-cache-size = <0x8000>;
+			i-cache-line-size = <64>;
+			i-cache-sets = <256>;
+			d-cache-size = <0x8000>;
+			d-cache-line-size = <64>;
+			d-cache-sets = <128>;
+			next-level-cache = <&l2>;
 		};
 
 		cpu2: cpu@2 {
@@ -72,6 +86,13 @@
 			cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP>;
 			dynamic-power-coefficient = <90>;
 			operating-points-v2 = <&cpu0_opp_table>;
+			i-cache-size = <0x8000>;
+			i-cache-line-size = <64>;
+			i-cache-sets = <256>;
+			d-cache-size = <0x8000>;
+			d-cache-line-size = <64>;
+			d-cache-sets = <128>;
+			next-level-cache = <&l2>;
 		};
 
 		cpu3: cpu@3 {
@@ -84,6 +105,13 @@
 			cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP>;
 			dynamic-power-coefficient = <90>;
 			operating-points-v2 = <&cpu0_opp_table>;
+			i-cache-size = <0x8000>;
+			i-cache-line-size = <64>;
+			i-cache-sets = <256>;
+			d-cache-size = <0x8000>;
+			d-cache-line-size = <64>;
+			d-cache-sets = <128>;
+			next-level-cache = <&l2>;
 		};
 
 		idle-states {
@@ -107,6 +135,13 @@
 				min-residency-us = <2000>;
 			};
 		};
+
+		l2: l2-cache {
+			compatible = "cache";
+			cache-size = <0x40000>;
+			cache-line-size = <64>;
+			cache-sets = <512>;
+		};
 	};
 
 	cpu0_opp_table: cpu0-opp-table {
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

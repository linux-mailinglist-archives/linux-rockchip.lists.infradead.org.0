Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39B1811309A
	for <lists+linux-rockchip@lfdr.de>; Wed,  4 Dec 2019 18:16:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JMa5Tn/1eDQI1RRg+MFIYiXGetWbhYCSXUyVWuduGSk=; b=JwkpV1rhtzx2PA
	7c/l1XuU9GbbhHFoguYvqylgHrxqI3pRVP5fgzGIYJmfCbY/M9CApUY4OopOl29zqqrSsIlWnIhIZ
	lw/0wKhtiRXk1V9wJ+p7Z122khwetFqhQGCs8z+2uqmj67Ji+E14iZjK5+WIE/Y4Q/AzG0uMlzoOo
	/ySVq2TCYmscnVtf75qCDjWciHv+gl3pxG6A09ZgA7yY4/7hAeLZQul8x9OxipZopBmrEHqCzwyv/
	ym7afQJNU2kzTRvqfiDcSiA63lYwHCKHrjXq06i0T3PSgBahhMMl04KQDXDuSYvaRKT9992n+KqUi
	FALKR21jwCqH9+jD24Rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icYGH-0003OF-3I; Wed, 04 Dec 2019 17:16:25 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icYG9-0003GW-An; Wed, 04 Dec 2019 17:16:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ij8Ymx9fXRmi18S2BeZ4NTRsV2HTl3Dfn56Xz0T9vVA=; b=nMk8j1REFJ/Hijzv0iBCdQkS+8
 r6JpUiboB68eNM6dqAGx2BOgY78UllVqMlitcl1Ck3VoaoeUgjH1zsgjbbxzy5euyj13zWVWZhPL2
 5I8VmZTCbZOmDV4+yYGMdPd/oH00Jgd67FCH1U2knWlfl9jcXcHUKF1LnM8z2z7RC1L2+r8SdRRK/
 Ai3Ap9Yvvc1U8LVJ4wBrfqW0KwDozxjEjwZMHiiMsFHAkPBjV4gYqLlKC1XJN2QFA18fXyMJnOHo1
 G1LZXwxRILVYjQoZa1OhQjxlE2eoGPKVHay8Wq5QrB7aFDmUyXY5xvoiZNjchLC39OgN9MkNDByvc
 SDOGrxhg==;
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icYG6-0003G4-65; Wed, 04 Dec 2019 17:16:15 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 6CCD9C0002;
 Wed,  4 Dec 2019 17:15:39 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Heiko Stuebner <heiko@sntech.de>, <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 <devicetree@vger.kernel.org>
Subject: [PATCH] arm64: dts: rockchip: Move xin32k fixed-clock out of PX30 DTSI
Date: Wed,  4 Dec 2019 18:15:37 +0100
Message-Id: <20191204171537.14163-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
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
Cc: linux-arm-kernel@lists.infradead.org,
 Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

This clock has nothing to do in the PX30 DTSI as it is supposed to be
an input of the SoC. Moving it to the EVB DTS (only board file using
this DTSI) makes more sense. Also, when this clock is not a fixed
clock and comes from eg. a PMIC the situation can be described cleanly
in the device tree (avoids having to delete the fixed-clock node
first).

This clock is not mandatory to boot so it should not break existing
users.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 arch/arm64/boot/dts/rockchip/px30-evb.dts | 7 +++++++
 arch/arm64/boot/dts/rockchip/px30.dtsi    | 7 -------
 2 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/px30-evb.dts b/arch/arm64/boot/dts/rockchip/px30-evb.dts
index 6eb7407a84aa..ee0b677209e4 100644
--- a/arch/arm64/boot/dts/rockchip/px30-evb.dts
+++ b/arch/arm64/boot/dts/rockchip/px30-evb.dts
@@ -89,6 +89,13 @@
 		regulator-min-microvolt = <5000000>;
 		regulator-max-microvolt = <5000000>;
 	};
+
+	xin32k: xin32k {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <32768>;
+		clock-output-names = "xin32k";
+	};
 };
 
 &display_subsystem {
diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
index 1fd12bd09e83..06328f1b05e8 100644
--- a/arch/arm64/boot/dts/rockchip/px30.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
@@ -195,13 +195,6 @@
 		clock-output-names = "xin24m";
 	};
 
-	xin32k: xin32k {
-		compatible = "fixed-clock";
-		#clock-cells = <0>;
-		clock-frequency = <32768>;
-		clock-output-names = "xin32k";
-	};
-
 	pmu: power-management@ff000000 {
 		compatible = "rockchip,px30-pmu", "syscon", "simple-mfd";
 		reg = <0x0 0xff000000 0x0 0x1000>;
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

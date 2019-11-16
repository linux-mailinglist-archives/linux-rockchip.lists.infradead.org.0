Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB578FEC53
	for <lists+linux-rockchip@lfdr.de>; Sat, 16 Nov 2019 13:48:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=405rOdxyn9gCoNCa79y2xbVkZo+7Lu3WPlMZNn5iyGA=; b=AAP
	0T7xVlQ1sN3rU0fsSgFNCqag5GXUYog8aE3HJwbQT4LsdRWF1mSOJIfC4nkxcv1fJVepdApXpfcKz
	LNvDF/6DBukb4FWEzJdlzEzxwoUOVm17vGU5EIYqPVun/mfrdKAlSxqakWFqY6P4jQaKLienrSNr8
	1MCxqzD3aRyvActPRIcq/IEyc8fFPGpo6cGS/pV1bIq7qXUyCFg+2Jpp/wk9DpviQJdfqffTjW9ZM
	P/DJgWmz6V5Ep6smsk9ZBXxCQQWAQDzJ1YISBvknoAhDsqyYh2EyloSmW62wdPqSyD3+0QlULJTL6
	nZxuqn4U95JTAsfdnIJooCZQ2k4/N/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVxV2-0007Pp-MN; Sat, 16 Nov 2019 12:48:24 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVxUf-000715-Lh; Sat, 16 Nov 2019 12:48:03 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 02C6230E;
 Sat, 16 Nov 2019 04:47:57 -0800 (PST)
Received: from DESKTOP-VLO843J.lan (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 552A13F534;
 Sat, 16 Nov 2019 04:47:56 -0800 (PST)
From: Robin Murphy <robin.murphy@arm.com>
To: heiko@sntech.de
Subject: [PATCH] arm64: dts: rockchip: Fix NanoPC-T4 cooling maps
Date: Sat, 16 Nov 2019 12:47:19 +0000
Message-Id: <5bb39f3115df1a487d717d3ae87e523b03749379.1573908197.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191116_044801_757151_6B8B2D07 
X-CRM114-Status: GOOD (  11.88  )
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

Although it appeared to follow logically from the bindings, apparently
the thermal framework can't properly cope with a single cooling device
being shared between multiple maps. The CPU zone is probably easier to
overheat, so remove the references to the (optional) fan from the GPU
cooling zone to avoid things getting confused. Hopefully GPU-intensive
tasks will leak enough heat across to the CPU zone to still hit the
fan trips before reaching critical GPU temperatures.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 .../boot/dts/rockchip/rk3399-nanopc-t4.dts    | 27 -------------------
 1 file changed, 27 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-nanopc-t4.dts b/arch/arm64/boot/dts/rockchip/rk3399-nanopc-t4.dts
index f399853c635a..f81a8429f139 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-nanopc-t4.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-nanopc-t4.dts
@@ -113,33 +113,6 @@
 	};
 };
 
-&gpu_thermal {
-	trips {
-		gpu_warm: gpu_warm {
-			temperature = <55000>;
-			hysteresis = <2000>;
-			type = "active";
-		};
-
-		gpu_hot: gpu_hot {
-			temperature = <65000>;
-			hysteresis = <2000>;
-			type = "active";
-		};
-	};
-	cooling-maps {
-		map1 {
-			trip = <&gpu_warm>;
-			cooling-device = <&fan THERMAL_NO_LIMIT 1>;
-		};
-
-		map2 {
-			trip = <&gpu_hot>;
-			cooling-device = <&fan 2 THERMAL_NO_LIMIT>;
-		};
-	};
-};
-
 &i2s0 {
 	status = "okay";
 };
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

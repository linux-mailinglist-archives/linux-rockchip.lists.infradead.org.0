Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 472571E68D0
	for <lists+linux-rockchip@lfdr.de>; Thu, 28 May 2020 19:45:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=89cO3LwAftWtX9VD8Icv23odO7W+cjLojzRxRDTIoxU=; b=csOVknt4e/0Hxf
	A68PwsFvlI3pyTwuMSexBZmrmOtWYoEYExZdvu376+NeSBXXyfhDcQ57jgIhbRIKz8BstKuStoVe8
	BX5HWD8dQCAc3v6k54Ij4KKEo8GFB+o9RqeP9fNHuoxasRWnRfEvUOBPaOgg2uqhqzim/MCxKJP8/
	1/3oPf8OFpelo5dQmaTQYy0168F7voFAW/efayEjpb9ErzoY5pndGKpAxgzT7hncSX22nLPM8cTSz
	UIo4/KRVynl8yFyzU5CRPIO8U1e9aMx2zcdBCCri7NzTAn76k9rGtnTgbrbMeb7JHpmhVaygqd4zA
	xgVwlCESA5GFd/xW2Kyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeMap-0006iI-7R; Thu, 28 May 2020 17:45:23 +0000
Received: from mail.manjaro.org ([176.9.38.148])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeMam-0006gt-1j
 for linux-rockchip@lists.infradead.org; Thu, 28 May 2020 17:45:21 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.manjaro.org (Postfix) with ESMTP id 62E2937CC722;
 Thu, 28 May 2020 19:26:14 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at manjaro.org
Received: from mail.manjaro.org ([127.0.0.1])
 by localhost (manjaro.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Kr2DGfvXLuqX; Thu, 28 May 2020 19:26:08 +0200 (CEST)
From: Tobias Schramm <t.schramm@manjaro.org>
To: Rob Herring <robh+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH 1/1] arm64: dts: rockchip: add fuel gauge to Pinebook Pro dts
Date: Thu, 28 May 2020 19:25:50 +0200
Message-Id: <20200528172550.2324722-2-t.schramm@manjaro.org>
In-Reply-To: <20200528172550.2324722-1-t.schramm@manjaro.org>
References: <20200528172550.2324722-1-t.schramm@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_104520_238362_B1289190 
X-CRM114-Status: UNSURE (   7.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [176.9.38.148 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Tobias Schramm <t.schramm@manjaro.org>, linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

This commit adds cw2015 fuel gauge and battery to the Pinebook Pro dts.

Signed-off-by: Tobias Schramm <t.schramm@manjaro.org>
---
 .../boot/dts/rockchip/rk3399-pinebook-pro.dts | 25 +++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
index 5ea281b55fe2..28afe89ca283 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
@@ -28,6 +28,13 @@ backlight: edp-backlight {
 		pwms = <&pwm0 0 740740 0>;
 	};
 
+	bat: battery {
+		compatible = "simple-battery";
+		charge-full-design-microamp-hours = <9800000>;
+		voltage-max-design-microvolt = <4350000>;
+		voltage-min-design-microvolt = <3000000>;
+	};
+
 	edp_panel: edp-panel {
 		compatible = "boe,nv140fhmn49";
 		backlight = <&backlight>;
@@ -740,6 +747,24 @@ usbc_dp: endpoint {
 			};
 		};
 	};
+
+	cw2015@62 {
+		compatible = "cellwise,cw2015";
+		reg = <0x62>;
+		cellwise,battery-profile = /bits/ 8 <
+			0x17 0x67 0x80 0x73 0x6E 0x6C 0x6B 0x63
+			0x77 0x51 0x5C 0x58 0x50 0x4C 0x48 0x36
+			0x15 0x0C 0x0C 0x19 0x5B 0x7D 0x6F 0x69
+			0x69 0x5B 0x0C 0x29 0x20 0x40 0x52 0x59
+			0x57 0x56 0x54 0x4F 0x3B 0x1F 0x7F 0x17
+			0x06 0x1A 0x30 0x5A 0x85 0x93 0x96 0x2D
+			0x48 0x77 0x9C 0xB3 0x80 0x52 0x94 0xCB
+			0x2F 0x00 0x64 0xA5 0xB5 0x11 0xF0 0x11
+		>;
+		cellwise,monitor-interval-ms = <5000>;
+		monitored-battery = <&bat>;
+		power-supplies = <&mains_charger>, <&fusb0>;
+	};
 };
 
 &i2s1 {
-- 
2.26.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

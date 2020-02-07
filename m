Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58693155912
	for <lists+linux-rockchip@lfdr.de>; Fri,  7 Feb 2020 15:13:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uc8Kl9zSvRbN0jw6aSuwOFxydJkwBwk3GxRn/eqLBSw=; b=t0jhOccfx+5A/V
	r2F9i1u8bOZqsyGXY2iLQ0J1NKQVuC3hR5QkvZ+BjHzaWabjwZtUmak8bnxsZzMz5QuHSl6QtTFVv
	Yun3O6z9FTsbOSh5MORg3dj1+2W/OIsbyUZgkEpu68oGnoBXPQoV8Nej3JREXkKXhJEODjbkjWwTv
	LfV+hQ4ivdWaC/TpwketbT6pUalPKN4Uv7v6M20g6W2T+NFaAWXNNc1rN23YcLQheBRMzTg1YfMJt
	O1pcT3MOIqMo9RzvEk56K6igPqauJtsAzdTLn0q9Wc/CQSs8VNCQU7vbjcmzu25MMHqfiiiu1K3Un
	GDF1khQcjn3L056Wm2tg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j04OC-0007bt-4e; Fri, 07 Feb 2020 14:13:48 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j04O4-0007UX-0e; Fri, 07 Feb 2020 14:13:41 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: eballetbo) with ESMTPSA id B13AD2958AC
From: Enric Balletbo i Serra <enric.balletbo@collabora.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: rk3399: Remove extcon unit address and
 extcon-cells from Gru
Date: Fri,  7 Feb 2020 15:13:24 +0100
Message-Id: <20200207141324.3188898-1-enric.balletbo@collabora.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200207_061340_185545_CE69C648 
X-CRM114-Status: GOOD (  10.31  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 dafna.hirschfeld@collabora.com, heiko@sntech.de,
 Marcel Holtmann <marcel@holtmann.org>, Brian Norris <briannorris@chromium.org>,
 Rob Herring <robh+dt@kernel.org>, linux-rockchip@lists.infradead.org,
 Matthias Kaehlcke <mka@chromium.org>,
 Collabora Kernel ML <kernel@collabora.com>,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

The cros-ec-extcon has no reg property so remove the unit address from
the DT node to make DT compiler happy.

While here, remove the inexistent extcon-cells property from the extcon
nodes.

Signed-off-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
---
Thanks to the Dafna's work and Rob's review I got noticed that the old
txt binding was wrong, and also, that the current cros-ec-extcon node in
Gru is wrong, so sending this patch now that is fresh in our minds and
update the node accordingly. There is an extcon-cells property that seems
to not exist and is not documented, so remove it.

For reference, see https://lkml.org/lkml/2020/2/5/176.

 arch/arm64/boot/dts/rockchip/rk3399-gru-chromebook.dtsi | 4 +---
 arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi            | 4 +---
 2 files changed, 2 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-gru-chromebook.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-gru-chromebook.dtsi
index 7cd6d470c1cb..1384dabbdf40 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-gru-chromebook.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-gru-chromebook.dtsi
@@ -291,11 +291,9 @@ cros_ec_pwm: ec-pwm {
 		#pwm-cells = <1>;
 	};
 
-	usbc_extcon1: extcon@1 {
+	usbc_extcon1: extcon1 {
 		compatible = "google,extcon-usbc-cros-ec";
 		google,usb-port-id = <1>;
-
-		#extcon-cells = <0>;
 	};
 };
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi
index dd5624975c9b..2f3997740068 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi
@@ -570,11 +570,9 @@ i2c_tunnel: i2c-tunnel {
 			#size-cells = <0>;
 		};
 
-		usbc_extcon0: extcon@0 {
+		usbc_extcon0: extcon0 {
 			compatible = "google,extcon-usbc-cros-ec";
 			google,usb-port-id = <0>;
-
-			#extcon-cells = <0>;
 		};
 	};
 };
-- 
2.24.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

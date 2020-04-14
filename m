Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B33351A8540
	for <lists+linux-rockchip@lfdr.de>; Tue, 14 Apr 2020 18:40:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0VSNqZoH9fCGV/TfWP05L3x1NdIcophrJJUd7MJ3Ac0=; b=PDHGATTKhBoaeJ
	wKKE3DcJz+lZyjpYDYTBKfMXch2ljOk751nahpWthHFj+XfUYpET2fbeLw8aU7iPNC3LqoqHxzQbe
	sO3kcuQa3PI3NvziezDD8N+6eFJypPwn9Dl+jMNL5/LxYUxjF5u41qrmFKe6sMLlpXWl1ckQKq2TT
	WS39xHEgCBCGpSoY1FJ0bw4p1HhmxX4GMfkmmkoNHKWtCBOV9M6iIFF1tZJVSwOR5o61kxpDbVLho
	mRWafx1SeqFS4U91xMDBPa5VQK1cWGQlPJUvf2QbgmTD97CkWGP/mkVL7IRrqBg7z3JeGQlz/bW0S
	agEBRZiGHHreqjhVUxFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOObf-00021O-UA; Tue, 14 Apr 2020 16:40:15 +0000
Received: from mail.manjaro.org ([176.9.38.148])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOOba-0001rP-Kd
 for linux-rockchip@lists.infradead.org; Tue, 14 Apr 2020 16:40:11 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.manjaro.org (Postfix) with ESMTP id 965683742B3A;
 Tue, 14 Apr 2020 18:40:08 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at manjaro.org
Received: from mail.manjaro.org ([127.0.0.1])
 by localhost (manjaro.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sjrZlbV75HIo; Tue, 14 Apr 2020 18:40:01 +0200 (CEST)
From: Tobias Schramm <t.schramm@manjaro.org>
To: Rob Herring <robh+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH 1/2] arm64: dts: rockchip: fix inverted headphone detection
Date: Tue, 14 Apr 2020 18:39:51 +0200
Message-Id: <20200414163952.1093784-2-t.schramm@manjaro.org>
In-Reply-To: <20200414163952.1093784-1-t.schramm@manjaro.org>
References: <20200414163952.1093784-1-t.schramm@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_094010_820513_B2789E04 
X-CRM114-Status: GOOD (  10.45  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [176.9.38.148 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Tobias Schramm <t.schramm@manjaro.org>, linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On the Pinebook Pro the headphone jack is dual use. It can be used either
as a normal headphone jack or as a debug serial connection. This
functionality is controlled via a small hardware switch on the mainboard.
Unfortunately flipping this switch biases the headphone detection switch
inside the headphone jack at 3.3 V if in `debug UART` position but
to GND when in `headphone out` position.
This results in an inversion of the headphone detection logic depending
on the switch position.
Since the headphone jack can only be used for audio when in
`headphone out` position this commit changes the headphone detect GPIO
logic to be correct for that case rather than for the debug UART.

Signed-off-by: Tobias Schramm <t.schramm@manjaro.org>
---
 arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
index 5ea281b55fe2..c3f15f5bd550 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
@@ -147,7 +147,7 @@ es8316-sound {
 			"Speaker", "Speaker Amplifier OUTL",
 			"Speaker", "Speaker Amplifier OUTR";
 
-		simple-audio-card,hp-det-gpio = <&gpio0 RK_PB0 GPIO_ACTIVE_LOW>;
+		simple-audio-card,hp-det-gpio = <&gpio0 RK_PB0 GPIO_ACTIVE_HIGH>;
 		simple-audio-card,aux-devs = <&speaker_amp>;
 		simple-audio-card,pin-switches = "Speaker";
 
@@ -794,7 +794,7 @@ dc_det_gpio: dc-det-gpio {
 
 	es8316 {
 		hp_det_gpio: hp-det-gpio {
-			rockchip,pins = <0 RK_PB0 RK_FUNC_GPIO &pcfg_pull_down>;
+			rockchip,pins = <0 RK_PB0 RK_FUNC_GPIO &pcfg_pull_up>;
 		};
 	};
 
-- 
2.26.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

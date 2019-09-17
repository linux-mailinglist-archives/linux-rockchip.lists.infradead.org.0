Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79B43B4987
	for <lists+linux-rockchip@lfdr.de>; Tue, 17 Sep 2019 10:30:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kZZcWtBW4fAkm5v/VCdK7FbhE6YjeptXBX8LCNjKIJM=; b=ElPJLPefDXuLuL
	bIvSr4T9gIZI4IkMPhKvSolK+C3TdmOrZ/4tDtE14yI/A2koR06l+K4nGR9M6Kp8FJXAX6jjuMrK9
	4liJxJBXdIzdqD2xVpRYUokiSQpRdZUp4EpoAMm7TuLAz7CYzJ4SpFroIK8dRPsnZxTJELgefHuwr
	IRyiBFK3eU3zPkpjGjxiOkRnfLEEzD9+AsZ08GWsUyCi/bWvjiY/XZ0Kp2Sl5mgwuPCLiKMtapN6p
	6p69bLJthADVYJ8lNCkeMRbExOHC3kklcXvb2/1QrWW6jjLEMrSWsGNDZnw+xZgwkqVHN1c9hrSrd
	FTJ4F1BqHbVfHHzfAL8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iA8sY-0006Ev-J8; Tue, 17 Sep 2019 08:30:30 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iA8pM-0002Hb-PM; Tue, 17 Sep 2019 08:27:14 +0000
Received: from ip5f5a6266.dynamic.kabel-deutschland.de ([95.90.98.102]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iA8pJ-0005ZY-A5; Tue, 17 Sep 2019 10:27:09 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 08/13] arm64: dts: rockchip: remove unused pin settings from
 px30
Date: Tue, 17 Sep 2019 10:26:54 +0200
Message-Id: <20190917082659.25549-8-heiko@sntech.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190917082659.25549-1-heiko@sntech.de>
References: <20190917082659.25549-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_012713_026244_86E0E597 
X-CRM114-Status: UNSURE (   9.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 christoph.muellner@theobroma-systems.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

These are unused gpio-settings for specific function pins, that
are not used by anything and only clutter up the dtsi.
They can be re-added when a relevant user is added.

Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 arch/arm64/boot/dts/rockchip/px30.dtsi | 40 --------------------------
 1 file changed, 40 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
index f2bbdfa0e4aa..63499d27994c 100644
--- a/arch/arm64/boot/dts/rockchip/px30.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
@@ -1159,11 +1159,6 @@
 				rockchip,pins =
 					<0 RK_PB5 1 &pcfg_pull_none>;
 			};
-
-			uart0_rts_gpio: uart0-rts-gpio {
-				rockchip,pins =
-					<0 RK_PB5 RK_FUNC_GPIO &pcfg_pull_none>;
-			};
 		};
 
 		uart1 {
@@ -1182,11 +1177,6 @@
 				rockchip,pins =
 					<1 RK_PC3 1 &pcfg_pull_none>;
 			};
-
-			uart1_rts_gpio: uart1-rts-gpio {
-				rockchip,pins =
-					<1 RK_PC3 RK_FUNC_GPIO &pcfg_pull_none>;
-			};
 		};
 
 		uart2-m0 {
@@ -1221,11 +1211,6 @@
 				rockchip,pins =
 					<0 RK_PC3 2 &pcfg_pull_none>;
 			};
-
-			uart3m0_rts_gpio: uart3m0-rts-gpio {
-				rockchip,pins =
-					<0 RK_PC3 RK_FUNC_GPIO &pcfg_pull_none>;
-			};
 		};
 
 		uart3-m1 {
@@ -1244,11 +1229,6 @@
 				rockchip,pins =
 					<1 RK_PB5 2 &pcfg_pull_none>;
 			};
-
-			uart3m1_rts_gpio: uart3m1-rts-gpio {
-				rockchip,pins =
-					<1 RK_PB5 RK_FUNC_GPIO &pcfg_pull_none>;
-			};
 		};
 
 		uart4 {
@@ -1597,16 +1577,6 @@
 					<1 RK_PD4 1 &pcfg_pull_up_8ma>,
 					<1 RK_PD5 1 &pcfg_pull_up_8ma>;
 			};
-
-			sdmmc_gpio: sdmmc-gpio {
-				rockchip,pins =
-					<1 RK_PD2 RK_FUNC_GPIO &pcfg_pull_up_4ma>,
-					<1 RK_PD3 RK_FUNC_GPIO &pcfg_pull_up_4ma>,
-					<1 RK_PD4 RK_FUNC_GPIO &pcfg_pull_up_4ma>,
-					<1 RK_PD5 RK_FUNC_GPIO &pcfg_pull_up_4ma>,
-					<1 RK_PD6 RK_FUNC_GPIO &pcfg_pull_up_4ma>,
-					<1 RK_PD7 RK_FUNC_GPIO &pcfg_pull_up_4ma>;
-			};
 		};
 
 		sdio {
@@ -1627,16 +1597,6 @@
 					<1 RK_PD0 1 &pcfg_pull_up>,
 					<1 RK_PD1 1 &pcfg_pull_up>;
 			};
-
-			sdio_gpio: sdio-gpio {
-				rockchip,pins =
-					<1 RK_PC6 RK_FUNC_GPIO &pcfg_pull_up>,
-					<1 RK_PC7 RK_FUNC_GPIO &pcfg_pull_up>,
-					<1 RK_PD0 RK_FUNC_GPIO &pcfg_pull_up>,
-					<1 RK_PD1 RK_FUNC_GPIO &pcfg_pull_up>,
-					<1 RK_PC4 RK_FUNC_GPIO &pcfg_pull_up>,
-					<1 RK_PC5 RK_FUNC_GPIO &pcfg_pull_up>;
-			};
 		};
 
 		emmc {
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

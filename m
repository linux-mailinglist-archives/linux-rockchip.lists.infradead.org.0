Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F1AAF626F
	for <lists+linux-rockchip@lfdr.de>; Sun, 10 Nov 2019 03:43:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NKJ56C+LztAVuAtfrMHd9fGuedtORfcNsH3220saY/0=; b=C6suHSD1IaVlZR
	LWHzOkLqPh0sqQtVv6Eq62RZX4yr7ffDws4pIYaiaBl5bcl6LM3/3X6cuNH4Bd7tecmczwSY+kRzw
	MqpDlDurryjRMVOUYWq2Zdlk7gUFf9iRHX3wuQeJp1MJp8ZNX1CFRLLc7lq5Pt/4giWj+aQ/wFd+k
	r/xqCzmmLyFpCANi8Ycc8QigV8E+/PuPiade4379W1aJLy2BL3MM4P2GVL0PHx8OJ1h7dc5nTkoQI
	fCQcsr/KyyleAgsTFMotPlvQ2o37u7PFMr4Xdnn9gcbQufT8+Bpnwk92MU9uLlIgjd05wuuGK3p9Z
	MUNXNptw2uU2POJZA8Mg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTdC5-0001Ou-Hi; Sun, 10 Nov 2019 02:43:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTdC1-0001NV-S9
 for linux-rockchip@lists.infradead.org; Sun, 10 Nov 2019 02:43:11 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C9CC421D7F;
 Sun, 10 Nov 2019 02:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573353789;
 bh=ByuvaCReSwTbqx+/Op8hRookNfLer/LSlYjAuurYbG8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=1SDzlpRSQRNmiANasaQXKkpjWOcpSnlufs//xqMoWLeTBLLheWmR5hM9xVsGDdvBZ
 D6IPH0KSw8Fs/74RiXSuDKlqrkx4pXv+OubuSxe0nKr08rtEEu7GDNoKow2+5LSPwG
 Cd0+3Jd2D25x7xjtqC0r4mrqO9kzlcNjVKmIJR58=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 090/191] arm64: dts: rockchip: Fix microSD in
 rk3399 sapphire board
Date: Sat,  9 Nov 2019 21:38:32 -0500
Message-Id: <20191110024013.29782-90-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191110024013.29782-1-sashal@kernel.org>
References: <20191110024013.29782-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191109_184309_959414_42D71891 
X-CRM114-Status: GOOD (  14.62  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sasha Levin <sashal@kernel.org>, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>, Vicente Bergas <vicencb@gmail.com>,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

From: Vicente Bergas <vicencb@gmail.com>

[ Upstream commit 88a20edf76091ee7f1bb459b89d714d53f0f8940 ]

The microSD card slot in the Sapphire board is not working because of
several issues:
 1.- The vmmc power supply is missing in the DTS. It is capable of 3.0V
 and has a GPIO-based enable control.
 2.- The vqmmc power supply can provide up to 3.3V, but it is capped in
 the DTS to just 3.0V because of the vmmc capability. This results in a
 conflict from the mmc driver requesting an unsupportable voltage range
 from 3.3V to 3.0V (min > max) as reported in dmesg. So, extend the
 range up to 3.3V. The hw should be able to stand this 0.3V tolerance.
 See mmc_regulator_set_vqmmc in drivers/mmc/core/core.c.
 3.- The card detect signal is non-working. There is a known conflict
 with jtag, but the workaround in drivers/soc/rockchip/grf.c does not
 work. Adding the broken-cd attribute to the DTS fixes the issue.

Signed-off-by: Vicente Bergas <vicencb@gmail.com>
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 .../boot/dts/rockchip/rk3399-sapphire.dtsi    | 24 ++++++++++++++++++-
 1 file changed, 23 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi
index 36b60791c156d..780e5e298d8bd 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi
@@ -93,6 +93,19 @@
 		vin-supply = <&vcc_1v8>;
 	};
 
+	vcc3v0_sd: vcc3v0-sd {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio0 RK_PA1 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&sdmmc0_pwr_h>;
+		regulator-always-on;
+		regulator-max-microvolt = <3000000>;
+		regulator-min-microvolt = <3000000>;
+		regulator-name = "vcc3v0_sd";
+		vin-supply = <&vcc3v3_sys>;
+	};
+
 	vcc3v3_sys: vcc3v3-sys {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc3v3_sys";
@@ -310,7 +323,7 @@
 				regulator-always-on;
 				regulator-boot-on;
 				regulator-min-microvolt = <1800000>;
-				regulator-max-microvolt = <3000000>;
+				regulator-max-microvolt = <3300000>;
 				regulator-state-mem {
 					regulator-on-in-suspend;
 					regulator-suspend-microvolt = <3000000>;
@@ -469,6 +482,13 @@
 		};
 	};
 
+	sd {
+		sdmmc0_pwr_h: sdmmc0-pwr-h {
+			rockchip,pins =
+				<RK_GPIO0 RK_PA1 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	usb2 {
 		vcc5v0_host_en: vcc5v0-host-en {
 			rockchip,pins =
@@ -499,6 +519,7 @@
 };
 
 &sdmmc {
+	broken-cd;
 	bus-width = <4>;
 	cap-mmc-highspeed;
 	cap-sd-highspeed;
@@ -507,6 +528,7 @@
 	max-frequency = <150000000>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&sdmmc_clk &sdmmc_cmd &sdmmc_cd &sdmmc_bus4>;
+	vmmc-supply = <&vcc3v0_sd>;
 	vqmmc-supply = <&vcc_sdio>;
 	status = "okay";
 };
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

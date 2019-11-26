Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0884E10A2DC
	for <lists+linux-rockchip@lfdr.de>; Tue, 26 Nov 2019 17:56:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NP1dyQ5VV5S2uOOZnKvDbKBsErPbnRX3NRywCV4PfYE=; b=ojpA1Huj7yJ00c
	5SRXzgGHaiLKvHKD0Y7uGADlbC2cK0guX3BENe27lTe1FNt9kB9nFbrdeyoGwSZ8Sq+n8mB+m6AC/
	0O9tnpIXpO8oeZORcRH69P1vjA0u/uufFZFqJCvdMgaV5vu1zZGjOVSUeuaWQe/lXa1HhGcySGOg9
	JMpEqzLkN9G033IFp8zI/1D6ZQzhb01YAanE0H1XqjF9t1fa2ZgJgKrL02rsCS5rsH2AxESkSST3u
	HaS126SVJoRHPG6a8qzIkz0NlGMueBq3qNOsiRexr5KVJ1W+QKPVuRoOCLdZ5UGkBsRW/tQmIMlBS
	vEBlUW87Gep40xpNrcXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZe8C-0004sL-Eq; Tue, 26 Nov 2019 16:56:04 +0000
Received: from www1102.sakura.ne.jp ([219.94.129.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZe85-0004MW-5K
 for linux-rockchip@lists.infradead.org; Tue, 26 Nov 2019 16:55:59 +0000
Received: from fsav402.sakura.ne.jp (fsav402.sakura.ne.jp [133.242.250.101])
 by www1102.sakura.ne.jp (8.15.2/8.15.2) with ESMTP id xAQGtfEc076814;
 Wed, 27 Nov 2019 01:55:41 +0900 (JST)
 (envelope-from katsuhiro@katsuster.net)
Received: from www1102.sakura.ne.jp (219.94.129.142)
 by fsav402.sakura.ne.jp (F-Secure/fsigk_smtp/550/fsav402.sakura.ne.jp);
 Wed, 27 Nov 2019 01:55:41 +0900 (JST)
X-Virus-Status: clean(F-Secure/fsigk_smtp/550/fsav402.sakura.ne.jp)
Received: from localhost.localdomain (121.252.232.153.ap.dti.ne.jp
 [153.232.252.121]) (authenticated bits=0)
 by www1102.sakura.ne.jp (8.15.2/8.15.2) with ESMTPSA id xAQGtahH076800
 (version=TLSv1.2 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
 Wed, 27 Nov 2019 01:55:41 +0900 (JST)
 (envelope-from katsuhiro@katsuster.net)
From: Katsuhiro Suzuki <katsuhiro@katsuster.net>
To: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org
Subject: [PATCH] arm64: dts: rockchip: split rk3399-rockpro64 for v2 and v2.1
 boards
Date: Wed, 27 Nov 2019 01:55:29 +0900
Message-Id: <20191126165529.30703-1-katsuhiro@katsuster.net>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_085557_589328_A919FC25 
X-CRM114-Status: GOOD (  13.26  )
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
Cc: Katsuhiro Suzuki <katsuhiro@katsuster.net>,
 Vasily Khoruzhick <anarsoul@gmail.com>, Hugh Cole-Baker <sigmaris@gmail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

This patch splits rk3399-rockpro64 dts file to 2 files for v2 and
v2.1 boards.

Both v2 and v2.1 boards can use almost same settings but we find a
difference in I2C address of audio CODEC ES8136.

Reported-by: Vasily Khoruzhick <anarsoul@gmail.com>
Signed-off-by: Katsuhiro Suzuki <katsuhiro@katsuster.net>
---
 arch/arm64/boot/dts/rockchip/Makefile         |  3 +-
 .../dts/rockchip/rk3399-rockpro64-v2.1.dts    | 30 +++++++++++++++++++
 .../boot/dts/rockchip/rk3399-rockpro64-v2.dts | 30 +++++++++++++++++++
 ...99-rockpro64.dts => rk3399-rockpro64.dtsi} | 18 -----------
 4 files changed, 62 insertions(+), 19 deletions(-)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-rockpro64-v2.1.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-rockpro64-v2.dts
 rename arch/arm64/boot/dts/rockchip/{rk3399-rockpro64.dts => rk3399-rockpro64.dtsi} (97%)

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index 48fb631d5451..3debaeb517fd 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -33,6 +33,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-roc-pc.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-roc-pc-mezzanine.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rock-pi-4.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rock960.dtb
-dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rockpro64.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rockpro64-v2.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rockpro64-v2.1.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-sapphire.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-sapphire-excavator.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64-v2.1.dts b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64-v2.1.dts
new file mode 100644
index 000000000000..9450207bedad
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64-v2.1.dts
@@ -0,0 +1,30 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2017 Fuzhou Rockchip Electronics Co., Ltd.
+ * Copyright (c) 2018 Akash Gajjar <Akash_Gajjar@mentor.com>
+ * Copyright (c) 2019 Katsuhiro Suzuki <katsuhiro@katsuster.net>
+ */
+
+/dts-v1/;
+#include "rk3399-rockpro64.dtsi"
+
+/ {
+	model = "Pine64 RockPro64 v2.1";
+	compatible = "pine64,rockpro64", "rockchip,rk3399";
+};
+
+&i2c1 {
+	es8316: codec@11 {
+		compatible = "everest,es8316";
+		reg = <0x11>;
+		clocks = <&cru SCLK_I2S_8CH_OUT>;
+		clock-names = "mclk";
+		#sound-dai-cells = <0>;
+
+		port {
+			es8316_p0_0: endpoint {
+				remote-endpoint = <&i2s1_p0_0>;
+			};
+		};
+	};
+};
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64-v2.dts b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64-v2.dts
new file mode 100644
index 000000000000..7bd37eaa1d57
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64-v2.dts
@@ -0,0 +1,30 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2017 Fuzhou Rockchip Electronics Co., Ltd.
+ * Copyright (c) 2018 Akash Gajjar <Akash_Gajjar@mentor.com>
+ * Copyright (c) 2019 Katsuhiro Suzuki <katsuhiro@katsuster.net>
+ */
+
+/dts-v1/;
+#include "rk3399-rockpro64.dtsi"
+
+/ {
+	model = "Pine64 RockPro64 v2";
+	compatible = "pine64,rockpro64", "rockchip,rk3399";
+};
+
+&i2c1 {
+	es8316: codec@10 {
+		compatible = "everest,es8316";
+		reg = <0x10>;
+		clocks = <&cru SCLK_I2S_8CH_OUT>;
+		clock-names = "mclk";
+		#sound-dai-cells = <0>;
+
+		port {
+			es8316_p0_0: endpoint {
+				remote-endpoint = <&i2s1_p0_0>;
+			};
+		};
+	};
+};
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
similarity index 97%
rename from arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
rename to arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
index 7f4b2eba31d4..183eda4ffb9c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
@@ -4,16 +4,12 @@
  * Copyright (c) 2018 Akash Gajjar <Akash_Gajjar@mentor.com>
  */
 
-/dts-v1/;
 #include <dt-bindings/input/linux-event-codes.h>
 #include <dt-bindings/pwm/pwm.h>
 #include "rk3399.dtsi"
 #include "rk3399-opp.dtsi"
 
 / {
-	model = "Pine64 RockPro64";
-	compatible = "pine64,rockpro64", "rockchip,rk3399";
-
 	chosen {
 		stdout-path = "serial2:1500000n8";
 	};
@@ -476,20 +472,6 @@ &i2c1 {
 	i2c-scl-rising-time-ns = <300>;
 	i2c-scl-falling-time-ns = <15>;
 	status = "okay";
-
-	es8316: codec@11 {
-		compatible = "everest,es8316";
-		reg = <0x11>;
-		clocks = <&cru SCLK_I2S_8CH_OUT>;
-		clock-names = "mclk";
-		#sound-dai-cells = <0>;
-
-		port {
-			es8316_p0_0: endpoint {
-				remote-endpoint = <&i2s1_p0_0>;
-			};
-		};
-	};
 };
 
 &i2c3 {
-- 
2.24.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

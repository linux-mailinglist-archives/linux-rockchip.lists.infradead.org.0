Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE3D21B85D4
	for <lists+linux-rockchip@lfdr.de>; Sat, 25 Apr 2020 12:53:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=+X96Pp2ejL2FgpbcS4wDRKNKAiZo7Jg+66s1E7YJqV0=; b=Iz3V62TG4xfwLU5tIIpGGmcOp8
	+Zz/ber/15jZTO0km6MLwZNt8YwacnQ1qhZEhKSk5E1rAgdEz8RoH2Ird66Y/xbwwfLkrCIm13bPD
	U7QggHG9Q8SNzbyG2xPCLUjzIcZA5huQ3vbDx8/kwDbp4CzRKou/pMYr39Sx2Vdt0iAfr4pGw/zaA
	4jOuL3cTZWzycFwsbk+4TTKWL9F5i2+nFjcJRi95EiGad8DgeGsm+MfaPQ6voknFuic3Da9IGnTCZ
	WUD34FBWwv4ZEJ4NArPsZRNdfm7SJcsPlBLHyXBuB17nbwcoBSlikyGJ9aG+mARXa754sEAJxrmfF
	psoJ/wQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSIRX-00082M-72; Sat, 25 Apr 2020 10:53:55 +0000
Received: from mail-pj1-x102f.google.com ([2607:f8b0:4864:20::102f])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSIRT-00080w-5c
 for linux-rockchip@lists.infradead.org; Sat, 25 Apr 2020 10:53:52 +0000
Received: by mail-pj1-x102f.google.com with SMTP id e6so4974403pjt.4
 for <linux-rockchip@lists.infradead.org>; Sat, 25 Apr 2020 03:53:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=QYblLEpBV9ju1D5Vg6djnUr+yY8gBY14dCc+wH2qPtM=;
 b=pZZ2h3MdziFa9rW6imz0MZvePBKONpwO8pxd34a7hGHhoQ8dRc85D1pcSEQwfQBBIP
 7wbynRsU+MEpJgtXl2Pkt+EEdLX0HXTqWwl+nxjJ0iScRvljCLwc7F7odjzX0Nmf4bn8
 W7poEmYCImapQwWSDTEJWiEkV5b3MAbY4y7rI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=QYblLEpBV9ju1D5Vg6djnUr+yY8gBY14dCc+wH2qPtM=;
 b=S1ZtWd/8XwW77m6SBhVavVfNfn8fVSiYOzX9v3eqz9EL9WYdojpIBFM4ub6bx4rDMJ
 AU6gt1aR98yEreduF7TigoYbJjUa5zOCwoRPwK16cIIO5D0cQ4PnkFaSuB/ykemwZP5n
 eIFg6UyRP1K4wq61TaeYXl+5Yh2oXTfra2wftqCllnev2NVRKzqMeO9R6A3/YYbeTlQy
 zpU/aAvAwsZj26VDTWCxFtlTF5UIj3YMk1+WHSR3lGME+k9CTk17xeO6n+eN8FDmhINY
 gGMjoZ5Q6r9GWn2U2aKbHl0SSQk5M2l8So6yGLC3mZRxkhOjG9860zGCtoLREHyW0Pa4
 LVZg==
X-Gm-Message-State: AGi0PuZvGx+Y4HeongLj266uJ+rihnZZ5RBRMJu1OrRffbRqI/iPh0ha
 TresHn3NmrSx2Y2zijsy1dPTEg==
X-Google-Smtp-Source: APiQypKqHyLZ27JE6mDvcyXEGOg7AeNAcvzEbPEYSYNxoRxUbaYYWRHd+E/5pPzm+fhR6NmuXzlWOQ==
X-Received: by 2002:a17:902:ee15:: with SMTP id
 z21mr13424374plb.71.1587812030368; 
 Sat, 25 Apr 2020 03:53:50 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:1d46:fa69:c34:93dc])
 by smtp.gmail.com with ESMTPSA id
 u188sm7996303pfu.33.2020.04.25.03.53.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 25 Apr 2020 03:53:49 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH 5/6] arm: dts: rk3399: Sync roc-pc-mezzanine from v5.7-rc1
Date: Sat, 25 Apr 2020 16:23:18 +0530
Message-Id: <20200425105319.12009-6-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200425105319.12009-1-jagan@amarulasolutions.com>
References: <20200425105319.12009-1-jagan@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200425_035351_214262_BD5F96A8 
X-CRM114-Status: GOOD (  11.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: u-boot@lists.denx.de, linux-rockchip@lists.infradead.org,
 linux-amarula@amarulasolutions.com, Jagan Teki <jagan@amarulasolutions.com>,
 sunil@amarulasolutions.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Sync Firefly ROC-RK3399-PC Mezzanine Board dts file
from Linux v5.7-rc1.

Signed-off-by: Suniel Mahesh <sunil@amarulasolutions.com>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm/dts/Makefile                    |  1 +
 arch/arm/dts/rk3399-roc-pc-mezzanine.dts | 93 ++++++++++++++++++++++++
 2 files changed, 94 insertions(+)
 create mode 100644 arch/arm/dts/rk3399-roc-pc-mezzanine.dts

diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 6d1e8668e7..747f5f1e8a 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -129,6 +129,7 @@ dtb-$(CONFIG_ROCKCHIP_RK3399) += \
 	rk3399-puma-ddr1600.dtb \
 	rk3399-puma-ddr1866.dtb \
 	rk3399-roc-pc.dtb \
+	rk3399-roc-pc-mezzanine.dtb \
 	rk3399-rock-pi-4.dtb \
 	rk3399-rock960.dtb \
 	rk3399-rockpro64.dtb
diff --git a/arch/arm/dts/rk3399-roc-pc-mezzanine.dts b/arch/arm/dts/rk3399-roc-pc-mezzanine.dts
new file mode 100644
index 0000000000..2acb3d500f
--- /dev/null
+++ b/arch/arm/dts/rk3399-roc-pc-mezzanine.dts
@@ -0,0 +1,93 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2017 T-Chip Intelligent Technology Co., Ltd
+ * Copyright (c) 2019 Markus Reichl <m.reichl@fivetechno.de>
+ */
+
+/dts-v1/;
+#include "rk3399-roc-pc.dtsi"
+
+/ {
+	model = "Firefly ROC-RK3399-PC Mezzanine Board";
+	compatible = "firefly,roc-rk3399-pc-mezzanine", "rockchip,rk3399";
+
+	vcc3v3_ngff: vcc3v3-ngff {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc3v3_ngff";
+		enable-active-high;
+		gpio = <&gpio4 RK_PD3 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&vcc3v3_ngff_en>;
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&dc_12v>;
+	};
+
+	vcc3v3_pcie: vcc3v3-pcie {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc3v3_pcie";
+		enable-active-high;
+		gpio = <&gpio1 RK_PC1 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&vcc3v3_pcie_en>;
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&dc_12v>;
+	};
+};
+
+&pcie_phy {
+	status = "okay";
+};
+
+&pcie0 {
+	ep-gpios = <&gpio4 RK_PD1 GPIO_ACTIVE_HIGH>;
+	num-lanes = <4>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pcie_perst>;
+	vpcie3v3-supply = <&vcc3v3_pcie>;
+	vpcie1v8-supply = <&vcc1v8_pmu>;
+	vpcie0v9-supply = <&vcca_0v9>;
+	status = "okay";
+};
+
+&pinctrl {
+	ngff {
+		vcc3v3_ngff_en: vcc3v3-ngff-en {
+			rockchip,pins = <4 RK_PD3 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	pcie {
+		vcc3v3_pcie_en: vcc3v3-pcie-en {
+			rockchip,pins = <1 RK_PC1 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		pcie_perst: pcie-perst {
+			rockchip,pins = <4 RK_PD1 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+};
+
+&sdio0 {
+	bus-width = <4>;
+	cap-sd-highspeed;
+	cap-sdio-irq;
+	keep-power-in-suspend;
+	mmc-pwrseq = <&sdio_pwrseq>;
+	non-removable;
+	pinctrl-names = "default";
+	pinctrl-0 = <&sdio0_bus4 &sdio0_cmd &sdio0_clk>;
+	sd-uhs-sdr104;
+	vmmc-supply = <&vcc3v3_ngff>;
+	vqmmc-supply = <&vcc_1v8>;
+	status = "okay";
+};
+
+&uart0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart0_xfer &uart0_cts &uart0_rts>;
+	status = "okay";
+};
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

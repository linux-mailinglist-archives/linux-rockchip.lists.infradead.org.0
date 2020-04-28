Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D2471BBA81
	for <lists+linux-rockchip@lfdr.de>; Tue, 28 Apr 2020 12:00:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=zCsImxuw04sndZh57h/1rafEhFVE9r1bVEyCifG7ggs=; b=khKeclxJZ2GqUNpZ1/JpsPqSGJ
	XLl3LgKggOHZ5jY9PaOwC48+mdB4RR3tlIvAdRxsDQBx35lcJEDjcph2sf3wlv8S5sUjI815NKVDj
	Y3e0U5Dkui5n4o97zOx4+W+lWD8xj3IBp3v7KS9mZpCET083zeTOPuG7BKOrjbydX6J8qqwSbxhiy
	Mad0F8jTSsaanwzCaHc1qBgQqies5dDY9fTr7rl0qtrLnIbPjjIW4Z/s0VupVIMqKioiDPsJDMgan
	Pxx+nJMspSM9aPqFBHY2LlLlIAOISeQXNduZ4U2ny4oPGX4YCJJbpnMNTqrxZUYGM6eQV8Z3Z0UGH
	cfjW8f9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTN2s-0006Nx-1L; Tue, 28 Apr 2020 10:00:54 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTN2o-0006MU-R5
 for linux-rockchip@lists.infradead.org; Tue, 28 Apr 2020 10:00:52 +0000
Received: by mail-pl1-x643.google.com with SMTP id h11so8154638plr.11
 for <linux-rockchip@lists.infradead.org>; Tue, 28 Apr 2020 03:00:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=0oMe2DD/reatfvO3u85Qztq2FmvG6vjgDNDK7VrZJfc=;
 b=EPTfT4vrwXLQrlM2swnqSjp8bG6ms9TfLYYisNi7J/VJoydu5CnJFZbi5WLqRETOFQ
 YqJObJMoCvvqSUxO/ClJlfin7A2V/7qswl5CXyH4wrOyoUOwNU8mj2wkNlYf/5c3npwu
 bZhXlErNSI6h4fLLTJgFtdC6z8F/mardWthn8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=0oMe2DD/reatfvO3u85Qztq2FmvG6vjgDNDK7VrZJfc=;
 b=VvDWkt89UCjjZu6SGxTNCUp4vBna+NfCRnjp2jBNoygL/dVcR0yVZ2JZDl2bRNQZbG
 RTpNl6FCtTY1X4GuCI3V4IkEmcxEdEVj+sOVDSpzEtlLazlKJVQQedDSX42gNOvHoNmY
 hUr00SF9S0XdapMizlOA+G1i0kBywlEbGYiQZxxmpEsKUrootmWF0QMoHFtw4MlOHegj
 LKfKikfxyY1zRCndnjlfUDkQfLqkHeqeskXrY0wf1LdPGsMlCPEg72tx7UJwdLfKo3TF
 Hyqq+MknDMGnCIJt3IXDeWIPG5HEDXqfpl5V7u/Pw+737p7uKQvVk9jFLDckVqdfmffz
 4+3Q==
X-Gm-Message-State: AGi0PubcFNJLjZ2gF7rfZRWfS1CRlWVaPCpnDL4OP8p767JUECI5Hc48
 usZVD0Wrd5cfPuvHV+5DvzInag==
X-Google-Smtp-Source: APiQypIISyKWMJObySowF7kMgtPex5OVFJl/XuUypZKPBL3xjrUZJ8A7ENQneKOqlKvslbys+39n6w==
X-Received: by 2002:a17:90a:d98e:: with SMTP id
 d14mr4003321pjv.178.1588068049980; 
 Tue, 28 Apr 2020 03:00:49 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:f9c1:1c6a:49dc:267d])
 by smtp.gmail.com with ESMTPSA id j32sm12676379pgb.55.2020.04.28.03.00.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Apr 2020 03:00:49 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH v2 5/6] arm: dts: rk3399: Sync roc-pc-mezzanine from v5.7-rc1
Date: Tue, 28 Apr 2020 15:30:18 +0530
Message-Id: <20200428100019.19155-6-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200428100019.19155-1-jagan@amarulasolutions.com>
References: <20200428100019.19155-1-jagan@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_030050_891268_D38598B5 
X-CRM114-Status: GOOD (  12.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Changes for v2:
- none

 arch/arm/dts/Makefile                    |  1 +
 arch/arm/dts/rk3399-roc-pc-mezzanine.dts | 93 ++++++++++++++++++++++++
 2 files changed, 94 insertions(+)
 create mode 100644 arch/arm/dts/rk3399-roc-pc-mezzanine.dts

diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index af7d804b66..409b0d1b3f 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -131,6 +131,7 @@ dtb-$(CONFIG_ROCKCHIP_RK3399) += \
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

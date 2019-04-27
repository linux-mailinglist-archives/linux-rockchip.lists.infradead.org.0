Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF89BB33D
	for <lists+linux-rockchip@lfdr.de>; Sat, 27 Apr 2019 13:42:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qcteeuAkaGU74pNXg73IMZ29xdjQ5jx1BSfSezztVsk=; b=kfs8WifQD6wCtN
	chYA2qBqEQHLBJkDoKi1bmNq7vaF+ljjaeRXlCd9JGFaefChojWyqRgTpjEAYGUpgCwPr080GcSoS
	yI65UyzIglaapLZcWr1Aid1rgOianAj4KHmAL7P7EjG+o/8KyIxD+E6yVcP/BTXl4UpLcA01bvHUS
	fPDcoUIwwQn/gY0o3ruDaG/UE1ycRDF4337dSB/bYJ7Co9scZMnpL3S1XwALfXF5rqrKGls7ndA1x
	trbvBjWhYs+D6YyNkbdbAGrOlhJdDTxo/PmqDO04u5DJ6oIFuuNYaqysRhPN+75zSUnLPhTN01ieb
	szFRACWgackGWrOTbi7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKLj2-0007NX-Mb; Sat, 27 Apr 2019 11:42:36 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKLiz-0007MY-Re
 for linux-rockchip@lists.infradead.org; Sat, 27 Apr 2019 11:42:35 +0000
Received: by mail-pl1-x644.google.com with SMTP id d5so2221562plr.1
 for <linux-rockchip@lists.infradead.org>; Sat, 27 Apr 2019 04:42:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=w0N4ouP2DUFUgXUhjYEbGzSum/fljQInZXnPEQuOOj8=;
 b=VRZqtB27xvAeuDvbR7Pe6yEjmo9lb6kSHgZvD+znXgBaP4qVE+FiWa7PXiaG7WFhUk
 izc+c+txymmqP8iavGR81y/+NYKAdmZV7CXULCfJ6izCM2Wj2mWjBbxjvrLqNcKqR5jq
 j1ic2CmwrJmwOwncNMnTfGXk2lYcpJ9srQySw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=w0N4ouP2DUFUgXUhjYEbGzSum/fljQInZXnPEQuOOj8=;
 b=i75suMcPhAjhP+gY1NiBgVmEfPX1/W1BBdz6Ck0BHSN1nboJXcMwI+RGrZA5UFyWnE
 L6GDuECsGp1RiwsQTxWKiZ/m7a+IVg5KMJCGRPQaQVBqqqGcYYAR0d7boUdwXpuYQFBA
 UQohn2erOXmemQzHhoqoJJ+nVGoooraY72giUy4fEebjR8zfPTqNvXoE6yNJjcbd/CVj
 l9kvZAGOHMpoY3UuaYkqzSL5/KgH6fYiRr5RYsXAuKN3xoLtRUt+4McRiUHvb9u5N62K
 Px76TqnAIXCA6hb6NOD31gqSH5FDt9Hc4zjjHQC6H5cTf4Vaz4XXMwlTtv7Hv4FZJZj3
 DDvw==
X-Gm-Message-State: APjAAAXftuvTG4gDLBBxlKca6emUg//lho2gsLMEqicNBTuJ1ySWhp4f
 kBQnoGUPMeyFom2u/Vxy1THUfg==
X-Google-Smtp-Source: APXvYqwPQNSRQADRufc4dtOOqKBi6xBv+b/kU2Kq5f+3KI31y+kDRiQYADqizANtJloNhFAWyx2bAQ==
X-Received: by 2002:a17:902:864b:: with SMTP id
 y11mr48537243plt.1.1556365352829; 
 Sat, 27 Apr 2019 04:42:32 -0700 (PDT)
Received: from localhost.localdomain ([115.97.185.144])
 by smtp.gmail.com with ESMTPSA id k79sm68958973pfj.28.2019.04.27.04.42.28
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 27 Apr 2019 04:42:32 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, Akash Gajjar <akash@openedev.com>,
 Tom Rini <trini@konsulko.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v6 1/3] arm64: rockchip: dts: rk3399: Add board -u-boot.dtsi
 files
Date: Sat, 27 Apr 2019 17:12:00 +0530
Message-Id: <20190427114202.7358-2-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190427114202.7358-1-jagan@amarulasolutions.com>
References: <20190427114202.7358-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190427_044233_890383_B936A728 
X-CRM114-Status: GOOD (  12.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.21
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
Cc: Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com,
 Jagan Teki <jagan@amarulasolutions.com>, u-boot@lists.denx.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Devicetree files in RK3399 platform is synced from Linux, like other
platforms does. Apart from these u-boot in rk3399 would also require
some u-boot specific node like dmc.

dmc node has big chunk of DDR timing parameters which are specific
to specific board, and maintained with rk3399-sdram*.dtsi.

So, create board specific -u-boot.dtsi files and move these sdram dtsi
files accordingly. This would help of maintain u-boot specific changes
separately without touching Linux dts(i) files which indeed easy for
syncing from Linux between releases.

These board specific -u-boot.dtsi can be extendible to add more u-boot
specific nodes or properties in future.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm/dts/rk3399-evb-u-boot.dtsi     | 6 ++++++
 arch/arm/dts/rk3399-evb.dts             | 1 -
 arch/arm/dts/rk3399-ficus-u-boot.dtsi   | 6 ++++++
 arch/arm/dts/rk3399-ficus.dts           | 1 -
 arch/arm/dts/rk3399-firefly-u-boot.dtsi | 6 ++++++
 arch/arm/dts/rk3399-firefly.dts         | 1 -
 arch/arm/dts/rk3399-gru-bob-u-boot.dtsi | 6 ++++++
 arch/arm/dts/rk3399-gru-bob.dts         | 1 -
 arch/arm/dts/rk3399-rock960-u-boot.dtsi | 6 ++++++
 arch/arm/dts/rk3399-rock960.dts         | 1 -
 10 files changed, 30 insertions(+), 5 deletions(-)
 create mode 100644 arch/arm/dts/rk3399-evb-u-boot.dtsi
 create mode 100644 arch/arm/dts/rk3399-ficus-u-boot.dtsi
 create mode 100644 arch/arm/dts/rk3399-firefly-u-boot.dtsi
 create mode 100644 arch/arm/dts/rk3399-gru-bob-u-boot.dtsi
 create mode 100644 arch/arm/dts/rk3399-rock960-u-boot.dtsi

diff --git a/arch/arm/dts/rk3399-evb-u-boot.dtsi b/arch/arm/dts/rk3399-evb-u-boot.dtsi
new file mode 100644
index 0000000000..7e2c57af22
--- /dev/null
+++ b/arch/arm/dts/rk3399-evb-u-boot.dtsi
@@ -0,0 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright (C) 2019 Jagan Teki <jagan@amarulasolutions.com>
+ */
+
+#include "rk3399-sdram-lpddr3-4GB-1600.dtsi"
diff --git a/arch/arm/dts/rk3399-evb.dts b/arch/arm/dts/rk3399-evb.dts
index ce004d0d18..2366e7ed3a 100644
--- a/arch/arm/dts/rk3399-evb.dts
+++ b/arch/arm/dts/rk3399-evb.dts
@@ -7,7 +7,6 @@
 #include <dt-bindings/pwm/pwm.h>
 #include <dt-bindings/pinctrl/rockchip.h>
 #include "rk3399.dtsi"
-#include "rk3399-sdram-lpddr3-4GB-1600.dtsi"
 
 / {
 	model = "Rockchip RK3399 Evaluation Board";
diff --git a/arch/arm/dts/rk3399-ficus-u-boot.dtsi b/arch/arm/dts/rk3399-ficus-u-boot.dtsi
new file mode 100644
index 0000000000..eab86bdb30
--- /dev/null
+++ b/arch/arm/dts/rk3399-ficus-u-boot.dtsi
@@ -0,0 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright (C) 2019 Jagan Teki <jagan@amarulasolutions.com>
+ */
+
+#include "rk3399-sdram-ddr3-1600.dtsi"
diff --git a/arch/arm/dts/rk3399-ficus.dts b/arch/arm/dts/rk3399-ficus.dts
index 4af0e4e383..4b2dd82b67 100644
--- a/arch/arm/dts/rk3399-ficus.dts
+++ b/arch/arm/dts/rk3399-ficus.dts
@@ -8,7 +8,6 @@
 
 /dts-v1/;
 #include "rk3399-rock960.dtsi"
-#include "rk3399-sdram-ddr3-1600.dtsi"
 
 / {
 	model = "96boards RK3399 Ficus";
diff --git a/arch/arm/dts/rk3399-firefly-u-boot.dtsi b/arch/arm/dts/rk3399-firefly-u-boot.dtsi
new file mode 100644
index 0000000000..eab86bdb30
--- /dev/null
+++ b/arch/arm/dts/rk3399-firefly-u-boot.dtsi
@@ -0,0 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright (C) 2019 Jagan Teki <jagan@amarulasolutions.com>
+ */
+
+#include "rk3399-sdram-ddr3-1600.dtsi"
diff --git a/arch/arm/dts/rk3399-firefly.dts b/arch/arm/dts/rk3399-firefly.dts
index f90e7e88db..5d52319393 100644
--- a/arch/arm/dts/rk3399-firefly.dts
+++ b/arch/arm/dts/rk3399-firefly.dts
@@ -7,7 +7,6 @@
 #include <dt-bindings/pwm/pwm.h>
 #include <dt-bindings/pinctrl/rockchip.h>
 #include "rk3399.dtsi"
-#include "rk3399-sdram-ddr3-1600.dtsi"
 
 / {
 	model = "Firefly-RK3399 Board";
diff --git a/arch/arm/dts/rk3399-gru-bob-u-boot.dtsi b/arch/arm/dts/rk3399-gru-bob-u-boot.dtsi
new file mode 100644
index 0000000000..9edb8cf841
--- /dev/null
+++ b/arch/arm/dts/rk3399-gru-bob-u-boot.dtsi
@@ -0,0 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright (C) 2019 Jagan Teki <jagan@amarulasolutions.com>
+ */
+
+#include "rk3399-sdram-lpddr3-samsung-4GB-1866.dtsi"
diff --git a/arch/arm/dts/rk3399-gru-bob.dts b/arch/arm/dts/rk3399-gru-bob.dts
index 0e3d91fc28..1ee0dc0d9f 100644
--- a/arch/arm/dts/rk3399-gru-bob.dts
+++ b/arch/arm/dts/rk3399-gru-bob.dts
@@ -7,7 +7,6 @@
 
 /dts-v1/;
 #include "rk3399-gru-chromebook.dtsi"
-#include "rk3399-sdram-lpddr3-samsung-4GB-1866.dtsi"
 
 / {
 	model = "Google Bob";
diff --git a/arch/arm/dts/rk3399-rock960-u-boot.dtsi b/arch/arm/dts/rk3399-rock960-u-boot.dtsi
new file mode 100644
index 0000000000..5256f6d3f2
--- /dev/null
+++ b/arch/arm/dts/rk3399-rock960-u-boot.dtsi
@@ -0,0 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright (C) 2019 Jagan Teki <jagan@amarulasolutions.com>
+ */
+
+#include "rk3399-sdram-lpddr3-2GB-1600.dtsi"
diff --git a/arch/arm/dts/rk3399-rock960.dts b/arch/arm/dts/rk3399-rock960.dts
index 25c58b4261..7e06bc97e5 100644
--- a/arch/arm/dts/rk3399-rock960.dts
+++ b/arch/arm/dts/rk3399-rock960.dts
@@ -5,7 +5,6 @@
 
 /dts-v1/;
 #include "rk3399-rock960.dtsi"
-#include "rk3399-sdram-lpddr3-2GB-1600.dtsi"
 
 / {
 	model = "96boards Rock960";
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

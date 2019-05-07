Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4E1416A10
	for <lists+linux-rockchip@lfdr.de>; Tue,  7 May 2019 20:22:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jn4UulN9eUKesdu9gi9d9ll0mb3iQ/6f0hl/ugf9PnE=; b=a9fXGIACpLBcG0
	m4Wdza6aXeKKlx5NYMoK290wjz644ehgDJPDkFYBFsusRA0z26jWD+/keiHSIlUo04aGGYd6sSPBW
	J4MRsCiW1nOXlXqP9NoO8JjbC4+rA/lNhajoclKpSs2+g/za/x8mxJM5BVL8EqluXYL2iAKEaqpBz
	aFtMec9tg9JEklOVqf3DcSO4rT+2PWZhP9Kmo7s/Pbx0j1JPouwlfEKKSV3b528OGLFb89yBvMXSY
	J5tj3XhbjTAVdCxVBFGt6uIzSqIFUaYsy9naldEU8sKE5WfSENr3rj8ufhzJ5tc+3UvlqTpqilx4B
	XRPzi5sMmvCZyFwjKa+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO4jO-00034V-S7; Tue, 07 May 2019 18:22:22 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO4jL-00032t-Gr
 for linux-rockchip@lists.infradead.org; Tue, 07 May 2019 18:22:20 +0000
Received: by mail-pl1-x643.google.com with SMTP id bi2so8573392plb.13
 for <linux-rockchip@lists.infradead.org>; Tue, 07 May 2019 11:22:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=I3oK25qzqyp2gcaHrRbas53AaMxDcBHCsphtuUas6qI=;
 b=DQ4GU8GT8/mHlDGc6b/3tYIKppreoKb5g3jZMFg4zkncG2FMZMO6w/54nrHZ44ipZo
 RYHdeY9YlRkvegnxjoSS9EUJXxZuvEEsuXjT2OFG9TJzrlQWN/PouFiz05doyylJV9wu
 HgHemkqvFU1J+V5U419sfSsGIstyBrVnggGLY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=I3oK25qzqyp2gcaHrRbas53AaMxDcBHCsphtuUas6qI=;
 b=shVuwes1Ux7GiwarYV30bpC7kNRhvoCSGmWCmqNrWcx2kssJKTZhQzNBG+s2GtZPE6
 3aIVKZM5AGtfqrdv6YCacaiyMDOA5Wui+5lgPgHic4VGqtunsgAYnDISG0pUJl8keGs+
 G0BKCyks+WD9DPCsGqLIYELkinPMh6rsMIZr5bwaFk+12IWoMDsY/J5obMI066BedId5
 nzRyrcU2UupST4vw26d4ZOJeKarbnhwUpN6sM59wqblJGJZhk+/FnlkmOx6gnpRVvVFQ
 k4C++49keORMyyVlzKbFUm3mJANlxCLMAYbqkSqQlyYoPEJnXpEgO+868QA2jh/LVKU/
 of9w==
X-Gm-Message-State: APjAAAX8U7iVxVZU15QTIU+ezywDAGQ8ZFI0tjNvZU5t2v+rak9822XU
 cy0+nQoA5X1i28J6C7pa6EsS1A==
X-Google-Smtp-Source: APXvYqzQ5LPcXly9JG4dDEehnnU+TPobJZJAu6pnfiTVTyeQiw2Nnay3sn9WNYT6S8HTemz6BTV+Rg==
X-Received: by 2002:a17:902:7c8f:: with SMTP id
 y15mr23012407pll.339.1557253338729; 
 Tue, 07 May 2019 11:22:18 -0700 (PDT)
Received: from localhost.localdomain ([115.97.185.144])
 by smtp.gmail.com with ESMTPSA id d15sm18491568pfr.179.2019.05.07.11.22.14
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 07 May 2019 11:22:18 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, Akash Gajjar <akash@openedev.com>
Subject: [PATCH v7 2/4] arm64: rockchip: dts: rk3399: Add board -u-boot.dtsi
 files
Date: Tue,  7 May 2019 23:51:50 +0530
Message-Id: <20190507182152.4254-3-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190507182152.4254-1-jagan@amarulasolutions.com>
References: <20190507182152.4254-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_112219_561406_F463F3F9 
X-CRM114-Status: GOOD (  13.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
index 9162f3dd50..a506e8da37 100644
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
index 46f2ffaf8d..a4cb64f8bd 100644
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

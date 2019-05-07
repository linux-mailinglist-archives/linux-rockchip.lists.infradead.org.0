Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFFF116A12
	for <lists+linux-rockchip@lfdr.de>; Tue,  7 May 2019 20:22:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3bLi5v/AMWeNRSQ6Ss9mV+0q0lEU/0s+kIHqnwrwLiI=; b=OoB3+GuLsSvffu
	AldffKFMTwW7zewIzmpdnfe/Kfet2DJN97LRPN+1nxAA03UJYF6b0/P1e66niIjjeOwxrLR+hD+Oj
	aASaEYaPOiTSH7s+swvHkFSZpesh6lnUJXGmJtvVpY7kWvK4TbsAvmGUZJ8LH4fceqbaWDl5+jAWp
	Z9hXcwnzWob0I9K5p5QiQtSlqEu02RJB3GEAhQTWnfmPncaRFDa10Cjg+4L5q5U0n3bFq5wvZZMiU
	jlIx2dv04UgdLywZ1vXHU2bTdb/iElpQ461CBpKLRD75rYHyCy9PW8mIfd/Bxa4gPCIXKY1KWKgE2
	97tEk2o9SIAmZlIe4ASw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO4jW-00039W-1j; Tue, 07 May 2019 18:22:30 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO4jT-000389-IT
 for linux-rockchip@lists.infradead.org; Tue, 07 May 2019 18:22:28 +0000
Received: by mail-pl1-x642.google.com with SMTP id a59so8578953pla.5
 for <linux-rockchip@lists.infradead.org>; Tue, 07 May 2019 11:22:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0KtfW3TKs04iSgV5KPgv8zThhCUdoKHESc98JGCWyiY=;
 b=KEPQv+4NS/F/xXcGADNxp59JFqmHxn17fGhAyqYxsq+ZlyXRktqEVzy+EKfOGy7UVE
 rSW98FdNJrRX/DMrXv3+eaccXCWZjxUojpd620QM5rhQhkK9SwwS/rW757Ssd1PSeU0a
 yk3rkt+CPvSNUyRnOxVV2K/1F0L+Cwmri8QTc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0KtfW3TKs04iSgV5KPgv8zThhCUdoKHESc98JGCWyiY=;
 b=dsOMApK4r4BNXjr5DEfebV/uLFAFiJv83t1AH/2+dSLiq4FJC4+CRa6PpZVsfbZq63
 cpOk47O429OGozpAK6n9ONyhsJLYFAKxWqFCgKTLZC6rAG0VpxtnU0CfwHwYC4XWgzSt
 FSzTUZF+JZsR5HWcch7HUcqe1gGuK7NqgFL/Zf/Ou15e2pD9Qsxkxs+7/Y0cP/zWj9P/
 IGi+SxB5QWjIQUsgmmIq9kihlKybY1ThaQ2YJ/lAcG2g8gIxOROSHZGTU6R6RyuMIEns
 tEKPdWkhpOKwd775EXqBy7JuALFimwBAXVUjxYWXhJ+A3F3R/URaGUm9OIKKDA7yFPVV
 K92w==
X-Gm-Message-State: APjAAAWCS0kif8swbuFv3TMQ97iGjDzogH+8OBgAA2T77lHK196jWI89
 tjLlZkZD3Sqc0Yrh4mpDwtLNTw==
X-Google-Smtp-Source: APXvYqzq3yRYY7ut2+52VHq+QRdNhvSpvMEmErj9zEND+WLxmb1L3Z4W6Twt2/LlYE3iw336OMgAJA==
X-Received: by 2002:a17:902:7e4f:: with SMTP id
 a15mr5507082pln.205.1557253346781; 
 Tue, 07 May 2019 11:22:26 -0700 (PDT)
Received: from localhost.localdomain ([115.97.185.144])
 by smtp.gmail.com with ESMTPSA id d15sm18491568pfr.179.2019.05.07.11.22.23
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 07 May 2019 11:22:26 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, Akash Gajjar <akash@openedev.com>
Subject: [PATCH v7 4/4] arm64: rockchip: dts: rk3399: Use rk3399-u-boot.dtsi
Date: Tue,  7 May 2019 23:51:52 +0530
Message-Id: <20190507182152.4254-5-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190507182152.4254-1-jagan@amarulasolutions.com>
References: <20190507182152.4254-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_112227_608153_0D588750 
X-CRM114-Status: GOOD (  13.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
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

Now we have
- board specific -u-boot.dtsi files for board specific u-boot
  dts changes.
- soc specific rk3399-u-boot.dtsi for soc specific u-boot
  dts changes.

So, include the rk3399-u-boot-dtsi on respective board -u-boot.dtsi
and drop the properties which are globally available in rk3399-u-boot.dtsi

Right now rk3399-u-boot.dtsi has sdmmc, spi1 u-boot,dm-pre-reloc
property and more properties and nodes can be move further based
on the requirements.

This would fix, the -u-boot.dtsi inclusion for evb, firefly, puma
boards that was accidentally merged on below commit.
"rockchip: dts: rk3399: Create initial rk3399-u-boot.dtsi"
(sha1: e05b4a4fa84b65a0c8873e8f34721741fe2bc09d)

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm/dts/rk3399-evb-u-boot.dtsi     | 1 +
 arch/arm/dts/rk3399-firefly-u-boot.dtsi | 1 +
 arch/arm/dts/rk3399-gru-bob-u-boot.dtsi | 1 +
 arch/arm/dts/rk3399-gru-u-boot.dtsi     | 6 ++++++
 arch/arm/dts/rk3399-gru.dtsi            | 1 -
 arch/arm/dts/rk3399-puma-ddr1600.dts    | 1 +
 arch/arm/dts/rk3399-puma.dtsi           | 2 --
 7 files changed, 10 insertions(+), 3 deletions(-)
 create mode 100644 arch/arm/dts/rk3399-gru-u-boot.dtsi

diff --git a/arch/arm/dts/rk3399-evb-u-boot.dtsi b/arch/arm/dts/rk3399-evb-u-boot.dtsi
index 7e2c57af22..20910e744b 100644
--- a/arch/arm/dts/rk3399-evb-u-boot.dtsi
+++ b/arch/arm/dts/rk3399-evb-u-boot.dtsi
@@ -3,4 +3,5 @@
  * Copyright (C) 2019 Jagan Teki <jagan@amarulasolutions.com>
  */
 
+#include "rk3399-u-boot.dtsi"
 #include "rk3399-sdram-lpddr3-4GB-1600.dtsi"
diff --git a/arch/arm/dts/rk3399-firefly-u-boot.dtsi b/arch/arm/dts/rk3399-firefly-u-boot.dtsi
index eab86bdb30..67b63a8352 100644
--- a/arch/arm/dts/rk3399-firefly-u-boot.dtsi
+++ b/arch/arm/dts/rk3399-firefly-u-boot.dtsi
@@ -3,4 +3,5 @@
  * Copyright (C) 2019 Jagan Teki <jagan@amarulasolutions.com>
  */
 
+#include "rk3399-u-boot.dtsi"
 #include "rk3399-sdram-ddr3-1600.dtsi"
diff --git a/arch/arm/dts/rk3399-gru-bob-u-boot.dtsi b/arch/arm/dts/rk3399-gru-bob-u-boot.dtsi
index 9edb8cf841..726f396f32 100644
--- a/arch/arm/dts/rk3399-gru-bob-u-boot.dtsi
+++ b/arch/arm/dts/rk3399-gru-bob-u-boot.dtsi
@@ -3,4 +3,5 @@
  * Copyright (C) 2019 Jagan Teki <jagan@amarulasolutions.com>
  */
 
+#include "rk3399-gru-u-boot.dtsi"
 #include "rk3399-sdram-lpddr3-samsung-4GB-1866.dtsi"
diff --git a/arch/arm/dts/rk3399-gru-u-boot.dtsi b/arch/arm/dts/rk3399-gru-u-boot.dtsi
new file mode 100644
index 0000000000..7bddc3acdb
--- /dev/null
+++ b/arch/arm/dts/rk3399-gru-u-boot.dtsi
@@ -0,0 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright (C) 2019 Jagan Teki <jagan@amarulasolutions.com>
+ */
+
+#include "rk3399-u-boot.dtsi"
diff --git a/arch/arm/dts/rk3399-gru.dtsi b/arch/arm/dts/rk3399-gru.dtsi
index 4cdb4320b7..ca0fc391b2 100644
--- a/arch/arm/dts/rk3399-gru.dtsi
+++ b/arch/arm/dts/rk3399-gru.dtsi
@@ -545,7 +545,6 @@ ap_i2c_audio: &i2c8 {
 
 &spi1 {
 	status = "okay";
-	u-boot,dm-pre-reloc;
 
 	pinctrl-names = "default", "sleep";
 	pinctrl-1 = <&spi1_sleep>;
diff --git a/arch/arm/dts/rk3399-puma-ddr1600.dts b/arch/arm/dts/rk3399-puma-ddr1600.dts
index 337e0eabb4..42763f82d0 100644
--- a/arch/arm/dts/rk3399-puma-ddr1600.dts
+++ b/arch/arm/dts/rk3399-puma-ddr1600.dts
@@ -6,5 +6,6 @@
 /dts-v1/;
 
 #include "rk3399-puma.dtsi"
+#include "rk3399-u-boot.dtsi"
 #include "rk3399-sdram-ddr3-1600.dtsi"
 
diff --git a/arch/arm/dts/rk3399-puma.dtsi b/arch/arm/dts/rk3399-puma.dtsi
index 319a610022..897e0bda85 100644
--- a/arch/arm/dts/rk3399-puma.dtsi
+++ b/arch/arm/dts/rk3399-puma.dtsi
@@ -647,8 +647,6 @@
 
 
 &spi1 {
-	u-boot,dm-pre-reloc;
-
 	status = "okay";
 
 	#address-cells = <1>;
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

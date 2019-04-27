Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB439B33C
	for <lists+linux-rockchip@lfdr.de>; Sat, 27 Apr 2019 13:42:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2RF2aNcU49c3xiYQZUqbSz6fWaKUQe4ZTGJOj+AGl94=; b=jXSKGkp5glc5cj
	yXB1Q371+X7YXuMOrBbtJTxaT4YF5mM7tuPs5fb7YEWy//xpJwZoQDWQUnJY4y5ij+BOZVSFGwDgO
	ZqTjbxVqfRhHPkmKqt+0NDaroIkM5EAjeSvMOJVC5HQfNPMxITryzg40gF9TBM69rlvOaCUA4XHqE
	Slgl/R4N+65+mvCtHPr4lC3JuxrPVFKsrId4AWypvgUrVt4VFlXxD+tyhMXlpC2N5274dgVtPlIRF
	NtgRktdrKzr6AdKqbEXvxF3QvzrRd3PaOEEvQWZsobe8swQlVbfD4rRc4VFCCh9DK6vLtaS/7tKnw
	XiAkFsGosFJNwO+W6mtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKLjB-0007Tv-VO; Sat, 27 Apr 2019 11:42:45 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKLj8-0007Rw-Ia
 for linux-rockchip@lists.infradead.org; Sat, 27 Apr 2019 11:42:44 +0000
Received: by mail-pf1-x444.google.com with SMTP id 10so2996532pfo.5
 for <linux-rockchip@lists.infradead.org>; Sat, 27 Apr 2019 04:42:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=mDlOKbc2vLQOvRZdD76W9yxNTBh1swonSvJjMNV8S5c=;
 b=J7gPbzS5v+7uzbVR0YQKbSK3pEeZF14BosTi7YQuWSlv8+MEof3h7vZOl1+uwe1W4x
 5kirxqKVpYGYWB7IpM8MGWzpXX6y1VYdT0sbVEdf2/mc+OqbX0lc2QWthNeAOaEwLFU6
 ykjcu3/NzIg766iCGI2kdnCOTVOzd2DT/ZGjs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=mDlOKbc2vLQOvRZdD76W9yxNTBh1swonSvJjMNV8S5c=;
 b=ec7MlHVZjHBUJf7JE+qQj+7vN+Uyyd208REkqOCpo6Ht56AEVZ+ir5xN6lDqmT9rFr
 dQHqg1E4jobaMqln3TiDaduN68qGMUupH3Rv8+MqVu4phY0Do2/TKkHIzH8bcnQrQk1U
 HgPwS3QUVwvelO2uAhBVG211tNwnOYgbJ6a0PtFKqps/rLXhSZzlbC1aGiIwqkfKI1oJ
 Tw669F74gie27klg6XzQhCjxM+n7Rk9pRNtTziyd9KfCofVXeMB1brVuC8HkbB+QeO1L
 cvjMjd3hvZtyVHpS0P5iDl1CgPgCjhhD3m1+SXbSZwfMthB6T4KS73z0u9OyGcPlbgbd
 1gPA==
X-Gm-Message-State: APjAAAV1guLM5jhzaoqHLy0EojXOsobCA1KrWjXscrOaTDAIoyIMJH+7
 7rorRobhadjrBQVPRaGJCAktFw==
X-Google-Smtp-Source: APXvYqxiYHmWVn4Q9NmtcYzLUCQwmgxUI6wwCJ4E9IQA5uMXjeiyOJVK29o5sG0i/BED3DPMlRKx9g==
X-Received: by 2002:a62:1d83:: with SMTP id d125mr15918500pfd.74.1556365361934; 
 Sat, 27 Apr 2019 04:42:41 -0700 (PDT)
Received: from localhost.localdomain ([115.97.185.144])
 by smtp.gmail.com with ESMTPSA id k79sm68958973pfj.28.2019.04.27.04.42.37
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 27 Apr 2019 04:42:41 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, Akash Gajjar <akash@openedev.com>,
 Tom Rini <trini@konsulko.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v6 3/3] arm64: rockchip: dts: rk3399: Use rk3399-u-boot.dtsi
Date: Sat, 27 Apr 2019 17:12:02 +0530
Message-Id: <20190427114202.7358-4-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190427114202.7358-1-jagan@amarulasolutions.com>
References: <20190427114202.7358-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190427_044242_614032_642772FA 
X-CRM114-Status: GOOD (  13.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm/dts/rk3399-evb-u-boot.dtsi     | 1 +
 arch/arm/dts/rk3399-evb.dts             | 1 -
 arch/arm/dts/rk3399-firefly-u-boot.dtsi | 1 +
 arch/arm/dts/rk3399-firefly.dts         | 1 -
 arch/arm/dts/rk3399-gru-bob-u-boot.dtsi | 1 +
 arch/arm/dts/rk3399-gru-u-boot.dtsi     | 6 ++++++
 arch/arm/dts/rk3399-gru.dtsi            | 1 -
 arch/arm/dts/rk3399-puma-ddr1600.dts    | 1 +
 arch/arm/dts/rk3399-puma.dtsi           | 3 ---
 9 files changed, 10 insertions(+), 6 deletions(-)
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
diff --git a/arch/arm/dts/rk3399-evb.dts b/arch/arm/dts/rk3399-evb.dts
index 2366e7ed3a..a506e8da37 100644
--- a/arch/arm/dts/rk3399-evb.dts
+++ b/arch/arm/dts/rk3399-evb.dts
@@ -154,7 +154,6 @@
 };
 
 &sdmmc {
-	u-boot,dm-pre-reloc;
 	bus-width = <4>;
 	status = "okay";
 };
diff --git a/arch/arm/dts/rk3399-firefly-u-boot.dtsi b/arch/arm/dts/rk3399-firefly-u-boot.dtsi
index eab86bdb30..67b63a8352 100644
--- a/arch/arm/dts/rk3399-firefly-u-boot.dtsi
+++ b/arch/arm/dts/rk3399-firefly-u-boot.dtsi
@@ -3,4 +3,5 @@
  * Copyright (C) 2019 Jagan Teki <jagan@amarulasolutions.com>
  */
 
+#include "rk3399-u-boot.dtsi"
 #include "rk3399-sdram-ddr3-1600.dtsi"
diff --git a/arch/arm/dts/rk3399-firefly.dts b/arch/arm/dts/rk3399-firefly.dts
index 5d52319393..a4cb64f8bd 100644
--- a/arch/arm/dts/rk3399-firefly.dts
+++ b/arch/arm/dts/rk3399-firefly.dts
@@ -591,7 +591,6 @@
 };
 
 &sdmmc {
-	u-boot,dm-pre-reloc;
 	bus-width = <4>;
 	status = "okay";
 };
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
index df19263acc..8b3d90fdc6 100644
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
index 8304f67192..2712ab6826 100644
--- a/arch/arm/dts/rk3399-puma.dtsi
+++ b/arch/arm/dts/rk3399-puma.dtsi
@@ -492,7 +492,6 @@
 };
 
 &sdmmc {
-	u-boot,dm-pre-reloc;
 	clock-frequency = <150000000>;
 	max-frequency = <40000000>;
 	supports-sd;
@@ -648,8 +647,6 @@
 
 
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

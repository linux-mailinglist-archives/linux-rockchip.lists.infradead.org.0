Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13C58DB6D9
	for <lists+linux-rockchip@lfdr.de>; Thu, 17 Oct 2019 21:08:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KaFgBSvQNuONe8/YfWRXnNQHyiVF1eIcYwL6haINeFc=; b=Yi6EU6F/XAZgLq
	49KHV041ZvFqa9hVMa9fW76MilrOdaSAKZXAZVS5wwsMvWwvu+2t7opgs6gPOQ03PYMPPbG2VxCG5
	CqdWPkFbusaPjrdJmi1kDiOL+W4azA12z0pTsG4RpHjQ8yJZNzW60cSKBekbvzb+M+ToI5ERgc5CR
	Tv12oniHbHMxE1VYGk+rRwkQ2CvQZJb7FFvIz9cULC4EaTX473wj3FSBXeEgYW8t8rVxtfM5gKALM
	jyBisv1v3xUQclnFXajWZ9BQ98PmK10LM41t1hS2Cm9csMD9ifMpRKfvAQlnDVZqhCoPCI5PWHfTk
	7o1gfRidPsUzx0dsvXCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLB7y-0001E8-HR; Thu, 17 Oct 2019 19:08:02 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLB7v-0001CE-BO
 for linux-rockchip@lists.infradead.org; Thu, 17 Oct 2019 19:08:00 +0000
Received: by mail-pf1-x444.google.com with SMTP id v4so2238441pff.6
 for <linux-rockchip@lists.infradead.org>; Thu, 17 Oct 2019 12:07:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=EceJrxHKDTq4iJkELxJviUFELSWGnMnLGPrn+81Zk0Q=;
 b=dL9Ypva30+uHwEtIw1u6hRMzHSKgSyxw5BIL6BRf2+n2bytK7NknYYzBg4OWqvyoRS
 jw++wqS/NY51pXsCAs8fjBNBjsB0FzRe7MGkbkBXgNJmlK2dcNJg/cDEPkzAdZawCz3a
 3IuesneYyKgqE5XB6LzcMdOVHEQwchtvZGIGo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=EceJrxHKDTq4iJkELxJviUFELSWGnMnLGPrn+81Zk0Q=;
 b=XegB/o/q0+Tm8uEM14zpwVwG/KDuXpRZtS/+MM6lbPDw2FzKKC/EshYTb1l1x3yKxu
 cg1b+KNmi2XCMfLhaFfg1AoxdQAh2lV+dVeSjB4HVI0wrQnN0s2Xa+siTjrAc0Xntv0Z
 4B1tO1h/aVX7JeS01hHCIej0nxl+auzVIAKQ0/qg824Kev7zBvV2jqck9azVyQrL0o8H
 5i2wAKrZA0WItvtzjIYzs1pTF+uQbEl3UuaWBNALgrQqIh1iz5F6ebs8ZN6F7/WVhGZj
 gpS7QHCVtrv3NZZZ3bqK/J1sg6zBhMu6voojBFzPDnVzgx7nejjL3rGa/8xAHoKWGJXq
 O9Xw==
X-Gm-Message-State: APjAAAUurlGRvUkvz/IrAFz2QjM+Eit4hE0R245wQ4NsU0MDqua5JGqb
 Fdyse9C5Xeg6aKN6t5we09Kktg==
X-Google-Smtp-Source: APXvYqxRPAyR5RfuCeh5P8IhMttdYJVV71E/PyaslDQ6H61O/jBl51v0UlFBk8k6HwKDEGGjWx6toQ==
X-Received: by 2002:a63:e211:: with SMTP id q17mr5642448pgh.316.1571339278081; 
 Thu, 17 Oct 2019 12:07:58 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.31])
 by smtp.gmail.com with ESMTPSA id y28sm4422736pfq.48.2019.10.17.12.07.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Oct 2019 12:07:57 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH v3 3/5] arm: dts: rk3368: Add rk3368-u-boot.dtsi
Date: Fri, 18 Oct 2019 00:37:08 +0530
Message-Id: <20191017190710.29985-4-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191017190710.29985-1-jagan@amarulasolutions.com>
References: <20191017190710.29985-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_120759_405070_0FBEED1B 
X-CRM114-Status: GOOD (  11.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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
Cc: u-boot@lists.denx.de, Jagan Teki <jagan@amarulasolutions.com>,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Add U-Boot specific dtsi file for rk3368 SoC. This
would help to add U-Boot specific dts nodes, properties
which are common across rk3368.

Right now, the file is empty, will add required changes
in future patches.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm/dts/rk3368-geekbox-u-boot.dtsi | 2 ++
 arch/arm/dts/rk3368-lion-u-boot.dtsi    | 2 ++
 arch/arm/dts/rk3368-px5-evb-u-boot.dtsi | 3 +++
 arch/arm/dts/rk3368-sheep-u-boot.dtsi   | 2 ++
 arch/arm/dts/rk3368-u-boot.dtsi         | 4 ++++
 5 files changed, 13 insertions(+)
 create mode 100644 arch/arm/dts/rk3368-u-boot.dtsi

diff --git a/arch/arm/dts/rk3368-geekbox-u-boot.dtsi b/arch/arm/dts/rk3368-geekbox-u-boot.dtsi
index 30ea9e433a..0b724fa45f 100644
--- a/arch/arm/dts/rk3368-geekbox-u-boot.dtsi
+++ b/arch/arm/dts/rk3368-geekbox-u-boot.dtsi
@@ -3,6 +3,8 @@
  * (C) Copyright 2017 Theobroma Systems Design und Consulting GmbH
  */
 
+#include "rk3368-u-boot.dtsi"
+
 &pinctrl {
 	u-boot,dm-pre-reloc;
 };
diff --git a/arch/arm/dts/rk3368-lion-u-boot.dtsi b/arch/arm/dts/rk3368-lion-u-boot.dtsi
index edc93e438f..5050d3dee8 100644
--- a/arch/arm/dts/rk3368-lion-u-boot.dtsi
+++ b/arch/arm/dts/rk3368-lion-u-boot.dtsi
@@ -3,6 +3,8 @@
  * (C) Copyright 2017 Theobroma Systems Design und Consulting GmbH
  */
 
+#include "rk3368-u-boot.dtsi"
+
 / {
 	config {
 		u-boot,spl-payload-offset = <0x40000>; /* @ 256KB */
diff --git a/arch/arm/dts/rk3368-px5-evb-u-boot.dtsi b/arch/arm/dts/rk3368-px5-evb-u-boot.dtsi
index 002767a033..5fee02a65b 100644
--- a/arch/arm/dts/rk3368-px5-evb-u-boot.dtsi
+++ b/arch/arm/dts/rk3368-px5-evb-u-boot.dtsi
@@ -2,6 +2,9 @@
 /*
  * (C) Copyright 2017 Theobroma Systems Design und Consulting GmbH
  */
+
+#include "rk3368-u-boot.dtsi"
+
 / {
 	chosen {
 		u-boot,spl-boot-order = &emmc;
diff --git a/arch/arm/dts/rk3368-sheep-u-boot.dtsi b/arch/arm/dts/rk3368-sheep-u-boot.dtsi
index 30ea9e433a..0b724fa45f 100644
--- a/arch/arm/dts/rk3368-sheep-u-boot.dtsi
+++ b/arch/arm/dts/rk3368-sheep-u-boot.dtsi
@@ -3,6 +3,8 @@
  * (C) Copyright 2017 Theobroma Systems Design und Consulting GmbH
  */
 
+#include "rk3368-u-boot.dtsi"
+
 &pinctrl {
 	u-boot,dm-pre-reloc;
 };
diff --git a/arch/arm/dts/rk3368-u-boot.dtsi b/arch/arm/dts/rk3368-u-boot.dtsi
new file mode 100644
index 0000000000..1e7d079315
--- /dev/null
+++ b/arch/arm/dts/rk3368-u-boot.dtsi
@@ -0,0 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright (C) 2019 Jagan Teki <jagan@amarulasolutions.com>
+ */
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

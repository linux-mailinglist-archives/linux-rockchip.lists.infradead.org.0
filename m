Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23850E2384
	for <lists+linux-rockchip@lfdr.de>; Wed, 23 Oct 2019 21:57:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oEzqhNhe9zrf9WK3/IawrcJeOVrQT6iVixHozSwZS/k=; b=gGc18DwzsSmiKB
	8mEzcF3/rWcrA8sl9P96zPkuhGqo7l7x10Cp4IZP370+Y11mrpr0ZYDo6BEw64UR/KrEGFGZPWuPS
	JXESTyxKpurcV1DbJQGh+LkZA8jDh16JgzSgANHLOjeFvX+RW+/VJvb7MRRliWCqCA1qVRSBnEn57
	bkfh/rp+A5X89pwrHjqK2Ab1+YET5H5qyF9/zoX0pVapY+DCYu3/DvWmXYiT4Z5rsiabMx2CVayiL
	PnsDZsxsWrBNHOBSmCUtw0HO1ZLxl+RRap9kX1vlfyWU7enLN/ahh2bLzuNDfbP8Z1uAqM9TJuLX3
	l4deAGj3iIbvu6uKO3eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNMl6-0005Cs-PS; Wed, 23 Oct 2019 19:57:28 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNMl3-0005AH-KC
 for linux-rockchip@lists.infradead.org; Wed, 23 Oct 2019 19:57:26 +0000
Received: by mail-pg1-x544.google.com with SMTP id e10so12744179pgd.11
 for <linux-rockchip@lists.infradead.org>; Wed, 23 Oct 2019 12:57:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=A7RLCH/JT0tEl6peEk3sNZgLp9Hip5V/KPZlFnSsfGo=;
 b=czX038GsrpKOboVqS+NPSMdKUbSxDx8QaLdhVx1xF9o2KOCe9RQyEnfm8dOdyV//Ru
 mCiOKJ8BmlF3O7p2ByHZ1WjLNIlQoQXsuxcTXOrJ1Tvk1b6eu9tYhTBp/JHHN2Y4SmR2
 B8SApoO1KBnFh8+J/4iHKb4HbfQnZ7k7L91JY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=A7RLCH/JT0tEl6peEk3sNZgLp9Hip5V/KPZlFnSsfGo=;
 b=Z2hQEg4DshVKXeZGRQu4MofEuqlywDu4r1pX0hsZVPchcQXVclb54mpU41nqoCzQ46
 svNlnwRAMjsmpcthWpN/dzYqZ7T7N9NN/k9Ci966MpJ2rpfyqJbm5rznymPC4XoxIwsq
 Fzkqs9x5T+rHNPZePJjcTEvuqht0Uu9DYNP+mUb653S28mxci2C0CA3PSkezUlxCBxND
 IzhlK+2SGR4uj4Pm9lBW2bJUugXgl8TpJMcl6LgUHaMV5YaOuP9WZ9CtzE93/KvW13Tv
 wJNDBboQK6IT2/1CKSKGwzYiTn8VGMaEPzhNJeG6zn1nAayMh8PONjNACu372Wq18StX
 dtFg==
X-Gm-Message-State: APjAAAV9dF0dwZt32G4nGhkHts17YYLMmZo9zNFIhzSYBoFCotrosOIH
 gH1Kp0mhiRuENCf1lnYSXJopoA==
X-Google-Smtp-Source: APXvYqyxqCDAb7jO7rjP+68BTOgGaLiIg1XcsNRr4h9tDcP+QEQXsQb7OnVPpMIH67ig5hq++1J9XA==
X-Received: by 2002:a63:1ca:: with SMTP id 193mr7700923pgb.104.1571860644588; 
 Wed, 23 Oct 2019 12:57:24 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.31])
 by smtp.gmail.com with ESMTPSA id o185sm31499280pfg.136.2019.10.23.12.57.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Oct 2019 12:57:23 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH v4 5/7] arm: dts: rk3036: Add rk3036-u-boot.dtsi
Date: Thu, 24 Oct 2019 01:26:50 +0530
Message-Id: <20191023195652.7158-6-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191023195652.7158-1-jagan@amarulasolutions.com>
References: <20191023195652.7158-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_125725_676427_4BA863F1 
X-CRM114-Status: GOOD (  10.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: u-boot@lists.denx.de, linux-amarula@amarulasolutions.com,
 Jagan Teki <jagan@amarulasolutions.com>, linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Add U-Boot specific dtsi file for rk3036 SoC. This
would help to add U-Boot specific dts nodes, properties
which are common across rk3036.

Right now, the file is empty, will add required changes
in future patches.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm/dts/rk3036-sdk-u-boot.dtsi | 2 ++
 arch/arm/dts/rk3036-u-boot.dtsi     | 4 ++++
 2 files changed, 6 insertions(+)
 create mode 100644 arch/arm/dts/rk3036-u-boot.dtsi

diff --git a/arch/arm/dts/rk3036-sdk-u-boot.dtsi b/arch/arm/dts/rk3036-sdk-u-boot.dtsi
index 6f15f4a8ec..754800c6e6 100644
--- a/arch/arm/dts/rk3036-sdk-u-boot.dtsi
+++ b/arch/arm/dts/rk3036-sdk-u-boot.dtsi
@@ -1,3 +1,5 @@
+#include "rk3036-u-boot.dtsi"
+
 &uart2 {
 	u-boot,dm-pre-reloc;
 };
diff --git a/arch/arm/dts/rk3036-u-boot.dtsi b/arch/arm/dts/rk3036-u-boot.dtsi
new file mode 100644
index 0000000000..1e7d079315
--- /dev/null
+++ b/arch/arm/dts/rk3036-u-boot.dtsi
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

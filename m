Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FD81B346
	for <lists+linux-rockchip@lfdr.de>; Sat, 27 Apr 2019 13:49:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2ceHRH4OLLNpjZ/06c7aTFIU2Hr3yD5b/s4BnU6fYJE=; b=GWj23hfL7P/Z4o
	bBofqOHJZ5FfrTAdZnRV5RDAF5X40G8tEF9XDY/qR3SS3vaJC3/BApO9iF+IodNrvyOEHvuUFQLSy
	TtyVxN2gHSIISOMzfkwSn5uZl0h2FLL3BEQ1qMdHlj6QhNa6UDAVdlufjOb2A7Bt4D6/WkigeRwCy
	fhbYOcDySOK8X7K267lpd3aN4DQccShsRWq5dGdz6naIRtu8Qv3mQOlO1Hi0OcWMahE3ftOkxvY6i
	vblTp/18kdG1KoJuzrECe7Jv4QvUWT/hPHW+5m26T57h0KRW69rEUAVdUMLrkkosbTlM21LWuicFV
	r2qzCgssdpK+/6YqM6+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKLpt-0001Ff-FW; Sat, 27 Apr 2019 11:49:41 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKLpq-0001DR-Cs
 for linux-rockchip@lists.infradead.org; Sat, 27 Apr 2019 11:49:39 +0000
Received: by mail-pg1-x544.google.com with SMTP id y27so2143815pgl.12
 for <linux-rockchip@lists.infradead.org>; Sat, 27 Apr 2019 04:49:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=d6JHM5/ooTGFq5zs+8Ro6gi/VDxPGLGt5ecNLlHQODg=;
 b=U9IJEb4SilWgPTsFn7VksOtOySV/WKaLt5Lwmi+bWHPobg21/xpi0Jxpgd8VXbO9Cr
 pzb6/r3KOdtK1/tIvBcnbRQjr6eocSHflbjxSiMg8LX1HF3n2SK1ztiKKSXvqTsjwH/I
 g1b2szjMu4At/vXcRRkPy+3cewf6IffMNgB4M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=d6JHM5/ooTGFq5zs+8Ro6gi/VDxPGLGt5ecNLlHQODg=;
 b=oV5e1/W3wYRnCUp38lvVPD2F+h2ZlGzqdVdPgaq40WmeVqFtcS19o27R5lxZk6pGU6
 Ajn+pJ2J9IPxPfmO6UftZdmYRhxKZ2ZyRXjRJNwESx0Q86RC8IXNNG4cIj8lwhf3PtcG
 P3Lg4eSVZocpDlIiROfjpTUEG0G9f8H7aaA1TFKcmqd5zKOoz0tfWy3XlseaNIUC3qKL
 GHCpocX4xb1tbZ0guEMF/DIfIsYvethc06uG74bZzJL68MsFnQpOIwwXXsTsg0TnxmAc
 4pey28OFRuP86AsBtWDintDU8dibWfZHgDyNtOX0hM135IBI+0bv+UzIbd56GKt+MPPA
 LLSg==
X-Gm-Message-State: APjAAAUhdqCPj39brK1i9Zr+Jg+RkCRdR7nDEh6tQggJrlRTTiavRvv6
 Eu7e0zuUYbvY+WdJMPRJUrh2aQ==
X-Google-Smtp-Source: APXvYqy30Y6IoHF1tmE41rjExHg+RfJRT8CyFj5jBa7IQCL5acLRoG6EbFKyRCoXewxFxuUohFwv/A==
X-Received: by 2002:a63:41c4:: with SMTP id o187mr47512502pga.73.1556365777914; 
 Sat, 27 Apr 2019 04:49:37 -0700 (PDT)
Received: from localhost.localdomain ([115.97.185.144])
 by smtp.gmail.com with ESMTPSA id y3sm2368768pfe.9.2019.04.27.04.49.33
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 27 Apr 2019 04:49:37 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, Akash Gajjar <akash@openedev.com>,
 Tom Rini <trini@konsulko.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v6 07/13] rockchip: dts: rk3399: nanopi4: Use CD pin as
 RK_FUNC_1
Date: Sat, 27 Apr 2019 17:18:50 +0530
Message-Id: <20190427114852.7608-8-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190427114852.7608-1-jagan@amarulasolutions.com>
References: <20190427114852.7608-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190427_044938_438530_094B27F6 
X-CRM114-Status: GOOD (  12.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
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

sdmmc cd pin is configured as RK_FUNC_GPIO which is wrong and
indeed failed to detect the sdcard on the board with below error

  Card did not respond to voltage select!

So, fix it by replacing RK_FUNC_GPIO with RK_FUNC_1 which
is already defined in rk3399.dts so make use of same like
other boards.

Add these changes in -u-boot.dtsi to make Linux sync easy for future
changes.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm/dts/rk3399-nanopi4-u-boot.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)
 create mode 100644 arch/arm/dts/rk3399-nanopi4-u-boot.dtsi

diff --git a/arch/arm/dts/rk3399-nanopi4-u-boot.dtsi b/arch/arm/dts/rk3399-nanopi4-u-boot.dtsi
new file mode 100644
index 0000000000..20db99c0b8
--- /dev/null
+++ b/arch/arm/dts/rk3399-nanopi4-u-boot.dtsi
@@ -0,0 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright (C) 2019 Jagan Teki <jagan@amarulasolutions.com>
+ */
+
+&sdmmc {
+	pinctrl-names = "default";
+	pinctrl-0 = <&sdmmc_bus4 &sdmmc_clk &sdmmc_cmd &sdmmc_cd>;
+};
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

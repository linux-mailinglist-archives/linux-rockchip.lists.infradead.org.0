Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7029121218
	for <lists+linux-rockchip@lfdr.de>; Mon, 16 Dec 2019 18:49:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XSKGy/6Ispv6mcyFd3n6efOVA8EExmNkh0PDZnlvaDA=; b=Vgvy9tHD2/mrh8
	S+ZzH+rKc/bUFO3+AtWSyaFvrlmu6k+gCsiQ5RWmKoRy2ekK27RyAlvvFEfz0qCXONUGyUaACdFMN
	LRpPd2qFRHzRvPZIitxn5ZjeA8fraZ8tdC9862+Xh8tSGWGYtHgSuvtVz7xnoJfnN5FEOCYfu655U
	nz5afprrjNNG3celngrplSZtZur1hsgwRd3RIt7CiwRTqW31RIQSKhFUitoRSKW7sPax39gMipmgn
	1qmfCA21uZqtCba/3kC//lW3m9cxYFIS6Sn45NV8iyR0iypmj3LlophmovJx4dajRqHnlywzkJ7wg
	7axWtG4rBWzC9vq1qVhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iguUJ-0004pM-Bg; Mon, 16 Dec 2019 17:48:55 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iguTS-0003yX-M5
 for linux-rockchip@lists.infradead.org; Mon, 16 Dec 2019 17:48:04 +0000
Received: by mail-pj1-x1042.google.com with SMTP id o11so3285567pjp.9
 for <linux-rockchip@lists.infradead.org>; Mon, 16 Dec 2019 09:48:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=67RnPKw63+A5B3mWKU81b+vfdJ8KYwSGtoL1kew422s=;
 b=rHVK/Ju0g15r+TRIbS2kezdGsHO37G24hm0K36ZYbAlHspIVlXS4Ys59i8GgAGUaBo
 4Otfi12AJqW/wV46QUynw6JkAr1d7J/IK/zQ/HojllVeIiX7ao2zKhm+pzp/DFP42FeE
 wVO8n2xTycRSGXty5gg+VNYHFHaSgOgftBJhw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=67RnPKw63+A5B3mWKU81b+vfdJ8KYwSGtoL1kew422s=;
 b=rAkqaO2O2C+I9pr/+qjA9CLg/hubnmkp5JArIACn2Qot1lNPaVak3yXg8/OhT0/oyg
 LNfJbcGMb+PEuO7T7F3Xx8eYbFBDaTppw/NROHSB9yi8vRCFyqRB3s0Eugf6E/H5UDOK
 8aKA3xX2It+XRiog4QNrqkJ/x9bAp9VpjqZTedrOXn4jYVtuGDWnPoJOiOAFfOxPtOaO
 eyvLDYJtlkIetHQUcaIwhy8KIIuUUg7a393ZajfidKcm4mkCFvXgBZVKBR8/CZEbw6ng
 JkGfiXH5MsEnTfh+QKsKNTb6kZw/X/gyWhHXy0qZM4cy/jqgpIEGC8qRWSsxLmeCCLfr
 oZ9g==
X-Gm-Message-State: APjAAAXTO81C1o5b1ZZkYJgx8oebnjcMJHHAs/4WxnN3d8weaSHzVAwo
 NFoas4I0Z6CTTvNlVqQTrD012A==
X-Google-Smtp-Source: APXvYqyAjAO4jnA4QyilqZkqXP3DoPuztugJ8Cps8+XwWEzUX1N4xsK5btgsHHZlP9temsP5T3pDDQ==
X-Received: by 2002:a17:902:d883:: with SMTP id
 b3mr16392991plz.231.1576518480927; 
 Mon, 16 Dec 2019 09:48:00 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c809:c7d5:6d28:a89:f9e1:1506])
 by smtp.gmail.com with ESMTPSA id
 a6sm22342924pgg.25.2019.12.16.09.47.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Dec 2019 09:48:00 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v3 4/4] arm64: dts: rockchip: Add Radxa Rock Pi N10 initial
 support
Date: Mon, 16 Dec 2019 23:17:11 +0530
Message-Id: <20191216174711.17856-5-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191216174711.17856-1-jagan@amarulasolutions.com>
References: <20191216174711.17856-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_094802_773132_3F33017D 
X-CRM114-Status: GOOD (  13.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Tom Cubie <tom@radxa.com>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Akash Gajjar <akash@openedev.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-amarula@amarulasolutions.com, linux-arm-kernel@lists.infradead.org,
 Jagan Teki <jagan@amarulasolutions.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Rock Pi N10 is a Rockchip RK3399Pro based SBC, which has
- VMARC RK3399Pro SOM (as per SMARC standard) from Vamrs.
- Compatible carrier board from Radxa.

VAMRC RK3399Pro SOM need to mount on top of radxa dalang
carrier board for making Rock Pi N10 SBC.

So, add initial support for Rock Pi N10 by including rk3399,
rk3399pro vamrc-som and raxda dalang carrier board dtsi files.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v3:
- none

 arch/arm64/boot/dts/rockchip/Makefile           |  1 +
 .../boot/dts/rockchip/rk3399pro-rock-pi-n10.dts | 17 +++++++++++++++++
 2 files changed, 18 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3399pro-rock-pi-n10.dts

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index 48fb631d5451..433033b18170 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -36,3 +36,4 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rock960.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rockpro64.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-sapphire.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-sapphire-excavator.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399pro-rock-pi-n10.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3399pro-rock-pi-n10.dts b/arch/arm64/boot/dts/rockchip/rk3399pro-rock-pi-n10.dts
new file mode 100644
index 000000000000..b42f94179538
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3399pro-rock-pi-n10.dts
@@ -0,0 +1,17 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2019 Fuzhou Rockchip Electronics Co., Ltd
+ * Copyright (c) 2019 Radxa Limited
+ * Copyright (c) 2019 Amarula Solutions(India)
+ */
+
+/dts-v1/;
+#include "rk3399.dtsi"
+#include "rk3399-opp.dtsi"
+#include "rk3399pro-vmarc-som.dtsi"
+#include <arm/rockchip-radxa-dalang-carrier.dtsi>
+
+/ {
+	model = "Radxa ROCK Pi N10";
+	compatible = "radxa,rockpi-n10", "rockchip,rk3399pro";
+};
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE4331FEF65
	for <lists+linux-rockchip@lfdr.de>; Thu, 18 Jun 2020 12:10:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WcqhqdR/9lRvxQahRpwPqQkDYcmIXSsZhB1tHX7/hwg=; b=kGPdfAV4ve+wD1
	s3rffcYhuYQavaVPcbT2jGBrNF86vHcVlrC56ZlcDGHs6M3qITD8KUIjTJPAIjq2Iqp6X3Thb7KKm
	w7uSXoojxyqJ12u20Ext25IqpzIa0GG+Ykco7pmJIBANm0j7TfsMIZCbO2Oo2l4mZSnYMwWGtrB80
	LCGA1N4u4TF0AIk7AoDNcV7BCN/a2nhcvLV7IXCSWYEwP2glA68nmX62iPKw/4lRvJc+2QEU9athj
	Q8KeL03w0ZpSs7WY10SFZ3SKRlhivM64j9y1s928DpoM7eAKiMSvxqAT+YqWiCgjJg5KcWJok7hnF
	0q0UOy0K8CF77pBW5nqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlrVI-0003nr-R8; Thu, 18 Jun 2020 10:10:40 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlrTp-0008Hu-CG
 for linux-rockchip@lists.infradead.org; Thu, 18 Jun 2020 10:09:11 +0000
Received: by mail-pl1-x641.google.com with SMTP id y18so2247003plr.4
 for <linux-rockchip@lists.infradead.org>; Thu, 18 Jun 2020 03:09:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0tx33LB4XJjdQBQtJdq8pHurr/XG5qcfV4Bojc0lI48=;
 b=Xjk4lMJzfKrnO0dJ7ag4s5wJ293r8pN6aY06e7dmdJJAdcWKbyXrT4Lrd0ctnmWbZy
 lDoSJPn4Mko3dbuiyumEg9xMiq9cbJM4Z/sxbZIMgQjxIpNigP9LDe2e7gjtnpx0USNq
 0Q1/Q7hodWx40U/KW/hIyUDq9BoujcY3vIhBE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0tx33LB4XJjdQBQtJdq8pHurr/XG5qcfV4Bojc0lI48=;
 b=fU8zbwMi1mU1csBHMhhvYjMKa2rPPcxg8ePH1Daa7B/3Qzc11DVQGfnyw/kXJUHu9t
 GpdIavBakAWm6/4UjjazIcJ+TV+gSEkQC+UxyudxvUTkyl9bc/a0jsqclhYIiMdDas2A
 6NQJFl9ADmCgdtniHhbyBtbV+ANI2+0pBJwZ+nrckcdtVFCT9tjjQvjtqT4gZVkmpC/+
 cpf20EisyCDeOThIMLQ7x4+DKjEyFEKMBkrGU2F6KrEWDkyvf2P/RVw+T46tRJOP2m3n
 cXZEVPKc4zvPUNHj5gp8TSnfMnH+lCraqTeGH0D0lovoLDfQgoyY860g+dcAYcFQabKm
 h0Tw==
X-Gm-Message-State: AOAM533mGWAl/ZPtbka2lw0woJm/KiUhqe02boo3fszQv9YVA0ngW4BD
 zz/cdl/cN4hKv5HOkKc4Wmfx8w==
X-Google-Smtp-Source: ABdhPJyQtBMBw9LrfkiQ5o078z+MCo/lVLK2v8zmEGv9YGdhytmSTD/XuQ7v2f2i0mL/BOi1ny7s8w==
X-Received: by 2002:a17:90b:4c4b:: with SMTP id
 np11mr3550785pjb.58.1592474947624; 
 Thu, 18 Jun 2020 03:09:07 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:b0c7:f192:869b:df87])
 by smtp.gmail.com with ESMTPSA id o16sm2190793pgg.57.2020.06.18.03.09.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Jun 2020 03:09:06 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>
Subject: [PATCH 4/4] ARM: dts: rockchip: Add Radxa Rock Pi N8 initial support
Date: Thu, 18 Jun 2020 15:38:32 +0530
Message-Id: <20200618100832.94202-5-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618100832.94202-1-jagan@amarulasolutions.com>
References: <20200618100832.94202-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_030909_542072_651C73DD 
X-CRM114-Status: GOOD (  12.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Jagan Teki <jagan@amarulasolutions.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Rock Pi N8 is a Rockchip RK3288 based SBC, which has
- VMARC RK3288 SOM (as per SMARC standard) from Vamrs.
- Compatible carrier board from Radxa.

VAMRC RK3288 SOM need to mount on top of radxa dalang
carrier board for making Rock Pi N8 SBC.

So, add initial support for Rock Pi N8 by including rk3288,
rk3288 vamrc-som and raxda dalang carrier board dtsi files.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm/boot/dts/Makefile              |  1 +
 arch/arm/boot/dts/rk3288-rock-pi-n8.dts | 17 +++++++++++++++++
 2 files changed, 18 insertions(+)
 create mode 100644 arch/arm/boot/dts/rk3288-rock-pi-n8.dts

diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index e8dd99201397..1d1b6ac26394 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -964,6 +964,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += \
 	rk3288-popmetal.dtb \
 	rk3288-r89.dtb \
 	rk3288-rock2-square.dtb \
+	rk3288-rock-pi-n8.dtb \
 	rk3288-tinker.dtb \
 	rk3288-tinker-s.dtb \
 	rk3288-veyron-brain.dtb \
diff --git a/arch/arm/boot/dts/rk3288-rock-pi-n8.dts b/arch/arm/boot/dts/rk3288-rock-pi-n8.dts
new file mode 100644
index 000000000000..ffec77f0a1b6
--- /dev/null
+++ b/arch/arm/boot/dts/rk3288-rock-pi-n8.dts
@@ -0,0 +1,17 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2019 Fuzhou Rockchip Electronics Co., Ltd
+ * Copyright (c) 2019 Vamrs Limited
+ * Copyright (c) 2019 Amarula Solutions(India)
+ */
+
+/dts-v1/;
+#include "rk3288.dtsi"
+#include "rk3288-vmarc-som.dtsi"
+#include <arm/rockchip-radxa-dalang-carrier.dtsi>
+
+/ {
+	model = "Radxa ROCK Pi N8";
+	compatible = "radxa,rockpi-n8", "vamrs,rk3288-vmarc-som",
+		     "rockchip,rk3288";
+};
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

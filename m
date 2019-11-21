Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96687105435
	for <lists+linux-rockchip@lfdr.de>; Thu, 21 Nov 2019 15:16:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/MD1YjlrVpU1Zjmk5N5OpWseHqu3xeeqsCg1sOmCgtQ=; b=DdiQ+jmm/hi9iK
	E7yA6PE9yUcr1C4+ml+VHhBjrrs9fbEkxx7RfN6afYqup64uYZGoYfmyhFD629NbxyPUxoLNa86I3
	aiSR4AfySXy5899hVsHcDrREvtDzYD+WZNnPGstCzu6Vfqw93w7Wz0+UHeaV7N4yZmlbauQuPxvD8
	xi8k9tGeE8gzCZHGsb+xZW8Z6+AREki8XAHm1ETdKeOzf0yzMw+ZfhNrjwoVyubF/lDYthn47shEA
	kxRny20T0KDoX0R8o6hBAx+ZbbPKS7U+fbOhph6/31gsWrR8q1PFO0RNVHqN0JXTzM58KEGd1qIEV
	p7E2j0eaQF61IqmoLnLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXnGQ-0003KL-2I; Thu, 21 Nov 2019 14:16:54 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXnF2-0001zO-ST
 for linux-rockchip@lists.infradead.org; Thu, 21 Nov 2019 14:15:33 +0000
Received: by mail-pg1-x542.google.com with SMTP id k32so1673375pgl.2
 for <linux-rockchip@lists.infradead.org>; Thu, 21 Nov 2019 06:15:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=2iioeMs5Kx4BkL9HRR7jq3PGUJUORMiE/KMuumIIAJw=;
 b=ivx9GLTZw4iYbg7Vfpk+DmHl2Jkhq/mSQkh43liGMP8PTOMHvdSlsKtWqiaDotsINd
 JTyzp2He872Q3i6IKieMF4tmQXtP+MyWYeSdbVW3U5DCLFFpUekfihD8BgqbmHvvIarn
 D7U/1ODz7nqUA3P+0Vg45/GAgGTgJkq30eRic=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=2iioeMs5Kx4BkL9HRR7jq3PGUJUORMiE/KMuumIIAJw=;
 b=SLCPf5NQmZB+dIHjm2iaKJqFypICQSlN8tuM6Z+QCdmrzFBRRoGsXxFmTSUoWe31Tj
 JXtC3BFwft3QkhvkmS4KZoC9YKrFB2kBs59+FQm2yW6WjV69SyFKUuYOi8+IT2+lcAnp
 Qu/pZzIiB1PZur1YGhYQ6epwdL9v8PR2QUsala2D94WkVnq28dcegKF2SMvpXyPo6Xmq
 sGcfuASJK1AuzzpPo14Yp3S96DR1Z9Mk9ceRSEGKbN71dcsh0V+3qoyotEqGR7tPy66g
 BFc8Lq5JoWLxb9KntnRLrf19MeYYZm7+/aLmRVj9DEdKUmWsZSwFRIBiU20wkZnIWHKb
 AsFg==
X-Gm-Message-State: APjAAAW/I3fmuLqlHTLf+v2Wy8X69fugCPIqZvZQaAq5czMSVbuR8F0X
 /OxmuA69w9oZy5VOdbcL4CQIRQ==
X-Google-Smtp-Source: APXvYqzbpColGFAP1phE+3x9ZVMevnKoOf2QQ9jnzx67KL0+t6Jb7Rj8dN6NxjJGFUOv5QOP4HIutw==
X-Received: by 2002:a65:4506:: with SMTP id n6mr9867425pgq.105.1574345726878; 
 Thu, 21 Nov 2019 06:15:26 -0800 (PST)
Received: from localhost.localdomain ([115.97.180.31])
 by smtp.gmail.com with ESMTPSA id w138sm4072304pfc.68.2019.11.21.06.15.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 Nov 2019 06:15:26 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v2 5/5] arm64: dts: rockchip: Add Radxa Rock Pi N10 initial
 support
Date: Thu, 21 Nov 2019 19:44:45 +0530
Message-Id: <20191121141445.28712-6-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191121141445.28712-1-jagan@amarulasolutions.com>
References: <20191121141445.28712-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_061529_085472_947D3AE1 
X-CRM114-Status: GOOD (  13.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Changes for v2:
- s/rockchip-radxa-carrierboard.dtsi/rockchip-radxa-dalang-carrier.dtsi

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

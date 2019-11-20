Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAC261038F9
	for <lists+linux-rockchip@lfdr.de>; Wed, 20 Nov 2019 12:42:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KSbLBphc845SpMEkyujZE2VfMyeHnJZEnS9jL9KfKj4=; b=Xytb0XlKFpdalX
	SQJLp4AclX33ymlmJPnSTNzNdZrlBgHSkV05mPGkygl2fP0H4gF+35UDN9rw1sMA3uG5T1r97Qfc6
	UAY5GOuyLeR3WFr/ZNDlArJK9sdYZNTXx+su4nMQ5cGRS2VBvsvKTDadh3IZkdcVJR9Zr9eIpri6X
	t0o8kcvbW/LOA8K0gyv3i8z5dyqCgxUy9Qjv0OhavNJY+GD5xO2iZO2sYFZeu79FCDbg85FpObUq2
	HY+aVRFW8AZkRsLC/iNzb34kEBshuWoZwWxuCmsvwnBKQtJU5+11rD9z1zMqvEB6hCb5lXU8PnbZQ
	veC12FxAHwjQaWAfHCjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXONj-0004Ms-Mx; Wed, 20 Nov 2019 11:42:47 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXOMJ-00034A-Ja
 for linux-rockchip@lists.infradead.org; Wed, 20 Nov 2019 11:41:21 +0000
Received: by mail-pl1-x643.google.com with SMTP id q18so10014279pls.5
 for <linux-rockchip@lists.infradead.org>; Wed, 20 Nov 2019 03:41:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=XG3FqVuwcEK3cEEdmwlKOUvSjQLzYWodVEQZQZxdgGw=;
 b=IBafvk3nhhoTcsHRx+LcFptem/D7w/nySgOpIqNTdynBSbozJ6gJW3N4d5echRt1Y6
 rqZAnABzdwU3cKUigi+mvaFbMw3RMTDMZ1tZAiOkC3tChk9sECnN/o98UDtHYY4APYsH
 vQfV8IJL3KN8+dWtPnrjWI3WtARRXUaEe6Q8k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=XG3FqVuwcEK3cEEdmwlKOUvSjQLzYWodVEQZQZxdgGw=;
 b=UK+8eug5yD7tvuzMDehmS2PYItijkpraXeT7v2SbIr0zQVsnq9iDCgKMDwu3LImM23
 KJw7Id1Ua7ofscaeUVjS9GryCFQE6FXtGTth8yeF2sEmHp9IE11b9kt6Tph1Ipt9Yu4L
 p4kZtUT5OEXmPK+LrfMDW+BMnyhVDkRxDNmj69PudGTA1x4UZuly2MA0m5UfikaIUAfO
 mdADSIVZ2IkjUQwsHcl3V/B+OJI/ESLI7ePxtNfozwXAPZihL++rZFdrrUJQG6XLKi3s
 uD4/12Xl786Hl2ydy04YwhEqKkI85Ep11Q5zXFRR5RPyrUsB8N6RVfvFIBhab9yxVDB8
 7Aug==
X-Gm-Message-State: APjAAAWSupM9rHsxop/L6LKUaPz/J6Akx14oEvibWtP3S6WSuM121MMq
 T5m5JpBJ6zRHBhWWghdMYvlLDg==
X-Google-Smtp-Source: APXvYqxKa0jSG5czR1wxW5TZYm5l7Yz1+Q3BK+S6kuzHUAq2+gY5d3tie4YLeCiftc91wuh1LEOH7Q==
X-Received: by 2002:a17:902:4a:: with SMTP id 68mr2526359pla.8.1574250078726; 
 Wed, 20 Nov 2019 03:41:18 -0800 (PST)
Received: from localhost.localdomain ([115.97.180.31])
 by smtp.gmail.com with ESMTPSA id h185sm13492850pgc.87.2019.11.20.03.41.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 Nov 2019 03:41:18 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH 5/5] arm64: dts: rockchip: Add Radxa Rock Pi N10 initial
 support
Date: Wed, 20 Nov 2019 17:09:23 +0530
Message-Id: <20191120113923.11685-6-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191120113923.11685-1-jagan@amarulasolutions.com>
References: <20191120113923.11685-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_034119_696680_823DC4D1 
X-CRM114-Status: GOOD (  13.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

VAMRC RK3399Pro SOM need to mount on top of Radxa carrier
board for making Rock Pi N10 SBC.

So, add initial support for Rock Pi N10 by including rk3399,
rk3399pro vamrc-som and raxda carrier board dtsi files.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
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
index 000000000000..1f7fbaa92c38
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
+#include <arm/rockchip-radxa-carrierboard.dtsi>
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

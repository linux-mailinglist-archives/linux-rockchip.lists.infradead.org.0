Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D0E01F5271
	for <lists+linux-rockchip@lfdr.de>; Wed, 10 Jun 2020 12:37:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LvCaUvG92TNZhX31o2wY2YB/miads6H+VfSOzueJPok=; b=Fo11DWCx/dfuY/
	TYiQaeLU1xy4fBoMSMT3DZ0nKj0hn7anpc99MoYRkHEY0cQZVvuNAtCk1uXtW+euE+ECbxCw7Xp7i
	ezFN/UG3qyiRiUfKcnBkFYk1E+tkiqS+LLf6EEcx3PpCbDIwC9vQVxsg0+srm+6UEsfTnzo4DEhPQ
	Ixj7WQ//oJGKUXoHbRpPrS+J8dFL6xAFCG4+TaIpCXGvHqN2BN3bttcFRgeMVIiBPNaBk1FWWcsJ2
	KW71xUpFVQkZtceEO0wSAuGUhqbM6BS3hGVa+PxfTjf1pvmxAUVwE6lUgSmVHql6WqsnWWn9OPKSk
	qBngczkjAvIC5fafye8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiy6k-0004pY-KX; Wed, 10 Jun 2020 10:37:22 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiy6h-0004oH-Ao
 for linux-rockchip@lists.infradead.org; Wed, 10 Jun 2020 10:37:20 +0000
Received: by mail-pl1-x644.google.com with SMTP id d8so797214plo.12
 for <linux-rockchip@lists.infradead.org>; Wed, 10 Jun 2020 03:37:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0i+1aPNe+6KBmQvAxuMPuxZ0bgNILs+vf/BEc9JKZpE=;
 b=PtXicEfrO6jaiWAyidUKLs/pT3LGzFRiq6VeYmelk47r7ZC1SZ7TXnPXfDtBvpTNPr
 wTLIFLwiUfMQPvCjmm/k1RbKTo1v/6KaLSkeWBhyaxLwHOBSpXfGWb7eJXWnFc8P2esC
 t/FbmhHC2FYLVvSVQ3PhcMTs8jknIA3YCIMRA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0i+1aPNe+6KBmQvAxuMPuxZ0bgNILs+vf/BEc9JKZpE=;
 b=qIDss6o3MSfZMzFU7rfu/luJZ/y33y0gt74lYtqmU08xkmNMkxm9IDvnaYfgT4pLp0
 iiupqhxwZbhXl18Aq0IWZnV9BvdWeGiEt3zsmTFv8m9wVYKNudTUXtg0iNXpK+SwDEa1
 l7ZJ5goeWttBzr34nGjJGKHbm8j3RP7IJYy2pNV2LGiVRPszQeYrZsMBLQHeqyNHekBO
 BO1ucTKgYrDN3whlytR3Ew9SqcVOlG9MDUsc7adAhOgLQ0n6SWkQdW4deqi/gJaDDMgj
 yrYZNBDKaKGjjPwjJEVHQiLHUm+waP08lU2blnNBIyim4VrJQ9Td8Corhup8prlcRhiS
 driQ==
X-Gm-Message-State: AOAM532gEauM7LujH/RF9zGby91aNyOv45FcqvohdwE6VvH4wX/bo+qr
 RVudwP/gYqS+vQVAGEI659iz6w==
X-Google-Smtp-Source: ABdhPJxBR+EAtX/mv19LCWJgZLCiLtjYz8ccxkUX/Et2IwcgHUL5DL8KcT6p7q/SRxzVYJJGP1issw==
X-Received: by 2002:a17:90b:2042:: with SMTP id
 ji2mr2489616pjb.68.1591785438843; 
 Wed, 10 Jun 2020 03:37:18 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:9daa:1b72:7bd0:50df])
 by smtp.gmail.com with ESMTPSA id x191sm12454754pfd.37.2020.06.10.03.37.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Jun 2020 03:37:17 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Simon Glass <sjg@chromium.org>
Subject: [PATCH 1/4] arm64: dts: rockchip: Sync v5.7-rc1 rk3399pro.dtsi
Date: Wed, 10 Jun 2020 16:06:55 +0530
Message-Id: <20200610103658.96678-2-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200610103658.96678-1-jagan@amarulasolutions.com>
References: <20200610103658.96678-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_033719_370254_D177A82D 
X-CRM114-Status: UNSURE (   9.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-rockchip@lists.infradead.org, Tom Cubie <tom@radxa.com>,
 U-Boot-Denx <u-boot@lists.denx.de>, Jagan Teki <jagan@amarulasolutions.com>,
 Suniel Mahesh <sunil@amarulasolutions.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Sync linux-next v5.7-rc1 rk3399pro.dtsi.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm/dts/rk3399pro.dtsi | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)
 create mode 100644 arch/arm/dts/rk3399pro.dtsi

diff --git a/arch/arm/dts/rk3399pro.dtsi b/arch/arm/dts/rk3399pro.dtsi
new file mode 100644
index 0000000000..bb5ebf6608
--- /dev/null
+++ b/arch/arm/dts/rk3399pro.dtsi
@@ -0,0 +1,22 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+// Copyright (c) 2019 Fuzhou Rockchip Electronics Co., Ltd.
+
+#include "rk3399.dtsi"
+
+/ {
+	compatible = "rockchip,rk3399pro";
+};
+
+/* Default to enabled since AP talk to NPU part over pcie */
+&pcie_phy {
+	status = "okay";
+};
+
+/* Default to enabled since AP talk to NPU part over pcie */
+&pcie0 {
+	ep-gpios = <&gpio0 RK_PB4 GPIO_ACTIVE_HIGH>;
+	num-lanes = <4>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pcie_clkreqn_cpm>;
+	status = "okay";
+};
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

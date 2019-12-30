Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FD0012CDAA
	for <lists+linux-rockchip@lfdr.de>; Mon, 30 Dec 2019 09:28:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EQRuc/0WPtACaOCH0dZpRe0O9Yep0g2SIHfVe0BMNbo=; b=pdRrLKlgZ5OAGs
	WhsOhkskjlZzIOxP5cv0RKu3W8WluBFk6Rse43TK0s9jbtwNMXKVsK4+E4DSB5XY+Ibn5vJJvsMwE
	aXXaPK8O8UX7YKbW1dp/P6WW1gpI4k7kaiaYfVesAg9y4ARL+YC+qOrs9BazRa7PTwNiff1A9WXbl
	ylrlgfTj+5ZhflcSChJayU1Ls0w2YadKD2ExYJNqkdmujqgw82TzF26heXKHmpTd5sn5eZMIAtxN8
	ttIaaoXgohT5JcWW1JIYGQTJ3/YVfgekHWYT4j1d1Wpdo+2VO0r47AIm2GiRrcoKVcf+lwpYZT30b
	3dDtAbIEC9QEh1nU4XFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilqPz-0006UG-1X; Mon, 30 Dec 2019 08:28:51 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilqPr-0006PM-F4
 for linux-rockchip@lists.infradead.org; Mon, 30 Dec 2019 08:28:44 +0000
Received: by mail-pf1-x442.google.com with SMTP id z16so17925864pfk.0
 for <linux-rockchip@lists.infradead.org>; Mon, 30 Dec 2019 00:28:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ohtCegxGTC6Cqe4V14RfDztSgq/DwnKYmeUpgrodjx4=;
 b=eVkjcaGrpr6f590iYQ7xgy1vPBwPMQt/DHBI+Qqmkzw+KBxrcKsJGo+D+zMCuOgS/9
 c3hgkn0pl7Je3EwJdXja/9zlfDqKlRJPTt+MrS57Y4bdE6qCUoA2slUsmGlypU3rC6oi
 5D4Icdh7nytt3XYLGzbMAluc7MgnCWabiqLyQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ohtCegxGTC6Cqe4V14RfDztSgq/DwnKYmeUpgrodjx4=;
 b=fZXZstAoxM3eUegpU93aJBL/TNxauadAeIhqDsX/RsrR7lDQOZlXlZMQAs6tcrews/
 FL3FngheycZAelB3wFCVDPa7hE05SRGiMA6fWFQOavp2JHpGNBy6UropPw3IZtDdvqUf
 lZuWCHDDGm3REb1KNMhzk/BHjPKf1SccYUnfTKQp6C9rhXaWFHi+6c8ZYHNwnC6Tms5+
 z6Jxq4QlRte214xzQp5aDg8hHL6wB9R9ZaUp6wyDJyytZ1wo2Xww3eiymIxOUdK2rMBQ
 gS8pFhDz5hpyFEEKqJmKgvn7m/wGd9isv/D7XoCubLrykDpcWx/AYij5Dl5lm13YEtz3
 xrVA==
X-Gm-Message-State: APjAAAUETuNhAQsKrh4Gx+B/ttjeqLMU/vXippOgLJ22A2Ff2lyQFbfD
 krmuqRvItOZAlJbm/9wxOxVKTw==
X-Google-Smtp-Source: APXvYqyXs8IBKw5ufDd9VTUXW+TBe6h4R2uy2ykV1+F12aS37QRYkDSSCjKTXzTdZAFlqUH4kJpwpQ==
X-Received: by 2002:a63:1f0c:: with SMTP id f12mr72487594pgf.247.1577694522801; 
 Mon, 30 Dec 2019 00:28:42 -0800 (PST)
Received: from localhost.localdomain ([49.206.202.131])
 by smtp.gmail.com with ESMTPSA id s1sm46240652pgv.87.2019.12.30.00.28.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Dec 2019 00:28:42 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH v5 5/7] arm: dts: rk3036: Add rk3036-u-boot.dtsi
Date: Mon, 30 Dec 2019 13:58:17 +0530
Message-Id: <20191230082819.30191-6-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191230082819.30191-1-jagan@amarulasolutions.com>
References: <20191230082819.30191-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_002843_566960_1189868F 
X-CRM114-Status: GOOD (  10.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Jagan Teki <jagan@amarulasolutions.com>, u-boot@lists.denx.de,
 linux-amarula@amarulasolutions.com, Akash Gajjar <akash@openedev.com>,
 linux-rockchip@lists.infradead.org
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
Reviewed-by: Kever Yang <kever.yang@rock-chips.com>
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

Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49DC3130174
	for <lists+linux-rockchip@lfdr.de>; Sat,  4 Jan 2020 09:38:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EQRuc/0WPtACaOCH0dZpRe0O9Yep0g2SIHfVe0BMNbo=; b=GoVhwrgSQgkxAu
	sY0UuCzqK3FSwP202lagg4xgZgwcevdoE7OKkVgv84sMGuDxeoEQG3cbIH/60H8nANO9sqmVwtHV9
	djuX7Mvp2J9PhnSjCtERrMmsRNDOfbUwQfaDZGifqm7X2G7ozM8hp3nOXXgBreQHkpeqMv8aGLTtg
	WNpp0uAhEjgyxA85JklOjPirOJ8FCeJgjrFandfdhuuFP6Yp0yV42wgP+RKt70Key9+SUo+mOp4BI
	5i7BADe3ztZh1nPIZM1XfhAX3ZjHnlw6LsO/yKnY3pwRTKQQEL9x3Dr4Am+NVT870MDgDa3ofiLI+
	yjNg//oQ5gy/HyRTH9BA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inexD-0003Gs-Bt; Sat, 04 Jan 2020 08:38:39 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inex9-0003EQ-EY
 for linux-rockchip@lists.infradead.org; Sat, 04 Jan 2020 08:38:36 +0000
Received: by mail-pf1-x442.google.com with SMTP id 4so24564924pfz.9
 for <linux-rockchip@lists.infradead.org>; Sat, 04 Jan 2020 00:38:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ohtCegxGTC6Cqe4V14RfDztSgq/DwnKYmeUpgrodjx4=;
 b=IIYRBXbOsGH8hXV6YBbKcuDH0M61UCJvQ0sBQqLsIIVm8VskXQe84D6X3VlaRx/D2f
 bFQ0daYQYsH80C6qSe3pBUnT/ySnmTh1AR2M7vN/icFSX/vkn20zE9nDzNb9Hfc/daX1
 oDnY1Gx9+ADOaCpI/FusdE7k0IoxXz2seeeT4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ohtCegxGTC6Cqe4V14RfDztSgq/DwnKYmeUpgrodjx4=;
 b=ajbN4adcS3wH72Zk3YZkvA7GaPXJprKPa3Y0PB9WndOKKc5C6QpTteQhhUAZJavi3t
 BSiVpuaN8H8nzIDUs0H1UzEFuAJmSllZHMUfYg4SGkw0o+9TgVKTWFLdVtub7YVNo52k
 t3RpfZ8IWeQsVDDBy8W00WRvenmDegju0XkhropkgXzMoR5Xi6r5iVeP8KaX03MfTtTW
 BcRY8TusuK2axszZJsZwQW7tOj+/iZM1D7iFwL0l6gKbYYM+5dbgrVC0z2Hq34KkEUUe
 CcY3eXBt0CFrY0pAH1E0+Clzzg9DDJjrLmwYnUNhpp2NtyTszyaa87sZuIdY3WWDWxWW
 ApWg==
X-Gm-Message-State: APjAAAWP0TuP7kiZUikuK5zhjtmcPEjV7nVKe/mLNHDNSdMTXeQyBnDK
 oI7stWRMEzlkrU8n+l9jCn4w5C9m3is=
X-Google-Smtp-Source: APXvYqw2OCsNMxRwHD8S/UVu+fKwlJ+ecHoAH72qZztKGuNCA1dgNImD+ep66LSJjLdjTEyfYFm3vg==
X-Received: by 2002:a63:1853:: with SMTP id 19mr97741447pgy.170.1578127114436; 
 Sat, 04 Jan 2020 00:38:34 -0800 (PST)
Received: from localhost.localdomain ([49.206.201.128])
 by smtp.gmail.com with ESMTPSA id z4sm70201623pfn.42.2020.01.04.00.38.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 04 Jan 2020 00:38:33 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH v6 4/6] arm: dts: rk3036: Add rk3036-u-boot.dtsi
Date: Sat,  4 Jan 2020 14:08:04 +0530
Message-Id: <20200104083806.3930-5-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20200104083806.3930-1-jagan@amarulasolutions.com>
References: <20200104083806.3930-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200104_003835_512789_CB371135 
X-CRM114-Status: GOOD (  10.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-rockchip@lists.infradead.org, u-boot@lists.denx.de,
 "Matwey V . Kornilov" <matwey.kornilov@gmail.com>,
 Jagan Teki <jagan@amarulasolutions.com>, linux-amarula@amarulasolutions.com,
 Akash Gajjar <akash@openedev.com>
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

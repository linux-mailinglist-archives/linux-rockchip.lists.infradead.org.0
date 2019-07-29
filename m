Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6396878695
	for <lists+linux-rockchip@lfdr.de>; Mon, 29 Jul 2019 09:47:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OsHOiY1HqewrZNjE8h7p3whi2AAZtkvzeOWcwF56gg8=; b=Ln3jSQBQVD4i4V
	PNN5KLl2+rPws//i72kzOmVGBWmPYWsKErH3ANo8skNfotL5TMLoYPkEXLuEdBzsm/OsBaVr+fwF6
	GXGBTdZb9V1pOWxRecvHNy37PtBjbJA9fQCtw78lQ1AlyocoCJqPSGaPeJ04PDkzir3FAiS2N2yZq
	dAzENXI/V1AlIgeWlHhkUXcwkJoIIC5/KFg+UYtGH/3e252naR/7q2CjGT94ooXkD0q6xdGtJmyIw
	TAUXgyLPxqn/njduu4WQABDLGlDGRDFSYhOq4sSBj8+YJoO5Y8+TcGH+qi0OOmbCCF2Pcx7SkTooF
	SUG2VMRMuAHoE4ltTCug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs0Na-0001qs-FQ; Mon, 29 Jul 2019 07:47:34 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs0NW-0001of-LC
 for linux-rockchip@lists.infradead.org; Mon, 29 Jul 2019 07:47:32 +0000
Received: by mail-pg1-x544.google.com with SMTP id f5so18987884pgu.5
 for <linux-rockchip@lists.infradead.org>; Mon, 29 Jul 2019 00:47:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=4JXnpx3l8P91jIfWnhDZlrMqLln7iecWOgFHUzA4zZs=;
 b=HkHPufJY/pf+GYK9W1OEZ4vs+M7705C2HMu2blRCvJgqmDxLAGCwX2CIzgit84eSQi
 /X6WeMIs6a191Tkn6UNSOy2tgVCIgG3akl4db87Bnt/3lkMlUsAXWVrtyZSVtU9fIL77
 YERv+5pRmYyCIxl0RWczwVk4ywUJr38dpMA3o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=4JXnpx3l8P91jIfWnhDZlrMqLln7iecWOgFHUzA4zZs=;
 b=sp2rnPZd2bFwc4V6RVUocdPT43A/PDFS0pFxlWLFfEJ8rb3mLD32kJIFknfVhR86Jm
 Cs1S+z4ze9pUF/788l7mwPJccus4ZQ+qmSf02fgI8ZQrgY6LC498CMiIFAElIV4I07M/
 hi5GIdhCui7MYqeZQz28KQXtMi7lmx+PXnTzoH28bRtKUncuiF+tXiptnyBKFe84dwHl
 KfkYgvySMwFj/Xs1fMTXKkiyA99As+S+SgnylxH3DsRgr912I3YqJ31O5mfMed0n+TYY
 qVMQKdQXYRpTjEFDoF5KIAbBzcRPPgk2Rn1651XBWwT/BoCQjJLPYjMBrv9x/pNA7pmB
 Epvg==
X-Gm-Message-State: APjAAAWfrVCT02RXraS92OiD/l1vyhRCiFPGdpPsn8fqAbtsBIQsjuvU
 1OLI0uUZcpDDByQL59NUGWPmfA==
X-Google-Smtp-Source: APXvYqxO2r26UF1PaczY/WRjn7FsU95aieXeZOYgBJz0nSARiVlZYqrj/UKVWeV+efkpAxcmukaBmw==
X-Received: by 2002:a17:90a:b883:: with SMTP id
 o3mr109551398pjr.50.1564386450038; 
 Mon, 29 Jul 2019 00:47:30 -0700 (PDT)
Received: from localhost.localdomain ([49.206.203.41])
 by smtp.gmail.com with ESMTPSA id h14sm75723348pfq.22.2019.07.29.00.47.26
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 29 Jul 2019 00:47:29 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH 02/15] rockchip: Add cpu-info
Date: Mon, 29 Jul 2019 13:16:58 +0530
Message-Id: <20190729074711.16988-3-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190729074711.16988-1-jagan@amarulasolutions.com>
References: <20190729074711.16988-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_004730_779536_A3C978EA 
X-CRM114-Status: GOOD (  11.25  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Jagan Teki <jagan@amarulasolutions.com>, u-boot@lists.denx.de,
 linux-amarula@amarulasolutions.com, Akash Gajjar <akash@openedev.com>,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Add cpu information for rockchip soc.

This would help to print the SoC family number, with
associated temparature, clock and reason for reset etc.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm/mach-rockchip/Makefile   |  1 +
 arch/arm/mach-rockchip/cpu-info.c | 24 ++++++++++++++++++++++++
 2 files changed, 25 insertions(+)
 create mode 100644 arch/arm/mach-rockchip/cpu-info.c

diff --git a/arch/arm/mach-rockchip/Makefile b/arch/arm/mach-rockchip/Makefile
index a12b8d4434..655b3e3e1a 100644
--- a/arch/arm/mach-rockchip/Makefile
+++ b/arch/arm/mach-rockchip/Makefile
@@ -25,6 +25,7 @@ ifeq ($(CONFIG_SPL_BUILD)$(CONFIG_TPL_BUILD),)
 # we can have the preprocessor correctly recognise both 0x0 and 0
 # meaning "turn it off".
 obj-y += boot_mode.o
+obj-$(CONFIG_DISPLAY_CPUINFO) += cpu-info.o
 
 obj-$(CONFIG_ROCKCHIP_RK3188) += rk3188-board.o
 obj-$(CONFIG_ROCKCHIP_RK3128) += rk3128-board.o
diff --git a/arch/arm/mach-rockchip/cpu-info.c b/arch/arm/mach-rockchip/cpu-info.c
new file mode 100644
index 0000000000..088fc806a6
--- /dev/null
+++ b/arch/arm/mach-rockchip/cpu-info.c
@@ -0,0 +1,24 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * (C) Copyright 2019 Amarula Solutions.
+ * Author: Jagan Teki <jagan@amarulasolutions.com>
+ */
+
+#include <common.h>
+
+int print_cpuinfo(void)
+{
+	puts("SoC:   Rockchip ");
+
+	/* TODO print operating temparature and clock */
+# ifdef CONFIG_ROCKCHIP_RK3288
+	puts("RK3288\n");
+# elif CONFIG_ROCKCHIP_RK3399
+	puts("RK3399\n");
+# else
+# warning Please update cpu.c with correct CPU information
+	puts("Family\n");
+# endif
+
+	return 0;
+}
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

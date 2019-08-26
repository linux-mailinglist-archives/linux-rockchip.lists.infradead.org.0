Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 969599D5AD
	for <lists+linux-rockchip@lfdr.de>; Mon, 26 Aug 2019 20:21:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Prl+90U5Mf4Z+8R9LDoS+faaeJVPbj9StCh2IT29yRE=; b=jNNVowLDFlOSEO
	hUqluYuwUChKxwE5FvpEddSoaTLG61ojnIt9u1fEagU4vEkEcVK61EbfBT1UbPN8AfLAL0PcoNXdV
	/Cp/91srpz4PyRLfW212BHCFmSdSw/8NI/4up10ImvZL+b+Y1OpWuJt5P/gndB5bi1o8SdLhkAgvZ
	IGmKNAF9dYK3wlXIsDMOoIm2zW7MoQZy59CLSXj33I5i/bSD6E9zgvxJKYuAmUT8pjzfwyZ8hp/xO
	DZ0Fbe1BcAie+TWkXxWd4bMWCmQPBE7B4Y3O4RZlHBkLq2iU91rHaSJqAw3xbZvBZEY0AiHTLsvqp
	5xuLWoVm0aLfj+Ps6Exg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2JcL-0001KN-V3; Mon, 26 Aug 2019 18:21:26 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2JcH-0001JL-CB
 for linux-rockchip@lists.infradead.org; Mon, 26 Aug 2019 18:21:22 +0000
Received: by mail-oi1-x244.google.com with SMTP id n1so12869016oic.3
 for <linux-rockchip@lists.infradead.org>; Mon, 26 Aug 2019 11:21:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=xRu0x2zdsAS9SouCZDw1havsmdJYtE07rAHvq61BChY=;
 b=Njd9rnY4NpsZZ0omanW16HSEaFP3BtbdL+CudxE9YQR+fTXQfnBNjRZJ83dH2paeVP
 2iJMDRa9dlqnqx/nDKtqGuf0WMG+iOn2SLczmFMFz+vCm6g2ve4DNj4zg3+ztEdn1VAm
 ZbS5mP0ZcZ2+sT1gXXeZagEaw/xThhCikev0w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=xRu0x2zdsAS9SouCZDw1havsmdJYtE07rAHvq61BChY=;
 b=tpznOhdcYr04z/TSm7zJ0qiyOtOGzOWUkHs0F0bgpzKC1j+d05bDlmf3qJswfVBFni
 LTsAS4GG5e4o/izlXINBVzeW/n1Hem7T59n1ZtmDlArMnrGN1UCkCmBmc9727OLrtUZk
 BwpNJfrzkLeTZ9ICO/oLlWua8TkYX4BUwad+mZ6Xv4CvuNg/pwx3g+py4/X20JfyH+cP
 RyjlitV0+2C5X2Hy68OtcFb+iTfUkEMT3ITPlt4Y4F62IvhYs+iMB1wASu//X9TLX7cw
 HLkkiy0ie1ElHGao2TMc4vvDx5mopCLE2dm/Fb3cdVKsuFAmclXvXRco7LvDdiTpneH1
 lJXA==
X-Gm-Message-State: APjAAAVXBCPAbozO/9nCsjcaEUjndhVTqFOapcxEJs45J+TviFXA8NF2
 j1SSLBW2DhYtXS8MCnGQ61WKkw==
X-Google-Smtp-Source: APXvYqyETi6B1n4pgzBI69QG+dtjF3YyFWm4sto3WhhLbOks1EsHeb5q3YRQyJIbuBOmE5I2u77MZA==
X-Received: by 2002:a05:6808:198:: with SMTP id
 w24mr13261346oic.53.1566843679641; 
 Mon, 26 Aug 2019 11:21:19 -0700 (PDT)
Received: from jagan-XPS-13-9350.attlocal.net
 ([2600:1700:7430:38e0:d5b0:4823:33c8:5e46])
 by smtp.gmail.com with ESMTPSA id c11sm4401461otr.54.2019.08.26.11.21.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 Aug 2019 11:21:19 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH v2 01/16] rockchip: Add cpu-info
Date: Mon, 26 Aug 2019 23:50:56 +0530
Message-Id: <20190826182111.30999-2-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190826182111.30999-1-jagan@amarulasolutions.com>
References: <20190826182111.30999-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_112121_497883_A1F79E95 
X-CRM114-Status: GOOD (  10.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Add cpu information for rockchip soc.

This would help to print the SoC family number, with
associated temparature, clock and reason for reset etc.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm/mach-rockchip/Makefile   |  1 +
 arch/arm/mach-rockchip/cpu-info.c | 16 ++++++++++++++++
 2 files changed, 17 insertions(+)
 create mode 100644 arch/arm/mach-rockchip/cpu-info.c

diff --git a/arch/arm/mach-rockchip/Makefile b/arch/arm/mach-rockchip/Makefile
index 207f900011..76fc4942ee 100644
--- a/arch/arm/mach-rockchip/Makefile
+++ b/arch/arm/mach-rockchip/Makefile
@@ -20,6 +20,7 @@ ifeq ($(CONFIG_SPL_BUILD)$(CONFIG_TPL_BUILD),)
 # we can have the preprocessor correctly recognise both 0x0 and 0
 # meaning "turn it off".
 obj-y += boot_mode.o
+obj-$(CONFIG_DISPLAY_CPUINFO) += cpu-info.o
 obj-$(CONFIG_ROCKCHIP_COMMON_BOARD) += board.o
 endif
 
diff --git a/arch/arm/mach-rockchip/cpu-info.c b/arch/arm/mach-rockchip/cpu-info.c
new file mode 100644
index 0000000000..90ce65d9ff
--- /dev/null
+++ b/arch/arm/mach-rockchip/cpu-info.c
@@ -0,0 +1,16 @@
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
+	printf("SoC: Rockchip %s\n", CONFIG_SYS_SOC);
+
+	/* TODO print operating temparature and clock */
+
+	return 0;
+}
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

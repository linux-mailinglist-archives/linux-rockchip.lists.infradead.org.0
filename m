Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B284F1354C9
	for <lists+linux-rockchip@lfdr.de>; Thu,  9 Jan 2020 09:52:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7VDLrKE3VmIxDqJ8e840Cb2OY8heL1s3aHlJvN/4di0=; b=o8mVaBWQh8Oi6/
	uT4lUOrJ0mHCsERHkhzpmPoyt1IcEh04EyxEBwVo7O80IEfG/ZRuQtC03Ak26u8mzw8kSaRzNSwCn
	23oQCxp8wUEo/vHbsG7J5L8qA9/4tCXt9ddGXPI7S0mcb4HxAct6eUqaPVcUEFVTitM8wS7Xy3stf
	5IE/DKUmEkhJiV45MAcE1m4csx1Y1hSvVh5UupF/0aLn8eaybypBfwlfosYUefTZaRHPW32V7la11
	TTixJHz8xJyByt6/YKGB+7KNjmePxGazYFAN68Yd6PAgp859nz8vWcCWCQ5RBdSLA6Wa+pBAoPtEI
	7cAT4/bgZEhzUj+X1A+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipTYm-000650-9m; Thu, 09 Jan 2020 08:52:56 +0000
Received: from mail-pj1-x102b.google.com ([2607:f8b0:4864:20::102b])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipTYW-0005mU-1z
 for linux-rockchip@lists.infradead.org; Thu, 09 Jan 2020 08:52:41 +0000
Received: by mail-pj1-x102b.google.com with SMTP id l35so874990pje.3
 for <linux-rockchip@lists.infradead.org>; Thu, 09 Jan 2020 00:52:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=30ccU2NBOUtSV7DOUopHwnFzt1mfF8Y1Cu5jsAQdzIY=;
 b=SmE1zTHiUZ0FOXZNeO03uhDAC7De/emcdPw/ddaO4+2DKcGxjQk15ZY2qqdJNK7GfW
 pYdD5qzbjZGEHjenWo7H0+9SfVu1x7WVb5XepzM/JD2UPqUP8hAGS+P3eyvj0HARMEfz
 lTaUFLOIZsBRuAXq/sY4k25wLp4RGE9DLLoxg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=30ccU2NBOUtSV7DOUopHwnFzt1mfF8Y1Cu5jsAQdzIY=;
 b=Z6C9X20M+ntqyUA9IWi3QYF9AIocWw0BNwaU2n+hchFyKIMrYswtUoZvajrZKezlmO
 Pbng+O4A620yEI9tDEkUgqn3LvyzPype5Js4VmzUsTprwhn/T+pXkJKlSBkqQMVs0cRp
 1s254Nej+bguGQlWs9bFnf1UNMCKr0JiZB4bUYIv+wHoQO+iFV/xpbJcprNmdl+ioJA7
 DOV5fDaTeIARRn19tP0reXxgIS8PC09Y4dYMkPDX4Q+XF+VSONxoCUZ1yYrYN3LkmMnX
 d3JzGXYyYGL6fxe66vD+EN4s8A0jtr0O71QSHJVcTVkuh80J6rGsGsmwB3jQhsF1dt9+
 cI9Q==
X-Gm-Message-State: APjAAAUTCPABc2892nCASSH6bWSXzkDyZ/SmoF3T3tJDRq/2FCCt/y7E
 AngnL1DM/q6PEkfzmeekI6sJis35OAc=
X-Google-Smtp-Source: APXvYqzSb69X1XpBWr05j4yPXTJIVwJKartqvZqkuY3rzZ4jx7JNJBN4GJ/sMjV3lyRu8sUMBVu7qQ==
X-Received: by 2002:a17:902:16a:: with SMTP id
 97mr10266010plb.163.1578559959005; 
 Thu, 09 Jan 2020 00:52:39 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c809:c7d5:d888:9871:544a:b516])
 by smtp.gmail.com with ESMTPSA id o17sm2139121pjq.1.2020.01.09.00.52.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Jan 2020 00:52:38 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH v4 1/8] rockchip: Add cpu-info
Date: Thu,  9 Jan 2020 14:22:15 +0530
Message-Id: <20200109085222.22670-2-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20200109085222.22670-1-jagan@amarulasolutions.com>
References: <20200109085222.22670-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_005240_135571_A735CF56 
X-CRM114-Status: GOOD (  10.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: u-boot@lists.denx.de, linux-amarula@amarulasolutions.com,
 Jagan Teki <jagan@amarulasolutions.com>, linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Add cpu information for rockchip soc.

This would help to print the SoC family number, with
associated temparature, clock and reason for reset etc.

Reviewed-by: Kever Yang <kever.yang@rock-chips.com>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm/mach-rockchip/Makefile   |  1 +
 arch/arm/mach-rockchip/cpu-info.c | 16 ++++++++++++++++
 2 files changed, 17 insertions(+)
 create mode 100644 arch/arm/mach-rockchip/cpu-info.c

diff --git a/arch/arm/mach-rockchip/Makefile b/arch/arm/mach-rockchip/Makefile
index a728acda24..5b38526fe0 100644
--- a/arch/arm/mach-rockchip/Makefile
+++ b/arch/arm/mach-rockchip/Makefile
@@ -22,6 +22,7 @@ ifeq ($(CONFIG_SPL_BUILD)$(CONFIG_TPL_BUILD),)
 # we can have the preprocessor correctly recognise both 0x0 and 0
 # meaning "turn it off".
 obj-y += boot_mode.o
+obj-$(CONFIG_DISPLAY_CPUINFO) += cpu-info.o
 obj-$(CONFIG_ROCKCHIP_COMMON_BOARD) += board.o
 obj-$(CONFIG_MISC_INIT_R) += misc.o
 endif
diff --git a/arch/arm/mach-rockchip/cpu-info.c b/arch/arm/mach-rockchip/cpu-info.c
new file mode 100644
index 0000000000..9bccbd4f68
--- /dev/null
+++ b/arch/arm/mach-rockchip/cpu-info.c
@@ -0,0 +1,16 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * (C) Copyright 2019 Amarula Solutions(India)
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

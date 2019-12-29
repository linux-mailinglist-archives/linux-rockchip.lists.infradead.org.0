Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6962B12CA89
	for <lists+linux-rockchip@lfdr.de>; Sun, 29 Dec 2019 20:07:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qxmqThSuGVhouHmgTcqfMCOyzZmZ4JR3hJKI40fzkSA=; b=fXwJMQaAValR9Z
	hLkMaXCzjuHAaBhxcxwQ73BKQy2jtwnou2X3+sxaD2k3xIFhL12QfKH+oKm4iUo5ADOR5UyRun8dc
	cSAmdUvXW5emVB9Ig0AHgzVR9AyHTu+iGGsU21ytMkHOVcEewagY+l+uMK9X3jfCc4T2B6kKmtw1j
	R1sf+8C7FIqmLaQJ2zZk5K4IdIR0nUoo47/4Cv2oL+R6KKJRigTW7IpHVfGmRAQQ/3mkiWmSMw7Do
	GXsuh6eBbPq4dWPz7OgwJJUB7iWL0wwKiNmKgpy2quOQokCaoiakYa6xfMcDNTrc55cWlUrd6bPIG
	LtmHps4DKQjMzi/e+zlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilduk-0003Sr-Jl; Sun, 29 Dec 2019 19:07:46 +0000
Received: from mail-pj1-x1033.google.com ([2607:f8b0:4864:20::1033])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilduh-0003RP-5Z
 for linux-rockchip@lists.infradead.org; Sun, 29 Dec 2019 19:07:44 +0000
Received: by mail-pj1-x1033.google.com with SMTP id d5so6949127pjz.5
 for <linux-rockchip@lists.infradead.org>; Sun, 29 Dec 2019 11:07:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=RUdkH3Hn90mUMENnHQDibrNe0Nd/k7EHeETRfs17yAs=;
 b=OwMhhIizflyTEycfaYrxrF3Rkoz7d64uNubuYQ/A7J+wVVZm3vSX0QttDEffVJ6XiK
 3YIYjyavLnRGpcZukWBLpqhKzYdXzH/CZPxZHQ7mprNzdZOxn6kzc5Ke09kwAnxldqYb
 d530NcsYDmFrYT+FgARpV0cQjS87qSCxdRii0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=RUdkH3Hn90mUMENnHQDibrNe0Nd/k7EHeETRfs17yAs=;
 b=CPThYIIJuBvloh3jW1AsZIfbsqKnJuOgLcXRIRwLJZue6hUGYombNkuBRT2od+gfp2
 /1DYXqwj0D9bqU0y3Hfz4ANzLztj1TmU0u9Wezy5R+jNo/cnvnrrsjtGQxkgtheeUDSs
 RyOKPvUMWS7ihw3v3fgWxMEce+vgOSR1xT7v9jJY9hUbrRG4kYMVNgx2CczJ1SwsrRD2
 /nBaT8eguwYIWPN8v0o+WzogHeHnwsirDIL2Iu1bM4fvP0MUxqXRu8YP6HU6VACJCYf8
 HP3T/kNk2D60jmvkDSd1zI3oaW24aL9UXTqStv9maAGD8/KsYZ+20Aez3p/YtyZusTqp
 5f6w==
X-Gm-Message-State: APjAAAWZ4BtkhKqgS1jlCeALnY2aT/P85J5+zrJheoHc9Baxda2T2qZg
 q6JzfZ6wmqKCt4tJPT6kvvQ2DA==
X-Google-Smtp-Source: APXvYqzYGrtPkH4BKgun/3X8dprdhVNDKHjMe6nfQ81LkfZaF5fxyFEFudHaU1D9BzIX+Zx8ry62Ag==
X-Received: by 2002:a17:902:7d85:: with SMTP id
 a5mr44511327plm.330.1577646461998; 
 Sun, 29 Dec 2019 11:07:41 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c809:c7d5:f590:ce0e:1ce1:c326])
 by smtp.gmail.com with ESMTPSA id u10sm44879700pgg.41.2019.12.29.11.07.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 29 Dec 2019 11:07:41 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH v3 1/5] rockchip: Add cpu-info
Date: Mon, 30 Dec 2019 00:37:22 +0530
Message-Id: <20191229190726.29266-2-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191229190726.29266-1-jagan@amarulasolutions.com>
References: <20191229190726.29266-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_110743_206243_C0191A64 
X-CRM114-Status: GOOD (  10.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Reviewed-by: Kever Yang <kever.yang@rock-chips.com>
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

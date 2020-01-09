Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2707513606F
	for <lists+linux-rockchip@lfdr.de>; Thu,  9 Jan 2020 19:48:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R679ln0g23DQEuvwphE3zEf8Wcm9oxyR0XWM/xvXyAo=; b=t7iYO1ddB669pV
	1WDNff31hhr68CTOZVm/eYwJfS/9VKEp6UD8k0+8ZsIXaG8nGRjSE9ffSlOIN2s35WBQG2UvwRd2c
	SCvU6YYO1B9wnrAKQTXA46nmkz9UfMkj840ShY2bWz8bZka5SjlUifQFbaFpAzPAd+kWNBx5GBkiA
	GmvD4UWH5n61PQxWER7Xk4HnFIOJtyvpELLEUiAqMFPuXg6CyfsQoOs586j39P6s6TBVhZI+o8vla
	rgOXxUX09IcEa1ZPDGK+dxaAYEfo/sc3sZlVkgldmP1PUZBpyMuHJouYxqtk7Cea06yp/BFW3Rjr2
	Zno/V6xIv0iTSYB6vIvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipcrC-0003E8-AY; Thu, 09 Jan 2020 18:48:34 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipcr9-0003DJ-MZ
 for linux-rockchip@lists.infradead.org; Thu, 09 Jan 2020 18:48:33 +0000
Received: by mail-pf1-x442.google.com with SMTP id x184so3786627pfb.3
 for <linux-rockchip@lists.infradead.org>; Thu, 09 Jan 2020 10:48:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=JN+8+Nyqtv8x9KontYLpWObUjUyrnqdpOzW75jef2Gs=;
 b=YC3EvEdbcM8sWmRZs1v4NU/GCFvalamRKgYE/DaCNljFrht0nUpEy5iWNY8043czpC
 w3cUIFeUk3Tq+VTJptBq5PjtsaopldvXGi6jQ/RuL60cZHVEHiteoGxhiEGflA7QYDG7
 mWDuCEKz0RfL6gL+jCt+54RYix+L1EZYvSRlc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=JN+8+Nyqtv8x9KontYLpWObUjUyrnqdpOzW75jef2Gs=;
 b=HHRL5F4acDCMkjnMdw7fDtbLV7lXAupUzUH7CAQFQ6daHMZapQlWnhIC+6NwIOp5yl
 OEICboq0pfg4NL6OAqeUqdzEtwXUX+QGohGGmt2YNDRusYNuwcdMSIAm8+JoOqsGnauv
 xkFAhoDxrNwjfgHFagtjXwOO09t3boJg+lZulht9zYhcWWhT0VPNpHz48v91+bQ48spV
 yL9Re1LFkK1aRDwe9VNdoNKIIJGJYTpYo8bb4f9Yex2Ia92okQtPuFtzWJCEAhNGj0F1
 7ci9Eli1nP1locpA5BMyI5o4ZUf8Cy5oEab1IdDB+3BC+N5/sx1RpxaQxyoHSd6cS3z/
 m7Kw==
X-Gm-Message-State: APjAAAVtoTk95FXfxXLhHD0o1rZhSHuo0VACV+M+eUpztSeu1IClqY9e
 JBxJ6ilQXv1aANMUhzFLFPYVIg==
X-Google-Smtp-Source: APXvYqzOQwcIXmilDQyaodX5NPubR/o8wbXoxBCjhqKcyxgNoWSBpnMa29lDsl0a9FzaBee+HGyOjw==
X-Received: by 2002:a62:b418:: with SMTP id h24mr13287164pfn.192.1578595710879; 
 Thu, 09 Jan 2020 10:48:30 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c809:c7d5:c4eb:be5d:1485:edee])
 by smtp.gmail.com with ESMTPSA id i8sm8967306pfa.109.2020.01.09.10.48.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Jan 2020 10:48:30 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH v7 5/7] arm: dts: rk3188: Add rk3188-u-boot.dtsi
Date: Fri, 10 Jan 2020 00:16:20 +0530
Message-Id: <20200109184622.3098-6-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20200109184622.3098-1-jagan@amarulasolutions.com>
References: <20200109184622.3098-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_104831_763372_A89275D0 
X-CRM114-Status: GOOD (  10.58  )
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

Add U-Boot specific dtsi file for rk3188 SoC. This
would help to add U-Boot specific dts nodes, properties
which are common across rk3188.

Right now, the file is empty, will add required changes
in future patches.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm/dts/rk3188-radxarock-u-boot.dtsi | 2 ++
 arch/arm/dts/rk3188-u-boot.dtsi           | 4 ++++
 2 files changed, 6 insertions(+)
 create mode 100644 arch/arm/dts/rk3188-u-boot.dtsi

diff --git a/arch/arm/dts/rk3188-radxarock-u-boot.dtsi b/arch/arm/dts/rk3188-radxarock-u-boot.dtsi
index 1bb5408592..204bb3a90e 100644
--- a/arch/arm/dts/rk3188-radxarock-u-boot.dtsi
+++ b/arch/arm/dts/rk3188-radxarock-u-boot.dtsi
@@ -3,6 +3,8 @@
  * Copyright (c) 2018 Fuzhou Rockchip Electronics Co., Ltd.
  */
 
+#include "rk3188-u-boot.dtsi"
+
 &cru {
 	u-boot,dm-spl;
 };
diff --git a/arch/arm/dts/rk3188-u-boot.dtsi b/arch/arm/dts/rk3188-u-boot.dtsi
new file mode 100644
index 0000000000..1e7d079315
--- /dev/null
+++ b/arch/arm/dts/rk3188-u-boot.dtsi
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

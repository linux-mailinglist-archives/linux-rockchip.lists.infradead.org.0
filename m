Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 661F27869A
	for <lists+linux-rockchip@lfdr.de>; Mon, 29 Jul 2019 09:47:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MA/v+L3UN1pOpBkll083A7bgOQ1YrzqY1SKInzWzL7g=; b=FtQEBKecdwOFfh
	Xspa2ByCSZ3pXtXXhl4NgschPQykg4UL5UzNJsHGoeYmwqcFnTEa9KOtnydludeLr/+BVp82tCR8q
	qMVdc+11rvQnJZltIJGMfJrY8rzpawJerqjPviz5TeK3CyIbosbqN7E6/RAJoQLN7wLk+OiZ/rYmu
	UaHYRzxSFIUtshlTDhb2pBFcdGxj+UsjWsKR0fKh5EfTOFvN5Tmg13/e6AFagzmcJNvtyZF0c4kr8
	HWqsafKV3JL7NvfJdcSkbnsVm3vqofv1dGlPuZwP5hfGvabK6KL2H4V61lQV7rfrxuufFW3sQiPuA
	CVucfUXB2BqxmOdOZayQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs0Nu-00024d-Lp; Mon, 29 Jul 2019 07:47:54 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs0Nq-00022k-Pm
 for linux-rockchip@lists.infradead.org; Mon, 29 Jul 2019 07:47:52 +0000
Received: by mail-pg1-x544.google.com with SMTP id l21so27804976pgm.3
 for <linux-rockchip@lists.infradead.org>; Mon, 29 Jul 2019 00:47:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=8hP6rdkEvhhT0hEj14Sjz70+JpS0tBwbVOMye6DfvhQ=;
 b=Zw8yjHY7mHBX03i5BrKP7ZPH48R8qQyU8zs4fxsP6usxxN0gAdHYdHjaSce9sHnze7
 UgOHcGxUjMhFYYpXeEfhxbWLnUB/dJuFGTb88pDalkgDgXv+zGromRF2VmR7mU0asgiz
 vxIDk9ntQw62/x0RBqfxiEisL2MIt7Qg8elpc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=8hP6rdkEvhhT0hEj14Sjz70+JpS0tBwbVOMye6DfvhQ=;
 b=tjhtXDDrsX4J3vIFCf8+T8ItMfBxC2YfjsJHy8yKWZgJBEAjo8KbeJ5iInB9530p4h
 xjJ+9mCq9NCjkGRqoqE1anKAiqhN/Y11lYb8bF4tgoE9XaezXMnaate6kFjocQTAG1XJ
 2uE1zYi4MmJroPo0uOISoqE8eESMJlMWDAqp/K3IfFOZATOg4cSPqKeZBt0BX+fuo354
 oz5Ibd4lmEjKdFCZ5OOo4/NCSRG102V+Uq1rqtBobkCOwPzsC4HWjplMD0s99RH6X7im
 cCzQ5dyTIJ7g0wCHO9JJUlKShrUsWqptx+qSHT48+vbZz60bngKV+YnVCyQSZskp3lLI
 8wZg==
X-Gm-Message-State: APjAAAV+5Qy1EA1nZdhREb4mGhz0OE0VtVW7f+Su7lhgFwEp2OaOpRke
 Kjuoo8MSKBG5mDpCBFeXuE9eTA==
X-Google-Smtp-Source: APXvYqx0+A8nmjzgHgyduAQfOs8A09ga/PRWHRqYcXWhr/YktN63Jiz7gtCnvmATDBfcuaShkhS2Tg==
X-Received: by 2002:a17:90b:8cd:: with SMTP id
 ds13mr105023725pjb.141.1564386470284; 
 Mon, 29 Jul 2019 00:47:50 -0700 (PDT)
Received: from localhost.localdomain ([49.206.203.41])
 by smtp.gmail.com with ESMTPSA id h14sm75723348pfq.22.2019.07.29.00.47.46
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 29 Jul 2019 00:47:49 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH 07/15] wdt: designware: Simplify enable function
Date: Mon, 29 Jul 2019 13:17:03 +0530
Message-Id: <20190729074711.16988-8-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190729074711.16988-1-jagan@amarulasolutions.com>
References: <20190729074711.16988-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_004750_928864_E68344AE 
X-CRM114-Status: UNSURE (   9.03  )
X-CRM114-Notice: Please train this message.
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
Cc: linux-rockchip@lists.infradead.org, Chin Liang See <clsee@altera.com>,
 u-boot@lists.denx.de, Jagan Teki <jagan@amarulasolutions.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 linux-amarula@amarulasolutions.com, Akash Gajjar <akash@openedev.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Simplify dw watchdog enable function by using
proper macro and drop unwanted macros.

Cc: Chin Liang See <clsee@altera.com>
Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 drivers/watchdog/designware_wdt.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/watchdog/designware_wdt.c b/drivers/watchdog/designware_wdt.c
index bd858f0608..2979fda44e 100644
--- a/drivers/watchdog/designware_wdt.c
+++ b/drivers/watchdog/designware_wdt.c
@@ -14,7 +14,6 @@
 
 #define DW_WDT_CR_EN_OFFSET	0x00
 #define DW_WDT_CR_RMOD_OFFSET	0x01
-#define DW_WDT_CR_RMOD_VAL	0x00
 #define DW_WDT_CRR_RESTART_VAL	0x76
 
 /*
@@ -38,9 +37,11 @@ static int designware_wdt_settimeout(unsigned int timeout)
 
 static void designware_wdt_enable(void)
 {
-	writel(((DW_WDT_CR_RMOD_VAL << DW_WDT_CR_RMOD_OFFSET) |
-	      (0x1 << DW_WDT_CR_EN_OFFSET)),
-	      (CONFIG_DW_WDT_BASE + DW_WDT_CR));
+	u32 val = readl(CONFIG_DW_WDT_BASE + DW_WDT_CR);
+
+	/* Enable watchdog */
+	val |= DW_WDT_CR_RMOD_OFFSET;
+	writel(val, CONFIG_DW_WDT_BASE + DW_WDT_CR);
 }
 
 static unsigned int designware_wdt_is_enabled(void)
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

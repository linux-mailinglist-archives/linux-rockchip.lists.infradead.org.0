Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 027D07869B
	for <lists+linux-rockchip@lfdr.de>; Mon, 29 Jul 2019 09:48:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LExzNgrQeqHnaY/wiFyL0dA8pIP66d1Ef5N0rU2PCHY=; b=RMN/BOpNVwEyZo
	qOJ/8YXpV+c0TUMIfyoiooN5D9mHhCqRq2gNNt1a4GWB2MNtzOCHVfO/cAnICqmbQPayaMKbInyWP
	jupwPVavl2Qr0LCDYqGzcJ//iqJWguPTOOtNViL8VpJkPgX/d8fKAbL7f5pn7T1nSkbGDL6IwkMY3
	qrD/jP8SRJkRtgg86JJKvREgbVjA9V6X0nNISmx96+Sy+cKh8WxxK/+yUpEzk1Uvy1zdribf5O2f9
	iQGwhBmM8kPwt92mGmB9wayzlmvMFYvCfx3X52vyaGYqEyXuCqO0QRqrnCKeLazY2nS05Ot9q+efi
	5cwMgx4XTBaZCI78+/MQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs0Nz-00027T-6R; Mon, 29 Jul 2019 07:47:59 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs0Nw-000266-2z
 for linux-rockchip@lists.infradead.org; Mon, 29 Jul 2019 07:47:57 +0000
Received: by mail-pf1-x441.google.com with SMTP id g2so27584667pfq.0
 for <linux-rockchip@lists.infradead.org>; Mon, 29 Jul 2019 00:47:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=3hoUuQJVXo5vdHFLjFQWacOvMnFEqgMjS7FzAI1sCA8=;
 b=UPGJPNGssHHiAFdf5UvE2/TGDwEKPzovESALS2rUK3L7vhd6Lzi2wn33Kt/mhoFY01
 OpyVGnhgEGfpjc/bH7TGcdQNTedVuvNH+8IVHMlv8g3AsyhIE52yeQL/c0pYZiGB/Du2
 9SvWu1LRMlvHANz/H8UoX0GK3ICJkRjra2W2I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=3hoUuQJVXo5vdHFLjFQWacOvMnFEqgMjS7FzAI1sCA8=;
 b=kkx+ioPTRdtwO4PAo8xZzTh3MwSLG49c/JtlNwk0bouzUZo/KNJKNT+3x2eH83P4CH
 T6CXfWxcBt4KXG/S22f+mi1cD+b5ygiYUJ5h+T3ogC2Qi2JuxqpO0iBU5lxeQulIsySN
 bP3r0HWJqVUdkQl1FXWy2Ds/12iK8+8vKq4ONimkLP+O1wd/Gaut3YsCVbped7f0UaKM
 JgC6rY9Rgd0EsHuzfbjpObC4zIlgn9x2iYldYWyOOJWhVjnNeM7XA+Rg2MWeH/7HcItQ
 P3uXJQ7IUocY8PkVe1Vyc6g/VIrm6zqRBDKuPrJeLfWRswR8t97AZEytkjERDSCI7KWB
 J3LQ==
X-Gm-Message-State: APjAAAXdDCD2r03DRFLiRhLxW2Rf8db1cDDWy1Zr4jt9v9u2kac0OLcC
 N9dEvn1PHvrzeUWtlUeYzms6vA==
X-Google-Smtp-Source: APXvYqyxKkhW0HrUPY5NvqdOaqVjHyx344s0DTxq1DdV5v2O1HqpFR1L/zyyJoBHDSU73NpnrAewhA==
X-Received: by 2002:a17:90a:b908:: with SMTP id
 p8mr23018965pjr.94.1564386474934; 
 Mon, 29 Jul 2019 00:47:54 -0700 (PDT)
Received: from localhost.localdomain ([49.206.203.41])
 by smtp.gmail.com with ESMTPSA id h14sm75723348pfq.22.2019.07.29.00.47.50
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 29 Jul 2019 00:47:54 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH 08/15] wdt: dw: Add driver-model support
Date: Mon, 29 Jul 2019 13:17:04 +0530
Message-Id: <20190729074711.16988-9-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190729074711.16988-1-jagan@amarulasolutions.com>
References: <20190729074711.16988-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_004756_129885_2B72CE37 
X-CRM114-Status: GOOD (  12.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
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

Add driver-model code for designware watchdog.

Cc: Chin Liang See <clsee@altera.com>
Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 drivers/watchdog/designware_wdt.c | 114 +++++++++++++++++++++++++++++-
 1 file changed, 113 insertions(+), 1 deletion(-)

diff --git a/drivers/watchdog/designware_wdt.c b/drivers/watchdog/designware_wdt.c
index 2979fda44e..4efbb25f86 100644
--- a/drivers/watchdog/designware_wdt.c
+++ b/drivers/watchdog/designware_wdt.c
@@ -4,7 +4,6 @@
  */
 
 #include <common.h>
-#include <watchdog.h>
 #include <asm/io.h>
 #include <asm/utils.h>
 
@@ -16,6 +15,117 @@
 #define DW_WDT_CR_RMOD_OFFSET	0x01
 #define DW_WDT_CRR_RESTART_VAL	0x76
 
+#ifdef CONFIG_WDT
+
+#include <dm.h>
+#include <wdt.h>
+#include <clk.h>
+
+struct dw_wdt {
+	void __iomem *regs;
+	unsigned long clk_rate;
+};
+
+static inline int dw_wdt_is_enabled(struct dw_wdt *dw)
+{
+	return readl(dw->regs + DW_WDT_CR) & DW_WDT_CR_RMOD_OFFSET;
+}
+
+/*
+ * Set the watchdog time interval.
+ * Counter is 32 bit.
+ */
+static int dw_wdt_set_timeout(struct dw_wdt *dw, unsigned int timeout)
+{
+	signed int i;
+
+	/* calculate the timeout range value */
+	i = (log_2_n_round_up(timeout * dw->clk_rate)) - 16;
+	if (i > 15)
+		i = 15;
+	if (i < 0)
+		i = 0;
+
+	writel((i | (i << 4)), dw->regs + DW_WDT_TORR);
+
+	return 0;
+}
+
+static void dw_wdt_enable(struct dw_wdt *dw)
+{
+	u32 val = readl(dw->regs + DW_WDT_CR);
+
+	/* Enable watchdog */
+	val |= DW_WDT_CR_RMOD_OFFSET;
+	writel(val, dw->regs + DW_WDT_CR);
+}
+
+static int dw_wdt_reset(struct udevice *dev)
+{
+	struct dw_wdt *dw = dev_get_priv(dev);
+
+	if (dw_wdt_is_enabled(dw))
+		writel(DW_WDT_CRR_RESTART_VAL, dw->regs + DW_WDT_CRR);
+	else
+		dw_wdt_enable(dw);
+
+	return 0;
+}
+
+static int dw_wdt_start(struct udevice *dev, u64 timeout, ulong flags)
+{
+	struct dw_wdt *dw = dev_get_priv(dev);
+
+	dw_wdt_set_timeout(dw, timeout);
+	dw_wdt_enable(dw);
+
+	return 0;
+}
+
+static int dw_wdt_probe(struct udevice *dev)
+{
+	struct dw_wdt *dw = dev_get_priv(dev);
+	struct clk clk;
+	int ret;
+
+	dw->regs = dev_remap_addr(dev);
+	if (!dw->regs)
+		return -EINVAL;
+
+	ret = clk_get_by_index(dev, 0, &clk);
+	if (!ret)
+		dw->clk_rate = clk_get_rate(&clk);
+	else
+		return -EINVAL;
+
+	dw_wdt_reset(dev);
+
+	return 0;
+}
+
+static const struct wdt_ops dw_wdt_ops = {
+	.reset = dw_wdt_reset,
+	.start = dw_wdt_start,
+};
+
+static const struct udevice_id dw_wdt_ids[] = {
+	{ .compatible = "snps,dw-wdt" },
+	{ /* sentinel */ }
+};
+
+U_BOOT_DRIVER(dw_wdt) = {
+	.name = "dw_wdt",
+	.id = UCLASS_WDT,
+	.of_match = dw_wdt_ids,
+	.ops = &dw_wdt_ops,
+	.priv_auto_alloc_size = sizeof(struct dw_wdt),
+	.probe = dw_wdt_probe,
+};
+
+#else
+
+#include <watchdog.h>
+
 /*
  * Set the watchdog time interval.
  * Counter is 32 bit.
@@ -70,3 +180,5 @@ void hw_watchdog_init(void)
 	hw_watchdog_reset();
 }
 #endif
+
+#endif /* CONFIG_WDT */
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

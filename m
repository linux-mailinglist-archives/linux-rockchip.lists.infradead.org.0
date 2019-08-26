Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEA499D5B3
	for <lists+linux-rockchip@lfdr.de>; Mon, 26 Aug 2019 20:21:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NgxO18jmagRyJYJ2uxeLV2hle0xmx9Pyp6qKZSb8A4M=; b=IedckzUOtDODyI
	EO8OAynTTgZa/RDNHD4T/VTIAYVyKbisPASi1O0+donQlZr5b2juTZmxJlJ0Q0SlaypC/8QhM1T52
	ATbt6jW+xmGJI9iyjSo5JoTYmncfkzdmxCLjiYOytulSSPRX3U5ZKd76fjxFGYlMNUxwky+GUmu2z
	xDDOe1qQMjpj+/LrynbYkr+NdK7Uw9Z29qeeBVrbffUF8kisy6ambDr288A2rNlmpz+PFtzmnwcQf
	eJ78qE63uUceJH6TLwrPcTbO34okkoZCmOrKWseUCBbliihyqw26Pu+YDUIN8siA5GRrWDEsTEbA6
	I3OYLZbTMvWB8bHc4hiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2Jcc-0001bL-L4; Mon, 26 Aug 2019 18:21:42 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2JcP-0001Nw-Iu
 for linux-rockchip@lists.infradead.org; Mon, 26 Aug 2019 18:21:31 +0000
Received: by mail-ot1-x344.google.com with SMTP id z17so16067056otk.13
 for <linux-rockchip@lists.infradead.org>; Mon, 26 Aug 2019 11:21:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=aNcJ9rEaaKnDjlWm6bI6hY9Nv7plN57nwYDZFCxbKmE=;
 b=JTibY+rsBS1tdGFqFJ2eB/lscz4QogFrrLCNJrPDWUOqkrgA+S/k1LuBBTHSR2vyS5
 bkLqMCnySBA0VlD5FdDJCibO7La2ZRHIDTAhm1OINcBjo52TSqsrGV/UCjAMZ+f14D8g
 +694P7+LWmUdPGHKOkEUxSSKl4mh8xWwLlODY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=aNcJ9rEaaKnDjlWm6bI6hY9Nv7plN57nwYDZFCxbKmE=;
 b=qswsPq/f4Wj7smk9QUqKsrVOUBu7VVVyAbkhj7tanAcbVB5wE8b/3GkjiXNfDUm947
 3Ob5Hdf/ecJxTDofOWXqMcOUuiO+5aNw1TKUO6JiwIHDEBFWXn6DRmuKcRUS24dXLSba
 17HFPMQnKZLS7xqDtFoI+8/Duo5dB7gJlQTNb78E2KqBhiJv+H3tcuKJaWzEsmnzegQI
 jtjijz1SCudGaddCgz6diGbM+FzgOqJ0AuZYUElxDSPOtfAOSIkBK2ULny9fONkqs1Gr
 /6DXbY2KT8vHst9E1DaZlzG35GgqPDW2h1jLq0Uvg49JUNXZBNnzY+GoDVL6axMoq6Gl
 Nveg==
X-Gm-Message-State: APjAAAXWHPH3fbp70qLp/NM0B36zr4t2UrbxBTjz8rBvv7duXH+/DzxO
 7Ym0f40o8aYSo3T1N1RVPykBDw==
X-Google-Smtp-Source: APXvYqz2fGbwjaHI+SOjgqktyYLV1mu7mPWOj46rqk+Gv8/npnbR0TCXN6sMov7SZiEmdcJSVjZykg==
X-Received: by 2002:a05:6830:1615:: with SMTP id
 g21mr15633100otr.124.1566843688512; 
 Mon, 26 Aug 2019 11:21:28 -0700 (PDT)
Received: from jagan-XPS-13-9350.attlocal.net
 ([2600:1700:7430:38e0:d5b0:4823:33c8:5e46])
 by smtp.gmail.com with ESMTPSA id c11sm4401461otr.54.2019.08.26.11.21.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 Aug 2019 11:21:28 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH v2 07/16] wdt: dw: Add driver-model support
Date: Mon, 26 Aug 2019 23:51:02 +0530
Message-Id: <20190826182111.30999-8-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190826182111.30999-1-jagan@amarulasolutions.com>
References: <20190826182111.30999-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_112129_644506_66CB80E2 
X-CRM114-Status: GOOD (  11.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
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
 drivers/watchdog/designware_wdt.c | 118 +++++++++++++++++++++++++++++-
 1 file changed, 117 insertions(+), 1 deletion(-)

diff --git a/drivers/watchdog/designware_wdt.c b/drivers/watchdog/designware_wdt.c
index 2979fda44e..c822b1e36b 100644
--- a/drivers/watchdog/designware_wdt.c
+++ b/drivers/watchdog/designware_wdt.c
@@ -4,7 +4,6 @@
  */
 
 #include <common.h>
-#include <watchdog.h>
 #include <asm/io.h>
 #include <asm/utils.h>
 
@@ -16,6 +15,121 @@
 #define DW_WDT_CR_RMOD_OFFSET	0x01
 #define DW_WDT_CRR_RESTART_VAL	0x76
 
+#define DW_WDT_MIN_TOP		0
+#define DW_WDT_MAX_TOP		15
+#define DW_WDT_TOPINIT_SHIFT	4
+
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
+	int i, top_val;
+
+	/* calculate the timeout range value */
+	i = log_2_n_round_up(timeout * dw->clk_rate) - 16;
+	top_val = clamp_t(int, i, DW_WDT_MIN_TOP, DW_WDT_MAX_TOP);
+
+	writel((top_val | (top_val << DW_WDT_TOPINIT_SHIFT)),
+	       dw->regs + DW_WDT_TORR);
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
+	if (ret)
+		return ret;
+
+	dw->clk_rate = clk_get_rate(&clk);
+	if (!dw->clk_rate)
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
@@ -70,3 +184,5 @@ void hw_watchdog_init(void)
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

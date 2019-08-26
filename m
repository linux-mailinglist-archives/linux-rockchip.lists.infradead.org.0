Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B5C39D5B2
	for <lists+linux-rockchip@lfdr.de>; Mon, 26 Aug 2019 20:21:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MA/v+L3UN1pOpBkll083A7bgOQ1YrzqY1SKInzWzL7g=; b=Wip/96gqwi/kwu
	DYXhxP9nC/pXSxL7eUVEZ80NTOxV2nFfxjukKNzONsUwN7LkT48QVf7zavIURLso8HeTYlH21ls5v
	vsPQxLOni7u44bzpy94xh7FiXIBpp2fgZrjI4+sx82IEw5uVgdX/wp8rAtmGDAiYzMmFMREewldOF
	0LibFPtu+uBUVusCtgpuEs/jsZmT5/TMz7AohhIhVPODFVKm8JhpmFQoANKUHSYO2GO/e71OMSwAN
	1aVnig36unPo/qcQLOo++30pujNbcceiDiXmkgoq2EvsG6X6tyYH9nSza81tcfrfTQyBFLhH8RDs4
	z3f3IR7r0/OW9SopQ3ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2Jca-0001Yl-7d; Mon, 26 Aug 2019 18:21:40 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2JcO-0001MY-HK
 for linux-rockchip@lists.infradead.org; Mon, 26 Aug 2019 18:21:30 +0000
Received: by mail-ot1-x342.google.com with SMTP id p23so11942009oto.0
 for <linux-rockchip@lists.infradead.org>; Mon, 26 Aug 2019 11:21:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=8hP6rdkEvhhT0hEj14Sjz70+JpS0tBwbVOMye6DfvhQ=;
 b=ft4AtN5xDxHjy6eOId++YM1EB7GJSKqvdjtHWYgnGKEhArM++k5myYew8y1mJTP2sZ
 DqeH3Mbk/VyRVtif3wtmop05/hb0Y6nFX1l16/JIjyoJp3nhU06eKbgUex2tEG/UHetQ
 8SmeAzs6en3FSb2Uf+750xu0Q3WDHXL83SsAQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=8hP6rdkEvhhT0hEj14Sjz70+JpS0tBwbVOMye6DfvhQ=;
 b=fCFPNEsV3b5vErO7UP1r2qUzM3wZ7EgWtZetg2DP5T7R1OQzv1mr52i2uROLk17QiK
 aqioPbe9pI6qeuSUyVcudHxFGqFtSOYxOYB9R98EZVmEIrpYGxNYYfUVhPP3zoiIIczi
 x+rdkMVbXQx3E6rBtoDwRod4LdXAXvQKsEY9Uy2BVCF7LN1cwzxEdVjkgKhsJsjaCS8G
 UBEelO13cpmrIcSER4XWwrIq0j9Q9MOrhjs3Q7REOu0WABKRj4nt+ybVK8GXtWRy1EuF
 J2nOxPv2jQGxVB3ee8Rco5yie/QZ7UBA6r5Th/piXkhtrwrDLrQHDjmstx3cL3fpLiSz
 tCzw==
X-Gm-Message-State: APjAAAW7H9f3x71NytIm+1B8RWzaoFc8UAVyVW5d2KYsrcZcvXWVZBp5
 5kGTXJqVxSj3fWP4ZXo6KlCGpg==
X-Google-Smtp-Source: APXvYqzm1+FntLl6FQEiVro/U1i5yZzn0uwDxMAdubld1WOR8uL9ojfUk/HhkGLEOMN5HdATGt3WCg==
X-Received: by 2002:a9d:6852:: with SMTP id c18mr16870633oto.218.1566843687442; 
 Mon, 26 Aug 2019 11:21:27 -0700 (PDT)
Received: from jagan-XPS-13-9350.attlocal.net
 ([2600:1700:7430:38e0:d5b0:4823:33c8:5e46])
 by smtp.gmail.com with ESMTPSA id c11sm4401461otr.54.2019.08.26.11.21.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 Aug 2019 11:21:27 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH v2 06/16] wdt: designware: Simplify enable function
Date: Mon, 26 Aug 2019 23:51:01 +0530
Message-Id: <20190826182111.30999-7-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190826182111.30999-1-jagan@amarulasolutions.com>
References: <20190826182111.30999-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_112128_727291_6D665020 
X-CRM114-Status: UNSURE (   8.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
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

Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D00D49D5B1
	for <lists+linux-rockchip@lfdr.de>; Mon, 26 Aug 2019 20:21:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5JCuo0c50BiE4F5J83HpYU6olNsKtVoN5G4bWeWLu7M=; b=Iw6OfbQ4mAGjgz
	BFEjie3YvRi15/7LVD/c97UdzUu5p6BAAny0/4b58yUwsgWi5jPHKMXX/diVYabNAjKp7NOoFTZVq
	5fob/E8xLw+U1ECzO1twE4G4lzJyUfOEsM09xim7/gGm2PZhtOw8TVWs1A4R8V+7wqhoN1veDfCVA
	yCodT4d2Pfz1YPG/AdtklStEy94/M3Vg78BR8fPI7CjoXG12pHEW41xSRW06zD5PrF6SjJIcTAYfa
	ot8pcKNDwqmTearJZCIwzevwSe+n7XdPfROg1+nXKzQTI9Me0pYZCqv9aXkiP90rTG5N8SzQfoSAF
	Tr4gZ/EcKFWzG3zjKrtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2JcY-0001WF-7y; Mon, 26 Aug 2019 18:21:38 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2JcM-0001Ko-CM
 for linux-rockchip@lists.infradead.org; Mon, 26 Aug 2019 18:21:28 +0000
Received: by mail-ot1-x343.google.com with SMTP id f17so16144577otq.4
 for <linux-rockchip@lists.infradead.org>; Mon, 26 Aug 2019 11:21:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=V7KXtS4UY6UlB13Z0yXdsQzffMPbipOXSFmQnsy4Ilw=;
 b=JD+kGEMhSci/yu60AiRN98LWqPTk9GCsK1jZ5Eg8X+HIRw1TDGhROQGVSDzfmNszUl
 Sz4peEwGsaupqCXK8ESvPAOt01a1D88pb4G0T+G1V8zUrYj6MnwQJyzXfNzFIjc+lHhZ
 KVBhx0DIOiFfE7dYCYrJ9Y6EN/83zUdcYNe/4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=V7KXtS4UY6UlB13Z0yXdsQzffMPbipOXSFmQnsy4Ilw=;
 b=sImGE1rN6VqxJWwCb1tMihcBestgMAfEV9Gez+RAo44l6RgTOg7zYtTELxkorKkP7Z
 JWalrgNnJd+4Utm9CDWdqTm64TVJmbIRehF5d6oxGA4HoGw6+mxB0xj574ojgF+KAGSG
 6XbQfkmcH8XYsVa1WXY54gf1mfPujvzJHXw7Qel2wgmVDTfRqcn3PnxHSUcy2eoDaWH9
 Aq7vdUxkUts8Ahz7efQE7iw1wkWUKDfGihpFxBL3c3Rr8rFN74tntEXq2tuf/X+R90qf
 9vgWDejFzhMYouD2rr1uL5HNO2lpv0udofCQhKL5r5ef86vNyPTfngNFr5zZEV1ypp6l
 bi3A==
X-Gm-Message-State: APjAAAVyNJSuJgfhuIeySyAs4Sfe4q61qVy0xGzPLJ+pXQqZt9avbJkT
 Xh7wyxl5Hf2mJ0tvQADpAK6swQ==
X-Google-Smtp-Source: APXvYqxztPJ/KvwkBIG33Jx0PZ6+KgqZ6kXXUNwSFsjsdo/rAFMF993qniQIJgNj/Sr7seJLNGDOUQ==
X-Received: by 2002:a9d:2cc:: with SMTP id 70mr13662029otl.145.1566843685166; 
 Mon, 26 Aug 2019 11:21:25 -0700 (PDT)
Received: from jagan-XPS-13-9350.attlocal.net
 ([2600:1700:7430:38e0:d5b0:4823:33c8:5e46])
 by smtp.gmail.com with ESMTPSA id c11sm4401461otr.54.2019.08.26.11.21.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 Aug 2019 11:21:24 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH v2 04/16] rockchip: Add rk3399 reset cause
Date: Mon, 26 Aug 2019 23:50:59 +0530
Message-Id: <20190826182111.30999-5-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190826182111.30999-1-jagan@amarulasolutions.com>
References: <20190826182111.30999-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_112126_771618_7366936B 
X-CRM114-Status: GOOD (  10.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
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

Add reset cause for rk3399 in common cpu-info file.

This would help to print the reset cause for
various resets.

Common code for various rockchip reset cause
will add it in future.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm/include/asm/arch-rockchip/cru.h | 12 +++++++
 arch/arm/mach-rockchip/cpu-info.c        | 43 ++++++++++++++++++++++++
 2 files changed, 55 insertions(+)

diff --git a/arch/arm/include/asm/arch-rockchip/cru.h b/arch/arm/include/asm/arch-rockchip/cru.h
index 3d1927580f..e267a71ca6 100644
--- a/arch/arm/include/asm/arch-rockchip/cru.h
+++ b/arch/arm/include/asm/arch-rockchip/cru.h
@@ -11,4 +11,16 @@
 # include <asm/arch-rockchip/cru_rk3399.h>
 #endif
 
+/* CRU_GLB_RST_ST */
+enum {
+	GLB_POR_RST,
+	FST_GLB_RST_ST		= BIT(0),
+	SND_GLB_RST_ST		= BIT(1),
+	FST_GLB_TSADC_RST_ST	= BIT(2),
+	SND_GLB_TSADC_RST_ST	= BIT(3),
+	FST_GLB_WDT_RST_ST	= BIT(4),
+	SND_GLB_WDT_RST_ST	= BIT(5),
+	GLB_RST_ST_MASK		= GENMASK(5, 0),
+};
+
 #endif /* _ROCKCHIP_CLOCK_H */
diff --git a/arch/arm/mach-rockchip/cpu-info.c b/arch/arm/mach-rockchip/cpu-info.c
index 90ce65d9ff..63d867fe78 100644
--- a/arch/arm/mach-rockchip/cpu-info.c
+++ b/arch/arm/mach-rockchip/cpu-info.c
@@ -5,10 +5,53 @@
  */
 
 #include <common.h>
+#include <asm/io.h>
+#include <asm/arch-rockchip/clock.h>
+#include <asm/arch-rockchip/cru.h>
+#include <asm/arch-rockchip/hardware.h>
+#include <linux/err.h>
+
+static char *get_reset_cause(void)
+{
+	struct rockchip_cru *cru = rockchip_get_cru();
+	char *cause = NULL;
+
+	if (IS_ERR(cru))
+		return cause;
+
+	switch (cru->glb_rst_st) {
+	case GLB_POR_RST:
+		cause = "POR";
+		break;
+	case FST_GLB_RST_ST:
+	case SND_GLB_RST_ST:
+		cause = "RST";
+		break;
+	case FST_GLB_TSADC_RST_ST:
+	case SND_GLB_TSADC_RST_ST:
+		cause = "THERMAL";
+		break;
+	case FST_GLB_WDT_RST_ST:
+	case SND_GLB_WDT_RST_ST:
+		cause = "WDOG";
+		break;
+	default:
+		cause = "unknown reset";
+	}
+
+	/*
+	 * Clear glb_rst_st, so we can determine the last reset cause
+	 * for following resets.
+	 */
+	rk_clrreg(&cru->glb_rst_st, GLB_RST_ST_MASK);
+
+	return cause;
+}
 
 int print_cpuinfo(void)
 {
 	printf("SoC: Rockchip %s\n", CONFIG_SYS_SOC);
+	printf("Reset cause: %s\n", get_reset_cause());
 
 	/* TODO print operating temparature and clock */
 
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

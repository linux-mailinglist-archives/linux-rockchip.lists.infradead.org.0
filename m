Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF3AD69ADA
	for <lists+linux-rockchip@lfdr.de>; Mon, 15 Jul 2019 20:29:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ytU7J9bgztlpdmdd55GcTuVx6cNvZaawBPS9XJiwF04=; b=UO1nXCORSoGvcQ
	e4OS16l7CAY9cnp5+C0RRkHBVivhpIcDSsM+Zr9oaruZaNGXiY7jImTleMlrdfP4Gyt2jERgX31Vk
	zTppGQe09oZLDvvPVhdtYb7qG7H8+ft/zvdCocxVBnVfl0C6l2KBqxSpuPolTfGzVtvALxzQdkMYt
	eJVBOkmaQ5kHWAZC324sW0HBoWn7sQ+qOOd3CNaJVMd2q7LbDCraClsLNYKjjlV3aUqCa8h295LDQ
	53pZjAqB/5NLNmu4lFy6DHOGSdIhZG/Ey6aV9tHB+4zvOoqEhysmMHvqByq1HVgDiqq7shAUPMHaV
	WSHMu6Lbb3qvcYnlwrbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn5jW-0001DX-7A; Mon, 15 Jul 2019 18:29:54 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn5jP-00019T-JO
 for linux-rockchip@lists.infradead.org; Mon, 15 Jul 2019 18:29:49 +0000
Received: by mail-pl1-x643.google.com with SMTP id b7so8724146pls.6
 for <linux-rockchip@lists.infradead.org>; Mon, 15 Jul 2019 11:29:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=wljUduZ1j0xBQtRG6+5UBc7WpND1xlvxojNK7TDmbCM=;
 b=Z3vRidoKmueOLsFF11jS/LUOBsUYAp3fqeejKXOUd4qIfc2BIMCicqBcFVTKnkh1RH
 vm5QA6jhZE61WhiSRNLs1tEqBEmBdQkNiRgnDhHj/Y20NM7avJtmZxS5fgvEcpCOjLjs
 93S0PfWgxEOS9AskZfuxNaBem3aNt3gs11VNc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=wljUduZ1j0xBQtRG6+5UBc7WpND1xlvxojNK7TDmbCM=;
 b=caAPyzMeKjovX1iu5BwR3GGGw3Mu7BYNGtXU4uHckmao4qwHEz3Sbq4J6tO26S0T3X
 3W35bshYuQLXzLU2GSV00oI0UL3k0TrEJbti+wY6rMyZ8H8K/+Ymjajk0NEqgkOLW/xT
 efzk3/M+oa8ZClEJMTAXUnOgnCPlf1yJubjye92AUaD3skj7bKhz55aTEcc6e9KdZrRk
 SZvp/hHEjH3LxPJMLXEyc6ioqw+9A8aKk9urWmCUAENbpJaxP3gmAwGN+BZ5rj9TReFi
 XSZ6W9ooU6np+KY0NmA6N8MrjZFDb7vqODRmKvozF9n7TWRUlS/ucqJQBTbsmTlkNVku
 +hzw==
X-Gm-Message-State: APjAAAXXkZtqz+/MX5jwksYhKioGGbb7Mzkyvx62O+jsCBBNsNJuT0NP
 ea2xpA96Wf2JVfg7YKlj/ITfMA==
X-Google-Smtp-Source: APXvYqzRdMCI2QTTAHVwXwuV4fq5K9ZG341PiANYoYEvGAucLGVxGkl6zq/9d02MhON0HHXW8QioRw==
X-Received: by 2002:a17:902:be15:: with SMTP id
 r21mr29254803pls.293.1563215387057; 
 Mon, 15 Jul 2019 11:29:47 -0700 (PDT)
Received: from localhost.localdomain ([49.206.201.107])
 by smtp.gmail.com with ESMTPSA id y133sm20250075pfb.28.2019.07.15.11.29.43
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 15 Jul 2019 11:29:46 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v3 11/18] ram: rockchip: debug: Add sdram_print_ddr_info
Date: Mon, 15 Jul 2019 23:58:49 +0530
Message-Id: <20190715182856.21688-12-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190715182856.21688-1-jagan@amarulasolutions.com>
References: <20190715182856.21688-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_112947_710505_C467E789 
X-CRM114-Status: UNSURE (   9.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-rockchip@lists.infradead.org, gajjar04akash@gmail.com,
 linux-amarula@amarulasolutions.com, Jagan Teki <jagan@amarulasolutions.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Add sdram ddr info print support, this would help to
observe the sdram base parameters.

Here is sample print on LPDDR4, 50MHz channel 0
BW=32 Col=10 Bk=8 CS0 Row=15 CS1 Row=15 CS=2 Die BW=16

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 .../include/asm/arch-rockchip/sdram_common.h  |  7 ++++
 drivers/ram/rockchip/sdram_debug.c            | 40 +++++++++++++++++++
 2 files changed, 47 insertions(+)

diff --git a/arch/arm/include/asm/arch-rockchip/sdram_common.h b/arch/arm/include/asm/arch-rockchip/sdram_common.h
index 171b233f95..cfbb511843 100644
--- a/arch/arm/include/asm/arch-rockchip/sdram_common.h
+++ b/arch/arm/include/asm/arch-rockchip/sdram_common.h
@@ -97,8 +97,15 @@ int dram_init(void);
 inline void sdram_print_dram_type(unsigned char dramtype)
 {
 }
+
+inline void sdram_print_ddr_info(struct sdram_cap_info *cap_info,
+				 struct sdram_base_params *base)
+{
+}
 #else
 void sdram_print_dram_type(unsigned char dramtype);
+void sdram_print_ddr_info(struct sdram_cap_info *cap_info,
+			  struct sdram_base_params *base);
 #endif /* CONFIG_RAM_ROCKCHIP_DEBUG */
 
 #endif
diff --git a/drivers/ram/rockchip/sdram_debug.c b/drivers/ram/rockchip/sdram_debug.c
index c13e140fa5..69a6f94a73 100644
--- a/drivers/ram/rockchip/sdram_debug.c
+++ b/drivers/ram/rockchip/sdram_debug.c
@@ -32,3 +32,43 @@ void sdram_print_dram_type(unsigned char dramtype)
 		break;
 	}
 }
+
+void sdram_print_ddr_info(struct sdram_cap_info *cap_info,
+			  struct sdram_base_params *base)
+{
+	u32 bg;
+
+	bg = (cap_info->dbw == 0) ? 2 : 1;
+
+	sdram_print_dram_type(base->dramtype);
+
+	printascii(", ");
+	printdec(base->ddr_freq);
+	printascii("MHz\n");
+
+	printascii("BW=");
+	printdec(8 << cap_info->bw);
+
+	printascii(" Col=");
+	printdec(cap_info->col);
+
+	printascii(" Bk=");
+	printdec(0x1 << cap_info->bk);
+	if (base->dramtype == DDR4) {
+		printascii(" BG=");
+		printdec(1 << bg);
+	}
+
+	printascii(" CS0 Row=");
+	printdec(cap_info->cs0_row);
+	if (cap_info->rank > 1) {
+		printascii(" CS1 Row=");
+		printdec(cap_info->cs1_row);
+	}
+
+	printascii(" CS=");
+	printdec(cap_info->rank);
+
+	printascii(" Die BW=");
+	printdec(8 << cap_info->dbw);
+}
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

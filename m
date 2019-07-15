Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC27A69ADE
	for <lists+linux-rockchip@lfdr.de>; Mon, 15 Jul 2019 20:30:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U5fMSIoXOec0YCqtuspt4vMdUbjGU63p4vaPmhWPx/Y=; b=cuUAmVKR3u7ZNI
	FzUPQlNg63ZcFpL0mnzpbmSXgfxATXF2uQjmQWXY4HPkjS2uvYYklv7xFK5R14PqnvSOL2Dk+7G2D
	owraYvubfnOHcoQQoBeq+yrCJmrOZ86B581WPfLUfhDzUL7S6jHUB5Ad9cJ48PME4GhuVtD1MxoXS
	QGKJqpsaE9iUJ4dTMYS5LoGIYWQX7oWzF2XKX/yjudJiq++AJzgIkb70TCOXhx6or1vxCx2BQNxF5
	gEWKvorao2J9OWN7RD3danjQOrCd+o2u8pLwDSbYEbUF/L1vGxvMq2h9UakaNfaeVMB9GOuYHWd/M
	vlmDKHb6/Bc4L0uZRBnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn5jb-0001JI-My; Mon, 15 Jul 2019 18:29:59 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn5jW-0001FK-KU
 for linux-rockchip@lists.infradead.org; Mon, 15 Jul 2019 18:29:56 +0000
Received: by mail-pg1-x541.google.com with SMTP id i8so8099839pgm.13
 for <linux-rockchip@lists.infradead.org>; Mon, 15 Jul 2019 11:29:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=pIDTnUfr0djUpkT1BNeINgQLdbC0j9OQ9/2h48Y8nMY=;
 b=P2AJyQUDnuNznXrP8Pz4e98HGmOa/ojChabMl2WigfgC2TiAOp0dx7mWRfX4m7DF21
 wmcTQwMVcyD6kES+cy8GqowGh+JfYOIRo6vBdQMnjaic3ybKZgSOg6MUVdw/Vf6jx8Z5
 EjtT8xx6ricfvASqn4b+qZLY7b8c+t6xz1/CU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=pIDTnUfr0djUpkT1BNeINgQLdbC0j9OQ9/2h48Y8nMY=;
 b=kDySZPUmsfCVKtfdpWDKyMFoKVl1yO2KBurVejMer5fNyknuEVgstPcOhNor0oglHn
 zKbBNfqldiZ57yMOXt5gEklrx4bRIClR4I6ZFqijfUkgVSkotWRvg4CXMNZ6mx53wzgc
 2Y4GaJW72UJC3WvILGd4rB1nGCIwaHm8lgRrlrIZFPhmQLuizYKsEJQBYLAwNuURCHNc
 jc0B+OQNHbG7VWCp7ZQSsnE3j8uqmcdRV3tUYBI+w8BR9xKXBDa14kV572rYx1HPn3fu
 r3FCQSJrBuBqpRB9VAccmT7HyLPbWAGEt4eirAogz/k10ZUvNscV0LzO+i4z3+HcNI1x
 lSag==
X-Gm-Message-State: APjAAAWtRfY6o3lZYImh1GkNUFfaftBc1tfcPRVV55fNjA5F7eHUrLtr
 gtogmtBzajCyFSaaDZ7nmxHN/w==
X-Google-Smtp-Source: APXvYqwUHRsmreZ2GD5zTWUj3OnV25Jsn+WU20OiN/Q7Ps7+kiuytPuz6nWN7hDHrVOLKlU9HXD/dA==
X-Received: by 2002:a63:f510:: with SMTP id w16mr28980694pgh.0.1563215393933; 
 Mon, 15 Jul 2019 11:29:53 -0700 (PDT)
Received: from localhost.localdomain ([49.206.201.107])
 by smtp.gmail.com with ESMTPSA id y133sm20250075pfb.28.2019.07.15.11.29.50
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 15 Jul 2019 11:29:53 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v3 13/18] ram: rk3399: debug: Add sdram_print_stride
Date: Mon, 15 Jul 2019 23:58:51 +0530
Message-Id: <20190715182856.21688-14-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190715182856.21688-1-jagan@amarulasolutions.com>
References: <20190715182856.21688-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_112954_799824_64D09BDE 
X-CRM114-Status: UNSURE (   9.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
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

Add code to print the channel stride, this would help to
print the stride of associated channel.

Here is sample print on LPDDR4, 50MHz.
256B stride

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 .../include/asm/arch-rockchip/sdram_common.h  |  5 ++++
 drivers/ram/rockchip/sdram_debug.c            | 29 +++++++++++++++++++
 2 files changed, 34 insertions(+)

diff --git a/arch/arm/include/asm/arch-rockchip/sdram_common.h b/arch/arm/include/asm/arch-rockchip/sdram_common.h
index cfbb511843..b7549f5d8a 100644
--- a/arch/arm/include/asm/arch-rockchip/sdram_common.h
+++ b/arch/arm/include/asm/arch-rockchip/sdram_common.h
@@ -102,10 +102,15 @@ inline void sdram_print_ddr_info(struct sdram_cap_info *cap_info,
 				 struct sdram_base_params *base)
 {
 }
+
+inline void sdram_print_stride(unsigned int stride)
+{
+}
 #else
 void sdram_print_dram_type(unsigned char dramtype);
 void sdram_print_ddr_info(struct sdram_cap_info *cap_info,
 			  struct sdram_base_params *base);
+void sdram_print_stride(unsigned int stride);
 #endif /* CONFIG_RAM_ROCKCHIP_DEBUG */
 
 #endif
diff --git a/drivers/ram/rockchip/sdram_debug.c b/drivers/ram/rockchip/sdram_debug.c
index 19e9225c12..9cf662675b 100644
--- a/drivers/ram/rockchip/sdram_debug.c
+++ b/drivers/ram/rockchip/sdram_debug.c
@@ -116,3 +116,32 @@ void sdram_print_ddr_info(struct sdram_cap_info *cap_info,
 	printdec(cap >> 20);
 	printascii("MB\n");
 }
+
+void sdram_print_stride(unsigned int stride)
+{
+	switch (stride) {
+	case 0xc:
+		printf("128B stride\n");
+		break;
+	case 5:
+	case 9:
+	case 0xd:
+	case 0x11:
+	case 0x19:
+		printf("256B stride\n");
+		break;
+	case 0xa:
+	case 0xe:
+	case 0x12:
+		printf("512B stride\n");
+		break;
+	case 0xf:
+		printf("4K stride\n");
+		break;
+	case 0x1f:
+		printf("32MB + 256B stride\n");
+		break;
+	default:
+		printf("no stride\n");
+	}
+}
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

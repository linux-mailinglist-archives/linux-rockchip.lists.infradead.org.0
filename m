Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8844B47B30
	for <lists+linux-rockchip@lfdr.de>; Mon, 17 Jun 2019 09:37:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZSUVxN9G7MQFAFkcX1hau2J7AoZbL3u5mfwZ3zqYmrg=; b=X5YjE3Jop2E0Em
	hZC7KIaJBrL9s43Nvu1Iq1vRw4Z34T4Slv8soqxacR1XsSjRjaMRZpe2TV3mVx6fe/4Q93Wz88HHE
	Dv5OK89KZ1A5KE6fOstYuOrMK9W4ptX8oi7LgstA8c6HrFHqPAjHStOF52RF2h7IG18ZjJnVdr6Le
	//zJdogrMbgiGgNa0/oMcZAE+hFCkeY63GpiNkfelLn8cGEFZa1l0r+1kReEaSXgOwivtwUXeip8+
	5qb+bBph6nvvjx9MMQXkLSaTugGJ5N5Zv+M0AGvpPMjoRmYUQ6E2JOgEgXA9RX2Si5zCTN8n+Nw21
	/5siaUhIP/w15jqb9wcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcmDB-0006CX-SO; Mon, 17 Jun 2019 07:37:53 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcmCz-000649-Oj
 for linux-rockchip@lists.infradead.org; Mon, 17 Jun 2019 07:37:44 +0000
Received: by mail-pg1-x541.google.com with SMTP id p10so5322588pgn.1
 for <linux-rockchip@lists.infradead.org>; Mon, 17 Jun 2019 00:37:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=BBtNfOK0Ro21ytRNoCKnmpt1juDbqa+4SOET3zxwhf0=;
 b=f4esqCLQyrEV6n9gvIa+AnmhmZAlgPcrXUo13VeGMTm0Lfge4k73/lQcOy9X7i4/1V
 Vy5MTyjEXVVbucqXByd1leJKFaKfdm0IQyVSeO3rwcMBLDx/f6z82VVRWHKM9aqLdxIH
 jAzm/3hSHfg37uMDlqpi9rQqoGZtbFKPARyo0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=BBtNfOK0Ro21ytRNoCKnmpt1juDbqa+4SOET3zxwhf0=;
 b=BuaivI6ZEdoyKF8DWcGgSFbv2fsBxcaFs//XXv1BPO3EDs0+XSh3XhKZG9TIqGxPVY
 OtN/dnXagBb2B3GQGEjBbP8NqQZBNPHZ+2xRBkUz25KR/A2J/Jlql1jsddDkjyh0zNc3
 zS/G1yY7N803NPMmF0Mv6ID3WeF2Z1xO7u5YQUYRVMvclZ9O1rdAVqbC+ZVq9ovJv+Cq
 KF51swQZ9VWhtCoF8YLN5NMMPGeXh249WAJparntGmNKY7LzB3yJLiUdp3LPaDeAGTEz
 pSasxB/8qJgSSDYjGEBImrhb9uX4V3F1uyr2QuAmZhW3ZUi/ah2F8zx0JLRCiubnawTF
 TMMg==
X-Gm-Message-State: APjAAAXvFqmMwRBbknM7+cM8OnpYf/ynoKBHdHU5QTrz8jmVEhetZ59q
 1R92umPS/1V9o9fEqCagZY3wVw==
X-Google-Smtp-Source: APXvYqxHwDsaR92DkBsNdkvkfMm0HVB64KSwRa8cH7LH+mNFPVgInQ8W2v6DTSX+bVhl0pWu+PnWTw==
X-Received: by 2002:a63:eb0a:: with SMTP id t10mr43092553pgh.99.1560757061225; 
 Mon, 17 Jun 2019 00:37:41 -0700 (PDT)
Received: from localhost.localdomain ([49.206.203.245])
 by smtp.gmail.com with ESMTPSA id m41sm15205998pje.18.2019.06.17.00.37.38
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 00:37:40 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v2 24/99] ram: rk3399: Update cs1_row to use sys_reg3
Date: Mon, 17 Jun 2019 13:01:37 +0530
Message-Id: <20190617073252.27810-25-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190617073252.27810-1-jagan@amarulasolutions.com>
References: <20190617073252.27810-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_003742_975238_7323F5CC 
X-CRM114-Status: GOOD (  10.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

cs1_row can handle the pmu via sys_reg2 and sys_reg3 while
configuring the dram instead of just sys_reg2.

So, update cs1_row macro to make use of both sys_reg2,
sys_reg3.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 arch/arm/include/asm/arch-rockchip/sdram_common.h | 10 ++++++++--
 drivers/ram/rockchip/sdram_rk3399.c               |  4 +++-
 2 files changed, 11 insertions(+), 3 deletions(-)

diff --git a/arch/arm/include/asm/arch-rockchip/sdram_common.h b/arch/arm/include/asm/arch-rockchip/sdram_common.h
index 4fe7d60daf..7062cb57d9 100644
--- a/arch/arm/include/asm/arch-rockchip/sdram_common.h
+++ b/arch/arm/include/asm/arch-rockchip/sdram_common.h
@@ -54,8 +54,6 @@
 #define SYS_REG_CS0_ROW_MASK		3
 #define SYS_REG_CS1_ROW_SHIFT(ch)	(4 + (ch) * 16)
 #define SYS_REG_CS1_ROW_MASK		3
-#define SYS_REG_ENC_CS1_ROW(n, ch)	(((n) - 13) << \
-					SYS_REG_CS1_ROW_SHIFT(ch))
 #define SYS_REG_BW_SHIFT(ch)		(2 + (ch) * 16)
 #define SYS_REG_BW_MASK			3
 #define SYS_REG_ENC_BW(n, ch)		((2 >> (n)) << SYS_REG_BW_SHIFT(ch))
@@ -69,6 +67,14 @@
 				     (5 + 2 * (ch)); \
 		} while (0)
 
+#define SYS_REG_ENC_CS1_ROW(n, os_reg2, os_reg3, ch) do { \
+			(os_reg2) &= (~(0x3 << (4 + 16 * (ch)))); \
+			(os_reg3) &= (~(0x1 << (4 + 2 * (ch)))); \
+			(os_reg2) |= (((n) - 13) & 0x3) << (4 + 16 * (ch)); \
+			(os_reg3) |= ((((n) - 13) & 0x4) >> 2) << \
+				     (4 + 2 * (ch)); \
+		} while (0)
+
 /* Get sdram size decode from reg */
 size_t rockchip_sdram_size(phys_addr_t reg);
 
diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 40cc31601c..21c1c6566a 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -1026,10 +1026,12 @@ static void dram_all_config(struct dram_info *dram,
 		sys_reg2 |= SYS_REG_ENC_RANK(info->rank, channel);
 		sys_reg2 |= SYS_REG_ENC_COL(info->col, channel);
 		sys_reg2 |= SYS_REG_ENC_BK(info->bk, channel);
-		sys_reg2 |= SYS_REG_ENC_CS1_ROW(info->cs1_row, channel);
 		sys_reg2 |= SYS_REG_ENC_BW(info->bw, channel);
 		sys_reg2 |= SYS_REG_ENC_DBW(info->dbw, channel);
 		SYS_REG_ENC_CS0_ROW(info->cs0_row, sys_reg2, sys_reg3, channel);
+		if (info->cs1_row)
+			SYS_REG_ENC_CS1_ROW(info->cs1_row, sys_reg2,
+					    sys_reg3, channel);
 
 		ddr_msch_regs = dram->chan[channel].msch;
 		noc_timing = &params->ch[channel].noc_timings;
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

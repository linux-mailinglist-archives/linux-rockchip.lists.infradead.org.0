Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC6936A7F2
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 14:01:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2cdBWiliG8PxwYWK2JoyqSJcGDX/0P02WB/0qboPpBE=; b=fYf2xtVpTeRLCT
	vgU3OQobeDJQCVoi7UakQhspblzPU/fA1Eo3OcCmOaJSBmuc/2CG0cLvZXNSg0Zfn6v8wIOwCIg82
	IR643N+M3SzuE27+SO+jCDXZpcfRFs65pIXL17wlK6p3A5WST9y1/6X8+T0d4u5v4832ixROKh27V
	eJo3SBckvHXrspr/+D42PiSgYWXgVL/cbhBLmoSi18kJ2fK32DRNWq9ayHNvpEbwhHWxdAKizVFdi
	8WXlqoV4fbVVzPTPeN1cCmxZYr+WJ7K1ea7jDl5IJ2MtWV1wul0/l/zb/PDU5y9uEZcg5DDH37YPd
	g/O3+AB2WAU5sO6eay1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnM8l-00077v-Tp; Tue, 16 Jul 2019 12:01:03 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnM6V-00046j-LY
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 11:58:45 +0000
Received: by mail-pl1-x641.google.com with SMTP id b7so10007284pls.6
 for <linux-rockchip@lists.infradead.org>; Tue, 16 Jul 2019 04:58:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=43sD5Z96vh27+wf/WQOiweRgDb1Lo5puQaDPhdLvep4=;
 b=MEbkTo6DgOl6nvsZD0sBG4zvZreCQobl/3IKv49yW+utv/Em51BOM1JaepkgDqRUoh
 P0BXCsxACKOuFA8GdQHt7NkTiiYoltwsNaoTtYYkuH9BPMrUstd62DQYAP60sB2MrbRL
 8l6CVzcJAjN/GCJbMjaTkcCz4yYPRA8iCiKkI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=43sD5Z96vh27+wf/WQOiweRgDb1Lo5puQaDPhdLvep4=;
 b=TrKe3SLOsHLlf5oGW4+Bl/qpJQ6jCoNj77NaTV7ySl7iONuSTQMnDYxzYAuQU9A9zs
 4gZ4WKLua9MDdJitjoBJDCgjE1assuPen7MixCS8nSF+2RV66cW1FyGxZH06Fd3domRY
 Fkksooep3PGn/y7gViOTbf/hl0d/VrhaPHXL4/GtUoynhfICckGH85icH0L5/LmmAb5V
 45Cea2VG+/0il+h3JNmE/VXftarBbMkxxgzjEGqfHDlNfencor0vmdDeDLAs1ablgBI0
 iNVx0EK78w89qytQtlxMj11xLNYrsCgcFAopVQsnDGw5owRonh4cfI0P57yu3kFsfRH6
 d17g==
X-Gm-Message-State: APjAAAXD+/6tbXpgCpR4D8qZT0fm57eMNUpFlyz0GOp8m9Q0Dpl3SgTO
 HwpWKXLsyc7t4ierC0fVNZrUbw==
X-Google-Smtp-Source: APXvYqxQT8U1hg3HYj1ROwGXaJaK1JLbVzucv5zx7nfJbqTVF1tgwDEJMouwN7BZXIZsQgpnMeXYEQ==
X-Received: by 2002:a17:902:86:: with SMTP id
 a6mr35230478pla.244.1563278322972; 
 Tue, 16 Jul 2019 04:58:42 -0700 (PDT)
Received: from localhost.localdomain ([49.206.201.107])
 by smtp.gmail.com with ESMTPSA id z24sm36269566pfr.51.2019.07.16.04.58.39
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 16 Jul 2019 04:58:42 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v3 13/57] ram: rk3399: Update cs0_row to use sys_reg3
Date: Tue, 16 Jul 2019 17:27:01 +0530
Message-Id: <20190716115745.12585-14-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190716115745.12585-1-jagan@amarulasolutions.com>
References: <20190716115745.12585-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_045843_734139_6E99E36E 
X-CRM114-Status: UNSURE (   9.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-rockchip@lists.infradead.org, gajjar04akash@gmail.com,
 linux-amarula@amarulasolutions.com, Jagan Teki <jagan@amarulasolutions.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

cs0_row can handle the pmu via sys_reg2 and sys_reg3 while
configuring the dram instead of just sys_reg2.

So, update cs0_row macro to make use of both sys_reg2,
sys_reg3.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 arch/arm/include/asm/arch-rockchip/sdram_common.h | 8 ++++++--
 drivers/ram/rockchip/sdram_rk3399.c               | 4 +++-
 2 files changed, 9 insertions(+), 3 deletions(-)

diff --git a/arch/arm/include/asm/arch-rockchip/sdram_common.h b/arch/arm/include/asm/arch-rockchip/sdram_common.h
index 4749233226..f74377225c 100644
--- a/arch/arm/include/asm/arch-rockchip/sdram_common.h
+++ b/arch/arm/include/asm/arch-rockchip/sdram_common.h
@@ -90,8 +90,6 @@ struct sdram_base_params {
 					SYS_REG_BK_SHIFT(ch))
 #define SYS_REG_CS0_ROW_SHIFT(ch)	(6 + (ch) * 16)
 #define SYS_REG_CS0_ROW_MASK		3
-#define SYS_REG_ENC_CS0_ROW(n, ch)	(((n) - 13) << \
-					SYS_REG_CS0_ROW_SHIFT(ch))
 #define SYS_REG_CS1_ROW_SHIFT(ch)	(4 + (ch) * 16)
 #define SYS_REG_CS1_ROW_MASK		3
 #define SYS_REG_ENC_CS1_ROW(n, ch)	(((n) - 13) << \
@@ -103,6 +101,12 @@ struct sdram_base_params {
 #define SYS_REG_DBW_MASK		3
 #define SYS_REG_ENC_DBW(n, ch)		((2 >> (n)) << SYS_REG_DBW_SHIFT(ch))
 
+#define SYS_REG_ENC_CS0_ROW(n, os_reg2, os_reg3, ch) do { \
+			(os_reg2) |= (((n) - 13) & 0x3) << (6 + 16 * (ch)); \
+			(os_reg3) |= ((((n) - 13) & 0x4) >> 2) << \
+				     (5 + 2 * (ch)); \
+		} while (0)
+
 /* Get sdram size decode from reg */
 size_t rockchip_sdram_size(phys_addr_t reg);
 
diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 2ef969c07b..70867cbd5f 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -1074,6 +1074,7 @@ static void dram_all_config(struct dram_info *dram,
 			    const struct rk3399_sdram_params *params)
 {
 	u32 sys_reg2 = 0;
+	u32 sys_reg3 = 0;
 	unsigned int channel, idx;
 
 	sys_reg2 |= SYS_REG_ENC_DDRTYPE(params->base.dramtype);
@@ -1094,10 +1095,10 @@ static void dram_all_config(struct dram_info *dram,
 		sys_reg2 |= SYS_REG_ENC_RANK(info->cap_info.rank, channel);
 		sys_reg2 |= SYS_REG_ENC_COL(info->cap_info.col, channel);
 		sys_reg2 |= SYS_REG_ENC_BK(info->cap_info.bk, channel);
-		sys_reg2 |= SYS_REG_ENC_CS0_ROW(info->cap_info.cs0_row, channel);
 		sys_reg2 |= SYS_REG_ENC_CS1_ROW(info->cap_info.cs1_row, channel);
 		sys_reg2 |= SYS_REG_ENC_BW(info->cap_info.bw, channel);
 		sys_reg2 |= SYS_REG_ENC_DBW(info->cap_info.dbw, channel);
+		SYS_REG_ENC_CS0_ROW(info->cap_info.cs0_row, sys_reg2, sys_reg3, channel);
 
 		ddr_msch_regs = dram->chan[channel].msch;
 		noc_timing = &params->ch[channel].noc_timings;
@@ -1119,6 +1120,7 @@ static void dram_all_config(struct dram_info *dram,
 	}
 
 	writel(sys_reg2, &dram->pmugrf->os_reg2);
+	writel(sys_reg3, &dram->pmugrf->os_reg3);
 	rk_clrsetreg(&dram->pmusgrf->soc_con4, 0x1f << 10,
 		     params->base.stride << 10);
 
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

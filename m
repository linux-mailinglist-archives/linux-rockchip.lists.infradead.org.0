Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 958916A7F3
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 14:01:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JrR4b80ShEg5lv1D8zcrs/JFt26Es4nznF1vsh9alX8=; b=FNCsxtfRrrkjoQ
	WGIc5C4QsTQKiWSQ2pUNfdMbqm8dei4eeU20VXXBp9s35m2ZKxDxg8C3JcbjdfnqPvpJMkN1FHkXN
	S27S9ooIupsZaNs//2dnCIr1A/iprqk1mYPU3L5TxyKYlPSSD8cnEknPSgn3mL341gMh9Aue9Ig/P
	TOdpOlQni8O/CDOT0ZDm4gLZWcq71uN3zzifOLlF2tAunbaUCLD7Qlt4zKaE/6RQgkIp90Z1yZETS
	DW9erfbiLbtXxUq7w6P5R9SiuYiNXL4GUkMHl1YNmUlAlBXtEPXuHlnEufwQ2aiPhAghWyS95NHKf
	20pf+C/9EopKAibQs1uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnM8p-00079f-5O; Tue, 16 Jul 2019 12:01:07 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnM6Z-00049c-1p
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 11:58:48 +0000
Received: by mail-pf1-x444.google.com with SMTP id t16so8994365pfe.11
 for <linux-rockchip@lists.infradead.org>; Tue, 16 Jul 2019 04:58:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=MG4eQXtYLyg/bIVFfwfDOqnsbO9ZxzwLez61zLxFaqQ=;
 b=kZ+O8VoQdsAFxOVLqJ0jFqpLfbiS62euHNMfTi4wrwc47VYFQQnvYXMh29H1d4bMcb
 FRANOx72I5/ElAbyMgmB+o0wByc+UcPnRC8UHsR5AP7hwQWJFnCYpvZH0lh2YmjqEfKA
 aJh2OUh61Q4kXjMXiEt1Vcw4iZlBZ7EXKI+Ig=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=MG4eQXtYLyg/bIVFfwfDOqnsbO9ZxzwLez61zLxFaqQ=;
 b=gAcoriUeJPTaC6NTuhx6bDxX8hKm4T4+2m6WLCOoDlNTwWiwi7ZRXPoK07VbhKJtmn
 d0vvb4JCqJ5iPZ8MDKKlkZBZDeUdW1WJIr46E3XJxlU7UIjuFXOk/ewjmoDThM1xmI71
 q4j8EdqcP7/pIcNFt2cv3vHrJ+Ey4GxBLbQvreJdxB3InwzGo7RwJmhJvNDnomBujSOP
 ujZe2S+sSWmv4EdMhMiASb4E2EnRZSwUF1OOS8U+ulFKLXm+VH7OuggFq5v29OQEczMI
 NdDd6xebOvKibCFm4LRF8uATjWO/nz05mkkY0oizwDeEHWU6tO76VS1LKuuaxHlGuTVw
 0+9g==
X-Gm-Message-State: APjAAAX1wTBbu3LT9t4JxRW7GiMuFAaLjAnBP3d4Otdr9oyf2TCWAvPw
 OWkOIjF0tmij+X+pXxw0Xf4WRA==
X-Google-Smtp-Source: APXvYqwr4rbAyEuynmG3DFuVOWdtM0GOsiEGrmG9Rl3eQbt3hipG81qFB969UqgPt9l+wpNb7A4/jw==
X-Received: by 2002:a17:90a:30e4:: with SMTP id
 h91mr34302115pjb.37.1563278326416; 
 Tue, 16 Jul 2019 04:58:46 -0700 (PDT)
Received: from localhost.localdomain ([49.206.201.107])
 by smtp.gmail.com with ESMTPSA id z24sm36269566pfr.51.2019.07.16.04.58.43
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 16 Jul 2019 04:58:46 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v3 14/57] ram: rk3399: Update cs1_row to use sys_reg3
Date: Tue, 16 Jul 2019 17:27:02 +0530
Message-Id: <20190716115745.12585-15-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190716115745.12585-1-jagan@amarulasolutions.com>
References: <20190716115745.12585-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_045847_103147_B40235A5 
X-CRM114-Status: UNSURE (   9.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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
index f74377225c..9cd9f3b969 100644
--- a/arch/arm/include/asm/arch-rockchip/sdram_common.h
+++ b/arch/arm/include/asm/arch-rockchip/sdram_common.h
@@ -92,8 +92,6 @@ struct sdram_base_params {
 #define SYS_REG_CS0_ROW_MASK		3
 #define SYS_REG_CS1_ROW_SHIFT(ch)	(4 + (ch) * 16)
 #define SYS_REG_CS1_ROW_MASK		3
-#define SYS_REG_ENC_CS1_ROW(n, ch)	(((n) - 13) << \
-					SYS_REG_CS1_ROW_SHIFT(ch))
 #define SYS_REG_BW_SHIFT(ch)		(2 + (ch) * 16)
 #define SYS_REG_BW_MASK			3
 #define SYS_REG_ENC_BW(n, ch)		((2 >> (n)) << SYS_REG_BW_SHIFT(ch))
@@ -107,6 +105,14 @@ struct sdram_base_params {
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
index 70867cbd5f..1222da39c2 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -1095,10 +1095,12 @@ static void dram_all_config(struct dram_info *dram,
 		sys_reg2 |= SYS_REG_ENC_RANK(info->cap_info.rank, channel);
 		sys_reg2 |= SYS_REG_ENC_COL(info->cap_info.col, channel);
 		sys_reg2 |= SYS_REG_ENC_BK(info->cap_info.bk, channel);
-		sys_reg2 |= SYS_REG_ENC_CS1_ROW(info->cap_info.cs1_row, channel);
 		sys_reg2 |= SYS_REG_ENC_BW(info->cap_info.bw, channel);
 		sys_reg2 |= SYS_REG_ENC_DBW(info->cap_info.dbw, channel);
 		SYS_REG_ENC_CS0_ROW(info->cap_info.cs0_row, sys_reg2, sys_reg3, channel);
+		if (info->cap_info.cs1_row)
+			SYS_REG_ENC_CS1_ROW(info->cap_info.cs1_row, sys_reg2,
+					    sys_reg3, channel);
 
 		ddr_msch_regs = dram->chan[channel].msch;
 		noc_timing = &params->ch[channel].noc_timings;
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

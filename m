Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E0E947B2E
	for <lists+linux-rockchip@lfdr.de>; Mon, 17 Jun 2019 09:37:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WMEkOx1rRH/g7uuaHDp0PtEUjUe8pbc/sM+Xjv/4S9g=; b=dOQK4F+vVgkQLD
	z2y8qu+Kgtko6xuAgK4FHP4WaI2FymRSOl6enRWM+uSnEljyZtRKUHUbqh+eDprS9yGHiDcfTHJr2
	D35salgXgiQJxeiBdYIOVEjAY7ODP5I4gXAvgWWh6ovl/LERv4X1lQm+g9WtTp1FLBzZL0yPmxnDB
	KccEc7Q09f1pt256GsC+tU1n7fhKBh2GEStG278EBZB5UcpNFKeTlT1T9Yi+pFdME1KrIEDbPBHFG
	kyQVIRJHbQo+y6e5UtVcegTUJm3ncMRNfN1X/hLL6WpyPTa+E8VjDemcnSEemVZAoRoTVlE9n+DsS
	JTFJdOGAC7JtvQHiyJIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcmD5-00065u-6W; Mon, 17 Jun 2019 07:37:47 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcmCw-000619-GQ
 for linux-rockchip@lists.infradead.org; Mon, 17 Jun 2019 07:37:40 +0000
Received: by mail-pg1-x543.google.com with SMTP id f21so5315307pgi.3
 for <linux-rockchip@lists.infradead.org>; Mon, 17 Jun 2019 00:37:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=qAVGQg7YWrjgdY0fVjt4lm9+0ePKFs/oDTEcqP+eILc=;
 b=rXV66gwG7YLL66ZCZRr/+0cVr5g7Qr3OchNEEE8o2kZ4KYLLel46eByz1XZuhsK5wJ
 r5RqX0glFZCTT99nhrJO3tdowGt1oIZI7mqt23BfSCl0sdqSttoy4vJfZQsGQFAov6Ha
 qH9muyS4unH0KEmJWhw98NQ4sVWEixwxdwvlI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=qAVGQg7YWrjgdY0fVjt4lm9+0ePKFs/oDTEcqP+eILc=;
 b=VgCZBklDeQCJrzRmK2zsax0zQFnVGyni/tx2Oc7rhMX4gUKPpG/bocTthApqqWDM32
 8Sl/TWzYl6YOJz3f2Sc8cJ9BaeOFK4l+xp/OiazcYk84s3E0WAJAZjnh4MghcUJYOydN
 AbNF/4dd2j3plqB7uBtaihVSCKPLIBWIexeG0FaJ+GbvFRmBW7OAF1lZw7WK3SQYKx9x
 oFKdsvy2Q7147UO0yZxIy4Ek+kQYEIXIhN7AOMByVoVTjYp8URj3wyyf/8Y+ed218XP3
 bizGdGm7fdun6M0/oYWaDKYwEOQMX81XaJ0HI9A9zQLAFJxocAhb/Dhawi7nh4pdIp0R
 mzeQ==
X-Gm-Message-State: APjAAAX/4byF/lAsnmmuLKPRaEGjcSLYdNIT9MSgs+Gl7t7UyEDEx1va
 uNy7wqm0tLpVSMx/4uolO89+QQ==
X-Google-Smtp-Source: APXvYqwzuI0MAuGsLxG0nzuHrsgh6nxix0u/Qlpmdx4yml0oPO0WcYWWoYCN84tKGNOf0DURed0AVw==
X-Received: by 2002:a17:90a:cb97:: with SMTP id
 a23mr24245041pju.67.1560757057971; 
 Mon, 17 Jun 2019 00:37:37 -0700 (PDT)
Received: from localhost.localdomain ([49.206.203.245])
 by smtp.gmail.com with ESMTPSA id m41sm15205998pje.18.2019.06.17.00.37.34
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 00:37:37 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v2 23/99] ram: rk3399: Update cs0_row to use sys_reg3
Date: Mon, 17 Jun 2019 13:01:36 +0530
Message-Id: <20190617073252.27810-24-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190617073252.27810-1-jagan@amarulasolutions.com>
References: <20190617073252.27810-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_003738_677238_17B94844 
X-CRM114-Status: GOOD (  10.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
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
index c2374c0f83..4fe7d60daf 100644
--- a/arch/arm/include/asm/arch-rockchip/sdram_common.h
+++ b/arch/arm/include/asm/arch-rockchip/sdram_common.h
@@ -52,8 +52,6 @@
 					SYS_REG_BK_SHIFT(ch))
 #define SYS_REG_CS0_ROW_SHIFT(ch)	(6 + (ch) * 16)
 #define SYS_REG_CS0_ROW_MASK		3
-#define SYS_REG_ENC_CS0_ROW(n, ch)	(((n) - 13) << \
-					SYS_REG_CS0_ROW_SHIFT(ch))
 #define SYS_REG_CS1_ROW_SHIFT(ch)	(4 + (ch) * 16)
 #define SYS_REG_CS1_ROW_MASK		3
 #define SYS_REG_ENC_CS1_ROW(n, ch)	(((n) - 13) << \
@@ -65,6 +63,12 @@
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
index bb673a862e..40cc31601c 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -1005,6 +1005,7 @@ static void dram_all_config(struct dram_info *dram,
 			    const struct rk3399_sdram_params *params)
 {
 	u32 sys_reg2 = 0;
+	u32 sys_reg3 = 0;
 	unsigned int channel, idx;
 
 	sys_reg2 |= SYS_REG_ENC_DDRTYPE(params->base.dramtype);
@@ -1025,10 +1026,10 @@ static void dram_all_config(struct dram_info *dram,
 		sys_reg2 |= SYS_REG_ENC_RANK(info->rank, channel);
 		sys_reg2 |= SYS_REG_ENC_COL(info->col, channel);
 		sys_reg2 |= SYS_REG_ENC_BK(info->bk, channel);
-		sys_reg2 |= SYS_REG_ENC_CS0_ROW(info->cs0_row, channel);
 		sys_reg2 |= SYS_REG_ENC_CS1_ROW(info->cs1_row, channel);
 		sys_reg2 |= SYS_REG_ENC_BW(info->bw, channel);
 		sys_reg2 |= SYS_REG_ENC_DBW(info->dbw, channel);
+		SYS_REG_ENC_CS0_ROW(info->cs0_row, sys_reg2, sys_reg3, channel);
 
 		ddr_msch_regs = dram->chan[channel].msch;
 		noc_timing = &params->ch[channel].noc_timings;
@@ -1050,6 +1051,7 @@ static void dram_all_config(struct dram_info *dram,
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

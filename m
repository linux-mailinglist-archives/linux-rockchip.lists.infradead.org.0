Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51FBA3CF8A
	for <lists+linux-rockchip@lfdr.de>; Tue, 11 Jun 2019 16:53:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MjwKr+SAp/B1lZHql2/dh8erKZf6A0l3AWCib/kVhc8=; b=G8TrjsULTFhdCN
	h26c8YCKn4K+8bNG8sBPh7CAAx5dlv98phT5MrRGtJvqnXT1D5Tg9y/GUyC8TEJV0MTCay9St1v7R
	p/Gp+g8tAtHqYtsg6Io/pIzCBgP6LsmUxmg7D3O1iRWxEIni25+HnNmqlAPhDrQGOHnO1Qxv2Xygl
	FhnHutrtCTyxZ91bf9jTe90eLnyHqtCtjQXvtayJJWq/ZqKI6xJ5oLHlLB/LUPFv5lJx4WDj38D0l
	IoMu6wLPdbPvLt8cb6jxfNubXGE+6DjXtLHLYSJkNeZeTLEQrAW0s8/xzxh9Gy5FoOuWJXiZhVwjU
	SNnMpKhPW5T33RhfIe4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hai9M-0004j1-24; Tue, 11 Jun 2019 14:53:24 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hai9H-0004gH-CV
 for linux-rockchip@lists.infradead.org; Tue, 11 Jun 2019 14:53:20 +0000
Received: by mail-pl1-x642.google.com with SMTP id g21so5251625plq.0
 for <linux-rockchip@lists.infradead.org>; Tue, 11 Jun 2019 07:53:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=blUjXzdLmw8GcUgJeI2ZJaLvV6/uY4Q7JuRFDVODbMY=;
 b=XxaHj+zDjNUZun21J6hOHO6oGYgUzPbZXeVI8WUEvmswclHon403wURt5LOZWGsndc
 f7UBHzDRMlas4kWW5OqbLNjfoqpsWi57mZPoYL1ccjAUgV/HFMDgo2cYzt+3dlPfmC68
 Uy5Q/Cp8Ab6f+DUWSgwQZRcenBmwbIdTkaAT8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=blUjXzdLmw8GcUgJeI2ZJaLvV6/uY4Q7JuRFDVODbMY=;
 b=IOwP2KbO5xsqwAbdVZ25gdirg7JImQnPSrpahdqMq+xwVyHA9Z+SywghAnN9/9aH5i
 mkg11d3wNhXgEIZmt/IHSInN2zYchh4MjDEd/UTLVZyUrwYwfX/7ddGXY+iVOfQsCfkZ
 K9nbzzbtTLte0o8XeKyByw5m/iaka81KpYF2xqFksKFwx1Ns1XjGkkEYj2+OwVbnUrs9
 FRdUwPqAWnO3v0OPLWvsmV5Yrhup4lgrFc928Jm7qW4VQMBKLLZu/JvpzSy1LDn0+RUZ
 Zeb5UvxqBA+0Vc/5GDElm8Uu0Z2w6KPIisS/M3zgS95lyIcv2NJj1yzb5ha+gFPsswxl
 dbpg==
X-Gm-Message-State: APjAAAU/fA3OzsqGVaqVCcQ6JDEQ8GP83Xzm30j9h3T6xxNGFsdyKLid
 1oLkwwgV7jopUuXH2bQOmPcejQ==
X-Google-Smtp-Source: APXvYqynV/j2J760RkkZfMq7DdX1eyA4pDh7CWwxmSlXksV8Lc7eiX3hq6j9+8s2dZn77+1s+PRcrQ==
X-Received: by 2002:a17:902:da4:: with SMTP id
 33mr17850928plv.209.1560264798868; 
 Tue, 11 Jun 2019 07:53:18 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.18])
 by smtp.gmail.com with ESMTPSA id e9sm16206208pfn.154.2019.06.11.07.53.14
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Jun 2019 07:53:18 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH 22/92] ram: rk3399: Update cs0_row to use sys_reg3
Date: Tue, 11 Jun 2019 20:20:25 +0530
Message-Id: <20190611145135.21399-23-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190611145135.21399-1-jagan@amarulasolutions.com>
References: <20190611145135.21399-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_075319_478248_8C9CE358 
X-CRM114-Status: UNSURE (   9.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com,
 Jagan Teki <jagan@amarulasolutions.com>, gajjar04akash@gmail.com
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
index 7e0b491859..3d1d5badb4 100644
--- a/arch/arm/include/asm/arch-rockchip/sdram_common.h
+++ b/arch/arm/include/asm/arch-rockchip/sdram_common.h
@@ -51,8 +51,6 @@
 					SYS_REG_BK_SHIFT(ch))
 #define SYS_REG_CS0_ROW_SHIFT(ch)	(6 + (ch) * 16)
 #define SYS_REG_CS0_ROW_MASK		3
-#define SYS_REG_ENC_CS0_ROW(n, ch)	(((n) - 13) << \
-					SYS_REG_CS0_ROW_SHIFT(ch))
 #define SYS_REG_CS1_ROW_SHIFT(ch)	(4 + (ch) * 16)
 #define SYS_REG_CS1_ROW_MASK		3
 #define SYS_REG_ENC_CS1_ROW(n, ch)	(((n) - 13) << \
@@ -64,6 +62,12 @@
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
index 4463fc84c8..2408246d0d 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -1006,6 +1006,7 @@ static void dram_all_config(struct dram_info *dram,
 			    const struct rk3399_sdram_params *sdram_params)
 {
 	u32 sys_reg2 = 0;
+	u32 sys_reg3 = 0;
 	unsigned int channel, idx;
 
 	sys_reg2 |= SYS_REG_ENC_DDRTYPE(sdram_params->base.dramtype);
@@ -1026,10 +1027,10 @@ static void dram_all_config(struct dram_info *dram,
 		sys_reg2 |= SYS_REG_ENC_RANK(info->rank, channel);
 		sys_reg2 |= SYS_REG_ENC_COL(info->col, channel);
 		sys_reg2 |= SYS_REG_ENC_BK(info->bk, channel);
-		sys_reg2 |= SYS_REG_ENC_CS0_ROW(info->cs0_row, channel);
 		sys_reg2 |= SYS_REG_ENC_CS1_ROW(info->cs1_row, channel);
 		sys_reg2 |= SYS_REG_ENC_BW(info->bw, channel);
 		sys_reg2 |= SYS_REG_ENC_DBW(info->dbw, channel);
+		SYS_REG_ENC_CS0_ROW(info->cs0_row, sys_reg2, sys_reg3, channel);
 
 		ddr_msch_regs = dram->chan[channel].msch;
 		noc_timing = &sdram_params->ch[channel].noc_timings;
@@ -1051,6 +1052,7 @@ static void dram_all_config(struct dram_info *dram,
 	}
 
 	writel(sys_reg2, &dram->pmugrf->os_reg2);
+	writel(sys_reg3, &dram->pmugrf->os_reg3);
 	rk_clrsetreg(&dram->pmusgrf->soc_con4, 0x1f << 10,
 		     sdram_params->base.stride << 10);
 
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

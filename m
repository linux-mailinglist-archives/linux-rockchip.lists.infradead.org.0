Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A2493CF9C
	for <lists+linux-rockchip@lfdr.de>; Tue, 11 Jun 2019 16:54:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tm5kOUhrze1qQSPWP9tXpmmjd4lXocypYNuvtPWb9ms=; b=FyXn57/siZAPy0
	D2GW2eht+Iv16/jUdbWLFp07T+eMIbd33tiyE4pWtGRYQaR6qTPdC0mqorzfW33Lk4mz2IyyXVglH
	ScZWhpxm+Ynd3bQ3c5XaIJQvAV5prxg4o2FoGL5jzUvQI2qOCeBrWwO7r2GDTktWE6ZFfa20gWOTM
	GCqWTp4zdLJx43VcjgJdZwGUHYaGu6wMlcBypEevYH+EF2ImKlNmKH/JTV3Z8XIT+P2f4e2qGwNh0
	omLS624ZucY3wvWTYE7UVy+yPCSe81DOftjKfrQwxNA6cHOOyLTarOqVO/ikVXSjk2/u69iqtET6O
	CdiX/FjaV3/POSK14kzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haiAM-0005P9-3D; Tue, 11 Jun 2019 14:54:26 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haiAF-0005Nc-QN
 for linux-rockchip@lists.infradead.org; Tue, 11 Jun 2019 14:54:23 +0000
Received: by mail-pl1-x641.google.com with SMTP id t7so2615175plr.11
 for <linux-rockchip@lists.infradead.org>; Tue, 11 Jun 2019 07:54:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=5Yf1E/nMMJ1uTpuqkdMMi/r9H01gEX8XKmpuGy2lGns=;
 b=AQhq3ai+Dfe1IeNOulTWAetQAgCv5y8U7E2g2NU1kpyvdH9bgTp1GRoqB0cOd8j7r5
 dDzp963DwB8WdGVrUsy0qadwDNZUX3r4960pVu4FeBmdlThM6974xZPUrPZ7pKp0dU74
 f+kz2QAc/yn0fhIHyxO7S3P41PHIb6ZxwopEs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=5Yf1E/nMMJ1uTpuqkdMMi/r9H01gEX8XKmpuGy2lGns=;
 b=j/OkkuyxHf5p3K9M0YzpU+ZKVGzx0MO/iL7cQJ7Evj9O5E9OxfaPIo6ut3V4UUmPJg
 B0B7tJAzbOPobGI7trSGGznjXfhLNX7GVhiNi1Sy/DJimXBOtYMa0fPb8GYL+y8ltHF1
 7H1wXRp+qvJ08f2840yx1xaaCB56KKjP6C1opG7bX2JN29qtDpoMh6YZ9olfdD6ZjHqZ
 mjRZmSrZTvuz5YItMbuYQr1VRJuxD9dT4NkgqXfKWHWC0YV1uzqP/wQRGuI8Z7hlCHO7
 aBjbPvSVwbX3d7QTOvRNEEvq+pUD9kYTEbua/Q9wqNqgtlNw/jmVJn/ZupSD8nFGeHIw
 WTeA==
X-Gm-Message-State: APjAAAVzJPZ49pH/vYNW1kN1Bj9MXVxHiuUZKinQIee5xcmfeAhr2gwb
 ilPssALGfxHY2pCalrJZHOf57Q==
X-Google-Smtp-Source: APXvYqzuRG4Hg6s83vAFpmHfOYCDXPS45JNvrstZincUSwNl/Wd/1CFnObVppEOsYuJ/kLkK6LO0Kw==
X-Received: by 2002:a17:902:988a:: with SMTP id
 s10mr76931523plp.304.1560264859282; 
 Tue, 11 Jun 2019 07:54:19 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.18])
 by smtp.gmail.com with ESMTPSA id e9sm16206208pfn.154.2019.06.11.07.54.15
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Jun 2019 07:54:18 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH 37/92] ram: rockchip: rk3399: Add cap_info structure
Date: Tue, 11 Jun 2019 20:20:40 +0530
Message-Id: <20190611145135.21399-38-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190611145135.21399-1-jagan@amarulasolutions.com>
References: <20190611145135.21399-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_075419_865161_E134D96E 
X-CRM114-Status: GOOD (  13.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
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

Group common ddr attributes like
- rank
- col
- bk
- bw
- dbw
- row_3_4
- cs0_row
- cs1_row
- ddrconfig

into a common cap_info structure for more code readability and extend
if possible based on the new features.

No functionality change.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 .../include/asm/arch-rockchip/sdram_rk3399.h  |  6 +-
 drivers/ram/rockchip/sdram_rk3399.c           | 71 ++++++++++---------
 2 files changed, 41 insertions(+), 36 deletions(-)

diff --git a/arch/arm/include/asm/arch-rockchip/sdram_rk3399.h b/arch/arm/include/asm/arch-rockchip/sdram_rk3399.h
index a191d242f8..67044f53e5 100644
--- a/arch/arm/include/asm/arch-rockchip/sdram_rk3399.h
+++ b/arch/arm/include/asm/arch-rockchip/sdram_rk3399.h
@@ -96,7 +96,7 @@ struct rk3399_ddr_cic_regs {
 /* DENALI_CTL_274 */
 #define MEM_RST_VALID	1
 
-struct rk3399_sdram_channel {
+struct sdram_cap_info {
 	unsigned int rank;
 	/* dram column number, 0 means this channel is invalid */
 	unsigned int col;
@@ -114,6 +114,10 @@ struct rk3399_sdram_channel {
 	unsigned int cs0_row;
 	unsigned int cs1_row;
 	unsigned int ddrconfig;
+};
+
+struct rk3399_sdram_channel {
+	struct sdram_cap_info cap_info;
 	struct rk3399_msch_timings noc_timings;
 };
 
diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 220197a42e..1acf9efe9c 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -156,35 +156,36 @@ static void set_memory_map(const struct chan_info *chan, u32 channel,
 	u32 row;
 
 	/* Get row number from ddrconfig setting */
-	if (sdram_ch->ddrconfig < 2 || sdram_ch->ddrconfig == 4)
+	if (sdram_ch->cap_info.ddrconfig < 2 ||
+	    sdram_ch->cap_info.ddrconfig == 4)
 		row = 16;
-	else if (sdram_ch->ddrconfig == 3)
+	else if (sdram_ch->cap_info.ddrconfig == 3)
 		row = 14;
 	else
 		row = 15;
 
-	cs_map = (sdram_ch->rank > 1) ? 3 : 1;
-	reduc = (sdram_ch->bw == 2) ? 0 : 1;
+	cs_map = (sdram_ch->cap_info.rank > 1) ? 3 : 1;
+	reduc = (sdram_ch->cap_info.bw == 2) ? 0 : 1;
 
 	/* Set the dram configuration to ctrl */
-	clrsetbits_le32(&denali_ctl[191], 0xF, (12 - sdram_ch->col));
+	clrsetbits_le32(&denali_ctl[191], 0xF, (12 - sdram_ch->cap_info.col));
 	clrsetbits_le32(&denali_ctl[190], (0x3 << 16) | (0x7 << 24),
-			((3 - sdram_ch->bk) << 16) |
+			((3 - sdram_ch->cap_info.bk) << 16) |
 			((16 - row) << 24));
 
 	clrsetbits_le32(&denali_ctl[196], 0x3 | (1 << 16),
 			cs_map | (reduc << 16));
 
 	/* PI_199 PI_COL_DIFF:RW:0:4 */
-	clrsetbits_le32(&denali_pi[199], 0xF, (12 - sdram_ch->col));
+	clrsetbits_le32(&denali_pi[199], 0xF, (12 - sdram_ch->cap_info.col));
 
 	/* PI_155 PI_ROW_DIFF:RW:24:3 PI_BANK_DIFF:RW:16:2 */
 	clrsetbits_le32(&denali_pi[155], (0x3 << 16) | (0x7 << 24),
-			((3 - sdram_ch->bk) << 16) |
+			((3 - sdram_ch->cap_info.bk) << 16) |
 			((16 - row) << 24));
 	/* PI_41 PI_CS_MAP:RW:24:4 */
 	clrsetbits_le32(&denali_pi[41], 0xf << 24, cs_map << 24);
-	if (sdram_ch->rank == 1 && sdram_params->base.dramtype == DDR3)
+	if (sdram_ch->cap_info.rank == 1 && sdram_params->base.dramtype == DDR3)
 		writel(0x2EC7FFFF, &denali_pi[34]);
 }
 
@@ -686,7 +687,7 @@ static int data_training_ca(const struct chan_info *chan, u32 channel,
 	u32 *denali_phy = chan->publ->denali_phy;
 	u32 i, tmp;
 	u32 obs_0, obs_1, obs_2, obs_err = 0;
-	u32 rank = sdram_params->ch[channel].rank;
+	u32 rank = sdram_params->ch[channel].cap_info.rank;
 	u32 rank_mask;
 
 	/* clear interrupt,PI_175 PI_INT_ACK:WR:0:17 */
@@ -749,7 +750,7 @@ static int data_training_wl(const struct chan_info *chan, u32 channel,
 	u32 *denali_phy = chan->publ->denali_phy;
 	u32 i, tmp;
 	u32 obs_0, obs_1, obs_2, obs_3, obs_err = 0;
-	u32 rank = sdram_params->ch[channel].rank;
+	u32 rank = sdram_params->ch[channel].cap_info.rank;
 
 	/* clear interrupt,PI_175 PI_INT_ACK:WR:0:17 */
 	writel(0x00003f7c, (&denali_pi[175]));
@@ -811,7 +812,7 @@ static int data_training_rg(const struct chan_info *chan, u32 channel,
 	u32 *denali_phy = chan->publ->denali_phy;
 	u32 i, tmp;
 	u32 obs_0, obs_1, obs_2, obs_3, obs_err = 0;
-	u32 rank = sdram_params->ch[channel].rank;
+	u32 rank = sdram_params->ch[channel].cap_info.rank;
 
 	/* clear interrupt,PI_175 PI_INT_ACK:WR:0:17 */
 	writel(0x00003f7c, (&denali_pi[175]));
@@ -873,7 +874,7 @@ static int data_training_rl(const struct chan_info *chan, u32 channel,
 {
 	u32 *denali_pi = chan->pi->denali_pi;
 	u32 i, tmp;
-	u32 rank = sdram_params->ch[channel].rank;
+	u32 rank = sdram_params->ch[channel].cap_info.rank;
 
 	/* clear interrupt,PI_175 PI_INT_ACK:WR:0:17 */
 	writel(0x00003f7c, (&denali_pi[175]));
@@ -921,7 +922,7 @@ static int data_training_wdql(const struct chan_info *chan, u32 channel,
 {
 	u32 *denali_pi = chan->pi->denali_pi;
 	u32 i, tmp;
-	u32 rank = sdram_params->ch[channel].rank;
+	u32 rank = sdram_params->ch[channel].cap_info.rank;
 	u32 rank_mask;
 
 	/* clear interrupt,PI_175 PI_INT_ACK:WR:0:17 */
@@ -1055,14 +1056,14 @@ static void set_ddrconfig(const struct chan_info *chan,
 	unsigned int cs0_cap = 0;
 	unsigned int cs1_cap = 0;
 
-	cs0_cap = (1 << (sdram_params->ch[channel].cs0_row
-			+ sdram_params->ch[channel].col
-			+ sdram_params->ch[channel].bk
-			+ sdram_params->ch[channel].bw - 20));
-	if (sdram_params->ch[channel].rank > 1)
-		cs1_cap = cs0_cap >> (sdram_params->ch[channel].cs0_row
-				- sdram_params->ch[channel].cs1_row);
-	if (sdram_params->ch[channel].row_3_4) {
+	cs0_cap = (1 << (sdram_params->ch[channel].cap_info.cs0_row
+			+ sdram_params->ch[channel].cap_info.col
+			+ sdram_params->ch[channel].cap_info.bk
+			+ sdram_params->ch[channel].cap_info.bw - 20));
+	if (sdram_params->ch[channel].cap_info.rank > 1)
+		cs1_cap = cs0_cap >> (sdram_params->ch[channel].cap_info.cs0_row
+				- sdram_params->ch[channel].cap_info.cs1_row);
+	if (sdram_params->ch[channel].cap_info.row_3_4) {
 		cs0_cap = cs0_cap * 3 / 4;
 		cs1_cap = cs1_cap * 3 / 4;
 	}
@@ -1089,22 +1090,22 @@ static void dram_all_config(struct dram_info *dram,
 		struct rk3399_msch_regs *ddr_msch_regs;
 		const struct rk3399_msch_timings *noc_timing;
 
-		if (sdram_params->ch[channel].col == 0)
+		if (sdram_params->ch[channel].cap_info.col == 0)
 			continue;
 		idx++;
-		sys_reg2 |= SYS_REG_ENC_ROW_3_4(info->row_3_4, channel);
+		sys_reg2 |= SYS_REG_ENC_ROW_3_4(info->cap_info.row_3_4, channel);
 		sys_reg2 |= SYS_REG_ENC_CHINFO(channel);
-		sys_reg2 |= SYS_REG_ENC_RANK(info->rank, channel);
-		sys_reg2 |= SYS_REG_ENC_COL(info->col, channel);
-		sys_reg2 |= SYS_REG_ENC_BK(info->bk, channel);
-		sys_reg2 |= SYS_REG_ENC_BW(info->bw, channel);
-		sys_reg2 |= SYS_REG_ENC_DBW(info->dbw, channel);
-		SYS_REG_ENC_CS0_ROW(info->cs0_row, sys_reg2, sys_reg3, channel);
-		if (info->cs1_row)
-			SYS_REG_ENC_CS1_ROW(info->cs1_row, sys_reg2,
+		sys_reg2 |= SYS_REG_ENC_RANK(info->cap_info.rank, channel);
+		sys_reg2 |= SYS_REG_ENC_COL(info->cap_info.col, channel);
+		sys_reg2 |= SYS_REG_ENC_BK(info->cap_info.bk, channel);
+		sys_reg2 |= SYS_REG_ENC_BW(info->cap_info.bw, channel);
+		sys_reg2 |= SYS_REG_ENC_DBW(info->cap_info.dbw, channel);
+		SYS_REG_ENC_CS0_ROW(info->cap_info.cs0_row, sys_reg2, sys_reg3, channel);
+		if (info->cap_info.cs1_row)
+			SYS_REG_ENC_CS1_ROW(info->cap_info.cs1_row, sys_reg2,
 					    sys_reg3, channel);
 
-		sys_reg3 |= SYS_REG_ENC_CS1_COL(info->col, channel);
+		sys_reg3 |= SYS_REG_ENC_CS1_COL(info->cap_info.col, channel);
 		sys_reg3 |= SYS_REG_ENC_VERSION(DDR_SYS_REG_VERSION);
 
 		ddr_msch_regs = dram->chan[channel].msch;
@@ -1121,7 +1122,7 @@ static void dram_all_config(struct dram_info *dram,
 		       &ddr_msch_regs->ddrmode);
 
 		/* rank 1 memory clock disable (dfi_dram_clk_disable = 1) */
-		if (sdram_params->ch[channel].rank == 1)
+		if (sdram_params->ch[channel].cap_info.rank == 1)
 			setbits_le32(&dram->chan[channel].pctl->denali_ctl[276],
 				     1 << 17);
 	}
@@ -1232,7 +1233,7 @@ static int sdram_init(struct dram_info *dram,
 		}
 
 		set_ddrconfig(chan, sdram_params, channel,
-			      sdram_params->ch[channel].ddrconfig);
+			      sdram_params->ch[channel].cap_info.ddrconfig);
 	}
 	dram_all_config(dram, sdram_params);
 	switch_to_phy_index1(dram, sdram_params);
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D19BF69AB9
	for <lists+linux-rockchip@lfdr.de>; Mon, 15 Jul 2019 20:22:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1S+bap6q+Vk1nIAtcaFUdLqDy0QwCyAe1igxPKA5kWg=; b=OXq1EVFnYf8qSu
	Xf30xyzj5I9Y8O/dWLH4JiF6Kprd/ltRPNMJFHaa0aERD4C3guj5HqU+qaib3ccjJLmxxF/9ttH79
	hdTjIJzXo3m9r5nkWfFqfgoE1uUVxz1DpnfsFTQNQDL0518X+gKHgbFKySORUPZYnNaVLuwNCXsfO
	fTAn4PvPktUTVraPvrS2HED6tc4/MNfW1dnYXk+ejr0f1kYLso5o/S/rBY+BNPNzDOxixRgmMmkRo
	Xss5z2K3FhzOJMMtkDk2j184U+rCxHVuQtKek7DzcVwtegqQqeeGzCZpAiMjupaUvTAfdJU2TiGLo
	eoSkKRYusPk3Q4CFkUgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn5bt-000790-Q4; Mon, 15 Jul 2019 18:22:01 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn5bo-00076O-0A
 for linux-rockchip@lists.infradead.org; Mon, 15 Jul 2019 18:21:57 +0000
Received: by mail-pf1-x443.google.com with SMTP id c73so7790887pfb.13
 for <linux-rockchip@lists.infradead.org>; Mon, 15 Jul 2019 11:21:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=+9/anVDS7Q12usMSqx4jEVXDSHZX9ttjNc+q4flrxR8=;
 b=JUmjZMbzG39U/XR0iu81iAMozMol0P2mR0HQJjNm3LV8w/Nm8T1SbulnQ3mDSSLd6N
 4uwjaTCodTfj02JfuR7A4hNCIuNxA2wUpcyOTMWUoVTfk0cdZCoS0KmLUQdiMIum0Fck
 o0jGqgjtJ+iBHE3JyqvFzlBOgOgDhu0bGtNUg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+9/anVDS7Q12usMSqx4jEVXDSHZX9ttjNc+q4flrxR8=;
 b=kuuAb9VQS1RT78sFlm2qgk8vB8m29YAOmEC9B5rQpdovX4gKybElBLOIlIldDBUs8P
 XnPQDfRcwtn/LYhg9BQRRusMyaqXkbHh0jTL/opXgVfdJgrRrhG1CO5u5/CV2wcHgzdD
 Z37lXAR8UIiUQQGJN0U8q19w4JN84DxffhgQxndGSGpDI3GdlVpO6TimFlO5FjHlZ9gn
 xo/i9rbLhnOkFuwd6Dn3YDlBLaFvFfHeEeQeqF+xi9QpYCL3mU7crwPE8h97v39MjQyv
 w7uEPFUx0ehYD4Mn/GIOn4wgKfKe2FeuL+YlUUP60wxrC9Dnsyxs6FY0ejNEY49SGOxW
 xFuw==
X-Gm-Message-State: APjAAAVzNtrVg6rby6VsEVkfr06b6nSknWK+6xCN0ZnVH8ZZGIZVmrcS
 m2aDRQO4D/0htrst8vvhLYd0qA==
X-Google-Smtp-Source: APXvYqzXa2HeqBnsh+LwHLaAz3Ao2m3ur9k9d2aUd7yeJL71bS+fQOfMomsvB+FP73nF8OIGDEf/rw==
X-Received: by 2002:a63:9c5:: with SMTP id 188mr3258004pgj.2.1563214915446;
 Mon, 15 Jul 2019 11:21:55 -0700 (PDT)
Received: from localhost.localdomain ([49.206.201.107])
 by smtp.gmail.com with ESMTPSA id l15sm18152405pgf.5.2019.07.15.11.21.52
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 15 Jul 2019 11:21:55 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v3 10/15] ram: rockchip: rk3399: Add cap_info structure
Date: Mon, 15 Jul 2019 23:51:05 +0530
Message-Id: <20190715182110.21336-11-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190715182110.21336-1-jagan@amarulasolutions.com>
References: <20190715182110.21336-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_112156_097629_A4151888 
X-CRM114-Status: GOOD (  14.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
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

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 .../include/asm/arch-rockchip/sdram_rk3399.h  |  6 +-
 drivers/ram/rockchip/sdram_rk3399.c           | 73 ++++++++++---------
 2 files changed, 45 insertions(+), 34 deletions(-)

diff --git a/arch/arm/include/asm/arch-rockchip/sdram_rk3399.h b/arch/arm/include/asm/arch-rockchip/sdram_rk3399.h
index c6a260bad8..683093d4ca 100644
--- a/arch/arm/include/asm/arch-rockchip/sdram_rk3399.h
+++ b/arch/arm/include/asm/arch-rockchip/sdram_rk3399.h
@@ -71,7 +71,7 @@ struct rk3399_ddr_cic_regs {
 /* DENALI_CTL_274 */
 #define MEM_RST_VALID	1
 
-struct rk3399_sdram_channel {
+struct sdram_cap_info {
 	unsigned int rank;
 	/* dram column number, 0 means this channel is invalid */
 	unsigned int col;
@@ -89,6 +89,10 @@ struct rk3399_sdram_channel {
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
index 043b27737d..492b0975dd 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -121,35 +121,36 @@ static void set_memory_map(const struct chan_info *chan, u32 channel,
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
-	if (sdram_ch->rank == 1 && params->base.dramtype == DDR3)
+	if (sdram_ch->cap_info.rank == 1 && params->base.dramtype == DDR3)
 		writel(0x2EC7FFFF, &denali_pi[34]);
 }
 
@@ -624,7 +625,7 @@ static int data_training_ca(const struct chan_info *chan, u32 channel,
 	u32 *denali_phy = chan->publ->denali_phy;
 	u32 i, tmp;
 	u32 obs_0, obs_1, obs_2, obs_err = 0;
-	u32 rank = params->ch[channel].rank;
+	u32 rank = params->ch[channel].cap_info.rank;
 
 	for (i = 0; i < rank; i++) {
 		select_per_cs_training_index(chan, i);
@@ -678,7 +679,7 @@ static int data_training_wl(const struct chan_info *chan, u32 channel,
 	u32 *denali_phy = chan->publ->denali_phy;
 	u32 i, tmp;
 	u32 obs_0, obs_1, obs_2, obs_3, obs_err = 0;
-	u32 rank = params->ch[channel].rank;
+	u32 rank = params->ch[channel].cap_info.rank;
 
 	for (i = 0; i < rank; i++) {
 		select_per_cs_training_index(chan, i);
@@ -737,7 +738,7 @@ static int data_training_rg(const struct chan_info *chan, u32 channel,
 	u32 *denali_phy = chan->publ->denali_phy;
 	u32 i, tmp;
 	u32 obs_0, obs_1, obs_2, obs_3, obs_err = 0;
-	u32 rank = params->ch[channel].rank;
+	u32 rank = params->ch[channel].cap_info.rank;
 
 	for (i = 0; i < rank; i++) {
 		select_per_cs_training_index(chan, i);
@@ -796,7 +797,7 @@ static int data_training_rl(const struct chan_info *chan, u32 channel,
 {
 	u32 *denali_pi = chan->pi->denali_pi;
 	u32 i, tmp;
-	u32 rank = params->ch[channel].rank;
+	u32 rank = params->ch[channel].cap_info.rank;
 
 	for (i = 0; i < rank; i++) {
 		select_per_cs_training_index(chan, i);
@@ -841,7 +842,7 @@ static int data_training_wdql(const struct chan_info *chan, u32 channel,
 {
 	u32 *denali_pi = chan->pi->denali_pi;
 	u32 i, tmp;
-	u32 rank = params->ch[channel].rank;
+	u32 rank = params->ch[channel].cap_info.rank;
 
 	for (i = 0; i < rank; i++) {
 		select_per_cs_training_index(chan, i);
@@ -940,14 +941,14 @@ static void set_ddrconfig(const struct chan_info *chan,
 	unsigned int cs0_cap = 0;
 	unsigned int cs1_cap = 0;
 
-	cs0_cap = (1 << (params->ch[channel].cs0_row
-			+ params->ch[channel].col
-			+ params->ch[channel].bk
-			+ params->ch[channel].bw - 20));
-	if (params->ch[channel].rank > 1)
-		cs1_cap = cs0_cap >> (params->ch[channel].cs0_row
-				- params->ch[channel].cs1_row);
-	if (params->ch[channel].row_3_4) {
+	cs0_cap = (1 << (params->ch[channel].cap_info.cs0_row
+			+ params->ch[channel].cap_info.col
+			+ params->ch[channel].cap_info.bk
+			+ params->ch[channel].cap_info.bw - 20));
+	if (params->ch[channel].cap_info.rank > 1)
+		cs1_cap = cs0_cap >> (params->ch[channel].cap_info.cs0_row
+				- params->ch[channel].cap_info.cs1_row);
+	if (params->ch[channel].cap_info.row_3_4) {
 		cs0_cap = cs0_cap * 3 / 4;
 		cs1_cap = cs1_cap * 3 / 4;
 	}
@@ -973,20 +974,26 @@ static void dram_all_config(struct dram_info *dram,
 		struct rk3399_msch_regs *ddr_msch_regs;
 		const struct rk3399_msch_timings *noc_timing;
 
-		if (params->ch[channel].col == 0)
+		if (params->ch[channel].cap_info.col == 0)
 			continue;
 		idx++;
-		sys_reg |= info->row_3_4 << SYS_REG_ROW_3_4_SHIFT(channel);
+		sys_reg |= info->cap_info.row_3_4 <<
+			   SYS_REG_ROW_3_4_SHIFT(channel);
 		sys_reg |= 1 << SYS_REG_CHINFO_SHIFT(channel);
-		sys_reg |= (info->rank - 1) << SYS_REG_RANK_SHIFT(channel);
-		sys_reg |= (info->col - 9) << SYS_REG_COL_SHIFT(channel);
-		sys_reg |= info->bk == 3 ? 0 : 1 << SYS_REG_BK_SHIFT(channel);
-		sys_reg |= (info->cs0_row - 13) <<
+		sys_reg |= (info->cap_info.rank - 1) <<
+			   SYS_REG_RANK_SHIFT(channel);
+		sys_reg |= (info->cap_info.col - 9) <<
+			   SYS_REG_COL_SHIFT(channel);
+		sys_reg |= info->cap_info.bk == 3 ? 0 : 1 <<
+			   SYS_REG_BK_SHIFT(channel);
+		sys_reg |= (info->cap_info.cs0_row - 13) <<
 			    SYS_REG_CS0_ROW_SHIFT(channel);
-		sys_reg |= (info->cs1_row - 13) <<
+		sys_reg |= (info->cap_info.cs1_row - 13) <<
 			    SYS_REG_CS1_ROW_SHIFT(channel);
-		sys_reg |= (2 >> info->bw) << SYS_REG_BW_SHIFT(channel);
-		sys_reg |= (2 >> info->dbw) << SYS_REG_DBW_SHIFT(channel);
+		sys_reg |= (2 >> info->cap_info.bw) <<
+			   SYS_REG_BW_SHIFT(channel);
+		sys_reg |= (2 >> info->cap_info.dbw) <<
+			   SYS_REG_DBW_SHIFT(channel);
 
 		ddr_msch_regs = dram->chan[channel].msch;
 		noc_timing = &params->ch[channel].noc_timings;
@@ -1002,7 +1009,7 @@ static void dram_all_config(struct dram_info *dram,
 		       &ddr_msch_regs->ddrmode);
 
 		/* rank 1 memory clock disable (dfi_dram_clk_disable = 1) */
-		if (params->ch[channel].rank == 1)
+		if (params->ch[channel].cap_info.rank == 1)
 			setbits_le32(&dram->chan[channel].pctl->denali_ctl[276],
 				     1 << 17);
 	}
@@ -1106,7 +1113,7 @@ static int sdram_init(struct dram_info *dram,
 		}
 
 		set_ddrconfig(chan, params, channel,
-			      params->ch[channel].ddrconfig);
+			      params->ch[channel].cap_info.ddrconfig);
 	}
 	dram_all_config(dram, params);
 	switch_to_phy_index1(dram, params);
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

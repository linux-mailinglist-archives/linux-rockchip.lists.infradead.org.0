Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A2FA47B3F
	for <lists+linux-rockchip@lfdr.de>; Mon, 17 Jun 2019 09:38:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YoF68pnLoyOXcrnho0R4Tfp8CKdvIgI4MrebIMJiGHM=; b=GArNKtHoq5tW8G
	6EyuDrmTl1+o2I+sOswK6Zf6SPbpuHAuGSg30u7SFLyp3/dHp54lKHoyTWKt3wikIsGtt2H6jNvK/
	MmFPTN/takW6b6rsJRDm9EZ+jmzGuPi/2PUiPJ8caXaGvzhCJVhvM74WEyKYV6zh8BOsrr6kD+kl8
	EWYNFzu8ZLcMQyBXvvsOqI+a2ikAKNWLGDWktz3ekAna3rCW54BlmpUWXitmzVRVtJvHerz+cx3f4
	nAT8fx81f2q42LMveD35bbQYGy7dFaYS0Bm5DM028n6H8L+Kbj6HibWDHbjLQ1VaogRIlW59Jqmz4
	7yG55x9f5aqE5ON5b+uQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcmDq-0006oz-5I; Mon, 17 Jun 2019 07:38:34 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcmDk-0006lQ-Is
 for linux-rockchip@lists.infradead.org; Mon, 17 Jun 2019 07:38:30 +0000
Received: by mail-pg1-x542.google.com with SMTP id 196so5311538pgc.6
 for <linux-rockchip@lists.infradead.org>; Mon, 17 Jun 2019 00:38:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=7OIbEVJNgzQsV3cs0gxMDrL21oIqBVY0iTRPqRzNyEQ=;
 b=phvcRzQWMuDbfBtRHy6M9tiEMYSlRsXAZP4fI9cl6XMcXUziJbptie3Qb2Z2gVmGMF
 gVm30ZTKWkYcy/N/GVqRVkDFrSMySN0l58+9f4Q9l/ygxvfcMxU25BFHkSbde3vbbQQ9
 z2BSTYqVCVonwmAFPBycNSupuwWrRXUi4Qx3o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=7OIbEVJNgzQsV3cs0gxMDrL21oIqBVY0iTRPqRzNyEQ=;
 b=fAg4WOvkAxU3OptZaQQWHbC2DlIIB7C5pu18vlAFs7GnGO5BdecFWN2YsCBcm0QYsV
 nNeRPMlvzGFIMgDFgjF2DUvU2q6X4dpUyzS3eolzJrfMxwY54bvMuOpXjRrUzQe2niyG
 OypW9Wj8K2wHv1Xdt4D/9QBTwpaXMeGnV5jI9mVMm5TbWEg/EDwzNnwLpEl6v076J+yy
 I5HN069MKA/9C2oPDGjVhuA9vR8Oc63RodPZHGxAXJSJsGdf3IqKo95pCMTuihVe4V7U
 SXXXcuF1qd6550JdrbBa3OQU5KKStCY2OGBbz9cPYGbtSTAG1gntDdAdbosIQEPpaH5o
 oybg==
X-Gm-Message-State: APjAAAUiQ0xbs9IZs7Hz3YsLnnFZ8kreR+YHQtHUxbxR8mLBNyU7rGfj
 Ght+rdOrDTDxhDbZMt7c708P4A==
X-Google-Smtp-Source: APXvYqz2Iiw1UAiSNmGNFF2tq7+ouWmbAjwO23T6IO5VoyPW4w8z2Zev+wTNPRA8/m3l5IAhAQrizA==
X-Received: by 2002:a62:3283:: with SMTP id y125mr62916159pfy.83.1560757108055; 
 Mon, 17 Jun 2019 00:38:28 -0700 (PDT)
Received: from localhost.localdomain ([49.206.203.245])
 by smtp.gmail.com with ESMTPSA id m41sm15205998pje.18.2019.06.17.00.38.25
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 00:38:27 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v2 38/99] ram: rockchip: rk3399: Add cap_info structure
Date: Mon, 17 Jun 2019 13:01:51 +0530
Message-Id: <20190617073252.27810-39-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190617073252.27810-1-jagan@amarulasolutions.com>
References: <20190617073252.27810-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_003828_719848_67B4D174 
X-CRM114-Status: GOOD (  14.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
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
index 6c3a2b5453..231f69b173 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -155,35 +155,36 @@ static void set_memory_map(const struct chan_info *chan, u32 channel,
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
 
@@ -681,7 +682,7 @@ static int data_training_ca(const struct chan_info *chan, u32 channel,
 	u32 *denali_phy = chan->publ->denali_phy;
 	u32 i, tmp;
 	u32 obs_0, obs_1, obs_2, obs_err = 0;
-	u32 rank = params->ch[channel].rank;
+	u32 rank = params->ch[channel].cap_info.rank;
 	u32 rank_mask;
 
 	/* clear interrupt,PI_175 PI_INT_ACK:WR:0:17 */
@@ -744,7 +745,7 @@ static int data_training_wl(const struct chan_info *chan, u32 channel,
 	u32 *denali_phy = chan->publ->denali_phy;
 	u32 i, tmp;
 	u32 obs_0, obs_1, obs_2, obs_3, obs_err = 0;
-	u32 rank = params->ch[channel].rank;
+	u32 rank = params->ch[channel].cap_info.rank;
 
 	/* clear interrupt,PI_175 PI_INT_ACK:WR:0:17 */
 	writel(0x00003f7c, (&denali_pi[175]));
@@ -806,7 +807,7 @@ static int data_training_rg(const struct chan_info *chan, u32 channel,
 	u32 *denali_phy = chan->publ->denali_phy;
 	u32 i, tmp;
 	u32 obs_0, obs_1, obs_2, obs_3, obs_err = 0;
-	u32 rank = params->ch[channel].rank;
+	u32 rank = params->ch[channel].cap_info.rank;
 
 	/* clear interrupt,PI_175 PI_INT_ACK:WR:0:17 */
 	writel(0x00003f7c, (&denali_pi[175]));
@@ -868,7 +869,7 @@ static int data_training_rl(const struct chan_info *chan, u32 channel,
 {
 	u32 *denali_pi = chan->pi->denali_pi;
 	u32 i, tmp;
-	u32 rank = params->ch[channel].rank;
+	u32 rank = params->ch[channel].cap_info.rank;
 
 	/* clear interrupt,PI_175 PI_INT_ACK:WR:0:17 */
 	writel(0x00003f7c, (&denali_pi[175]));
@@ -916,7 +917,7 @@ static int data_training_wdql(const struct chan_info *chan, u32 channel,
 {
 	u32 *denali_pi = chan->pi->denali_pi;
 	u32 i, tmp;
-	u32 rank = params->ch[channel].rank;
+	u32 rank = params->ch[channel].cap_info.rank;
 	u32 rank_mask;
 
 	/* clear interrupt,PI_175 PI_INT_ACK:WR:0:17 */
@@ -1050,14 +1051,14 @@ static void set_ddrconfig(const struct chan_info *chan,
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
@@ -1084,22 +1085,22 @@ static void dram_all_config(struct dram_info *dram,
 		struct rk3399_msch_regs *ddr_msch_regs;
 		const struct rk3399_msch_timings *noc_timing;
 
-		if (params->ch[channel].col == 0)
+		if (params->ch[channel].cap_info.col == 0)
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
@@ -1116,7 +1117,7 @@ static void dram_all_config(struct dram_info *dram,
 		       &ddr_msch_regs->ddrmode);
 
 		/* rank 1 memory clock disable (dfi_dram_clk_disable = 1) */
-		if (params->ch[channel].rank == 1)
+		if (params->ch[channel].cap_info.rank == 1)
 			setbits_le32(&dram->chan[channel].pctl->denali_ctl[276],
 				     1 << 17);
 	}
@@ -1226,7 +1227,7 @@ static int sdram_init(struct dram_info *dram,
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

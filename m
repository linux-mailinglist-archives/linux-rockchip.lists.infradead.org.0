Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AED547B79
	for <lists+linux-rockchip@lfdr.de>; Mon, 17 Jun 2019 09:41:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+socOQL6A3xZQuvYNxCf1LDVog/M4UzPxndMd09HxvA=; b=HuBJ44jGwuJHWk
	9AlZrJTaG19GcjJGFiKFstuKUw2gpNF3IZWi3xDu1khkljXprFPTqgg9pdStSPtYD4LnzjbS0QMPJ
	+Af2A4YxnTBGWgdre9c6bd5IWTy/vsWVgTB6P+k0DAQUEJ2XrjYgfmhdyaaXoEL23COT1xKxmUtLP
	iHqq4Sgz6lpR3K9ZliTgH5tFHeyjJuNavCRTbhfT7mf5fG2rx2d5+kLl4pNYfgVB+QtQ/LBOMaf4Q
	Ouu/9wwHZDKVcPmQ1O3DKz/nEB5djRq5ZC1YGZP3wx+8Pm4fjqIJVRySN4LBfWRb2FyV09vr0uyn2
	1WcJ7yVJo4vvzWuHud5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcmGZ-000248-PE; Mon, 17 Jun 2019 07:41:23 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcmGT-0001zP-9f
 for linux-rockchip@lists.infradead.org; Mon, 17 Jun 2019 07:41:19 +0000
Received: by mail-pg1-x544.google.com with SMTP id n65so856521pga.4
 for <linux-rockchip@lists.infradead.org>; Mon, 17 Jun 2019 00:41:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=T5SX0nMZySkwaklGec08ZPsIzPqyXVYCODGOU+3yNSs=;
 b=RzRc9iIsIPjzf4j8qvG9OLMa/8EWa0grdSzvIKtGaZGt76XiCV4IT+A7QTevAcXhFS
 Z8RCQz7cty9U62sqEQ0ujPt1tIM0/nhRiewqefFKjr5goyek+ZzVHhT+o/VktHNXJYu4
 kdw0u/VAtBtt1MpzLf8AjUSOnA6UMSPUlNi9U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=T5SX0nMZySkwaklGec08ZPsIzPqyXVYCODGOU+3yNSs=;
 b=sQ7k9pdDirw2AFHvM/59hPUsJ+YkfQvqEpWP6/iaLzpjl63rFrIyE36MgjPibowF2l
 Nno09Go4KHDx1pn2QAPEBRAvSvgOIAlk242kFHZVxrY+iBA/BvgamuVxY7Y3U/AnK+XW
 kkVmq3EM/lyvYytcZoagKaJEK2X1N7nAKiNX9xJbn82ZXEh1BTa7CooTrJzOCupXPAGs
 j80nhFqFkJBD79ye5h6YtUnW7ovo7gRdCqhtbLvFPvzNt2RrkEJu6mWbdjoK6tGpFSDS
 USHPmyNJTqyA+Z78U+XdLQJP4+aaNLAqfk28hWZRmM2on1WKTQwso5DXwkZX7AHiN7nn
 lD4Q==
X-Gm-Message-State: APjAAAU5jJmVXjzoxripZi5g3jLZKsa2rn5Ktwt8JRfFagsQbcE5Ds/Y
 tejJOk81miY9n0afnMJ2zHhEpQ3KOjQ=
X-Google-Smtp-Source: APXvYqwIpoRnd6qHz4PE4fB12Db2wWEGu3RvEoJx5wDwAcU/yjScShGVaqGJ/AwHW+6Glc3il54xFw==
X-Received: by 2002:aa7:90ce:: with SMTP id
 k14mr113077298pfk.239.1560757276525; 
 Mon, 17 Jun 2019 00:41:16 -0700 (PDT)
Received: from localhost.localdomain ([49.206.203.245])
 by smtp.gmail.com with ESMTPSA id m41sm15205998pje.18.2019.06.17.00.41.13
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 00:41:16 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v2 89/99] ram: rk3399: Add lpddr4 set rate support
Date: Mon, 17 Jun 2019 13:02:42 +0530
Message-Id: <20190617073252.27810-90-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190617073252.27810-1-jagan@amarulasolutions.com>
References: <20190617073252.27810-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_004117_562815_EBC893ED 
X-CRM114-Status: GOOD (  15.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
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

Unlike rest of dram type chips, LPDDR4 initialization start
with at board selected frequency (say 50MHz) and then it
switches into 400MHz and 800MHz simultaneously to make the
proper sequence work on each channel with associated training.

Here is sameple log about LPDDR4-100 init sequence in Rockpro64:

Channel 0: LPDDR4, 50MHz
BW=32 Col=10 Bk=8 CS0 Row=15 CS1 Row=15 CS=2 Die BW=16 Size=2048MB
Channel 1: LPDDR4, 50MHz
BW=32 Col=10 Bk=8 CS0 Row=15 CS1 Row=15 CS=2 Die BW=16 Size=2048MB
256B stride
channel 0 training pass
channel 1 training pass
change freq to 400 MHz 0, 1
channel 0 training pass
channel 1 training pass
change freq to 800 MHz 1, 0

This patch add support to this init sequence via lpddr4 set rate
by taking sdram timing parameters from 400, 800 .inc files.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 404 +++++++++++++++++++++++++++-
 1 file changed, 392 insertions(+), 12 deletions(-)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 9f5438a0bc..07759e8956 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -16,6 +16,7 @@
 #include <asm/arch-rockchip/clock.h>
 #include <asm/arch-rockchip/cru_rk3399.h>
 #include <asm/arch-rockchip/grf_rk3399.h>
+#include <asm/arch-rockchip/pmu_rk3399.h>
 #include <asm/arch-rockchip/hardware.h>
 #include <asm/arch-rockchip/sdram_common.h>
 #include <asm/arch-rockchip/sdram_rk3399.h>
@@ -62,6 +63,7 @@ struct dram_info {
 	struct clk ddr_clk;
 	struct rk3399_cru *cru;
 	struct rk3399_grf_regs *grf;
+	struct rk3399_pmu_regs *pmu;
 	struct rk3399_pmucru *pmucru;
 	struct rk3399_pmusgrf_regs *pmusgrf;
 	struct rk3399_ddr_cic_regs *cic;
@@ -75,7 +77,7 @@ struct sdram_rk3399_ops {
 	int (*data_training)(struct dram_info *dram, u32 channel, u8 rank,
 			     struct rk3399_sdram_params *sdram);
 	int (*set_rate)(struct dram_info *dram,
-			const struct rk3399_sdram_params *params);
+			struct rk3399_sdram_params *params);
 };
 
 #if defined(CONFIG_TPL_BUILD) || \
@@ -221,6 +223,18 @@ lpddr4_get_io_settings(const struct rk3399_sdram_params *params, u32 mr5)
 	return io;
 }
 
+static void *get_denali_phy(const struct chan_info *chan,
+			    struct rk3399_sdram_params *params, bool reg)
+{
+	return reg ? &chan->publ->denali_phy : &params->phy_regs.denali_phy;
+}
+
+static void *get_denali_ctl(const struct chan_info *chan,
+			    struct rk3399_sdram_params *params, bool reg)
+{
+	return reg ? &chan->pctl->denali_ctl : &params->pctl_regs.denali_ctl;
+}
+
 static void *get_ddrc0_con(struct dram_info *dram, u8 channel)
 {
 	return (channel == 0) ? &dram->grf->ddrc0_con0 : &dram->grf->ddrc0_con1;
@@ -574,10 +588,11 @@ static int phy_io_config(const struct chan_info *chan,
 }
 
 static void set_ds_odt(const struct chan_info *chan,
-		       const struct rk3399_sdram_params *params, u32 mr5)
+		       struct rk3399_sdram_params *params,
+		       bool ctl_phy_reg, u32 mr5)
 {
-	u32 *denali_phy = chan->publ->denali_phy;
-	u32 *denali_ctl = chan->pctl->denali_ctl;
+	u32 *denali_phy = get_denali_phy(chan, params, ctl_phy_reg);
+	u32 *denali_ctl = get_denali_ctl(chan, params, ctl_phy_reg);
 	u32 tsel_idle_en, tsel_wr_en, tsel_rd_en;
 	u32 tsel_idle_select_p, tsel_rd_select_p;
 	u32 tsel_idle_select_n, tsel_rd_select_n;
@@ -735,7 +750,8 @@ static void set_ds_odt(const struct chan_info *chan,
 	clrsetbits_le32(&denali_phy[928], 0xff, reg_value);
 
 	/* phy_pad_rst_drive 8bits DENALI_PHY_937 offset_0 */
-	clrsetbits_le32(&denali_phy[937], 0xff, reg_value);
+	if (!ctl_phy_reg)
+		clrsetbits_le32(&denali_phy[937], 0xff, reg_value);
 
 	/* phy_pad_cke_drive 8bits DENALI_PHY_935 offset_0 */
 	clrsetbits_le32(&denali_phy[935], 0xff, reg_value);
@@ -919,7 +935,7 @@ static int pctl_cfg(struct dram_info *dram, const struct chan_info *chan,
 	copy_to_reg(&denali_phy[512], &params_phy[512], (549 - 512 + 1) * 4);
 	copy_to_reg(&denali_phy[640], &params_phy[640], (677 - 640 + 1) * 4);
 	copy_to_reg(&denali_phy[768], &params_phy[768], (805 - 768 + 1) * 4);
-	set_ds_odt(chan, params, 0);
+	set_ds_odt(chan, params, true, 0);
 
 	/*
 	 * phy_dqs_tsel_wr_timing_X 8bits DENALI_PHY_84/212/340/468 offset_8
@@ -950,7 +966,6 @@ static int pctl_cfg(struct dram_info *dram, const struct chan_info *chan,
 	return 0;
 }
 
-#if !defined(CONFIG_RAM_RK3399_LPDDR4)
 static void select_per_cs_training_index(const struct chan_info *chan,
 					 u32 rank)
 {
@@ -1308,7 +1323,7 @@ static int data_training(struct dram_info *dram, u32 channel,
 
 	if (training_flag == PI_FULL_TRAINING) {
 		if (params->base.dramtype == LPDDR4) {
-			training_flag = PI_CA_TRAINING | PI_WRITE_LEVELING |
+			training_flag = PI_WRITE_LEVELING |
 					PI_READ_GATE_TRAINING |
 					PI_READ_LEVELING | PI_WDQ_LEVELING;
 		} else if (params->base.dramtype == LPDDR3) {
@@ -1371,7 +1386,6 @@ static int data_training(struct dram_info *dram, u32 channel,
 
 	return 0;
 }
-#endif
 
 static void set_ddrconfig(const struct chan_info *chan,
 			  const struct rk3399_sdram_params *params,
@@ -1494,7 +1508,7 @@ static int default_data_training(struct dram_info *dram, u32 channel, u8 rank,
 }
 
 static int switch_to_phy_index1(struct dram_info *dram,
-				const struct rk3399_sdram_params *params)
+				struct rk3399_sdram_params *params)
 {
 	u32 channel;
 	u32 *denali_phy;
@@ -1540,6 +1554,18 @@ static int switch_to_phy_index1(struct dram_info *dram,
 
 #else
 
+struct rk3399_sdram_params lpddr4_timings[] = {
+	#include "sdram-rk3399-lpddr4-400.inc"
+	#include "sdram-rk3399-lpddr4-800.inc"
+};
+
+static u32 lpddr4_get_phy(const struct rk3399_sdram_params *params, u32 ctl)
+{
+	u32 lpddr4_phy[] = {1, 0, 0xb};
+
+	return lpddr4_phy[ctl];
+}
+
 static u32 get_ddr_stride(struct rk3399_pmusgrf_regs *pmusgrf)
 {
 	return ((readl(&pmusgrf->soc_con4) >> 10) & 0x1F);
@@ -1757,6 +1783,358 @@ end:
 
 	return ret;
 }
+
+static void lpddr4_copy_phy(struct dram_info *dram,
+			    struct rk3399_sdram_params *params, u32 phy,
+			    struct rk3399_sdram_params *timings,
+			    u32 channel)
+{
+	u32 *denali_phy;
+	u32 *denali_phy_params;
+	u32 speed = 0;
+	u32 mr5;
+
+	denali_phy = dram->chan[channel].publ->denali_phy;
+	denali_phy_params = timings->phy_regs.denali_phy;
+
+	/* switch index */
+	clrsetbits_le32(&denali_phy_params[896], 0x3 << 8, phy << 8);
+	writel(denali_phy_params[896], &denali_phy[896]);
+
+	/* phy_pll_ctrl_ca, phy_pll_ctrl */
+	writel(denali_phy_params[911], &denali_phy[911]);
+
+	/* phy_low_freq_sel */
+	clrsetbits_le32(&denali_phy[913], 0x1,
+			denali_phy_params[913] & 0x1);
+
+	/* phy_grp_slave_delay_x, phy_cslvl_dly_step */
+	writel(denali_phy_params[916], &denali_phy[916]);
+	writel(denali_phy_params[917], &denali_phy[917]);
+	writel(denali_phy_params[918], &denali_phy[918]);
+
+	/* phy_adrz_sw_wraddr_shift_x  */
+	writel(denali_phy_params[512], &denali_phy[512]);
+	clrsetbits_le32(&denali_phy[513], 0xffff,
+			denali_phy_params[513] & 0xffff);
+	writel(denali_phy_params[640], &denali_phy[640]);
+	clrsetbits_le32(&denali_phy[641], 0xffff,
+			denali_phy_params[641] & 0xffff);
+	writel(denali_phy_params[768], &denali_phy[768]);
+	clrsetbits_le32(&denali_phy[769], 0xffff,
+			denali_phy_params[769] & 0xffff);
+
+	writel(denali_phy_params[544], &denali_phy[544]);
+	writel(denali_phy_params[545], &denali_phy[545]);
+	writel(denali_phy_params[546], &denali_phy[546]);
+	writel(denali_phy_params[547], &denali_phy[547]);
+
+	writel(denali_phy_params[672], &denali_phy[672]);
+	writel(denali_phy_params[673], &denali_phy[673]);
+	writel(denali_phy_params[674], &denali_phy[674]);
+	writel(denali_phy_params[675], &denali_phy[675]);
+
+	writel(denali_phy_params[800], &denali_phy[800]);
+	writel(denali_phy_params[801], &denali_phy[801]);
+	writel(denali_phy_params[802], &denali_phy[802]);
+	writel(denali_phy_params[803], &denali_phy[803]);
+
+	/*
+	 * phy_adr_master_delay_start_x
+	 * phy_adr_master_delay_step_x
+	 * phy_adr_master_delay_wait_x
+	 */
+	writel(denali_phy_params[548], &denali_phy[548]);
+	writel(denali_phy_params[676], &denali_phy[676]);
+	writel(denali_phy_params[804], &denali_phy[804]);
+
+	/* phy_adr_calvl_dly_step_x */
+	writel(denali_phy_params[549], &denali_phy[549]);
+	writel(denali_phy_params[677], &denali_phy[677]);
+	writel(denali_phy_params[805], &denali_phy[805]);
+
+	/*
+	 * phy_clk_wrdm_slave_delay_x
+	 * phy_clk_wrdqz_slave_delay_x
+	 * phy_clk_wrdqs_slave_delay_x
+	 */
+	copy_to_reg((u32 *)&denali_phy[59], (u32 *)&denali_phy_params[59],
+		    (63 - 58) * 4);
+	copy_to_reg((u32 *)&denali_phy[187], (u32 *)&denali_phy_params[187],
+		    (191 - 186) * 4);
+	copy_to_reg((u32 *)&denali_phy[315], (u32 *)&denali_phy_params[315],
+		    (319 - 314) * 4);
+	copy_to_reg((u32 *)&denali_phy[443], (u32 *)&denali_phy_params[443],
+		    (447 - 442) * 4);
+
+	/*
+	 * phy_dqs_tsel_wr_timing_x 8bits denali_phy_84/212/340/468 offset_8
+	 * dqs_tsel_wr_end[7:4] add half cycle
+	 * phy_dq_tsel_wr_timing_x 8bits denali_phy_83/211/339/467 offset_8
+	 * dq_tsel_wr_end[7:4] add half cycle
+	 */
+	writel(denali_phy_params[83] + (0x10 << 16), &denali_phy[83]);
+	writel(denali_phy_params[84] + (0x10 << 8), &denali_phy[84]);
+	writel(denali_phy_params[85], &denali_phy[85]);
+
+	writel(denali_phy_params[211] + (0x10 << 16), &denali_phy[211]);
+	writel(denali_phy_params[212] + (0x10 << 8), &denali_phy[212]);
+	writel(denali_phy_params[213], &denali_phy[213]);
+
+	writel(denali_phy_params[339] + (0x10 << 16), &denali_phy[339]);
+	writel(denali_phy_params[340] + (0x10 << 8), &denali_phy[340]);
+	writel(denali_phy_params[341], &denali_phy[341]);
+
+	writel(denali_phy_params[467] + (0x10 << 16), &denali_phy[467]);
+	writel(denali_phy_params[468] + (0x10 << 8), &denali_phy[468]);
+	writel(denali_phy_params[469], &denali_phy[469]);
+
+	/*
+	 * phy_gtlvl_resp_wait_cnt_x
+	 * phy_gtlvl_dly_step_x
+	 * phy_wrlvl_resp_wait_cnt_x
+	 * phy_gtlvl_final_step_x
+	 * phy_gtlvl_back_step_x
+	 * phy_rdlvl_dly_step_x
+	 *
+	 * phy_master_delay_step_x
+	 * phy_master_delay_wait_x
+	 * phy_wrlvl_dly_step_x
+	 * phy_rptr_update_x
+	 * phy_wdqlvl_dly_step_x
+	 */
+	writel(denali_phy_params[87], &denali_phy[87]);
+	writel(denali_phy_params[88], &denali_phy[88]);
+	writel(denali_phy_params[89], &denali_phy[89]);
+	writel(denali_phy_params[90], &denali_phy[90]);
+
+	writel(denali_phy_params[215], &denali_phy[215]);
+	writel(denali_phy_params[216], &denali_phy[216]);
+	writel(denali_phy_params[217], &denali_phy[217]);
+	writel(denali_phy_params[218], &denali_phy[218]);
+
+	writel(denali_phy_params[343], &denali_phy[343]);
+	writel(denali_phy_params[344], &denali_phy[344]);
+	writel(denali_phy_params[345], &denali_phy[345]);
+	writel(denali_phy_params[346], &denali_phy[346]);
+
+	writel(denali_phy_params[471], &denali_phy[471]);
+	writel(denali_phy_params[472], &denali_phy[472]);
+	writel(denali_phy_params[473], &denali_phy[473]);
+	writel(denali_phy_params[474], &denali_phy[474]);
+
+	/*
+	 * phy_gtlvl_lat_adj_start_x
+	 * phy_gtlvl_rddqs_slv_dly_start_x
+	 * phy_rdlvl_rddqs_dq_slv_dly_start_x
+	 * phy_wdqlvl_dqdm_slv_dly_start_x
+	 */
+	writel(denali_phy_params[80], &denali_phy[80]);
+	writel(denali_phy_params[81], &denali_phy[81]);
+
+	writel(denali_phy_params[208], &denali_phy[208]);
+	writel(denali_phy_params[209], &denali_phy[209]);
+
+	writel(denali_phy_params[336], &denali_phy[336]);
+	writel(denali_phy_params[337], &denali_phy[337]);
+
+	writel(denali_phy_params[464], &denali_phy[464]);
+	writel(denali_phy_params[465], &denali_phy[465]);
+
+	/*
+	 * phy_master_delay_start_x
+	 * phy_sw_master_mode_x
+	 * phy_rddata_en_tsel_dly_x
+	 */
+	writel(denali_phy_params[86], &denali_phy[86]);
+	writel(denali_phy_params[214], &denali_phy[214]);
+	writel(denali_phy_params[342], &denali_phy[342]);
+	writel(denali_phy_params[470], &denali_phy[470]);
+
+	/*
+	 * phy_rddqz_slave_delay_x
+	 * phy_rddqs_dqz_fall_slave_delay_x
+	 * phy_rddqs_dqz_rise_slave_delay_x
+	 * phy_rddqs_dm_fall_slave_delay_x
+	 * phy_rddqs_dm_rise_slave_delay_x
+	 * phy_rddqs_gate_slave_delay_x
+	 * phy_wrlvl_delay_early_threshold_x
+	 * phy_write_path_lat_add_x
+	 * phy_rddqs_latency_adjust_x
+	 * phy_wrlvl_delay_period_threshold_x
+	 * phy_wrlvl_early_force_zero_x
+	 */
+	copy_to_reg((u32 *)&denali_phy[64], (u32 *)&denali_phy_params[64],
+		    (67 - 63) * 4);
+	clrsetbits_le32(&denali_phy[68], 0xfffffc00,
+			denali_phy_params[68] & 0xfffffc00);
+	copy_to_reg((u32 *)&denali_phy[69], (u32 *)&denali_phy_params[69],
+		    (79 - 68) * 4);
+	copy_to_reg((u32 *)&denali_phy[192], (u32 *)&denali_phy_params[192],
+		    (195 - 191) * 4);
+	clrsetbits_le32(&denali_phy[196], 0xfffffc00,
+			denali_phy_params[196] & 0xfffffc00);
+	copy_to_reg((u32 *)&denali_phy[197], (u32 *)&denali_phy_params[197],
+		    (207 - 196) * 4);
+	copy_to_reg((u32 *)&denali_phy[320], (u32 *)&denali_phy_params[320],
+		    (323 - 319) * 4);
+	clrsetbits_le32(&denali_phy[324], 0xfffffc00,
+			denali_phy_params[324] & 0xfffffc00);
+	copy_to_reg((u32 *)&denali_phy[325], (u32 *)&denali_phy_params[325],
+		    (335 - 324) * 4);
+
+	copy_to_reg((u32 *)&denali_phy[448], (u32 *)&denali_phy_params[448],
+		    (451 - 447) * 4);
+	clrsetbits_le32(&denali_phy[452], 0xfffffc00,
+			denali_phy_params[452] & 0xfffffc00);
+	copy_to_reg((u32 *)&denali_phy[453], (u32 *)&denali_phy_params[453],
+		    (463 - 452) * 4);
+
+	/* phy_two_cyc_preamble_x */
+	clrsetbits_le32(&denali_phy[7], 0x3 << 24,
+			denali_phy_params[7] & (0x3 << 24));
+	clrsetbits_le32(&denali_phy[135], 0x3 << 24,
+			denali_phy_params[135] & (0x3 << 24));
+	clrsetbits_le32(&denali_phy[263], 0x3 << 24,
+			denali_phy_params[263] & (0x3 << 24));
+	clrsetbits_le32(&denali_phy[391], 0x3 << 24,
+			denali_phy_params[391] & (0x3 << 24));
+
+	/* speed */
+	if (timings->base.ddr_freq < 400 * MHz)
+		speed = 0x0;
+	else if (timings->base.ddr_freq < 800 * MHz)
+		speed = 0x1;
+	else if (timings->base.ddr_freq < 1200 * MHz)
+		speed = 0x2;
+
+	/* phy_924 phy_pad_fdbk_drive */
+	clrsetbits_le32(&denali_phy[924], 0x3 << 21, speed << 21);
+	/* phy_926 phy_pad_data_drive */
+	clrsetbits_le32(&denali_phy[926], 0x3 << 9, speed << 9);
+	/* phy_927 phy_pad_dqs_drive */
+	clrsetbits_le32(&denali_phy[927], 0x3 << 9, speed << 9);
+	/* phy_928 phy_pad_addr_drive */
+	clrsetbits_le32(&denali_phy[928], 0x3 << 17, speed << 17);
+	/* phy_929 phy_pad_clk_drive */
+	clrsetbits_le32(&denali_phy[929], 0x3 << 17, speed << 17);
+	/* phy_935 phy_pad_cke_drive */
+	clrsetbits_le32(&denali_phy[935], 0x3 << 17, speed << 17);
+	/* phy_937 phy_pad_rst_drive */
+	clrsetbits_le32(&denali_phy[937], 0x3 << 17, speed << 17);
+	/* phy_939 phy_pad_cs_drive */
+	clrsetbits_le32(&denali_phy[939], 0x3 << 17, speed << 17);
+
+	read_mr(dram->chan[channel].pctl, 1, 5, &mr5);
+	set_ds_odt(&dram->chan[channel], timings, true, mr5);
+
+	/*
+	 * if phy_sw_master_mode_x not bypass mode,
+	 * clear phy_slice_pwr_rdc_disable.
+	 * note: need use timings, not ddr_publ_regs
+	 */
+	if (!((denali_phy_params[86] >> 8) & (1 << 2))) {
+		clrbits_le32(&denali_phy[10], 1 << 16);
+		clrbits_le32(&denali_phy[138], 1 << 16);
+		clrbits_le32(&denali_phy[266], 1 << 16);
+		clrbits_le32(&denali_phy[394], 1 << 16);
+	}
+}
+
+static void lpddr4_set_phy(struct dram_info *dram,
+			   struct rk3399_sdram_params *params, u32 phy,
+			   struct rk3399_sdram_params *timings)
+{
+	u32 channel;
+
+	for (channel = 0; channel < 2; channel++)
+		lpddr4_copy_phy(dram, params, phy, timings, channel);
+}
+
+static int lpddr4_set_ctl(struct dram_info *dram,
+			  struct rk3399_sdram_params *params, u32 ctl, u32 hz)
+{
+	u32 channel;
+	int ret_clk, ret[2];
+
+	/* cci idle req stall */
+	writel(0x70007, &dram->grf->soc_con0);
+
+	/* enable all clk */
+	setbits_le32(&dram->pmu->pmu_noc_auto_ena, (0x3 << 7));
+
+	/* idle */
+	setbits_le32(&dram->pmu->pmu_bus_idle_req, (0x3 << 18));
+	while ((readl(&dram->pmu->pmu_bus_idle_st) & (0x3 << 18))
+	       != (0x3 << 18))
+		;
+
+	/* change freq */
+	writel((((0x3 << 4) | (1 << 2) | 1) << 16) |
+		(ctl << 4) | (1 << 2) | 1, &dram->cic->cic_ctrl0);
+	while (!(readl(&dram->cic->cic_status0) & (1 << 2)))
+		;
+
+	ret_clk = clk_set_rate(&dram->ddr_clk, hz);
+	if (ret_clk < 0) {
+		printf("%s clk set failed %d\n", __func__, ret_clk);
+		return ret_clk;
+	}
+
+	writel(0x20002, &dram->cic->cic_ctrl0);
+	while (!(readl(&dram->cic->cic_status0) & (1 << 0)))
+		;
+
+	/* deidle */
+	clrbits_le32(&dram->pmu->pmu_bus_idle_req, (0x3 << 18));
+	while (readl(&dram->pmu->pmu_bus_idle_st) & (0x3 << 18))
+		;
+
+	/* clear enable all clk */
+	clrbits_le32(&dram->pmu->pmu_noc_auto_ena, (0x3 << 7));
+
+	/* lpddr4 ctl2 can not do training, all training will fail */
+	if (!(params->base.dramtype == LPDDR4 && ctl == 2)) {
+		for (channel = 0; channel < 2; channel++) {
+			if (!(params->ch[channel].cap_info.col))
+				continue;
+			ret[channel] = data_training(dram, channel, params,
+						     PI_FULL_TRAINING);
+		}
+		for (channel = 0; channel < 2; channel++) {
+			if (!(params->ch[channel].cap_info.col))
+				continue;
+			if (ret[channel])
+				printf("%s: channel %d training failed!\n",
+				       __func__, channel);
+			else
+				debug("%s: channel %d training pass\n",
+				      __func__, channel);
+		}
+	}
+
+	return 0;
+}
+
+static int lpddr4_set_rate(struct dram_info *dram,
+			   struct rk3399_sdram_params *params)
+{
+	u32 ctl;
+	u32 phy;
+
+	for (ctl = 0; ctl < 2; ctl++) {
+		phy = lpddr4_get_phy(params, ctl);
+
+		lpddr4_set_phy(dram, params, phy, &lpddr4_timings[ctl]);
+		lpddr4_set_ctl(dram, params, ctl,
+			       lpddr4_timings[ctl].base.ddr_freq);
+
+		debug("%s: change freq to %d mhz %d, %d\n", __func__,
+		      lpddr4_timings[ctl].base.ddr_freq / MHz, ctl, phy);
+	}
+
+	return 0;
+}
 #endif /* CONFIG_RAM_RK3399_LPDDR4 */
 
 static unsigned char calculate_stride(struct rk3399_sdram_params *params)
@@ -1994,6 +2372,7 @@ static const struct sdram_rk3399_ops rk3399_ops = {
 	.set_rate = switch_to_phy_index1,
 #else
 	.data_training = lpddr4_mr_detect,
+	.set_rate = lpddr4_set_rate,
 #endif
 };
 
@@ -2017,6 +2396,7 @@ static int rk3399_dmc_init(struct udevice *dev)
 	priv->ops = &rk3399_ops;
 	priv->cic = syscon_get_first_range(ROCKCHIP_SYSCON_CIC);
 	priv->grf = syscon_get_first_range(ROCKCHIP_SYSCON_GRF);
+	priv->pmu = syscon_get_first_range(ROCKCHIP_SYSCON_PMU);
 	priv->pmugrf = syscon_get_first_range(ROCKCHIP_SYSCON_PMUGRF);
 	priv->pmusgrf = syscon_get_first_range(ROCKCHIP_SYSCON_PMUSGRF);
 	priv->pmucru = rockchip_get_pmucru();
@@ -2035,8 +2415,8 @@ static int rk3399_dmc_init(struct udevice *dev)
 	      priv->chan[0].publ, priv->chan[0].msch,
 	      priv->chan[1].pctl, priv->chan[1].pi,
 	      priv->chan[1].publ, priv->chan[1].msch);
-	debug("cru %p, cic %p, grf %p, sgrf %p, pmucru %p\n", priv->cru,
-	      priv->cic, priv->pmugrf, priv->pmusgrf, priv->pmucru);
+	debug("cru %p, cic %p, grf %p, sgrf %p, pmucru %p, pmu %p\n", priv->cru,
+	      priv->cic, priv->pmugrf, priv->pmusgrf, priv->pmucru, priv->pmu);
 
 #if CONFIG_IS_ENABLED(OF_PLATDATA)
 	ret = clk_get_by_index_platdata(dev, 0, dtplat->clocks, &priv->ddr_clk);
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

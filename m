Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F65869AB2
	for <lists+linux-rockchip@lfdr.de>; Mon, 15 Jul 2019 20:21:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f7RkDor2Aid4CqTaJsl8+MMncyCKQpMoGQTX3bX/IHM=; b=cvuRryQoSeJeSa
	fsyOA+SuzTf/IOkN3hTMLlBwzmDtOSnYTBchYGk/gDryiWY5Npc00YZiihoRrv/Bhh3i32K32PQGx
	eRcmy650aYcioAyOi7OAfcpTfdxFsUEb4Fh5UmvRBU7ASl9YhkVQ8chRNZZBKaudP4qcveMzK0yQ1
	BBQj84CDvjLJtOi9AhH8R2bEisR3cJ/qF0rbcrKJgPHbXgeTQvV4ZkyGOEl/Ueij2fVMsAV4wHot/
	1zu1Eoc8SO1GBd+xml14kkDydJEu+3fCXDLypo5TmF3gDcU1NroELmBxnSTe6LdmcSYYeCeSDCVCh
	476PfJvHslS3tL6j7dYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn5bV-0006nx-EX; Mon, 15 Jul 2019 18:21:37 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn5bQ-0006k2-5y
 for linux-rockchip@lists.infradead.org; Mon, 15 Jul 2019 18:21:34 +0000
Received: by mail-pf1-x444.google.com with SMTP id r7so7807623pfl.3
 for <linux-rockchip@lists.infradead.org>; Mon, 15 Jul 2019 11:21:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=KmKFsDAGwxoAiqCijRqUKLZ7ZLjpJJLsduhpkwVMnGU=;
 b=TIPHR5LTNzJBcFORHMpfbKp9HMLx4aGmjfoBcqIpmttyiHsn/X3NBpB/IgxXyMcMPX
 KgW4rd2ylzsAvd/ZrSiVyoZvo6QF52XL4w9Pc0Xrmz3VlRnypHAv222ASAcE1gFedREG
 WFy6fHmyiaw1SsBnmiJ+za/YDCeLUhcRTtNvc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=KmKFsDAGwxoAiqCijRqUKLZ7ZLjpJJLsduhpkwVMnGU=;
 b=Qp4D2ZhqJWKdjejpuhcTsipZrTA9IKGP55kiWx5cRoumS6VtGNoYlbhB6vTTbU5ee7
 cAFgjF4QO1wXAoO8bEam9oBN4QvInB776/GlVDppYbiHbSMmrPmaseL6DCJaGAg4OaFp
 yIeW2ERgnkSoDDwYa7a9DCMhdY3GceCZ9rfw4ksd9dHyQaeelc1Gu6S7K7KyUwKiLypI
 ZdMxS313xVnirDxJ4s63qf/hGj8M+Rs/neiACLSDdsowujdWrk3n5hffUhNYDU7t2UnU
 GExSF+YrdOdgE2efj8wQxKGkhIml4vUdGHHGavUgyKtsOHUJq1/mVHtagOKdC8GZKdQv
 mM4g==
X-Gm-Message-State: APjAAAWYIKrE6nlpOnOGlvI68pSVFc7X0K/j9hJJF9Go9YdlOucYxu2D
 2OC1pXjG/tbrfNo6Sfc+Dqv7ng==
X-Google-Smtp-Source: APXvYqwQnmZHGFZYli1iIlTEOc44v4xttzrbZoLBu9to4ODU+Fs2mmfFP6SwabOoCBk9Nf73G3EslQ==
X-Received: by 2002:a63:da52:: with SMTP id l18mr28566377pgj.131.1563214891417; 
 Mon, 15 Jul 2019 11:21:31 -0700 (PDT)
Received: from localhost.localdomain ([49.206.201.107])
 by smtp.gmail.com with ESMTPSA id l15sm18152405pgf.5.2019.07.15.11.21.28
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 15 Jul 2019 11:21:30 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v3 03/15] ram: rk3399: s/sdram_params/params
Date: Mon, 15 Jul 2019 23:50:58 +0530
Message-Id: <20190715182110.21336-4-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190715182110.21336-1-jagan@amarulasolutions.com>
References: <20190715182110.21336-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_112132_341045_381E90EF 
X-CRM114-Status: GOOD (  14.12  )
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

Rename variable name of struct rk3399_sdram_params
from sdram_params with params for more code readability.

No functionality change.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 160 ++++++++++++++--------------
 1 file changed, 78 insertions(+), 82 deletions(-)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 733864f5d2..c918c2e588 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -111,10 +111,9 @@ static void phy_dll_bypass_set(struct rk3399_ddr_publ_regs *ddr_publ_regs,
 }
 
 static void set_memory_map(const struct chan_info *chan, u32 channel,
-			   const struct rk3399_sdram_params *sdram_params)
+			   const struct rk3399_sdram_params *params)
 {
-	const struct rk3399_sdram_channel *sdram_ch =
-		&sdram_params->ch[channel];
+	const struct rk3399_sdram_channel *sdram_ch = &params->ch[channel];
 	u32 *denali_ctl = chan->pctl->denali_ctl;
 	u32 *denali_pi = chan->pi->denali_pi;
 	u32 cs_map;
@@ -150,12 +149,12 @@ static void set_memory_map(const struct chan_info *chan, u32 channel,
 			((16 - row) << 24));
 	/* PI_41 PI_CS_MAP:RW:24:4 */
 	clrsetbits_le32(&denali_pi[41], 0xf << 24, cs_map << 24);
-	if (sdram_ch->rank == 1 && sdram_params->base.dramtype == DDR3)
+	if (sdram_ch->rank == 1 && params->base.dramtype == DDR3)
 		writel(0x2EC7FFFF, &denali_pi[34]);
 }
 
 static void set_ds_odt(const struct chan_info *chan,
-		       const struct rk3399_sdram_params *sdram_params)
+		       const struct rk3399_sdram_params *params)
 {
 	u32 *denali_phy = chan->publ->denali_phy;
 
@@ -165,7 +164,7 @@ static void set_ds_odt(const struct chan_info *chan,
 	u32 tsel_idle_select_n, tsel_wr_select_n, tsel_rd_select_n;
 	u32 reg_value;
 
-	if (sdram_params->base.dramtype == LPDDR4) {
+	if (params->base.dramtype == LPDDR4) {
 		tsel_rd_select_p = PHY_DRV_ODT_HI_Z;
 		tsel_wr_select_p = PHY_DRV_ODT_40;
 		ca_tsel_wr_select_p = PHY_DRV_ODT_40;
@@ -175,7 +174,7 @@ static void set_ds_odt(const struct chan_info *chan,
 		tsel_wr_select_n = PHY_DRV_ODT_40;
 		ca_tsel_wr_select_n = PHY_DRV_ODT_40;
 		tsel_idle_select_n = PHY_DRV_ODT_240;
-	} else if (sdram_params->base.dramtype == LPDDR3) {
+	} else if (params->base.dramtype == LPDDR3) {
 		tsel_rd_select_p = PHY_DRV_ODT_240;
 		tsel_wr_select_p = PHY_DRV_ODT_34_3;
 		ca_tsel_wr_select_p = PHY_DRV_ODT_48;
@@ -197,7 +196,7 @@ static void set_ds_odt(const struct chan_info *chan,
 		tsel_idle_select_n = PHY_DRV_ODT_240;
 	}
 
-	if (sdram_params->base.odt == 1)
+	if (params->base.odt == 1)
 		tsel_rd_en = 1;
 	else
 		tsel_rd_en = 0;
@@ -294,7 +293,7 @@ static void set_ds_odt(const struct chan_info *chan,
 }
 
 static int phy_io_config(const struct chan_info *chan,
-			 const struct rk3399_sdram_params *sdram_params)
+			 const struct rk3399_sdram_params *params)
 {
 	u32 *denali_phy = chan->publ->denali_phy;
 	u32 vref_mode_dq, vref_value_dq, vref_mode_ac, vref_value_ac;
@@ -304,14 +303,14 @@ static int phy_io_config(const struct chan_info *chan,
 	u32 speed;
 
 	/* vref setting */
-	if (sdram_params->base.dramtype == LPDDR4) {
+	if (params->base.dramtype == LPDDR4) {
 		/* LPDDR4 */
 		vref_mode_dq = 0x6;
 		vref_value_dq = 0x1f;
 		vref_mode_ac = 0x6;
 		vref_value_ac = 0x1f;
-	} else if (sdram_params->base.dramtype == LPDDR3) {
-		if (sdram_params->base.odt == 1) {
+	} else if (params->base.dramtype == LPDDR3) {
+		if (params->base.odt == 1) {
 			vref_mode_dq = 0x5;  /* LPDDR3 ODT */
 			drv_value = (readl(&denali_phy[6]) >> 12) & 0xf;
 			odt_value = (readl(&denali_phy[6]) >> 4) & 0xf;
@@ -370,7 +369,7 @@ static int phy_io_config(const struct chan_info *chan,
 		}
 		vref_mode_ac = 0x2;
 		vref_value_ac = 0x1f;
-	} else if (sdram_params->base.dramtype == DDR3) {
+	} else if (params->base.dramtype == DDR3) {
 		/* DDR3L */
 		vref_mode_dq = 0x1;
 		vref_value_dq = 0x1f;
@@ -397,11 +396,11 @@ static int phy_io_config(const struct chan_info *chan,
 	/* PHY_915 PHY_PAD_VREF_CTRL_AC 12bits offset_16 */
 	clrsetbits_le32(&denali_phy[915], 0xfff << 16, reg_value << 16);
 
-	if (sdram_params->base.dramtype == LPDDR4)
+	if (params->base.dramtype == LPDDR4)
 		mode_sel = 0x6;
-	else if (sdram_params->base.dramtype == LPDDR3)
+	else if (params->base.dramtype == LPDDR3)
 		mode_sel = 0x0;
-	else if (sdram_params->base.dramtype == DDR3)
+	else if (params->base.dramtype == DDR3)
 		mode_sel = 0x1;
 	else
 		return -EINVAL;
@@ -424,11 +423,11 @@ static int phy_io_config(const struct chan_info *chan,
 	clrsetbits_le32(&denali_phy[939], 0x7 << 14, mode_sel << 14);
 
 	/* speed setting */
-	if (sdram_params->base.ddr_freq < 400)
+	if (params->base.ddr_freq < 400)
 		speed = 0x0;
-	else if (sdram_params->base.ddr_freq < 800)
+	else if (params->base.ddr_freq < 800)
 		speed = 0x1;
-	else if (sdram_params->base.ddr_freq < 1200)
+	else if (params->base.ddr_freq < 1200)
 		speed = 0x2;
 	else
 		speed = 0x3;
@@ -454,13 +453,13 @@ static int phy_io_config(const struct chan_info *chan,
 }
 
 static int pctl_cfg(const struct chan_info *chan, u32 channel,
-		    const struct rk3399_sdram_params *sdram_params)
+		    const struct rk3399_sdram_params *params)
 {
 	u32 *denali_ctl = chan->pctl->denali_ctl;
 	u32 *denali_pi = chan->pi->denali_pi;
 	u32 *denali_phy = chan->publ->denali_phy;
-	const u32 *params_ctl = sdram_params->pctl_regs.denali_ctl;
-	const u32 *params_phy = sdram_params->phy_regs.denali_phy;
+	const u32 *params_ctl = params->pctl_regs.denali_ctl;
+	const u32 *params_phy = params->phy_regs.denali_phy;
 	u32 tmp, tmp1, tmp2;
 	u32 pwrup_srefresh_exit;
 	int ret;
@@ -474,15 +473,15 @@ static int pctl_cfg(const struct chan_info *chan, u32 channel,
 		    sizeof(struct rk3399_ddr_pctl_regs) - 4);
 	writel(params_ctl[0], &denali_ctl[0]);
 
-	copy_to_reg(denali_pi, &sdram_params->pi_regs.denali_pi[0],
+	copy_to_reg(denali_pi, &params->pi_regs.denali_pi[0],
 		    sizeof(struct rk3399_ddr_pi_regs));
 
 	/* rank count need to set for init */
-	set_memory_map(chan, channel, sdram_params);
+	set_memory_map(chan, channel, params);
 
-	writel(sdram_params->phy_regs.denali_phy[910], &denali_phy[910]);
-	writel(sdram_params->phy_regs.denali_phy[911], &denali_phy[911]);
-	writel(sdram_params->phy_regs.denali_phy[912], &denali_phy[912]);
+	writel(params->phy_regs.denali_phy[910], &denali_phy[910]);
+	writel(params->phy_regs.denali_phy[911], &denali_phy[911]);
+	writel(params->phy_regs.denali_phy[912], &denali_phy[912]);
 
 	pwrup_srefresh_exit = readl(&denali_ctl[68]) & PWRUP_SREFRESH_EXIT;
 	clrbits_le32(&denali_ctl[68], PWRUP_SREFRESH_EXIT);
@@ -513,7 +512,7 @@ static int pctl_cfg(const struct chan_info *chan, u32 channel,
 	copy_to_reg(&denali_phy[512], &params_phy[512], (549 - 512 + 1) * 4);
 	copy_to_reg(&denali_phy[640], &params_phy[640], (677 - 640 + 1) * 4);
 	copy_to_reg(&denali_phy[768], &params_phy[768], (805 - 768 + 1) * 4);
-	set_ds_odt(chan, sdram_params);
+	set_ds_odt(chan, params);
 
 	/*
 	 * phy_dqs_tsel_wr_timing_X 8bits DENALI_PHY_84/212/340/468 offset_8
@@ -541,7 +540,7 @@ static int pctl_cfg(const struct chan_info *chan, u32 channel,
 	tmp = (readl(&denali_phy[467]) >> 16) & 0xff;
 	clrsetbits_le32(&denali_phy[467], 0xff << 16, (tmp + 0x10) << 16);
 
-	ret = phy_io_config(chan, sdram_params);
+	ret = phy_io_config(chan, params);
 	if (ret)
 		return ret;
 
@@ -612,13 +611,13 @@ static void override_write_leveling_value(const struct chan_info *chan)
 }
 
 static int data_training_ca(const struct chan_info *chan, u32 channel,
-			    const struct rk3399_sdram_params *sdram_params)
+			    const struct rk3399_sdram_params *params)
 {
 	u32 *denali_pi = chan->pi->denali_pi;
 	u32 *denali_phy = chan->publ->denali_phy;
 	u32 i, tmp;
 	u32 obs_0, obs_1, obs_2, obs_err = 0;
-	u32 rank = sdram_params->ch[channel].rank;
+	u32 rank = params->ch[channel].rank;
 
 	for (i = 0; i < rank; i++) {
 		select_per_cs_training_index(chan, i);
@@ -666,13 +665,13 @@ static int data_training_ca(const struct chan_info *chan, u32 channel,
 }
 
 static int data_training_wl(const struct chan_info *chan, u32 channel,
-			    const struct rk3399_sdram_params *sdram_params)
+			    const struct rk3399_sdram_params *params)
 {
 	u32 *denali_pi = chan->pi->denali_pi;
 	u32 *denali_phy = chan->publ->denali_phy;
 	u32 i, tmp;
 	u32 obs_0, obs_1, obs_2, obs_3, obs_err = 0;
-	u32 rank = sdram_params->ch[channel].rank;
+	u32 rank = params->ch[channel].rank;
 
 	for (i = 0; i < rank; i++) {
 		select_per_cs_training_index(chan, i);
@@ -725,13 +724,13 @@ static int data_training_wl(const struct chan_info *chan, u32 channel,
 }
 
 static int data_training_rg(const struct chan_info *chan, u32 channel,
-			    const struct rk3399_sdram_params *sdram_params)
+			    const struct rk3399_sdram_params *params)
 {
 	u32 *denali_pi = chan->pi->denali_pi;
 	u32 *denali_phy = chan->publ->denali_phy;
 	u32 i, tmp;
 	u32 obs_0, obs_1, obs_2, obs_3, obs_err = 0;
-	u32 rank = sdram_params->ch[channel].rank;
+	u32 rank = params->ch[channel].rank;
 
 	for (i = 0; i < rank; i++) {
 		select_per_cs_training_index(chan, i);
@@ -786,11 +785,11 @@ static int data_training_rg(const struct chan_info *chan, u32 channel,
 }
 
 static int data_training_rl(const struct chan_info *chan, u32 channel,
-			    const struct rk3399_sdram_params *sdram_params)
+			    const struct rk3399_sdram_params *params)
 {
 	u32 *denali_pi = chan->pi->denali_pi;
 	u32 i, tmp;
-	u32 rank = sdram_params->ch[channel].rank;
+	u32 rank = params->ch[channel].rank;
 
 	for (i = 0; i < rank; i++) {
 		select_per_cs_training_index(chan, i);
@@ -831,11 +830,11 @@ static int data_training_rl(const struct chan_info *chan, u32 channel,
 }
 
 static int data_training_wdql(const struct chan_info *chan, u32 channel,
-			      const struct rk3399_sdram_params *sdram_params)
+			      const struct rk3399_sdram_params *params)
 {
 	u32 *denali_pi = chan->pi->denali_pi;
 	u32 i, tmp;
-	u32 rank = sdram_params->ch[channel].rank;
+	u32 rank = params->ch[channel].rank;
 
 	for (i = 0; i < rank; i++) {
 		select_per_cs_training_index(chan, i);
@@ -876,7 +875,7 @@ static int data_training_wdql(const struct chan_info *chan, u32 channel,
 }
 
 static int data_training(const struct chan_info *chan, u32 channel,
-			 const struct rk3399_sdram_params *sdram_params,
+			 const struct rk3399_sdram_params *params,
 			 u32 training_flag)
 {
 	u32 *denali_phy = chan->publ->denali_phy;
@@ -885,14 +884,14 @@ static int data_training(const struct chan_info *chan, u32 channel,
 	setbits_le32(&denali_phy[927], (1 << 22));
 
 	if (training_flag == PI_FULL_TRAINING) {
-		if (sdram_params->base.dramtype == LPDDR4) {
+		if (params->base.dramtype == LPDDR4) {
 			training_flag = PI_CA_TRAINING | PI_WRITE_LEVELING |
 					PI_READ_GATE_TRAINING |
 					PI_READ_LEVELING | PI_WDQ_LEVELING;
-		} else if (sdram_params->base.dramtype == LPDDR3) {
+		} else if (params->base.dramtype == LPDDR3) {
 			training_flag = PI_CA_TRAINING | PI_WRITE_LEVELING |
 					PI_READ_GATE_TRAINING;
-		} else if (sdram_params->base.dramtype == DDR3) {
+		} else if (params->base.dramtype == DDR3) {
 			training_flag = PI_WRITE_LEVELING |
 					PI_READ_GATE_TRAINING |
 					PI_READ_LEVELING;
@@ -901,23 +900,23 @@ static int data_training(const struct chan_info *chan, u32 channel,
 
 	/* ca training(LPDDR4,LPDDR3 support) */
 	if ((training_flag & PI_CA_TRAINING) == PI_CA_TRAINING)
-		data_training_ca(chan, channel, sdram_params);
+		data_training_ca(chan, channel, params);
 
 	/* write leveling(LPDDR4,LPDDR3,DDR3 support) */
 	if ((training_flag & PI_WRITE_LEVELING) == PI_WRITE_LEVELING)
-		data_training_wl(chan, channel, sdram_params);
+		data_training_wl(chan, channel, params);
 
 	/* read gate training(LPDDR4,LPDDR3,DDR3 support) */
 	if ((training_flag & PI_READ_GATE_TRAINING) == PI_READ_GATE_TRAINING)
-		data_training_rg(chan, channel, sdram_params);
+		data_training_rg(chan, channel, params);
 
 	/* read leveling(LPDDR4,LPDDR3,DDR3 support) */
 	if ((training_flag & PI_READ_LEVELING) == PI_READ_LEVELING)
-		data_training_rl(chan, channel, sdram_params);
+		data_training_rl(chan, channel, params);
 
 	/* wdq leveling(LPDDR4 support) */
 	if ((training_flag & PI_WDQ_LEVELING) == PI_WDQ_LEVELING)
-		data_training_wdql(chan, channel, sdram_params);
+		data_training_wdql(chan, channel, params);
 
 	/* PHY_927 PHY_PAD_DQS_DRIVE  RPULL offset_22 */
 	clrbits_le32(&denali_phy[927], (1 << 22));
@@ -926,7 +925,7 @@ static int data_training(const struct chan_info *chan, u32 channel,
 }
 
 static void set_ddrconfig(const struct chan_info *chan,
-			  const struct rk3399_sdram_params *sdram_params,
+			  const struct rk3399_sdram_params *params,
 			  unsigned char channel, u32 ddrconfig)
 {
 	/* only need to set ddrconfig */
@@ -934,14 +933,14 @@ static void set_ddrconfig(const struct chan_info *chan,
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
+	cs0_cap = (1 << (params->ch[channel].cs0_row
+			+ params->ch[channel].col
+			+ params->ch[channel].bk
+			+ params->ch[channel].bw - 20));
+	if (params->ch[channel].rank > 1)
+		cs1_cap = cs0_cap >> (params->ch[channel].cs0_row
+				- params->ch[channel].cs1_row);
+	if (params->ch[channel].row_3_4) {
 		cs0_cap = cs0_cap * 3 / 4;
 		cs1_cap = cs1_cap * 3 / 4;
 	}
@@ -952,24 +951,22 @@ static void set_ddrconfig(const struct chan_info *chan,
 }
 
 static void dram_all_config(struct dram_info *dram,
-			    const struct rk3399_sdram_params *sdram_params)
+			    const struct rk3399_sdram_params *params)
 {
 	u32 sys_reg = 0;
 	unsigned int channel, idx;
 
-	sys_reg |= sdram_params->base.dramtype << SYS_REG_DDRTYPE_SHIFT;
-	sys_reg |= (sdram_params->base.num_channels - 1)
-		    << SYS_REG_NUM_CH_SHIFT;
+	sys_reg |= params->base.dramtype << SYS_REG_DDRTYPE_SHIFT;
+	sys_reg |= (params->base.num_channels - 1) << SYS_REG_NUM_CH_SHIFT;
 
 	for (channel = 0, idx = 0;
-	     (idx < sdram_params->base.num_channels) && (channel < 2);
+	     (idx < params->base.num_channels) && (channel < 2);
 	     channel++) {
-		const struct rk3399_sdram_channel *info =
-			&sdram_params->ch[channel];
+		const struct rk3399_sdram_channel *info = &params->ch[channel];
 		struct rk3399_msch_regs *ddr_msch_regs;
 		const struct rk3399_msch_timings *noc_timing;
 
-		if (sdram_params->ch[channel].col == 0)
+		if (params->ch[channel].col == 0)
 			continue;
 		idx++;
 		sys_reg |= info->row_3_4 << SYS_REG_ROW_3_4_SHIFT(channel);
@@ -985,7 +982,7 @@ static void dram_all_config(struct dram_info *dram,
 		sys_reg |= (2 >> info->dbw) << SYS_REG_DBW_SHIFT(channel);
 
 		ddr_msch_regs = dram->chan[channel].msch;
-		noc_timing = &sdram_params->ch[channel].noc_timings;
+		noc_timing = &params->ch[channel].noc_timings;
 		writel(noc_timing->ddrtiminga0,
 		       &ddr_msch_regs->ddrtiminga0);
 		writel(noc_timing->ddrtimingb0,
@@ -998,14 +995,14 @@ static void dram_all_config(struct dram_info *dram,
 		       &ddr_msch_regs->ddrmode);
 
 		/* rank 1 memory clock disable (dfi_dram_clk_disable = 1) */
-		if (sdram_params->ch[channel].rank == 1)
+		if (params->ch[channel].rank == 1)
 			setbits_le32(&dram->chan[channel].pctl->denali_ctl[276],
 				     1 << 17);
 	}
 
 	writel(sys_reg, &dram->pmugrf->os_reg2);
 	rk_clrsetreg(&dram->pmusgrf->soc_con4, 0x1f << 10,
-		     sdram_params->base.stride << 10);
+		     params->base.stride << 10);
 
 	/* reboot hold register set */
 	writel(PRESET_SGRF_HOLD(0) | PRESET_GPIO0_HOLD(1) |
@@ -1015,11 +1012,11 @@ static void dram_all_config(struct dram_info *dram,
 }
 
 static int switch_to_phy_index1(struct dram_info *dram,
-				const struct rk3399_sdram_params *sdram_params)
+				const struct rk3399_sdram_params *params)
 {
 	u32 channel;
 	u32 *denali_phy;
-	u32 ch_count = sdram_params->base.num_channels;
+	u32 ch_count = params->base.num_channels;
 	int ret;
 	int i = 0;
 
@@ -1050,7 +1047,7 @@ static int switch_to_phy_index1(struct dram_info *dram,
 		denali_phy = dram->chan[channel].publ->denali_phy;
 		clrsetbits_le32(&denali_phy[896], (0x3 << 8) | 1, 1 << 8);
 		ret = data_training(&dram->chan[channel], channel,
-				    sdram_params, PI_FULL_TRAINING);
+				    params, PI_FULL_TRAINING);
 		if (ret) {
 			debug("index1 training failed\n");
 			return ret;
@@ -1061,10 +1058,10 @@ static int switch_to_phy_index1(struct dram_info *dram,
 }
 
 static int sdram_init(struct dram_info *dram,
-		      const struct rk3399_sdram_params *sdram_params)
+		      const struct rk3399_sdram_params *params)
 {
-	unsigned char dramtype = sdram_params->base.dramtype;
-	unsigned int ddr_freq = sdram_params->base.ddr_freq;
+	unsigned char dramtype = params->base.dramtype;
+	unsigned int ddr_freq = params->base.ddr_freq;
 	int channel;
 
 	debug("Starting SDRAM initialization...\n");
@@ -1082,10 +1079,10 @@ static int sdram_init(struct dram_info *dram,
 
 		phy_dll_bypass_set(publ, ddr_freq);
 
-		if (channel >= sdram_params->base.num_channels)
+		if (channel >= params->base.num_channels)
 			continue;
 
-		if (pctl_cfg(chan, channel, sdram_params) != 0) {
+		if (pctl_cfg(chan, channel, params) != 0) {
 			printf("pctl_cfg fail, reset\n");
 			return -EIO;
 		}
@@ -1094,17 +1091,16 @@ static int sdram_init(struct dram_info *dram,
 		if (dramtype == LPDDR3)
 			udelay(10);
 
-		if (data_training(chan, channel,
-				  sdram_params, PI_FULL_TRAINING)) {
+		if (data_training(chan, channel, params, PI_FULL_TRAINING)) {
 			printf("SDRAM initialization failed, reset\n");
 			return -EIO;
 		}
 
-		set_ddrconfig(chan, sdram_params, channel,
-			      sdram_params->ch[channel].ddrconfig);
+		set_ddrconfig(chan, params, channel,
+			      params->ch[channel].ddrconfig);
 	}
-	dram_all_config(dram, sdram_params);
-	switch_to_phy_index1(dram, sdram_params);
+	dram_all_config(dram, params);
+	switch_to_phy_index1(dram, params);
 
 	debug("Finish SDRAM initialization...\n");
 	return 0;
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

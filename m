Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 740083CF72
	for <lists+linux-rockchip@lfdr.de>; Tue, 11 Jun 2019 16:52:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8FIE8+SO16m2p0SU6M5zO+eEbAdPdcNX5ljqjW62Sik=; b=C87QjJpc31A0XH
	C66T3P8kQ0cdu+3gaElwkvSVqPRhDrIZYlOHUQ9kakr4xb8IN1IfYvdm+lgzXLmtVhqbRhk/nVhzu
	YlXnpiNFdGRaEgwYcgKigxWqcs2LM+0pC2hRrv7VB5DgSSBoJuHKrhUfDda/Ex/gsMcJ0ZoMCF0dH
	nQkYLGzchGo0QapU1EGbYPPEygafhZrzQwjh3SFlgVNJD8fKotstv4FsI9GWjvVaHKu9iuNO70HJl
	i5LjdHZvgkpWhSG43XTQTK66BjjsxmcFQJT2V8qX0dUjkwtlVWIskCzbD5iYT4K/h83QrXhufFDL9
	e0bzG88eZpW+9XiCvv5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hai81-0003j6-Dr; Tue, 11 Jun 2019 14:52:01 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hai7w-0003gy-GU
 for linux-rockchip@lists.infradead.org; Tue, 11 Jun 2019 14:51:58 +0000
Received: by mail-pg1-x544.google.com with SMTP id d30so7105161pgm.7
 for <linux-rockchip@lists.infradead.org>; Tue, 11 Jun 2019 07:51:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=2PZmOlDxLIZ3hi1XK1/L5fS7ODHlI/voHjGPAwKMURw=;
 b=L+gvNvRUfT3SOx+gsERbn0GhYJoy6qDIaR0Jd6LutAo+rHCffdcTr1Wd3ZzchJhE0p
 KsiH9G3WRDQHqdAOnKsvJ8iGXMuSaRl47Bc1cgryvCgcAMLzLeKUsYfsVfXDmMv6LI9F
 KczKU7w+N+u6VuxLYFRacM3nTj5Gfb+up2kSw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=2PZmOlDxLIZ3hi1XK1/L5fS7ODHlI/voHjGPAwKMURw=;
 b=rOdf0kP2rBWinpWWR4Tkwd2dAwuvq6PQXsAtt1byKSSAubPoHuGjzSCq9H8I6sRxae
 nxeSrz/v1aHQ/UGf/I4dU++m+VMg+/LhsSQLKZG+1/4HwUwPEArJtYFznsthqt0jaNt+
 XFvv2fGXK6BNuFFyOO3zabOhqP7x3s7G8qmsbVnibvPfKuphOcRkPg4jzAxD2g8zqiXl
 Pkm3YR/35+alQ/8HFX4xNWYDz/iiZ70Ie+n8mORQy6pC+lqFY1al2nYmJpdZb3S/jWoM
 ohXk8U06/uqpRCvfsisBY5ol8yAna0auQhNobrwRJabMGAryoyF3HMvQ0JYNeLv7ypoh
 652w==
X-Gm-Message-State: APjAAAU051pf3O4mDNnVBu9lz+yy0vWnflZ7P1Ic3Ul0Jrljg86SxD/T
 Ai3fpDyc3rZ7UyWl/GonrntAfg==
X-Google-Smtp-Source: APXvYqxhwr58sJTVRh+ZRnTf3q2N+1XpO7guuQZzMskaDbfTWUrQB14msCR215yupLrxeryB+grj6w==
X-Received: by 2002:a17:90a:2486:: with SMTP id
 i6mr4806784pje.125.1560264715407; 
 Tue, 11 Jun 2019 07:51:55 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.18])
 by smtp.gmail.com with ESMTPSA id e9sm16206208pfn.154.2019.06.11.07.51.51
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Jun 2019 07:51:55 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH 01/92] ram: rk3399: Fix code warnings
Date: Tue, 11 Jun 2019 20:20:04 +0530
Message-Id: <20190611145135.21399-2-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190611145135.21399-1-jagan@amarulasolutions.com>
References: <20190611145135.21399-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_075156_602251_B8CC35A6 
X-CRM114-Status: GOOD (  13.80  )
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

Fix checkpatch warninigs on sdram_rk3399.c like
- Avoid CamelCase
- Unnecessary parentheses
- Alignment should match open parenthesis
- multiple blank lines
- misspelled
- spaces preferred around that '>>'

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 48 ++++++++++++++---------------
 1 file changed, 24 insertions(+), 24 deletions(-)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 52518656c4..541e4a4b1e 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -47,7 +47,7 @@ struct dram_info {
 #define PRESET_GPIO0_HOLD(n)	((0x1 << (7 + 16)) | ((n) << 7))
 #define PRESET_GPIO1_HOLD(n)	((0x1 << (8 + 16)) | ((n) << 8))
 
-#define PHY_DRV_ODT_Hi_Z	0x0
+#define PHY_DRV_ODT_HI_Z	0x0
 #define PHY_DRV_ODT_240		0x1
 #define PHY_DRV_ODT_120		0x8
 #define PHY_DRV_ODT_80		0x9
@@ -150,7 +150,7 @@ static void set_memory_map(const struct chan_info *chan, u32 channel,
 			((16 - row) << 24));
 	/* PI_41 PI_CS_MAP:RW:24:4 */
 	clrsetbits_le32(&denali_pi[41], 0xf << 24, cs_map << 24);
-	if ((sdram_ch->rank == 1) && (sdram_params->base.dramtype == DDR3))
+	if (sdram_ch->rank == 1 && sdram_params->base.dramtype == DDR3)
 		writel(0x2EC7FFFF, &denali_pi[34]);
 }
 
@@ -166,10 +166,10 @@ static void set_ds_odt(const struct chan_info *chan,
 	u32 reg_value;
 
 	if (sdram_params->base.dramtype == LPDDR4) {
-		tsel_rd_select_p = PHY_DRV_ODT_Hi_Z;
+		tsel_rd_select_p = PHY_DRV_ODT_HI_Z;
 		tsel_wr_select_p = PHY_DRV_ODT_40;
 		ca_tsel_wr_select_p = PHY_DRV_ODT_40;
-		tsel_idle_select_p = PHY_DRV_ODT_Hi_Z;
+		tsel_idle_select_p = PHY_DRV_ODT_HI_Z;
 
 		tsel_rd_select_n = PHY_DRV_ODT_240;
 		tsel_wr_select_n = PHY_DRV_ODT_40;
@@ -181,10 +181,10 @@ static void set_ds_odt(const struct chan_info *chan,
 		ca_tsel_wr_select_p = PHY_DRV_ODT_48;
 		tsel_idle_select_p = PHY_DRV_ODT_240;
 
-		tsel_rd_select_n = PHY_DRV_ODT_Hi_Z;
+		tsel_rd_select_n = PHY_DRV_ODT_HI_Z;
 		tsel_wr_select_n = PHY_DRV_ODT_34_3;
 		ca_tsel_wr_select_n = PHY_DRV_ODT_48;
-		tsel_idle_select_n = PHY_DRV_ODT_Hi_Z;
+		tsel_idle_select_n = PHY_DRV_ODT_HI_Z;
 	} else {
 		tsel_rd_select_p = PHY_DRV_ODT_240;
 		tsel_wr_select_p = PHY_DRV_ODT_34_3;
@@ -294,7 +294,7 @@ static void set_ds_odt(const struct chan_info *chan,
 }
 
 static int phy_io_config(const struct chan_info *chan,
-			  const struct rk3399_sdram_params *sdram_params)
+			 const struct rk3399_sdram_params *sdram_params)
 {
 	u32 *denali_phy = chan->publ->denali_phy;
 	u32 vref_mode_dq, vref_value_dq, vref_mode_ac, vref_value_ac;
@@ -423,7 +423,6 @@ static int phy_io_config(const struct chan_info *chan,
 	/* PHY_939 PHY_PAD_CS_DRIVE */
 	clrsetbits_le32(&denali_phy[939], 0x7 << 14, mode_sel << 14);
 
-
 	/* speed setting */
 	if (sdram_params->base.ddr_freq < 400)
 		speed = 0x0;
@@ -492,7 +491,7 @@ static int pctl_cfg(const struct chan_info *chan, u32 channel,
 	setbits_le32(&denali_pi[0], START);
 	setbits_le32(&denali_ctl[0], START);
 
-	/* Wating for phy DLL lock */
+	/* Waiting for phy DLL lock */
 	while (1) {
 		tmp = readl(&denali_phy[920]);
 		tmp1 = readl(&denali_phy[921]);
@@ -547,12 +546,12 @@ static int pctl_cfg(const struct chan_info *chan, u32 channel,
 	/* PHY_DLL_RST_EN */
 	clrsetbits_le32(&denali_phy[957], 0x3 << 24, 0x2 << 24);
 
-	/* Wating for PHY and DRAM init complete */
+	/* Waiting for PHY and DRAM init complete */
 	tmp = get_timer(0);
 	do {
 		if (get_timer(tmp) > timeout_ms) {
 			pr_err("DRAM (%s): phy failed to lock within  %ld ms\n",
-			      __func__, timeout_ms);
+			       __func__, timeout_ms);
 			return -ETIME;
 		}
 	} while (!(readl(&denali_ctl[203]) & (1 << 3)));
@@ -569,7 +568,7 @@ static void select_per_cs_training_index(const struct chan_info *chan,
 	u32 *denali_phy = chan->publ->denali_phy;
 
 	/* PHY_84 PHY_PER_CS_TRAINING_EN_0 1bit offset_16 */
-	if ((readl(&denali_phy[84])>>16) & 1) {
+	if ((readl(&denali_phy[84]) >> 16) & 1) {
 		/*
 		 * PHY_8/136/264/392
 		 * phy_per_cs_training_index_X 1bit offset_24
@@ -646,7 +645,7 @@ static int data_training_ca(const struct chan_info *chan, u32 channel,
 			if ((((tmp >> 11) & 0x1) == 0x1) &&
 			    (((tmp >> 13) & 0x1) == 0x1) &&
 			    (((tmp >> 5) & 0x1) == 0x0) &&
-			    (obs_err == 0))
+			    obs_err == 0)
 				break;
 			else if ((((tmp >> 5) & 0x1) == 0x1) ||
 				 (obs_err == 1))
@@ -700,7 +699,7 @@ static int data_training_wl(const struct chan_info *chan, u32 channel,
 			if ((((tmp >> 10) & 0x1) == 0x1) &&
 			    (((tmp >> 13) & 0x1) == 0x1) &&
 			    (((tmp >> 4) & 0x1) == 0x0) &&
-			    (obs_err == 0))
+			    obs_err == 0)
 				break;
 			else if ((((tmp >> 4) & 0x1) == 0x1) ||
 				 (obs_err == 1))
@@ -759,7 +758,7 @@ static int data_training_rg(const struct chan_info *chan, u32 channel,
 			if ((((tmp >> 9) & 0x1) == 0x1) &&
 			    (((tmp >> 13) & 0x1) == 0x1) &&
 			    (((tmp >> 3) & 0x1) == 0x0) &&
-			    (obs_err == 0))
+			    obs_err == 0)
 				break;
 			else if ((((tmp >> 3) & 0x1) == 0x1) ||
 				 (obs_err == 1))
@@ -955,8 +954,10 @@ static void dram_all_config(struct dram_info *dram,
 		sys_reg |= (info->rank - 1) << SYS_REG_RANK_SHIFT(channel);
 		sys_reg |= (info->col - 9) << SYS_REG_COL_SHIFT(channel);
 		sys_reg |= info->bk == 3 ? 0 : 1 << SYS_REG_BK_SHIFT(channel);
-		sys_reg |= (info->cs0_row - 13) << SYS_REG_CS0_ROW_SHIFT(channel);
-		sys_reg |= (info->cs1_row - 13) << SYS_REG_CS1_ROW_SHIFT(channel);
+		sys_reg |= (info->cs0_row - 13) <<
+			    SYS_REG_CS0_ROW_SHIFT(channel);
+		sys_reg |= (info->cs1_row - 13) <<
+			    SYS_REG_CS1_ROW_SHIFT(channel);
 		sys_reg |= (2 >> info->bw) << SYS_REG_BW_SHIFT(channel);
 		sys_reg |= (2 >> info->dbw) << SYS_REG_DBW_SHIFT(channel);
 
@@ -991,7 +992,7 @@ static void dram_all_config(struct dram_info *dram,
 }
 
 static int switch_to_phy_index1(struct dram_info *dram,
-				 const struct rk3399_sdram_params *sdram_params)
+				const struct rk3399_sdram_params *sdram_params)
 {
 	u32 channel;
 	u32 *denali_phy;
@@ -1026,7 +1027,7 @@ static int switch_to_phy_index1(struct dram_info *dram,
 		denali_phy = dram->chan[channel].publ->denali_phy;
 		clrsetbits_le32(&denali_phy[896], (0x3 << 8) | 1, 1 << 8);
 		ret = data_training(&dram->chan[channel], channel,
-				  sdram_params, PI_FULL_TRAINING);
+				    sdram_params, PI_FULL_TRAINING);
 		if (ret) {
 			debug("index1 training failed\n");
 			return ret;
@@ -1116,8 +1117,8 @@ static int conv_of_platdata(struct udevice *dev)
 	int ret;
 
 	ret = regmap_init_mem_platdata(dev, dtplat->reg,
-			ARRAY_SIZE(dtplat->reg) / 2,
-			&plat->map);
+				       ARRAY_SIZE(dtplat->reg) / 2,
+				       &plat->map);
 	if (ret)
 		return ret;
 
@@ -1199,8 +1200,8 @@ static int rk3399_dmc_probe(struct udevice *dev)
 	priv->pmugrf = syscon_get_first_range(ROCKCHIP_SYSCON_PMUGRF);
 	debug("%s: pmugrf=%p\n", __func__, priv->pmugrf);
 	priv->info.base = CONFIG_SYS_SDRAM_BASE;
-	priv->info.size = rockchip_sdram_size(
-			(phys_addr_t)&priv->pmugrf->os_reg2);
+	priv->info.size =
+		rockchip_sdram_size((phys_addr_t)&priv->pmugrf->os_reg2);
 #endif
 	return 0;
 }
@@ -1218,7 +1219,6 @@ static struct ram_ops rk3399_dmc_ops = {
 	.get_info = rk3399_dmc_get_info,
 };
 
-
 static const struct udevice_id rk3399_dmc_ids[] = {
 	{ .compatible = "rockchip,rk3399-dmc" },
 	{ }
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

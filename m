Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08F1269AB1
	for <lists+linux-rockchip@lfdr.de>; Mon, 15 Jul 2019 20:21:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UzPjfniCPfaUOqC8aZ0hg2TDrM/AvukQNaKIQlmOHGk=; b=YhqJQXSPx35CiB
	6NYN5cvuLHQo57KUCsLtsuXYl7m1lB0q/wWyQ6U8Lqcw5B/W0EJhMDqS3c4kWEZ4NuuK0EnwsCGb/
	BQHtB1gB3bsjAT7TWqCShi0h7xjUUJMYTOYuPw8iiiZPyo9hZQfFA0jhgbkDDE/WlGb95FzgK0qhP
	Oe3eKk/Ja6egZ/YPOdSRumVDXngq64Dvm+PerFExVqkZA37o28ctQPFUQcM8yxZk+4oEPHMey1HM2
	s4L8ulFMS1WPVu+OLlMs0wcMk2UdzGUZH1DHTJrf28aRSXtZglHg3ltzXLKpQVzeQmYuYECFX7LZh
	3xx5gfP1ZBhTybmn2apg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn5bT-0006kz-4p; Mon, 15 Jul 2019 18:21:35 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn5bM-0006it-Fj
 for linux-rockchip@lists.infradead.org; Mon, 15 Jul 2019 18:21:30 +0000
Received: by mail-pf1-x444.google.com with SMTP id r1so7785295pfq.12
 for <linux-rockchip@lists.infradead.org>; Mon, 15 Jul 2019 11:21:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=91XSnQx5BFEbjjDU1Kng5TwLgRBduu4DBFPUieipXW0=;
 b=DFiE9O5X2Fluynw7+arM5C4RDENZ7xOoonN1xYOhoZq10c6kyPGUrm7O6QmcY+GGLn
 LJq5bQUejm+DWCbS6jymkUs54VEyik2AvkJb97k4sfVJFiopubm5Xc9Ukekh7dAcNH61
 UIqpmm9xVBnICmxNEzta/oPHT9l423y4x+U1A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=91XSnQx5BFEbjjDU1Kng5TwLgRBduu4DBFPUieipXW0=;
 b=S0wqPpbyXj5kBSmUq27MPln3JGid5vFoZ5msZRdehw7NhcJWeqSF6Ao9nl/HG62w5/
 sewztyei4awvJ4J4/oT6rF88ACexwwkI61Ie6cEnUGFaLHcI9Z8oClN2h0PXg9PnSq1w
 kAqy34HHc+X0LnHlbqK63lZgrp6TNw68KNlnrugiWO1FPeWX1Ek2+AeS3+dzPvtVO3iO
 Wz0Q4tEeAJLA+Uup+1N9wqufkwZqYpE9fGW15hzl23yoTKRhVxP5JxF+XFROOUsbMdV2
 4zoq3pcwCUSKfs6eBY3koBaGVlEjFTGvlY9TpDntWTHJ6eIO0BxP/GHngWFHrwNX0YpB
 uQ8g==
X-Gm-Message-State: APjAAAWTlYe1+EhperRsVjnLxb4hLFjn7yeTw8WkWR+vGOTchl2qYZqX
 DlRYvNUNgVH3YdaxZf/ajfp6GA==
X-Google-Smtp-Source: APXvYqw6M+0WZaSGgchasMscDnwlTt1GZHlALCRnaIY4IkIDUsdI1Uo4o0vtj/O1XG4Ax/TneqzhyA==
X-Received: by 2002:a63:d4c:: with SMTP id 12mr28947708pgn.30.1563214887849;
 Mon, 15 Jul 2019 11:21:27 -0700 (PDT)
Received: from localhost.localdomain ([49.206.201.107])
 by smtp.gmail.com with ESMTPSA id l15sm18152405pgf.5.2019.07.15.11.21.24
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 15 Jul 2019 11:21:27 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v3 02/15] ram: rk3399: Some trivial code fixes
Date: Mon, 15 Jul 2019 23:50:57 +0530
Message-Id: <20190715182110.21336-3-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190715182110.21336-1-jagan@amarulasolutions.com>
References: <20190715182110.21336-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_112128_999095_6A7D64CA 
X-CRM114-Status: GOOD (  13.11  )
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

- Add proper spaces in data training, rk3399_dmc_init, pctl_cfg
- Order include files
- Move macro after include files

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 60 +++++++++++++++++++++--------
 1 file changed, 43 insertions(+), 17 deletions(-)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 541e4a4b1e..733864f5d2 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -14,14 +14,27 @@
 #include <syscon.h>
 #include <asm/io.h>
 #include <asm/arch-rockchip/clock.h>
-#include <asm/arch-rockchip/sdram_common.h>
-#include <asm/arch-rockchip/sdram_rk3399.h>
 #include <asm/arch-rockchip/cru_rk3399.h>
 #include <asm/arch-rockchip/grf_rk3399.h>
 #include <asm/arch-rockchip/hardware.h>
+#include <asm/arch-rockchip/sdram_common.h>
+#include <asm/arch-rockchip/sdram_rk3399.h>
 #include <linux/err.h>
 #include <time.h>
 
+#define PRESET_SGRF_HOLD(n)	((0x1 << (6 + 16)) | ((n) << 6))
+#define PRESET_GPIO0_HOLD(n)	((0x1 << (7 + 16)) | ((n) << 7))
+#define PRESET_GPIO1_HOLD(n)	((0x1 << (8 + 16)) | ((n) << 8))
+
+#define PHY_DRV_ODT_HI_Z	0x0
+#define PHY_DRV_ODT_240		0x1
+#define PHY_DRV_ODT_120		0x8
+#define PHY_DRV_ODT_80		0x9
+#define PHY_DRV_ODT_60		0xc
+#define PHY_DRV_ODT_48		0xd
+#define PHY_DRV_ODT_40		0xe
+#define PHY_DRV_ODT_34_3	0xf
+
 struct chan_info {
 	struct rk3399_ddr_pctl_regs *pctl;
 	struct rk3399_ddr_pi_regs *pi;
@@ -43,19 +56,6 @@ struct dram_info {
 	struct rk3399_pmugrf_regs *pmugrf;
 };
 
-#define PRESET_SGRF_HOLD(n)	((0x1 << (6 + 16)) | ((n) << 6))
-#define PRESET_GPIO0_HOLD(n)	((0x1 << (7 + 16)) | ((n) << 7))
-#define PRESET_GPIO1_HOLD(n)	((0x1 << (8 + 16)) | ((n) << 8))
-
-#define PHY_DRV_ODT_HI_Z	0x0
-#define PHY_DRV_ODT_240		0x1
-#define PHY_DRV_ODT_120		0x8
-#define PHY_DRV_ODT_80		0x9
-#define PHY_DRV_ODT_60		0xc
-#define PHY_DRV_ODT_48		0xd
-#define PHY_DRV_ODT_40		0xe
-#define PHY_DRV_ODT_34_3	0xf
-
 #if defined(CONFIG_TPL_BUILD) || \
 	(!defined(CONFIG_TPL) && defined(CONFIG_SPL_BUILD))
 
@@ -473,8 +473,10 @@ static int pctl_cfg(const struct chan_info *chan, u32 channel,
 	copy_to_reg(&denali_ctl[1], &params_ctl[1],
 		    sizeof(struct rk3399_ddr_pctl_regs) - 4);
 	writel(params_ctl[0], &denali_ctl[0]);
+
 	copy_to_reg(denali_pi, &sdram_params->pi_regs.denali_pi[0],
 		    sizeof(struct rk3399_ddr_pi_regs));
+
 	/* rank count need to set for init */
 	set_memory_map(chan, channel, sdram_params);
 
@@ -620,8 +622,10 @@ static int data_training_ca(const struct chan_info *chan, u32 channel,
 
 	for (i = 0; i < rank; i++) {
 		select_per_cs_training_index(chan, i);
+
 		/* PI_100 PI_CALVL_EN:RW:8:2 */
 		clrsetbits_le32(&denali_pi[100], 0x3 << 8, 0x2 << 8);
+
 		/* PI_92 PI_CALVL_REQ:WR:16:1,PI_CALVL_CS:RW:24:2 */
 		clrsetbits_le32(&denali_pi[92],
 				(0x1 << 16) | (0x3 << 24),
@@ -651,9 +655,11 @@ static int data_training_ca(const struct chan_info *chan, u32 channel,
 				 (obs_err == 1))
 				return -EIO;
 		}
+
 		/* clear interrupt,PI_175 PI_INT_ACK:WR:0:17 */
 		writel(0x00003f7c, (&denali_pi[175]));
 	}
+
 	clrbits_le32(&denali_pi[100], 0x3 << 8);
 
 	return 0;
@@ -670,8 +676,10 @@ static int data_training_wl(const struct chan_info *chan, u32 channel,
 
 	for (i = 0; i < rank; i++) {
 		select_per_cs_training_index(chan, i);
+
 		/* PI_60 PI_WRLVL_EN:RW:8:2 */
 		clrsetbits_le32(&denali_pi[60], 0x3 << 8, 0x2 << 8);
+
 		/* PI_59 PI_WRLVL_REQ:WR:8:1,PI_WRLVL_CS:RW:16:2 */
 		clrsetbits_le32(&denali_pi[59],
 				(0x1 << 8) | (0x3 << 16),
@@ -705,6 +713,7 @@ static int data_training_wl(const struct chan_info *chan, u32 channel,
 				 (obs_err == 1))
 				return -EIO;
 		}
+
 		/* clear interrupt,PI_175 PI_INT_ACK:WR:0:17 */
 		writel(0x00003f7c, (&denali_pi[175]));
 	}
@@ -726,8 +735,10 @@ static int data_training_rg(const struct chan_info *chan, u32 channel,
 
 	for (i = 0; i < rank; i++) {
 		select_per_cs_training_index(chan, i);
+
 		/* PI_80 PI_RDLVL_GATE_EN:RW:24:2 */
 		clrsetbits_le32(&denali_pi[80], 0x3 << 24, 0x2 << 24);
+
 		/*
 		 * PI_74 PI_RDLVL_GATE_REQ:WR:16:1
 		 * PI_RDLVL_CS:RW:24:2
@@ -764,9 +775,11 @@ static int data_training_rg(const struct chan_info *chan, u32 channel,
 				 (obs_err == 1))
 				return -EIO;
 		}
+
 		/* clear interrupt,PI_175 PI_INT_ACK:WR:0:17 */
 		writel(0x00003f7c, (&denali_pi[175]));
 	}
+
 	clrbits_le32(&denali_pi[80], 0x3 << 24);
 
 	return 0;
@@ -781,8 +794,10 @@ static int data_training_rl(const struct chan_info *chan, u32 channel,
 
 	for (i = 0; i < rank; i++) {
 		select_per_cs_training_index(chan, i);
+
 		/* PI_80 PI_RDLVL_EN:RW:16:2 */
 		clrsetbits_le32(&denali_pi[80], 0x3 << 16, 0x2 << 16);
+
 		/* PI_74 PI_RDLVL_REQ:WR:8:1,PI_RDLVL_CS:RW:24:2 */
 		clrsetbits_le32(&denali_pi[74],
 				(0x1 << 8) | (0x3 << 24),
@@ -805,9 +820,11 @@ static int data_training_rl(const struct chan_info *chan, u32 channel,
 			else if (((tmp >> 2) & 0x1) == 0x1)
 				return -EIO;
 		}
+
 		/* clear interrupt,PI_175 PI_INT_ACK:WR:0:17 */
 		writel(0x00003f7c, (&denali_pi[175]));
 	}
+
 	clrbits_le32(&denali_pi[80], 0x3 << 16);
 
 	return 0;
@@ -822,13 +839,16 @@ static int data_training_wdql(const struct chan_info *chan, u32 channel,
 
 	for (i = 0; i < rank; i++) {
 		select_per_cs_training_index(chan, i);
+
 		/*
 		 * disable PI_WDQLVL_VREF_EN before wdq leveling?
 		 * PI_181 PI_WDQLVL_VREF_EN:RW:8:1
 		 */
 		clrbits_le32(&denali_pi[181], 0x1 << 8);
+
 		/* PI_124 PI_WDQLVL_EN:RW:16:2 */
 		clrsetbits_le32(&denali_pi[124], 0x3 << 16, 0x2 << 16);
+
 		/* PI_121 PI_WDQLVL_REQ:WR:8:1,PI_WDQLVL_CS:RW:16:2 */
 		clrsetbits_le32(&denali_pi[121],
 				(0x1 << 8) | (0x3 << 16),
@@ -845,9 +865,11 @@ static int data_training_wdql(const struct chan_info *chan, u32 channel,
 			else if (((tmp >> 6) & 0x1) == 0x1)
 				return -EIO;
 		}
+
 		/* clear interrupt,PI_175 PI_INT_ACK:WR:0:17 */
 		writel(0x00003f7c, (&denali_pi[175]));
 	}
+
 	clrbits_le32(&denali_pi[124], 0x3 << 16);
 
 	return 0;
@@ -938,6 +960,7 @@ static void dram_all_config(struct dram_info *dram,
 	sys_reg |= sdram_params->base.dramtype << SYS_REG_DDRTYPE_SHIFT;
 	sys_reg |= (sdram_params->base.num_channels - 1)
 		    << SYS_REG_NUM_CH_SHIFT;
+
 	for (channel = 0, idx = 0;
 	     (idx < sdram_params->base.num_channels) && (channel < 2);
 	     channel++) {
@@ -1164,6 +1187,7 @@ static int rk3399_dmc_init(struct udevice *dev)
 	      priv->chan[1].publ, priv->chan[1].msch);
 	debug("cru %p, cic %p, grf %p, sgrf %p, pmucru %p\n", priv->cru,
 	      priv->cic, priv->pmugrf, priv->pmusgrf, priv->pmucru);
+
 #if CONFIG_IS_ENABLED(OF_PLATDATA)
 	ret = clk_get_by_index_platdata(dev, 0, dtplat->clocks, &priv->ddr_clk);
 #else
@@ -1173,14 +1197,16 @@ static int rk3399_dmc_init(struct udevice *dev)
 		printf("%s clk get failed %d\n", __func__, ret);
 		return ret;
 	}
+
 	ret = clk_set_rate(&priv->ddr_clk, params->base.ddr_freq * MHz);
 	if (ret < 0) {
 		printf("%s clk set failed %d\n", __func__, ret);
 		return ret;
 	}
+
 	ret = sdram_init(priv, params);
 	if (ret < 0) {
-		printf("%s DRAM init failed%d\n", __func__, ret);
+		printf("%s DRAM init failed %d\n", __func__, ret);
 		return ret;
 	}
 
@@ -1198,7 +1224,7 @@ static int rk3399_dmc_probe(struct udevice *dev)
 	struct dram_info *priv = dev_get_priv(dev);
 
 	priv->pmugrf = syscon_get_first_range(ROCKCHIP_SYSCON_PMUGRF);
-	debug("%s: pmugrf=%p\n", __func__, priv->pmugrf);
+	debug("%s: pmugrf = %p\n", __func__, priv->pmugrf);
 	priv->info.base = CONFIG_SYS_SDRAM_BASE;
 	priv->info.size =
 		rockchip_sdram_size((phys_addr_t)&priv->pmugrf->os_reg2);
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

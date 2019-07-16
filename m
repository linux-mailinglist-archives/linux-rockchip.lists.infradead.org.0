Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B08B6A815
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 14:02:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YIAnLs25zN6l6WtImhM4mCa4M+U/0txyPFI6SIm31Mc=; b=QFPqilLU6Jh3VC
	dJOucjU2A1Cc+RhObHJq9sr5EceaRv6g497mHAvwgEvmJ8rmyy2xLa18oUL46Y79FTw0S5X4FaswC
	7aWvVY/XbSJQUbU8CkD/4xUvjvLtWGF2dr2z62iAPDzHUjnbD2d0+4GtDuZGB0vZ+RyBvPGvSdujq
	xyrxmkP/oj5qsAsqqLEzCC3xyJgx5kCwc580ByAMB4Vf27IzuTyCV0SDU/i0z+chXAI+tdtD4xOuZ
	WxSNhb9k/t4aJFkNJ4dc4M3y/VnDYg3OoljY0fzHTL3otMDhiXLq/vvK59LrbekGMIrS91Htai4KD
	2sYdyrEXOBnsjc9ryGLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnMA6-0008Ox-OR; Tue, 16 Jul 2019 12:02:26 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnM8E-0006gt-CV
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 12:00:32 +0000
Received: by mail-pf1-x441.google.com with SMTP id g2so9023112pfq.0
 for <linux-rockchip@lists.infradead.org>; Tue, 16 Jul 2019 05:00:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=b4BLaekI2K9GhOfNexihMzKGNJDUcPNIWa3ew4v23qw=;
 b=K3lhGmSnzmnlgICT8KJWsY3bF5icg0jJS6zeejbF97kq31uvbGfrOOklqUA81yN9TB
 j866L+st/p+IjPQlgypBCgCwTvB71hcWr4ToIVNuur6MM3y5o71mNhAJGd3vPy6pGkfC
 DIWxT2WQpEs/1yWis8Ih/HeQdfqGek5m89N5o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=b4BLaekI2K9GhOfNexihMzKGNJDUcPNIWa3ew4v23qw=;
 b=QR5F1rWtl9hCegvIDbfa6SYuvy+UAPX5FZ3Dfvq8iG7U3kVRaJThr79FivVtwRtBmR
 dJqg0K8FpnTI3QFIAYjgyIodYqIu5LY/MxgdYD0M1WQsC3CL7XeL5duxgShSUsIDr7Tp
 82wkV3JjIq5euPWm2vhnhktMcGcGnjs9ySSojWy5S/mOV3JlTtwxxxG9YQdHTU1YdR56
 4vBDNVhprDVmpB1LCdnvegC5RZ0qiTEQbdLeF8rOPQvu9Jl0NRC8O3x7sZffEGXpRSv1
 vH4iNn0pnSgu6JoUg0dii+QHguripAqcawp6RzmvudHsaT/GOwVfSvFQRGHhraG1IGVU
 dIFA==
X-Gm-Message-State: APjAAAUtqbRJ9xHI6xdESGKnK9hwaztTk9HXH0ADnWsjMOesQ4ClXAZ2
 hV+XOqQktna6jAcv5mZ6f2B36Q==
X-Google-Smtp-Source: APXvYqwzAkNtImAs72C3PXNV1opZphi71baykhP/0Gunn4MMbiaRiBckMyF2ApCEyg8SE3efEW+aZg==
X-Received: by 2002:a63:fb14:: with SMTP id o20mr22137271pgh.136.1563278429813; 
 Tue, 16 Jul 2019 05:00:29 -0700 (PDT)
Received: from localhost.localdomain ([49.206.201.107])
 by smtp.gmail.com with ESMTPSA id z24sm36269566pfr.51.2019.07.16.05.00.26
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 16 Jul 2019 05:00:29 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v3 43/57] ram: rk3399: Add LPPDR4 mr detection
Date: Tue, 16 Jul 2019 17:27:31 +0530
Message-Id: <20190716115745.12585-44-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190716115745.12585-1-jagan@amarulasolutions.com>
References: <20190716115745.12585-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_050030_489710_B355FAA1 
X-CRM114-Status: GOOD (  14.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
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

Like data training in other sdram types, mr detection need
to taken care for lpddr4 with looped rank and associated
channel to make sure the proper configuration held.

Once the mr detection successful for active and configured
rank with channel number, the same can later reused during
actual LPDDR4 initialization.

So, add code to support for it.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 226 ++++++++++++++++++++++++++++
 1 file changed, 226 insertions(+)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index da01f08732..623685e3c5 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -1470,6 +1470,7 @@ static void dram_all_config(struct dram_info *dram,
 	clrsetbits_le32(&dram->cru->glb_rst_con, 0x3, 0x3);
 }
 
+#if !defined(CONFIG_RAM_RK3399_LPDDR4)
 static int default_data_training(struct dram_info *dram, u32 channel, u8 rank,
 				 struct rk3399_sdram_params *params)
 {
@@ -1486,6 +1487,7 @@ static int default_data_training(struct dram_info *dram, u32 channel, u8 rank,
 
 	return data_training(dram, channel, params, training_flag);
 }
+#endif
 
 static int switch_to_phy_index1(struct dram_info *dram,
 				const struct rk3399_sdram_params *params)
@@ -1532,6 +1534,226 @@ static int switch_to_phy_index1(struct dram_info *dram,
 	return 0;
 }
 
+#if defined(CONFIG_RAM_RK3399_LPDDR4)
+static u32 get_ddr_stride(struct rk3399_pmusgrf_regs *pmusgrf)
+{
+	return ((readl(&pmusgrf->soc_con4) >> 10) & 0x1F);
+}
+
+static void set_ddr_stride(struct rk3399_pmusgrf_regs *pmusgrf, u32 stride)
+{
+	rk_clrsetreg(&pmusgrf->soc_con4, 0x1f << 10, stride << 10);
+}
+
+static void set_cap_relate_config(const struct chan_info *chan,
+				  struct rk3399_sdram_params *params,
+				  unsigned int channel)
+{
+	u32 *denali_ctl = chan->pctl->denali_ctl;
+	u32 tmp;
+	struct rk3399_msch_timings *noc_timing;
+
+	if (params->base.dramtype == LPDDR3) {
+		tmp = (8 << params->ch[channel].cap_info.bw) /
+			(8 << params->ch[channel].cap_info.dbw);
+
+		/**
+		 * memdata_ratio
+		 * 1 -> 0, 2 -> 1, 4 -> 2
+		 */
+		clrsetbits_le32(&denali_ctl[197], 0x7,
+				(tmp >> 1));
+		clrsetbits_le32(&denali_ctl[198], 0x7 << 8,
+				(tmp >> 1) << 8);
+	}
+
+	noc_timing = &params->ch[channel].noc_timings;
+
+	/*
+	 * noc timing bw relate timing is 32 bit, and real bw is 16bit
+	 * actually noc reg is setting at function dram_all_config
+	 */
+	if (params->ch[channel].cap_info.bw == 16 &&
+	    noc_timing->ddrmode.b.mwrsize == 2) {
+		if (noc_timing->ddrmode.b.burstsize)
+			noc_timing->ddrmode.b.burstsize -= 1;
+		noc_timing->ddrmode.b.mwrsize -= 1;
+		noc_timing->ddrtimingc0.b.burstpenalty *= 2;
+		noc_timing->ddrtimingc0.b.wrtomwr *= 2;
+	}
+}
+
+static u32 calculate_ddrconfig(struct rk3399_sdram_params *params, u32 channel)
+{
+	unsigned int cs0_row = params->ch[channel].cap_info.cs0_row;
+	unsigned int col = params->ch[channel].cap_info.col;
+	unsigned int bw = params->ch[channel].cap_info.bw;
+	u16  ddr_cfg_2_rbc[] = {
+		/*
+		 * [6]	  highest bit col
+		 * [5:3]  max row(14+n)
+		 * [2]    insertion row
+		 * [1:0]  col(9+n),col, data bus 32bit
+		 *
+		 * highbitcol, max_row, insertion_row,  col
+		 */
+		((0 << 6) | (2 << 3) | (0 << 2) | 0), /* 0 */
+		((0 << 6) | (2 << 3) | (0 << 2) | 1), /* 1 */
+		((0 << 6) | (1 << 3) | (0 << 2) | 2), /* 2 */
+		((0 << 6) | (0 << 3) | (0 << 2) | 3), /* 3 */
+		((0 << 6) | (2 << 3) | (1 << 2) | 1), /* 4 */
+		((0 << 6) | (1 << 3) | (1 << 2) | 2), /* 5 */
+		((1 << 6) | (0 << 3) | (0 << 2) | 2), /* 6 */
+		((1 << 6) | (1 << 3) | (0 << 2) | 2), /* 7 */
+	};
+	u32 i;
+
+	col -= (bw == 2) ? 0 : 1;
+	col -= 9;
+
+	for (i = 0; i < 4; i++) {
+		if ((col == (ddr_cfg_2_rbc[i] & 0x3)) &&
+		    (cs0_row <= (((ddr_cfg_2_rbc[i] >> 3) & 0x7) + 14)))
+			break;
+	}
+
+	if (i >= 4)
+		i = -EINVAL;
+
+	return i;
+}
+
+/**
+ * read mr_num mode register
+ * rank = 1: cs0
+ * rank = 2: cs1
+ */
+static int read_mr(struct rk3399_ddr_pctl_regs *ddr_pctl_regs, u32 rank,
+		   u32 mr_num, u32 *buf)
+{
+	s32 timeout = 100;
+
+	writel(((1 << 16) | (((rank == 2) ? 1 : 0) << 8) | mr_num) << 8,
+	       &ddr_pctl_regs->denali_ctl[118]);
+
+	while (0 == (readl(&ddr_pctl_regs->denali_ctl[203]) &
+			((1 << 21) | (1 << 12)))) {
+		udelay(1);
+
+		if (timeout <= 0) {
+			printf("%s: pctl timeout!\n", __func__);
+			return -ETIMEDOUT;
+		}
+
+		timeout--;
+	}
+
+	if (!(readl(&ddr_pctl_regs->denali_ctl[203]) & (1 << 12))) {
+		*buf = readl(&ddr_pctl_regs->denali_ctl[119]) & 0xFF;
+	} else {
+		printf("%s: read mr failed with 0x%x status\n", __func__,
+		       readl(&ddr_pctl_regs->denali_ctl[17]) & 0x3);
+		*buf = 0;
+	}
+
+	setbits_le32(&ddr_pctl_regs->denali_ctl[205], (1 << 21) | (1 << 12));
+
+	return 0;
+}
+
+static int lpddr4_mr_detect(struct dram_info *dram, u32 channel, u8 rank,
+			    struct rk3399_sdram_params *params)
+{
+	u64 cs0_cap;
+	u32 stride;
+	u32 cs = 0, col = 0, bk = 0, bw = 0, row_3_4 = 0;
+	u32 cs0_row = 0, cs1_row = 0, ddrconfig = 0;
+	u32 mr5, mr12, mr14;
+	struct chan_info *chan = &dram->chan[channel];
+	struct rk3399_ddr_pctl_regs *ddr_pctl_regs = chan->pctl;
+	void __iomem *addr = NULL;
+	int ret = 0;
+	u32 val;
+
+	stride = get_ddr_stride(dram->pmusgrf);
+
+	if (params->ch[channel].cap_info.col == 0) {
+		ret = -EPERM;
+		goto end;
+	}
+
+	cs = params->ch[channel].cap_info.rank;
+	col = params->ch[channel].cap_info.col;
+	bk = params->ch[channel].cap_info.bk;
+	bw = params->ch[channel].cap_info.bw;
+	row_3_4 = params->ch[channel].cap_info.row_3_4;
+	cs0_row = params->ch[channel].cap_info.cs0_row;
+	cs1_row = params->ch[channel].cap_info.cs1_row;
+	ddrconfig = params->ch[channel].cap_info.ddrconfig;
+
+	/* 2GB */
+	params->ch[channel].cap_info.rank = 2;
+	params->ch[channel].cap_info.col = 10;
+	params->ch[channel].cap_info.bk = 3;
+	params->ch[channel].cap_info.bw = 2;
+	params->ch[channel].cap_info.row_3_4 = 0;
+	params->ch[channel].cap_info.cs0_row = 15;
+	params->ch[channel].cap_info.cs1_row = 15;
+	params->ch[channel].cap_info.ddrconfig = 1;
+
+	set_memory_map(chan, channel, params);
+	params->ch[channel].cap_info.ddrconfig =
+			calculate_ddrconfig(params, channel);
+	set_ddrconfig(chan, params, channel,
+		      params->ch[channel].cap_info.ddrconfig);
+	set_cap_relate_config(chan, params, channel);
+
+	cs0_cap = (1 << (params->ch[channel].cap_info.bw
+			+ params->ch[channel].cap_info.col
+			+ params->ch[channel].cap_info.bk
+			+ params->ch[channel].cap_info.cs0_row));
+
+	if (params->ch[channel].cap_info.row_3_4)
+		cs0_cap = cs0_cap * 3 / 4;
+
+	if (channel == 0)
+		set_ddr_stride(dram->pmusgrf, 0x17);
+	else
+		set_ddr_stride(dram->pmusgrf, 0x18);
+
+	/* read and write data to DRAM, avoid be optimized by compiler. */
+	if (rank == 1)
+		addr = (void __iomem *)0x100;
+	else if (rank == 2)
+		addr = (void __iomem *)(cs0_cap + 0x100);
+
+	val = readl(addr);
+	writel(val + 1, addr);
+
+	read_mr(ddr_pctl_regs, rank, 5, &mr5);
+	read_mr(ddr_pctl_regs, rank, 12, &mr12);
+	read_mr(ddr_pctl_regs, rank, 14, &mr14);
+
+	if (mr5 == 0 || mr12 != 0x4d || mr14 != 0x4d) {
+		ret = -EINVAL;
+		goto end;
+	}
+end:
+	params->ch[channel].cap_info.rank = cs;
+	params->ch[channel].cap_info.col = col;
+	params->ch[channel].cap_info.bk = bk;
+	params->ch[channel].cap_info.bw = bw;
+	params->ch[channel].cap_info.row_3_4 = row_3_4;
+	params->ch[channel].cap_info.cs0_row = cs0_row;
+	params->ch[channel].cap_info.cs1_row = cs1_row;
+	params->ch[channel].cap_info.ddrconfig = ddrconfig;
+
+	set_ddr_stride(dram->pmusgrf, stride);
+
+	return ret;
+}
+#endif /* CONFIG_RAM_RK3399_LPDDR4 */
+
 static unsigned char calculate_stride(struct rk3399_sdram_params *params)
 {
 	unsigned int stride = params->base.stride;
@@ -1762,7 +1984,11 @@ static int conv_of_platdata(struct udevice *dev)
 #endif
 
 static const struct sdram_rk3399_ops rk3399_ops = {
+#if !defined(CONFIG_RAM_RK3399_LPDDR4)
 	.data_training = default_data_training,
+#else
+	.data_training = lpddr4_mr_detect,
+#endif
 };
 
 static int rk3399_dmc_init(struct udevice *dev)
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

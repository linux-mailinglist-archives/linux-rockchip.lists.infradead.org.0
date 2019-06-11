Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B2BB3CFEC
	for <lists+linux-rockchip@lfdr.de>; Tue, 11 Jun 2019 16:57:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GfLQ4Dd0v1cGNX1nh9qw0TL8kp0O0I40vwIP8TG2TIk=; b=CJU0N6CyZXZD9D
	PA1QyWmmafd7PVkm6g2TcooZ92+9zknPsBzGjj2MoAYJKSa8HdOGog7weYRIKf5YlIZv+MXyHjZ8I
	74iE4JvWxzJWprQKo25uLiJo5+MojnyHftwHT/2/3yFdgsaaADWNlKbZ1vlYy+63+XQkfJG3Ix0pj
	WCXaBby7JnxbNQPY3iqOLade0ERg5qTb9Bm8ey/9+HXzrDXR/dYruBdY2XURM6kK+r0ahA+y69V4O
	6mkD3V2J08yhDqYWu4Zs+ZmldQLAEnbUVQ0OZzRXmKnyK5ntdqKiM+ppGBeKnRW20CAa29dqZcYeq
	bHTQy6AjOP2nqBMFjirg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haiD4-0000K1-5r; Tue, 11 Jun 2019 14:57:14 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haiCq-00006U-0u
 for linux-rockchip@lists.infradead.org; Tue, 11 Jun 2019 14:57:02 +0000
Received: by mail-pf1-x444.google.com with SMTP id q10so7586497pff.9
 for <linux-rockchip@lists.infradead.org>; Tue, 11 Jun 2019 07:56:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=mGAVbQ0/GKtxUT4Ixc2BHlNx/P364Q0MbJKj7oZiPw0=;
 b=kVthj+Xr/RhHYme2L6xQfM44o29+/u4QYgbekaVzwLD4jD6n7+Eo1Q9IPJRxYtIFCI
 y8nwdjoepzJ42RcObvLf9VYokaQV4BzdY9HFtZpkXLZIRfogq9+zx+pITNa+sxSW0Cn5
 ilKMJsqYINoE6htZWN1XRj3sx2jTU78Pc51oI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=mGAVbQ0/GKtxUT4Ixc2BHlNx/P364Q0MbJKj7oZiPw0=;
 b=o/BQw8bp+DOalbLvpvSI/OIptuSScL6JJCnX23jx31anPDtEdzz81WG6T9ZF5LQuaN
 PJ4iZCw82rjVUqA/n2cXw7uac3oUVnI/zF8S5FEHQjhKr36k7YfUub/QcSMbvs50kqyW
 QguTc95hICbm59M7zGIxmQsU3gJIBBT1sj9e3hck3xI0SeFWaK14crBkst6tD5WhlOiQ
 qQhLHotU3aZvDsVY3nBQW756AUIUcuVrhKInUBPzbFyIFYxf1zV8cla2OR6Vc/DoM4/X
 kMckRY33Wfp+dxHfmGDnp2DUINS8SUVNdgXo1/vs95gr9mX/GQeQoH+r7F4wY+VVC99U
 9/9A==
X-Gm-Message-State: APjAAAU0Nw9qbsqNVoLHRlWmMBWh9jBkPXd4+9UoeO6c5a5boEvvbrvZ
 afIbx577P3uUUk49Zku0N7/8QQ==
X-Google-Smtp-Source: APXvYqxIPYWZrhaAJfQzqhyGTa7Z9pHmaZsJLxlKsZAAJf7TUk7poY5ZvJ+5Rs0aAIm2bv6Am4/Atw==
X-Received: by 2002:a62:36c1:: with SMTP id d184mr82811975pfa.49.1560265019396; 
 Tue, 11 Jun 2019 07:56:59 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.18])
 by smtp.gmail.com with ESMTPSA id e9sm16206208pfn.154.2019.06.11.07.56.55
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Jun 2019 07:56:58 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH 78/92] ram: rk3399: Add LPPDR4 mr detection
Date: Tue, 11 Jun 2019 20:21:21 +0530
Message-Id: <20190611145135.21399-79-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190611145135.21399-1-jagan@amarulasolutions.com>
References: <20190611145135.21399-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_075700_365985_4D42EA87 
X-CRM114-Status: GOOD (  16.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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
 drivers/ram/rockchip/sdram_rk3399.c | 254 ++++++++++++++++++++++++++--
 1 file changed, 243 insertions(+), 11 deletions(-)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 89348cf296..5a0872c23f 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -218,6 +218,16 @@ static void *get_ddrc0_con(struct dram_info *dram, u8 channel)
 	return (channel == 0) ? &dram->grf->ddrc0_con0 : &dram->grf->ddrc0_con1;
 }
 
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
 static void copy_to_reg(u32 *dest, const u32 *src, u32 n)
 {
 	int i;
@@ -1593,6 +1603,215 @@ static unsigned char calculate_stride(struct rk3399_sdram_params *sdram_params)
 	return stride;
 }
 
+static void set_cap_relate_config(const struct chan_info *chan,
+				  struct rk3399_sdram_params *sdram_params,
+				  unsigned int channel)
+{
+	u32 *denali_ctl = chan->pctl->denali_ctl;
+	u32 tmp;
+	struct rk3399_msch_timings *noc_timing;
+
+	if (sdram_params->base.dramtype == LPDDR3) {
+		tmp = (8 << sdram_params->ch[channel].cap_info.bw) /
+			(8 << sdram_params->ch[channel].cap_info.dbw);
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
+	noc_timing = &sdram_params->ch[channel].noc_timings;
+
+	/*
+	 * noc timing bw relate timing is 32 bit, and real bw is 16bit
+	 * actually noc reg is setting at function dram_all_config
+	 */
+	if (sdram_params->ch[channel].cap_info.bw == 16 &&
+	    noc_timing->ddrmode.b.mwrsize == 2) {
+		if (noc_timing->ddrmode.b.burstsize)
+			noc_timing->ddrmode.b.burstsize -= 1;
+		noc_timing->ddrmode.b.mwrsize -= 1;
+		noc_timing->ddrtimingc0.b.burstpenalty *= 2;
+		noc_timing->ddrtimingc0.b.wrtomwr *= 2;
+	}
+}
+
+static u32 calculate_ddrconfig(struct rk3399_sdram_params *sdram_params,
+			       u32 channel)
+{
+	unsigned int cs0_row = sdram_params->ch[channel].cap_info.cs0_row;
+	unsigned int col = sdram_params->ch[channel].cap_info.col;
+	unsigned int bw = sdram_params->ch[channel].cap_info.bw;
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
+static int lpddr4_mr_detect(struct dram_info *dram, u32 channel, u32 rank,
+			    struct rk3399_sdram_params *sdram_params)
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
+	if (sdram_params->ch[channel].cap_info.col == 0) {
+		ret = -EPERM;
+		goto end;
+	}
+
+	cs = sdram_params->ch[channel].cap_info.rank;
+	col = sdram_params->ch[channel].cap_info.col;
+	bk = sdram_params->ch[channel].cap_info.bk;
+	bw = sdram_params->ch[channel].cap_info.bw;
+	row_3_4 = sdram_params->ch[channel].cap_info.row_3_4;
+	cs0_row = sdram_params->ch[channel].cap_info.cs0_row;
+	cs1_row = sdram_params->ch[channel].cap_info.cs1_row;
+	ddrconfig = sdram_params->ch[channel].cap_info.ddrconfig;
+
+	/* 2GB */
+	sdram_params->ch[channel].cap_info.rank = 2;
+	sdram_params->ch[channel].cap_info.col = 10;
+	sdram_params->ch[channel].cap_info.bk = 3;
+	sdram_params->ch[channel].cap_info.bw = 2;
+	sdram_params->ch[channel].cap_info.row_3_4 = 0;
+	sdram_params->ch[channel].cap_info.cs0_row = 15;
+	sdram_params->ch[channel].cap_info.cs1_row = 15;
+	sdram_params->ch[channel].cap_info.ddrconfig = 1;
+
+	set_memory_map(chan, channel, sdram_params);
+	sdram_params->ch[channel].cap_info.ddrconfig =
+			calculate_ddrconfig(sdram_params, channel);
+	set_ddrconfig(chan, sdram_params, channel,
+		      sdram_params->ch[channel].cap_info.ddrconfig);
+	set_cap_relate_config(chan, sdram_params, channel);
+
+	cs0_cap = (1 << (sdram_params->ch[channel].cap_info.bw
+			+ sdram_params->ch[channel].cap_info.col
+			+ sdram_params->ch[channel].cap_info.bk
+			+ sdram_params->ch[channel].cap_info.cs0_row));
+
+	if (sdram_params->ch[channel].cap_info.row_3_4)
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
+	sdram_params->ch[channel].cap_info.rank = cs;
+	sdram_params->ch[channel].cap_info.col = col;
+	sdram_params->ch[channel].cap_info.bk = bk;
+	sdram_params->ch[channel].cap_info.bw = bw;
+	sdram_params->ch[channel].cap_info.row_3_4 = row_3_4;
+	sdram_params->ch[channel].cap_info.cs0_row = cs0_row;
+	sdram_params->ch[channel].cap_info.cs1_row = cs1_row;
+	sdram_params->ch[channel].cap_info.ddrconfig = ddrconfig;
+
+	set_ddr_stride(dram->pmusgrf, stride);
+
+	return ret;
+}
+
 static void clear_channel_params(struct rk3399_sdram_params *params, u8 channel)
 {
 	params->ch[channel].cap_info.rank = 0;
@@ -1665,17 +1884,30 @@ static int sdram_init(struct dram_info *dram,
 
 			sdram_params->ch[ch].cap_info.rank = rank;
 
-			/*
-			 * LPDDR3 CA training msut be trigger before
-			 * other training.
-			 * DDR3 is not have CA training.
-			 */
-			if (sdram_params->base.dramtype == LPDDR3)
-				training_flag |= PI_CA_TRAINING;
-
-			if (!(data_training(&dram->chan[ch], ch,
-					    sdram_params, training_flag)))
-				break;
+			if (sdram_params->base.dramtype == LPDDR4) {
+				if (!lpddr4_mr_detect(dram, ch, rank,
+						      sdram_params)) {
+					debug("%s: lpddr4 mr detected for rank %d, ch %d\n",
+					      __func__, rank, ch);
+					break;
+				}
+			} else {
+				/*
+				 * LPDDR3 CA training msut be trigger before
+				 * other training.
+				 * DDR3 is not have CA training.
+				 */
+				if (sdram_params->base.dramtype == LPDDR3)
+					training_flag |= PI_CA_TRAINING;
+
+				if (!(data_training(&dram->chan[ch], ch,
+						    sdram_params,
+						    training_flag))) {
+					debug("%s: data trained for rank %d, ch %d\n",
+					      __func__, rank, ch);
+					break;
+				}
+			}
 		}
 		/* Computed rank with associated channel number */
 		sdram_params->ch[ch].cap_info.rank = rank;
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

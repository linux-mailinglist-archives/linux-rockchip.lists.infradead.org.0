Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6E093CFAA
	for <lists+linux-rockchip@lfdr.de>; Tue, 11 Jun 2019 16:55:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wWUCClXr62pYNdneRGDSJ55UrgpsnRoWoBloVUuo70k=; b=Qrl7QFPtSwGaR5
	2ZNWji259qf8fj4DLD0O4JGC2umy+72jfwREtHTIUVYlxWNVSdhcRmBfgqWwrR59mEfI1NQGqB8EO
	DR6g3gKM4bzRd5mnZtu1fgSx4YflvPKzTZsI4ehsXJMg18SzVmdaHNr8BsN3HdBZtsTdaAorTH+L1
	KFV/38yC/XBLPnRO+9X5Zjh5kbhel2qpZoxxJ7lQYuyU61JoHUjvzQssJqSf5c5HjkhoKDhcVorhO
	mFZ3UP3Dyl616bJmUbhBBK1pw5B5pl2RlnQyopyvhal3AB8gPiIzf6nhma6sssc/YuFxUXyp8mwkf
	3o+72njRB3+7ZpiD8EDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haiB9-0007AM-Nf; Tue, 11 Jun 2019 14:55:15 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haiB5-0006rY-3r
 for linux-rockchip@lists.infradead.org; Tue, 11 Jun 2019 14:55:13 +0000
Received: by mail-pg1-x542.google.com with SMTP id p10so1266928pgn.1
 for <linux-rockchip@lists.infradead.org>; Tue, 11 Jun 2019 07:55:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=YWFY8OB8qH64wLMK+dtpSQ0QVPAol0EQVIgUSITRXPQ=;
 b=j5VRfK3iruuwIJeO74aLyAdKRezSBTWAlUBU6MylBtx5anjDpPoDUY60AMiiGjcdWJ
 wD+jojw2BzBCZ755Hja0qpMHoIH+K6p8jHdaiCY2d7Sl2HvYbePdrm6FIu+I/rjtpfwP
 SmNdGoRl5V8aVwYF5spMJYfNDEXGPm5KKbA3c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=YWFY8OB8qH64wLMK+dtpSQ0QVPAol0EQVIgUSITRXPQ=;
 b=iYxeO0y/CN6ooOPboZtqycYfciPInxBp/lcqASkt0b2NuSKCyyVVbAKzbw1nm1Q+sS
 1KaftZkzdjKex4IfZsBjyiaOp7C1o7SQjTjK25h/c3NlJmwvYpK/LYrEIAs4YdrTUeOm
 9DQlqkjt25xuWQ+Ixs/FE4JvCoT1dtMfn+vIdQrvELlKl19FSo9Bv2h8Q25K0zo3mfbk
 cteoxROsAxDk3bObNU1ULL195jd0PJG7Oga3SwdM4fTt++8EIzdbBXbyJgH6uaZ/GEBH
 /8NzmRbj1rDeyseV9XDhnyidaIZ0tOkQXRP17Ir05oaTQ6iUkSKl0KzJW9t/1BL4glwm
 5tMg==
X-Gm-Message-State: APjAAAVPSA5nrquyYjFIJvWm3KP5GDpcP15SohWuXpQ7F2NDl8prFGk9
 kzC58GUGjosEr8ZiIx/S6Uodfg==
X-Google-Smtp-Source: APXvYqxXpAKZFSNDdlXmTcC5q2cZQ8LQH5z+JUU7H51+lkaWECkUWBSLXwcsYczFhWS2CrEZD2P1Hg==
X-Received: by 2002:aa7:8219:: with SMTP id k25mr83108651pfi.38.1560264910594; 
 Tue, 11 Jun 2019 07:55:10 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.18])
 by smtp.gmail.com with ESMTPSA id e9sm16206208pfn.154.2019.06.11.07.55.07
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Jun 2019 07:55:10 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH 50/92] ram: rk3399: Add rank detection support
Date: Tue, 11 Jun 2019 20:20:53 +0530
Message-Id: <20190611145135.21399-51-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190611145135.21399-1-jagan@amarulasolutions.com>
References: <20190611145135.21399-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_075511_338970_14772B61 
X-CRM114-Status: GOOD (  18.91  )
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

Right now the rk3399 sdram driver assume that the board
has configured with 2 channels, so any possibility to
enable single channel on the same driver will encounter
channel #1 data training failure.

Log:
U-Boot TPL board init
sdram_init: data training failed
rk3399_dmc_init DRAM init failed -5

So, add an algorithm that can capable to compute the active
or configured rank with associated channel like
a) do rank loop to compute the active rank, with associated
   channel numbers
b) then, succeed the data training only for configured channel
c) preserve the rank for given channel
d) do channel loop for setting the active channel
e) if given rank is zero or inactive on the specific channel,
   clear the timings for the associated channel
f) finally, return error if number of channels is zero

Tested in NanoPI-NEO4 since it support single channel sdram
configuration.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 112 +++++++++++++++++++++-------
 1 file changed, 87 insertions(+), 25 deletions(-)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 033b2730a6..b658d7d1ab 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -1257,13 +1257,52 @@ static unsigned char calculate_stride(struct rk3399_sdram_params *sdram_params)
 	return stride;
 }
 
+static void clear_channel_params(struct rk3399_sdram_params *params, u8 channel)
+{
+	params->ch[channel].cap_info.rank = 0;
+	params->ch[channel].cap_info.col = 0;
+	params->ch[channel].cap_info.bk = 0;
+	params->ch[channel].cap_info.bw = 32;
+	params->ch[channel].cap_info.dbw = 32;
+	params->ch[channel].cap_info.row_3_4 = 0;
+	params->ch[channel].cap_info.cs0_row = 0;
+	params->ch[channel].cap_info.cs1_row = 0;
+	params->ch[channel].cap_info.ddrconfig = 0;
+}
+
+static int pctl_init(struct dram_info *dram, struct rk3399_sdram_params *params)
+{
+	int channel;
+	int ret;
+
+	for (channel = 0; channel < 2; channel++) {
+		const struct chan_info *chan = &dram->chan[channel];
+		struct rk3399_cru *cru = dram->cru;
+		struct rk3399_ddr_publ_regs *publ = chan->publ;
+
+		phy_pctrl_reset(cru, channel);
+		phy_dll_bypass_set(publ, params->base.ddr_freq);
+
+		ret = pctl_cfg(dram, chan, channel, params);
+		if (ret < 0) {
+			printf("%s: pctl config failed\n", __func__);
+			return ret;
+		}
+
+		/* start to trigger initialization */
+		pctl_start(dram, params, channel);
+	}
+
+	return 0;
+}
+
 static int sdram_init(struct dram_info *dram,
 		      struct rk3399_sdram_params *sdram_params)
 {
 	unsigned char dramtype = sdram_params->base.dramtype;
 	unsigned int ddr_freq = sdram_params->base.ddr_freq;
-	struct rk3399_cru *cru = dram->cru;
-	int channel;
+	u32 training_flag = PI_READ_GATE_TRAINING;
+	int channel, ch, rank;
 	int ret;
 
 	debug("Starting SDRAM initialization...\n");
@@ -1275,37 +1314,60 @@ static int sdram_init(struct dram_info *dram,
 		return -E2BIG;
 	}
 
-	for (channel = 0; channel < 2; channel++) {
-		const struct chan_info *chan = &dram->chan[channel];
-		struct rk3399_ddr_publ_regs *publ = chan->publ;
+	for (ch = 0; ch < 2; ch++) {
+		sdram_params->ch[ch].cap_info.rank = 2;
+		for (rank = 2; rank != 0; rank--) {
+			ret = pctl_init(dram, sdram_params);
+			if (ret < 0) {
+				printf("%s: pctl init failed\n", __func__);
+				return ret;
+			}
 
-		phy_pctrl_reset(cru, channel);
-		phy_dll_bypass_set(publ, ddr_freq);
+			/* LPDDR2/LPDDR3 need to wait DAI complete, max 10us */
+			if (dramtype == LPDDR3)
+				udelay(10);
 
-		if (channel >= sdram_params->base.num_channels)
-			continue;
+			sdram_params->ch[ch].cap_info.rank = rank;
 
-		ret = pctl_cfg(dram, chan, channel, sdram_params);
-		if (ret < 0) {
-			printf("%s: pctl config failed\n", __func__);
-			return ret;
-		}
+			/*
+			 * LPDDR3 CA training msut be trigger before
+			 * other training.
+			 * DDR3 is not have CA training.
+			 */
+			if (sdram_params->base.dramtype == LPDDR3)
+				training_flag |= PI_CA_TRAINING;
 
-		/* start to trigger initialization */
-		pctl_start(dram, sdram_params, channel);
+			if (!(data_training(&dram->chan[ch], ch,
+					    sdram_params, training_flag)))
+				break;
+		}
+		/* Computed rank with associated channel number */
+		sdram_params->ch[ch].cap_info.rank = rank;
+	}
 
-		/* LPDDR2/LPDDR3 need to wait DAI complete, max 10us */
-		if (dramtype == LPDDR3)
-			udelay(10);
+	sdram_params->base.num_channels = 0;
+	for (channel = 0; channel < 2; channel++) {
+		const struct chan_info *chan = &dram->chan[channel];
+		struct sdram_cap_info *cap_info =
+			&sdram_params->ch[channel].cap_info;
 
-		if (data_training(chan, channel,
-				  sdram_params, PI_FULL_TRAINING)) {
-			printf("%s: data training failed\n", __func__);
-			return -EIO;
+		if (cap_info->rank == 0) {
+			clear_channel_params(sdram_params, channel);
+			continue;
+		} else {
+			sdram_params->base.num_channels++;
 		}
 
-		set_ddrconfig(chan, sdram_params, channel,
-			      sdram_params->ch[channel].cap_info.ddrconfig);
+		debug("Channel ");
+		debug(channel ? "1: " : "0: ");
+
+		set_ddrconfig(chan, sdram_params, channel, cap_info->ddrconfig);
+	}
+
+	if (sdram_params->base.num_channels == 0) {
+		printf("%s: ", __func__);
+		printf(" - %dMHz failed!\n", sdram_params->base.ddr_freq);
+		return -EINVAL;
 	}
 
 	sdram_params->base.stride = calculate_stride(sdram_params);
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

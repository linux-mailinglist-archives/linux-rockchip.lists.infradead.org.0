Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E89A6E7CC
	for <lists+linux-rockchip@lfdr.de>; Fri, 19 Jul 2019 17:10:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=i7Tyh+BXHeLJJD62+/uVf324ualTouZ9n+n6elLh18o=; b=fShfIah9GkC5js
	YCln+rCg0g3QxF2gjte6WuzdL+Fgd/OvlsH/xbmmSFL8q171aK0sOlBnvYFSbsgWJhAzv4VN0wezr
	Pv5+7nuSdokY7EUtyDyg6i83HtZFxz+I3Gi/R99Sttj56Uy8MRE8IBjb+3oSkcGAc2n0Vco7wJdiJ
	f8FpL4FrCcgsdA6nqq5RBX4i/j3t6ge85aWNOKflvQw93lpdwRhGnbWgBIPlDxzh0wgYXMNDCgKiu
	YavkHdcAxA6+4zlEHWQ+zrQTJsy7nAi879uN3xFSH0sM/iio4Y91icThYGwNqacS8Fo6IhopGsGb4
	gNrMCftCA56kfhTpt7Gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoUX4-00068w-3A; Fri, 19 Jul 2019 15:10:50 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoUWy-00067c-H6
 for linux-rockchip@lists.infradead.org; Fri, 19 Jul 2019 15:10:46 +0000
Received: by mail-pl1-x644.google.com with SMTP id ay6so15784182plb.9
 for <linux-rockchip@lists.infradead.org>; Fri, 19 Jul 2019 08:10:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=NeLfIdfK7H9VA7YCSPes36VLCiljfy+v8RT7YHrSbrE=;
 b=YHoqQF7Nklf+4KWb+LOe8y4GuDpafZ9sVQep1breaULryrvfVdA2VAI9dMlNpNPtPj
 EfuPTe24gSlQ4Iy1bvWj7BejV7Ko9Kp5lIUiffsj46Pq80HopsmVY0j12fcFhfDgHrTw
 /NM2m450CS4BTXq1rgJsQdEDDVOhuyOJQvFYI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=NeLfIdfK7H9VA7YCSPes36VLCiljfy+v8RT7YHrSbrE=;
 b=J9cmsWuJOA6NSiSuDs3DAIHxvLftmstuyV0Atr7GWfWxvozU25HGrd1I/TjvRZNAgH
 KoU+/O+gE+Fwcvb0J6jbelceY+tpFr0j2OKWdgv3Qm0TA1ExQZqx/H4k7L3WjhALG8Dp
 JsMQj2xt4mG0lniFxWob9w300op7IupHgBiZQra+s1cYnsn/eebfbvsrUA/VaPLHPLEd
 2CvFlFOyDwhL5bDZul+PE67PR3ioY3OG/gv+/CcLPbr104k04mY4Q7FK48bAws7uRAxJ
 BrVCr4R2xneMQQkPe80Xa+TO6/Ajmuq9Gb7jN/17fF2B42VKMUlOd9EwTVXN1oh89EnV
 yKgA==
X-Gm-Message-State: APjAAAWOu78jI9/3Q9uiBHr3t9nci68UYtmMxbrdhiTFOlgzO68Wu7Ec
 Y99b+/2qVTa6WacDFYEFZ9TCpg==
X-Google-Smtp-Source: APXvYqxtrRvslat83pypSb9jfUMsjzwsFfN+JWUGbZe3blpYpluPV5sWvAHL4L4gmAcK9rsmwULaHw==
X-Received: by 2002:a17:902:b48f:: with SMTP id
 y15mr58454105plr.268.1563549043290; 
 Fri, 19 Jul 2019 08:10:43 -0700 (PDT)
Received: from localhost.localdomain ([49.206.201.222])
 by smtp.gmail.com with ESMTPSA id b136sm30711299pfb.73.2019.07.19.08.10.38
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 19 Jul 2019 08:10:42 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v4 16/18] ram: rk3399: Add rank detection support
Date: Fri, 19 Jul 2019 20:40:30 +0530
Message-Id: <20190719151031.14684-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_081044_997962_ACDDDAF9 
X-CRM114-Status: GOOD (  19.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: gajjar04akash@gmail.com, Kever Yang <Kever.yang@rock-chips.com>,
 linux-rockchip@lists.infradead.org, Jagan Teki <jagan@amarulasolutions.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-amarula@amarulasolutions.com
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
Reviewed-by: Kever Yang <Kever.yang@rock-chips.com>
(add PI_READ_GATE_TRAINING for LPDDR3 to support rk3399-evb case)
Signed-off-by: Kever Yang <Kever.yang@rock-chips.com>
---
Changes for v4:
- add PI_READ_GATE_TRAINING, PI_WRITE_LEVELING for LPDDR3
  and PI_READ_GATE_TRAINING for other dram types. 

 drivers/ram/rockchip/sdram_rk3399.c | 122 +++++++++++++++++++++++-----
 1 file changed, 100 insertions(+), 22 deletions(-)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 8bbacb5275..9df2f840ab 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -1254,13 +1254,52 @@ static unsigned char calculate_stride(struct rk3399_sdram_params *params)
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
+		pctl_start(dram, channel);
+	}
+
+	return 0;
+}
+
 static int sdram_init(struct dram_info *dram,
 		      struct rk3399_sdram_params *params)
 {
 	unsigned char dramtype = params->base.dramtype;
 	unsigned int ddr_freq = params->base.ddr_freq;
-	struct rk3399_cru *cru = dram->cru;
-	int channel;
+	u32 training_flag = PI_READ_GATE_TRAINING;
+	int channel, ch, rank;
 	int ret;
 
 	debug("Starting SDRAM initialization...\n");
@@ -1272,36 +1311,75 @@ static int sdram_init(struct dram_info *dram,
 		return -E2BIG;
 	}
 
+	for (ch = 0; ch < 2; ch++) {
+		params->ch[ch].cap_info.rank = 2;
+		for (rank = 2; rank != 0; rank--) {
+			ret = pctl_init(dram, params);
+			if (ret < 0) {
+				printf("%s: pctl init failed\n", __func__);
+				return ret;
+			}
+
+			/* LPDDR2/LPDDR3 need to wait DAI complete, max 10us */
+			if (dramtype == LPDDR3)
+				udelay(10);
+
+			params->ch[ch].cap_info.rank = rank;
+
+			/*
+			 * LPDDR3 CA training msut be trigger before
+			 * other training.
+			 * DDR3 is not have CA training.
+			 */
+			if (params->base.dramtype == LPDDR3)
+				training_flag |= PI_CA_TRAINING;
+
+			if (!(data_training(&dram->chan[ch], ch,
+					    params, training_flag)))
+				break;
+		}
+		/* Computed rank with associated channel number */
+		params->ch[ch].cap_info.rank = rank;
+	}
+
+	params->base.num_channels = 0;
 	for (channel = 0; channel < 2; channel++) {
 		const struct chan_info *chan = &dram->chan[channel];
-		struct rk3399_ddr_publ_regs *publ = chan->publ;
-
-		phy_pctrl_reset(cru, channel);
-		phy_dll_bypass_set(publ, ddr_freq);
+		struct sdram_cap_info *cap_info = &params->ch[channel].cap_info;
+		u8 training_flag = PI_FULL_TRAINING;
 
-		if (channel >= params->base.num_channels)
+		if (cap_info->rank == 0) {
+			clear_channel_params(params, channel);
 			continue;
-
-		ret = pctl_cfg(dram, chan, channel, params);
-		if (ret < 0) {
-			printf("%s: pctl config failed\n", __func__);
-			return ret;
+		} else {
+			params->base.num_channels++;
 		}
 
-		/* start to trigger initialization */
-		pctl_start(dram, channel);
+		debug("Channel ");
+		debug(channel ? "1: " : "0: ");
 
-		/* LPDDR2/LPDDR3 need to wait DAI complete, max 10us */
-		if (dramtype == LPDDR3)
-			udelay(10);
+		/* LPDDR3 should have write and read gate training */
+		if (params->base.dramtype == LPDDR3)
+			training_flag = PI_WRITE_LEVELING |
+					PI_READ_GATE_TRAINING;
 
-		if (data_training(chan, channel, params, PI_FULL_TRAINING)) {
-			printf("%s: data training failed\n", __func__);
-			return -EIO;
+		if (params->base.dramtype != LPDDR4) {
+			ret = data_training(dram, channel, params,
+					    training_flag);
+			if (!ret) {
+				debug("%s: data train failed for channel %d\n",
+				      __func__, ret);
+				continue;
+			}
 		}
 
-		set_ddrconfig(chan, params, channel,
-			      params->ch[channel].cap_info.ddrconfig);
+		set_ddrconfig(chan, params, channel, cap_info->ddrconfig);
+	}
+
+	if (params->base.num_channels == 0) {
+		printf("%s: ", __func__);
+		printf(" - %dMHz failed!\n", params->base.ddr_freq);
+		return -EINVAL;
 	}
 
 	params->base.stride = calculate_stride(params);
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

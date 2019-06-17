Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1160A47B50
	for <lists+linux-rockchip@lfdr.de>; Mon, 17 Jun 2019 09:39:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KcpiMVeRwRDL+bwQu2M5OR8KqjHFZV54YUuWzL2BPZY=; b=gfM3Yl+RKFjnhV
	eKJwlcitGzXTiiryaoOQDVJUu9pVK595GHns28d6ml9BdpnaMMWHx0BZJpYxmfzbI86YaNU0v0gSh
	K7yUjrHsDKfuhlXX0UOpW7DYa0kYV/czK/mHy7UWYBw80gsbhC+TQkRhoRrNYJRWj9HDE5akcwB2Z
	RKnu8woCdA1EqmDa4us91tuRz4hVpHx/dGIeVCymohiXjda/5FvA7NcczHzsdU0nqKEAUwAlN3peL
	rGBvncd5YLGE7lhE0iDAa/VNxO0EwMfp2jZpWYVixJziDgUwsj/kuOZ5YErzHXvdCTKYeB17serFc
	U8KASauPg8lAMP5Lw6Jg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcmEX-0007hL-NP; Mon, 17 Jun 2019 07:39:17 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcmES-0007dJ-5W
 for linux-rockchip@lists.infradead.org; Mon, 17 Jun 2019 07:39:13 +0000
Received: by mail-pl1-x641.google.com with SMTP id p1so3733660plo.2
 for <linux-rockchip@lists.infradead.org>; Mon, 17 Jun 2019 00:39:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=nxs5FOM4waY6g+1f/+R0EuUrDWb9KbY56RwcjoNKzrM=;
 b=J0g3tHVAz4KKO+N5iJOgq91Pplz8uK85+liWWxBqNhcWaGgjlRLL+JBlLdDjKEsl2O
 0S1AXnXekdn4Vy8mbKxxuVKSdIknYpO/UUsyEnT39qbw6SeU4D8diPSTcTghdCJRsL47
 ufyIGBy+lto5CVowQvAqdMU3yKDJm6BxXqSsw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=nxs5FOM4waY6g+1f/+R0EuUrDWb9KbY56RwcjoNKzrM=;
 b=QMgjWlXroi6c79QmcUWkcLQP3L9jk9F/TIRkVhEs5aU2Jz27smz2ovQEWqywEeYCrX
 GVOeTtlXzJerBum1DcavwqvQIbSq/0kiMnVqS2DJL96Vkux3oH3yqlrfoY3xAU89/50W
 /UyNboHRAOk1vyVnONd47wsIuAKEwuHkXk1oAWnYqVjZMWbt28nMGMgvR7el4+AXR2nF
 xxIN7tdOOEccaxQfUWFJMo+NdLNZ+dvrHyI2u95qEc7Znonh1/eKcpHoARG+59KnUqUf
 AB9842qGIWSWFaDnV/Zxd1txdUJEl8SDGl/HndHvwdgP0FXVamgziS6jlwBnJOsr2HZe
 G5VQ==
X-Gm-Message-State: APjAAAXhwcdSnuKd50HORTmG21oTODj4JnDgTbTyl8F/HWEyTzfWGeiO
 mLfeiq1Swf0PdQFWsGRc9p2eoA==
X-Google-Smtp-Source: APXvYqxe6h8ubmNmR/5j6gbv1V/QBJyxHU0tct6Bj5e8VKR8d61hVjSh6iLoprAKt9hPCbgNTCIAgA==
X-Received: by 2002:a17:902:2006:: with SMTP id
 n6mr49800458pla.232.1560757151574; 
 Mon, 17 Jun 2019 00:39:11 -0700 (PDT)
Received: from localhost.localdomain ([49.206.203.245])
 by smtp.gmail.com with ESMTPSA id m41sm15205998pje.18.2019.06.17.00.39.08
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 00:39:10 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v2 51/99] ram: rk3399: Add rank detection support
Date: Mon, 17 Jun 2019 13:02:04 +0530
Message-Id: <20190617073252.27810-52-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190617073252.27810-1-jagan@amarulasolutions.com>
References: <20190617073252.27810-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_003912_240847_6C4C31E2 
X-CRM114-Status: GOOD (  19.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
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
 drivers/ram/rockchip/sdram_rk3399.c | 110 ++++++++++++++++++++++------
 1 file changed, 86 insertions(+), 24 deletions(-)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 87eda06055..a3acb75dba 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -1251,13 +1251,52 @@ static unsigned char calculate_stride(struct rk3399_sdram_params *params)
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
@@ -1269,36 +1308,59 @@ static int sdram_init(struct dram_info *dram,
 		return -E2BIG;
 	}
 
-	for (channel = 0; channel < 2; channel++) {
-		const struct chan_info *chan = &dram->chan[channel];
-		struct rk3399_ddr_publ_regs *publ = chan->publ;
+	for (ch = 0; ch < 2; ch++) {
+		params->ch[ch].cap_info.rank = 2;
+		for (rank = 2; rank != 0; rank--) {
+			ret = pctl_init(dram, params);
+			if (ret < 0) {
+				printf("%s: pctl init failed\n", __func__);
+				return ret;
+			}
 
-		phy_pctrl_reset(cru, channel);
-		phy_dll_bypass_set(publ, ddr_freq);
+			/* LPDDR2/LPDDR3 need to wait DAI complete, max 10us */
+			if (dramtype == LPDDR3)
+				udelay(10);
 
-		if (channel >= params->base.num_channels)
-			continue;
+			params->ch[ch].cap_info.rank = rank;
 
-		ret = pctl_cfg(dram, chan, channel, params);
-		if (ret < 0) {
-			printf("%s: pctl config failed\n", __func__);
-			return ret;
-		}
+			/*
+			 * LPDDR3 CA training msut be trigger before
+			 * other training.
+			 * DDR3 is not have CA training.
+			 */
+			if (params->base.dramtype == LPDDR3)
+				training_flag |= PI_CA_TRAINING;
 
-		/* start to trigger initialization */
-		pctl_start(dram, channel);
+			if (!(data_training(&dram->chan[ch], ch,
+					    params, training_flag)))
+				break;
+		}
+		/* Computed rank with associated channel number */
+		params->ch[ch].cap_info.rank = rank;
+	}
 
-		/* LPDDR2/LPDDR3 need to wait DAI complete, max 10us */
-		if (dramtype == LPDDR3)
-			udelay(10);
+	params->base.num_channels = 0;
+	for (channel = 0; channel < 2; channel++) {
+		const struct chan_info *chan = &dram->chan[channel];
+		struct sdram_cap_info *cap_info = &params->ch[channel].cap_info;
 
-		if (data_training(chan, channel, params, PI_FULL_TRAINING)) {
-			printf("%s: data training failed\n", __func__);
-			return -EIO;
+		if (cap_info->rank == 0) {
+			clear_channel_params(params, channel);
+			continue;
+		} else {
+			params->base.num_channels++;
 		}
 
-		set_ddrconfig(chan, params, channel,
-			      params->ch[channel].cap_info.ddrconfig);
+		debug("Channel ");
+		debug(channel ? "1: " : "0: ");
+
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

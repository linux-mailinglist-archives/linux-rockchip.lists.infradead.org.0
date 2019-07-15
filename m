Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7186B69AE1
	for <lists+linux-rockchip@lfdr.de>; Mon, 15 Jul 2019 20:30:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MOK6gW9pOKC8ErbhHqKjLJ6XwD+DNJAwMLJVKcAk+uE=; b=oXIIqRuRlYNgS1
	Qb4RR952fF1MJvdb5v7OAV5LRuobNy0krM62ZZ1vm9t7anwDeA+cZTpaL7wdul1exhREKleRP3L/q
	z8AUzi4EspgT9TT8If/+fjdURehpefP2NU4q8/ilmBwnqlRdPmnwEfZokCt8RQFwJPrhkRmfpSmwf
	dRR2WU7I6TDRZQv/84yzCyNK+QuoQvc8xMsqIlYqL/GfAbPoYfPmtctmOHsMINr1yMtGZAAJqfNkF
	yrQJFCsY6ErweSmoCLf7tTpHBLSnWygtJPxjDtFTe8vCZj7sRLWLQ1QQhusTSl7ommVB6HFBjLS0O
	LF4ZhICKH4RVhfvn9eYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn5jp-0002PR-EH; Mon, 15 Jul 2019 18:30:13 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn5jh-0001iZ-7W
 for linux-rockchip@lists.infradead.org; Mon, 15 Jul 2019 18:30:07 +0000
Received: by mail-pf1-x442.google.com with SMTP id i189so7809660pfg.10
 for <linux-rockchip@lists.infradead.org>; Mon, 15 Jul 2019 11:30:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=sqbrOYwvlaoeOAcZLAQeQHRuttDiSnuSC+eoRb7//98=;
 b=F9mZj79uQ/4vbxriBi3/a5DIfCaPwC33hGnbenaHD2AKqeP9pNvkHxk8bW1amvGuIh
 22gmbfttALShfo5TyY8rVql1kfjwiT2NrCJ5Txxd0oJdhocrTuu+hRcmz40UPCWtBivd
 xJ8WHOLBdPasxZ6LIp2aph04xlYUZtOGs9EpI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=sqbrOYwvlaoeOAcZLAQeQHRuttDiSnuSC+eoRb7//98=;
 b=tl0XyT/HP5YlD8ZlAOWj5Hc6nlsvwgrGkPDEQ+9N9mGmBbqJ4B9XpAbBKZRQA49eZT
 nJBVX1dVBT4KpFFAlIgrx0t1daDO9seWZAXVNp+wZG6gE9Dc36T2Dy99FcoZ+Pzkpgss
 nsQpqPTJambYogkGgqiLHIYWi0ZOHuKnSHhJsNqcomj7i3siQ2HGeDnpNaBw/FsHkFhd
 iKSouRZMjH4veLfp96UUdoeiGF8Y8w+hq8MijsrjT69rJUfaEFNDEXBcaJxXuFLzPbfj
 /GuIEHqfcl+03goTePlfQGGUcdn4Tbm5OphRV9bN0ptXxLxs4eAYIYCaJ2nSPIAqEV+L
 hmyQ==
X-Gm-Message-State: APjAAAWKmMA+ZEqJKHYFpMqPAafSOgRaGg+ukgIbUHJNs5uyGykPR+ac
 BUcqC02hEuQaWiQml+GVbyNJ7w==
X-Google-Smtp-Source: APXvYqyX5FW1HrlEjn0zT84YqgHPFNR+S1tf2IaigsXYUWm5iHrzzNBg4QWDWqZRqERJe8WBuvcAVw==
X-Received: by 2002:a17:90a:35e6:: with SMTP id
 r93mr31007925pjb.20.1563215404504; 
 Mon, 15 Jul 2019 11:30:04 -0700 (PDT)
Received: from localhost.localdomain ([49.206.201.107])
 by smtp.gmail.com with ESMTPSA id y133sm20250075pfb.28.2019.07.15.11.30.01
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 15 Jul 2019 11:30:04 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v3 16/18] ram: rk3399: Add rank detection support
Date: Mon, 15 Jul 2019 23:58:54 +0530
Message-Id: <20190715182856.21688-17-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190715182856.21688-1-jagan@amarulasolutions.com>
References: <20190715182856.21688-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_113005_311076_A03E73EE 
X-CRM114-Status: GOOD (  19.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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
index 8bbacb5275..b83955f94e 100644
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
@@ -1272,36 +1311,59 @@ static int sdram_init(struct dram_info *dram,
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

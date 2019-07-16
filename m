Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2D0E6A810
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 14:02:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nq3SxCF7oxMh4GY/4nClxpzpppOPtuqMwLuvh9uco2k=; b=ZtXT/PWMX75U4p
	z2K6gYFx73X/3L9BAzeR162BX4MZ2zu8/CE03fbbV2D7wxP1mUY5AH18gAd8M19AYM4lKRPing9tP
	SC1TMZFZWkGSpjPAZS+mr6ZLWqH9mW7yiYK5VDqifSlpa3elOo0vPGNRN7nng6fj4ZkRUV7VTaUZH
	cIvA2gw4AfbyapXwvXUhdnedvD6H2NS18ILqRVlOAYIFVWKCtylxSyW1r23k3nkeL80Conxp3x02Q
	LcoHSqXSpCAAJ1wvgMUMgUcvBfw9JCed4IDDKCQvbE8mue2neQi4TNarXWzPIF7rJEqU0mbcrBcBM
	5WUQpYO40tD/HVzMD4+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnMA1-0008Iu-1C; Tue, 16 Jul 2019 12:02:21 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnM87-0006ay-5U
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 12:00:24 +0000
Received: by mail-pl1-x641.google.com with SMTP id m9so9957458pls.8
 for <linux-rockchip@lists.infradead.org>; Tue, 16 Jul 2019 05:00:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=VvWydEF9oVgUS+CUD5vS0LDJwAA7MW8cQAg1qTdiTb4=;
 b=HYCN8itOIv4g4ZqFy+CHi2/qIuKtDYdinzn5QWJAWtg/84cUS4ns+RQBc7sKoC+h4D
 h6GOlDKBclg4ina23Ig2rX+yPfMoqlfsvZ/ell0ABkGubvq6s/50Si36U7jzQpPAj6z/
 FERxDkCGs0N6jaUB5DoDVYoVEewqhMy0t/TvM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=VvWydEF9oVgUS+CUD5vS0LDJwAA7MW8cQAg1qTdiTb4=;
 b=deZrpp/69zedvWiNRI71np5pljiXwoClfx94L4VtHNQrFNgGMPWHGdgLnzEK/PdDC+
 IeX8d51bvGiHGBwafWW2g27zYWIpfUnKONbpO0vghdgsRaOWAYrvkK1Gsp0PdvVmlddW
 MGy7yMxrBZBX2l1GF/DprO0zEHdsHMgXEFWjAmOCi5rXjv3LdlmsUyubaWHN5A8lryPs
 L9rzbh4jOcEl3Tp28XL0UMVYUfaI9GzCH4iakmKjO7zyDMK+dfaB/p/OOgDt8JoUkOJX
 opP/QUiq5w+Uv8yoqWBJYVlGqMbTLoQELtq1hmtIzM6LwF37nidDnswAsrfJGEav3P69
 +UaA==
X-Gm-Message-State: APjAAAUbqtW2+ap7gijUrJ+2zkAlOTqZ1uzIdEGFECbwFA9uaHUH4aQ1
 xpI4o+0ipl4mcJ0st3HV0I43kw==
X-Google-Smtp-Source: APXvYqwnlxRushycrvcvoxZlJp2IYOh7SaZegth4FifzAIwpaxWcxL90s9IHU2JRlw1e7WNDFsOw9g==
X-Received: by 2002:a17:902:f46:: with SMTP id
 64mr35065008ply.235.1563278422580; 
 Tue, 16 Jul 2019 05:00:22 -0700 (PDT)
Received: from localhost.localdomain ([49.206.201.107])
 by smtp.gmail.com with ESMTPSA id z24sm36269566pfr.51.2019.07.16.05.00.19
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 16 Jul 2019 05:00:21 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v3 41/57] ram: rk3399: Simplify data training first argument
Date: Tue, 16 Jul 2019 17:27:29 +0530
Message-Id: <20190716115745.12585-42-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190716115745.12585-1-jagan@amarulasolutions.com>
References: <20190716115745.12585-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_050023_389503_8306D166 
X-CRM114-Status: GOOD (  11.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
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

data training is using chan_info as first argument with
channel number as second argument instead of that use
dram_info as first argument so-that we can get the
chan_info at data training definition.

This was the argument handling is meaningful, readable
and it would help to add similar data training for
lpddr4 in future.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index e3f1abf7e7..1aaaeb5b88 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -1286,10 +1286,11 @@ static int data_training_wdql(const struct chan_info *chan, u32 channel,
 	return 0;
 }
 
-static int data_training(const struct chan_info *chan, u32 channel,
+static int data_training(struct dram_info *dram, u32 channel,
 			 const struct rk3399_sdram_params *params,
 			 u32 training_flag)
 {
+	struct chan_info *chan = &dram->chan[channel];
 	u32 *denali_phy = chan->publ->denali_phy;
 	int ret;
 
@@ -1498,8 +1499,7 @@ static int switch_to_phy_index1(struct dram_info *dram,
 	for (channel = 0; channel < ch_count; channel++) {
 		denali_phy = dram->chan[channel].publ->denali_phy;
 		clrsetbits_le32(&denali_phy[896], (0x3 << 8) | 1, 1 << 8);
-		ret = data_training(&dram->chan[channel], channel,
-				    params, PI_FULL_TRAINING);
+		ret = data_training(dram, channel, params, PI_FULL_TRAINING);
 		if (ret < 0) {
 			debug("index1 training failed\n");
 			return ret;
@@ -1662,8 +1662,7 @@ static int sdram_init(struct dram_info *dram,
 			if (params->base.dramtype == LPDDR3)
 				training_flag |= PI_CA_TRAINING;
 
-			if (!(data_training(&dram->chan[ch], ch,
-					    params, training_flag)))
+			if (!(data_training(dram, ch, params, training_flag)))
 				break;
 		}
 		/* Computed rank with associated channel number */
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

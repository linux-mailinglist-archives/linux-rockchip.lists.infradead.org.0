Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41F5E47B69
	for <lists+linux-rockchip@lfdr.de>; Mon, 17 Jun 2019 09:40:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vAjf4R1lz+MeG4X+Q1ViWyUemqyD3I/OwJHkmEQc9TI=; b=Wh8iYLETXYJIuL
	DF+6Rpq7bk0kkuErwXh8aVxUwmZTbPjNEQqMhCToB/ztEvN1PYLB1xe1DDaK07cYpBZQ1uOrdhiDp
	OnSuQEV0urDoPi8GWLzCjKTSxgn3TKychQhnwowh4ingMv/6KqOPe+KEZ9jWqvsKwjMAD5YU1/NVn
	J1HkNAeEAZAr5T2vQeb9ctp0UAg056VW6IUEK3J9qONtJkQYIgVqXJUn006UBuromVGyYfeKcg/iM
	ajxzKbkweON/bkb9aqDHrUU03ErahtlQI+nR9NSDBW5nFvYSZrHekGnQLXPSiJ+n2hVnp5TK6lLgc
	nmxB6aKcKCg5zEREIuwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcmFg-0001NI-90; Mon, 17 Jun 2019 07:40:28 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcmFb-0001Kq-Pp
 for linux-rockchip@lists.infradead.org; Mon, 17 Jun 2019 07:40:25 +0000
Received: by mail-pf1-x444.google.com with SMTP id t16so5181490pfe.11
 for <linux-rockchip@lists.infradead.org>; Mon, 17 Jun 2019 00:40:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=t8d2qnZ3kav7gpkrZS6dlrZ+F/FMvW3L+8hK+xgO7jQ=;
 b=LUX5HCfCqKsiKUg+7MDKKQsXg3fyx99MlPuCpVzeLNyaGuS2hJ8JApE7wOrkZFniss
 uUjyCc1IViyDWhPA3pA3KSxV2E0C2zV2vfkQn3oxZQYvNLbIn/LEVzqnIjHop7Udo13f
 pERZdBku09uPAnjaSnN+NL0PPzWWCMOcL/c+c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=t8d2qnZ3kav7gpkrZS6dlrZ+F/FMvW3L+8hK+xgO7jQ=;
 b=qRqYte8txXshBBDuXgch5Va8I28rnjlHFTVwwks5Jle/+Kt1QM5rCxEEQaG3X2XrZI
 hONZwt3xZQkIv9l6Ki/YpesLR4vIt1mc2VnLH70+E+/AWERPwmnF0rqWiDqRt1h7Lc4l
 ksG6i9zHKza8Ur/b/cL5iCwF7nZANZrzftbAy7+4KrSEeFRRwUeGXuRKKHtun54Sb2PR
 /HzlCHeV4fX0kpJn/2CZYqcc3iWH7V9xxgmHNpiyhUqBb8ksrIvE/FBDgvpmfVbyy4vy
 fiKf2VVXJ/dUOp73xln22k1BiYgLX5m01UlSvfP/v9SdiCdrtKcquIOsyOvgc7y8E99a
 seDQ==
X-Gm-Message-State: APjAAAVg03RSoHno6IZ+KhvozZCe70wzGKoGt5bwUQxKHx7iOaL4mMh/
 RjaLgM9b1+oALz3ITAGvxiToVQ==
X-Google-Smtp-Source: APXvYqxQEXDM7w8E1LFjL1GZkHbOJbGJ3UuB1mdpykWL4V6O6ntbQev+2SyFt7NMEvaZGmxnZ6xC/Q==
X-Received: by 2002:a17:90a:ab0b:: with SMTP id
 m11mr3432830pjq.73.1560757223299; 
 Mon, 17 Jun 2019 00:40:23 -0700 (PDT)
Received: from localhost.localdomain ([49.206.203.245])
 by smtp.gmail.com with ESMTPSA id m41sm15205998pje.18.2019.06.17.00.40.20
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 00:40:22 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v2 73/99] ram: sdram: Configure lpddr4 tsel rd,
 wr based on IO settings
Date: Mon, 17 Jun 2019 13:02:26 +0530
Message-Id: <20190617073252.27810-74-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190617073252.27810-1-jagan@amarulasolutions.com>
References: <20190617073252.27810-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_004023_834144_5B5DA56A 
X-CRM114-Status: GOOD (  12.42  )
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

Now we have IO settings available for all supported sdram
frequencies, so retrieve these IO settings and make used
for LPDDR4 ds odt configuration.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 42 ++++++++++++++++++++++++-----
 1 file changed, 36 insertions(+), 6 deletions(-)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 4de5a208f5..22c1a66185 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -184,6 +184,33 @@ struct io_setting {
 	},
 };
 
+/**
+ * phy = 0, PHY boot freq
+ * phy = 1, PHY index 0
+ * phy = 2, PHY index 1
+ */
+static struct io_setting *
+lpddr4_get_io_settings(const struct rk3399_sdram_params *params, u32 mr5)
+{
+	struct io_setting *io = NULL;
+	u32 n;
+
+	for (n = 0; n < ARRAY_SIZE(lpddr4_io_setting); n++) {
+		io = &lpddr4_io_setting[n];
+
+		if (io->mr5 != 0) {
+			if (io->mhz >= params->base.ddr_freq &&
+			    io->mr5 == mr5)
+				break;
+		} else {
+			if (io->mhz >= params->base.ddr_freq)
+				break;
+		}
+	}
+
+	return io;
+}
+
 static void *get_ddrc0_con(struct dram_info *dram, u8 channel)
 {
 	return (channel == 0) ? &dram->grf->ddrc0_con0 : &dram->grf->ddrc0_con1;
@@ -524,7 +551,7 @@ static int phy_io_config(const struct chan_info *chan,
 }
 
 static void set_ds_odt(const struct chan_info *chan,
-		       const struct rk3399_sdram_params *params)
+		       const struct rk3399_sdram_params *params, u32 mr5)
 {
 	u32 *denali_phy = chan->publ->denali_phy;
 
@@ -533,19 +560,22 @@ static void set_ds_odt(const struct chan_info *chan,
 	u32 tsel_idle_select_n, tsel_rd_select_n;
 	u32 tsel_wr_select_dq_p, tsel_wr_select_ca_p;
 	u32 tsel_wr_select_dq_n, tsel_wr_select_ca_n;
+	struct io_setting *io = NULL;
 	u32 reg_value;
 
 	if (params->base.dramtype == LPDDR4) {
+		io = lpddr4_get_io_settings(params, mr5);
+
 		tsel_rd_select_p = PHY_DRV_ODT_HI_Z;
-		tsel_rd_select_n = PHY_DRV_ODT_240;
+		tsel_rd_select_n = io->rd_odt;
 
 		tsel_idle_select_p = PHY_DRV_ODT_HI_Z;
 		tsel_idle_select_n = PHY_DRV_ODT_240;
 
-		tsel_wr_select_dq_p = PHY_DRV_ODT_40;
+		tsel_wr_select_dq_p = io->wr_dq_drv;
 		tsel_wr_select_dq_n = PHY_DRV_ODT_40;
 
-		tsel_wr_select_ca_p = PHY_DRV_ODT_40;
+		tsel_wr_select_ca_p = io->wr_ca_drv;
 		tsel_wr_select_ca_n = PHY_DRV_ODT_40;
 	} else if (params->base.dramtype == LPDDR3) {
 		tsel_rd_select_p = PHY_DRV_ODT_240;
@@ -723,7 +753,7 @@ static void pctl_start(struct dram_info *dram, u8 channel)
 }
 
 static int pctl_cfg(struct dram_info *dram, const struct chan_info *chan,
-		    u32 channel, const struct rk3399_sdram_params *params)
+		    u32 channel, struct rk3399_sdram_params *params)
 {
 	u32 *denali_ctl = chan->pctl->denali_ctl;
 	u32 *denali_pi = chan->pi->denali_pi;
@@ -805,7 +835,7 @@ static int pctl_cfg(struct dram_info *dram, const struct chan_info *chan,
 	copy_to_reg(&denali_phy[512], &params_phy[512], (549 - 512 + 1) * 4);
 	copy_to_reg(&denali_phy[640], &params_phy[640], (677 - 640 + 1) * 4);
 	copy_to_reg(&denali_phy[768], &params_phy[768], (805 - 768 + 1) * 4);
-	set_ds_odt(chan, params);
+	set_ds_odt(chan, params, 0);
 
 	/*
 	 * phy_dqs_tsel_wr_timing_X 8bits DENALI_PHY_84/212/340/468 offset_8
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

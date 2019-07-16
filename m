Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E5F36A809
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 14:02:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T1tv/T7iJW9rJ7u9vC1/vPiPV5MDvXuPxjB1aWfFyXU=; b=rOK6KFXuTDHgXR
	1vHSbTPGFDOT4Puem0AhdYg7BJKu7oe9BZogtlSdpEGZq5J/NjIYRDqrx65steloJHWcoMtOlTQgR
	o/zlDjOtCvHAqR3GSanWWDLQUJDlPnTdSTTRxPGQ5gp/5TgLrbyqDGmx4fVGQ135scKOC3N9w+xhD
	ko0aOPJeqBivY8cnQkweIftpIitqU82RJdSwZE4fcQzVuVwzy7Y1h9VN0Snz+WWx7Kvj7KXeWKrdF
	fcOpD0nEFE3nWkLuclUtNOiIW92iotLTiw908XudEpNJNQh0OqfdxFbRBcApQgNqXCxqzcVIQ7XHC
	WA34qtOQXkE+wAcT9UQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnM9i-000836-M5; Tue, 16 Jul 2019 12:02:03 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnM7i-00057D-7Z
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 12:00:00 +0000
Received: by mail-pl1-x644.google.com with SMTP id b3so10007989plr.4
 for <linux-rockchip@lists.infradead.org>; Tue, 16 Jul 2019 04:59:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=JMHA9/oGc0uz7sXCCFBrC03P2fQlwGuty6qYiMMD5M0=;
 b=YoO5VsGtwBkTbMLYpRP5BTMj7eCzp1I28rr80+2ZUTuaKCdckPEFmhMD3mHMIqNCws
 r1NGxRYR7oSXsf+5DgmnNMLMlHjVuFNLuM7iN9b/sg6ItlKL7aXdQppYMBiR6oiIc7pM
 95qihNZroRI7PJC1OXcWT1NakZUrp4Gdtq6qk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=JMHA9/oGc0uz7sXCCFBrC03P2fQlwGuty6qYiMMD5M0=;
 b=OPme/96AXZp8GJsDIzNb9PIbR0Caw6qbdZdXP7Wy0l7vhJY0Oo/R68yOWnYKWeVU+q
 BYT2kgbq8xhycMhliu+nW3IEpzo+iep1om7mK4kcub94laH0eAjPKMosq3Il2PTXTpyO
 7ETNTtBOXSXocwfnWVfugNTAgVl6yECbcmngdjLH1YELE+xG26CKz2i5TLhXAS9sNqRJ
 AI/8HEipciWmLim/jOTeYNc0iP+qxxC6C8iCSiTJClOg2xefu0uizPpIrHJTGgLa9dhg
 zQTe4iwencDp8ppT/QrI0UUGYwEURAqJxYSMQ4AiUUCxZAHFFGP+pkQGHY5wMTy7wp/y
 zJUw==
X-Gm-Message-State: APjAAAUlkUd5kyIwRqTXx7fLoTAlHdgarej+j8c9z50rEk/ORwyjs3o2
 gOdgYnMtFLFR8z6/B7XNMAWYXQ==
X-Google-Smtp-Source: APXvYqyv31DvNSS+iqSsC/55foaF7A+Jz8ubY/h1r4iFfzFX5wgt7pLmkjV2HxAnETXB6KmzrC3Niw==
X-Received: by 2002:a17:902:2aa9:: with SMTP id
 j38mr33237354plb.206.1563278397609; 
 Tue, 16 Jul 2019 04:59:57 -0700 (PDT)
Received: from localhost.localdomain ([49.206.201.107])
 by smtp.gmail.com with ESMTPSA id z24sm36269566pfr.51.2019.07.16.04.59.54
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 16 Jul 2019 04:59:57 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v3 34/57] ram: sdram: Configure lpddr4 tsel rd,
 wr based on IO settings
Date: Tue, 16 Jul 2019 17:27:22 +0530
Message-Id: <20190716115745.12585-35-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190716115745.12585-1-jagan@amarulasolutions.com>
References: <20190716115745.12585-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_045958_355174_0A8D73B6 
X-CRM114-Status: GOOD (  11.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
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

Now we have IO settings available for all supported sdram
frequencies, so retrieve these IO settings and make used
for LPDDR4 ds odt configuration.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 42 ++++++++++++++++++++++++-----
 1 file changed, 36 insertions(+), 6 deletions(-)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 95d9f3a88b..1b8ce5160f 100644
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

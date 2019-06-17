Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB32347B71
	for <lists+linux-rockchip@lfdr.de>; Mon, 17 Jun 2019 09:40:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N2wX6+1WuH9NE60FV0MnzyM+SdzMoydhXiKwLrZLSMc=; b=HZS70XvMLi7jwI
	aqf4BAv8QxOTvZ+ovWETVDrhW13dWjx6ADd0IcBz6se+bQVqN+JAxTFx9cmcAebIQ8TKCHKrNpFHy
	fMvK9SYECUguBpGXOVLuU6J/z+8Dhqxx67aXphly+l0tJQFT/n1PbKmBEG8zSRfc1l8HN/zKJ8M13
	iQ/frW0C2K1I2soLEDEvGHqeEAae0t9g2HoUjQX4eRmXbWP+MKs+haljC+chI3l16N6/uSCQdXO8T
	LM6NkLlB7lQ/t6uc6dysVdCx8C6a8qOLfaX/oon0oI78Gq8ay9LvpDJFgE09ncIcE8Ks14NzvEQxA
	MbjCpVXIjSRiWzqYRhKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcmG7-0001ix-PG; Mon, 17 Jun 2019 07:40:55 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcmG2-0001gV-IR
 for linux-rockchip@lists.infradead.org; Mon, 17 Jun 2019 07:40:52 +0000
Received: by mail-pg1-x544.google.com with SMTP id n65so855831pga.4
 for <linux-rockchip@lists.infradead.org>; Mon, 17 Jun 2019 00:40:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=5ZvAC+l3x0po8psNwv8zcgjebp2Xr4SvK0wKkKf1BIo=;
 b=d7ng15FLSCGXV9k1NsAt/0gGC9Nz4lFZ7ZBl/ure9XAAkuCmRq0H+6tOG01jzPF4sf
 NaRUgH/OdvUQYuVAaKWNlWyLCk4QlqEYRT1HSjsSdHw3v2yor2oTThy3ly8LaDFljzsI
 UNv+Gmj5Kf2PYi0eoX+HZDvzkGaNnB8bzaqiI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=5ZvAC+l3x0po8psNwv8zcgjebp2Xr4SvK0wKkKf1BIo=;
 b=QOvnmCyGdiOggC8V99JUHWoel55OXXNhHCNQu1A0AJLyJZyPtCwrfGAHug6tFXHyBX
 AUT2E1t5IWITSAxecKQeoLhOqllo6SXR5FBO0AO5SosGO4yg9gLFi37SjN4gl0zZkx6Q
 MbLYuV++y6yN72pYTmxyi5ED0WNHYGWA08PF+fLuc8/qeqC+Fn2eEq6wl8gMHIlF/rHZ
 eSXZ+sVBcILywGVCp3LuOUOdCU0Ll/Wsu1F6CTEPO40QpIhZHTqKEBvzuhaUGQS29BbB
 Cs4qugxJkb+haD8lce2dgZDYKgSKRASLR6CjK/LFPuH3LYbaYWgaM9fMm6b2BP9iRVy6
 TwAw==
X-Gm-Message-State: APjAAAVexOXVWBFr3HhU2kIztqfvPy/L+kxnxOuoetjcZ9KTL7U/P/o0
 EN6x8UdUubEOJVM0fQ2oLONpRw==
X-Google-Smtp-Source: APXvYqw8dOH6qOC4WfRZF7Hhv2YX8uXtk/ss1l+Du+xvBJD/Pr9b6W1p9yhXCVMgQWKrfDCgq3jTOQ==
X-Received: by 2002:a65:4c44:: with SMTP id l4mr3158197pgr.62.1560757249930;
 Mon, 17 Jun 2019 00:40:49 -0700 (PDT)
Received: from localhost.localdomain ([49.206.203.245])
 by smtp.gmail.com with ESMTPSA id m41sm15205998pje.18.2019.06.17.00.40.47
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 00:40:49 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v2 81/99] ram: rk3399: Handle data training via ops
Date: Mon, 17 Jun 2019 13:02:34 +0530
Message-Id: <20190617073252.27810-82-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190617073252.27810-1-jagan@amarulasolutions.com>
References: <20190617073252.27810-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_004050_727426_D68BF199 
X-CRM114-Status: GOOD (  14.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
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

data training can be even required for lpddr4 and we
need to keep the lpddr4 code to compile only for relevant
boards which do support lpddr4.

For this requirement, and for code readability handle
data training via sdram_rk3399_ops and same will update
in future while supporting lpddr4 code.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 43 ++++++++++++++++++++++-------
 1 file changed, 33 insertions(+), 10 deletions(-)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 927c7cced3..e2b311193d 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -65,11 +65,17 @@ struct dram_info {
 	struct rk3399_pmucru *pmucru;
 	struct rk3399_pmusgrf_regs *pmusgrf;
 	struct rk3399_ddr_cic_regs *cic;
+	const struct sdram_rk3399_ops *ops;
 #endif
 	struct ram_info info;
 	struct rk3399_pmugrf_regs *pmugrf;
 };
 
+struct sdram_rk3399_ops {
+	int (*data_training)(struct dram_info *dram, u32 channel, u8 rank,
+			     struct rk3399_sdram_params *sdram);
+};
+
 #if defined(CONFIG_TPL_BUILD) || \
 	(!defined(CONFIG_TPL) && defined(CONFIG_SPL_BUILD))
 
@@ -1465,6 +1471,23 @@ static void dram_all_config(struct dram_info *dram,
 	clrsetbits_le32(&dram->cru->glb_rst_con, 0x3, 0x3);
 }
 
+static int default_data_training(struct dram_info *dram, u32 channel, u8 rank,
+				 struct rk3399_sdram_params *params)
+{
+	u8 training_flag = PI_READ_GATE_TRAINING;
+
+	/*
+	 * LPDDR3 CA training msut be trigger before
+	 * other training.
+	 * DDR3 is not have CA training.
+	 */
+
+	if (params->base.dramtype == LPDDR3)
+		training_flag |= PI_CA_TRAINING;
+
+	return data_training(dram, channel, params, training_flag);
+}
+
 static int switch_to_phy_index1(struct dram_info *dram,
 				const struct rk3399_sdram_params *params)
 {
@@ -1627,7 +1650,6 @@ static int sdram_init(struct dram_info *dram,
 {
 	unsigned char dramtype = params->base.dramtype;
 	unsigned int ddr_freq = params->base.ddr_freq;
-	u32 training_flag = PI_READ_GATE_TRAINING;
 	int channel, ch, rank;
 	int ret;
 
@@ -1655,16 +1677,12 @@ static int sdram_init(struct dram_info *dram,
 
 			params->ch[ch].cap_info.rank = rank;
 
-			/*
-			 * LPDDR3 CA training msut be trigger before
-			 * other training.
-			 * DDR3 is not have CA training.
-			 */
-			if (params->base.dramtype == LPDDR3)
-				training_flag |= PI_CA_TRAINING;
-
-			if (!(data_training(dram, ch, params, training_flag)))
+			ret = dram->ops->data_training(dram, ch, rank, params);
+			if (!ret) {
+				debug("%s: data trained for rank %d, ch %d\n",
+				      __func__, rank, ch);
 				break;
+			}
 		}
 		/* Computed rank with associated channel number */
 		params->ch[ch].cap_info.rank = rank;
@@ -1744,6 +1762,10 @@ static int conv_of_platdata(struct udevice *dev)
 }
 #endif
 
+static const struct sdram_rk3399_ops rk3399_ops = {
+	.data_training = default_data_training,
+};
+
 static int rk3399_dmc_init(struct udevice *dev)
 {
 	struct dram_info *priv = dev_get_priv(dev);
@@ -1761,6 +1783,7 @@ static int rk3399_dmc_init(struct udevice *dev)
 		return ret;
 #endif
 
+	priv->ops = &rk3399_ops;
 	priv->cic = syscon_get_first_range(ROCKCHIP_SYSCON_CIC);
 	priv->grf = syscon_get_first_range(ROCKCHIP_SYSCON_GRF);
 	priv->pmugrf = syscon_get_first_range(ROCKCHIP_SYSCON_PMUGRF);
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

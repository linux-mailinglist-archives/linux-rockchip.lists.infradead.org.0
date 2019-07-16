Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FA236A813
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 14:02:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uSOclTcsYMFq9KuKw/8VCc6XXlQdCbtnL19IDOBPj+0=; b=SvZ2qvnO0Zw3XT
	W27+HjAUEh7uMIz8gDKQx/goRiBghNZQD8eXfKV8wS2mCCI/X0AXW9Jv4wR4Eef0AZ1tIc+hCzVOb
	hoZbeMPTS6ZSeL0NtGDkgLNxrw3hioVPtOvpgsgXVik680dCCMgISoC/KJWgCs6sHZyqlY8+ZRA0Y
	TyiPI7l62i9fWyQ2l83dXDWY7f7aK8P3BUGxPv80rtDwdCHNCWz9WeBOgNdgUG3IUO8v+Jc28AHJ5
	l6CJyJN6k4rDrikdMIGEByq3MGVy/VY3/JUycJVQjQINHOh5132/ufkoZu9+cZu8EafC7AEsEaz8J
	BVEl1QV1sB41kXKtCV2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnMA3-0008Lp-LH; Tue, 16 Jul 2019 12:02:23 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnM8A-0006e3-Rb
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 12:00:28 +0000
Received: by mail-pf1-x442.google.com with SMTP id c73so8999369pfb.13
 for <linux-rockchip@lists.infradead.org>; Tue, 16 Jul 2019 05:00:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=pvEnnrz0lb6LWaNsBzHfmbnfvu86FZMrrMpEWA2uhEI=;
 b=EIdIpU5FBAXI1xKG+1XTCJ/yhTnmzopcp7E6SGER73S/tsNPdzBIksm79tyhRmpRID
 NVyuVdADLmJvXJd0Vt4Cavnyvk8g9yGftZgEn2qE75w0m2mkJke0QQdGc7XQuX2RQU1k
 BfHFkjNX/1i3a8Cp6A2G7B8e3oiHtKfme5hTY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=pvEnnrz0lb6LWaNsBzHfmbnfvu86FZMrrMpEWA2uhEI=;
 b=d8dIssJlZrfNNtuII7orDVwC+Hrrk1Sn7jNvBdbLKh99404hV2nbcc7oMlJHwvhFFI
 j/rCFBXzdxNpHlXIRA2JFeJLicuT1nmhVJrGfba/pnObmrHMIRfSIxxUdILZrcO23W3q
 QlUbJbV/qJd+OOsvzDdbAynDmmCyvndVi+Q8bU/mcs0/zcg8mJc+KqP+SX8+HiCKmygC
 YFk1/ZngBXCDFzqER/wu2Qd1yzqhOWeUQDjP49NLhw3vhnrCPNTU8NhP3LWa8/hWQX4C
 jukkmkKNmad5LMtfMQNKJ3izYLpc4pNoOmh0GnjCAG0JiQl0pRd4xHl+5I7u8bOs8zmW
 q4bA==
X-Gm-Message-State: APjAAAVDV5vhUSrwxI5dj904CMFUPnP+t5HePQFNK91rQeAiRhWPnSG9
 L1vLyzgkrH5J5XU8SEw2vDSbVg==
X-Google-Smtp-Source: APXvYqyawtcy0B0iq6YAsO4xDtQAcSM8EJo04vDJO1ZsTkb1bC6rs5hpnKZuenoosfDDjYV78avyKw==
X-Received: by 2002:a63:550e:: with SMTP id j14mr29996532pgb.302.1563278426206; 
 Tue, 16 Jul 2019 05:00:26 -0700 (PDT)
Received: from localhost.localdomain ([49.206.201.107])
 by smtp.gmail.com with ESMTPSA id z24sm36269566pfr.51.2019.07.16.05.00.22
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 16 Jul 2019 05:00:25 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v3 42/57] ram: rk3399: Handle data training via ops
Date: Tue, 16 Jul 2019 17:27:30 +0530
Message-Id: <20190716115745.12585-43-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190716115745.12585-1-jagan@amarulasolutions.com>
References: <20190716115745.12585-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_050027_159584_0418BF62 
X-CRM114-Status: GOOD (  13.90  )
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
index 1aaaeb5b88..da01f08732 100644
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
 
@@ -1464,6 +1470,23 @@ static void dram_all_config(struct dram_info *dram,
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
@@ -1626,7 +1649,6 @@ static int sdram_init(struct dram_info *dram,
 {
 	unsigned char dramtype = params->base.dramtype;
 	unsigned int ddr_freq = params->base.ddr_freq;
-	u32 training_flag = PI_READ_GATE_TRAINING;
 	int channel, ch, rank;
 	int ret;
 
@@ -1654,16 +1676,12 @@ static int sdram_init(struct dram_info *dram,
 
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
@@ -1743,6 +1761,10 @@ static int conv_of_platdata(struct udevice *dev)
 }
 #endif
 
+static const struct sdram_rk3399_ops rk3399_ops = {
+	.data_training = default_data_training,
+};
+
 static int rk3399_dmc_init(struct udevice *dev)
 {
 	struct dram_info *priv = dev_get_priv(dev);
@@ -1760,6 +1782,7 @@ static int rk3399_dmc_init(struct udevice *dev)
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

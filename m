Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5146647B0D
	for <lists+linux-rockchip@lfdr.de>; Mon, 17 Jun 2019 09:36:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D/lQTwGOdAQw24aziHNMHC8MsnWaYtXar/6g4VkidYk=; b=JIL4XU0IOmfT5L
	UJXJEgfkn6O1bSgRaGy60MToAifZk2RhOZQgt6fOh+T3eSZzWdzsCNkpHNU31aaow3vVUL7QMCyO1
	TFtcb0IaU9GbdZxhKcil7Vsvvt8WZizJSQvCVIkyqfFhN8jBqbgmHkSRxNXd6LdvA4PTBYk66Zoa5
	ieHg12CzZyaHtKiDAL8WFyGJCMCIJwHkUC+LFPHfa8g6JXNV9Oywemg0EefxNVdO8hQB9BE/PHITk
	Vya5BvvzCCWCLIN+XOTxUAlKr6w40OZzfOig5PdrGzpQerUPMAGNtebJgIOXUtIE8AQTqB0K9E+yj
	eo3EETObAGDjZJkIq5pQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcmBv-00057W-8q; Mon, 17 Jun 2019 07:36:35 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcmBq-00054x-DP
 for linux-rockchip@lists.infradead.org; Mon, 17 Jun 2019 07:36:32 +0000
Received: by mail-pg1-x544.google.com with SMTP id v11so5304475pgl.5
 for <linux-rockchip@lists.infradead.org>; Mon, 17 Jun 2019 00:36:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=7hEbN4PwZywNJrm+qGPj+Jg8NZT6WGoxWgkH1ZzDnjc=;
 b=Ww300Cmq/bgDkJoncgQJALrIwQ065+iPZKC81WhfCetZh/KaTbsYhnvqJwJxkoMAtn
 dllgV9s1dYh0amZz4WWRxsJMdvzQmbqFVyVTjeX+SNrSt0dBVZzgJ0CO1Q/b+cUCZa8m
 Id5fuIvED5NkH/CKC0CKCT8cGmrIuLf+16F+E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=7hEbN4PwZywNJrm+qGPj+Jg8NZT6WGoxWgkH1ZzDnjc=;
 b=Rdv8DgcDeMG2ZYZpWfW5tdcGv8ff0OD7fxI7jSfDVFK06qGqQ7NdFDQZz8l2D9zs4W
 sLd4inLkjaQ5XkE221P/5nB/19v8+6nZ7XQlConQKmibIZmRE+ng9frYhMn/n38zcBiy
 R0IKaFAu8FIvZj8jQNI2qmCXP9Jeq6FJvoU3V63Bhw7T4+2iISBHSvmqqsd+JIIXfKjd
 k/AO/0Nn6B3QCGUAkOT33E/+jZraadU63FCpugp8nt0fmVeIa9IfFeSgI7Ol0/cilIW+
 yhY+FPWzHehqvdFkIGDiOgfXTXoITxzP6A4CidqeQP8W96H2k8ZBMjFa5L/BIH0exeCp
 VlCg==
X-Gm-Message-State: APjAAAU04PMsxSLxtA07Pa7QCCCJb+EXQvYZI+vlTSW0WQtzOZQQyBZ2
 pdQWgM/eF1uD5/VdKIs46MssDg==
X-Google-Smtp-Source: APXvYqxKRxpGqWGh5ILkB2iKJ/0aQo+hXXdRcHdzUfLwQ/2ndbCx1ZBUvqUR5Aja1eqyjMvPhvs57A==
X-Received: by 2002:a63:1b07:: with SMTP id b7mr19604283pgb.133.1560756989669; 
 Mon, 17 Jun 2019 00:36:29 -0700 (PDT)
Received: from localhost.localdomain ([49.206.203.245])
 by smtp.gmail.com with ESMTPSA id m41sm15205998pje.18.2019.06.17.00.36.26
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 00:36:29 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v2 03/99] ram: rk3399: Add proper spaces in code
Date: Mon, 17 Jun 2019 13:01:16 +0530
Message-Id: <20190617073252.27810-4-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190617073252.27810-1-jagan@amarulasolutions.com>
References: <20190617073252.27810-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_003630_510447_F27F772C 
X-CRM114-Status: GOOD (  10.50  )
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

Add proper spaces in the code of
- data training functions
- rk3399_dmc_init

No functionality change.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 8191ab6176..b8962d68f2 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -620,8 +620,10 @@ static int data_training_ca(const struct chan_info *chan, u32 channel,
 
 	for (i = 0; i < rank; i++) {
 		select_per_cs_training_index(chan, i);
+
 		/* PI_100 PI_CALVL_EN:RW:8:2 */
 		clrsetbits_le32(&denali_pi[100], 0x3 << 8, 0x2 << 8);
+
 		/* PI_92 PI_CALVL_REQ:WR:16:1,PI_CALVL_CS:RW:24:2 */
 		clrsetbits_le32(&denali_pi[92],
 				(0x1 << 16) | (0x3 << 24),
@@ -651,9 +653,11 @@ static int data_training_ca(const struct chan_info *chan, u32 channel,
 				 (obs_err == 1))
 				return -EIO;
 		}
+
 		/* clear interrupt,PI_175 PI_INT_ACK:WR:0:17 */
 		writel(0x00003f7c, (&denali_pi[175]));
 	}
+
 	clrbits_le32(&denali_pi[100], 0x3 << 8);
 
 	return 0;
@@ -670,8 +674,10 @@ static int data_training_wl(const struct chan_info *chan, u32 channel,
 
 	for (i = 0; i < rank; i++) {
 		select_per_cs_training_index(chan, i);
+
 		/* PI_60 PI_WRLVL_EN:RW:8:2 */
 		clrsetbits_le32(&denali_pi[60], 0x3 << 8, 0x2 << 8);
+
 		/* PI_59 PI_WRLVL_REQ:WR:8:1,PI_WRLVL_CS:RW:16:2 */
 		clrsetbits_le32(&denali_pi[59],
 				(0x1 << 8) | (0x3 << 16),
@@ -705,6 +711,7 @@ static int data_training_wl(const struct chan_info *chan, u32 channel,
 				 (obs_err == 1))
 				return -EIO;
 		}
+
 		/* clear interrupt,PI_175 PI_INT_ACK:WR:0:17 */
 		writel(0x00003f7c, (&denali_pi[175]));
 	}
@@ -726,8 +733,10 @@ static int data_training_rg(const struct chan_info *chan, u32 channel,
 
 	for (i = 0; i < rank; i++) {
 		select_per_cs_training_index(chan, i);
+
 		/* PI_80 PI_RDLVL_GATE_EN:RW:24:2 */
 		clrsetbits_le32(&denali_pi[80], 0x3 << 24, 0x2 << 24);
+
 		/*
 		 * PI_74 PI_RDLVL_GATE_REQ:WR:16:1
 		 * PI_RDLVL_CS:RW:24:2
@@ -764,9 +773,11 @@ static int data_training_rg(const struct chan_info *chan, u32 channel,
 				 (obs_err == 1))
 				return -EIO;
 		}
+
 		/* clear interrupt,PI_175 PI_INT_ACK:WR:0:17 */
 		writel(0x00003f7c, (&denali_pi[175]));
 	}
+
 	clrbits_le32(&denali_pi[80], 0x3 << 24);
 
 	return 0;
@@ -781,8 +792,10 @@ static int data_training_rl(const struct chan_info *chan, u32 channel,
 
 	for (i = 0; i < rank; i++) {
 		select_per_cs_training_index(chan, i);
+
 		/* PI_80 PI_RDLVL_EN:RW:16:2 */
 		clrsetbits_le32(&denali_pi[80], 0x3 << 16, 0x2 << 16);
+
 		/* PI_74 PI_RDLVL_REQ:WR:8:1,PI_RDLVL_CS:RW:24:2 */
 		clrsetbits_le32(&denali_pi[74],
 				(0x1 << 8) | (0x3 << 24),
@@ -805,9 +818,11 @@ static int data_training_rl(const struct chan_info *chan, u32 channel,
 			else if (((tmp >> 2) & 0x1) == 0x1)
 				return -EIO;
 		}
+
 		/* clear interrupt,PI_175 PI_INT_ACK:WR:0:17 */
 		writel(0x00003f7c, (&denali_pi[175]));
 	}
+
 	clrbits_le32(&denali_pi[80], 0x3 << 16);
 
 	return 0;
@@ -822,13 +837,16 @@ static int data_training_wdql(const struct chan_info *chan, u32 channel,
 
 	for (i = 0; i < rank; i++) {
 		select_per_cs_training_index(chan, i);
+
 		/*
 		 * disable PI_WDQLVL_VREF_EN before wdq leveling?
 		 * PI_181 PI_WDQLVL_VREF_EN:RW:8:1
 		 */
 		clrbits_le32(&denali_pi[181], 0x1 << 8);
+
 		/* PI_124 PI_WDQLVL_EN:RW:16:2 */
 		clrsetbits_le32(&denali_pi[124], 0x3 << 16, 0x2 << 16);
+
 		/* PI_121 PI_WDQLVL_REQ:WR:8:1,PI_WDQLVL_CS:RW:16:2 */
 		clrsetbits_le32(&denali_pi[121],
 				(0x1 << 8) | (0x3 << 16),
@@ -845,9 +863,11 @@ static int data_training_wdql(const struct chan_info *chan, u32 channel,
 			else if (((tmp >> 6) & 0x1) == 0x1)
 				return -EIO;
 		}
+
 		/* clear interrupt,PI_175 PI_INT_ACK:WR:0:17 */
 		writel(0x00003f7c, (&denali_pi[175]));
 	}
+
 	clrbits_le32(&denali_pi[124], 0x3 << 16);
 
 	return 0;
@@ -938,6 +958,7 @@ static void dram_all_config(struct dram_info *dram,
 	sys_reg |= sdram_params->base.dramtype << SYS_REG_DDRTYPE_SHIFT;
 	sys_reg |= (sdram_params->base.num_channels - 1)
 		    << SYS_REG_NUM_CH_SHIFT;
+
 	for (channel = 0, idx = 0;
 	     (idx < sdram_params->base.num_channels) && (channel < 2);
 	     channel++) {
@@ -1164,6 +1185,7 @@ static int rk3399_dmc_init(struct udevice *dev)
 	      priv->chan[1].publ, priv->chan[1].msch);
 	debug("cru %p, cic %p, grf %p, sgrf %p, pmucru %p\n", priv->cru,
 	      priv->cic, priv->pmugrf, priv->pmusgrf, priv->pmucru);
+
 #if CONFIG_IS_ENABLED(OF_PLATDATA)
 	ret = clk_get_by_index_platdata(dev, 0, dtplat->clocks, &priv->ddr_clk);
 #else
@@ -1173,11 +1195,13 @@ static int rk3399_dmc_init(struct udevice *dev)
 		printf("%s clk get failed %d\n", __func__, ret);
 		return ret;
 	}
+
 	ret = clk_set_rate(&priv->ddr_clk, params->base.ddr_freq * MHz);
 	if (ret < 0) {
 		printf("%s clk set failed %d\n", __func__, ret);
 		return ret;
 	}
+
 	ret = sdram_init(priv, params);
 	if (ret < 0) {
 		printf("%s DRAM init failed %d\n", __func__, ret);
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6339069ACC
	for <lists+linux-rockchip@lfdr.de>; Mon, 15 Jul 2019 20:29:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/MgUu0T744qYNDMRJlMvLGwY1YXWJmoP91W2ecUn6nY=; b=YdVZPwM03xqjp3
	oRcyL7LTYmahVchevhX62R7tIXXrljCAXTf0uGXnybQ05tVv2RasDtCN1e7/noL1CJn4PrYjYTQpy
	51ajWiGhxZb39/o7kAPgyepDvzht+Pi2KNULTGWJNPZTxLM+b5kvKAEfqLAE+RqJf6Mm7G6znZAnm
	OfmX7GpEJB9V0dWE0j5jvvcFiN95FYnTAzNS4R5/oxCA8OgkOo/64mZmQhkZormdT1fSRimPaMwfI
	k9lVOaByD+S02A8ELEZ0C5X7YxBgWQNg1zDLJvufxltq96ZD4FKTAe71h6wUAz9tDVK7zgPQMOInS
	ydfq2eb3EBh/Xfdew1LQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn5iv-0000mL-HU; Mon, 15 Jul 2019 18:29:17 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn5ir-0000k6-50
 for linux-rockchip@lists.infradead.org; Mon, 15 Jul 2019 18:29:14 +0000
Received: by mail-pl1-x644.google.com with SMTP id az7so8714949plb.5
 for <linux-rockchip@lists.infradead.org>; Mon, 15 Jul 2019 11:29:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=wYr3H4NqDFc/O2LGsyHmfdZ6Y7oIQaZKfQb5LA2PnRg=;
 b=Lk3c/LzCKc4U2NcRRSH/eCMs0cFQKEMCiEqh35Xr/Y69FxHFfpkw7WUQ4No+WaAOVP
 dN793jB2U85HAcAj7ObgyIvNm6T4RawEJRZ9pkXYIGmKOnbCpcki6CLdJgeByCrEA7GD
 dqBdHUjbOf+kKYeFGPPrXAidIaat8qfW1kDZE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=wYr3H4NqDFc/O2LGsyHmfdZ6Y7oIQaZKfQb5LA2PnRg=;
 b=CMThq5viEwbCXUPMqMWBrE4U9FpY50YVJE0P/tpFXv9sw4985k4F8sU1dt8A2dFZel
 pU9WV92l3OO+BlgCGENbfe00ijTD/0fL/YR5SZ1d70V6HdIscTLzTwxN6KbQ0OzzJGTC
 tWq1PjRQWns53W0G6FbkiOQmkyCMdfrwfMJa1X6hXbtCXrveGUhZu75KksbPLbUKUj7x
 xtdizoPnfUiY1Ptem10UwiO7zRuNKfBSdfZUCqW18M3APNepsmATk793gRP6KPbieqsr
 gtcsyWcenouPrYerSMuIAhAsMjdMrkiI2Tyz+uQlBM4nmSf5ceAdJe9zAcBgdiM0ONOz
 vdxQ==
X-Gm-Message-State: APjAAAUDB6OV+eB8Dy+vB2/CaGBK0UdkE1krL6R6V3pQgX7lIgNYz6Vf
 nZlfPk2nZJh0VCnesOgK2tZgzw==
X-Google-Smtp-Source: APXvYqx3I/yUJQRHxlghHMPEX3Qm5lxr6ux/TMUHHh0t1nkEM/e2gBKbcVIn9Y5YBVtHNdkOLtCclA==
X-Received: by 2002:a17:902:6ac6:: with SMTP id
 i6mr30109616plt.233.1563215352628; 
 Mon, 15 Jul 2019 11:29:12 -0700 (PDT)
Received: from localhost.localdomain ([49.206.201.107])
 by smtp.gmail.com with ESMTPSA id y133sm20250075pfb.28.2019.07.15.11.29.09
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 15 Jul 2019 11:29:12 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v3 01/18] ram: rk3399: Handle data training return types
Date: Mon, 15 Jul 2019 23:58:39 +0530
Message-Id: <20190715182856.21688-2-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190715182856.21688-1-jagan@amarulasolutions.com>
References: <20190715182856.21688-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_112913_195128_A143B926 
X-CRM114-Status: GOOD (  12.70  )
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

data trainings calls like ca, wl, rg, rl, wdql have proper
return types with -EIO and the return type missed to handle
in data_training function.

This patch, add proper return type checks along with useful
debug statement on each data training calls.

Incidentally this would help to prevent the sdram initialization
hang for single channel dram and when the code is trying to
initialize second channel with proper return type of relevant
data training call might failed.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 50 ++++++++++++++++++++++-------
 1 file changed, 38 insertions(+), 12 deletions(-)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 492b0975dd..e9c0fdf2d4 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -887,6 +887,7 @@ static int data_training(const struct chan_info *chan, u32 channel,
 			 u32 training_flag)
 {
 	u32 *denali_phy = chan->publ->denali_phy;
+	int ret;
 
 	/* PHY_927 PHY_PAD_DQS_DRIVE  RPULL offset_22 */
 	setbits_le32(&denali_phy[927], (1 << 22));
@@ -907,24 +908,49 @@ static int data_training(const struct chan_info *chan, u32 channel,
 	}
 
 	/* ca training(LPDDR4,LPDDR3 support) */
-	if ((training_flag & PI_CA_TRAINING) == PI_CA_TRAINING)
-		data_training_ca(chan, channel, params);
+	if ((training_flag & PI_CA_TRAINING) == PI_CA_TRAINING) {
+		ret = data_training_ca(chan, channel, params);
+		if (ret < 0) {
+			debug("%s: data training ca failed\n", __func__);
+			return ret;
+		}
+	}
 
 	/* write leveling(LPDDR4,LPDDR3,DDR3 support) */
-	if ((training_flag & PI_WRITE_LEVELING) == PI_WRITE_LEVELING)
-		data_training_wl(chan, channel, params);
+	if ((training_flag & PI_WRITE_LEVELING) == PI_WRITE_LEVELING) {
+		ret = data_training_wl(chan, channel, params);
+		if (ret < 0) {
+			debug("%s: data training wl failed\n", __func__);
+			return ret;
+		}
+	}
 
 	/* read gate training(LPDDR4,LPDDR3,DDR3 support) */
-	if ((training_flag & PI_READ_GATE_TRAINING) == PI_READ_GATE_TRAINING)
-		data_training_rg(chan, channel, params);
+	if ((training_flag & PI_READ_GATE_TRAINING) == PI_READ_GATE_TRAINING) {
+		ret = data_training_rg(chan, channel, params);
+		if (ret < 0) {
+			debug("%s: data training rg failed\n", __func__);
+			return ret;
+		}
+	}
 
 	/* read leveling(LPDDR4,LPDDR3,DDR3 support) */
-	if ((training_flag & PI_READ_LEVELING) == PI_READ_LEVELING)
-		data_training_rl(chan, channel, params);
+	if ((training_flag & PI_READ_LEVELING) == PI_READ_LEVELING) {
+		ret = data_training_rl(chan, channel, params);
+		if (ret < 0) {
+			debug("%s: data training rl failed\n", __func__);
+			return ret;
+		}
+	}
 
 	/* wdq leveling(LPDDR4 support) */
-	if ((training_flag & PI_WDQ_LEVELING) == PI_WDQ_LEVELING)
-		data_training_wdql(chan, channel, params);
+	if ((training_flag & PI_WDQ_LEVELING) == PI_WDQ_LEVELING) {
+		ret = data_training_wdql(chan, channel, params);
+		if (ret < 0) {
+			debug("%s: data training wdql failed\n", __func__);
+			return ret;
+		}
+	}
 
 	/* PHY_927 PHY_PAD_DQS_DRIVE  RPULL offset_22 */
 	clrbits_le32(&denali_phy[927], (1 << 22));
@@ -1062,7 +1088,7 @@ static int switch_to_phy_index1(struct dram_info *dram,
 		clrsetbits_le32(&denali_phy[896], (0x3 << 8) | 1, 1 << 8);
 		ret = data_training(&dram->chan[channel], channel,
 				    params, PI_FULL_TRAINING);
-		if (ret) {
+		if (ret < 0) {
 			debug("index1 training failed\n");
 			return ret;
 		}
@@ -1108,7 +1134,7 @@ static int sdram_init(struct dram_info *dram,
 			udelay(10);
 
 		if (data_training(chan, channel, params, PI_FULL_TRAINING)) {
-			printf("SDRAM initialization failed, reset\n");
+			printf("%s: data training failed\n", __func__);
 			return -EIO;
 		}
 
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

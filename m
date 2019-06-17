Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8616747B0F
	for <lists+linux-rockchip@lfdr.de>; Mon, 17 Jun 2019 09:36:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0CS5cekH67C4BYjFUcpQuP0cSbyFOsWszLbnXbK4haI=; b=rFrhztk1Iwe4CY
	JCOmBwXhwI02J1ZIJ3WqytBurgEsruKp9fdOgznE+58hI5mJYw/SSS0gZPZQFnMOtopTugt0kX9yI
	uj2Gm6GfsvdtVeSEysta+W4io09lus9G4Labq68Vqn1b0HbWbjui1lGylEz2Qx6x0Fc3g/TL3d6It
	oFwsiWQqxQQambyIFsiUKd2QYw/IvQHCNyfx49D+d/WJRGzpF9A3Axjkh8uMZV6GYjL83agDLE1Tc
	Siov7MnhQqTplMocSeBu3IzHSIiY6PsxqQocvydiMkETYf7pGas5NTmScOBi2aEP8yaHQ72KFfWsm
	cI8srdQ4DFWQ8BvA5GpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcmC2-0005Da-D7; Mon, 17 Jun 2019 07:36:42 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcmBx-0005BU-P1
 for linux-rockchip@lists.infradead.org; Mon, 17 Jun 2019 07:36:39 +0000
Received: by mail-pl1-x642.google.com with SMTP id b7so3725065pls.6
 for <linux-rockchip@lists.infradead.org>; Mon, 17 Jun 2019 00:36:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=KGsWoCn89xsxyt00F2oPoeiNyY3Uw4lqEW4tRmvYwz8=;
 b=Y/k47rD+TlziFSuWzR7/sgqw5nkevpcqe5Egf6AcxbyWOO8ErfTh4ZwrPSEYJLJpkW
 fjclHhy/i60e+dhTyDgYUC482/AFaxY24fHbnHp91QiiSo8yuViLiIp90xruuY1VT+la
 CUnZXwPBDx6RUyVj/c2qUzquvG9fQJQXXizq8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=KGsWoCn89xsxyt00F2oPoeiNyY3Uw4lqEW4tRmvYwz8=;
 b=bxFgsWa1K+WJkWDGz5mY4orEBcqUN/2Deguw7xXOC2ODF1UnMr8ANelDdBMcWWeNKd
 ZK09k/r9OQNkEfgjWK/z9RitOg1LakT5NkJysop1/o5ycwxWlN8LY9rjlBsB3ZRMyn2e
 B0+cLBHYAxiyUQVgKCo7qh9TrWY5zdQdAPzczxYEubJUM9Q8MN7MzRGUcbu7qgQNTcz+
 HvhnTiNDOeL50nzRpIzBnQK4aVHRcdKOH7B4yRF6VhKqnbJkmXHnPo4/dWpRC0tv65r9
 dMEX8WwmoEfejSwenHq53WA3RMCXYBD0BNLiNc0Xzey2ojWbzbLvjSLD2Yc4JS18aI7s
 d+QA==
X-Gm-Message-State: APjAAAXi7/i35frpqfo5ljawATFv8aSCUX9NTxeWsRN1IQxyDR44cu62
 tc4jneqr4G/5XyWTxW77Ob1j7Q==
X-Google-Smtp-Source: APXvYqyiUI95y4Fde70afphoO06aiRFq6rwyIynbuSw1q22HbmUajCFV6xZ3WrfJhh34i8+w617DZA==
X-Received: by 2002:a17:902:b7c1:: with SMTP id
 v1mr13789658plz.85.1560756997260; 
 Mon, 17 Jun 2019 00:36:37 -0700 (PDT)
Received: from localhost.localdomain ([49.206.203.245])
 by smtp.gmail.com with ESMTPSA id m41sm15205998pje.18.2019.06.17.00.36.33
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 00:36:36 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v2 05/99] ram: rk3399: Handle data training return types
Date: Mon, 17 Jun 2019 13:01:18 +0530
Message-Id: <20190617073252.27810-6-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190617073252.27810-1-jagan@amarulasolutions.com>
References: <20190617073252.27810-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_003637_844665_0F13DE02 
X-CRM114-Status: GOOD (  12.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
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
index 4c09009b7a..e10bcafe32 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -877,6 +877,7 @@ static int data_training(const struct chan_info *chan, u32 channel,
 			 u32 training_flag)
 {
 	u32 *denali_phy = chan->publ->denali_phy;
+	int ret;
 
 	/* PHY_927 PHY_PAD_DQS_DRIVE  RPULL offset_22 */
 	setbits_le32(&denali_phy[927], (1 << 22));
@@ -897,24 +898,49 @@ static int data_training(const struct chan_info *chan, u32 channel,
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
@@ -1046,7 +1072,7 @@ static int switch_to_phy_index1(struct dram_info *dram,
 		clrsetbits_le32(&denali_phy[896], (0x3 << 8) | 1, 1 << 8);
 		ret = data_training(&dram->chan[channel], channel,
 				    params, PI_FULL_TRAINING);
-		if (ret) {
+		if (ret < 0) {
 			debug("index1 training failed\n");
 			return ret;
 		}
@@ -1090,7 +1116,7 @@ static int sdram_init(struct dram_info *dram,
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

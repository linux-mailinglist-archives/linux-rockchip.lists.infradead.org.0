Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D901047B77
	for <lists+linux-rockchip@lfdr.de>; Mon, 17 Jun 2019 09:41:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HqdA4t8gc97/pBtFkQK7K/vm/IJeebrBE179/hqqDGo=; b=dknlbAMAj3YCMA
	9oIb3SOhdDbkgZbZY1qsRYJgqNQ6C7zhDqIeskCwFjn8Uq79McmdYyruajPhShqC8RCcI0PoVdt4Q
	JtnDqsa88luI7y7+O9gXfmJbLgCnxvDIylmgXrnQy4AelcKnN1iE+9JfxMDbjC1PAzmnt1qOTlIQx
	s9x/yhw3ZlBeT2h9i5zLS3CgcEBCSwjInmLm8+RQAJ4kPxu7uGbAJiM8go534buaxNkqtgjVgFSe1
	rlxaJgOI7emDIN0yWPB0PVNo+oU1Dp941Btwgmrk5lIDnS8zE0+iqBqCGtelrZi3XUyVzKKHJ+qYo
	+68V3i1AREBEOdkcDQMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcmGU-0001z5-Q4; Mon, 17 Jun 2019 07:41:18 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcmGP-0001wi-M1
 for linux-rockchip@lists.infradead.org; Mon, 17 Jun 2019 07:41:15 +0000
Received: by mail-pg1-x542.google.com with SMTP id 196so5315555pgc.6
 for <linux-rockchip@lists.infradead.org>; Mon, 17 Jun 2019 00:41:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=uwndS2q8XCkbeeTC/bd1LdCUvYtRdd5DDTltO8niaWQ=;
 b=lbS2vqiAhQPkOlb95OvFhKmfscdNUJXSE48n2JV9sSFIhrNrRnphw/bEGQRi0msS5f
 f5d1X5Js92dzHr+ya6nfcNthiYqrpR1y/9+ZwjBO2n2YQIGatlX+yTJquj1GVcEsTUPS
 YVQItFdW1SGZyMAyWQon+mBGK+xBOi6ano3ho=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=uwndS2q8XCkbeeTC/bd1LdCUvYtRdd5DDTltO8niaWQ=;
 b=n5M9fyOUSiN6R7g/DkTWsTsIRRKTqzjkC6GWquGYlAZ0au1YE32hOhweW9rCyGIM+d
 uVur+kdoGeVF6ZlVQnVbttaYLnSTjSyt8yVbW30UYee4n0A63jNz6PzNjwy2Fz8q8y/U
 Z+aZ4HItWCl6b0NTHfRYEhC9jXBGI8Q0VXDmUs916SlCAK6floczFt8bLObf4mTYlCkP
 vQIg3Al+OFoNbq9tvIhrob3K/g/ux1Hxhsj1a4lltc0tc90BhZJ9o7NNRV/YGNyvbX1P
 BWmx2VhR7oh09yW6Pwu8QUZf53y+wuUKSWr+ZJ0F24IE6chC17A71KPJioUIFVmQxlZh
 xKCw==
X-Gm-Message-State: APjAAAUk9wvGvWIHqMsloYBCWBhiDpQZKxqnJXc/3rmSf+kvmhIcxMBC
 lN95+LWg50P/H4hyvWorsJygsQ==
X-Google-Smtp-Source: APXvYqyPpzkdJRoLHfkY5uRQk/iB5td9PrpLPD9GglmD0vuZKSGWH0oASX8BkGgmakrbf2sA1GXFmw==
X-Received: by 2002:a62:6341:: with SMTP id x62mr114309970pfb.63.1560757273220; 
 Mon, 17 Jun 2019 00:41:13 -0700 (PDT)
Received: from localhost.localdomain ([49.206.203.245])
 by smtp.gmail.com with ESMTPSA id m41sm15205998pje.18.2019.06.17.00.41.10
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 00:41:12 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v2 88/99] ram: rk3399: Add set_rate sdram rk3399 ops
Date: Mon, 17 Jun 2019 13:02:41 +0530
Message-Id: <20190617073252.27810-89-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190617073252.27810-1-jagan@amarulasolutions.com>
References: <20190617073252.27810-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_004113_724521_EE781FAD 
X-CRM114-Status: GOOD (  12.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
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

DDR set rate can be even required for lpddr4 and we
need to keep the lpddr4 code to compile only for relevant
boards which do support lpddr4.

For this requirement, and for code readability handle
data training via sdram_rk3399_ops with .set_rate and
same will update in future while supporting lpddr4 code.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index cdae6b9e67..9f5438a0bc 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -74,6 +74,8 @@ struct dram_info {
 struct sdram_rk3399_ops {
 	int (*data_training)(struct dram_info *dram, u32 channel, u8 rank,
 			     struct rk3399_sdram_params *sdram);
+	int (*set_rate)(struct dram_info *dram,
+			const struct rk3399_sdram_params *params);
 };
 
 #if defined(CONFIG_TPL_BUILD) || \
@@ -948,6 +950,7 @@ static int pctl_cfg(struct dram_info *dram, const struct chan_info *chan,
 	return 0;
 }
 
+#if !defined(CONFIG_RAM_RK3399_LPDDR4)
 static void select_per_cs_training_index(const struct chan_info *chan,
 					 u32 rank)
 {
@@ -1368,6 +1371,7 @@ static int data_training(struct dram_info *dram, u32 channel,
 
 	return 0;
 }
+#endif
 
 static void set_ddrconfig(const struct chan_info *chan,
 			  const struct rk3399_sdram_params *params,
@@ -1488,7 +1492,6 @@ static int default_data_training(struct dram_info *dram, u32 channel, u8 rank,
 
 	return data_training(dram, channel, params, training_flag);
 }
-#endif
 
 static int switch_to_phy_index1(struct dram_info *dram,
 				const struct rk3399_sdram_params *params)
@@ -1535,7 +1538,8 @@ static int switch_to_phy_index1(struct dram_info *dram,
 	return 0;
 }
 
-#if defined(CONFIG_RAM_RK3399_LPDDR4)
+#else
+
 static u32 get_ddr_stride(struct rk3399_pmusgrf_regs *pmusgrf)
 {
 	return ((readl(&pmusgrf->soc_con4) >> 10) & 0x1F);
@@ -1939,7 +1943,7 @@ static int sdram_init(struct dram_info *dram,
 
 	params->base.stride = calculate_stride(params);
 	dram_all_config(dram, params);
-	switch_to_phy_index1(dram, params);
+	dram->ops->set_rate(dram, params);
 
 	debug("Finish SDRAM initialization...\n");
 	return 0;
@@ -1987,6 +1991,7 @@ static int conv_of_platdata(struct udevice *dev)
 static const struct sdram_rk3399_ops rk3399_ops = {
 #if !defined(CONFIG_RAM_RK3399_LPDDR4)
 	.data_training = default_data_training,
+	.set_rate = switch_to_phy_index1,
 #else
 	.data_training = lpddr4_mr_detect,
 #endif
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

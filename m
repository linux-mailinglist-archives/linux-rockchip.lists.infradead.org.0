Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FE2047B3E
	for <lists+linux-rockchip@lfdr.de>; Mon, 17 Jun 2019 09:38:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5jSdOAlFdTA+N1QulTUKnK2ztcxUW+vF3A2mcLg26q0=; b=sIwAvwzQQnlAXc
	EJdk8bFOPeuyR/vHrIQj9Gx/fRloCTncVtw/QxI4rgby1qRUckVfbxTRptRHyhQ1qTGC3ssnIQAC0
	WBOO5Mo06xHtca7pvMTAxr2hevhGOly9UdXLqaQ13VbKPe3EKatR2uGW5ZUjebOt6Dc45hknilADW
	QOtRAHaL0KkY9x1G2RrRlvRYNdiQfZRe6vQ5LyKT3l6HCNwgz4ccWETNgNLlxn4ij1o/NKG3uc1kL
	bWaczlplOzklE6TI9Hq+vUeLa81xt500++GR6TLfNmO/u/Yt3usbe2omRr+9kiACiYdd8cqqu7LQ6
	0v3eRSRncC2thY5C+AfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcmDo-0006n1-AN; Mon, 17 Jun 2019 07:38:32 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcmDh-0006iG-Hd
 for linux-rockchip@lists.infradead.org; Mon, 17 Jun 2019 07:38:27 +0000
Received: by mail-pl1-x642.google.com with SMTP id c14so3743605plo.0
 for <linux-rockchip@lists.infradead.org>; Mon, 17 Jun 2019 00:38:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Xb2pOTLgQhBL1cgKGDlEAadOnQeynEPmgv+jvwrG8sA=;
 b=qRix57kbxvuwUsl3DNFqr/1fwsxZH3kZlGXmN1dnQpGHvkUiHI6SCTurIjZEgEbIHh
 SjHhrtJP2YUq51dZJD2opEgNnq1mwSDdG6yWbDjvyHBu2YWT+IJv4ixh3uh+3LpeqEg2
 61z02+jJCGYm5xvu4kuvZIb38y08EuF13k95M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Xb2pOTLgQhBL1cgKGDlEAadOnQeynEPmgv+jvwrG8sA=;
 b=OACRgl8vzcLM/Bae/6yRsteuHyG5f6SCF5sZDagsqpWwQ9iNB5KzYANx6JUBecv0ar
 fPwjfWa/wcgfm94ko0xk2YVQf7JpAzIVRnrY9FfDJWyn8RPq4vzoY5r3COCbsLkapXyL
 M7j3C3nG24SJVBYjRQO8YylxEc0jQp9q+LmuOyqPHwejwyXP8jfUWzcUxTN2T1ZU3DJR
 0gOVprm+TDP9sjxjYP49p2Zq4RI3si6MugtC1V/4TCf5TRv/ddY6aLrolyWuw+18+Gqk
 RNbdVT+tYdigcJltBb3cms49/CMC4QifW2qnvvqilNxksbubBhYhLAdNs8hQDTHpmD7+
 x+Ew==
X-Gm-Message-State: APjAAAW6CZDLcQEjaqf8uKNfoSKHCoK0Zjc41WO1/yx2i/hgGxqvdFMQ
 fUBDAQWnW/dW9Hu4SGuNLVS27Q==
X-Google-Smtp-Source: APXvYqzOfZQ05vLXFcERg75hhbSi7Jyp4RzA9WrT+Ta8zmGcdbu3E/OQOJOksUOuT0nkWbWBh8H59g==
X-Received: by 2002:a17:902:7c90:: with SMTP id
 y16mr17001663pll.238.1560757104846; 
 Mon, 17 Jun 2019 00:38:24 -0700 (PDT)
Received: from localhost.localdomain ([49.206.203.245])
 by smtp.gmail.com with ESMTPSA id m41sm15205998pje.18.2019.06.17.00.38.21
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 00:38:24 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v2 37/99] ram: rk3399: Add pctl start support
Date: Mon, 17 Jun 2019 13:01:50 +0530
Message-Id: <20190617073252.27810-38-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190617073252.27810-1-jagan@amarulasolutions.com>
References: <20190617073252.27810-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_003826_048985_79F26FE0 
X-CRM114-Status: GOOD (  16.37  )
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

Add support for pctl start for both channel 0, 1 control
and phy registers.

This would also handle pwrup_srefresh_exit init based
on the channel number.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 75 +++++++++++++++++++++--------
 1 file changed, 55 insertions(+), 20 deletions(-)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 1362a5bf2d..6c3a2b5453 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -49,10 +49,11 @@ struct chan_info {
 struct dram_info {
 #if defined(CONFIG_TPL_BUILD) || \
 	(!defined(CONFIG_TPL) && defined(CONFIG_SPL_BUILD))
-	u32 pwrup_srefresh_exit;
+	u32 pwrup_srefresh_exit[2];
 	struct chan_info chan[2];
 	struct clk ddr_clk;
 	struct rk3399_cru *cru;
+	struct rk3399_grf_regs *grf;
 	struct rk3399_pmucru *pmucru;
 	struct rk3399_pmusgrf_regs *pmusgrf;
 	struct rk3399_ddr_cic_regs *cic;
@@ -73,6 +74,11 @@ struct rockchip_dmc_plat {
 	struct regmap *map;
 };
 
+static void *get_ddrc0_con(struct dram_info *dram, u8 channel)
+{
+	return (channel == 0) ? &dram->grf->ddrc0_con0 : &dram->grf->ddrc0_con1;
+}
+
 static void copy_to_reg(u32 *dest, const u32 *src, u32 n)
 {
 	int i;
@@ -327,6 +333,48 @@ static void set_ds_odt(const struct chan_info *chan,
 	clrsetbits_le32(&denali_phy[930], 0x1 << 17, reg_value);
 }
 
+static void pctl_start(struct dram_info *dram, u8 channel)
+{
+	const struct chan_info *chan = &dram->chan[channel];
+	u32 *denali_ctl = chan->pctl->denali_ctl;
+	u32 *denali_phy = chan->publ->denali_phy;
+	u32 *ddrc0_con = get_ddrc0_con(dram, channel);
+	u32 count = 0;
+	u32 byte, tmp;
+
+	writel(0x01000000, &ddrc0_con);
+
+	clrsetbits_le32(&denali_phy[957], 0x3 << 24, 0x2 << 24);
+
+	while (!(readl(&denali_ctl[203]) & (1 << 3))) {
+		if (count > 1000) {
+			printf("%s: Failed to init pctl for channel %d\n",
+			       __func__, channel);
+			while (1)
+				;
+		}
+
+		udelay(1);
+		count++;
+	}
+
+	writel(0x01000100, &ddrc0_con);
+
+	for (byte = 0; byte < 4; byte++) {
+		tmp = 0x820;
+		writel((tmp << 16) | tmp, &denali_phy[53 + (128 * byte)]);
+		writel((tmp << 16) | tmp, &denali_phy[54 + (128 * byte)]);
+		writel((tmp << 16) | tmp, &denali_phy[55 + (128 * byte)]);
+		writel((tmp << 16) | tmp, &denali_phy[56 + (128 * byte)]);
+		writel((tmp << 16) | tmp, &denali_phy[57 + (128 * byte)]);
+
+		clrsetbits_le32(&denali_phy[58 + (128 * byte)], 0xffff, tmp);
+	}
+
+	clrsetbits_le32(&denali_ctl[68], PWRUP_SREFRESH_EXIT,
+			dram->pwrup_srefresh_exit[channel]);
+}
+
 static int phy_io_config(const struct chan_info *chan,
 			 const struct rk3399_sdram_params *params)
 {
@@ -497,7 +545,6 @@ static int pctl_cfg(struct dram_info *dram, const struct chan_info *chan,
 	const u32 *params_phy = params->phy_regs.denali_phy;
 	u32 tmp, tmp1, tmp2;
 	int ret;
-	const ulong timeout_ms = 200;
 
 	/*
 	 * work around controller bug:
@@ -515,8 +562,8 @@ static int pctl_cfg(struct dram_info *dram, const struct chan_info *chan,
 	writel(params->phy_regs.denali_phy[911], &denali_phy[911]);
 	writel(params->phy_regs.denali_phy[912], &denali_phy[912]);
 
-	dram->pwrup_srefresh_exit = readl(&denali_ctl[68]) &
-				    PWRUP_SREFRESH_EXIT;
+	dram->pwrup_srefresh_exit[channel] = readl(&denali_ctl[68]) &
+					     PWRUP_SREFRESH_EXIT;
 	clrbits_le32(&denali_ctl[68], PWRUP_SREFRESH_EXIT);
 
 	/* PHY_DLL_RST_EN */
@@ -577,22 +624,6 @@ static int pctl_cfg(struct dram_info *dram, const struct chan_info *chan,
 	if (ret)
 		return ret;
 
-	/* PHY_DLL_RST_EN */
-	clrsetbits_le32(&denali_phy[957], 0x3 << 24, 0x2 << 24);
-
-	/* Waiting for PHY and DRAM init complete */
-	tmp = get_timer(0);
-	do {
-		if (get_timer(tmp) > timeout_ms) {
-			pr_err("DRAM (%s): phy failed to lock within  %ld ms\n",
-			       __func__, timeout_ms);
-			return -ETIME;
-		}
-	} while (!(readl(&denali_ctl[203]) & (1 << 3)));
-	debug("DRAM (%s): phy locked after %ld ms\n", __func__, get_timer(tmp));
-
-	clrsetbits_le32(&denali_ctl[68], PWRUP_SREFRESH_EXIT,
-			dram->pwrup_srefresh_exit);
 	return 0;
 }
 
@@ -1182,6 +1213,9 @@ static int sdram_init(struct dram_info *dram,
 			return ret;
 		}
 
+		/* start to trigger initialization */
+		pctl_start(dram, channel);
+
 		/* LPDDR2/LPDDR3 need to wait DAI complete, max 10us */
 		if (dramtype == LPDDR3)
 			udelay(10);
@@ -1258,6 +1292,7 @@ static int rk3399_dmc_init(struct udevice *dev)
 #endif
 
 	priv->cic = syscon_get_first_range(ROCKCHIP_SYSCON_CIC);
+	priv->grf = syscon_get_first_range(ROCKCHIP_SYSCON_GRF);
 	priv->pmugrf = syscon_get_first_range(ROCKCHIP_SYSCON_PMUGRF);
 	priv->pmusgrf = syscon_get_first_range(ROCKCHIP_SYSCON_PMUSGRF);
 	priv->pmucru = rockchip_get_pmucru();
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

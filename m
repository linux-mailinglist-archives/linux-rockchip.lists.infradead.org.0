Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FCD369AD4
	for <lists+linux-rockchip@lfdr.de>; Mon, 15 Jul 2019 20:29:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ltFH9Fi31DiCTjfw2Bl5WymXAz+OJeXAspQ/ILW5RRU=; b=eQn4ScyGlo+9L6
	Cwf1ffNWyeemSik9PBypnCJTckZpGB9PFUGJEOJTG0zbPDTFaBtqYveTe/A/ULY/SzGpsaextxXOv
	MuWqLAYkaApgXPIxe6x0G7dMj9n/ufTIFzeKZqF738JhFoobf8IX1lEQsmrkdB/iS/hGSe9AFYIFZ
	ivP/T8JYGE3405I3OzTuODCYF+c6PM4E5Y/0FdC7g+jSqWPcSFgaNzD4ggnOW8YddsllAdiv/KLuv
	uMGcX+Nu7L64gCFOUYjsKJsWSU7Ry2EnHgWtsXsIr976sNfVZc9fjrgEra6lKuR4TBuYERCmZVDyG
	hobbSOjvzCQ82FFdccqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn5jJ-00011R-JD; Mon, 15 Jul 2019 18:29:41 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn5jB-0000yH-Pz
 for linux-rockchip@lists.infradead.org; Mon, 15 Jul 2019 18:29:35 +0000
Received: by mail-pg1-x542.google.com with SMTP id i18so8110553pgl.11
 for <linux-rockchip@lists.infradead.org>; Mon, 15 Jul 2019 11:29:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Cdy1dxv9t+oHKqeWpvE9O/P4Jm0ldwmB6m0flnPmlmM=;
 b=ab8ad8HeA/rIazW2Hr8sjikzhjjOaiOPsG8U7+0nkn8iA9kMXdpMMfUnOqvL3TJAVY
 xVvuzffYrKGD3u7dMMAqF+hx0iES8tKkqqbNtm+5hxjPl/d3BJvLF9UYwSvCADewR+lt
 HB+yv4Mg9hOzyfqfevZJzyiE6Vw8v4TgMYMXY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Cdy1dxv9t+oHKqeWpvE9O/P4Jm0ldwmB6m0flnPmlmM=;
 b=MdGmPwgJ2JnOShYgPvgz9pXutBAoXECnIsFQfTUz3FOcEVZMjsZ+i5WIvBb14UWTW5
 lcy6FtAkG9GqeDU8EQ1jpls6/IYUiEFyRUXgl/3sCoi+qpiilJV/lB8nhCZ/8Msyo7Nk
 I5ZtSi7u0Zxh76hFEGCD10iYxdGSvVQdzN2Sv7RDD7/LAyZzfikESroBVbaPz6tzsvBH
 DkftPhUwJWqtaGmU+duwmuQGwGuv/5q2GOHXx/I06yhMW9S0Gn45sO3odIl0xsGtx1lL
 XV0MnCrwwbXMXmOltHwQk+nZO7o2+KBurqeb7Yww3Td1Vg5L6bqQPtPjY1HfZdAsosdq
 b+Hw==
X-Gm-Message-State: APjAAAX3D5f4GXnrUwXOk5fj1Xwv4BtwGC3PM1x3YDl9QpgQy5MYUcoT
 HfiJRQTnFbn7nZ1goC2UcXVNkQ==
X-Google-Smtp-Source: APXvYqwo5zstpG6kDfKbHc2egHCQm/+c9TRLrpD/gcFfrIuqaCgDq1DTO0M+Zp6y32qY6Qfg1C9fvg==
X-Received: by 2002:a17:90a:b387:: with SMTP id
 e7mr31826321pjr.113.1563215373177; 
 Mon, 15 Jul 2019 11:29:33 -0700 (PDT)
Received: from localhost.localdomain ([49.206.201.107])
 by smtp.gmail.com with ESMTPSA id y133sm20250075pfb.28.2019.07.15.11.29.29
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 15 Jul 2019 11:29:32 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v3 07/18] ram: rk3399: Add pctl start support
Date: Mon, 15 Jul 2019 23:58:45 +0530
Message-Id: <20190715182856.21688-8-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190715182856.21688-1-jagan@amarulasolutions.com>
References: <20190715182856.21688-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_112934_125176_E1CE23B5 
X-CRM114-Status: GOOD (  16.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
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
index 6e944cafd9..084c949728 100644
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
@@ -328,6 +334,48 @@ static void set_ds_odt(const struct chan_info *chan,
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
@@ -498,7 +546,6 @@ static int pctl_cfg(struct dram_info *dram, const struct chan_info *chan,
 	const u32 *params_phy = params->phy_regs.denali_phy;
 	u32 tmp, tmp1, tmp2;
 	int ret;
-	const ulong timeout_ms = 200;
 
 	/*
 	 * work around controller bug:
@@ -518,8 +565,8 @@ static int pctl_cfg(struct dram_info *dram, const struct chan_info *chan,
 	writel(params->phy_regs.denali_phy[911], &denali_phy[911]);
 	writel(params->phy_regs.denali_phy[912], &denali_phy[912]);
 
-	dram->pwrup_srefresh_exit = readl(&denali_ctl[68]) &
-				    PWRUP_SREFRESH_EXIT;
+	dram->pwrup_srefresh_exit[channel] = readl(&denali_ctl[68]) &
+					     PWRUP_SREFRESH_EXIT;
 	clrbits_le32(&denali_ctl[68], PWRUP_SREFRESH_EXIT);
 
 	/* PHY_DLL_RST_EN */
@@ -580,22 +627,6 @@ static int pctl_cfg(struct dram_info *dram, const struct chan_info *chan,
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
 
@@ -1186,6 +1217,9 @@ static int sdram_init(struct dram_info *dram,
 			return ret;
 		}
 
+		/* start to trigger initialization */
+		pctl_start(dram, channel);
+
 		/* LPDDR2/LPDDR3 need to wait DAI complete, max 10us */
 		if (dramtype == LPDDR3)
 			udelay(10);
@@ -1262,6 +1296,7 @@ static int rk3399_dmc_init(struct udevice *dev)
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

Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E166C3CF9B
	for <lists+linux-rockchip@lfdr.de>; Tue, 11 Jun 2019 16:54:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CaF3loMCxUTj1OGgPpqHoSpvoLvpFH0bVdVsTA2MdwQ=; b=hiu/zWGjx7caEu
	DHGkKFWljrhg5wq6cvmOFtek6Q8Sqfi4c0hWp0xfzTGcvDwnJPDbW3RO4MN6RwTTLCRmFgiCj+NLl
	ipd7aGQGWJ+pg49LJWKedP2RaJBMhimrBgsHfLwGXvc+hHXxhBfOKjN6wZoWb3gtaEP/U59SE+8kJ
	83feGuK2lx9gu6V3F0gJHZESP12zqHmMrY7IOXtmxGJrzYN1ebq2cTWOFlGStA5X2o2+NbGgUEIcK
	k4GEVmFIEkClUeBl0RerbXfXNT/+7UUHmlG51iXDuhAbBLGp9W26M63A1uuMOhto4U0KVQUruzkGX
	cb+joMt7ce0BXtxB02yA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haiAF-0005ME-3l; Tue, 11 Jun 2019 14:54:19 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haiAB-0005LB-Rs
 for linux-rockchip@lists.infradead.org; Tue, 11 Jun 2019 14:54:17 +0000
Received: by mail-pg1-x543.google.com with SMTP id n2so7100141pgp.11
 for <linux-rockchip@lists.infradead.org>; Tue, 11 Jun 2019 07:54:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0WlhWQw1hMkFv4Ygg+KWS/7JWVu6zGHB1vz3zmQ+5w0=;
 b=YCrqcARj9GhVPi+XKAZ8KndMmTEvb7hX/Ae5jrUz9n9d9fOHey9slUZBNxUIKDeaY6
 V9TMB4Ose5Zt22Rc80V7IfuhQCYH0VJuurg1rC59jALze8eEADjEUNrUycX6L/ngWj1i
 KE1j5G2tFs9GXQErBKzzmRwiO33yDAtio3+VA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0WlhWQw1hMkFv4Ygg+KWS/7JWVu6zGHB1vz3zmQ+5w0=;
 b=qSf0p7ccy9m+P2KJD0AfYVla2UBsRMbzwJTcZ+D7wPnIVAiYleMcrGWZLhHA9F3k8C
 cunMNKK23hySKUBO34MzLf6RJn3vRf7ULGFvvJsknlRwv607Ad0oinh3kcEM8FUzIM8Q
 gjliIflJZhDcdvPTta8Qxg+7ez4k1pWDtXHg8/R+4a7E1QRT8401JfAF4UToYdaJJtDG
 dW8R5MYG6h3UzyDQDFNvz/FntlXE2j3zwN4ZnbV3bSAX5c4P/O7ZByG+7016m2lQLbiq
 y7a0NzgR8ukRtROkmrGpiy+1MBzJElo4Is3WEVQRHb/qjvvEIrcI6AiaAD4QVzDtdTgr
 GjFQ==
X-Gm-Message-State: APjAAAX+abiEFqr2LaLD2mbMxRdKJD/Dmhx+iTWrmR9dO9fSLPg2fpJi
 DW7PhThOMauVLHTj0DMK1Z+GCw==
X-Google-Smtp-Source: APXvYqyczb4m7lto3tiulS3a+q/kxBRygDyEm/QJ+WfljSP2X3+/ETIYXXAE4IED9yyyFWiUmsIvVg==
X-Received: by 2002:a63:d415:: with SMTP id a21mr2990689pgh.229.1560264855271; 
 Tue, 11 Jun 2019 07:54:15 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.18])
 by smtp.gmail.com with ESMTPSA id e9sm16206208pfn.154.2019.06.11.07.54.11
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Jun 2019 07:54:14 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH 36/92] ram: rk3399: Add pctl start support
Date: Tue, 11 Jun 2019 20:20:39 +0530
Message-Id: <20190611145135.21399-37-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190611145135.21399-1-jagan@amarulasolutions.com>
References: <20190611145135.21399-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_075415_905913_B870DEB7 
X-CRM114-Status: GOOD (  15.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com,
 Jagan Teki <jagan@amarulasolutions.com>, gajjar04akash@gmail.com
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
 drivers/ram/rockchip/sdram_rk3399.c | 79 +++++++++++++++++++++--------
 1 file changed, 59 insertions(+), 20 deletions(-)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 7ca76d304f..220197a42e 100644
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
@@ -328,6 +334,52 @@ static void set_ds_odt(const struct chan_info *chan,
 	clrsetbits_le32(&denali_phy[930], 0x1 << 17, reg_value);
 }
 
+static void pctl_start(struct dram_info *dram,
+		       const struct rk3399_sdram_params *sdram_params,
+		       u8 channel)
+{
+	const struct chan_info *chan = &dram->chan[channel];
+	u32 *ddrc0_con = get_ddrc0_con(dram, channel);
+	u32 *denali_ctl, *denali_phy;
+	u32 count = 0;
+	u32 byte, tmp;
+
+	denali_ctl = chan->pctl->denali_ctl;
+	denali_phy = chan->publ->denali_phy;
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
 			 const struct rk3399_sdram_params *sdram_params)
 {
@@ -498,7 +550,6 @@ static int pctl_cfg(struct dram_info *dram, const struct chan_info *chan,
 	const u32 *params_phy = sdram_params->phy_regs.denali_phy;
 	u32 tmp, tmp1, tmp2;
 	int ret;
-	const ulong timeout_ms = 200;
 
 	/*
 	 * work around controller bug:
@@ -516,8 +567,8 @@ static int pctl_cfg(struct dram_info *dram, const struct chan_info *chan,
 	writel(sdram_params->phy_regs.denali_phy[911], &denali_phy[911]);
 	writel(sdram_params->phy_regs.denali_phy[912], &denali_phy[912]);
 
-	dram->pwrup_srefresh_exit = readl(&denali_ctl[68]) &
-				    PWRUP_SREFRESH_EXIT;
+	dram->pwrup_srefresh_exit[channel] = readl(&denali_ctl[68]) &
+					     PWRUP_SREFRESH_EXIT;
 	clrbits_le32(&denali_ctl[68], PWRUP_SREFRESH_EXIT);
 
 	/* PHY_DLL_RST_EN */
@@ -578,22 +629,6 @@ static int pctl_cfg(struct dram_info *dram, const struct chan_info *chan,
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
 
@@ -1183,6 +1218,9 @@ static int sdram_init(struct dram_info *dram,
 			return ret;
 		}
 
+		/* start to trigger initialization */
+		pctl_start(dram, sdram_params, channel);
+
 		/* LPDDR2/LPDDR3 need to wait DAI complete, max 10us */
 		if (dramtype == LPDDR3)
 			udelay(10);
@@ -1260,6 +1298,7 @@ static int rk3399_dmc_init(struct udevice *dev)
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

Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07E1847B7A
	for <lists+linux-rockchip@lfdr.de>; Mon, 17 Jun 2019 09:41:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eB6ZYZRoAvOhlVW5MZV2qVD1+wWKEKs7fLT9tjzHaHU=; b=OuRg3q3+OaI2/5
	OxBcX41i4V+/WbRDFDg6SMtkB/ZUMjcQFZyjO222yAjydYiIwJslRxJWws9VCpNpwn0Epd/ZrTk4V
	agIu/MrKhvj3BVfaNKI2F6SzkADKPB4CeN0X8uVQ/rk0ypYzyX3WDCfw9j3ArlqatGWAu6kaGTkJK
	VH7QYR27gcp9JTCfmRu3YdcHvNSolA5YSS5Ro5MW9iADK7tNFVbboUR0UhVo2N9yUgXZ865qknip6
	ySdPZAt7spuDtea6rS7LIPbEH+K27Cawg9Bp1TFYWtmbQM36BVdA1fvo01O39dQ3rne65LsfI6QWO
	rVwVTvaTk+cAJ+eZO/dQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcmGd-000262-FH; Mon, 17 Jun 2019 07:41:27 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcmGW-00021x-GV
 for linux-rockchip@lists.infradead.org; Mon, 17 Jun 2019 07:41:21 +0000
Received: by mail-pg1-x544.google.com with SMTP id 83so5300004pgg.8
 for <linux-rockchip@lists.infradead.org>; Mon, 17 Jun 2019 00:41:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=dAfgTPZadk9TFr+HjBgU/KxFFR+Gxjp4JsZhrejy6cE=;
 b=nyoh2GPr4D58Ne3b+L3hRLyaQgkYztQ0PyePe5IGJ8gf4WM7aQic7QQzR1RJ+bUdHk
 4OGjrOAvDFfDz7ilHgcyC+OZPaehMXz0d/ei9oEArt6Wf9wq6AaKHclwDvp+UYTDIo9o
 NOul+Z2nV9iqZ1faGl2t9r9lkB/AXAkUV3BAc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=dAfgTPZadk9TFr+HjBgU/KxFFR+Gxjp4JsZhrejy6cE=;
 b=htSFhfR8s2bbYf2Y9dwFmbOr9UN+KLeZuRS91MpwPtgjN04SC5wjUtGwl5qZ7zjbM2
 mgnYMjRX4QuESyD+/tQsLEhP+XtK0uZ9+cc8Yu5+PNytXBa74ZKaET1epkB2yZ9LrJ7S
 2us75zUexeUtm6Uly9IhaYCefqKg89QcCjbYk354sd1wyyRkhWxK07koooTdiVmxRWSu
 MTd11NaYIkAUzigTeaes0Nz8uO2jfNfy5b9D8edRxFKCyqFfIt/tgSleBJofh6jJayyu
 /zC552T6k/y3p8uJRqm9qdclsXnO2SeDFMsTimLRs2L0WHrYRhcVHuaDPp6t4lFzzURj
 rzgA==
X-Gm-Message-State: APjAAAX1Sj5Qls6CvtrBV35XOyAQA4+g/AizSZrhPHaEpT4KK1n49b65
 3vKrrS1cY9LU8x1lboFrRW/euQ==
X-Google-Smtp-Source: APXvYqxIpqByiFwgQ1B5vE4hGWTsg3tSBFuPUNOtx/Kx1BfAMjTNihm9SZ1y2cTgV2Pa3hYb+dBhnQ==
X-Received: by 2002:a63:454a:: with SMTP id u10mr45545756pgk.291.1560757279713; 
 Mon, 17 Jun 2019 00:41:19 -0700 (PDT)
Received: from localhost.localdomain ([49.206.203.245])
 by smtp.gmail.com with ESMTPSA id m41sm15205998pje.18.2019.06.17.00.41.16
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 00:41:19 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v2 90/99] ram: rk3399: Set lpddr4 dq odt
Date: Mon, 17 Jun 2019 13:02:43 +0530
Message-Id: <20190617073252.27810-91-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190617073252.27810-1-jagan@amarulasolutions.com>
References: <20190617073252.27810-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_004120_559971_45ECAB6C 
X-CRM114-Status: GOOD (  12.54  )
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

Set DQ ODT based identified controller in lpddr4
as part of LPDDR set rate initialization phase.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 82 +++++++++++++++++++++++++++--
 1 file changed, 79 insertions(+), 3 deletions(-)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 07759e8956..ddda6f8ebd 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -1559,13 +1559,26 @@ struct rk3399_sdram_params lpddr4_timings[] = {
 	#include "sdram-rk3399-lpddr4-800.inc"
 };
 
-static u32 lpddr4_get_phy(const struct rk3399_sdram_params *params, u32 ctl)
+static void *get_denali_pi(const struct chan_info *chan,
+			   struct rk3399_sdram_params *params, bool reg)
+{
+	return reg ? &chan->pi->denali_pi : &params->pi_regs.denali_pi;
+}
+
+static u32 lpddr4_get_phy(struct rk3399_sdram_params *params, u32 ctl)
 {
 	u32 lpddr4_phy[] = {1, 0, 0xb};
 
 	return lpddr4_phy[ctl];
 }
 
+static u32 lpddr4_get_ctl(struct rk3399_sdram_params *params, u32 phy)
+{
+	u32 lpddr4_ctl[] = {1, 0, 2};
+
+	return lpddr4_ctl[phy];
+}
+
 static u32 get_ddr_stride(struct rk3399_pmusgrf_regs *pmusgrf)
 {
 	return ((readl(&pmusgrf->soc_con4) >> 10) & 0x1F);
@@ -1784,16 +1797,65 @@ end:
 	return ret;
 }
 
+static void set_lpddr4_dq_odt(const struct chan_info *chan,
+			      struct rk3399_sdram_params *params, u32 ctl,
+			      bool en, bool ctl_phy_reg, u32 mr5)
+{
+	u32 *denali_ctl = get_denali_ctl(chan, params, ctl_phy_reg);
+	u32 *denali_pi = get_denali_pi(chan, params, ctl_phy_reg);
+	struct io_setting *io;
+	u32 reg_value;
+
+	if (!en)
+		return;
+
+	io = lpddr4_get_io_settings(params, mr5);
+
+	reg_value = io->dq_odt;
+
+	switch (ctl) {
+	case 0:
+		clrsetbits_le32(&denali_ctl[139], 0x7 << 24, reg_value << 24);
+		clrsetbits_le32(&denali_ctl[153], 0x7 << 24, reg_value << 24);
+
+		clrsetbits_le32(&denali_pi[132], 0x7 << 0, (reg_value << 0));
+		clrsetbits_le32(&denali_pi[139], 0x7 << 16, (reg_value << 16));
+		clrsetbits_le32(&denali_pi[147], 0x7 << 0, (reg_value << 0));
+		clrsetbits_le32(&denali_pi[154], 0x7 << 16, (reg_value << 16));
+		break;
+	case 1:
+		clrsetbits_le32(&denali_ctl[140], 0x7 << 0, reg_value << 0);
+		clrsetbits_le32(&denali_ctl[154], 0x7 << 0, reg_value << 0);
+
+		clrsetbits_le32(&denali_pi[129], 0x7 << 16, (reg_value << 16));
+		clrsetbits_le32(&denali_pi[137], 0x7 << 0, (reg_value << 0));
+		clrsetbits_le32(&denali_pi[144], 0x7 << 16, (reg_value << 16));
+		clrsetbits_le32(&denali_pi[152], 0x7 << 0, (reg_value << 0));
+		break;
+	case 2:
+	default:
+		clrsetbits_le32(&denali_ctl[140], 0x7 << 8, (reg_value << 8));
+		clrsetbits_le32(&denali_ctl[154], 0x7 << 8, (reg_value << 8));
+
+		clrsetbits_le32(&denali_pi[127], 0x7 << 0, (reg_value << 0));
+		clrsetbits_le32(&denali_pi[134], 0x7 << 16, (reg_value << 16));
+		clrsetbits_le32(&denali_pi[142], 0x7 << 0, (reg_value << 0));
+		clrsetbits_le32(&denali_pi[149], 0x7 << 16, (reg_value << 16));
+		break;
+	}
+}
+
 static void lpddr4_copy_phy(struct dram_info *dram,
 			    struct rk3399_sdram_params *params, u32 phy,
 			    struct rk3399_sdram_params *timings,
 			    u32 channel)
 {
-	u32 *denali_phy;
+	u32 *denali_ctl, *denali_phy;
 	u32 *denali_phy_params;
 	u32 speed = 0;
-	u32 mr5;
+	u32 ctl, mr5;
 
+	denali_ctl = dram->chan[channel].pctl->denali_ctl;
 	denali_phy = dram->chan[channel].publ->denali_phy;
 	denali_phy_params = timings->phy_regs.denali_phy;
 
@@ -2028,6 +2090,9 @@ static void lpddr4_copy_phy(struct dram_info *dram,
 	read_mr(dram->chan[channel].pctl, 1, 5, &mr5);
 	set_ds_odt(&dram->chan[channel], timings, true, mr5);
 
+	ctl = lpddr4_get_ctl(timings, phy);
+	set_lpddr4_dq_odt(&dram->chan[channel], timings, ctl, true, true, mr5);
+
 	/*
 	 * if phy_sw_master_mode_x not bypass mode,
 	 * clear phy_slice_pwr_rdc_disable.
@@ -2039,6 +2104,17 @@ static void lpddr4_copy_phy(struct dram_info *dram,
 		clrbits_le32(&denali_phy[266], 1 << 16);
 		clrbits_le32(&denali_phy[394], 1 << 16);
 	}
+
+	/*
+	 * when PHY_PER_CS_TRAINING_EN=1, W2W_DIFFCS_DLY_Fx can't
+	 * smaller than 8
+	 * NOTE: need use timings, not ddr_publ_regs
+	 */
+	if ((denali_phy_params[84] >> 16) & 1) {
+		if (((readl(&denali_ctl[217 + ctl]) >> 16) & 0x1f) < 8)
+			clrsetbits_le32(&denali_ctl[217 + ctl],
+					0x1f << 16, 8 << 16);
+	}
 }
 
 static void lpddr4_set_phy(struct dram_info *dram,
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A49793CF89
	for <lists+linux-rockchip@lfdr.de>; Tue, 11 Jun 2019 16:53:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xwiO2LxAR+X8nXZ7rnYiW+TquF3hePURAThFC4tv+r0=; b=L4hqqCEkjou935
	UgyqqxIBixMW42SDXyBtaKXXh/BQ52HTwndGCagMKRrFlmg1Pr64izgTcdFnvs55pD5pOdkyLR/jl
	Uhp2uLRmXvOHzw+83K4NlvXf07lJUaQvttpmv+pBSNuArxlDXhLVFFhWi+GT+XS2YtIBFKkY4/hto
	+ylQ2SIgQ9sn5KlJZKg1nLdrE87GWv4f918sch3/rppiCtJxXSAP9961dxz/iTlB0giH3Q2UIB5qX
	qvZ5zNKtpaFqisPeEVy4B+9iNMiRu881uF1AoemQbZagmOhx9dQaGRXVrWVKKyOBEhUgegbjoaR0d
	4mn/uwtJAtg33Q4z9XAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hai9I-0004gM-LG; Tue, 11 Jun 2019 14:53:20 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hai9D-0004e1-9r
 for linux-rockchip@lists.infradead.org; Tue, 11 Jun 2019 14:53:16 +0000
Received: by mail-pf1-x442.google.com with SMTP id s11so7571948pfm.12
 for <linux-rockchip@lists.infradead.org>; Tue, 11 Jun 2019 07:53:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=z5MNzPrJxUWALW+EgA6kZwKHJnbEGPJgsOoanu5Efa8=;
 b=SwxAipMnfWHpODNaYQCf8tmeWJ0fiDQ+ouPzBVaAcztdYmUdswFPK/0q/oClsr3Tcs
 Ab/0WM3160RNS7wqubFkZT3O/jjBypUGiCNPiQGb7q+FYEcI/R4aNsDCoCO6qrr8Mp82
 k4ShLfPb2ljOa4mV+9HZqSlZrOaum/jw4V89E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=z5MNzPrJxUWALW+EgA6kZwKHJnbEGPJgsOoanu5Efa8=;
 b=sICkF8LAzb2GFWq5Sgif4clguRuvORxfN5HKkvqPQPtdoM9/p1tBukI6TrG7efmvv9
 NiT5tIzecpuiyeq3MioTXGPqwV7L5OEEwQGIwV47glvOkd23V/4aZpPGFVoYcyR7spwH
 9ePbtG5DNWFrza978WNa98F+AkRTJvUxRX8ap0QRRMOJhiVsseMCICf23av64Dh9ZWsA
 Qig5aXnQMhZ2pEanJF49WZq/3qFntzWDtkzqJ4KlqICiG7QEYcWiNou8PPzbWwJMI1I9
 Q0Uf4QomcoIPn9PPVOpXKkLPXjJZOl0OI8toS+MeZ/83aMi9GZHUaf/Vi2Q+gjIYGqTu
 JKIQ==
X-Gm-Message-State: APjAAAUaudWivNRLUCqFq1MJni1KwB6eUuygJTmjCFgTV1h7xtPOMAyx
 QXdSsyd9b4QQjxLuBZ/l8iChrQ==
X-Google-Smtp-Source: APXvYqyJCAcAnags1repk+WRGRNwne1UAyqflHZ44ubyvmPJZU+gfxva9dY43uKJ9iPzubPG4N8gNQ==
X-Received: by 2002:a17:90a:9a8d:: with SMTP id
 e13mr27630657pjp.77.1560264794707; 
 Tue, 11 Jun 2019 07:53:14 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.18])
 by smtp.gmail.com with ESMTPSA id e9sm16206208pfn.154.2019.06.11.07.53.11
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Jun 2019 07:53:14 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH 21/92] ram: rk3399: Rename sys_reg with sys_reg2
Date: Tue, 11 Jun 2019 20:20:24 +0530
Message-Id: <20190611145135.21399-22-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190611145135.21399-1-jagan@amarulasolutions.com>
References: <20190611145135.21399-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_075315_357442_90688D80 
X-CRM114-Status: UNSURE (   9.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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

Use dram config variable name as sys_reg2 instead of sys_reg
since the final variable value is to written into a pmugrf
register named as sys_reg2.

This reflect the both variable and associated register
names are same and also help to add next sys_reg's to
add it in future.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 26 +++++++++++++-------------
 1 file changed, 13 insertions(+), 13 deletions(-)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 3241bc285e..4463fc84c8 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -1005,11 +1005,11 @@ static void set_ddrconfig(const struct chan_info *chan,
 static void dram_all_config(struct dram_info *dram,
 			    const struct rk3399_sdram_params *sdram_params)
 {
-	u32 sys_reg = 0;
+	u32 sys_reg2 = 0;
 	unsigned int channel, idx;
 
-	sys_reg |= SYS_REG_ENC_DDRTYPE(sdram_params->base.dramtype);
-	sys_reg |= SYS_REG_ENC_NUM_CH(sdram_params->base.num_channels);
+	sys_reg2 |= SYS_REG_ENC_DDRTYPE(sdram_params->base.dramtype);
+	sys_reg2 |= SYS_REG_ENC_NUM_CH(sdram_params->base.num_channels);
 	for (channel = 0, idx = 0;
 	     (idx < sdram_params->base.num_channels) && (channel < 2);
 	     channel++) {
@@ -1021,15 +1021,15 @@ static void dram_all_config(struct dram_info *dram,
 		if (sdram_params->ch[channel].col == 0)
 			continue;
 		idx++;
-		sys_reg |= SYS_REG_ENC_ROW_3_4(info->row_3_4, channel);
-		sys_reg |= SYS_REG_ENC_CHINFO(channel);
-		sys_reg |= SYS_REG_ENC_RANK(info->rank, channel);
-		sys_reg |= SYS_REG_ENC_COL(info->col, channel);
-		sys_reg |= SYS_REG_ENC_BK(info->bk, channel);
-		sys_reg |= SYS_REG_ENC_CS0_ROW(info->cs0_row, channel);
-		sys_reg |= SYS_REG_ENC_CS1_ROW(info->cs1_row, channel);
-		sys_reg |= SYS_REG_ENC_BW(info->bw, channel);
-		sys_reg |= SYS_REG_ENC_DBW(info->dbw, channel);
+		sys_reg2 |= SYS_REG_ENC_ROW_3_4(info->row_3_4, channel);
+		sys_reg2 |= SYS_REG_ENC_CHINFO(channel);
+		sys_reg2 |= SYS_REG_ENC_RANK(info->rank, channel);
+		sys_reg2 |= SYS_REG_ENC_COL(info->col, channel);
+		sys_reg2 |= SYS_REG_ENC_BK(info->bk, channel);
+		sys_reg2 |= SYS_REG_ENC_CS0_ROW(info->cs0_row, channel);
+		sys_reg2 |= SYS_REG_ENC_CS1_ROW(info->cs1_row, channel);
+		sys_reg2 |= SYS_REG_ENC_BW(info->bw, channel);
+		sys_reg2 |= SYS_REG_ENC_DBW(info->dbw, channel);
 
 		ddr_msch_regs = dram->chan[channel].msch;
 		noc_timing = &sdram_params->ch[channel].noc_timings;
@@ -1050,7 +1050,7 @@ static void dram_all_config(struct dram_info *dram,
 				     1 << 17);
 	}
 
-	writel(sys_reg, &dram->pmugrf->os_reg2);
+	writel(sys_reg2, &dram->pmugrf->os_reg2);
 	rk_clrsetreg(&dram->pmusgrf->soc_con4, 0x1f << 10,
 		     sdram_params->base.stride << 10);
 
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

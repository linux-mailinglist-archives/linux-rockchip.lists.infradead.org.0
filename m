Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EBA46A7F1
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 14:01:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QH6giUy6RfkGPq/HVa0Ch0yHewDhiyVBiIvGlxfEFZ4=; b=Kz0i1WTpV9f5zN
	uqhldswZ2uXiSazsCAABXmzU+M3qD3NmIiAxv629aSPebXPWrzFOQvJ4Yv2WPjy6+v127cDwyB0Wq
	hIjAtNOJz1pASFjRio20C87P99jzLWfytM+Momc0fxYoGeVgzDJ3yPe/6Mqmpqq8Gh4j3vz3DmPuU
	iVZibeyrSl8TOnT6oO6FnGWrlVr9jBMqy479oWCazF4U7/gq0DlQtJrwSh5bYqjCay/CvcYDphTb/
	IqXIYTFzUl2D3PESZjNGCxZk28goQ8cPo7Jcdc48k4EeEhG+tvYp6UynZEvo5Dr+hxk/mF7LuWKVL
	kViMCM1Zk9ikvrwL95/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnM8k-000759-16; Tue, 16 Jul 2019 12:01:02 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnM6S-00043m-6e
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 11:58:42 +0000
Received: by mail-pg1-x542.google.com with SMTP id t132so9326718pgb.9
 for <linux-rockchip@lists.infradead.org>; Tue, 16 Jul 2019 04:58:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=kFNo/GXViEG9p7wSNdfRyO+MY25YONaeT6MWxgn+4Hs=;
 b=L1qyMjdEP9E5z6Sv5OLfuR8qG9PYNOQxglPbonQ91yWP1Oroh0uKI0O+eR3gWwf5UP
 yaufR2PSkHydoygwZcGY4SEEFyStg0It+PzcXDi8ju8d1lNigimWiD+5bCkUKx7qdMOa
 4UZnl7cMCBL98vsNcORb3NzvlmVpqunwuyXrI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=kFNo/GXViEG9p7wSNdfRyO+MY25YONaeT6MWxgn+4Hs=;
 b=tRn9baR+IrJr9o/fbx+YDKwde7K+M4duTOWzuBDpHtOV+16wMXD+xsmHs8c0/yBHVm
 U3Ir8vpjQb6wfh6/C2cwAL/6U4dL2QOG40N4Ztwb5JdWnr8crucVbVq1WKv6Gsxj+gI1
 WJtix7kXs7aOtMpyKC/qGi7sdGr0Vu5CiKFw4+k4X7yFOYLpwLoVmiflyXl8VQTeExEd
 EPd8DoBEJyyNpVvmAISAgA5rXLssShMxcUX2dlVB+e2WR4j3JWSAZY8zRTzsLlJSOmpr
 6qoqpI00lJByXcImB0X178yTmDOGBFL7zNSoKuTxJVBlYv7Azul6j5S2Gc9M6isVfMnB
 9tOw==
X-Gm-Message-State: APjAAAX/mj4ahN7fBc2e22rPoXPpZX/Pg+hYtQuecegZBzRPN0w5yH/c
 RnEvuJFdpXyWLYhUcuZHPrERug==
X-Google-Smtp-Source: APXvYqz29N/UdASPaTLaod8HbeKTCKgoCM7TMbjbPzO8jCpprWzw3ZgiPfnaksqXDq5C5dCoZ4GCRg==
X-Received: by 2002:a65:500a:: with SMTP id f10mr2093572pgo.105.1563278319397; 
 Tue, 16 Jul 2019 04:58:39 -0700 (PDT)
Received: from localhost.localdomain ([49.206.201.107])
 by smtp.gmail.com with ESMTPSA id z24sm36269566pfr.51.2019.07.16.04.58.36
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 16 Jul 2019 04:58:38 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v3 12/57] ram: rk3399: Rename sys_reg with sys_reg2
Date: Tue, 16 Jul 2019 17:27:00 +0530
Message-Id: <20190716115745.12585-13-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190716115745.12585-1-jagan@amarulasolutions.com>
References: <20190716115745.12585-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_045840_428764_13E7BE15 
X-CRM114-Status: UNSURE (   9.85  )
X-CRM114-Notice: Please train this message.
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
index 2d3f0f6902..2ef969c07b 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -1073,11 +1073,11 @@ static void set_ddrconfig(const struct chan_info *chan,
 static void dram_all_config(struct dram_info *dram,
 			    const struct rk3399_sdram_params *params)
 {
-	u32 sys_reg = 0;
+	u32 sys_reg2 = 0;
 	unsigned int channel, idx;
 
-	sys_reg |= SYS_REG_ENC_DDRTYPE(params->base.dramtype);
-	sys_reg |= SYS_REG_ENC_NUM_CH(params->base.num_channels);
+	sys_reg2 |= SYS_REG_ENC_DDRTYPE(params->base.dramtype);
+	sys_reg2 |= SYS_REG_ENC_NUM_CH(params->base.num_channels);
 
 	for (channel = 0, idx = 0;
 	     (idx < params->base.num_channels) && (channel < 2);
@@ -1089,15 +1089,15 @@ static void dram_all_config(struct dram_info *dram,
 		if (params->ch[channel].cap_info.col == 0)
 			continue;
 		idx++;
-		sys_reg |= SYS_REG_ENC_ROW_3_4(info->cap_info.row_3_4, channel);
-		sys_reg |= SYS_REG_ENC_CHINFO(channel);
-		sys_reg |= SYS_REG_ENC_RANK(info->cap_info.rank, channel);
-		sys_reg |= SYS_REG_ENC_COL(info->cap_info.col, channel);
-		sys_reg |= SYS_REG_ENC_BK(info->cap_info.bk, channel);
-		sys_reg |= SYS_REG_ENC_CS0_ROW(info->cap_info.cs0_row, channel);
-		sys_reg |= SYS_REG_ENC_CS1_ROW(info->cap_info.cs1_row, channel);
-		sys_reg |= SYS_REG_ENC_BW(info->cap_info.bw, channel);
-		sys_reg |= SYS_REG_ENC_DBW(info->cap_info.dbw, channel);
+		sys_reg2 |= SYS_REG_ENC_ROW_3_4(info->cap_info.row_3_4, channel);
+		sys_reg2 |= SYS_REG_ENC_CHINFO(channel);
+		sys_reg2 |= SYS_REG_ENC_RANK(info->cap_info.rank, channel);
+		sys_reg2 |= SYS_REG_ENC_COL(info->cap_info.col, channel);
+		sys_reg2 |= SYS_REG_ENC_BK(info->cap_info.bk, channel);
+		sys_reg2 |= SYS_REG_ENC_CS0_ROW(info->cap_info.cs0_row, channel);
+		sys_reg2 |= SYS_REG_ENC_CS1_ROW(info->cap_info.cs1_row, channel);
+		sys_reg2 |= SYS_REG_ENC_BW(info->cap_info.bw, channel);
+		sys_reg2 |= SYS_REG_ENC_DBW(info->cap_info.dbw, channel);
 
 		ddr_msch_regs = dram->chan[channel].msch;
 		noc_timing = &params->ch[channel].noc_timings;
@@ -1118,7 +1118,7 @@ static void dram_all_config(struct dram_info *dram,
 				     1 << 17);
 	}
 
-	writel(sys_reg, &dram->pmugrf->os_reg2);
+	writel(sys_reg2, &dram->pmugrf->os_reg2);
 	rk_clrsetreg(&dram->pmusgrf->soc_con4, 0x1f << 10,
 		     params->base.stride << 10);
 
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3AB047B2D
	for <lists+linux-rockchip@lfdr.de>; Mon, 17 Jun 2019 09:37:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/JvuZ6+Ov1+nleQB/vq9LzSQFcsIGcTeRu0stry9hRw=; b=ad1WNMTBGJlBTa
	PIZkuT7krRjXTbb2i6tzxGpVOYulz+pzlYHncKJMLpZZiUX4ccti4oNv7AzIc5gXdi3qOBhMFUQJB
	p7pQc2JPCba7vKNTO8+Cc6MbvF7Qxbk+QcwXbEC0OEcT5qpD35919r1VgHRR87swPgWwKzPNGgBIt
	4Oe5uEhstq0ClOKHgLi8GJEMu3KFfyBuhALQQwP0AbC3/h0pEybdWx0jQMtaA7N3/uMeueBk+ng8F
	Ev6w0x2ncLxZ5kntp5mej4aBecvopvfH5/Te+yzwwVRGkfTDKkj+8ou0J0Qp7j/Xg3G30CLGchGTO
	7S2EXUOB6Lvo/yiYIq0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcmD2-000636-O2; Mon, 17 Jun 2019 07:37:44 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcmCt-0005xc-28
 for linux-rockchip@lists.infradead.org; Mon, 17 Jun 2019 07:37:36 +0000
Received: by mail-pg1-x544.google.com with SMTP id k187so5314868pga.0
 for <linux-rockchip@lists.infradead.org>; Mon, 17 Jun 2019 00:37:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=hZdXqAOxQV+7YboUatTpOWKW8+zHVr9FLJwzuAbfCv8=;
 b=cs5G5I5X0AuVdbZo2XQMPapooROLSM+FR3NBGeFEqJDgCFyzSpbPX/CSJDEJgLdUfD
 v52Qtql+JfO7sV3vRcXQT31RadPgpqpZF5GX8oM8e6yQNjlq1LJQB1hvBV4/d02qoEH1
 2OWP1XmdNwcHK7MSMr9+vOjx+Yb3HhjiIbbwI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=hZdXqAOxQV+7YboUatTpOWKW8+zHVr9FLJwzuAbfCv8=;
 b=MIt0vdvg9cGk+829Xe9X+HBRbNL6m3TaJn17uc3RtJpCAiw49W7Gt+IacxP0Usl2Yl
 eUn2zZaTmQvqdxS9eINDIACM4vl9FP/P46OwFTaLmewO61yTQS1gibGJ30BTHG1j8wmJ
 NgSQX9/HeB8TP+OqUnaEdGeUkRkZ5qihGaF8D/AFqveSVsb8BWlN8gwV97jQdyKsDnA1
 4jVapnuRs4OYgPB77fEY9lNJOL2EpsKtCiMs0nXNlQwi8RlWZZ/B9QTwodcI4vMh0QnV
 +XqaTGB+Jm+JuSqKxfJr60PGTX1Zc8nYm/OEbW8C0leBnDCMpIGdgd2+tG46hdJIsSr1
 opZw==
X-Gm-Message-State: APjAAAXZnIvk6cJ0lgeOJJqoX1oBACaM5gfyx+Il60+qyzmsMebr3nrM
 IZE96OcAbHtoN9Hza9VJgBePXw==
X-Google-Smtp-Source: APXvYqzFDTfYN+5ofU4t9ROqryNYnRixrVEmjXbcfj48HrjFn5bhc3/kXpbn/q8DyhDjPEBZzw/SGw==
X-Received: by 2002:a63:1243:: with SMTP id 3mr23875473pgs.235.1560757054475; 
 Mon, 17 Jun 2019 00:37:34 -0700 (PDT)
Received: from localhost.localdomain ([49.206.203.245])
 by smtp.gmail.com with ESMTPSA id m41sm15205998pje.18.2019.06.17.00.37.31
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 00:37:34 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v2 22/99] ram: rk3399: Rename sys_reg with sys_reg2
Date: Mon, 17 Jun 2019 13:01:35 +0530
Message-Id: <20190617073252.27810-23-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190617073252.27810-1-jagan@amarulasolutions.com>
References: <20190617073252.27810-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_003735_133941_665D52BD 
X-CRM114-Status: GOOD (  10.51  )
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
index e8203e4c32..bb673a862e 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -1004,11 +1004,11 @@ static void set_ddrconfig(const struct chan_info *chan,
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
@@ -1020,15 +1020,15 @@ static void dram_all_config(struct dram_info *dram,
 		if (params->ch[channel].col == 0)
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
 		noc_timing = &params->ch[channel].noc_timings;
@@ -1049,7 +1049,7 @@ static void dram_all_config(struct dram_info *dram,
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

Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1A0847B3B
	for <lists+linux-rockchip@lfdr.de>; Mon, 17 Jun 2019 09:38:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pdjHVvyYM/Fe7qKjx4YhLJM8sgTh/UkxvnP+fA0NaHo=; b=DHITrwJoANrxsi
	Dgvuz7KkOp8yHEv3xaZWAu5nd+CezMidMLiPo4uTr1b8qHHYMiZr7C2OVwZK4L1wPF6lYSbf9f11K
	Sf1/7JKQ/Irvtk+e6buAxwRY9Z1qdDULR+1qh4hRNBGA/Cbs8xjiIuo5GFxMtdsi41rM6EcONOeR4
	L9gGhTS2VhUCp+PBrIxxifSHkGYvN/lTT8EPwiJbGbMYtDz8MsxNISYYTjvHSxHWoqgr1UR2i8OiR
	dKLuIvyv4A/mkpJR62kSgAmvAbWbkS5d7t7ybsHiRReVT7Rv4l0tqQJcV09jQ3CDN6qN1hQpFqK7V
	Aqaevxfup3Aw94ynHIWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcmDh-0006gX-8M; Mon, 17 Jun 2019 07:38:25 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcmDa-0006b0-Q5
 for linux-rockchip@lists.infradead.org; Mon, 17 Jun 2019 07:38:20 +0000
Received: by mail-pg1-x541.google.com with SMTP id w10so663254pgj.7
 for <linux-rockchip@lists.infradead.org>; Mon, 17 Jun 2019 00:38:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=obImjyk9qssGTsMkZuAC4VFryJgB9ZKqPVtSdWp2VA0=;
 b=clcEzG5reUZqkYFNSgtRdTvJF4+YF8Q5e3YLC2xpiqifmX1s91itm8WPkR6SggPVRl
 Ty1jrPlvqb6IiHEUWHiGIoNq9uUzmlGpnD8DWyJ1xFuIHqZshImLsKf6Y6ZT2Km6BOlq
 42+rkvpSi5qjjDcZU1nOKOKKR03Zs91DUVa7c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=obImjyk9qssGTsMkZuAC4VFryJgB9ZKqPVtSdWp2VA0=;
 b=Z6QxF8SnpqNiUzNLTyYoJ+kN1u9qUDZr3mwyXgElB1v4UBAy0Gcvg+c6J7a6PCOe5s
 Q1YRArTauVQakLeSOacWGzJpI9eQ4s82f++4F9XMRsh/kiH3p/FPCJ6jOo/lXs19U10r
 BbGI33GKjFI6ZCFbq0JaOO/ZVRRCAHJpDdbovXpCMaGUeN+HZuFLSZR0SaiccHn9EmQ0
 iTH4Q1jK9dicmXbXnSkKIEbVjEH8aiKKtyRzlhdCt/I729oC/Ru0vEnT+rzvW/XBMr66
 7o+f3F1mbWpub1YThQwWDk6JJg9hKDzAwTMjgJo+pQFpeZ/41P+NC/mIw2Lg8HebdUwx
 88IQ==
X-Gm-Message-State: APjAAAX+o5ObEOVHq5rp0uWbi3pG1LM9QxSqL7jjsd9w+K4NZIWVcIne
 kAYS+WXUHQyFoPx72buQVXXrNw==
X-Google-Smtp-Source: APXvYqzNhfboRX3CyOhWAZD7Pw9skVEijohh+WTvFBfDy3ybgaHrXxJcLIEzZmZapSycb42jyxHKNg==
X-Received: by 2002:aa7:9f8b:: with SMTP id z11mr46560576pfr.121.1560757098196; 
 Mon, 17 Jun 2019 00:38:18 -0700 (PDT)
Received: from localhost.localdomain ([49.206.203.245])
 by smtp.gmail.com with ESMTPSA id m41sm15205998pje.18.2019.06.17.00.38.14
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 00:38:17 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v2 35/99] ram: rk3399: Add phy pctrl reset support
Date: Mon, 17 Jun 2019 13:01:48 +0530
Message-Id: <20190617073252.27810-36-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190617073252.27810-1-jagan@amarulasolutions.com>
References: <20190617073252.27810-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_003818_897599_776094BF 
X-CRM114-Status: GOOD (  10.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
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

Add support for phy pctrl reset support for both channel 0, 1.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 29 +++++++++++++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index f81ea1bdbf..313a177417 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -35,6 +35,10 @@
 #define PHY_DRV_ODT_40		0xe
 #define PHY_DRV_ODT_34_3	0xf
 
+#define CRU_SFTRST_DDR_CTRL(ch, n)	((0x1 << (8 + 16 + (ch) * 4)) | \
+					((n) << (8 + (ch) * 4)))
+#define CRU_SFTRST_DDR_PHY(ch, n)	((0x1 << (9 + 16 + (ch) * 4)) | \
+					((n) << (9 + (ch) * 4)))
 struct chan_info {
 	struct rk3399_ddr_pctl_regs *pctl;
 	struct rk3399_ddr_pi_regs *pi;
@@ -79,6 +83,29 @@ static void copy_to_reg(u32 *dest, const u32 *src, u32 n)
 	}
 }
 
+static void rkclk_ddr_reset(struct rk3399_cru *cru, u32 channel, u32 ctl,
+			    u32 phy)
+{
+	channel &= 0x1;
+	ctl &= 0x1;
+	phy &= 0x1;
+	writel(CRU_SFTRST_DDR_CTRL(channel, ctl) |
+				   CRU_SFTRST_DDR_PHY(channel, phy),
+				   &cru->softrst_con[4]);
+}
+
+static void phy_pctrl_reset(struct rk3399_cru *cru,  u32 channel)
+{
+	rkclk_ddr_reset(cru, channel, 1, 1);
+	udelay(10);
+
+	rkclk_ddr_reset(cru, channel, 1, 0);
+	udelay(10);
+
+	rkclk_ddr_reset(cru, channel, 0, 0);
+	udelay(10);
+}
+
 static void phy_dll_bypass_set(struct rk3399_ddr_publ_regs *ddr_publ_regs,
 			       u32 freq)
 {
@@ -1125,6 +1152,7 @@ static int sdram_init(struct dram_info *dram,
 {
 	unsigned char dramtype = params->base.dramtype;
 	unsigned int ddr_freq = params->base.ddr_freq;
+	struct rk3399_cru *cru = dram->cru;
 	int channel;
 	int ret;
 
@@ -1141,6 +1169,7 @@ static int sdram_init(struct dram_info *dram,
 		const struct chan_info *chan = &dram->chan[channel];
 		struct rk3399_ddr_publ_regs *publ = chan->publ;
 
+		phy_pctrl_reset(cru, channel);
 		phy_dll_bypass_set(publ, ddr_freq);
 
 		if (channel >= params->base.num_channels)
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

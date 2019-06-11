Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D597A3CF98
	for <lists+linux-rockchip@lfdr.de>; Tue, 11 Jun 2019 16:54:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7lgbHXK+TJ1ILSz202yJ5i13prGhjQlf2BN9QhjOXZc=; b=dW+Cx+bqVe6as6
	hJ6HZsxz7v2qN0lEDo/ZSgALtJ3gIJEvW0yhWEtf/YCAgiu7NCYNyOomvUs46nzg6Ollp2fEQBoCK
	reHxG5S+L9KaIReGzjPPtRJ0Qr4bE07uDys955pQFWPpdOLnVE9CfVSkouTiBbfILqL/A4YtBbIpo
	URMWoR/3PEmXqQdNUQzla08S4zS2bfGBITfibXnhcg506WT6sM0JN6z2A3aYnCpYoOGOoFm8gwE9d
	wEg0zi8O74DnWU8uN2LK4heK2iT8FRjuui+8CeqFkjJ5l0Q0kh378e2ZZGEiHUd8tIIYHzmuUsfBF
	8PnUXnYFKi3VjVBaBXlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haiA7-0005HG-1s; Tue, 11 Jun 2019 14:54:11 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haiA3-0005GF-SJ
 for linux-rockchip@lists.infradead.org; Tue, 11 Jun 2019 14:54:09 +0000
Received: by mail-pf1-x442.google.com with SMTP id t16so7579926pfe.11
 for <linux-rockchip@lists.infradead.org>; Tue, 11 Jun 2019 07:54:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Ckb/dVtuw942Plu9XgJ6pHzs/1bm+A1p+7DNE1ADw90=;
 b=fWT8VJYSmMzJAYNC80m2AzxvuKviRv1U4jSTik65lKbCMdRPWGSKqLdY0CWuW3SmYG
 Zu1zDSK29DPG2h7SHB+Rs8gOZh38hd8sYdsUEwUgPzPfAqMpE+V7VyPI3CmkDu57e8Ma
 xkD+AXCM2x89snotE2vfD18fPKGj4J1JGMiHQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Ckb/dVtuw942Plu9XgJ6pHzs/1bm+A1p+7DNE1ADw90=;
 b=YosfnjWD5VtRKT8H8eG9PpdMKLS3fbBqquDUwOcby6XFSLxe1Cx9lcQPGLxDo+p1Qg
 p4LMlSx6PGkSZ2QLFwhY9Xu0P0Ve78kyxiZgBk+opgpldzHpHGs3Rz3cXtVtwmUB4PDE
 JBKOaIw1GqnDyeiUkEXD6kFCNyVtN+x83c860YQs0w/XKjm2Vca48LMlgN2u8mCrLqC8
 t/SACDEG+uhtfs6zZGHV1usu9SpBuX00zANhQTtWgf7pp1aI9yGbSMK5wE1MPnu9LpOY
 sHiladOOPuvMqq0fZjVSfVKaudvhwzrvkkfwsskK4hwqs8gq86vZ3Ugk++s/N096Q+Ie
 GdWw==
X-Gm-Message-State: APjAAAVdWBVp1ndrnpHYBRLr/cVKLmx7fPLrWnh7GVIh+72rS4O313nr
 /TJASo5lEHuEBW+4RS32wzl9Hw==
X-Google-Smtp-Source: APXvYqx6VkHOMAsdNKttuOPOGpRsMDbET+LXthED6rYa89xIpORcS9/+u0D+UP890ROSguwOZKxq6A==
X-Received: by 2002:a63:2b8a:: with SMTP id
 r132mr20451397pgr.196.1560264847320; 
 Tue, 11 Jun 2019 07:54:07 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.18])
 by smtp.gmail.com with ESMTPSA id e9sm16206208pfn.154.2019.06.11.07.54.03
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Jun 2019 07:54:06 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH 34/92] ram: rk3399: Add phy pctrl reset support
Date: Tue, 11 Jun 2019 20:20:37 +0530
Message-Id: <20190611145135.21399-35-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190611145135.21399-1-jagan@amarulasolutions.com>
References: <20190611145135.21399-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_075407_914077_4C53B4C4 
X-CRM114-Status: GOOD (  10.14  )
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

Add support for phy pctrl reset support for both channel 0, 1.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 29 +++++++++++++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index e3945feca3..bbf56f29ae 100644
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
@@ -1126,6 +1153,7 @@ static int sdram_init(struct dram_info *dram,
 {
 	unsigned char dramtype = sdram_params->base.dramtype;
 	unsigned int ddr_freq = sdram_params->base.ddr_freq;
+	struct rk3399_cru *cru = dram->cru;
 	int channel;
 	int ret;
 
@@ -1142,6 +1170,7 @@ static int sdram_init(struct dram_info *dram,
 		const struct chan_info *chan = &dram->chan[channel];
 		struct rk3399_ddr_publ_regs *publ = chan->publ;
 
+		phy_pctrl_reset(cru, channel);
 		phy_dll_bypass_set(publ, ddr_freq);
 
 		if (channel >= sdram_params->base.num_channels)
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

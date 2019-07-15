Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C25D69AD0
	for <lists+linux-rockchip@lfdr.de>; Mon, 15 Jul 2019 20:29:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2V7IrZFfp+WNpBigBSxmqKLnqoQz82yMn61IBnsE9P4=; b=kQUbY8rtIRskyV
	NwO0FShmOJ65Qw/eU+BjYL1NXVJJAzczQm+eh+LRu7bn+K6TglN0wWdkuOg4Q1tWl4rl7oRABx0Kx
	nSXB+rhfkTxGL1YWjdpXFENzp9spdl40yDvYP94lHlcy/I68HPArxGBdP4ZBACVB8zuj8ZKfXyVpJ
	9+WTJLJa6Z6MJEupkp5sNPh5KMi8pwF+puJ/R2WO8oqDrJgJ/bcORnuisIi96yVnnGl5afF4CfDBm
	7qJMNn8TUldfQyp6xpksA7E+AHwRIrmq6kGvJ7c+tKP+ACkUFomFZhX5w9T1NsyloyzQICpPmY8ez
	xR2OXotcz3r6VU/97X+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn5jA-0000xC-7I; Mon, 15 Jul 2019 18:29:33 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn5j7-0000ub-08
 for linux-rockchip@lists.infradead.org; Mon, 15 Jul 2019 18:29:30 +0000
Received: by mail-pl1-x641.google.com with SMTP id c2so8696545plz.13
 for <linux-rockchip@lists.infradead.org>; Mon, 15 Jul 2019 11:29:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=uXXBkPZwOdhHsGqVX2Jarm/YH+B2FAJpIkLEG7ZU9Pk=;
 b=Tat/u98oIRVrXpu8ybaXNPGtci+fCUSX60eYyIgVKHFBBc0si7i0Q1ABrbFbrYuQm8
 oOrQZsJFHoWjkv2SSol6u85Keuvc/ITsh4Ei6ZR7pi2r/r1br2E34Y50e7dEUk0tD6Wq
 S1PspMwgZLhsFa8kYOHRVOrHyqjTHea0Umri0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=uXXBkPZwOdhHsGqVX2Jarm/YH+B2FAJpIkLEG7ZU9Pk=;
 b=EoEvBW9hitOO3D63Ql2OOO2tZKJrPwFe3Cyn8KEc+NzVJZv2KYTXdCjbNddCcXCztM
 u4kGw7yzSlcwcSwR+DLEiZ+WU29RMJ7mBgPsYieLzW4PY7WnezSPLep0j40t5ScoxiMI
 KcswIS6Qp5SbNVHqLBBoEpql3oyg/ejOIzZ6b4C1t5eRj1OAYwFgyvmk0ggeVQsxBrGn
 JLQoo4c8rdjdDPW4EYTY/1NYuvCeaYT9ny7fkjCET/jj0rgPy4XBKnKzh+0eE1zlOKd7
 mMqJGl1Bfy7ZjNSXpo4mJ7cD3THcCshyXwmitg62dnZkJEBpy43Id6smgUnG96s3CxXt
 hlrA==
X-Gm-Message-State: APjAAAVJTTKEM8lyNoCLXvzureYam/Odx+nA4d0LgCRZmWw1HANPCTS3
 pMIAUWih6d186qPbMiWZgtVHMA==
X-Google-Smtp-Source: APXvYqwMxlzQKfXPhDiRG+goYd3+BLwB4CqCzb/UKqs6Vu2L8XjvFsFVyrVqPNu5xkFJhM5RYGLq4w==
X-Received: by 2002:a17:902:744c:: with SMTP id
 e12mr29734884plt.287.1563215366319; 
 Mon, 15 Jul 2019 11:29:26 -0700 (PDT)
Received: from localhost.localdomain ([49.206.201.107])
 by smtp.gmail.com with ESMTPSA id y133sm20250075pfb.28.2019.07.15.11.29.23
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 15 Jul 2019 11:29:25 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v3 05/18] ram: rk3399: Add phy pctrl reset support
Date: Mon, 15 Jul 2019 23:58:43 +0530
Message-Id: <20190715182856.21688-6-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190715182856.21688-1-jagan@amarulasolutions.com>
References: <20190715182856.21688-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_112929_066967_6686B060 
X-CRM114-Status: GOOD (  11.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
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

Add support for phy pctrl reset support for both channel 0, 1.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 29 +++++++++++++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 16bd9427a6..a5da985e1a 100644
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
@@ -1129,6 +1156,7 @@ static int sdram_init(struct dram_info *dram,
 {
 	unsigned char dramtype = params->base.dramtype;
 	unsigned int ddr_freq = params->base.ddr_freq;
+	struct rk3399_cru *cru = dram->cru;
 	int channel;
 	int ret;
 
@@ -1145,6 +1173,7 @@ static int sdram_init(struct dram_info *dram,
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

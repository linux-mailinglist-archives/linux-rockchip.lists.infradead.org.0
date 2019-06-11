Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D97D73CF99
	for <lists+linux-rockchip@lfdr.de>; Tue, 11 Jun 2019 16:54:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mk4zGRkWANP4N4uq21ZkD1jBBOSCwZWseMIzHCy9nuM=; b=nKw5xC+r27oy8C
	4TRW1eHqslTbydefCHaHXUcOJA+/oxuD/bqJQcCeJ2A/reYO2uHz1SjqITBsPQXTIN9sSqHxx11wl
	N3aQji+oMTcREU2jZUiiL6lwgoJy9kUqbeN4Sp/oPMQOvv8lBGSmCqZCQw5hdtSKyCTIhrxAoxt2U
	OLgUV4KYosUHr2X821R21zKMEgpqdbFt96iWRJg71yZZxEUa4qpx11VOQURcmOfzAbZNrGSndp6ol
	LAYM0UGoZtlgnzuzN0xdxYNVvUBCP46Rt3C7mDjLWdrHYL8bG59vZNNT1F9bjBMFwNJCPJjlb7wWt
	rphvdkB4N0gQDnV/MxmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haiAB-0005Jg-3g; Tue, 11 Jun 2019 14:54:15 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haiA7-0005Ie-Ng
 for linux-rockchip@lists.infradead.org; Tue, 11 Jun 2019 14:54:13 +0000
Received: by mail-pl1-x641.google.com with SMTP id cl9so5218908plb.10
 for <linux-rockchip@lists.infradead.org>; Tue, 11 Jun 2019 07:54:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=LqdRoMBofZUwal7ZnZtD8e6Bzf9aoQ3r4aEYfycEPCo=;
 b=gvx4Nazy8FSo4zCjN3wyfMtzZhZ3swk2MtM+pemAvCVgcKFeQwCCTOFPAXcGy9Ooym
 WwQjFvh0cZNZZbplWMI9mCJutdwQ4+AvRSpuSQUFBHnhwARsPQaO9DWYjKKOrA+ctRRI
 cMOagxI5v0MPNus8Q8XfarKzdFmoyliMcRhnY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=LqdRoMBofZUwal7ZnZtD8e6Bzf9aoQ3r4aEYfycEPCo=;
 b=Xcxo8Lp5uu+Tjgv30iafR+oC3EMRGwgmD7QgMIAzy54XR/2kegczQA+KH81dHi5LbM
 Yed40oXjzJ1PlBaepr+jr2jXn8/McQtmj//wHT/oIdh3wJoUnRarZXXsd2QPHv50Ep/3
 OEXxuK5p+h9Q0CtlHATJ/BYHj+0jdzmkGSpMagDiZ9TRYdY61YW0fgb+qJwQe+L0KZ8W
 iuJCSkF4lFs1SxaQXUAujdulpe2A3lLdHE77kVEyz9qmv834UA7aMGP4WSIfhRha5126
 kYCKuDbY9zwU0pwXbj/EF9yy9LdLqywvIAXa38fHibYAYiJNXJvvwPrU5B4ghOCVdcEI
 OAsA==
X-Gm-Message-State: APjAAAX09h/idd2EdqFqS2xQ29a+DyxAv1N9wGqv/kF+oVKl1Zef4B/N
 op+QrET0dklAgq+joKtNNvaT1g==
X-Google-Smtp-Source: APXvYqzrZEFyDA84bNd+z8Tq4b23EssV13KHQAjeWZkfMjaadDosFyp4vSf8BHNfw//9txi6qHWK4w==
X-Received: by 2002:a17:902:bb90:: with SMTP id
 m16mr9745579pls.54.1560264851186; 
 Tue, 11 Jun 2019 07:54:11 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.18])
 by smtp.gmail.com with ESMTPSA id e9sm16206208pfn.154.2019.06.11.07.54.07
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Jun 2019 07:54:10 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH 35/92] ram: rk3399: Move pwrup_srefresh_exit to dram_info
Date: Tue, 11 Jun 2019 20:20:38 +0530
Message-Id: <20190611145135.21399-36-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190611145135.21399-1-jagan@amarulasolutions.com>
References: <20190611145135.21399-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_075411_768028_7FFDCD8A 
X-CRM114-Status: UNSURE (   9.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
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

Add pwrup_srefresh_exit to be part of dram_info so-that
the it can help to support pwrup_srefresh_exit in individual
channels while starting pctl in future.

No functionality change.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index bbf56f29ae..7ca76d304f 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -49,6 +49,7 @@ struct chan_info {
 struct dram_info {
 #if defined(CONFIG_TPL_BUILD) || \
 	(!defined(CONFIG_TPL) && defined(CONFIG_SPL_BUILD))
+	u32 pwrup_srefresh_exit;
 	struct chan_info chan[2];
 	struct clk ddr_clk;
 	struct rk3399_cru *cru;
@@ -487,8 +488,8 @@ static int phy_io_config(const struct chan_info *chan,
 	return 0;
 }
 
-static int pctl_cfg(const struct chan_info *chan, u32 channel,
-		    const struct rk3399_sdram_params *sdram_params)
+static int pctl_cfg(struct dram_info *dram, const struct chan_info *chan,
+		    u32 channel, const struct rk3399_sdram_params *sdram_params)
 {
 	u32 *denali_ctl = chan->pctl->denali_ctl;
 	u32 *denali_pi = chan->pi->denali_pi;
@@ -496,7 +497,6 @@ static int pctl_cfg(const struct chan_info *chan, u32 channel,
 	const u32 *params_ctl = sdram_params->pctl_regs.denali_ctl;
 	const u32 *params_phy = sdram_params->phy_regs.denali_phy;
 	u32 tmp, tmp1, tmp2;
-	u32 pwrup_srefresh_exit;
 	int ret;
 	const ulong timeout_ms = 200;
 
@@ -516,7 +516,8 @@ static int pctl_cfg(const struct chan_info *chan, u32 channel,
 	writel(sdram_params->phy_regs.denali_phy[911], &denali_phy[911]);
 	writel(sdram_params->phy_regs.denali_phy[912], &denali_phy[912]);
 
-	pwrup_srefresh_exit = readl(&denali_ctl[68]) & PWRUP_SREFRESH_EXIT;
+	dram->pwrup_srefresh_exit = readl(&denali_ctl[68]) &
+				    PWRUP_SREFRESH_EXIT;
 	clrbits_le32(&denali_ctl[68], PWRUP_SREFRESH_EXIT);
 
 	/* PHY_DLL_RST_EN */
@@ -592,7 +593,7 @@ static int pctl_cfg(const struct chan_info *chan, u32 channel,
 	debug("DRAM (%s): phy locked after %ld ms\n", __func__, get_timer(tmp));
 
 	clrsetbits_le32(&denali_ctl[68], PWRUP_SREFRESH_EXIT,
-			pwrup_srefresh_exit);
+			dram->pwrup_srefresh_exit);
 	return 0;
 }
 
@@ -1176,7 +1177,7 @@ static int sdram_init(struct dram_info *dram,
 		if (channel >= sdram_params->base.num_channels)
 			continue;
 
-		ret = pctl_cfg(chan, channel, sdram_params);
+		ret = pctl_cfg(dram, chan, channel, sdram_params);
 		if (ret < 0) {
 			printf("%s: pctl config failed\n", __func__);
 			return ret;
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

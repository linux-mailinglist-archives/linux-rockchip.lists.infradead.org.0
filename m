Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BD8469AD3
	for <lists+linux-rockchip@lfdr.de>; Mon, 15 Jul 2019 20:29:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tXy6XxNMGMvBZSNygHnw0PHLt3l9GTz16JVDeayCDeo=; b=Xph7hmsxFzZtOo
	zMWv5OsCPi6yQ8QXZ+f5LFBJHnPjec5OfG6YzWoyDJQZKsKBagU1m8kJUOVh02b8KUiY2+GPNPCOK
	+DbDbsdxGSq1/0StOP+xy03NVYPNqIovKN1aOkAZhHr1pMOj8SRWQLeUzSv7y2Prrm38fKr/4XcQ3
	su0FTVnSAO4HaglTj/Abxu5CxXj47N13s4ggj+HbwjnXmdlW4dSXjgDgdS4V7JwHKouBmvQPvD8FJ
	dR5vkM1cwyM0NDuj0e6H+lKfJAex3vRv/oeVNR267+2PQYgOrSrzZ5hR2TZtytUjHwAkkRjPuOaVN
	AcekAT51dlyTNf69VelA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn5jE-0000zX-TD; Mon, 15 Jul 2019 18:29:37 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn5j8-0000wm-PE
 for linux-rockchip@lists.infradead.org; Mon, 15 Jul 2019 18:29:32 +0000
Received: by mail-pl1-x643.google.com with SMTP id b7so8723780pls.6
 for <linux-rockchip@lists.infradead.org>; Mon, 15 Jul 2019 11:29:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Rl7swlURdE/LDJNQb1LtixpuiUQXln+fnRJTxC/bfZU=;
 b=J1G/MjaF9osA/dykMM3zLN7Lsd09KYCmrkw1oVfOOQLiA/+ZJlDsaJps0+lf7GKiv/
 1Fe8xEwdQEFZzA3Cq03k/o6FNb5nXYPO8+5bPK/6MpbgD6hSgoIY3B/nNWCggL7Psdkc
 g6EY+91ifqTPrGT/XbPUNiiYSQcVoqvX1X1sY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Rl7swlURdE/LDJNQb1LtixpuiUQXln+fnRJTxC/bfZU=;
 b=Oym14o5cBUVS/qiVF1D8rIlTjgFSklpR2pfjb6hYE1tvANDhWlvaQmL9u909LVLz16
 +bPCovsE7BTPRMuPk+uU2Bd2Jks3ca15fAc3V3bO52xn/CWoMdwRC0mI8fiHyUXDEJ+s
 0Ae3QsAodI7gmyLlvzx+oWfO2CP94AyJCZ/HgQveyfd6wLCwBZlnjoPlzrSvTPmC8YfF
 UC21jSlNkPetued6h7Esms/9HbKGiw0uq3WDLnWu9ziAtybfUOAm0/iCeABK4L5I1olK
 QnU0pkXBnsq0xJmyFUyzjUU1drmsD75Ily4JB9KN1N5l22nAhOXOnHitxGZQH10AYm7X
 hD0A==
X-Gm-Message-State: APjAAAUIbQZfBUeq/MCamq3gK2zQzSW2WI2j8FRtDS7ealBfH8PXYHXm
 RLwGQeW8igtjlTCUQ25wjEPNxA==
X-Google-Smtp-Source: APXvYqxUnOROp2lmy9/CpfkO5SbwUXkTB/QQE8yTejmG6c00cnCdaU5y1K+sAMcm13nNOCuZS8BTGQ==
X-Received: by 2002:a17:902:2868:: with SMTP id
 e95mr27967021plb.319.1563215369738; 
 Mon, 15 Jul 2019 11:29:29 -0700 (PDT)
Received: from localhost.localdomain ([49.206.201.107])
 by smtp.gmail.com with ESMTPSA id y133sm20250075pfb.28.2019.07.15.11.29.26
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 15 Jul 2019 11:29:29 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v3 06/18] ram: rk3399: Move pwrup_srefresh_exit to dram_info
Date: Mon, 15 Jul 2019 23:58:44 +0530
Message-Id: <20190715182856.21688-7-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190715182856.21688-1-jagan@amarulasolutions.com>
References: <20190715182856.21688-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_112930_816293_487A6D8D 
X-CRM114-Status: GOOD (  10.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
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

Add pwrup_srefresh_exit to be part of dram_info so-that
the it can help to support pwrup_srefresh_exit in individual
channels while starting pctl in future.

No functionality change.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index a5da985e1a..6e944cafd9 100644
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
-		    const struct rk3399_sdram_params *params)
+static int pctl_cfg(struct dram_info *dram, const struct chan_info *chan,
+		    u32 channel, const struct rk3399_sdram_params *params)
 {
 	u32 *denali_ctl = chan->pctl->denali_ctl;
 	u32 *denali_pi = chan->pi->denali_pi;
@@ -496,7 +497,6 @@ static int pctl_cfg(const struct chan_info *chan, u32 channel,
 	const u32 *params_ctl = params->pctl_regs.denali_ctl;
 	const u32 *params_phy = params->phy_regs.denali_phy;
 	u32 tmp, tmp1, tmp2;
-	u32 pwrup_srefresh_exit;
 	int ret;
 	const ulong timeout_ms = 200;
 
@@ -518,7 +518,8 @@ static int pctl_cfg(const struct chan_info *chan, u32 channel,
 	writel(params->phy_regs.denali_phy[911], &denali_phy[911]);
 	writel(params->phy_regs.denali_phy[912], &denali_phy[912]);
 
-	pwrup_srefresh_exit = readl(&denali_ctl[68]) & PWRUP_SREFRESH_EXIT;
+	dram->pwrup_srefresh_exit = readl(&denali_ctl[68]) &
+				    PWRUP_SREFRESH_EXIT;
 	clrbits_le32(&denali_ctl[68], PWRUP_SREFRESH_EXIT);
 
 	/* PHY_DLL_RST_EN */
@@ -594,7 +595,7 @@ static int pctl_cfg(const struct chan_info *chan, u32 channel,
 	debug("DRAM (%s): phy locked after %ld ms\n", __func__, get_timer(tmp));
 
 	clrsetbits_le32(&denali_ctl[68], PWRUP_SREFRESH_EXIT,
-			pwrup_srefresh_exit);
+			dram->pwrup_srefresh_exit);
 	return 0;
 }
 
@@ -1179,7 +1180,7 @@ static int sdram_init(struct dram_info *dram,
 		if (channel >= params->base.num_channels)
 			continue;
 
-		ret = pctl_cfg(chan, channel, params);
+		ret = pctl_cfg(dram, chan, channel, params);
 		if (ret < 0) {
 			printf("%s: pctl config failed\n", __func__);
 			return ret;
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

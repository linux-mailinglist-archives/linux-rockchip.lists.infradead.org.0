Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 313636A800
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 14:01:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=epA5lNc3x55ur8dH5R/3kwDjhxPRgZrQazQsdlkq3SQ=; b=g1uhZpR12oCEM/
	OTQ0s70mgeUXutzHw9f9emn1s/Y+q6JKXN55MewXhQoBF6ktG78zHyGsUOpecrxOCP6vu8MqJSCmG
	PwWDPceiM0heR+GBfP5y9WTr9oFv/MJiZK8feyI7htz0W3NfqFaR/orqgk91opVxunINA3uZupWQ+
	oV20mKUir/D62ex7OK7Zt3uAQSgdZKMW3S89DJyKRZLUUhMPrIa68ssKmdETpilS0DmCoZt7UMBoi
	jKpOebvQ5IfFRwZd3hDnY6RSutgKGOOTmd3pbI8dFjufFgNcXnPWKWfZ38dn9Qh5gDF+GfUs391YR
	naJVEyzQ/XJnT/gDzaDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnM9O-0007je-8o; Tue, 16 Jul 2019 12:01:42 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnM7F-0004ia-G6
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 11:59:35 +0000
Received: by mail-pg1-x542.google.com with SMTP id f5so505142pgu.5
 for <linux-rockchip@lists.infradead.org>; Tue, 16 Jul 2019 04:59:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=uqu7PB29bSdtqH47pAusxbjypIHUbAZ//ch+/8e+yqE=;
 b=OMtEuoLBtLQGwzdO8h2/25rJASWHwHPT2fB14+/Up8z4IBNePRz8xB/dAfNl6kl50T
 E8fFft4hdHj1A6/srjv5xqlhDUgSrSNDXDeJs9RVn43noVolIFTs6Rb+QB/4UguFsen7
 JiOxs7l/SPG7xurTcUycIvbvGNDz7O26cgVaM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=uqu7PB29bSdtqH47pAusxbjypIHUbAZ//ch+/8e+yqE=;
 b=rxCICTSkPr+2vU/j/ql8UD29zEMfnjTPlySjKJj7mHyV+CEkDtKE1UvR/F55Z4Sj3N
 KNpwEbx+EVcNYeiKS0biTSK3YtzV2ljkrngZPhysz1uZoekqDuwc4VvGInpVzHt2jwm+
 aFjhLqSdjjQ2NOFGJ1Dc4aidUmnR/LvPCMCe/OTroX5kvEmBo5nykd8vsVZwBLofoDN7
 GwQlBvsH8ErTuQ+cwIDBgpSIMrZ3bfSO/cLOocnXhLfHy6HMzH4fUmmr5NeEsV6Z5UUu
 IPpiTMOrZ3JHgOyde/51uaqlPUtxegSVhhx90f+E09Cu7/1qKjUJxcm68cT4YyBnMZ4y
 rnWg==
X-Gm-Message-State: APjAAAXm7tocXlnOIRInlBG3azMH/d6BegoopLtqFcp7Koq2o76OUyQd
 giSiHL2oJV3z9xONoG+ijo0sQg==
X-Google-Smtp-Source: APXvYqz2XWMoR0dXlSlHSbds1Bw1pP+7R8SUmytvPF20MPkJxaY9WxbdJGhnYj/Q+vH2DmNJAeFKWQ==
X-Received: by 2002:a17:90a:2506:: with SMTP id
 j6mr36804665pje.129.1563278368728; 
 Tue, 16 Jul 2019 04:59:28 -0700 (PDT)
Received: from localhost.localdomain ([49.206.201.107])
 by smtp.gmail.com with ESMTPSA id z24sm36269566pfr.51.2019.07.16.04.59.25
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 16 Jul 2019 04:59:28 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v3 26/57] ram: rk3399: Configure PHY_898, PHY_919 for lpddr4
Date: Tue, 16 Jul 2019 17:27:14 +0530
Message-Id: <20190716115745.12585-27-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190716115745.12585-1-jagan@amarulasolutions.com>
References: <20190716115745.12585-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_045929_650278_8D95CD65 
X-CRM114-Status: UNSURE (   8.74  )
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

PHY_898, PHY_919 would require to configure PHY LP4 boot
pll control and ca for lpddr4.

So, configure the same in pctl_cfg for LPDDR4.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index beb4f6de54..7625506458 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -574,6 +574,11 @@ static int pctl_cfg(struct dram_info *dram, const struct chan_info *chan,
 	writel(params->phy_regs.denali_phy[911], &denali_phy[911]);
 	writel(params->phy_regs.denali_phy[912], &denali_phy[912]);
 
+	if (IS_ENABLED(CONFIG_RAM_RK3399_LPDDR4)) {
+		writel(params->phy_regs.denali_phy[898], &denali_phy[898]);
+		writel(params->phy_regs.denali_phy[919], &denali_phy[919]);
+	}
+
 	dram->pwrup_srefresh_exit[channel] = readl(&denali_ctl[68]) &
 					     PWRUP_SREFRESH_EXIT;
 	clrbits_le32(&denali_ctl[68], PWRUP_SREFRESH_EXIT);
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C1166A7FE
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 14:01:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZFklXBpdLEVy8Nn7YjeR8wpY5i3P6kWMqywWbg49M2Y=; b=e4rXS4uSG9lbjA
	VBztsRn6KyILBt0uWQD73tf+ODq0YUlWoDd07l3kApOr6h6ZR2Fw16j2SAVOcmSj/oEpsLgtFXIlZ
	0oRoPDiY2EhnmTA5J0zUglJxLTfz013rn0sU8wW+lxmazUDnkbAyCm2NdXxjU3WFlhYeG97JE81mt
	ggUUWlHPmnBvdXldDhqaZsI+QfAHpn7EtWHb/8FeVCVItiVgy9h4mzUSuom9LjUpmXSj5+0uV/xh/
	vCwtnsi00ZPlK/q7pa5hKmXv6untY8g6hfxYPbOYfMm6SM/UhtoKzqaGYiWO6FR6720k8H3m7PLl/
	z8ZlKCyZm1/579VNMHDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnM9H-0007eL-Rs; Tue, 16 Jul 2019 12:01:35 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnM78-0004ci-5v
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 11:59:27 +0000
Received: by mail-pl1-x643.google.com with SMTP id b3so10007319plr.4
 for <linux-rockchip@lists.infradead.org>; Tue, 16 Jul 2019 04:59:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=QafmgbriflDoZckEsWmBvRP9dqWRhbWXJvx5leo6fWE=;
 b=G9GmkIyMxUCZafuwifwOyMOdvE4YUiW2Pyldq2P4jP7P9VWxjNyeR0Zl4daLeX2FQ5
 vkZA9rbjjBxHvMaG57CDiPasegRm6ilHtPPQPbRIRlFcHU3VoEdIKsX45VeZh0UF1H5/
 z2BKn0UCKoXyzrWy6NvoScWLGFnSm1HOwES/Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=QafmgbriflDoZckEsWmBvRP9dqWRhbWXJvx5leo6fWE=;
 b=YYKd5+yMBEZmr35oVW07GqCDWBmelvUYsj/YTxgREkLh0GHMIz03D82dvHKLEin/PZ
 XtEOaMoH+Bmvm9TqaYeLUU8wm1C1S/NRjD9v+0C+miNPg7oRVencBUgdBxdPgH+6khQo
 GKslFdyl0KqK/D0lE5VMH8ER9+JVI1+w3j69DztXBP6nvi1g2Q2IH3vmO+NYGo3lI2wB
 hl8V4IPtecD9MqgyijliiWU2D7NRjxlDe9egWOtprp5D+6XY4mMlU0KLnBNjHXDVXQgA
 ahKdxLgyLWdu5kTVeWjZ3O7lrBHEgo+pj+YOWvjsuzx+1tHMhlC4Qnv57oAmZe0c0X/H
 sNOw==
X-Gm-Message-State: APjAAAVHLKxHxfkucgbyS8TDA1yXBbEwQlDCrEaRPWnqOhnXhUXaQJhI
 cqJ/7pZ6y7/rBxSvsZQ2P0lNTA==
X-Google-Smtp-Source: APXvYqyE/7+HV9SffRiIsTWg8Q4mpOhgTo1TGjLp8atNtz70aONaZN0ZeQ00NncLC/3ZruCkqp89wQ==
X-Received: by 2002:a17:902:8c98:: with SMTP id
 t24mr35697603plo.320.1563278361602; 
 Tue, 16 Jul 2019 04:59:21 -0700 (PDT)
Received: from localhost.localdomain ([49.206.201.107])
 by smtp.gmail.com with ESMTPSA id z24sm36269566pfr.51.2019.07.16.04.59.18
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 16 Jul 2019 04:59:21 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v3 24/57] ram: rk3399: Don't wait for PLL lock in lpddr4
Date: Tue, 16 Jul 2019 17:27:12 +0530
Message-Id: <20190716115745.12585-25-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190716115745.12585-1-jagan@amarulasolutions.com>
References: <20190716115745.12585-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_045923_311054_F91541ED 
X-CRM114-Status: GOOD (  10.53  )
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

lpddr4 has PLL bypass mode during phy initialization phase,
which does all pll configurations.

So no need to wait explicitly during pctl config.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 26 ++++++++++++++++----------
 1 file changed, 16 insertions(+), 10 deletions(-)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 88fbfa440d..023838a301 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -570,16 +570,22 @@ static int pctl_cfg(struct dram_info *dram, const struct chan_info *chan,
 	setbits_le32(&denali_pi[0], START);
 	setbits_le32(&denali_ctl[0], START);
 
-	/* Waiting for phy DLL lock */
-	while (1) {
-		tmp = readl(&denali_phy[920]);
-		tmp1 = readl(&denali_phy[921]);
-		tmp2 = readl(&denali_phy[922]);
-		if ((((tmp >> 16) & 0x1) == 0x1) &&
-		    (((tmp1 >> 16) & 0x1) == 0x1) &&
-		    (((tmp1 >> 0) & 0x1) == 0x1) &&
-		    (((tmp2 >> 0) & 0x1) == 0x1))
-			break;
+	/**
+	 * LPDDR4 use PLL bypass mode for init
+	 * not need to wait for the PLL to lock
+	 */
+	if (params->base.dramtype != LPDDR4) {
+		/* Waiting for phy DLL lock */
+		while (1) {
+			tmp = readl(&denali_phy[920]);
+			tmp1 = readl(&denali_phy[921]);
+			tmp2 = readl(&denali_phy[922]);
+			if ((((tmp >> 16) & 0x1) == 0x1) &&
+			    (((tmp1 >> 16) & 0x1) == 0x1) &&
+			    (((tmp1 >> 0) & 0x1) == 0x1) &&
+			    (((tmp2 >> 0) & 0x1) == 0x1))
+				break;
+		}
 	}
 
 	copy_to_reg(&denali_phy[896], &params_phy[896], (958 - 895) * 4);
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

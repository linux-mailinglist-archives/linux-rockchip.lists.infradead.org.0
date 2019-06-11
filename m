Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45D0E3CF8E
	for <lists+linux-rockchip@lfdr.de>; Tue, 11 Jun 2019 16:53:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uWBaNwzGRxnL8Qq+1gbJx91KjJfolxbUqaugAmGwc2E=; b=a06mrc9DN64o+k
	6vRxvxbkKYrimBni3cu5Hm3aC5tg3muPUdi+2Kz55MvhycAJ0iywpv74Gs0rreO0pUkcgwQMkbRHQ
	w8vofsTfLtdJcmspPQN+3shdf/XSrJJVa9P+XfRiDupwgVtj1GpNZjkXB74rlGwk0VBq5VLnQhmJo
	fUdCKdK1uFl989lpffjMuRX7eOoeIS51EcKW8WSfy25xNR9NKALSgDqB466iK+qD5JyoeUVgvkQXp
	YIKY6BxwMTAG3puRWxH/8aI6pObD1Xy+HBtPGfDzQOsjSER3KPWylKVXAC6R3rMx2YexvJ8WsoECn
	Q18lJwVhvuaauJ0SCDLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hai9b-0004tx-Ci; Tue, 11 Jun 2019 14:53:39 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hai9X-0004sJ-TP
 for linux-rockchip@lists.infradead.org; Tue, 11 Jun 2019 14:53:37 +0000
Received: by mail-pf1-x442.google.com with SMTP id c85so7607888pfc.1
 for <linux-rockchip@lists.infradead.org>; Tue, 11 Jun 2019 07:53:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=rl7D8VxB/uajjmKlPKunXR7uqNow8tYaqhy8wy5znxA=;
 b=KjaGpcd11JD1tgPU649e4HB3B5V7Az8+Mp+IqkpM1W9qVz/QCig8+bGS4JKbQKG5+C
 KFr1pQDCtcMI6qRkpecxxt2ZGAObImFGcDnqFcnLo7k1ojLbrVnhvRc1eEmfD4qsRUqG
 Tx9xSL0t0ZMGr+1FsFBaxcJN/wRvhqle2z1gw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=rl7D8VxB/uajjmKlPKunXR7uqNow8tYaqhy8wy5znxA=;
 b=gOvLsYZOcEkLCaKRszMClab3hnBTI+VWp2NZGDDs2vXqxhRCbxhvIGPJEx392zc7hd
 clN99rBjBFBd0q6Xa+nbsPS+3Iemfw6zXFVvvmaIwQ+TqHuDlqJaS1gDxXhWws3yVlQV
 Em3m4R+Vzq1QyKi5GWZyIrw5fhcd0ezYvzeyCPw1TUCUiF0WSW/eURPSKmBC8LOMQX0L
 qO724P25728qhklgbrkR1Nt/eaKnsQGEOh1XmNzRWfg/GDuTEXHkwbPrp8m57RPDJwQa
 wl9o6OJcQD1NPZd1b2BLfrQhbe2qn05s4+Q5VJNbHAX5zqI+V101kv/kqccno8zWdMWl
 3ZPA==
X-Gm-Message-State: APjAAAUmTU8TaLIi6I8pKsdTWK/nOzulPw1NAombGkR1Lj/QcpeE6Ver
 R6ikn9yPUJu5UWMru6AB6GrBsw==
X-Google-Smtp-Source: APXvYqy0a8aV9NGXxNtiu34Tp3y++8/MTz3msgGbPo9V0Cph7d/4XBbsarZRcn0QJ0BSRz8ydPsJ5A==
X-Received: by 2002:a63:db4e:: with SMTP id x14mr21418185pgi.119.1560264815340; 
 Tue, 11 Jun 2019 07:53:35 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.18])
 by smtp.gmail.com with ESMTPSA id e9sm16206208pfn.154.2019.06.11.07.53.31
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Jun 2019 07:53:34 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH 26/92] ram: rk3399: Add ddrtimingC0
Date: Tue, 11 Jun 2019 20:20:29 +0530
Message-Id: <20190611145135.21399-27-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190611145135.21399-1-jagan@amarulasolutions.com>
References: <20190611145135.21399-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_075336_017302_214C95B6 
X-CRM114-Status: GOOD (  10.13  )
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

Add DdrTimingC0 structure with associated bit fields.

These would help to reconfigure sdram capabilities during
lpddr4 setup related configs.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm/include/asm/arch-rockchip/sdram_rk3399.h | 12 +++++++++++-
 drivers/ram/rockchip/sdram_rk3399.c               |  2 +-
 2 files changed, 12 insertions(+), 2 deletions(-)

diff --git a/arch/arm/include/asm/arch-rockchip/sdram_rk3399.h b/arch/arm/include/asm/arch-rockchip/sdram_rk3399.h
index c6a260bad8..924eeb3bac 100644
--- a/arch/arm/include/asm/arch-rockchip/sdram_rk3399.h
+++ b/arch/arm/include/asm/arch-rockchip/sdram_rk3399.h
@@ -26,6 +26,16 @@ struct rk3399_ddr_pi_regs {
 	u32 denali_pi[200];
 };
 
+union noc_ddrtimingc0 {
+	u32 d32;
+	struct {
+		unsigned burstpenalty : 4;
+		unsigned reserved0 : 4;
+		unsigned wrtomwr : 6;
+		unsigned reserved1 : 18;
+	} b;
+};
+
 struct rk3399_msch_regs {
 	u32 coreid;
 	u32 revisionid;
@@ -44,7 +54,7 @@ struct rk3399_msch_regs {
 struct rk3399_msch_timings {
 	u32 ddrtiminga0;
 	u32 ddrtimingb0;
-	u32 ddrtimingc0;
+	union noc_ddrtimingc0 ddrtimingc0;
 	u32 devtodev0;
 	u32 ddrmode;
 	u32 agingx0;
diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 5b87524b7c..f9fec14758 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -1043,7 +1043,7 @@ static void dram_all_config(struct dram_info *dram,
 		       &ddr_msch_regs->ddrtiminga0);
 		writel(noc_timing->ddrtimingb0,
 		       &ddr_msch_regs->ddrtimingb0);
-		writel(noc_timing->ddrtimingc0,
+		writel(noc_timing->ddrtimingc0.d32,
 		       &ddr_msch_regs->ddrtimingc0);
 		writel(noc_timing->devtodev0,
 		       &ddr_msch_regs->devtodev0);
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

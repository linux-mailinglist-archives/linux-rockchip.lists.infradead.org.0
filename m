Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DF9F3CFA6
	for <lists+linux-rockchip@lfdr.de>; Tue, 11 Jun 2019 16:55:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DsYTBx/L5vYAXBPrc+oQZ3ooRCrRMNBlPVOPFWfVMr0=; b=bNG3vHFsMwnKot
	Zs2/BgPLJJK6hf5PCdhfQfkU+Lbz0FGmyUhDURvAr0gSUF6FHj8GtjRR997UvmqaimkeZ5QE+kQZH
	4hTqn+v7Xt8rLQCB/ybx18Q53LDAikfJ97ocvcLL0dh6Duwh0Cm1CbsARPxBcMMR1rw/Mxr4wWPNl
	VC1rWrsvJodB++CmUEqq01YUqnp0l5buW50FfZxJXMFhY/i75wc/8z74VvFGGwgMcEw+eeousmXSV
	6v9vR8fMmAz16iA/6XSNM0MgyTP1qudyeezExi0a8frvwntFYtmb5acwjZRKUdzNmzAPoB4d9e95S
	jltrlERmvZXGWleGRf/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haiAu-0005nh-6x; Tue, 11 Jun 2019 14:55:00 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haiAp-0005ld-HZ
 for linux-rockchip@lists.infradead.org; Tue, 11 Jun 2019 14:54:56 +0000
Received: by mail-pg1-x541.google.com with SMTP id 20so7122717pgr.4
 for <linux-rockchip@lists.infradead.org>; Tue, 11 Jun 2019 07:54:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=kw/++CuXx6mQuiTZ6aAWPkhA635XZSGQPzWMsqf+2Gk=;
 b=a1CevRZ82iPn1C4Yh/S5y4YORLMlfLinu6yGWROfnPPHocAt2mqSgNftUKERz16Moa
 EdoX1XxlP0q7CZKzCgBL8jRgjstZW2c0w2l3KBxEX9qIv2J/6gmsV7cDy39kbp1hDAUf
 XIuO4Ae1uuXgaDyyJ005+owpIDeXZple5zK8I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=kw/++CuXx6mQuiTZ6aAWPkhA635XZSGQPzWMsqf+2Gk=;
 b=Fa62lrFeekzUHW6JVyyE8SPbfnTnERgvuaUejwvsBgkboD56bMdmvw51+8oldsGvcA
 4lzPHVj/LFkwX6R6Zs5kucmokS+7xEsgcXQwfUwv+I/b3XS4NTLTel6RViTXTH1DfuhN
 k271+iEwLczZsVLEjWpHc6YJK2XgbGySbmGlw+ZCBIq6JqoVPtU8Ag8YNmvDO/63DR30
 dWmNwRPrfCWMZutxFmoXKTMQczFURJM66cR0tX+gMiMuAej38XclTeuDQEUj0obBGT1n
 SEmLdCcsi7M1qEOK84O46Eh09S8dgnDEK2WwbGIRPYr8nYBIb19deS0vSGLoc5s2yiwO
 UYsQ==
X-Gm-Message-State: APjAAAVOpWVu47whCZDt3gqJrzQ29CTJ85ZfYgF3JXPunwtUji4DGbJQ
 LwSrVtqDjQL48IB/NsmSY5PKag==
X-Google-Smtp-Source: APXvYqxs1B6rtuUE+Y+sYZvyVU2Mip6PWaOVH7BC3Jux46aJ6rzd8H5TKIYKGqI3QxICVxypr8/E2g==
X-Received: by 2002:a63:6c87:: with SMTP id
 h129mr21158099pgc.427.1560264895006; 
 Tue, 11 Jun 2019 07:54:55 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.18])
 by smtp.gmail.com with ESMTPSA id e9sm16206208pfn.154.2019.06.11.07.54.51
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Jun 2019 07:54:54 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH 46/92] ram: rockchip: debug: Get the cs capacity
Date: Tue, 11 Jun 2019 20:20:49 +0530
Message-Id: <20190611145135.21399-47-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190611145135.21399-1-jagan@amarulasolutions.com>
References: <20190611145135.21399-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_075455_680943_F3E9BD48 
X-CRM114-Status: GOOD (  10.72  )
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

Add code to get the channel capacity, this would help to
print the capacity of specific channel.

Here is sample print on LPDDR4, 50MHz channel 0
BW=32 Col=10 Bk=8 CS0 Row=15 CS1 Row=15 CS=2 Die BW=16 Size=2048MB

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 drivers/ram/rockchip/sdram_debug.c | 46 +++++++++++++++++++++++++++++-
 1 file changed, 45 insertions(+), 1 deletion(-)

diff --git a/drivers/ram/rockchip/sdram_debug.c b/drivers/ram/rockchip/sdram_debug.c
index 69a6f94a73..19e9225c12 100644
--- a/drivers/ram/rockchip/sdram_debug.c
+++ b/drivers/ram/rockchip/sdram_debug.c
@@ -33,10 +33,46 @@ void sdram_print_dram_type(unsigned char dramtype)
 	}
 }
 
+/**
+ * cs  = 0, cs0
+ * cs  = 1, cs1
+ * cs => 2, cs0+cs1
+ * note: it didn't consider about row_3_4
+ */
+u64 sdram_get_cs_cap(struct sdram_cap_info *cap_info, u32 cs, u32 dram_type)
+{
+	u32 bg;
+	u64 cap[2];
+
+	if (dram_type == DDR4)
+		/* DDR4 8bit dram BG = 2(4bank groups),
+		 * 16bit dram BG = 1 (2 bank groups)
+		 */
+		bg = (cap_info->dbw == 0) ? 2 : 1;
+	else
+		bg = 0;
+
+	cap[0] = 1llu << (cap_info->bw + cap_info->col +
+		 bg + cap_info->bk + cap_info->cs0_row);
+
+	if (cap_info->rank == 2)
+		cap[1] = 1llu << (cap_info->bw + cap_info->col +
+			 bg + cap_info->bk + cap_info->cs1_row);
+	else
+		cap[1] = 0;
+
+	if (cs == 0)
+		return cap[0];
+	else if (cs == 1)
+		return cap[1];
+	else
+		return (cap[0] + cap[1]);
+}
+
 void sdram_print_ddr_info(struct sdram_cap_info *cap_info,
 			  struct sdram_base_params *base)
 {
-	u32 bg;
+	u32 bg, cap;
 
 	bg = (cap_info->dbw == 0) ? 2 : 1;
 
@@ -71,4 +107,12 @@ void sdram_print_ddr_info(struct sdram_cap_info *cap_info,
 
 	printascii(" Die BW=");
 	printdec(8 << cap_info->dbw);
+
+	cap = sdram_get_cs_cap(cap_info, 3, base->dramtype);
+	if (cap_info->row_3_4)
+		cap = cap * 3 / 4;
+
+	printascii(" Size=");
+	printdec(cap >> 20);
+	printascii("MB\n");
 }
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

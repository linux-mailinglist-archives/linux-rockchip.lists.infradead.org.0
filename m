Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F8373CF97
	for <lists+linux-rockchip@lfdr.de>; Tue, 11 Jun 2019 16:54:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zEiK+5mvgJVHbz8GLQHzyuaseQmK0Cfb7SVJIVIY6ns=; b=UshcYlT2LPmGOd
	65KXApKK7IIsfr38XGufXVWx5T0DYDAWyaan69LjRjmiUC4dY5h/6N38Tte/y9jBohdWFsEsNVNlI
	LiqAt5efW9lus05DJc+nLZG7oOdi5OfQ+6pnUwfmcXISUwfpagTevWmrJ5KnM01TdkcjkUhtzpjjw
	HoDq2ypPbKBiXLcd22lBLplp/Hyr9IRBwTeqNCkdm0Z6o13CU3WDjNor5pd8zPeFSU3blqUvdVPeF
	Fel6b98FvIPbEvAKZTWM6+0TxOy2T6v75Gv0aK2hzalU5ANms+URXTDfScMfHj1e4OUdJgdv6IRBg
	poubkSs9C4Ts4KhnSRjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haiA2-0005EH-He; Tue, 11 Jun 2019 14:54:06 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hai9z-0005Cb-Bc
 for linux-rockchip@lists.infradead.org; Tue, 11 Jun 2019 14:54:04 +0000
Received: by mail-pf1-x444.google.com with SMTP id t16so7579807pfe.11
 for <linux-rockchip@lists.infradead.org>; Tue, 11 Jun 2019 07:54:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=+xc0HIO7NVzv6VpCdDAeq69DEeZPzBNW306ExnGeXqM=;
 b=Zg0f4FKjMNasThsor7op7kkO8lEJuk7pOX/XxWTgo0bNBdtPjnJC3ryzVB6jn53TAZ
 stwysRkPCXFXTCjSmW098ND3/EKVhV0KOMcmi3/tEyVx8FBOR68FNKtNDPlwUyFemsxX
 dBeksk0gbtJDcKLWhzDF7GF5PaaZeLTJ5TooU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+xc0HIO7NVzv6VpCdDAeq69DEeZPzBNW306ExnGeXqM=;
 b=qeYcL6L1jVYnjPn+s3QVqZm5l0sCxmusivuWyHvEOpWU/ebV3ivbE2Tp80ps3L9sWe
 8mpyzA9X9/QksU4a4c5uLsW4hvBKzQBoYV56zaFfrBq27dIAD0r8W9OjLAffc8DLpbsT
 4SAIeNp0HpwOQht462gRYeIYtvw7RUT5KdYhotM9DbmORY2O6pMXwkD52iEAWsvEHji8
 PdoREQMZ5mzqOETRkfk5PKxg09eQgJoW4j7uW/0nxeVDW+P2c95uHcxegNz0zFDeHL9l
 f0KA6SBdvsOW1YReE2P30uIcWX3soeXO4Vnv3u7tom80hcSZUy4VYqrkLEE5/dUGYrZV
 YTEw==
X-Gm-Message-State: APjAAAVFs0xxLEIBeuk6Zetn6jNeNCLqk2Kl1DU6EWgivRcpo18WYsdF
 IAcLgjsL0jBAdo6EKiQcco3f/A==
X-Google-Smtp-Source: APXvYqzz5Gk2XRweboq5JTae2cLuZYq9aH5QcMyvcsJe2mJ/xObe2WK88XTRxhkcmAwQKckpEYqUKQ==
X-Received: by 2002:a62:5587:: with SMTP id j129mr80338177pfb.45.1560264842797; 
 Tue, 11 Jun 2019 07:54:02 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.18])
 by smtp.gmail.com with ESMTPSA id e9sm16206208pfn.154.2019.06.11.07.53.59
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Jun 2019 07:54:02 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH 33/92] ram: rk3399: Order tsel variables
Date: Tue, 11 Jun 2019 20:20:36 +0530
Message-Id: <20190611145135.21399-34-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190611145135.21399-1-jagan@amarulasolutions.com>
References: <20190611145135.21399-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_075403_426124_007905F1 
X-CRM114-Status: UNSURE (   8.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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

Order tsel* variable declarations and assignment in proper
and meaningful way.

No functionality change.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 37 +++++++++++++++++------------
 1 file changed, 22 insertions(+), 15 deletions(-)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index d868621c93..e3945feca3 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -160,41 +160,48 @@ static void set_ds_odt(const struct chan_info *chan,
 	u32 *denali_phy = chan->publ->denali_phy;
 
 	u32 tsel_idle_en, tsel_wr_en, tsel_rd_en;
-	u32 tsel_idle_select_p, tsel_wr_select_dq_p, tsel_rd_select_p;
-	u32 tsel_wr_select_ca_p, tsel_wr_select_ca_n;
-	u32 tsel_idle_select_n, tsel_wr_select_dq_n, tsel_rd_select_n;
+	u32 tsel_idle_select_p, tsel_rd_select_p;
+	u32 tsel_idle_select_n, tsel_rd_select_n;
+	u32 tsel_wr_select_dq_p, tsel_wr_select_ca_p;
+	u32 tsel_wr_select_dq_n, tsel_wr_select_ca_n;
 	u32 reg_value;
 
 	if (sdram_params->base.dramtype == LPDDR4) {
 		tsel_rd_select_p = PHY_DRV_ODT_HI_Z;
-		tsel_wr_select_dq_p = PHY_DRV_ODT_40;
-		tsel_wr_select_ca_p = PHY_DRV_ODT_40;
+		tsel_rd_select_n = PHY_DRV_ODT_240;
+
 		tsel_idle_select_p = PHY_DRV_ODT_HI_Z;
+		tsel_idle_select_n = PHY_DRV_ODT_240;
 
-		tsel_rd_select_n = PHY_DRV_ODT_240;
+		tsel_wr_select_dq_p = PHY_DRV_ODT_40;
 		tsel_wr_select_dq_n = PHY_DRV_ODT_40;
+
+		tsel_wr_select_ca_p = PHY_DRV_ODT_40;
 		tsel_wr_select_ca_n = PHY_DRV_ODT_40;
-		tsel_idle_select_n = PHY_DRV_ODT_240;
 	} else if (sdram_params->base.dramtype == LPDDR3) {
 		tsel_rd_select_p = PHY_DRV_ODT_240;
-		tsel_wr_select_dq_p = PHY_DRV_ODT_34_3;
-		tsel_wr_select_ca_p = PHY_DRV_ODT_48;
+		tsel_rd_select_n = PHY_DRV_ODT_HI_Z;
+
 		tsel_idle_select_p = PHY_DRV_ODT_240;
+		tsel_idle_select_n = PHY_DRV_ODT_HI_Z;
 
-		tsel_rd_select_n = PHY_DRV_ODT_HI_Z;
+		tsel_wr_select_dq_p = PHY_DRV_ODT_34_3;
 		tsel_wr_select_dq_n = PHY_DRV_ODT_34_3;
+
+		tsel_wr_select_ca_p = PHY_DRV_ODT_48;
 		tsel_wr_select_ca_n = PHY_DRV_ODT_48;
-		tsel_idle_select_n = PHY_DRV_ODT_HI_Z;
 	} else {
 		tsel_rd_select_p = PHY_DRV_ODT_240;
-		tsel_wr_select_dq_p = PHY_DRV_ODT_34_3;
-		tsel_wr_select_ca_p = PHY_DRV_ODT_34_3;
+		tsel_rd_select_n = PHY_DRV_ODT_240;
+
 		tsel_idle_select_p = PHY_DRV_ODT_240;
+		tsel_idle_select_n = PHY_DRV_ODT_240;
 
-		tsel_rd_select_n = PHY_DRV_ODT_240;
+		tsel_wr_select_dq_p = PHY_DRV_ODT_34_3;
 		tsel_wr_select_dq_n = PHY_DRV_ODT_34_3;
+
+		tsel_wr_select_ca_p = PHY_DRV_ODT_34_3;
 		tsel_wr_select_ca_n = PHY_DRV_ODT_34_3;
-		tsel_idle_select_n = PHY_DRV_ODT_240;
 	}
 
 	if (sdram_params->base.odt == 1)
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

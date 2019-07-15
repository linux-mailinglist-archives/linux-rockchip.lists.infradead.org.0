Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D074569AB8
	for <lists+linux-rockchip@lfdr.de>; Mon, 15 Jul 2019 20:21:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C8db1DVBUHxXJMLyC/PZDOod2Uj9JXDwc9k/dx225FY=; b=kh5Jx8hDqxZASA
	lBgk78fXA2ZcDEQE60AOUZsMW6cb2UhZSTbswVQENdhK6XLiR8LafPqPyPctPu7vJeiAdBsQs0jNU
	B35Fu42ukKrlHHzUSEJcw3RSaQj3m29Sj9YLzbOI/jYwtlSjKK8qnuqn8gnOSuaTek55ze33+i8Dt
	lFH++jHb9SHiqCCZCwLkessCfl2h5Xjr2zn6kwnfciHfQ42ijzYuyr/4caUVuwdmfKgCTuYYSsqgi
	jS/Y2tFYU9ogAf69n0JTEmSGDMHOQKq611Y/Ea6DcyyO8sVeOjxcSAzYc27R0vNjIoadO1hpgBUcA
	bBH4FLHLJO7mU0oNQNqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn5bp-00076Q-1t; Mon, 15 Jul 2019 18:21:57 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn5bk-00073K-Rd
 for linux-rockchip@lists.infradead.org; Mon, 15 Jul 2019 18:21:54 +0000
Received: by mail-pf1-x442.google.com with SMTP id r1so7785799pfq.12
 for <linux-rockchip@lists.infradead.org>; Mon, 15 Jul 2019 11:21:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0YK9sxvx6/20fN7RQUyVJZjyj0RELmE6vtRuEvdGvmc=;
 b=nOtJJ5Ng/RoPExAm4MCPLGPV5y5w7TQw/3MzbJ9i++Rx9RK7+sGjaqNJm8nIYfGkvi
 bd16FlVV94Ajl7VzhWGSAtIoeEI5b7QlIPyl7/gzZ8MI9prdQQ/dyCFQXCd5ResJV6tE
 UJVhdkIwunXLtWP8zgkk2VlxaS8RlkqcJGtuU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0YK9sxvx6/20fN7RQUyVJZjyj0RELmE6vtRuEvdGvmc=;
 b=ILenYtlBXqfBvtXIm3Agz2XF3FhBhY5k+kOiKsi/GGSLrom6Y+XCzjQEGkIY948L7t
 VpYPA27IHCzSI75/lhnqOrsJdmIrG/U/PK0JKmcYruiOWPv0XR1gKj/ofDErOA6qVnkC
 dE0kmN2DqZ90NeJRGXPb6DA17IPgJwimsYSj/KiAS+nwbxCJy5G+w/YBn8iHt8cA0vPO
 jvd8h+PCJoPXtxXUA16crsGjIWkFxb0lLItC/1WPPj4MQonbm92QYNSV/TEvbilupagD
 G1ij+ZCFCTKscIeziHCyHM020iqujyGl+78OK6ZNnK3TfwumaXX3vUGHbmmIsN3QcDyr
 whJA==
X-Gm-Message-State: APjAAAXKfL99bxBgwPfcSNTZy1k0OcLkbZA1F1p6M7WkKjLuJifILNfz
 lAg+4h5nobDtGFbuN9b2SayGww==
X-Google-Smtp-Source: APXvYqyor6yYqI5IoyPtT9sW7xYJoivl3jbHTyS2lE1p9esE2oZ8QFPbtoi/96MbXKQYPka+EX3Kkg==
X-Received: by 2002:a65:4103:: with SMTP id w3mr17029883pgp.1.1563214911846;
 Mon, 15 Jul 2019 11:21:51 -0700 (PDT)
Received: from localhost.localdomain ([49.206.201.107])
 by smtp.gmail.com with ESMTPSA id l15sm18152405pgf.5.2019.07.15.11.21.48
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 15 Jul 2019 11:21:51 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v3 09/15] ram: rk3399: Order tsel variables
Date: Mon, 15 Jul 2019 23:51:04 +0530
Message-Id: <20190715182110.21336-10-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190715182110.21336-1-jagan@amarulasolutions.com>
References: <20190715182110.21336-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_112153_007420_9D3725B6 
X-CRM114-Status: UNSURE (   9.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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

Order tsel* variable declarations and assignment in proper
and meaningful way.

No functionality change.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 37 +++++++++++++++++------------
 1 file changed, 22 insertions(+), 15 deletions(-)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 8a983f9bb1..043b27737d 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -159,41 +159,48 @@ static void set_ds_odt(const struct chan_info *chan,
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
 
 	if (params->base.dramtype == LPDDR4) {
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
 	} else if (params->base.dramtype == LPDDR3) {
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
 
 	if (params->base.odt == 1)
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

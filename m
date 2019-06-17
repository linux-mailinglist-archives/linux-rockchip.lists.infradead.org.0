Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EC0647B3A
	for <lists+linux-rockchip@lfdr.de>; Mon, 17 Jun 2019 09:38:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rYRqt+p8hBPqCkSRUzjFGcWfyFWiO9YGKWjD7NFkCp8=; b=PFQwkuKFHPKj/Y
	7eYoyDT4K01lL5+1o11y9StBVQtvDlfqkgSO0bFrUL4UlcxaJR60CGRxy/a77OK2BOjTjTndkoHtE
	2Pbs+DtpOnHdF3MRnLKj3fnRXN9nTqaLKWpHzlPf1mNdpkHj082HHIsaQaeZFDqb4s5oPuUjyeOEd
	3n4jOVy05Mq1bwKdFkBbWFUe8iSQuqzip2P+RCWaMYdDGDByOdUx5DCu2DosW0/CtDZVdrEPtPXq8
	WMtZxbabIfblohHxfePiwrCtqsusBh0kEtzPp9coP5lA9VohGG0R9EOLIs8Da1ISA3GziaAa71Bwm
	hFkLkEKT+fc/0k3T+kNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcmDf-0006eZ-AQ; Mon, 17 Jun 2019 07:38:23 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcmDX-0006Xn-Cv
 for linux-rockchip@lists.infradead.org; Mon, 17 Jun 2019 07:38:17 +0000
Received: by mail-pg1-x544.google.com with SMTP id l19so5292520pgh.9
 for <linux-rockchip@lists.infradead.org>; Mon, 17 Jun 2019 00:38:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ghxhPBWP5O1a4V7OzoOwioqRRw5KZIUMBpByPZdUPk8=;
 b=aQzvRKeb7y9pVro22J0fiOl9qKzsGJXDHb/SeCA20VKQnB7xo3cV78pWByQyF23U2G
 bsbWJ7XMqomwbVlv+P9yU9qT9aQ1sgGE810G95Zww4e8/DD4VPZC2WexwNtqotFEHdCa
 WFY+pEbMj9lqqtcQzTFqFZFB4/uFYbUYZQbdg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ghxhPBWP5O1a4V7OzoOwioqRRw5KZIUMBpByPZdUPk8=;
 b=TpL9QIUY9ZsK0nGS8p5VB6CVUuZlF8BgpgTBCBtd2LMq2yu3JKRZaxG8lRUQXRUlNR
 cYmJLqcsG/13c0N5epXt5Y1lZCiMGTrWYwli27GJ/DkbODrEhUMvmYLtq67ALDMaWJuU
 ZwSyB+dal0Sy1vncLN7QYtbk1ERygsUs2ApOrIz001shvMWQugmwJ9tjXBCSV49yvcxy
 IK7+TeVlm0R922MQh7KjKCtrFlnoTuyBfkfan/D0ow816bitQCapcdbP8ALBu565VwkV
 Ehm90FL/G2yc35QGcu7QwyDu1HvwKeAm+TsUTrg2oZKQa2Amn4jGu+QKhTGN4eXmaVIk
 KffA==
X-Gm-Message-State: APjAAAUBoS8ciGgLvKY3UwUHT5Cz3ciUZzKOWw9bMtqEsMeJ4mmPe0xh
 R2EiBukjVRTvKkTHL8Rif8syJw==
X-Google-Smtp-Source: APXvYqxJL8DgroD4vrGT9R5hAzZ8PfukPWns3/oea5LKZwbf9YkbIiVZb3qByVUeqj7b9l2HVVePwg==
X-Received: by 2002:a65:404a:: with SMTP id h10mr6117657pgp.262.1560757094670; 
 Mon, 17 Jun 2019 00:38:14 -0700 (PDT)
Received: from localhost.localdomain ([49.206.203.245])
 by smtp.gmail.com with ESMTPSA id m41sm15205998pje.18.2019.06.17.00.38.11
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 00:38:14 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v2 34/99] ram: rk3399: Order tsel variables
Date: Mon, 17 Jun 2019 13:01:47 +0530
Message-Id: <20190617073252.27810-35-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190617073252.27810-1-jagan@amarulasolutions.com>
References: <20190617073252.27810-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_003815_724457_23BF8F62 
X-CRM114-Status: UNSURE (   9.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
index 78010c707f..f81ea1bdbf 100644
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

Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1C1C47B6A
	for <lists+linux-rockchip@lfdr.de>; Mon, 17 Jun 2019 09:40:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AnM+7SD7NzTSmaoEfhrvWgMG7g45Tubjb1zJWrk4cEY=; b=ovli3pcQ/qQsG0
	73puoMrgAIoVInofDlrtTu7Z8HwYjlF4Oh0vWiVG+CI5/JllTrfwrSKkFe8MIttd6WvL8J7fpCVQY
	SsXc9Md4TW6hWUUGNneBKlabEit2yDqUsNh4ybC6w50hg4I9WNDJfNmhmr3VpaFv04XJwJgSmM5TB
	CjeJzuatEUHOmcGkCuF52oUIXwdVxH4rTNZFmI0zHxNWttENAS4DxyDa648yeXtIhYMUEFG66KrqG
	rVj1qm4vfisTpnIyVvXJnz4sMbVYKbKTy9ASnNBZ4+UDHNu8KvhEh/z3rXW5+Yw1TEc3wMbNaslbI
	Ws65IeHMwj+f/5cDQFOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcmFj-0001Q7-LW; Mon, 17 Jun 2019 07:40:31 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcmFf-0001O1-JP
 for linux-rockchip@lists.infradead.org; Mon, 17 Jun 2019 07:40:29 +0000
Received: by mail-pg1-x542.google.com with SMTP id v11so5310390pgl.5
 for <linux-rockchip@lists.infradead.org>; Mon, 17 Jun 2019 00:40:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=I8k1428OrKZlOFrLY3vjmLkceYCA5xz8iJB5tOTiA78=;
 b=TFnHI2pvMEtmTmEX6aRU/Ve8fbxYHl8V17YRtoWhai72dt2vkblsU/jb8YMogLnD7c
 /VOw+R5Isznh+Bw4+IKoYMMI9ZPxO5kTSw+t8KwIL7pmZBP7ucgjYNapLBF/9Hm0/rZa
 w30E/pM/pLKKOIyyJjI9+2V8LsjBG+P3rLuz4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=I8k1428OrKZlOFrLY3vjmLkceYCA5xz8iJB5tOTiA78=;
 b=pynapyxEM6Q+omDFBD512Gt3jIkEpk3l82xB6APyQJYW1pqmzXLtN1QmoMgo1ZkX+f
 CgnzZempAf4Wte2TjPYk06rnoIvM6miBqsOn+GUjcISrI5HfkxN1+6uvBIScGk7as9ZJ
 TdnD4pLbrm+aK7WdAaO2WqRuUHGJWPFEOkT/nvGHNH+/xO2bT2FwhEd95gN+kf4Tf52u
 kwcZVwjpOllCKRXmuSH551G4BzSVNpGqUQ9boWM6e7qLq2hBmxGmbcO5PDW0nvvaYAw4
 z7eXav69oJaRBRhpYjQNoMv3EfUFaHyQKbok9Gi3ik1vXTEhMe2AXx6kqbYUmv6I6UB/
 0eiw==
X-Gm-Message-State: APjAAAULsdxIKTx16FiX4q9DO/JFtmmkbPD+p6UhB1qRQLPBgYnQiGch
 tvdc2i/L9Gb0grW7Ym1nEBeXwQ==
X-Google-Smtp-Source: APXvYqyKhQUJgB2GEvV73tOqp/3x8gvgp0nQZX8QNadOY+PGbDV8VsVuLt5tg5eOc+EL7lVRYZ1CTQ==
X-Received: by 2002:a63:2e02:: with SMTP id u2mr154312pgu.112.1560757226987;
 Mon, 17 Jun 2019 00:40:26 -0700 (PDT)
Received: from localhost.localdomain ([49.206.203.245])
 by smtp.gmail.com with ESMTPSA id m41sm15205998pje.18.2019.06.17.00.40.23
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 00:40:26 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v2 74/99] ram: rk3399: Add tsel control clock drive
Date: Mon, 17 Jun 2019 13:02:27 +0530
Message-Id: <20190617073252.27810-75-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190617073252.27810-1-jagan@amarulasolutions.com>
References: <20190617073252.27810-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_004027_687425_E05F88B3 
X-CRM114-Status: GOOD (  11.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
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

tsel contrl clock drives are required to configure PHY
929, 939 controls drive settings.

Add support for these control clock for all dramtype
sdrams.

Thse control clock drives are configure via tsel_ckcs_select_p
and tsel_ckcs_select_n variables.

tsel_ckcs_select_n is PHY_DRV_ODT_34_3 value where as
tsel_ckcs_select_p is retrived from IO settings for lpddr4
and rest uses PHY_DRV_ODT_34_3.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 16 ++++++++++++++--
 1 file changed, 14 insertions(+), 2 deletions(-)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 22c1a66185..caf8180018 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -560,6 +560,7 @@ static void set_ds_odt(const struct chan_info *chan,
 	u32 tsel_idle_select_n, tsel_rd_select_n;
 	u32 tsel_wr_select_dq_p, tsel_wr_select_ca_p;
 	u32 tsel_wr_select_dq_n, tsel_wr_select_ca_n;
+	u32 tsel_ckcs_select_p, tsel_ckcs_select_n;
 	struct io_setting *io = NULL;
 	u32 reg_value;
 
@@ -577,6 +578,9 @@ static void set_ds_odt(const struct chan_info *chan,
 
 		tsel_wr_select_ca_p = io->wr_ca_drv;
 		tsel_wr_select_ca_n = PHY_DRV_ODT_40;
+
+		tsel_ckcs_select_p = io->wr_ckcs_drv;
+		tsel_ckcs_select_n = PHY_DRV_ODT_34_3;
 	} else if (params->base.dramtype == LPDDR3) {
 		tsel_rd_select_p = PHY_DRV_ODT_240;
 		tsel_rd_select_n = PHY_DRV_ODT_HI_Z;
@@ -589,6 +593,9 @@ static void set_ds_odt(const struct chan_info *chan,
 
 		tsel_wr_select_ca_p = PHY_DRV_ODT_48;
 		tsel_wr_select_ca_n = PHY_DRV_ODT_48;
+
+		tsel_ckcs_select_p = PHY_DRV_ODT_34_3;
+		tsel_ckcs_select_n = PHY_DRV_ODT_34_3;
 	} else {
 		tsel_rd_select_p = PHY_DRV_ODT_240;
 		tsel_rd_select_n = PHY_DRV_ODT_240;
@@ -601,6 +608,9 @@ static void set_ds_odt(const struct chan_info *chan,
 
 		tsel_wr_select_ca_p = PHY_DRV_ODT_34_3;
 		tsel_wr_select_ca_n = PHY_DRV_ODT_34_3;
+
+		tsel_ckcs_select_p = PHY_DRV_ODT_34_3;
+		tsel_ckcs_select_n = PHY_DRV_ODT_34_3;
 	}
 
 	if (params->base.odt == 1)
@@ -659,10 +669,12 @@ static void set_ds_odt(const struct chan_info *chan,
 	clrsetbits_le32(&denali_phy[935], 0xff, reg_value);
 
 	/* phy_pad_cs_drive 8bits DENALI_PHY_939 offset_0 */
-	clrsetbits_le32(&denali_phy[939], 0xff, reg_value);
+	clrsetbits_le32(&denali_phy[939], 0xff,
+			tsel_ckcs_select_n | (tsel_ckcs_select_p << 0x4));
 
 	/* phy_pad_clk_drive 8bits DENALI_PHY_929 offset_0 */
-	clrsetbits_le32(&denali_phy[929], 0xff, reg_value);
+	clrsetbits_le32(&denali_phy[929], 0xff,
+			tsel_ckcs_select_n | (tsel_ckcs_select_p << 0x4));
 
 	/* phy_pad_fdbk_drive 23bit DENALI_PHY_924/925 */
 	clrsetbits_le32(&denali_phy[924], 0xff,
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

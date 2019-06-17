Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F99547B38
	for <lists+linux-rockchip@lfdr.de>; Mon, 17 Jun 2019 09:38:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CbwBH+t1SeoEBV2MdgEJHmQMkz5nmcCrfA/rmutAoN4=; b=q3la2ud/zfbnTi
	/mu7FIgJpvf6c8aEK28MtkgsjvyO0HjvCfAiB/IYt6Sm515M2YxsLk+YT2PtTJ6puSlLgT5Iregc/
	G3l3j1tlRzU51qO/TqGInQHTKe6F0lfqfdriw7Revo2fEIl/vzUM+YmBRwEUEJllOutH1VYXI54wM
	4x4gq4NeExIXTR97Mmj5/fkWl5ZR4BSIUWAqygR9OR1mHWt2aEQHzz2b9BRRW9BjHq9m+weOQ0Zbi
	9syDdgTpANPPOo6JhOTCakuh9y46rCr2eMM8wnmXyu+uP1mTsjJbaJilAQNVW7LKPh2zStQD6Z/ma
	aQYsHH+Y5OhF4rQStHLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcmDa-0006Z5-G7; Mon, 17 Jun 2019 07:38:18 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcmDQ-0006Rg-MK
 for linux-rockchip@lists.infradead.org; Mon, 17 Jun 2019 07:38:10 +0000
Received: by mail-pg1-x544.google.com with SMTP id l19so5292347pgh.9
 for <linux-rockchip@lists.infradead.org>; Mon, 17 Jun 2019 00:38:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=gK4epF55R0yx+1Nf/mYMWIJwcT4MPbmAuw46DxMyb1U=;
 b=imnfeF2MMbA4gRiuBeIgORJp8Qv+1+rw8Fh3PHc/I808trHU/Uz3px1IGmjKGALR8p
 VaCNhrsOEXEraQENTdeOr6B9+z7aX8C1ZIfvAywMUI36f+f7y/UNzl/cKvQnphnFiAZF
 37mAg/eHEBExOzmKQ3PHSyYsrTkHncWhO/ycI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=gK4epF55R0yx+1Nf/mYMWIJwcT4MPbmAuw46DxMyb1U=;
 b=VnPYVFoFfVV2cHnXsKYEkCzlg9sBfJWtHbQsvszh0E4lUplYPE2rnhsGYKaHmCDMhu
 Tj39wcRMj9Xksmu6tB14lhga7rAxA+FQzzngTsI11CN6KxiaqwGNIVAHJrL8TdV7NcWY
 H1/6a5c09UEnmdEGBpoRwhjzJcV68nGNIPoY1LlJyO4cGdB0tlrlT14PeoseYqUSaqCW
 mmfx17ZxTku56ixIF2VZhbnY1z95uNS96yyXVjSmP6A7uN9KHCsUzPbOuciUSwtRS2qP
 ya20BRld0kBNXqj0T+qDDXQFYbAnwYp9u5P8JHUP/hZPn1b91R57gYBf+lXIzSEd0usj
 /c2w==
X-Gm-Message-State: APjAAAWMBn9TO5aPXjcDStchj+hE40Lkx/s4tGZyzmmMd2ht7bv6G3Be
 Su5SCdr8QdJOlF1u0Po58oik+A==
X-Google-Smtp-Source: APXvYqwCGfukEqogkoY7cJoHaXIGmuH+//v8J7xAvDVF63tED5nmDisRfcCQxyq4vKzniD+91MWORg==
X-Received: by 2002:a62:cf07:: with SMTP id b7mr54839444pfg.217.1560757088160; 
 Mon, 17 Jun 2019 00:38:08 -0700 (PDT)
Received: from localhost.localdomain ([49.206.203.245])
 by smtp.gmail.com with ESMTPSA id m41sm15205998pje.18.2019.06.17.00.38.05
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 00:38:07 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v2 32/99] ram: rk3399:
 s/ca_tsel_wr_select_n/tsel_wr_select_ca_n
Date: Mon, 17 Jun 2019 13:01:45 +0530
Message-Id: <20190617073252.27810-33-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190617073252.27810-1-jagan@amarulasolutions.com>
References: <20190617073252.27810-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_003808_769326_650E74D6 
X-CRM114-Status: GOOD (  10.94  )
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

Rename ca_tsel_wr_select_n to tsel_wr_select_ca_n based
on the bsp code.

No functionality change.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 172703ea86..d54e99278c 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -160,7 +160,7 @@ static void set_ds_odt(const struct chan_info *chan,
 
 	u32 tsel_idle_en, tsel_wr_en, tsel_rd_en;
 	u32 tsel_idle_select_p, tsel_wr_select_dq_p, tsel_rd_select_p;
-	u32 ca_tsel_wr_select_p, ca_tsel_wr_select_n;
+	u32 ca_tsel_wr_select_p, tsel_wr_select_ca_n;
 	u32 tsel_idle_select_n, tsel_wr_select_dq_n, tsel_rd_select_n;
 	u32 reg_value;
 
@@ -172,7 +172,7 @@ static void set_ds_odt(const struct chan_info *chan,
 
 		tsel_rd_select_n = PHY_DRV_ODT_240;
 		tsel_wr_select_dq_n = PHY_DRV_ODT_40;
-		ca_tsel_wr_select_n = PHY_DRV_ODT_40;
+		tsel_wr_select_ca_n = PHY_DRV_ODT_40;
 		tsel_idle_select_n = PHY_DRV_ODT_240;
 	} else if (params->base.dramtype == LPDDR3) {
 		tsel_rd_select_p = PHY_DRV_ODT_240;
@@ -182,7 +182,7 @@ static void set_ds_odt(const struct chan_info *chan,
 
 		tsel_rd_select_n = PHY_DRV_ODT_HI_Z;
 		tsel_wr_select_dq_n = PHY_DRV_ODT_34_3;
-		ca_tsel_wr_select_n = PHY_DRV_ODT_48;
+		tsel_wr_select_ca_n = PHY_DRV_ODT_48;
 		tsel_idle_select_n = PHY_DRV_ODT_HI_Z;
 	} else {
 		tsel_rd_select_p = PHY_DRV_ODT_240;
@@ -192,7 +192,7 @@ static void set_ds_odt(const struct chan_info *chan,
 
 		tsel_rd_select_n = PHY_DRV_ODT_240;
 		tsel_wr_select_dq_n = PHY_DRV_ODT_34_3;
-		ca_tsel_wr_select_n = PHY_DRV_ODT_34_3;
+		tsel_wr_select_ca_n = PHY_DRV_ODT_34_3;
 		tsel_idle_select_n = PHY_DRV_ODT_240;
 	}
 
@@ -228,7 +228,7 @@ static void set_ds_odt(const struct chan_info *chan,
 	clrsetbits_le32(&denali_phy[391], 0xffffff, reg_value);
 
 	/* phy_adr_tsel_select_ 8bits DENALI_PHY_544/672/800 offset_0 */
-	reg_value = ca_tsel_wr_select_n | (ca_tsel_wr_select_p << 0x4);
+	reg_value = tsel_wr_select_ca_n | (ca_tsel_wr_select_p << 0x4);
 	clrsetbits_le32(&denali_phy[544], 0xff, reg_value);
 	clrsetbits_le32(&denali_phy[672], 0xff, reg_value);
 	clrsetbits_le32(&denali_phy[800], 0xff, reg_value);
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

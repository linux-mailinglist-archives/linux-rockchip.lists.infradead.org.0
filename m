Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD3ED47B39
	for <lists+linux-rockchip@lfdr.de>; Mon, 17 Jun 2019 09:38:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eYl3cNB3SVZLjM1tzDvWAvK2bsPnJ4K9OQak03QZfXo=; b=M1YtfamyVfQ6Hk
	oH9yH+fOZKm9Bw3lhp34ro9IGvMzAPsNESNK2sG0D4dzImtdpzFEsB50RdXDjCVG43wYjsHbikpwH
	GBKAm2X+biaQjuKZ78uA2auWMi52wCCJEmYGbqn72PnApNzD32cK2PWuM/WJWz7EHcElhXvxiDL50
	L/FOrtWJN/ofhx2Vh0h/EurNTtcIJ49cSle4XnvywRPclYOHJlCQAeqO96+eGQoa9CfHEBv7OtW1Q
	U1n5utT7H6ZYCAryatPrCalY1nPwfzy1GZT09J9rXIOmZq+LpYKfJNGbLANamQ+Q7Q7KCDGutRE0k
	kkNQtXHVj1PHmp/Ib2FA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcmDd-0006b6-4G; Mon, 17 Jun 2019 07:38:21 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcmDU-0006V8-9l
 for linux-rockchip@lists.infradead.org; Mon, 17 Jun 2019 07:38:13 +0000
Received: by mail-pg1-x542.google.com with SMTP id p10so5323344pgn.1
 for <linux-rockchip@lists.infradead.org>; Mon, 17 Jun 2019 00:38:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ZZq/XmFyRxGWiZ4kbKu0fPCD9GHm3oy5KFXtS+zuKpg=;
 b=jTQgXwImIzC+elw+S+1q6H0x8Ir4f/GxiZRuEPqY7+WAzTiiTJTnFv2NHNWuO7Qv/o
 g1JXI3EWWCD0kHSroaE9oIJcFafU1v46RfNiSpsC3rsBsbScls5FyZIa8fpn9zAT3jB0
 iCt56IaBlRLnxzTvilJ8deJYB5ftUENUweph0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ZZq/XmFyRxGWiZ4kbKu0fPCD9GHm3oy5KFXtS+zuKpg=;
 b=E4ZKc/Ey9bWtUNFArSeeLXX5pRq1yrVYMwer+A3YC3qjO+x1fZhZuFoZ2h8xz1mHDi
 QJ62SbT8RvL1wXJC66IdrHi2oS6crT4nPH5Ycnk37cumQ1QKRHUUBTsnpwLfwmUn8w07
 CCfR7c+srNXq5LxOGaZ4K4oL8dgAYqwa5/mRDs3cJU+i6OP9VfnL/uoRBvo2IiMHhfQW
 KKQSJ/rXs3rIEPW0JcgYCmr0BtGYjnSxV1CuoYILX6rJtXNYq34OXhcBonDzHF7XZFJ3
 RGePONt7Br1+l5e3sMthenG27BOXjOjnGZ2e6ChkAPj626JU5ZSOuOubTlOOYs047/CI
 xmMA==
X-Gm-Message-State: APjAAAUTjtSYaQsXSA4o+bDkE4FTfiEGS28woAoZVrBkGwcWTaBJK+0m
 wSwRYIO78413chK7iJT0N6li3N48PYE=
X-Google-Smtp-Source: APXvYqx1AgKYPAou0N3Rz6zg7NL60lUDQSL+hv37/39OlqkF71u1rN25zfORHlqO7AYUmPkI9zt+Cg==
X-Received: by 2002:a17:90a:fa12:: with SMTP id
 cm18mr24734869pjb.137.1560757091390; 
 Mon, 17 Jun 2019 00:38:11 -0700 (PDT)
Received: from localhost.localdomain ([49.206.203.245])
 by smtp.gmail.com with ESMTPSA id m41sm15205998pje.18.2019.06.17.00.38.08
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 00:38:10 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v2 33/99] ram: rk3399:
 s/ca_tsel_wr_select_p/tsel_wr_select_ca_p
Date: Mon, 17 Jun 2019 13:01:46 +0530
Message-Id: <20190617073252.27810-34-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190617073252.27810-1-jagan@amarulasolutions.com>
References: <20190617073252.27810-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_003812_497805_991CA117 
X-CRM114-Status: GOOD (  10.89  )
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

Rename ca_tsel_wr_select_p to tsel_wr_select_ca_p based
on the bsp code.

No functionality change.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index d54e99278c..78010c707f 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -160,14 +160,14 @@ static void set_ds_odt(const struct chan_info *chan,
 
 	u32 tsel_idle_en, tsel_wr_en, tsel_rd_en;
 	u32 tsel_idle_select_p, tsel_wr_select_dq_p, tsel_rd_select_p;
-	u32 ca_tsel_wr_select_p, tsel_wr_select_ca_n;
+	u32 tsel_wr_select_ca_p, tsel_wr_select_ca_n;
 	u32 tsel_idle_select_n, tsel_wr_select_dq_n, tsel_rd_select_n;
 	u32 reg_value;
 
 	if (params->base.dramtype == LPDDR4) {
 		tsel_rd_select_p = PHY_DRV_ODT_HI_Z;
 		tsel_wr_select_dq_p = PHY_DRV_ODT_40;
-		ca_tsel_wr_select_p = PHY_DRV_ODT_40;
+		tsel_wr_select_ca_p = PHY_DRV_ODT_40;
 		tsel_idle_select_p = PHY_DRV_ODT_HI_Z;
 
 		tsel_rd_select_n = PHY_DRV_ODT_240;
@@ -177,7 +177,7 @@ static void set_ds_odt(const struct chan_info *chan,
 	} else if (params->base.dramtype == LPDDR3) {
 		tsel_rd_select_p = PHY_DRV_ODT_240;
 		tsel_wr_select_dq_p = PHY_DRV_ODT_34_3;
-		ca_tsel_wr_select_p = PHY_DRV_ODT_48;
+		tsel_wr_select_ca_p = PHY_DRV_ODT_48;
 		tsel_idle_select_p = PHY_DRV_ODT_240;
 
 		tsel_rd_select_n = PHY_DRV_ODT_HI_Z;
@@ -187,7 +187,7 @@ static void set_ds_odt(const struct chan_info *chan,
 	} else {
 		tsel_rd_select_p = PHY_DRV_ODT_240;
 		tsel_wr_select_dq_p = PHY_DRV_ODT_34_3;
-		ca_tsel_wr_select_p = PHY_DRV_ODT_34_3;
+		tsel_wr_select_ca_p = PHY_DRV_ODT_34_3;
 		tsel_idle_select_p = PHY_DRV_ODT_240;
 
 		tsel_rd_select_n = PHY_DRV_ODT_240;
@@ -228,7 +228,7 @@ static void set_ds_odt(const struct chan_info *chan,
 	clrsetbits_le32(&denali_phy[391], 0xffffff, reg_value);
 
 	/* phy_adr_tsel_select_ 8bits DENALI_PHY_544/672/800 offset_0 */
-	reg_value = tsel_wr_select_ca_n | (ca_tsel_wr_select_p << 0x4);
+	reg_value = tsel_wr_select_ca_n | (tsel_wr_select_ca_p << 0x4);
 	clrsetbits_le32(&denali_phy[544], 0xff, reg_value);
 	clrsetbits_le32(&denali_phy[672], 0xff, reg_value);
 	clrsetbits_le32(&denali_phy[800], 0xff, reg_value);
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

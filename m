Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27D5B69AB5
	for <lists+linux-rockchip@lfdr.de>; Mon, 15 Jul 2019 20:21:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bRZZ92o0udCOv3RoSUESjm9vp86RQWxywxBYqo0g3mI=; b=u/syAU7kAFaXIA
	i44nlL/wYO2pZ6GdibgAXu7abxm+RGPQJ62s65gcEHCYuU9wMO48xtxElS1E7xOUrSLHkdn+SS+fh
	Q44xsHMCn9BASV2TL9dZRlwj805GMOhJbvbzGgZnp3mZa7Skk5V/0XwOkN8/+gOBV4D3AlWpWd1R2
	gAEyR9TPZz2ZeTl48xJKnge5Q6uzwcY+mJzlW2d7NAJHSMpVPmPBJq6JM9hNharjWbpJTg9dF0Luz
	+YzYBWy8sDExtphrWleJrxbMGE50dOIbWUu8rp4T3TTGEkveg8MXWr91cMYxzuK0w8ehoKKG3NBbE
	pYM+byK12EGbZw6AoZwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn5bf-0006xL-6E; Mon, 15 Jul 2019 18:21:47 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn5ba-0006tg-KG
 for linux-rockchip@lists.infradead.org; Mon, 15 Jul 2019 18:21:44 +0000
Received: by mail-pg1-x542.google.com with SMTP id n9so1884350pgc.1
 for <linux-rockchip@lists.infradead.org>; Mon, 15 Jul 2019 11:21:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=mAq8wnGC/zrJTe+0GXuXV5LHXLk5FFdePopy2DicZZs=;
 b=XGDF2bjFarORUk6Ow9OXKTJVQ92sEC1Pn9SccXMh4kD0WmvwrJkcMMTm6dVattp8Ne
 Es0TsAZmHs91veR3hoJQXFkeXJ6WJFHOojOMyx4SlNCDfD/jj3kjo0UChKpeGZVmpBFY
 4Qgyk3BxpfelHLPGVuxkj0YVF3k+XlT757OJQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=mAq8wnGC/zrJTe+0GXuXV5LHXLk5FFdePopy2DicZZs=;
 b=qtXyvqotbju0nQLWkPvWp+YQ6RPADHpMm8Orm6x3Pg7o7QTrSYJ4J1Hcz1ZbV2YMJR
 kKSkEefUbeQDNFmukQkMi0z2ik4wvACPUyhFBRWqvDVdcfJ4GNk7vcpp+5j9IxTSApfB
 NAYRtqeogfERpyUpcmEdin8O5Irwd0Hsdj6qS7QXAE6iHWUv10kebvwu7ldzrwCZFICO
 tl2+TLIxtVYvPjgiKa6v2zl2T8AR6wMpjlssCqRB0wZRcjebGoTMi6fUuvBu+Y2N3ai+
 74tspDXCh8u3h+hlZttaX46Ki8hF+Tk+H4jnuJSAovOpAvzVX1jaXkXKUktCUXyL3t/X
 4IiQ==
X-Gm-Message-State: APjAAAXSB0YG8KjytYbbmA2sBXJA5OdIoubxfBpmupEh9r9djd4SnFEs
 j7aYFqaidNlFZf3yXYqrlOh7Ew==
X-Google-Smtp-Source: APXvYqw8qsGu3zpp2E+x3BC1tz72FVZC47Y5oDhmWvWohiAazLuChsjyB3P4GQ1iNweO9YUBx4WvLw==
X-Received: by 2002:a17:90a:2385:: with SMTP id
 g5mr31489416pje.12.1563214901730; 
 Mon, 15 Jul 2019 11:21:41 -0700 (PDT)
Received: from localhost.localdomain ([49.206.201.107])
 by smtp.gmail.com with ESMTPSA id l15sm18152405pgf.5.2019.07.15.11.21.38
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 15 Jul 2019 11:21:41 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v3 06/15] ram: rk3399: s/tsel_wr_select_p/tsel_wr_select_dq_p
Date: Mon, 15 Jul 2019 23:51:01 +0530
Message-Id: <20190715182110.21336-7-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190715182110.21336-1-jagan@amarulasolutions.com>
References: <20190715182110.21336-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_112142_771655_4FEB9E93 
X-CRM114-Status: GOOD (  10.49  )
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

Rename tsel_wr_select_p to tsel_wr_select_dq_p based
on the bsp code.

No functionality change.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 85ff47f133..3ec32bdbc0 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -159,14 +159,14 @@ static void set_ds_odt(const struct chan_info *chan,
 	u32 *denali_phy = chan->publ->denali_phy;
 
 	u32 tsel_idle_en, tsel_wr_en, tsel_rd_en;
-	u32 tsel_idle_select_p, tsel_wr_select_p, tsel_rd_select_p;
+	u32 tsel_idle_select_p, tsel_wr_select_dq_p, tsel_rd_select_p;
 	u32 ca_tsel_wr_select_p, ca_tsel_wr_select_n;
 	u32 tsel_idle_select_n, tsel_wr_select_dq_n, tsel_rd_select_n;
 	u32 reg_value;
 
 	if (params->base.dramtype == LPDDR4) {
 		tsel_rd_select_p = PHY_DRV_ODT_HI_Z;
-		tsel_wr_select_p = PHY_DRV_ODT_40;
+		tsel_wr_select_dq_p = PHY_DRV_ODT_40;
 		ca_tsel_wr_select_p = PHY_DRV_ODT_40;
 		tsel_idle_select_p = PHY_DRV_ODT_HI_Z;
 
@@ -176,7 +176,7 @@ static void set_ds_odt(const struct chan_info *chan,
 		tsel_idle_select_n = PHY_DRV_ODT_240;
 	} else if (params->base.dramtype == LPDDR3) {
 		tsel_rd_select_p = PHY_DRV_ODT_240;
-		tsel_wr_select_p = PHY_DRV_ODT_34_3;
+		tsel_wr_select_dq_p = PHY_DRV_ODT_34_3;
 		ca_tsel_wr_select_p = PHY_DRV_ODT_48;
 		tsel_idle_select_p = PHY_DRV_ODT_240;
 
@@ -186,7 +186,7 @@ static void set_ds_odt(const struct chan_info *chan,
 		tsel_idle_select_n = PHY_DRV_ODT_HI_Z;
 	} else {
 		tsel_rd_select_p = PHY_DRV_ODT_240;
-		tsel_wr_select_p = PHY_DRV_ODT_34_3;
+		tsel_wr_select_dq_p = PHY_DRV_ODT_34_3;
 		ca_tsel_wr_select_p = PHY_DRV_ODT_34_3;
 		tsel_idle_select_p = PHY_DRV_ODT_240;
 
@@ -210,7 +210,7 @@ static void set_ds_odt(const struct chan_info *chan,
 	 * for write cycles for DQ/DM
 	 */
 	reg_value = tsel_rd_select_n | (tsel_rd_select_p << 0x4) |
-		    (tsel_wr_select_dq_n << 8) | (tsel_wr_select_p << 12) |
+		    (tsel_wr_select_dq_n << 8) | (tsel_wr_select_dq_p << 12) |
 		    (tsel_idle_select_n << 16) | (tsel_idle_select_p << 20);
 	clrsetbits_le32(&denali_phy[6], 0xffffff, reg_value);
 	clrsetbits_le32(&denali_phy[134], 0xffffff, reg_value);
@@ -250,7 +250,7 @@ static void set_ds_odt(const struct chan_info *chan,
 
 	/* phy_pad_fdbk_drive 23bit DENALI_PHY_924/925 */
 	clrsetbits_le32(&denali_phy[924], 0xff,
-			tsel_wr_select_dq_n | (tsel_wr_select_p << 4));
+			tsel_wr_select_dq_n | (tsel_wr_select_dq_p << 4));
 	clrsetbits_le32(&denali_phy[925], 0xff,
 			tsel_rd_select_n | (tsel_rd_select_p << 4));
 
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

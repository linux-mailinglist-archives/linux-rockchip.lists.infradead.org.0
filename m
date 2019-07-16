Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 039416A80A
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 14:02:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XJQAwHoB+KAdvBzzWzkfH6exsgokfOVYLxZGfqDsvcE=; b=HTwBg+o5ulMdGg
	s10wx33klEEUyb+a2xcuirIiPrpuQwf+mgoGz3Ftc7ms/7krg/6bAfg+Vnbf3jd3OaJc2xRFjGx2Q
	izF+5rpf43ciZXLbrUqEheBt33/wgqVWom0jR2Je9VB/cTDpJ9sxQnmOl9tOHyo0i/WUmSStn3DQJ
	6f3arHDT6YVqdOCFDiZFChwu39Ffu5Lxn8nP8VoSIQLBZoLlJFZruud5JUGW7ma9vZ7q6GQAiplHi
	GsbJWFQTWlj7I1eRmJv9i56w5cxivA8BWqSFKkDYY9Cglz648qQfkOpksXYGyFL8C0QqeBa7AuT/a
	oEh4GiBO+tccgkNJRfUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnM9m-00085h-29; Tue, 16 Jul 2019 12:02:06 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnM7m-00059e-Ck
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 12:00:04 +0000
Received: by mail-pf1-x441.google.com with SMTP id i189so9007534pfg.10
 for <linux-rockchip@lists.infradead.org>; Tue, 16 Jul 2019 05:00:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=TGL2vZAdQiuNUHRO4mTXKyX2zgq3XTrcqwdNqg+WCgA=;
 b=GKyNTgUxA0VJOA7Gqy91j4UKiSQHC+1Xs2gPWDhtnIY2Cs2qMj/fyiJtHeAldpBR7L
 59MyCFGTUGO0ZQZ3AugH3nV0WHMx321xhRSRqVDd9w9ohU6OPAcY78fP210ppqMEjl3l
 epDWjbmvdcQqjBulYBkCigKcHgLr00hfmt4Aw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=TGL2vZAdQiuNUHRO4mTXKyX2zgq3XTrcqwdNqg+WCgA=;
 b=QL4k1jS+xE+HA7Q2N55UWroaZHVZXSHAuq8EsQML+9rMPqaeqBkJsnVGyBfoeQ6V2a
 nlXkbaVi6cpt8HGZfvn4pTtPe2Z4p9OJukiiHOplqkH13pc2DWqgMguFEi4KquX8oC2g
 tutI0DA+mqvR6viDf4gSezGyD+tWUZAkkMo6hmwD/OCiHrLm5q/ktjRYBte6yPg9PdAj
 osVqlCuaO6dMgtT1F8hCpo0TjHcoOTtpnIjZW/pqLJmEJdF7n3ZIHc4pjY1ZmXaKtaWN
 QCrTwyd9ylSEQllYiKA5RBhTJ3Vv7Je6FMIj/dlnOYpgzmgG6VwXVN7f/cDDN/bix420
 5qPg==
X-Gm-Message-State: APjAAAVdcgcY87MIYlf+isJYDyaOqj/I0QeNWZm9CM2m65F3fdU+7jnl
 eW1mb48O3uyX5CCgx9kGKS6PIw==
X-Google-Smtp-Source: APXvYqxAHrIoSL9SI2ry+6xY2wXaj5kic12U6srR/jlDuIHmJkBpgnqQyqcT1QZU43ApsdveBRnr5w==
X-Received: by 2002:a17:90a:30e4:: with SMTP id
 h91mr34311060pjb.37.1563278401129; 
 Tue, 16 Jul 2019 05:00:01 -0700 (PDT)
Received: from localhost.localdomain ([49.206.201.107])
 by smtp.gmail.com with ESMTPSA id z24sm36269566pfr.51.2019.07.16.04.59.57
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 16 Jul 2019 05:00:00 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v3 35/57] ram: rk3399: Add tsel control clock drive
Date: Tue, 16 Jul 2019 17:27:23 +0530
Message-Id: <20190716115745.12585-36-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190716115745.12585-1-jagan@amarulasolutions.com>
References: <20190716115745.12585-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_050002_538022_5A6F0B17 
X-CRM114-Status: GOOD (  10.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
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
index 1b8ce5160f..c38ea1d284 100644
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

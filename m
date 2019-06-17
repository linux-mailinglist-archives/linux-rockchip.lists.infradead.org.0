Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B3F647B6B
	for <lists+linux-rockchip@lfdr.de>; Mon, 17 Jun 2019 09:40:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aIhV0U0iEnYI2qumiV/Q8CyhocNO7Cjkk+5rR8yOjIY=; b=QxWYPh35xCPvsg
	I38n0owPiImLNV5bq6d5WYWrDEdtwCq2UYsaB3SC8BuFntxyz5AmOQPmeRSD7/eI/ABnG7JOmHdWs
	ARSDBRDcjsqAOlgIjCQahNvUg5w65ij4TO6E8t7yL6BOOuIxhiqBqKWR8b8jIHQWZ5H2yqjN9OjwN
	MJk9VYn/4Oqt1q58eBDp4RojIkX8LAGCluaLPPOowctSRxkr6N5ofDdm9K7yOH9qFhrIAzG1T2rDb
	oM/lnliEOf1eK128VfMEIGnzZy2vXkjuUY1h2sBGhegeAw6GTrGfwymHi+gFoyGhCZUHYoulxykzw
	HKQ/CtOz/WtuGyr0XvjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcmFn-0001Sz-C7; Mon, 17 Jun 2019 07:40:35 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcmFi-0001QP-W1
 for linux-rockchip@lists.infradead.org; Mon, 17 Jun 2019 07:40:32 +0000
Received: by mail-pg1-x541.google.com with SMTP id 83so5298768pgg.8
 for <linux-rockchip@lists.infradead.org>; Mon, 17 Jun 2019 00:40:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=TpHBaKP7WpkPWFSnwNmYoxhAPAKxxHz6UqoDZNJID9Y=;
 b=JNG/C+BRVti/Ru3hj0rgreDIAoZLV1mvGQCenjollPpBQZfUJ+4Tl2d7mz+FHuJELY
 PBEp+DpUXN4QdlLAMZctRqL31UpLuJv9NY+PnLJpS1e8muV4ydWPoRL/3yOZBz49sXdo
 AhKZzYOyyuGRxV+u/xdQpWGUQkXFvqKxM7cyc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=TpHBaKP7WpkPWFSnwNmYoxhAPAKxxHz6UqoDZNJID9Y=;
 b=crhUQusjotrd57+fqYbz/g6Cf1XC+5NxdkmNHtGGbtMnFiV0Lfc/lypThP0qlcjf9q
 RF/k6Ar1yJs+LKvHIAvYJFn5Rk+F6MZAayDVA/vlGMDbIphFGSlYfSZfUNotLH817epI
 4QZvLfQ28EG0rosVdvC2kaCYWFoiSqRdF8LVDVAxRBsyLyT8Y9FNtYuPzPPqRh7QFWlU
 fHy/a7eDOpcnFmjuipI+pC0ooY+cTS+tyg7ofNAoNbqyRk+aqfJhUhVF2ewYRLCLJ47N
 h2vlAGUuCeZZ8gyJxq2bl2F+8a3AG5KOCQ49H2wQoBuRFCJszk9rPhxSQj9JV6DKf0er
 7Mpg==
X-Gm-Message-State: APjAAAVFdXPntanef43cCPGbbkJ0Z86fB2q62Wo02sJz0PzXBgzVCzA/
 HrruDDMW8+fXr28aLjvdVFQ9RA==
X-Google-Smtp-Source: APXvYqwN6IF5Gyi8o/uVs6om6t32k5xcDOTIt4LmcQr41kgbvIR2gyR07X2G9KBaSHHl3U0WV7jZwg==
X-Received: by 2002:a63:2159:: with SMTP id s25mr46042411pgm.234.1560757230356; 
 Mon, 17 Jun 2019 00:40:30 -0700 (PDT)
Received: from localhost.localdomain ([49.206.203.245])
 by smtp.gmail.com with ESMTPSA id m41sm15205998pje.18.2019.06.17.00.40.27
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 00:40:29 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v2 75/99] ram: rk3399: Configure soc odt support
Date: Mon, 17 Jun 2019 13:02:28 +0530
Message-Id: <20190617073252.27810-76-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190617073252.27810-1-jagan@amarulasolutions.com>
References: <20190617073252.27810-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_004031_075158_412F7578 
X-CRM114-Status: GOOD (  13.53  )
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

CTL 145, 146, 159, 160 registers are used to configure
soc odt on rk3399.

These soc odt values are updated from CS0_MR22_VAL and
CS1_MR22_VAL and for lpddr4 these values ORed with
tsel_rd_select_n.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 49 ++++++++++++++++++++++++++++-
 1 file changed, 48 insertions(+), 1 deletion(-)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index caf8180018..5f118fc0c6 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -40,6 +40,8 @@
 #define PHY_SLEWP_EN		0x1
 #define PHY_SLEWN_EN		0x1
 #define PHY_RX_CM_INPUT		0x1
+#define CS0_MR22_VAL		0
+#define CS1_MR22_VAL		3
 
 #define CRU_SFTRST_DDR_CTRL(ch, n)	((0x1 << (8 + 16 + (ch) * 4)) | \
 					((n) << (8 + (ch) * 4)))
@@ -554,7 +556,7 @@ static void set_ds_odt(const struct chan_info *chan,
 		       const struct rk3399_sdram_params *params, u32 mr5)
 {
 	u32 *denali_phy = chan->publ->denali_phy;
-
+	u32 *denali_ctl = chan->pctl->denali_ctl;
 	u32 tsel_idle_en, tsel_wr_en, tsel_rd_en;
 	u32 tsel_idle_select_p, tsel_rd_select_p;
 	u32 tsel_idle_select_n, tsel_rd_select_n;
@@ -562,6 +564,7 @@ static void set_ds_odt(const struct chan_info *chan,
 	u32 tsel_wr_select_dq_n, tsel_wr_select_ca_n;
 	u32 tsel_ckcs_select_p, tsel_ckcs_select_n;
 	struct io_setting *io = NULL;
+	u32 soc_odt = 0;
 	u32 reg_value;
 
 	if (params->base.dramtype == LPDDR4) {
@@ -581,6 +584,35 @@ static void set_ds_odt(const struct chan_info *chan,
 
 		tsel_ckcs_select_p = io->wr_ckcs_drv;
 		tsel_ckcs_select_n = PHY_DRV_ODT_34_3;
+		switch (tsel_rd_select_n) {
+		case PHY_DRV_ODT_240:
+			soc_odt = 1;
+			break;
+		case PHY_DRV_ODT_120:
+			soc_odt = 2;
+			break;
+		case PHY_DRV_ODT_80:
+			soc_odt = 3;
+			break;
+		case PHY_DRV_ODT_60:
+			soc_odt = 4;
+			break;
+		case PHY_DRV_ODT_48:
+			soc_odt = 5;
+			break;
+		case PHY_DRV_ODT_40:
+			soc_odt = 6;
+			break;
+		case PHY_DRV_ODT_34_3:
+			soc_odt = 6;
+			printf("%s: Unable to support LPDDR4 MR22 Soc ODT\n",
+			       __func__);
+			break;
+		case PHY_DRV_ODT_HI_Z:
+		default:
+			soc_odt = 0;
+			break;
+		}
 	} else if (params->base.dramtype == LPDDR3) {
 		tsel_rd_select_p = PHY_DRV_ODT_240;
 		tsel_rd_select_n = PHY_DRV_ODT_HI_Z;
@@ -621,6 +653,21 @@ static void set_ds_odt(const struct chan_info *chan,
 	tsel_wr_en = 0;
 	tsel_idle_en = 0;
 
+	/* F0_0 */
+	clrsetbits_le32(&denali_ctl[145], 0xFF << 16,
+			(soc_odt | (CS0_MR22_VAL << 3)) << 16);
+	/* F2_0, F1_0 */
+	clrsetbits_le32(&denali_ctl[146], 0xFF00FF,
+			((soc_odt | (CS0_MR22_VAL << 3)) << 16) |
+			(soc_odt | (CS0_MR22_VAL << 3)));
+	/* F0_1 */
+	clrsetbits_le32(&denali_ctl[159], 0xFF << 16,
+			(soc_odt | (CS1_MR22_VAL << 3)) << 16);
+	/* F2_1, F1_1 */
+	clrsetbits_le32(&denali_ctl[160], 0xFF00FF,
+			((soc_odt | (CS1_MR22_VAL << 3)) << 16) |
+			(soc_odt | (CS1_MR22_VAL << 3)));
+
 	/*
 	 * phy_dq_tsel_select_X 24bits DENALI_PHY_6/134/262/390 offset_0
 	 * sets termination values for read/idle cycles and drive strength
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

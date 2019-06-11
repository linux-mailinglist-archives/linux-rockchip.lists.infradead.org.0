Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 869C13CF93
	for <lists+linux-rockchip@lfdr.de>; Tue, 11 Jun 2019 16:53:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RwvH/TLaWb/EVAdrzoD6Gq7LJDd4El+2soSWbVvrFoQ=; b=OwyF9CUVOczXQ3
	6s6XVTQmVbWlAO2AraGiNacyHUiSl2V6fnaL4JeD5f1Eq0/VNbacM9fSTrw6m+TcWQVngj5p+/T/4
	YDLbjmZRPz+PZ39mF+9AtXS960dezCmsyECutr91jimqKs7+v2MvcD5pXO4emUSYxf5fdfP8UglOp
	So45vH8wsp2nnjOfLSSJML4nsJpLQlH0pmDwRX1iaOWrXrj+7mxLqQnATyxZjLQpyt9apMsQOCH7z
	qhXZXvDoHZ14S+l1MBb8KCGiO4qQAV5j+D9U/YDTfKPWBFw+QycDby/jAJn1PE2Rekq7vMngUa/K5
	hxGLaf+hmsRRSeqvrgZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hai9r-00056Z-Pz; Tue, 11 Jun 2019 14:53:55 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hai9n-000549-Kj
 for linux-rockchip@lists.infradead.org; Tue, 11 Jun 2019 14:53:53 +0000
Received: by mail-pf1-x442.google.com with SMTP id c85so7608297pfc.1
 for <linux-rockchip@lists.infradead.org>; Tue, 11 Jun 2019 07:53:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=WhSySRubGklfxJzvG9TEEbTczFSibK5OKu3ZWwh2UaM=;
 b=FGMgN3E4UELlmC+qV8xsArB7kBnRn17xyJIpeS4LZU+Y68fEDl4/lTpS8+BfQdMhF7
 rKvtYTMEg98aFgT4x/2HXvjVj/wuuL2JewliwQnVKbZl6JKwV9VoRPnCA9pbncP4HtOn
 KZ+ZVxoVhXIHBPcma/Mzkmf1OSX4Qs5PvCfeg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=WhSySRubGklfxJzvG9TEEbTczFSibK5OKu3ZWwh2UaM=;
 b=pz3yq7oGHZbE886CwGn0KTovWfzRqL4x/EXYDqmeX/aO5iDnGEUeIaMkwruoPxkx+3
 nC1qVKzTwX/sDGmU0FVzGfcqZPJM99RL+BSpKAwLim5pAwHPXQiTdJ4qM8Zhi179xoYm
 iE5Kqx2/7jHeJwP3ecg3dS2KARoDXPNu6T2nQuwA5AUwa0Lh/UEQzLZog8YV47qmT6Ja
 GRgMtwUdc98jrTJRhHQNWAIUqciCeubKn0pgEfhlP/1Q1M1d7hLBzYbgqaNJNPtz69zU
 nU/dzyMqrQTIXUuDaP9IWZbtU45m8VsfA3PM0FjdV2dbMStakNxbSv7RnkcAlBf3XbwI
 OFEg==
X-Gm-Message-State: APjAAAV1Z5wmrSs/uTa5Iy/ocVao/l5Q/hqyfGNsdBZQ/0x3OTB41eDl
 stGPsAsLLzea+oSEVz3Ee6S6ouMRi68=
X-Google-Smtp-Source: APXvYqzwzT7NESjD6qXgbEx180RbIYd0bdQmXYT4ObLA1ocklwmhYS8b/1Au4vrS30DtfklhAHTmgw==
X-Received: by 2002:a65:42c3:: with SMTP id l3mr20780565pgp.372.1560264830972; 
 Tue, 11 Jun 2019 07:53:50 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.18])
 by smtp.gmail.com with ESMTPSA id e9sm16206208pfn.154.2019.06.11.07.53.47
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Jun 2019 07:53:50 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH 30/92] ram: rk3399: s/tsel_wr_select_p/tsel_wr_select_dq_p
Date: Tue, 11 Jun 2019 20:20:33 +0530
Message-Id: <20190611145135.21399-31-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190611145135.21399-1-jagan@amarulasolutions.com>
References: <20190611145135.21399-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_075352_037361_8C6A4281 
X-CRM114-Status: UNSURE (   9.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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

Rename tsel_wr_select_p to tsel_wr_select_dq_p based
on the bsp code and associated datasheet.

No functionality change.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 7c05814f19..780b18fa17 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -160,14 +160,14 @@ static void set_ds_odt(const struct chan_info *chan,
 	u32 *denali_phy = chan->publ->denali_phy;
 
 	u32 tsel_idle_en, tsel_wr_en, tsel_rd_en;
-	u32 tsel_idle_select_p, tsel_wr_select_p, tsel_rd_select_p;
+	u32 tsel_idle_select_p, tsel_wr_select_dq_p, tsel_rd_select_p;
 	u32 ca_tsel_wr_select_p, ca_tsel_wr_select_n;
 	u32 tsel_idle_select_n, tsel_wr_select_dq_n, tsel_rd_select_n;
 	u32 reg_value;
 
 	if (sdram_params->base.dramtype == LPDDR4) {
 		tsel_rd_select_p = PHY_DRV_ODT_HI_Z;
-		tsel_wr_select_p = PHY_DRV_ODT_40;
+		tsel_wr_select_dq_p = PHY_DRV_ODT_40;
 		ca_tsel_wr_select_p = PHY_DRV_ODT_40;
 		tsel_idle_select_p = PHY_DRV_ODT_HI_Z;
 
@@ -177,7 +177,7 @@ static void set_ds_odt(const struct chan_info *chan,
 		tsel_idle_select_n = PHY_DRV_ODT_240;
 	} else if (sdram_params->base.dramtype == LPDDR3) {
 		tsel_rd_select_p = PHY_DRV_ODT_240;
-		tsel_wr_select_p = PHY_DRV_ODT_34_3;
+		tsel_wr_select_dq_p = PHY_DRV_ODT_34_3;
 		ca_tsel_wr_select_p = PHY_DRV_ODT_48;
 		tsel_idle_select_p = PHY_DRV_ODT_240;
 
@@ -187,7 +187,7 @@ static void set_ds_odt(const struct chan_info *chan,
 		tsel_idle_select_n = PHY_DRV_ODT_HI_Z;
 	} else {
 		tsel_rd_select_p = PHY_DRV_ODT_240;
-		tsel_wr_select_p = PHY_DRV_ODT_34_3;
+		tsel_wr_select_dq_p = PHY_DRV_ODT_34_3;
 		ca_tsel_wr_select_p = PHY_DRV_ODT_34_3;
 		tsel_idle_select_p = PHY_DRV_ODT_240;
 
@@ -211,7 +211,7 @@ static void set_ds_odt(const struct chan_info *chan,
 	 * for write cycles for DQ/DM
 	 */
 	reg_value = tsel_rd_select_n | (tsel_rd_select_p << 0x4) |
-		    (tsel_wr_select_dq_n << 8) | (tsel_wr_select_p << 12) |
+		    (tsel_wr_select_dq_n << 8) | (tsel_wr_select_dq_p << 12) |
 		    (tsel_idle_select_n << 16) | (tsel_idle_select_p << 20);
 	clrsetbits_le32(&denali_phy[6], 0xffffff, reg_value);
 	clrsetbits_le32(&denali_phy[134], 0xffffff, reg_value);
@@ -251,7 +251,7 @@ static void set_ds_odt(const struct chan_info *chan,
 
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

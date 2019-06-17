Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24EC047B6D
	for <lists+linux-rockchip@lfdr.de>; Mon, 17 Jun 2019 09:40:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gSRNRIUzLX6lFFRXj2WC4RBRMJSXEZWWTBPrWgj27lk=; b=seiGn9jCdD9UzL
	CkQuQ5e8GvXjip5ocz8CvguViwPpA+JoNUi244wxPD03/b+0oyw+HYsoYeVPIpye1sSv5+ilDAr8X
	uN7L+ORQO9+ky6XHUV1iY881GAwc5JdJlNEAzRtogdwVSdJlFrwl5yq0pjsnpxsUIGHCAvhjbu5o3
	yeZJ7gRfV24lq+V7VMKBVX3xTwtTfTsUMKNQHD4Lc3LIp396LIwfL0q69N26zzPzCKgOhnDH7Fx7x
	04D21PtTyv1H6+V7Z/roxETp1q5eKYRtkLyl2Qmfzj7rjZEvBclHFb1eIvsDWX+T7XJrMKkzCdEuJ
	hnClb2EYxmoKPLsRYRDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcmFu-0001YX-25; Mon, 17 Jun 2019 07:40:42 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcmFp-0001Vx-FU
 for linux-rockchip@lists.infradead.org; Mon, 17 Jun 2019 07:40:38 +0000
Received: by mail-pf1-x444.google.com with SMTP id a186so5192837pfa.5
 for <linux-rockchip@lists.infradead.org>; Mon, 17 Jun 2019 00:40:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=nIQISmgRIUXSTFy9rf9ECa/e3ZYl+44/m6YQuP8TXC0=;
 b=BwbBLcnv7HvfSrYlAHhV3MfYAW6IyecYdQ7YeL4pN6cXsARycqVeXpYEUxxITCIQVv
 JCfPmMXZ/w8vSdREZL/Jrzsrc2AgeT/Vea2tEYLqX9aBT3GmCnKwIKzxVRYW7EdUZBzB
 YnnjNX1pSBankMDZ59O7kQ4XZUuSIuPAasB5w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=nIQISmgRIUXSTFy9rf9ECa/e3ZYl+44/m6YQuP8TXC0=;
 b=E+0J0pRkd1CTnfL1L49ew0opYwIIGrepCVQ78TMnXgiEb3MN4gQraQDldb//Z80LR8
 kRxcmg+ZMJHk/M+LwaQcbwLfeX4PMv/xVvnpIcflnY5kHBuCUWWxJEbLJBRqyPdQnWY2
 DBcxFuK504kTN3TccJIp8tYaWgjkZU+dsJXP3T/rSp8pjxnSMfJC/opDZEKDtvvOnLna
 stnEgX1d0xutJz8S0R/9OsAB3dsEkZzeqELlSv/aukFZ46OQLH+VMyl7Invd7WgCHf3O
 vOG9Mgi7HDxKC1yCeDS8njaOoI/2Xdil8JvaqldHpzX3pTG0PU03RqpQCaMCZAhSJUeb
 87kQ==
X-Gm-Message-State: APjAAAW6yIal4rmObPDn781AYPlQt4zLu9rm+HsJK60MBY5xFz1Aegf6
 ZQ4XjQeb1E936RSUoc3z5+7zwg==
X-Google-Smtp-Source: APXvYqxSrW07fX6zQB490T9VQesiqQFlpjKuXPiuY4dZ4uN75RlcdvR1h7qOdcepQzPMdy7FKeJltg==
X-Received: by 2002:a63:5457:: with SMTP id e23mr49461757pgm.307.1560757236914; 
 Mon, 17 Jun 2019 00:40:36 -0700 (PDT)
Received: from localhost.localdomain ([49.206.203.245])
 by smtp.gmail.com with ESMTPSA id m41sm15205998pje.18.2019.06.17.00.40.33
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 00:40:36 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v2 77/99] ram: rk3399: Update lpddr4 vref based on io settings
Date: Mon, 17 Jun 2019 13:02:30 +0530
Message-Id: <20190617073252.27810-78-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190617073252.27810-1-jagan@amarulasolutions.com>
References: <20190617073252.27810-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_004037_558935_7CDF9315 
X-CRM114-Status: GOOD (  13.43  )
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

The vref_mode_dq, vref_value_dq on lpddr4 value is depending
on IO settings of rd_vref.

Add support for it.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 19 ++++++++++++++-----
 1 file changed, 14 insertions(+), 5 deletions(-)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 9eddfa7fd7..24db601072 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -338,7 +338,7 @@ static void set_memory_map(const struct chan_info *chan, u32 channel,
 }
 
 static int phy_io_config(const struct chan_info *chan,
-			 const struct rk3399_sdram_params *params)
+			 const struct rk3399_sdram_params *params, u32 mr5)
 {
 	u32 *denali_phy = chan->publ->denali_phy;
 	u32 vref_mode_dq, vref_value_dq, vref_mode_ac, vref_value_ac;
@@ -349,9 +349,18 @@ static int phy_io_config(const struct chan_info *chan,
 
 	/* vref setting */
 	if (params->base.dramtype == LPDDR4) {
-		/* LPDDR4 */
-		vref_mode_dq = 0x6;
-		vref_value_dq = 0x1f;
+		struct io_setting *io = lpddr4_get_io_settings(params, mr5);
+		u32 rd_vref = io->rd_vref * 1000;
+
+		if (rd_vref < 36700) {
+			/* MODE_LV[2:0] = LPDDR4 (Range 2)*/
+			vref_mode_dq = 0x7;
+			vref_value_dq = (rd_vref - 3300) / 521;
+		} else {
+			/* MODE_LV[2:0] = LPDDR4 (Range 1)*/
+			vref_mode_dq = 0x6;
+			vref_value_dq = (rd_vref - 15300) / 521;
+		}
 		vref_mode_ac = 0x6;
 		vref_value_ac = 0x1f;
 		mode_sel = 0x6;
@@ -770,7 +779,7 @@ static void set_ds_odt(const struct chan_info *chan,
 	/* phy_pad_fdbk_term 1bit DENALI_PHY_930 offset_17 */
 	clrsetbits_le32(&denali_phy[930], 0x1 << 17, reg_value);
 
-	phy_io_config(chan, params);
+	phy_io_config(chan, params, mr5);
 }
 
 static void pctl_start(struct dram_info *dram, u8 channel)
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

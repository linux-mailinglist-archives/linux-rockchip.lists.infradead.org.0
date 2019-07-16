Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43A766A80D
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 14:02:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=agJVHOhFbum5VqIrhZBTC3R4HvPuvQBjMm6nUCh+UpQ=; b=YdqmceT91aSYhq
	8w58nEQgnayhgb7grf4EusMVc/SG44cM4WIXcACIsiNjlEsDYfx/hNcIyZ6/rWGsDSmgtSRhA9Esv
	oPp1RX52liFSbfWTFLen3a/us0h5mFb9Nve/ifFanY7CgLSFl1xSJ8HcsYsiMZBkWn8sk7IsSPXVH
	SVedP3GtAgGJ+N9EK2h5SqabgFwyNZxxopUHXA+BFi8VOOglW8jfaYLLGPN3vvwz9JU9zFM4NtDzm
	2iPIbcxDEvGiIrdqWBhdqQHNviqcx4IX2OqloJdF/M1s+1dPhpws/4c5NkDPFBAuwW5+XJhrNX852
	24SQAm96sGL7DK9ER4LQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnM9u-0008D5-3Y; Tue, 16 Jul 2019 12:02:14 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnM7w-0006Id-ML
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 12:00:14 +0000
Received: by mail-pf1-x443.google.com with SMTP id p184so9006772pfp.7
 for <linux-rockchip@lists.infradead.org>; Tue, 16 Jul 2019 05:00:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=mh5Pf5jjoLLteLnqId9idbQ7tEs3dWgvjmHLOwZoIVk=;
 b=kvnO2h2SUjTqjxvSjusn4drwayoMc3XJayHc0h5Qs6ytAeZ/qb+meEseCezLsJoWSU
 e/Vi+dGtdVCpXM89e3SSkFngDDRx2KlAWxAWNtSEzYS2g/zxBfQzwk6C/xuWK26cH67r
 LAPXFCt8Qapfqcm/5kBTITD3+1xkgopkA1ls8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=mh5Pf5jjoLLteLnqId9idbQ7tEs3dWgvjmHLOwZoIVk=;
 b=eXovGmP991PsRZD5dW3wMxdP3eXtiBdje5IxNPMIOfU/eKD1OmqU97OzPdLVzX4gyr
 rcei5buR/h2OuTfZq1S1UlrJdRK15y0m/feYpQj5QkOAhJbMfbp+VE0VpYq7846m0gcE
 LjQUGQ6r6uivX7L5ZODQTR0KqoItzeozXCrITAV4N2sNWlmM5Kc2pa2SZd0rPZxe7k7t
 9ZTv3LFL0N5AWA+2teh6A5kZTzND+m1d+MWeSKJF7fxBDBQd7lAqTTN+0PlAfunWulW5
 fnTkjebzxC1+/lXpMeOBqU0hg8Nd7NOG2VJ/o1yYxFfXbGzveJ7LCrSEWpHfmPD+Dtgl
 OLUA==
X-Gm-Message-State: APjAAAXWxM1gON7TeqvsPdg6DdZBC19KirtTbQ69nCanNvRGShxZzqxH
 3oyW1AmPjIaWyuf52qODEaLkfg==
X-Google-Smtp-Source: APXvYqyI82mkiX+yz4dw3lVtY/ozuKpAe3mzNw41moz/e3TvONjc4c+W2OayNzAxjCXp8s1NS7yqJg==
X-Received: by 2002:a63:2606:: with SMTP id m6mr32928694pgm.436.1563278411660; 
 Tue, 16 Jul 2019 05:00:11 -0700 (PDT)
Received: from localhost.localdomain ([49.206.201.107])
 by smtp.gmail.com with ESMTPSA id z24sm36269566pfr.51.2019.07.16.05.00.08
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 16 Jul 2019 05:00:11 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v3 38/57] ram: rk3399: Update lpddr4 vref based on io settings
Date: Tue, 16 Jul 2019 17:27:26 +0530
Message-Id: <20190716115745.12585-39-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190716115745.12585-1-jagan@amarulasolutions.com>
References: <20190716115745.12585-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_050012_863433_C3E09618 
X-CRM114-Status: GOOD (  12.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
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

The vref_mode_dq, vref_value_dq on lpddr4 value is depending
on IO settings of rd_vref.

Add support for it.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 19 ++++++++++++++-----
 1 file changed, 14 insertions(+), 5 deletions(-)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 9e40880835..4a2622a440 100644
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

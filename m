Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A5193CFE9
	for <lists+linux-rockchip@lfdr.de>; Tue, 11 Jun 2019 16:57:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CSgGfudNcAv9l2N7/tte+0gAIPMeEUKFNLjlrMAqHkM=; b=ITWdfEmBYBF0hY
	4u8jM3KNPTLZe702pacPy5I4oyA/9zFHHSkHzjxYD+j98JhyktO3eminCv8rtWSWShsP2rA5mjy8Z
	DwEaz/ixQdbL4/vDiMmhREBnoSstZkByPOEqTTxVarr3SoWJAV8YSwlgb3GCcqVvO+p//FYF4uPmY
	4gpqITeZGT4gHTwOw13jffchnA+Lf0Rl7+25gTc28sPGBbkQk1O7ADf/Ei7p8KrMwTER1dh3/zBfw
	QN7EI2IMwf6JS7wh4lMfHpvQSHBiwNgBv10+Qz9WDFOAl7uQ82W0xacmhhbL32o9SlFuEFhacRM47
	CUhwd4pCUSPaXAiv5NBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haiCy-0000C7-EE; Tue, 11 Jun 2019 14:57:08 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haiCe-0008N8-K4
 for linux-rockchip@lists.infradead.org; Tue, 11 Jun 2019 14:56:50 +0000
Received: by mail-pl1-x644.google.com with SMTP id f97so5237599plb.5
 for <linux-rockchip@lists.infradead.org>; Tue, 11 Jun 2019 07:56:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=MPayWhbGgEs+DGe2m5E7+3IPn0K+3R0BZ007ckgTzeM=;
 b=jqgj6lY1OnWfJXKa90hiUA5j8QWlfnEouKGQ9P3oL3N7TuRa3p5lQSNrwG5z7Dsqvs
 CwOjmDFE6U9W5HrIo4m4eAWm4QXwtrv8MQj+XYPlAcLTzmoq9EX03PcvxZHM7iK12gxR
 VMsIm5t+qk5a4OiuPXB7ak31n9mlleIUdigBE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=MPayWhbGgEs+DGe2m5E7+3IPn0K+3R0BZ007ckgTzeM=;
 b=TimRy8JfRYvrj+vRPRZc08oFsezffVjwegXy/MsZLDsv5BE9vrv5AiE8oEMKxKTnwL
 7JZbVxlY/BaTPO3t2vK0mkg6ZR58TbPWgxAJFLUuiGIKH0zSlnDfuseOlg8TpgRKv8Md
 gXiB1oTs9XwzvcGhc5d+bHLGMF35BqQJ2QIKnMY/qIr3XLuHFZ/PPFlEqvT1E4uRoJFR
 rwrKnQUqu1Mei+NDPbQomPnDt1rpjA/ctKi/4L7loDsigI0OxuGJq8k3rwGhl8O1RI2U
 y0kLelmywHufAzYHikN5J2+nAz5OJy+uoB2o/ZLUL8YhI0KYLeIJu4f5gzBy+Ce6WxOj
 xfSA==
X-Gm-Message-State: APjAAAWncpigDlurPjPNU258qhl4OwgEHaZQkvDVDlE86mGabIMbV4ED
 9tbIENRzR5sY8gdZr4ZUwp639g==
X-Google-Smtp-Source: APXvYqy+erKNz1FqMKNbJhPZBoZKtFVuDqekbCtcTmAkEr6h4advyOJf/b6zkmqpKyLNtMnse8HioQ==
X-Received: by 2002:a17:902:a98b:: with SMTP id
 bh11mr50065341plb.8.1560265008029; 
 Tue, 11 Jun 2019 07:56:48 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.18])
 by smtp.gmail.com with ESMTPSA id e9sm16206208pfn.154.2019.06.11.07.56.44
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Jun 2019 07:56:47 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH 75/92] ram: rk3399: Update lpddr4 vref based on io settings
Date: Tue, 11 Jun 2019 20:21:18 +0530
Message-Id: <20190611145135.21399-76-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190611145135.21399-1-jagan@amarulasolutions.com>
References: <20190611145135.21399-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_075648_735840_43D9FDCD 
X-CRM114-Status: GOOD (  12.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
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

The vref_mode_dq, vref_value_dq on lpddr4 value is depending
on IO settings of rd_vref.

Add support for it.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 21 ++++++++++++++++-----
 1 file changed, 16 insertions(+), 5 deletions(-)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index c0e9a4e7c8..413469f4cc 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -339,7 +339,8 @@ static void set_memory_map(const struct chan_info *chan, u32 channel,
 }
 
 static int phy_io_config(const struct chan_info *chan,
-			 const struct rk3399_sdram_params *sdram_params)
+			 const struct rk3399_sdram_params *sdram_params,
+			 u32 mr5)
 {
 	u32 *denali_phy = chan->publ->denali_phy;
 	u32 vref_mode_dq, vref_value_dq, vref_mode_ac, vref_value_ac;
@@ -350,9 +351,19 @@ static int phy_io_config(const struct chan_info *chan,
 
 	/* vref setting */
 	if (sdram_params->base.dramtype == LPDDR4) {
-		/* LPDDR4 */
-		vref_mode_dq = 0x6;
-		vref_value_dq = 0x1f;
+		struct io_setting *io = lpddr4_get_io_settings(sdram_params,
+							       mr5);
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
@@ -771,7 +782,7 @@ static void set_ds_odt(const struct chan_info *chan,
 	/* phy_pad_fdbk_term 1bit DENALI_PHY_930 offset_17 */
 	clrsetbits_le32(&denali_phy[930], 0x1 << 17, reg_value);
 
-	phy_io_config(chan, sdram_params);
+	phy_io_config(chan, sdram_params, mr5);
 }
 
 static void pctl_start(struct dram_info *dram,
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

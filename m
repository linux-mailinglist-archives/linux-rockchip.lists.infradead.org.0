Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE8AF47B70
	for <lists+linux-rockchip@lfdr.de>; Mon, 17 Jun 2019 09:40:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ehha+7BEApJnP0crSupd3MsFa2PbxmQCvdxM7EZkDfg=; b=KhlYgAbnovUok3
	sWKckYFMKRIIIc+wOfh0TeQu6Kdf3Aihpi84Q7zw7vimBJ+06EbMFzojF1iTVKR1vqa2OsXG+A2u4
	3qwXyKtneQAjprEctCpBKfzgGuoriKTA0H6boXXprF87rc3LE2lgbpfQvSMZ8G/SBycUqKlPWN81c
	Cxn1Ehs+LoCg8lbjBp+MpbrhdxqKkjGqhz8YZ31LjEb5P71xGUX9mQX1Q107VrbSIXxbRC6nAhABQ
	kdFIuDxXYjH6/Me/E8EAJE1Atj2/hAxbZlaoiTHVXpnc2IMv+tsB8b5HSUE+3mbiQb45DbNLZsb50
	bzWMj/VGoFf2HkjhfQ1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcmG3-0001fz-9i; Mon, 17 Jun 2019 07:40:51 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcmFz-0001dH-9F
 for linux-rockchip@lists.infradead.org; Mon, 17 Jun 2019 07:40:48 +0000
Received: by mail-pg1-x544.google.com with SMTP id v9so5290097pgr.13
 for <linux-rockchip@lists.infradead.org>; Mon, 17 Jun 2019 00:40:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=JHJEi1B9BWCNPdGxI/VcOYj0TnW0NM3sy1W63Kvi/ww=;
 b=Ws5nm6wF/HezLCnyGDus0Mtrj3T/t75dGE7fsmY4ZjwxoL4jsW96b9SpRJiC6eIWoF
 RmjPDUcXt9aJNyGOXsyIASNWooST9aSYT+WgKOZNJlSN8YIZfsZ2uRGCvHlB1/6gFJYI
 ietXAPm1I+KvauSvtXXvLf+ewludlHk20LWQI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=JHJEi1B9BWCNPdGxI/VcOYj0TnW0NM3sy1W63Kvi/ww=;
 b=WgTOXgZfINUG2Vrpb8soWo5sjdgBF6IiJyhepel/7UfVv4CVMGp7gR1YG8foU1smVn
 anOIIDozsvKphBYjS6a73mdEJ87zepjdYmlmNfR+sctRHMfS3bhrDTL8gjddo3ypo2MF
 Kfll/IrobbA7fFXaSAsfGtxGh9oep44OSFyvgKxZcxNua+wW08dSiuW7bCQHpR0Wq19g
 UavE7ej8NOd++xkUp1Yp+SDHT8Bj/xYGdvWungsYnkh1oSn+Q5Mucz6eGdbQWeYmg+9I
 G1rTAtNpwVABheWJ6oqBwoDPBRd880W56djQjSZFu9wD1d1GGMjUbMtizxu7YL0fPw8N
 5jGQ==
X-Gm-Message-State: APjAAAXzC0k94NY1wJm6z4gj+IRzPt6jMyIveaUC3pX6kOzwYVywdOnV
 +osC8E0x9jKzRyk5yRFlxwUGlg==
X-Google-Smtp-Source: APXvYqwJce5AhmBozDjt1YxX8QBI/JsUE/Wsm7ocd5xSvFatTEXT9uQLXT/i2iCYb4MLeC87si9AqQ==
X-Received: by 2002:a63:2159:: with SMTP id s25mr46043225pgm.234.1560757246726; 
 Mon, 17 Jun 2019 00:40:46 -0700 (PDT)
Received: from localhost.localdomain ([49.206.203.245])
 by smtp.gmail.com with ESMTPSA id m41sm15205998pje.18.2019.06.17.00.40.43
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 00:40:46 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v2 80/99] ram: rk3399: Simplify data training first argument
Date: Mon, 17 Jun 2019 13:02:33 +0530
Message-Id: <20190617073252.27810-81-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190617073252.27810-1-jagan@amarulasolutions.com>
References: <20190617073252.27810-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_004047_387847_2B465F63 
X-CRM114-Status: GOOD (  11.89  )
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

data training is using chan_info as first argument with
channel number as second argument instead of that use
dram_info as first argument so-that we can get the
chan_info at data training definition.

This was the argument handling is meaningful, readable
and it would help to add similar data training for
lpddr4 in future.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index e3180d0ef2..927c7cced3 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -1286,10 +1286,11 @@ static int data_training_wdql(const struct chan_info *chan, u32 channel,
 	return 0;
 }
 
-static int data_training(const struct chan_info *chan, u32 channel,
+static int data_training(struct dram_info *dram, u32 channel,
 			 const struct rk3399_sdram_params *params,
 			 u32 training_flag)
 {
+	struct chan_info *chan = &dram->chan[channel];
 	u32 *denali_phy = chan->publ->denali_phy;
 	int ret;
 
@@ -1499,8 +1500,7 @@ static int switch_to_phy_index1(struct dram_info *dram,
 	for (channel = 0; channel < ch_count; channel++) {
 		denali_phy = dram->chan[channel].publ->denali_phy;
 		clrsetbits_le32(&denali_phy[896], (0x3 << 8) | 1, 1 << 8);
-		ret = data_training(&dram->chan[channel], channel,
-				    params, PI_FULL_TRAINING);
+		ret = data_training(dram, channel, params, PI_FULL_TRAINING);
 		if (ret < 0) {
 			debug("index1 training failed\n");
 			return ret;
@@ -1663,8 +1663,7 @@ static int sdram_init(struct dram_info *dram,
 			if (params->base.dramtype == LPDDR3)
 				training_flag |= PI_CA_TRAINING;
 
-			if (!(data_training(&dram->chan[ch], ch,
-					    params, training_flag)))
+			if (!(data_training(dram, ch, params, training_flag)))
 				break;
 		}
 		/* Computed rank with associated channel number */
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

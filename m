Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A4AB47B6E
	for <lists+linux-rockchip@lfdr.de>; Mon, 17 Jun 2019 09:40:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=15mx8Iz+AYXfwdxmhWvpiHC/sbgCXnpcq8kYGp4Iz1Y=; b=ljYLuW/UJLt7oB
	veaRs06yxxwtrmvB44nCMimcnBIWRl8c+TIiGrRxgGSYjF9ao1L6aun8mY+/ZH/U9GerVBnp1xvxH
	ZmxiW2HZUH2sf9jDeopO74imOUDpui1JJsutDE0MQN/P+RFkcn6HiovBgHkkumuilg2yL36XsLLvz
	wDHBnIj0S87Ze1pRhMuC7V5quszRzrfPaLdo6lKhAbGk+3cJsR/kflzmt6v5J7cqi8ZWjv9vs4gkW
	bogwjx+WUhfHhsMERg8RsVUgHsmFylggH9BFDR0P/YIBLtqP7m5dE8CSpxKnN2/i7LUE5d3HrQJAr
	gQfrSDV+uVPBdAqwcSAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcmFx-0001af-90; Mon, 17 Jun 2019 07:40:45 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcmFs-0001YG-Oi
 for linux-rockchip@lists.infradead.org; Mon, 17 Jun 2019 07:40:42 +0000
Received: by mail-pg1-x544.google.com with SMTP id 196so5314755pgc.6
 for <linux-rockchip@lists.infradead.org>; Mon, 17 Jun 2019 00:40:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Dm56k4GMSBCLqTUQ260YkDsWqxOIVqPIoK8l4/fCkOY=;
 b=NwMUYMoK3JcoSgydKymL1iay+V5cNVazMwvwb7F4nEKOTB6XD3hJVYUUEbYLwwIQGe
 jnyV8m+g1wIDqij9PV3mm4pHeIMnFuWG50FY/0LtNF7Z2yxslxR76wfhH9d84P8KFISp
 4gay0kW865iynrGtW5WMkdKDxfyj1P4CxQeRk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Dm56k4GMSBCLqTUQ260YkDsWqxOIVqPIoK8l4/fCkOY=;
 b=O3N/2T4RNPsG5RVtMuP2WzBJammDs25WXvVrUZaIxYDsANR8xkvJadGLVc00GbQuVp
 1U/zaWKCITDmZz1/ALQRmTmw4FBWw7nkGeDFWzHu+irQPWjiycXr+2A/BetPjYF3kkmt
 mNH/j9rOfypk+9qUmTdOe7cMWmrG5SWZL5t0CJFqvmzRAlvG5Hx5AiSrvqOwVnOlMLcy
 haoU7cMO0injkKRIzKPN+gZj01B+FgEYPRxxMkIQZayIfUIvJMsfA35OlA/r4BKPVRNN
 HLTiB/3dd+Y7uFrib7In/kuKfYLdTNUi0MYfpigriVCavy+10TsLxSQa5iBYniNlcIi9
 s8fg==
X-Gm-Message-State: APjAAAW/RueBb53aiXoYQ9lNCW3vgkH03fElwt+EhQDhVaNz6LKOxCFx
 ccmrOc9VFuD9SFG14qIJH/Dlgw==
X-Google-Smtp-Source: APXvYqwQNrPh8+CYPVTC1KkB65vPZpyJjfsiNniOPO/jwOuEv5LCrm8TPnVVqokkUIKGRTm8Gy1t1w==
X-Received: by 2002:a17:90a:2023:: with SMTP id
 n32mr20712759pjc.3.1560757240238; 
 Mon, 17 Jun 2019 00:40:40 -0700 (PDT)
Received: from localhost.localdomain ([49.206.203.245])
 by smtp.gmail.com with ESMTPSA id m41sm15205998pje.18.2019.06.17.00.40.37
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 00:40:39 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v2 78/99] ram: rk3399: Update lpddr4 mode_sel based on io
 settings
Date: Mon, 17 Jun 2019 13:02:31 +0530
Message-Id: <20190617073252.27810-79-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190617073252.27810-1-jagan@amarulasolutions.com>
References: <20190617073252.27810-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_004040_797321_AFE57F34 
X-CRM114-Status: GOOD (  12.16  )
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

The mode_sel on lpddr4 value is depending on IO settings
of rd_vref.

Add support for it.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 24db601072..0e98079468 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -347,7 +347,7 @@ static int phy_io_config(const struct chan_info *chan,
 	u32 drv_value, odt_value;
 	u32 speed;
 
-	/* vref setting */
+	/* vref setting & mode setting */
 	if (params->base.dramtype == LPDDR4) {
 		struct io_setting *io = lpddr4_get_io_settings(params, mr5);
 		u32 rd_vref = io->rd_vref * 1000;
@@ -355,15 +355,18 @@ static int phy_io_config(const struct chan_info *chan,
 		if (rd_vref < 36700) {
 			/* MODE_LV[2:0] = LPDDR4 (Range 2)*/
 			vref_mode_dq = 0x7;
+			/* MODE[2:0]= LPDDR4 Range 2(0.4*VDDQ) */
+			mode_sel = 0x5;
 			vref_value_dq = (rd_vref - 3300) / 521;
 		} else {
 			/* MODE_LV[2:0] = LPDDR4 (Range 1)*/
 			vref_mode_dq = 0x6;
+			/* MODE[2:0]= LPDDR4 Range 1(0.33*VDDQ) */
+			mode_sel = 0x4;
 			vref_value_dq = (rd_vref - 15300) / 521;
 		}
 		vref_mode_ac = 0x6;
 		vref_value_ac = 0x1f;
-		mode_sel = 0x6;
 	} else if (params->base.dramtype == LPDDR3) {
 		if (params->base.odt == 1) {
 			vref_mode_dq = 0x5;  /* LPDDR3 ODT */
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

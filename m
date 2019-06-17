Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6077547B7D
	for <lists+linux-rockchip@lfdr.de>; Mon, 17 Jun 2019 09:41:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zkJzN4WYJe7LBZ+2TV5K6k92h89SnsaMOnyPe2kDBLs=; b=CvuIYDT3fe6Niy
	EJWxbd2fCLs7VHfQIpDOhL2IOCReeQy/mt8QdCKh596Av69KU+TxKcvtgdH8mMhspBWJoKAUt/x2H
	rXppcFdS8EO3P9aU2fA70d13QjB5aaGFEp9GxZ5pHoQ4DN29A+9iuL6W8s/rucAW09TPDVGmPLi7u
	n32+4LoXv+c0TAs/0AUekkfwypCNd1kOhJEw+buNIHjmvvgale540eidWyjgoTyfzl2WI/copiQ+w
	yAjE/ZyKAtGs6L0s8y8kh34MkBZlLU9wZz7uuazDWFtmeglLs0hc9dAAeYkPGt0/hQndPlNwh35HK
	ZmY+4MBuQMqPmeGabw1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcmGl-0002EG-7c; Mon, 17 Jun 2019 07:41:35 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcmGg-0002An-15
 for linux-rockchip@lists.infradead.org; Mon, 17 Jun 2019 07:41:31 +0000
Received: by mail-pl1-x641.google.com with SMTP id bh12so3737585plb.4
 for <linux-rockchip@lists.infradead.org>; Mon, 17 Jun 2019 00:41:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=PQWH9ukfTdjRbywMISY+qcE2oqHuZ5y3usrU2Fjsdo0=;
 b=cVKhqc6inWMZaMgvi488GvIJaknwVg7p00Yeuw9X1t/kIeGPhdk+dXsedjAaPTBegN
 pEzawXrPMxyRwWwrEmcuOEFJc/XL2ixIAF1W6NtyO0LemJhOTZY/MH8gq16h6TkHT49I
 givx/D59wy5h7l63rC9IUR1pIQnug7yu5BCL8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=PQWH9ukfTdjRbywMISY+qcE2oqHuZ5y3usrU2Fjsdo0=;
 b=V0uN6Sj5rTX6h6J8PNAfdjTfKwkNQ2vwVCqYBgTNBHOt1xRgDVd20hdWUikS6ZcSXs
 zxXGkRgMTa4euHxo19PweD+oQKhPkLrVcS2iurmK1VKsqzVVPdDNr7v8WNJA8GhX7vmD
 wkNVH6Sb9EPVNfmcIsAxOWW/KbpezVpq99pIt5ur6xjG0JmbBQfLipg5grFb3uqvgpVp
 oRiHEBcb82EIz901WXtInAu5ON6SUZmCtOtJx//TinIAl00pNonMwMNRk8vHluTVuhiZ
 tb9Xh7Alpepg10B3iMDuSqeH3gFZrnJtKnQTkCuxS7qpCyNBZRVDYCzew5Mv1chnVrFm
 e9EA==
X-Gm-Message-State: APjAAAWpOUoj00bB3JPtz/IyoYFAYho9poNvC2hTv9dYk/NLmHPqLuVF
 jfovYrfXFmOrGd6Ay03YxWRCsA==
X-Google-Smtp-Source: APXvYqwmjninpGLyG1QVOunpII0MvzeE/cmj8rufJZvHtgeOYIcNqieQS9Zhs53A7N1WfFWaPc++vw==
X-Received: by 2002:a17:902:27a8:: with SMTP id
 d37mr107115254plb.150.1560757289513; 
 Mon, 17 Jun 2019 00:41:29 -0700 (PDT)
Received: from localhost.localdomain ([49.206.203.245])
 by smtp.gmail.com with ESMTPSA id m41sm15205998pje.18.2019.06.17.00.41.26
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 00:41:29 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v2 93/99] ram: rk3399: Set lpddr4 MR12
Date: Mon, 17 Jun 2019 13:02:46 +0530
Message-Id: <20190617073252.27810-94-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190617073252.27810-1-jagan@amarulasolutions.com>
References: <20190617073252.27810-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_004130_089913_DB3C4806 
X-CRM114-Status: UNSURE (   8.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
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

Set MR12 based identified controller in lpddr4
as part of LPDDR set rate initialization phase.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 50 +++++++++++++++++++++++++++++
 1 file changed, 50 insertions(+)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 61b886ba68..5c0914f40d 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -1940,6 +1940,55 @@ static void set_lpddr4_MR3(const struct chan_info *chan,
 	}
 }
 
+static void set_lpddr4_MR12(const struct chan_info *chan,
+			    struct rk3399_sdram_params *params, u32 ctl,
+			    bool ctl_phy_reg, u32 mr5)
+{
+	u32 *denali_ctl = get_denali_ctl(chan, params, ctl_phy_reg);
+	u32 *denali_pi = get_denali_pi(chan, params, ctl_phy_reg);
+	struct io_setting *io;
+	u32 reg_value;
+
+	io = lpddr4_get_io_settings(params, mr5);
+
+	reg_value = io->ca_vref;
+
+	switch (ctl) {
+	case 0:
+		clrsetbits_le32(&denali_ctl[140], 0xFFFF << 16,
+				reg_value << 16);
+		clrsetbits_le32(&denali_ctl[154], 0xFFFF << 16,
+				reg_value << 16);
+
+		clrsetbits_le32(&denali_pi[132], 0xFF << 8, reg_value << 8);
+		clrsetbits_le32(&denali_pi[139], 0xFF << 24, reg_value << 24);
+		clrsetbits_le32(&denali_pi[147], 0xFF << 8, reg_value << 8);
+		clrsetbits_le32(&denali_pi[154], 0xFF << 24, reg_value << 24);
+		break;
+	case 1:
+		clrsetbits_le32(&denali_ctl[141], 0xFFFF, reg_value);
+		clrsetbits_le32(&denali_ctl[155], 0xFFFF, reg_value);
+
+		clrsetbits_le32(&denali_pi[129], 0xFF << 24, reg_value << 24);
+		clrsetbits_le32(&denali_pi[137], 0xFF << 8, reg_value << 8);
+		clrsetbits_le32(&denali_pi[144], 0xFF << 24, reg_value << 24);
+		clrsetbits_le32(&denali_pi[152], 0xFF << 8, reg_value << 8);
+		break;
+	case 2:
+	default:
+		clrsetbits_le32(&denali_ctl[141], 0xFFFF << 16,
+				reg_value << 16);
+		clrsetbits_le32(&denali_ctl[155], 0xFFFF << 16,
+				reg_value << 16);
+
+		clrsetbits_le32(&denali_pi[127], 0xFF << 8, reg_value << 8);
+		clrsetbits_le32(&denali_pi[134], 0xFF << 24, reg_value << 24);
+		clrsetbits_le32(&denali_pi[142], 0xFF << 8, reg_value << 8);
+		clrsetbits_le32(&denali_pi[149], 0xFF << 24, reg_value << 24);
+		break;
+	}
+}
+
 static void lpddr4_copy_phy(struct dram_info *dram,
 			    struct rk3399_sdram_params *params, u32 phy,
 			    struct rk3399_sdram_params *timings,
@@ -2189,6 +2238,7 @@ static void lpddr4_copy_phy(struct dram_info *dram,
 	set_lpddr4_dq_odt(&dram->chan[channel], timings, ctl, true, true, mr5);
 	set_lpddr4_ca_odt(&dram->chan[channel], timings, ctl, true, true, mr5);
 	set_lpddr4_MR3(&dram->chan[channel], timings, ctl, true, mr5);
+	set_lpddr4_MR12(&dram->chan[channel], timings, ctl, true, mr5);
 
 	/*
 	 * if phy_sw_master_mode_x not bypass mode,
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

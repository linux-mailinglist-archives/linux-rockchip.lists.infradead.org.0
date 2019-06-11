Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3203F3CFF9
	for <lists+linux-rockchip@lfdr.de>; Tue, 11 Jun 2019 16:57:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aJTxd4qoauYHC4I1a+LKImTWPsse9wnK32SFYc/5SkA=; b=RNapPxWLIWM7te
	XFolUM6Sqqbeyi2po13xT4RwKmHUR+dYZYZx6qtXrrm3KUNEin27OzsqwThBEJNu8khUWWkHI6J9v
	aDuRhC2JeW/kQSzCvLtTAqJTvKNi1wMlZNm6dOA2cKyZZGrGiQsLMKs1bz3WHzCtRXV+lgd94s8Bq
	ZqInJVpWNIGApqOWJgLuELPwqJc/W7NefyiS9ODUpbpHECgHo1Lq9cYhrMjX7PcXeziIYxxc5AmQj
	lKGDaZPcwQ0uCwYTxoNi1CB4U3ZJnMoiqyfP7s2Gt/eqszo9jtfzWdryrI1lnQlLgDfb7Lm4u1s8l
	vhAWMiY2Zb3QqUj5A8Gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haiDN-0000cv-R0; Tue, 11 Jun 2019 14:57:33 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haiDG-0000Xf-SE
 for linux-rockchip@lists.infradead.org; Tue, 11 Jun 2019 14:57:28 +0000
Received: by mail-pf1-x442.google.com with SMTP id 19so6765489pfa.4
 for <linux-rockchip@lists.infradead.org>; Tue, 11 Jun 2019 07:57:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=UVRL2lvN+p279wEcfIbu5WA0St4e0Lg4BnrdGwXHOO4=;
 b=HHpuDAN95yQ/babuSnI4/HN/RvQUZehSEAJCSmPsxBH6UnHgwFWKqB4kiyNgDP0PoQ
 rqT2jW4FjzcbeBIfK/OhvHbG6C3fU5IIw30AiqJC3ig/IAhBIVMXf22iT49okl26GKoo
 LEZFfDCHIPBnrR3DhH1I9h6UFgCchtto2vPYk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=UVRL2lvN+p279wEcfIbu5WA0St4e0Lg4BnrdGwXHOO4=;
 b=qXBOzu+prYDUeUaPkJ//hEklqjFIK9UbnKtH6yanyPMPdkmN+VMiaaC74+eGNbNOaT
 Hyp3bwo4ejw1meDvm1/TZES9S+wl3zcX6lWsd1QeOgjIWn2wDIzSF74bTbNOIyy/cXzl
 JmADKkO3RdhpBfv+Sedi511nexSMxtdVWn2Ks/js1SUkxEqVEf/fKjpIm+RUW1mxXxaP
 VIFbl3raOS+peouzsE3uOSdhQ8DL8kvYVD1X22B2FJsF9DAwpux/iGm+ejIhij0IljoD
 LaO7lp9NwfprxTb+gQCbNDXY/hQp9zz3ngBcabsMyJvfbY4rPUfCRb3a0R8tOTqHxfV8
 e8pA==
X-Gm-Message-State: APjAAAWk7KhHkGbwWgmOEkoCVEEpedLv3GW4jiFLUj3X8x3wr0OCCdTa
 87e8w9Ajqfi2X+Vc4DV5HBg42A==
X-Google-Smtp-Source: APXvYqwkOHuqkB7noX7TOAqvyVL01vjzxfzSrhlQseP5EVUsc2ZRi5ignMn5xaT+oozbRTDPwzlO1A==
X-Received: by 2002:a17:90a:37ac:: with SMTP id
 v41mr14311701pjb.6.1560265046258; 
 Tue, 11 Jun 2019 07:57:26 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.18])
 by smtp.gmail.com with ESMTPSA id e9sm16206208pfn.154.2019.06.11.07.57.22
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Jun 2019 07:57:25 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH 85/92] ram: rk3399: Set lpddr4 dq odt
Date: Tue, 11 Jun 2019 20:21:28 +0530
Message-Id: <20190611145135.21399-86-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190611145135.21399-1-jagan@amarulasolutions.com>
References: <20190611145135.21399-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_075726_989891_14F46C2C 
X-CRM114-Status: GOOD (  11.45  )
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

Set DQ ODT based identified controller in lpddr4
as part of LPDDR set rate initialization phase.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 80 ++++++++++++++++++++++++++++-
 1 file changed, 78 insertions(+), 2 deletions(-)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 170743b88c..fc9958de17 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -220,6 +220,12 @@ lpddr4_get_io_settings(const struct rk3399_sdram_params *params, u32 mr5)
 	return io;
 }
 
+static void *get_denali_pi(const struct chan_info *chan,
+			   struct rk3399_sdram_params *params, bool reg)
+{
+	return reg ? &chan->pi->denali_pi : &params->pi_regs.denali_pi;
+}
+
 static void *get_denali_phy(const struct chan_info *chan,
 			    struct rk3399_sdram_params *params, bool reg)
 {
@@ -244,6 +250,13 @@ static u32 lpddr4_get_phy(struct rk3399_sdram_params *params, u32 ctl)
 	return lpddr4_phy[ctl];
 }
 
+static u32 lpddr4_get_ctl(struct rk3399_sdram_params *params, u32 phy)
+{
+	u32 lpddr4_ctl[] = {1, 0, 2};
+
+	return lpddr4_ctl[phy];
+}
+
 static u32 get_ddr_stride(struct rk3399_pmusgrf_regs *pmusgrf)
 {
 	return ((readl(&pmusgrf->soc_con4) >> 10) & 0x1F);
@@ -1840,16 +1853,65 @@ end:
 	return ret;
 }
 
+static void set_lpddr4_dq_odt(const struct chan_info *chan,
+			      struct rk3399_sdram_params *params, u32 ctl,
+			      bool en, bool ctl_phy_reg, u32 mr5)
+{
+	u32 *denali_ctl = get_denali_ctl(chan, params, ctl_phy_reg);
+	u32 *denali_pi = get_denali_pi(chan, params, ctl_phy_reg);
+	struct io_setting *io;
+	u32 reg_value;
+
+	if (!en)
+		return;
+
+	io = lpddr4_get_io_settings(params, mr5);
+
+	reg_value = io->dq_odt;
+
+	switch (ctl) {
+	case 0:
+		clrsetbits_le32(&denali_ctl[139], 0x7 << 24, reg_value << 24);
+		clrsetbits_le32(&denali_ctl[153], 0x7 << 24, reg_value << 24);
+
+		clrsetbits_le32(&denali_pi[132], 0x7 << 0, (reg_value << 0));
+		clrsetbits_le32(&denali_pi[139], 0x7 << 16, (reg_value << 16));
+		clrsetbits_le32(&denali_pi[147], 0x7 << 0, (reg_value << 0));
+		clrsetbits_le32(&denali_pi[154], 0x7 << 16, (reg_value << 16));
+		break;
+	case 1:
+		clrsetbits_le32(&denali_ctl[140], 0x7 << 0, reg_value << 0);
+		clrsetbits_le32(&denali_ctl[154], 0x7 << 0, reg_value << 0);
+
+		clrsetbits_le32(&denali_pi[129], 0x7 << 16, (reg_value << 16));
+		clrsetbits_le32(&denali_pi[137], 0x7 << 0, (reg_value << 0));
+		clrsetbits_le32(&denali_pi[144], 0x7 << 16, (reg_value << 16));
+		clrsetbits_le32(&denali_pi[152], 0x7 << 0, (reg_value << 0));
+		break;
+	case 2:
+	default:
+		clrsetbits_le32(&denali_ctl[140], 0x7 << 8, (reg_value << 8));
+		clrsetbits_le32(&denali_ctl[154], 0x7 << 8, (reg_value << 8));
+
+		clrsetbits_le32(&denali_pi[127], 0x7 << 0, (reg_value << 0));
+		clrsetbits_le32(&denali_pi[134], 0x7 << 16, (reg_value << 16));
+		clrsetbits_le32(&denali_pi[142], 0x7 << 0, (reg_value << 0));
+		clrsetbits_le32(&denali_pi[149], 0x7 << 16, (reg_value << 16));
+		break;
+	}
+}
+
 static void lpddr4_copy_phy(struct dram_info *dram,
 			    struct rk3399_sdram_params *params, u32 phy,
 			    struct rk3399_sdram_params *timings,
 			    u32 channel)
 {
-	u32 *denali_phy;
+	u32 *denali_ctl, *denali_phy;
 	u32 *denali_phy_params;
 	u32 speed = 0;
-	u32 mr5;
+	u32 ctl, mr5;
 
+	denali_ctl = dram->chan[channel].pctl->denali_ctl;
 	denali_phy = dram->chan[channel].publ->denali_phy;
 	denali_phy_params = timings->phy_regs.denali_phy;
 
@@ -2084,6 +2146,9 @@ static void lpddr4_copy_phy(struct dram_info *dram,
 	read_mr(dram->chan[channel].pctl, 1, 5, &mr5);
 	set_ds_odt(&dram->chan[channel], timings, true, mr5);
 
+	ctl = lpddr4_get_ctl(timings, phy);
+	set_lpddr4_dq_odt(&dram->chan[channel], timings, ctl, true, true, mr5);
+
 	/*
 	 * if phy_sw_master_mode_X not bypass mode,
 	 * clear PHY_SLICE_PWR_RDC_DISABLE.
@@ -2095,6 +2160,17 @@ static void lpddr4_copy_phy(struct dram_info *dram,
 		clrbits_le32(&denali_phy[266], 1 << 16);
 		clrbits_le32(&denali_phy[394], 1 << 16);
 	}
+
+	/*
+	 * when PHY_PER_CS_TRAINING_EN=1, W2W_DIFFCS_DLY_Fx can't
+	 * smaller than 8
+	 * NOTE: need use timings, not ddr_publ_regs
+	 */
+	if ((denali_phy_params[84] >> 16) & 1) {
+		if (((readl(&denali_ctl[217 + ctl]) >> 16) & 0x1f) < 8)
+			clrsetbits_le32(&denali_ctl[217 + ctl],
+					0x1f << 16, 8 << 16);
+	}
 }
 
 static void lpddr4_set_phy(struct dram_info *dram,
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

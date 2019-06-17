Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05BAB47B57
	for <lists+linux-rockchip@lfdr.de>; Mon, 17 Jun 2019 09:39:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eo7khD4cewYesGnkypRF6glH6ufJqBLifGlnk1RInbs=; b=fhPdEFpArYO4Xq
	6mgjVZJlttGrcYfjOelPLAul8/zYVlZU2Vg6hau39y+JkHimf4ji/B+RWS3m4KX6Zb3jHgs/Sh/r3
	d+gO/TmNYyOB/tLOrEth/UwhzLjW4lc1HiZMQIi4711zh3gy7GcRrVyXwyRufavpksgZys8KbHpMk
	+B0l9eojikEn5//3/9vNiwg+ghxHviWHuZ3iVa3UHZq7cgXCRtaiWw+MVPG5RLc764gvbgvLzNfmx
	l4HUB3paWLhDJU5ZXg4R21XxSbO4XBIIR0vn0to+vTlFvLjVh8DwjGdYrwovGnmDMhGSd7pV3JTvt
	eEwoMoqRXOPZNFpfvdPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcmEt-00080S-LW; Mon, 17 Jun 2019 07:39:39 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcmEp-0007yb-Ja
 for linux-rockchip@lists.infradead.org; Mon, 17 Jun 2019 07:39:37 +0000
Received: by mail-pl1-x642.google.com with SMTP id bi6so3718241plb.12
 for <linux-rockchip@lists.infradead.org>; Mon, 17 Jun 2019 00:39:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Z+Ko7TCMQhhvh+7VvoCk2SrBLY1PEcGUCLyJQdTLOJQ=;
 b=KuKa2Lc6Fwq27ZTSWibqd8CCgG4oq4lOYVMJnkKMSQCW0epgiVQfk5Bi2kCroRp7Nk
 3xkz82ooVEQAMQDYsuXLxeDeQVkU4FM7SGGgIB/vq9FckakwWcMwgotWM0pPOFKtnQ8X
 S9YXtcjPvsYZbG8I0LN3wDNiczeqUjeSgY5qE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Z+Ko7TCMQhhvh+7VvoCk2SrBLY1PEcGUCLyJQdTLOJQ=;
 b=qa3OIgm8JWEqHqCUzfgKBJxF5/J1lK/iJuidORft7P/t2T8mHaAzjlsVa7CyjupsNr
 lEwVUw2dPUnDdjAdntUWT6ok2G8sLT+v1OyZ97fIEI9xUVsRa5iPdBhQnLi9/4MqWqeG
 Tb49lIyxTrI7hRU43djEhQf47ch3DnRep84JzplO/9OK5WYKBv4Zl1z6xZMIPeIhH/P3
 Vp7pJwb/IYTktMAasH6gIvkE5Y7Pjpr6mCndzaBFxTq7/DMXHkW+LoTl/vd9pje9mZOw
 eSTScI808Z2NVXk2B7sfZbzZTUGvDdiudTq1AXMNY62FdR3HmyUECc0eUcGrzsxPp4A0
 /LdQ==
X-Gm-Message-State: APjAAAXyX1NdwaufJgP7mLpQ74/ht4TTnnDi21VoaRcm0pmBYcnubxn0
 AD91qQ3qVVlwY22ooRDksfimmQ==
X-Google-Smtp-Source: APXvYqz/sw6PTr9xCpWrVp8GMVSyDT/shHhkhjFhnXJg+3qsoVY66Vin/xJ2VRd3kZ+yAYFJ5BGZaQ==
X-Received: by 2002:a17:902:7d86:: with SMTP id
 a6mr82272814plm.199.1560757174992; 
 Mon, 17 Jun 2019 00:39:34 -0700 (PDT)
Received: from localhost.localdomain ([49.206.203.245])
 by smtp.gmail.com with ESMTPSA id m41sm15205998pje.18.2019.06.17.00.39.31
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 00:39:33 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v2 58/99] ram: rk3399: Configure phy IO in ds odt
Date: Mon, 17 Jun 2019 13:02:11 +0530
Message-Id: <20190617073252.27810-59-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190617073252.27810-1-jagan@amarulasolutions.com>
References: <20190617073252.27810-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_003935_684651_F7400091 
X-CRM114-Status: GOOD (  14.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
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

Some dramtypes like lpddr4 initialization would required to
configure phy IO even after pctl_cfg and after set_ds_odt.

For those cases the set_ds_odt would be an initial call to
setup the phy.

To satisfy all the cases, trigger phy IO from set_ds_odt.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 327 ++++++++++++++--------------
 1 file changed, 162 insertions(+), 165 deletions(-)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index d5ff17ad4f..7f01681a01 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -188,6 +188,166 @@ static void set_memory_map(const struct chan_info *chan, u32 channel,
 		writel(0x2EC7FFFF, &denali_pi[34]);
 }
 
+static int phy_io_config(const struct chan_info *chan,
+			 const struct rk3399_sdram_params *params)
+{
+	u32 *denali_phy = chan->publ->denali_phy;
+	u32 vref_mode_dq, vref_value_dq, vref_mode_ac, vref_value_ac;
+	u32 mode_sel;
+	u32 reg_value;
+	u32 drv_value, odt_value;
+	u32 speed;
+
+	/* vref setting */
+	if (params->base.dramtype == LPDDR4) {
+		/* LPDDR4 */
+		vref_mode_dq = 0x6;
+		vref_value_dq = 0x1f;
+		vref_mode_ac = 0x6;
+		vref_value_ac = 0x1f;
+	} else if (params->base.dramtype == LPDDR3) {
+		if (params->base.odt == 1) {
+			vref_mode_dq = 0x5;  /* LPDDR3 ODT */
+			drv_value = (readl(&denali_phy[6]) >> 12) & 0xf;
+			odt_value = (readl(&denali_phy[6]) >> 4) & 0xf;
+			if (drv_value == PHY_DRV_ODT_48) {
+				switch (odt_value) {
+				case PHY_DRV_ODT_240:
+					vref_value_dq = 0x16;
+					break;
+				case PHY_DRV_ODT_120:
+					vref_value_dq = 0x26;
+					break;
+				case PHY_DRV_ODT_60:
+					vref_value_dq = 0x36;
+					break;
+				default:
+					debug("Invalid ODT value.\n");
+					return -EINVAL;
+				}
+			} else if (drv_value == PHY_DRV_ODT_40) {
+				switch (odt_value) {
+				case PHY_DRV_ODT_240:
+					vref_value_dq = 0x19;
+					break;
+				case PHY_DRV_ODT_120:
+					vref_value_dq = 0x23;
+					break;
+				case PHY_DRV_ODT_60:
+					vref_value_dq = 0x31;
+					break;
+				default:
+					debug("Invalid ODT value.\n");
+					return -EINVAL;
+				}
+			} else if (drv_value == PHY_DRV_ODT_34_3) {
+				switch (odt_value) {
+				case PHY_DRV_ODT_240:
+					vref_value_dq = 0x17;
+					break;
+				case PHY_DRV_ODT_120:
+					vref_value_dq = 0x20;
+					break;
+				case PHY_DRV_ODT_60:
+					vref_value_dq = 0x2e;
+					break;
+				default:
+					debug("Invalid ODT value.\n");
+					return -EINVAL;
+				}
+			} else {
+				debug("Invalid DRV value.\n");
+				return -EINVAL;
+			}
+		} else {
+			vref_mode_dq = 0x2;  /* LPDDR3 */
+			vref_value_dq = 0x1f;
+		}
+		vref_mode_ac = 0x2;
+		vref_value_ac = 0x1f;
+	} else if (params->base.dramtype == DDR3) {
+		/* DDR3L */
+		vref_mode_dq = 0x1;
+		vref_value_dq = 0x1f;
+		vref_mode_ac = 0x1;
+		vref_value_ac = 0x1f;
+	} else {
+		debug("Unknown DRAM type.\n");
+		return -EINVAL;
+	}
+
+	reg_value = (vref_mode_dq << 9) | (0x1 << 8) | vref_value_dq;
+
+	/* PHY_913 PHY_PAD_VREF_CTRL_DQ_0 12bits offset_8 */
+	clrsetbits_le32(&denali_phy[913], 0xfff << 8, reg_value << 8);
+	/* PHY_914 PHY_PAD_VREF_CTRL_DQ_1 12bits offset_0 */
+	clrsetbits_le32(&denali_phy[914], 0xfff, reg_value);
+	/* PHY_914 PHY_PAD_VREF_CTRL_DQ_2 12bits offset_16 */
+	clrsetbits_le32(&denali_phy[914], 0xfff << 16, reg_value << 16);
+	/* PHY_915 PHY_PAD_VREF_CTRL_DQ_3 12bits offset_0 */
+	clrsetbits_le32(&denali_phy[915], 0xfff, reg_value);
+
+	reg_value = (vref_mode_ac << 9) | (0x1 << 8) | vref_value_ac;
+
+	/* PHY_915 PHY_PAD_VREF_CTRL_AC 12bits offset_16 */
+	clrsetbits_le32(&denali_phy[915], 0xfff << 16, reg_value << 16);
+
+	if (params->base.dramtype == LPDDR4)
+		mode_sel = 0x6;
+	else if (params->base.dramtype == LPDDR3)
+		mode_sel = 0x0;
+	else if (params->base.dramtype == DDR3)
+		mode_sel = 0x1;
+	else
+		return -EINVAL;
+
+	/* PHY_924 PHY_PAD_FDBK_DRIVE */
+	clrsetbits_le32(&denali_phy[924], 0x7 << 15, mode_sel << 15);
+	/* PHY_926 PHY_PAD_DATA_DRIVE */
+	clrsetbits_le32(&denali_phy[926], 0x7 << 6, mode_sel << 6);
+	/* PHY_927 PHY_PAD_DQS_DRIVE */
+	clrsetbits_le32(&denali_phy[927], 0x7 << 6, mode_sel << 6);
+	/* PHY_928 PHY_PAD_ADDR_DRIVE */
+	clrsetbits_le32(&denali_phy[928], 0x7 << 14, mode_sel << 14);
+	/* PHY_929 PHY_PAD_CLK_DRIVE */
+	clrsetbits_le32(&denali_phy[929], 0x7 << 14, mode_sel << 14);
+	/* PHY_935 PHY_PAD_CKE_DRIVE */
+	clrsetbits_le32(&denali_phy[935], 0x7 << 14, mode_sel << 14);
+	/* PHY_937 PHY_PAD_RST_DRIVE */
+	clrsetbits_le32(&denali_phy[937], 0x7 << 14, mode_sel << 14);
+	/* PHY_939 PHY_PAD_CS_DRIVE */
+	clrsetbits_le32(&denali_phy[939], 0x7 << 14, mode_sel << 14);
+
+	/* speed setting */
+	if (params->base.ddr_freq < 400)
+		speed = 0x0;
+	else if (params->base.ddr_freq < 800)
+		speed = 0x1;
+	else if (params->base.ddr_freq < 1200)
+		speed = 0x2;
+	else
+		speed = 0x3;
+
+	/* PHY_924 PHY_PAD_FDBK_DRIVE */
+	clrsetbits_le32(&denali_phy[924], 0x3 << 21, speed << 21);
+	/* PHY_926 PHY_PAD_DATA_DRIVE */
+	clrsetbits_le32(&denali_phy[926], 0x3 << 9, speed << 9);
+	/* PHY_927 PHY_PAD_DQS_DRIVE */
+	clrsetbits_le32(&denali_phy[927], 0x3 << 9, speed << 9);
+	/* PHY_928 PHY_PAD_ADDR_DRIVE */
+	clrsetbits_le32(&denali_phy[928], 0x3 << 17, speed << 17);
+	/* PHY_929 PHY_PAD_CLK_DRIVE */
+	clrsetbits_le32(&denali_phy[929], 0x3 << 17, speed << 17);
+	/* PHY_935 PHY_PAD_CKE_DRIVE */
+	clrsetbits_le32(&denali_phy[935], 0x3 << 17, speed << 17);
+	/* PHY_937 PHY_PAD_RST_DRIVE */
+	clrsetbits_le32(&denali_phy[937], 0x3 << 17, speed << 17);
+	/* PHY_939 PHY_PAD_CS_DRIVE */
+	clrsetbits_le32(&denali_phy[939], 0x3 << 17, speed << 17);
+
+	return 0;
+}
+
 static void set_ds_odt(const struct chan_info *chan,
 		       const struct rk3399_sdram_params *params)
 {
@@ -332,6 +492,8 @@ static void set_ds_odt(const struct chan_info *chan,
 
 	/* phy_pad_fdbk_term 1bit DENALI_PHY_930 offset_17 */
 	clrsetbits_le32(&denali_phy[930], 0x1 << 17, reg_value);
+
+	phy_io_config(chan, params);
 }
 
 static void pctl_start(struct dram_info *dram, u8 channel)
@@ -376,166 +538,6 @@ static void pctl_start(struct dram_info *dram, u8 channel)
 			dram->pwrup_srefresh_exit[channel]);
 }
 
-static int phy_io_config(const struct chan_info *chan,
-			 const struct rk3399_sdram_params *params)
-{
-	u32 *denali_phy = chan->publ->denali_phy;
-	u32 vref_mode_dq, vref_value_dq, vref_mode_ac, vref_value_ac;
-	u32 mode_sel;
-	u32 reg_value;
-	u32 drv_value, odt_value;
-	u32 speed;
-
-	/* vref setting */
-	if (params->base.dramtype == LPDDR4) {
-		/* LPDDR4 */
-		vref_mode_dq = 0x6;
-		vref_value_dq = 0x1f;
-		vref_mode_ac = 0x6;
-		vref_value_ac = 0x1f;
-	} else if (params->base.dramtype == LPDDR3) {
-		if (params->base.odt == 1) {
-			vref_mode_dq = 0x5;  /* LPDDR3 ODT */
-			drv_value = (readl(&denali_phy[6]) >> 12) & 0xf;
-			odt_value = (readl(&denali_phy[6]) >> 4) & 0xf;
-			if (drv_value == PHY_DRV_ODT_48) {
-				switch (odt_value) {
-				case PHY_DRV_ODT_240:
-					vref_value_dq = 0x16;
-					break;
-				case PHY_DRV_ODT_120:
-					vref_value_dq = 0x26;
-					break;
-				case PHY_DRV_ODT_60:
-					vref_value_dq = 0x36;
-					break;
-				default:
-					debug("Invalid ODT value.\n");
-					return -EINVAL;
-				}
-			} else if (drv_value == PHY_DRV_ODT_40) {
-				switch (odt_value) {
-				case PHY_DRV_ODT_240:
-					vref_value_dq = 0x19;
-					break;
-				case PHY_DRV_ODT_120:
-					vref_value_dq = 0x23;
-					break;
-				case PHY_DRV_ODT_60:
-					vref_value_dq = 0x31;
-					break;
-				default:
-					debug("Invalid ODT value.\n");
-					return -EINVAL;
-				}
-			} else if (drv_value == PHY_DRV_ODT_34_3) {
-				switch (odt_value) {
-				case PHY_DRV_ODT_240:
-					vref_value_dq = 0x17;
-					break;
-				case PHY_DRV_ODT_120:
-					vref_value_dq = 0x20;
-					break;
-				case PHY_DRV_ODT_60:
-					vref_value_dq = 0x2e;
-					break;
-				default:
-					debug("Invalid ODT value.\n");
-					return -EINVAL;
-				}
-			} else {
-				debug("Invalid DRV value.\n");
-				return -EINVAL;
-			}
-		} else {
-			vref_mode_dq = 0x2;  /* LPDDR3 */
-			vref_value_dq = 0x1f;
-		}
-		vref_mode_ac = 0x2;
-		vref_value_ac = 0x1f;
-	} else if (params->base.dramtype == DDR3) {
-		/* DDR3L */
-		vref_mode_dq = 0x1;
-		vref_value_dq = 0x1f;
-		vref_mode_ac = 0x1;
-		vref_value_ac = 0x1f;
-	} else {
-		debug("Unknown DRAM type.\n");
-		return -EINVAL;
-	}
-
-	reg_value = (vref_mode_dq << 9) | (0x1 << 8) | vref_value_dq;
-
-	/* PHY_913 PHY_PAD_VREF_CTRL_DQ_0 12bits offset_8 */
-	clrsetbits_le32(&denali_phy[913], 0xfff << 8, reg_value << 8);
-	/* PHY_914 PHY_PAD_VREF_CTRL_DQ_1 12bits offset_0 */
-	clrsetbits_le32(&denali_phy[914], 0xfff, reg_value);
-	/* PHY_914 PHY_PAD_VREF_CTRL_DQ_2 12bits offset_16 */
-	clrsetbits_le32(&denali_phy[914], 0xfff << 16, reg_value << 16);
-	/* PHY_915 PHY_PAD_VREF_CTRL_DQ_3 12bits offset_0 */
-	clrsetbits_le32(&denali_phy[915], 0xfff, reg_value);
-
-	reg_value = (vref_mode_ac << 9) | (0x1 << 8) | vref_value_ac;
-
-	/* PHY_915 PHY_PAD_VREF_CTRL_AC 12bits offset_16 */
-	clrsetbits_le32(&denali_phy[915], 0xfff << 16, reg_value << 16);
-
-	if (params->base.dramtype == LPDDR4)
-		mode_sel = 0x6;
-	else if (params->base.dramtype == LPDDR3)
-		mode_sel = 0x0;
-	else if (params->base.dramtype == DDR3)
-		mode_sel = 0x1;
-	else
-		return -EINVAL;
-
-	/* PHY_924 PHY_PAD_FDBK_DRIVE */
-	clrsetbits_le32(&denali_phy[924], 0x7 << 15, mode_sel << 15);
-	/* PHY_926 PHY_PAD_DATA_DRIVE */
-	clrsetbits_le32(&denali_phy[926], 0x7 << 6, mode_sel << 6);
-	/* PHY_927 PHY_PAD_DQS_DRIVE */
-	clrsetbits_le32(&denali_phy[927], 0x7 << 6, mode_sel << 6);
-	/* PHY_928 PHY_PAD_ADDR_DRIVE */
-	clrsetbits_le32(&denali_phy[928], 0x7 << 14, mode_sel << 14);
-	/* PHY_929 PHY_PAD_CLK_DRIVE */
-	clrsetbits_le32(&denali_phy[929], 0x7 << 14, mode_sel << 14);
-	/* PHY_935 PHY_PAD_CKE_DRIVE */
-	clrsetbits_le32(&denali_phy[935], 0x7 << 14, mode_sel << 14);
-	/* PHY_937 PHY_PAD_RST_DRIVE */
-	clrsetbits_le32(&denali_phy[937], 0x7 << 14, mode_sel << 14);
-	/* PHY_939 PHY_PAD_CS_DRIVE */
-	clrsetbits_le32(&denali_phy[939], 0x7 << 14, mode_sel << 14);
-
-	/* speed setting */
-	if (params->base.ddr_freq < 400)
-		speed = 0x0;
-	else if (params->base.ddr_freq < 800)
-		speed = 0x1;
-	else if (params->base.ddr_freq < 1200)
-		speed = 0x2;
-	else
-		speed = 0x3;
-
-	/* PHY_924 PHY_PAD_FDBK_DRIVE */
-	clrsetbits_le32(&denali_phy[924], 0x3 << 21, speed << 21);
-	/* PHY_926 PHY_PAD_DATA_DRIVE */
-	clrsetbits_le32(&denali_phy[926], 0x3 << 9, speed << 9);
-	/* PHY_927 PHY_PAD_DQS_DRIVE */
-	clrsetbits_le32(&denali_phy[927], 0x3 << 9, speed << 9);
-	/* PHY_928 PHY_PAD_ADDR_DRIVE */
-	clrsetbits_le32(&denali_phy[928], 0x3 << 17, speed << 17);
-	/* PHY_929 PHY_PAD_CLK_DRIVE */
-	clrsetbits_le32(&denali_phy[929], 0x3 << 17, speed << 17);
-	/* PHY_935 PHY_PAD_CKE_DRIVE */
-	clrsetbits_le32(&denali_phy[935], 0x3 << 17, speed << 17);
-	/* PHY_937 PHY_PAD_RST_DRIVE */
-	clrsetbits_le32(&denali_phy[937], 0x3 << 17, speed << 17);
-	/* PHY_939 PHY_PAD_CS_DRIVE */
-	clrsetbits_le32(&denali_phy[939], 0x3 << 17, speed << 17);
-
-	return 0;
-}
-
 static int pctl_cfg(struct dram_info *dram, const struct chan_info *chan,
 		    u32 channel, const struct rk3399_sdram_params *params)
 {
@@ -545,7 +547,6 @@ static int pctl_cfg(struct dram_info *dram, const struct chan_info *chan,
 	const u32 *params_ctl = params->pctl_regs.denali_ctl;
 	const u32 *params_phy = params->phy_regs.denali_phy;
 	u32 tmp, tmp1, tmp2;
-	int ret;
 
 	/*
 	 * work around controller bug:
@@ -623,10 +624,6 @@ static int pctl_cfg(struct dram_info *dram, const struct chan_info *chan,
 	tmp = (readl(&denali_phy[467]) >> 16) & 0xff;
 	clrsetbits_le32(&denali_phy[467], 0xff << 16, (tmp + 0x10) << 16);
 
-	ret = phy_io_config(chan, params);
-	if (ret)
-		return ret;
-
 	return 0;
 }
 
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

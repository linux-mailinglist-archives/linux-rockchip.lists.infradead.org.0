Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 733D76A7F9
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 14:01:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=77bt231icTrkAsA6Y1av5PEYVkHkxP+v4rAuq9ZE+UI=; b=GRSZMswIiWs8nA
	HR/AK/TGs1kdBoDepOF0ObBEtfuqs8Y522rfFjyKh90r7eJ9bP8W/u1VSA8Tr9CyNElSkJ0CNewMi
	dO6dZ6YI+zN1NCyrqsUlyNoIJU9j7mJJzT9nMNk6ubKrnE4xzULtdeZnKCK1WqN4+DOC4xl0VDKEz
	Cb08G5w5BeFxR/xrCI5tiQCo3XrjuDWRi0oD2C+EJb8SD6x7aHlfIEX6j8NJ4SWIe/2cLBQnsFzKP
	wkx2B6imsb3mqCIwxpzX4p76RpWtDvqZjay2mKaXRg3xqaeHtnRfc9AQNEmproebF+X78G4c4s72e
	wVFL9YArI5hB7PWwZi+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnM94-0007Mh-3M; Tue, 16 Jul 2019 12:01:22 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnM6r-0004No-BC
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 11:59:08 +0000
Received: by mail-pf1-x443.google.com with SMTP id y15so9014873pfn.5
 for <linux-rockchip@lists.infradead.org>; Tue, 16 Jul 2019 04:59:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=iUvWjq1BPXXrVhqOCtmAWyZXv7hBktL59XaTbIUcq2E=;
 b=jCoUEpHvyUhyeuQ1U2+ghk5jkVXn6uuoM7ANq768bzrk0WmmKWT5R8uDLVqoYZ8djb
 KC9suSP0lU8yXk44FsKfz4bv0AITXGCMlKkqQ1XMLNro6jr522FcipbfkfY0/vv5DJFg
 Vv1Skfe5EId/L56DTeYN5jN9Rf2y18FIDIGx0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=iUvWjq1BPXXrVhqOCtmAWyZXv7hBktL59XaTbIUcq2E=;
 b=bD4M83EFnGa5qNn0QWWB5T37nSWvuBS0zr16epcN9he/31k9DuqRobw7qbsFy9QBnp
 G7hMOvB9EO36RUaou0R1AK5mprv2KdTRxWNfL2bDpS3qppCQvJD9X8C7VPyCJgiiOuuo
 qDaf7AAfzsBlDtLL43/2KUuqXKXHJsOJe+6q0i9I1BjbvUKdez6FdzZX7YFpRKQLhpZq
 0TeMfD+OFSPlK8QJm88/vivu0sdMwyezf68cTpfyCcNyxLri2PJxFNbkWyEvZmweJLXK
 D5TwSznlnrVkvocWkaAaJYwomJTT/M8UEB16LF0LAodaGAWjRlV8aImbhJ8/4ru6EQf9
 O2fA==
X-Gm-Message-State: APjAAAVGhNhgR9vZYZK2P1JUMOklWpLyaap63xflqcu+uSmHi2A8g1bw
 157FO0RH8haKFb+MXwJRagIuXA==
X-Google-Smtp-Source: APXvYqzZlFQu9pt5lTgpKzSyJ0BzroW2t95NOltGImVnHuaXoavw+kbtFE8QU+Y7K2PR6CpuqzyDVw==
X-Received: by 2002:a17:90a:8c0c:: with SMTP id
 a12mr35678317pjo.67.1563278344023; 
 Tue, 16 Jul 2019 04:59:04 -0700 (PDT)
Received: from localhost.localdomain ([49.206.201.107])
 by smtp.gmail.com with ESMTPSA id z24sm36269566pfr.51.2019.07.16.04.59.00
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 16 Jul 2019 04:59:03 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v3 19/57] ram: rk3399: Configure phy IO in ds odt
Date: Tue, 16 Jul 2019 17:27:07 +0530
Message-Id: <20190716115745.12585-20-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190716115745.12585-1-jagan@amarulasolutions.com>
References: <20190716115745.12585-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_045905_429663_06F44561 
X-CRM114-Status: GOOD (  13.27  )
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
index e4723c7d59..a49677285d 100644
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

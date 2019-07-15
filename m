Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE72E69AB4
	for <lists+linux-rockchip@lfdr.de>; Mon, 15 Jul 2019 20:21:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ScHW2aNr9pdWbCcbn/5eM4cQQka1SW9uP/DeoXU32b0=; b=JTblydorM+ttR0
	LskmaRTehu2Ep0n0XEn7c33z8lj91iwD7Ack4rkTDUswe4YQSPWqN5OeIYXBFQBwL+Fu6XzDY6j91
	bUBdQTOFyQ2B+C0pkDlRip6LSDrdMJ04f/1MLCldOphe7CspXvnqIZYPmRwwOXe4KNAEjVeB/7sEx
	73PCUbOApAL8yzgJLZshTG8sp6QhOq0oQs/XkcPEgi5oXkzwjf71VblGObiYypLNS5MRg62NrEYCa
	gpTcyZD1+vRtEvlWf7J0xtEceoKRTTS8yDXHmFFoZaiB8PRnedO/K45k1W39wrUtzFs2VBHXgolf1
	1vDrUICHTjtL66idWdEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn5bc-0006tx-Bv; Mon, 15 Jul 2019 18:21:44 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn5bX-0006qc-1H
 for linux-rockchip@lists.infradead.org; Mon, 15 Jul 2019 18:21:40 +0000
Received: by mail-pf1-x441.google.com with SMTP id p184so7800256pfp.7
 for <linux-rockchip@lists.infradead.org>; Mon, 15 Jul 2019 11:21:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=CH7kXC/55njW0bSaZl2qK2J6bkupjI9qTVeY0Js/mVA=;
 b=NneR+4kEYjRw3c6FHgTEMtTj90UJXSFn0CAR4L1eachaSGTLih9d+9yE+DNNAO/sNp
 YfxAJUxsVuyWggtAzsyCyInL1FULOEkH4RkDFTfjbZYB0oZeEa8drRSm6f0HvGmBIlkz
 glhQ2+s/fOXYNytyc86qsQgbk77QlQ+dMVMd4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=CH7kXC/55njW0bSaZl2qK2J6bkupjI9qTVeY0Js/mVA=;
 b=VDXIbN0H1FhcGBGrPbRZ4sA2kXpAT+4LThFkIgMHIqHmnWKBAcBZE9xIzW48YUZNn8
 nqrjmrg6slxgIg9NLea4DTiUODGs5YhxqOoZreC14WHgr3j7oK3xyjXyYJbpmgHkzljj
 9cTIMPxTfoIyYFYwwUjhgRrD1271D+Wxh5ohyWg9ywBX4weGyx9e6QBpap21Gua0Zo2R
 AwVSWabJIvjsmD7x8zTetdUSdsD9A0mwRzPqcoOknmYcFutZZwZCv//qX7QH5OHQBNla
 nvm7g+f3VamikrNlUFj3h08/Df8RscWs7KB+CBrGM07Bo8PU8tW2wRsgF+HD9ihkKTt9
 XouQ==
X-Gm-Message-State: APjAAAUWBjwLE7pg8srR9hxNH6BBV0UoZ3aaa04c1to7LHHt+xeOv31K
 vE9AX5ydQFPWecjKt6L9MWHPRA==
X-Google-Smtp-Source: APXvYqwLifY/1zajuITncg8//LTA7Z7ISexdWkTqiTeMWNn3iL+A2I1MM+kbSDXblF5/BCyyUoE6xQ==
X-Received: by 2002:a63:4e60:: with SMTP id o32mr28875943pgl.68.1563214898284; 
 Mon, 15 Jul 2019 11:21:38 -0700 (PDT)
Received: from localhost.localdomain ([49.206.201.107])
 by smtp.gmail.com with ESMTPSA id l15sm18152405pgf.5.2019.07.15.11.21.35
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 15 Jul 2019 11:21:37 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v3 05/15] ram: rk3399: s/tsel_wr_select_n/tsel_wr_select_dq_n
Date: Mon, 15 Jul 2019 23:51:00 +0530
Message-Id: <20190715182110.21336-6-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190715182110.21336-1-jagan@amarulasolutions.com>
References: <20190715182110.21336-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_112139_573456_18B62308 
X-CRM114-Status: GOOD (  10.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Rename tsel_wr_select_n to tsel_wr_select_dq_n based
on the bsp code.

No functionality change.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index de5d8c1b5f..85ff47f133 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -161,7 +161,7 @@ static void set_ds_odt(const struct chan_info *chan,
 	u32 tsel_idle_en, tsel_wr_en, tsel_rd_en;
 	u32 tsel_idle_select_p, tsel_wr_select_p, tsel_rd_select_p;
 	u32 ca_tsel_wr_select_p, ca_tsel_wr_select_n;
-	u32 tsel_idle_select_n, tsel_wr_select_n, tsel_rd_select_n;
+	u32 tsel_idle_select_n, tsel_wr_select_dq_n, tsel_rd_select_n;
 	u32 reg_value;
 
 	if (params->base.dramtype == LPDDR4) {
@@ -171,7 +171,7 @@ static void set_ds_odt(const struct chan_info *chan,
 		tsel_idle_select_p = PHY_DRV_ODT_HI_Z;
 
 		tsel_rd_select_n = PHY_DRV_ODT_240;
-		tsel_wr_select_n = PHY_DRV_ODT_40;
+		tsel_wr_select_dq_n = PHY_DRV_ODT_40;
 		ca_tsel_wr_select_n = PHY_DRV_ODT_40;
 		tsel_idle_select_n = PHY_DRV_ODT_240;
 	} else if (params->base.dramtype == LPDDR3) {
@@ -181,7 +181,7 @@ static void set_ds_odt(const struct chan_info *chan,
 		tsel_idle_select_p = PHY_DRV_ODT_240;
 
 		tsel_rd_select_n = PHY_DRV_ODT_HI_Z;
-		tsel_wr_select_n = PHY_DRV_ODT_34_3;
+		tsel_wr_select_dq_n = PHY_DRV_ODT_34_3;
 		ca_tsel_wr_select_n = PHY_DRV_ODT_48;
 		tsel_idle_select_n = PHY_DRV_ODT_HI_Z;
 	} else {
@@ -191,7 +191,7 @@ static void set_ds_odt(const struct chan_info *chan,
 		tsel_idle_select_p = PHY_DRV_ODT_240;
 
 		tsel_rd_select_n = PHY_DRV_ODT_240;
-		tsel_wr_select_n = PHY_DRV_ODT_34_3;
+		tsel_wr_select_dq_n = PHY_DRV_ODT_34_3;
 		ca_tsel_wr_select_n = PHY_DRV_ODT_34_3;
 		tsel_idle_select_n = PHY_DRV_ODT_240;
 	}
@@ -210,7 +210,7 @@ static void set_ds_odt(const struct chan_info *chan,
 	 * for write cycles for DQ/DM
 	 */
 	reg_value = tsel_rd_select_n | (tsel_rd_select_p << 0x4) |
-		    (tsel_wr_select_n << 8) | (tsel_wr_select_p << 12) |
+		    (tsel_wr_select_dq_n << 8) | (tsel_wr_select_p << 12) |
 		    (tsel_idle_select_n << 16) | (tsel_idle_select_p << 20);
 	clrsetbits_le32(&denali_phy[6], 0xffffff, reg_value);
 	clrsetbits_le32(&denali_phy[134], 0xffffff, reg_value);
@@ -250,7 +250,7 @@ static void set_ds_odt(const struct chan_info *chan,
 
 	/* phy_pad_fdbk_drive 23bit DENALI_PHY_924/925 */
 	clrsetbits_le32(&denali_phy[924], 0xff,
-			tsel_wr_select_n | (tsel_wr_select_p << 4));
+			tsel_wr_select_dq_n | (tsel_wr_select_p << 4));
 	clrsetbits_le32(&denali_phy[925], 0xff,
 			tsel_rd_select_n | (tsel_rd_select_p << 4));
 
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

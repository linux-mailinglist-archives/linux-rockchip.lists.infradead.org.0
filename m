Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A55347B36
	for <lists+linux-rockchip@lfdr.de>; Mon, 17 Jun 2019 09:38:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AAhxCuA/9v5diByJ9h+pWW0PRH7aEomjkk4jQat0ypc=; b=Vdpn0H3FEKp7po
	i51sS/eU6r1/mT7yn2vsW8SFPXOEONbMJIcnE6Zb2MVaHB8Gk5mL9XIXvvXLRw2kiFRJof5XoRkYU
	ld6uoTZYDH5ZhD2nvDv78sLMPUNY/Uj3i5XRCB1ibwTaRstlus7RyDXqyBZcG5v8LYR3JssygOBIc
	XWSyq+fVOuYV3qAME13BCcj0l7Q5DLv9T+5sRGo7Mv7hJVVfUJt7mh8zSu1z04SW6z6y5QaWcs4Zu
	p8q0XGfCFAVgo7mU6X5GQg3WGx1hjKQeoyw+90b2HDvBjIl/VG3UcvBMJk5WkA6z83I95fUBPv6u/
	ef2kc/x3O7BMuTTomF4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcmDT-0006S9-3W; Mon, 17 Jun 2019 07:38:11 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcmDK-0006MA-2k
 for linux-rockchip@lists.infradead.org; Mon, 17 Jun 2019 07:38:03 +0000
Received: by mail-pl1-x644.google.com with SMTP id b7so3726459pls.6
 for <linux-rockchip@lists.infradead.org>; Mon, 17 Jun 2019 00:38:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=a107yLTGIu9F182wiQiINLB4jxx2mlta2vAETOQSxDE=;
 b=M4tIr8xgPp7d9wVUZNYMUNxTWVRAT+DuWMT/LbukQfjNI7zcWJ8OgmyoWg/BLVGB08
 omIlmOESJHtiUlcHBhJ6NlwBeHmylJrUK++P3K58TC8crJNBwbts7xQVAusNxnBM+wUW
 TJfWJw4SyA3ZIQZ0c5761780K9kbzfAOsFlQA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=a107yLTGIu9F182wiQiINLB4jxx2mlta2vAETOQSxDE=;
 b=cx7a0eamOO3jMfzvu8TYRdsblCHYde9c0vY/O24U1OAYMLMfryvBKXEcUq6KzodoMe
 x3+y4+N7zqKL0sPWEOt0WNJlJJBFwodwZoHfx/N/Yo8GL6/8pA054P13jc3N7C/5Yn08
 M1wc3Radt+uKb0MGlPkOwe6wPu+OEEja+dvBc2FxLxdqTEXwl2iJ2EKluljcGk7s+7zs
 m1Bo8Th19PCckCV2I947GJHqphmHGWKQMHxB9/6reZpsAIn+X99FbRsFftGzEDKP2ipS
 t4ehOIj936QaGV+ZBfIJx/s1uXn+LudAQlB3yNC+3UDySxpozoeZNbyHijZD8unAWHEF
 mYYg==
X-Gm-Message-State: APjAAAVlAvW1PTRUs8FmwdNicXzf3vKSYwJfiNuYYNSBUQ5KkM5wFHCU
 VGXC/kkWwUnQtBQr3UQ+53wf6g==
X-Google-Smtp-Source: APXvYqwNPQ2siHzdEzg5PlqKfSRlLoti3r+hWdzKoKKXgKMlcHDvDm021FN/dbLYHSyD6ZqDU36cPw==
X-Received: by 2002:a17:902:b115:: with SMTP id
 q21mr45758669plr.36.1560757081551; 
 Mon, 17 Jun 2019 00:38:01 -0700 (PDT)
Received: from localhost.localdomain ([49.206.203.245])
 by smtp.gmail.com with ESMTPSA id m41sm15205998pje.18.2019.06.17.00.37.58
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 00:38:00 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v2 30/99] ram: rk3399: s/tsel_wr_select_n/tsel_wr_select_dq_n
Date: Mon, 17 Jun 2019 13:01:43 +0530
Message-Id: <20190617073252.27810-31-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190617073252.27810-1-jagan@amarulasolutions.com>
References: <20190617073252.27810-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_003802_410860_E00609A5 
X-CRM114-Status: GOOD (  10.13  )
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

Rename tsel_wr_select_n to tsel_wr_select_dq_n based
on the bsp code.

No functionality change.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index d408459daf..1747ae12a3 100644
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

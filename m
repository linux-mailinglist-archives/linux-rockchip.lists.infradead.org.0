Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2A073CFDB
	for <lists+linux-rockchip@lfdr.de>; Tue, 11 Jun 2019 16:56:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fgHeFYVhmw9jkYGAaXnnBgcSU3w0SQBDSd5QhMbVsP8=; b=i6fbMT7AGV+tJi
	t2G9Khv/ub2gFhT00ErJD6dSF+aoe85K+HIV5IE8OZ0F+VcAzwG7FXAlb3YbErrUzgT3GwuPaTjSS
	2HxizNXuekmSjhhRZDsye5UH4v/N9OK/f/l2ZDtClom2rTsWl01qZAxpmlgJyUAHfB1JvGyBX2oF+
	u6ebbcP1L9n3fJvsQS8g234mMcVY/2km95nK2NOxysYqlIFZe9zXBZ4fMJa3tBg+gnfIEZL6T7imz
	5uAHy+EGkHqbAB+Y74QlWLcz4TSp4TNjUFyl3GdiZL8gUNY3mE5+GKAluEyfjosaipRcGy165tFZP
	TghjHpVm4phSOPcZwp2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haiCX-0008Gg-TZ; Tue, 11 Jun 2019 14:56:41 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haiCT-0008F4-BL
 for linux-rockchip@lists.infradead.org; Tue, 11 Jun 2019 14:56:38 +0000
Received: by mail-pf1-x444.google.com with SMTP id 19so6763989pfa.4
 for <linux-rockchip@lists.infradead.org>; Tue, 11 Jun 2019 07:56:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=/MXONAs6Fu3wWL6xP4hCLg6XcM1l7Qu3kL3gQwYjmtg=;
 b=kptZu+l4apJoXoQhStgvob0RuQCSIybA9cw63JEKp3u1hptRP50UUv3ieEyQpLpsKh
 bsLz5NgqCyRmWKNW6nsG5olHaiCp/l2VENJ48b9C++2kIbDpE32Qs6NfKttcL+XUovBt
 Enarcucst0EJdNfdQlhuGOpUhKfbrQIjdUMK0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=/MXONAs6Fu3wWL6xP4hCLg6XcM1l7Qu3kL3gQwYjmtg=;
 b=N6TP4u9HRUF6XXtlKQWR6jzd9C64M9oJf7qBLSopUgMEJs+sh5w5smgVB0M/PgDhic
 1JLpenQslodi/kNN4Q5SxkdZuD1iq6znOGc2jRr0pQ9QvY6VgF9cTmeYGyXJYAK5T6O1
 ACEGWhPPpfI4kJgza4jNQA4tH3lJGxn7bE9yBNuvWl/xrIJVQZaQWHQoy6TE472sz3Kk
 JVcfYcnkHpWxZnbxF4TPYjvwbZ4FDd5FOtPk7S6WBEdzPzXFpI5e2dQCulW+jb0Qmy9l
 IKpJZWqzzmxjGDfkPoNzJwN9pEKY/o93hlYK97JVgW4EcgLI+9cuJNaVdi2aP0LGh/fj
 NvFw==
X-Gm-Message-State: APjAAAVbuovynL0UZE50yV8BLlMUpXKjVCTXgx/L3KFTAaLkPuP/eIpZ
 iX/L4Yc7g57bHH7dBeqiGqQLIA==
X-Google-Smtp-Source: APXvYqxDrmJ8vFAQwt1I0cTWtCa60Pq7SpDSy/hqfs8mmDCN7KPM0HADJVzoJQqnA/VN8mJ2iZiYpw==
X-Received: by 2002:a62:e0c2:: with SMTP id d63mr23902909pfm.60.1560264996789; 
 Tue, 11 Jun 2019 07:56:36 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.18])
 by smtp.gmail.com with ESMTPSA id e9sm16206208pfn.154.2019.06.11.07.56.32
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Jun 2019 07:56:36 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH 72/92] ram: rk3399: Add tsel control clock drive
Date: Tue, 11 Jun 2019 20:21:15 +0530
Message-Id: <20190611145135.21399-73-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190611145135.21399-1-jagan@amarulasolutions.com>
References: <20190611145135.21399-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_075637_389833_492D23BD 
X-CRM114-Status: GOOD (  11.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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

tsel contrl clock drives are required to configure PHY
929, 939 controls drive settings.

Add support for these control clock for all dramtype
sdrams.

Thse control clock drives are configure via tsel_ckcs_select_p
and tsel_ckcs_select_n variables.

tsel_ckcs_select_n is PHY_DRV_ODT_34_3 value where as
tsel_ckcs_select_p is retrived from IO settings for lpddr4
and rest uses PHY_DRV_ODT_34_3.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 16 ++++++++++++++--
 1 file changed, 14 insertions(+), 2 deletions(-)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 6385df5600..8eaa304e95 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -561,6 +561,7 @@ static void set_ds_odt(const struct chan_info *chan,
 	u32 tsel_idle_select_n, tsel_rd_select_n;
 	u32 tsel_wr_select_dq_p, tsel_wr_select_ca_p;
 	u32 tsel_wr_select_dq_n, tsel_wr_select_ca_n;
+	u32 tsel_ckcs_select_p, tsel_ckcs_select_n;
 	struct io_setting *io = NULL;
 	u32 reg_value;
 
@@ -578,6 +579,9 @@ static void set_ds_odt(const struct chan_info *chan,
 
 		tsel_wr_select_ca_p = io->wr_ca_drv;
 		tsel_wr_select_ca_n = PHY_DRV_ODT_40;
+
+		tsel_ckcs_select_p = io->wr_ckcs_drv;
+		tsel_ckcs_select_n = PHY_DRV_ODT_34_3;
 	} else if (sdram_params->base.dramtype == LPDDR3) {
 		tsel_rd_select_p = PHY_DRV_ODT_240;
 		tsel_rd_select_n = PHY_DRV_ODT_HI_Z;
@@ -590,6 +594,9 @@ static void set_ds_odt(const struct chan_info *chan,
 
 		tsel_wr_select_ca_p = PHY_DRV_ODT_48;
 		tsel_wr_select_ca_n = PHY_DRV_ODT_48;
+
+		tsel_ckcs_select_p = PHY_DRV_ODT_34_3;
+		tsel_ckcs_select_n = PHY_DRV_ODT_34_3;
 	} else {
 		tsel_rd_select_p = PHY_DRV_ODT_240;
 		tsel_rd_select_n = PHY_DRV_ODT_240;
@@ -602,6 +609,9 @@ static void set_ds_odt(const struct chan_info *chan,
 
 		tsel_wr_select_ca_p = PHY_DRV_ODT_34_3;
 		tsel_wr_select_ca_n = PHY_DRV_ODT_34_3;
+
+		tsel_ckcs_select_p = PHY_DRV_ODT_34_3;
+		tsel_ckcs_select_n = PHY_DRV_ODT_34_3;
 	}
 
 	if (sdram_params->base.odt == 1)
@@ -660,10 +670,12 @@ static void set_ds_odt(const struct chan_info *chan,
 	clrsetbits_le32(&denali_phy[935], 0xff, reg_value);
 
 	/* phy_pad_cs_drive 8bits DENALI_PHY_939 offset_0 */
-	clrsetbits_le32(&denali_phy[939], 0xff, reg_value);
+	clrsetbits_le32(&denali_phy[939], 0xff,
+			tsel_ckcs_select_n | (tsel_ckcs_select_p << 0x4));
 
 	/* phy_pad_clk_drive 8bits DENALI_PHY_929 offset_0 */
-	clrsetbits_le32(&denali_phy[929], 0xff, reg_value);
+	clrsetbits_le32(&denali_phy[929], 0xff,
+			tsel_ckcs_select_n | (tsel_ckcs_select_p << 0x4));
 
 	/* phy_pad_fdbk_drive 23bit DENALI_PHY_924/925 */
 	clrsetbits_le32(&denali_phy[924], 0xff,
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
